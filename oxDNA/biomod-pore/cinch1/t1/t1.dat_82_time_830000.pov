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
	<43.056503, 32.450954, 22.968666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880219, 32.142502, 23.152462>,  <42.774448, 31.957430, 23.262739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880219, 32.142502, 23.152462>,  <43.056503, 32.450954, 22.968666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880219, 32.142502, 23.152462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844926, 0.183510, -0.502418,
		0.303110, -0.609655, -0.732424,
		-0.440709, -0.771132, 0.459490,
		42.748005, 31.911161, 23.290310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599537, 32.266243, 22.494497>,  <43.056503, 32.450954, 22.968666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599537, 32.266243, 22.494497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470886, 32.138252, 22.850964>,  <42.393696, 32.061459, 23.064842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470886, 32.138252, 22.850964>,  <42.599537, 32.266243, 22.494497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470886, 32.138252, 22.850964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946707, 0.091438, -0.308844,
		0.017335, -0.943005, -0.332327,
		-0.321628, -0.319970, 0.891164,
		42.374397, 32.042259, 23.118313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981388, 31.726192, 22.387787>,  <42.599537, 32.266243, 22.494497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981388, 31.726192, 22.387787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976986, 31.896553, 22.749668>,  <41.974342, 31.998770, 22.966797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976986, 31.896553, 22.749668>,  <41.981388, 31.726192, 22.387787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976986, 31.896553, 22.749668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906485, 0.377665, -0.188822,
		-0.422094, -0.822178, 0.381916,
		-0.011010, 0.425902, 0.904702,
		41.973682, 32.024323, 23.021078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441097, 31.485929, 22.839947>,  <41.981388, 31.726192, 22.387787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441097, 31.485929, 22.839947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551769, 31.869770, 22.819519>,  <41.618172, 32.100075, 22.807262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551769, 31.869770, 22.819519>,  <41.441097, 31.485929, 22.839947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551769, 31.869770, 22.819519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878191, 0.230917, -0.418876,
		-0.390162, 0.160746, 0.906606,
		0.276683, 0.959603, -0.051071,
		41.634773, 32.157650, 22.804197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049339, 31.918905, 23.254610>,  <41.441097, 31.485929, 22.839947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049339, 31.918905, 23.254610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192627, 32.074123, 22.914940>,  <41.278599, 32.167255, 22.711138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192627, 32.074123, 22.914940>,  <41.049339, 31.918905, 23.254610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192627, 32.074123, 22.914940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933451, 0.167006, -0.317457,
		0.018631, 0.906384, 0.422045,
		0.358222, 0.388043, -0.849176,
		41.300095, 32.190536, 22.660187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442551, 32.004536, 22.728662>,  <41.049339, 31.918905, 23.254610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442551, 32.004536, 22.728662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095280, 31.875561, 22.879559>,  <39.886917, 31.798176, 22.970097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095280, 31.875561, 22.879559>,  <40.442551, 32.004536, 22.728662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095280, 31.875561, 22.879559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374529, 0.073004, 0.924337,
		-0.325583, 0.943771, 0.057382,
		-0.868173, -0.322440, 0.377238,
		39.834827, 31.778830, 22.992729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357586, 32.394894, 23.374235>,  <40.442551, 32.004536, 22.728662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357586, 32.394894, 23.374235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146179, 32.058147, 23.417934>,  <40.019333, 31.856100, 23.444155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146179, 32.058147, 23.417934>,  <40.357586, 32.394894, 23.374235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146179, 32.058147, 23.417934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194855, 0.004953, 0.980820,
		-0.826255, 0.539671, 0.161423,
		-0.528521, -0.841861, 0.109250,
		39.987621, 31.805590, 23.450708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954689, 32.453629, 23.988564>,  <40.357586, 32.394894, 23.374235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954689, 32.453629, 23.988564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952156, 32.057755, 23.931316>,  <39.950634, 31.820230, 23.896967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952156, 32.057755, 23.931316>,  <39.954689, 32.453629, 23.988564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952156, 32.057755, 23.931316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222058, -0.140941, 0.964794,
		-0.975013, -0.025669, 0.220660,
		-0.006335, -0.989685, -0.143119,
		39.950256, 31.760849, 23.888380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558147, 32.164402, 24.576616>,  <39.954689, 32.453629, 23.988564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558147, 32.164402, 24.576616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764851, 31.858765, 24.422150>,  <39.888874, 31.675383, 24.329470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764851, 31.858765, 24.422150>,  <39.558147, 32.164402, 24.576616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764851, 31.858765, 24.422150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138022, -0.370809, 0.918396,
		-0.844932, -0.527890, -0.086158,
		0.516760, -0.764090, -0.386168,
		39.919880, 31.629538, 24.306299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204273, 31.530804, 24.813892>,  <39.558147, 32.164402, 24.576616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204273, 31.530804, 24.813892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581573, 31.429451, 24.728031>,  <39.807953, 31.368639, 24.676514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581573, 31.429451, 24.728031>,  <39.204273, 31.530804, 24.813892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581573, 31.429451, 24.728031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079303, -0.455817, 0.886534,
		-0.322472, -0.853247, -0.409857,
		0.943252, -0.253379, -0.214653,
		39.864548, 31.353437, 24.663635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383610, 30.802080, 25.150358>,  <39.204273, 31.530804, 24.813892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383610, 30.802080, 25.150358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721943, 31.000778, 25.072582>,  <39.924942, 31.119997, 25.025917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721943, 31.000778, 25.072582>,  <39.383610, 30.802080, 25.150358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721943, 31.000778, 25.072582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318957, -0.178781, 0.930755,
		0.427584, -0.849284, -0.309659,
		0.845836, 0.496744, -0.194441,
		39.975693, 31.149801, 25.014250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889648, 30.404085, 25.397579>,  <39.383610, 30.802080, 25.150358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889648, 30.404085, 25.397579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063316, 30.763721, 25.375183>,  <40.167515, 30.979504, 25.361746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063316, 30.763721, 25.375183>,  <39.889648, 30.404085, 25.397579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063316, 30.763721, 25.375183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262339, -0.066730, 0.962666,
		0.861788, -0.432645, -0.264839,
		0.434166, 0.899091, -0.055992,
		40.193565, 31.033449, 25.358385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413147, 30.314528, 25.889263>,  <39.889648, 30.404085, 25.397579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413147, 30.314528, 25.889263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395668, 30.711006, 25.839275>,  <40.385181, 30.948895, 25.809282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395668, 30.711006, 25.839275>,  <40.413147, 30.314528, 25.889263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395668, 30.711006, 25.839275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108526, 0.129061, 0.985680,
		0.993133, 0.029510, -0.113210,
		-0.043698, 0.991198, -0.124972,
		40.382557, 31.008366, 25.801785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956867, 30.504740, 26.179890>,  <40.413147, 30.314528, 25.889263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956867, 30.504740, 26.179890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737198, 30.837563, 26.148678>,  <40.605396, 31.037256, 26.129951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737198, 30.837563, 26.148678>,  <40.956867, 30.504740, 26.179890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737198, 30.837563, 26.148678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053857, 0.128411, 0.990257,
		0.833970, 0.539622, -0.115333,
		-0.549175, 0.832056, -0.078029,
		40.572445, 31.087179, 26.125269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250996, 30.938234, 26.653830>,  <40.956867, 30.504740, 26.179890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250996, 30.938234, 26.653830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877617, 31.073715, 26.606564>,  <40.653591, 31.155005, 26.578203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877617, 31.073715, 26.606564>,  <41.250996, 30.938234, 26.653830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877617, 31.073715, 26.606564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085280, 0.110441, 0.990217,
		0.348439, 0.934389, -0.074206,
		-0.933444, 0.338702, -0.118167,
		40.597584, 31.175325, 26.571114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200050, 31.497112, 27.100180>,  <41.250996, 30.938234, 26.653830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200050, 31.497112, 27.100180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815948, 31.420013, 27.019417>,  <40.585487, 31.373755, 26.970959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815948, 31.420013, 27.019417>,  <41.200050, 31.497112, 27.100180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815948, 31.420013, 27.019417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233647, 0.159229, 0.959195,
		-0.152734, 0.968243, -0.197935,
		-0.960251, -0.192748, -0.201907,
		40.527874, 31.362188, 26.958845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706264, 32.092720, 27.249710>,  <41.200050, 31.497112, 27.100180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706264, 32.092720, 27.249710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505566, 31.747620, 27.274727>,  <40.385147, 31.540560, 27.289738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505566, 31.747620, 27.274727>,  <40.706264, 32.092720, 27.249710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505566, 31.747620, 27.274727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233339, 0.204616, 0.950624,
		-0.832948, 0.462380, -0.303979,
		-0.501748, -0.862750, 0.062543,
		40.355042, 31.488794, 27.293489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230759, 32.299213, 27.684912>,  <40.706264, 32.092720, 27.249710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230759, 32.299213, 27.684912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185875, 31.901741, 27.686291>,  <40.158943, 31.663258, 27.687119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185875, 31.901741, 27.686291>,  <40.230759, 32.299213, 27.684912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185875, 31.901741, 27.686291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288586, 0.035908, 0.956780,
		-0.950856, 0.106368, -0.290791,
		-0.112213, -0.993678, 0.003447,
		40.152210, 31.603638, 27.687325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774010, 32.265804, 28.092731>,  <40.230759, 32.299213, 27.684912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774010, 32.265804, 28.092731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918545, 31.893024, 28.104706>,  <40.005264, 31.669355, 28.111891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918545, 31.893024, 28.104706>,  <39.774010, 32.265804, 28.092731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918545, 31.893024, 28.104706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354614, -0.107659, 0.928794,
		-0.862371, -0.346224, -0.369386,
		0.361338, -0.931954, 0.029933,
		40.026947, 31.613438, 28.113686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240688, 31.812599, 28.363409>,  <39.774010, 32.265804, 28.092731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240688, 31.812599, 28.363409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572124, 31.599979, 28.433712>,  <39.770988, 31.472408, 28.475893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572124, 31.599979, 28.433712>,  <39.240688, 31.812599, 28.363409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572124, 31.599979, 28.433712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354754, -0.255637, 0.899333,
		-0.433109, -0.807531, -0.400388,
		0.828593, -0.531548, 0.175756,
		39.820702, 31.440516, 28.486439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959759, 31.215778, 28.773117>,  <39.240688, 31.812599, 28.363409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959759, 31.215778, 28.773117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352798, 31.261177, 28.831917>,  <39.588623, 31.288416, 28.867197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352798, 31.261177, 28.831917>,  <38.959759, 31.215778, 28.773117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352798, 31.261177, 28.831917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121663, -0.204645, 0.971246,
		0.140318, -0.972234, -0.187276,
		0.982603, 0.113498, 0.147000,
		39.647579, 31.295227, 28.876017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199013, 30.561056, 28.925018>,  <38.959759, 31.215778, 28.773117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199013, 30.561056, 28.925018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498138, 30.784702, 29.068214>,  <39.677616, 30.918890, 29.154133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498138, 30.784702, 29.068214>,  <39.199013, 30.561056, 28.925018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498138, 30.784702, 29.068214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150527, -0.382387, 0.911659,
		0.646615, -0.735641, -0.201793,
		0.747817, 0.559117, 0.357991,
		39.722485, 30.952438, 29.175611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589409, 30.142221, 29.349829>,  <39.199013, 30.561056, 28.925018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589409, 30.142221, 29.349829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692810, 30.514599, 29.452999>,  <39.754848, 30.738026, 29.514902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692810, 30.514599, 29.452999>,  <39.589409, 30.142221, 29.349829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692810, 30.514599, 29.452999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101203, -0.239434, 0.965624,
		0.960695, -0.275717, 0.032321,
		0.258500, 0.930941, 0.257927,
		39.770359, 30.793880, 29.530376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164757, 30.024117, 29.844944>,  <39.589409, 30.142221, 29.349829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164757, 30.024117, 29.844944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008572, 30.386883, 29.908241>,  <39.914860, 30.604544, 29.946218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008572, 30.386883, 29.908241>,  <40.164757, 30.024117, 29.844944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008572, 30.386883, 29.908241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056168, -0.195033, 0.979187,
		0.918905, 0.373446, 0.127093,
		-0.390461, 0.906918, 0.158241,
		39.891434, 30.658958, 29.955713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553219, 30.337202, 30.239689>,  <40.164757, 30.024117, 29.844944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553219, 30.337202, 30.239689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225430, 30.556419, 30.306751>,  <40.028755, 30.687950, 30.346989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225430, 30.556419, 30.306751>,  <40.553219, 30.337202, 30.239689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225430, 30.556419, 30.306751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032653, -0.247413, 0.968360,
		0.572183, 0.799022, 0.184854,
		-0.819476, 0.548043, 0.167655,
		39.979588, 30.720833, 30.357048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684074, 30.568499, 30.968634>,  <40.553219, 30.337202, 30.239689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684074, 30.568499, 30.968634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299698, 30.598000, 30.861935>,  <40.069073, 30.615700, 30.797916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299698, 30.598000, 30.861935>,  <40.684074, 30.568499, 30.968634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299698, 30.598000, 30.861935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272760, -0.089234, 0.957935,
		0.046848, 0.993276, 0.105865,
		-0.960941, 0.073753, -0.266745,
		40.011417, 30.620125, 30.781912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384518, 31.132973, 31.370531>,  <40.684074, 30.568499, 30.968634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384518, 31.132973, 31.370531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132290, 30.850796, 31.241081>,  <39.980953, 30.681490, 31.163410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132290, 30.850796, 31.241081>,  <40.384518, 31.132973, 31.370531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132290, 30.850796, 31.241081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405249, -0.056364, 0.912467,
		-0.661934, 0.706522, -0.250339,
		-0.630568, -0.705443, -0.323626,
		39.943119, 30.639162, 31.143993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018902, 31.530029, 31.921757>,  <40.384518, 31.132973, 31.370531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018902, 31.530029, 31.921757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922527, 31.824242, 32.175037>,  <39.864700, 32.000771, 32.327003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922527, 31.824242, 32.175037>,  <40.018902, 31.530029, 31.921757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922527, 31.824242, 32.175037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647103, 0.364493, -0.669629,
		-0.723330, -0.571086, 0.388143,
		-0.240940, 0.735531, 0.633200,
		39.850246, 32.044903, 32.364998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502979, 31.782803, 31.598501>,  <40.018902, 31.530029, 31.921757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502979, 31.782803, 31.598501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534912, 32.072796, 31.872150>,  <39.554073, 32.246792, 32.036339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534912, 32.072796, 31.872150>,  <39.502979, 31.782803, 31.598501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534912, 32.072796, 31.872150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544154, 0.606727, -0.579465,
		-0.835179, -0.326010, 0.442938,
		0.079831, 0.724983, 0.684125,
		39.558861, 32.290291, 32.077389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809196, 32.003437, 31.990122>,  <39.502979, 31.782803, 31.598501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809196, 32.003437, 31.990122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079723, 32.284515, 31.901749>,  <39.242039, 32.453163, 31.848724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079723, 32.284515, 31.901749>,  <38.809196, 32.003437, 31.990122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079723, 32.284515, 31.901749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645166, 0.420348, -0.638020,
		-0.355464, 0.574044, 0.737644,
		0.676318, 0.702696, -0.220935,
		39.282619, 32.495323, 31.835468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576630, 32.688976, 31.953857>,  <38.809196, 32.003437, 31.990122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576630, 32.688976, 31.953857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881943, 32.712845, 31.696537>,  <39.065132, 32.727165, 31.542145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881943, 32.712845, 31.696537>,  <38.576630, 32.688976, 31.953857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881943, 32.712845, 31.696537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591882, 0.463739, -0.659259,
		0.258988, 0.883961, 0.389280,
		0.763283, 0.059668, -0.643303,
		39.110928, 32.730743, 31.503546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635311, 33.286076, 31.709257>,  <38.576630, 32.688976, 31.953857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635311, 33.286076, 31.709257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809029, 33.055824, 31.432117>,  <38.913258, 32.917671, 31.265835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809029, 33.055824, 31.432117>,  <38.635311, 33.286076, 31.709257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809029, 33.055824, 31.432117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614099, 0.373510, -0.695250,
		0.658994, 0.727419, -0.191282,
		0.434292, -0.575632, -0.692848,
		38.939316, 32.883133, 31.224262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350739, 33.792145, 31.382929>,  <38.635311, 33.286076, 31.709257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350739, 33.792145, 31.382929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951591, 33.808578, 31.403206>,  <37.712105, 33.818439, 31.415371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951591, 33.808578, 31.403206>,  <38.350739, 33.792145, 31.382929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951591, 33.808578, 31.403206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057788, -0.195673, -0.978965,
		-0.030304, -0.979808, 0.197630,
		-0.997869, 0.041087, 0.050692,
		37.652229, 33.820904, 31.418413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952873, 33.160229, 31.202833>,  <38.350739, 33.792145, 31.382929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952873, 33.160229, 31.202833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785389, 33.508163, 31.098476>,  <37.684898, 33.716927, 31.035862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785389, 33.508163, 31.098476>,  <37.952873, 33.160229, 31.202833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785389, 33.508163, 31.098476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005138, -0.285011, -0.958510,
		-0.908107, -0.402676, 0.114867,
		-0.418707, 0.869840, -0.260890,
		37.659775, 33.769115, 31.020210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467625, 33.172531, 30.544062>,  <37.952873, 33.160229, 31.202833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467625, 33.172531, 30.544062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671722, 33.515533, 30.570385>,  <37.794182, 33.721336, 30.586180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671722, 33.515533, 30.570385>,  <37.467625, 33.172531, 30.544062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671722, 33.515533, 30.570385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234603, -0.065159, -0.969905,
		-0.827414, 0.510327, -0.234421,
		0.510243, 0.857508, 0.065810,
		37.824795, 33.772785, 30.590128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166920, 33.603107, 30.034044>,  <37.467625, 33.172531, 30.544062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166920, 33.603107, 30.034044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556362, 33.678429, 30.085621>,  <37.790028, 33.723621, 30.116568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556362, 33.678429, 30.085621>,  <37.166920, 33.603107, 30.034044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556362, 33.678429, 30.085621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157856, -0.147603, -0.976368,
		-0.164824, 0.970955, -0.173433,
		0.973609, 0.188306, 0.128943,
		37.848446, 33.734921, 30.124304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497002, 34.140995, 29.598703>,  <37.166920, 33.603107, 30.034044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497002, 34.140995, 29.598703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.809299, 33.913158, 29.701458>,  <37.996681, 33.776455, 29.763111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.809299, 33.913158, 29.701458>,  <37.497002, 34.140995, 29.598703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809299, 33.913158, 29.701458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205498, -0.154186, -0.966435,
		0.590086, 0.807334, -0.003330,
		0.780749, -0.569595, 0.256888,
		38.043526, 33.742279, 29.778524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040192, 34.446781, 29.235764>,  <37.497002, 34.140995, 29.598703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040192, 34.446781, 29.235764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172924, 34.080505, 29.326447>,  <38.252563, 33.860741, 29.380857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172924, 34.080505, 29.326447>,  <38.040192, 34.446781, 29.235764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172924, 34.080505, 29.326447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086126, -0.209914, -0.973919,
		0.939398, 0.342705, 0.009208,
		0.331834, -0.915691, 0.226709,
		38.272472, 33.805798, 29.394459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639835, 34.277424, 28.830442>,  <38.040192, 34.446781, 29.235764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639835, 34.277424, 28.830442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514187, 33.912041, 28.933918>,  <38.438797, 33.692810, 28.996004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514187, 33.912041, 28.933918>,  <38.639835, 34.277424, 28.830442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514187, 33.912041, 28.933918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164282, -0.320669, -0.932836,
		0.935063, -0.250522, 0.250792,
		-0.314117, -0.913461, 0.258689,
		38.419952, 33.638004, 29.011524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157372, 33.746151, 28.538700>,  <38.639835, 34.277424, 28.830442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157372, 33.746151, 28.538700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808357, 33.561054, 28.601391>,  <38.598949, 33.449997, 28.639006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808357, 33.561054, 28.601391>,  <39.157372, 33.746151, 28.538700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808357, 33.561054, 28.601391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024014, -0.361025, -0.932247,
		0.487968, -0.809651, 0.326118,
		-0.872531, -0.462738, 0.156726,
		38.546597, 33.422234, 28.648409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276806, 33.232826, 28.176266>,  <39.157372, 33.746151, 28.538700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276806, 33.232826, 28.176266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881424, 33.204540, 28.229855>,  <38.644196, 33.187569, 28.262009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881424, 33.204540, 28.229855>,  <39.276806, 33.232826, 28.176266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881424, 33.204540, 28.229855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079762, -0.508918, -0.857112,
		0.128793, -0.857905, 0.497404,
		-0.988458, -0.070716, 0.133974,
		38.584885, 33.183327, 28.270046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047096, 32.489216, 28.052649>,  <39.276806, 33.232826, 28.176266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047096, 32.489216, 28.052649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726780, 32.723076, 28.000626>,  <38.534592, 32.863392, 27.969412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726780, 32.723076, 28.000626>,  <39.047096, 32.489216, 28.052649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726780, 32.723076, 28.000626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136147, -0.389147, -0.911059,
		-0.583268, -0.711858, 0.391223,
		-0.800788, 0.584656, -0.130060,
		38.486542, 32.898472, 27.961607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495438, 32.058979, 27.804256>,  <39.047096, 32.489216, 28.052649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495438, 32.058979, 27.804256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340546, 32.417683, 27.718575>,  <38.247612, 32.632904, 27.667166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340546, 32.417683, 27.718575>,  <38.495438, 32.058979, 27.804256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340546, 32.417683, 27.718575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325971, -0.350482, -0.878012,
		-0.862438, -0.270165, 0.428033,
		-0.387226, 0.896757, -0.214203,
		38.224377, 32.686710, 27.654314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801647, 31.986357, 27.672386>,  <38.495438, 32.058979, 27.804256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801647, 31.986357, 27.672386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894783, 32.330395, 27.490826>,  <37.950665, 32.536816, 27.381889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894783, 32.330395, 27.490826>,  <37.801647, 31.986357, 27.672386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894783, 32.330395, 27.490826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434157, -0.325711, -0.839893,
		-0.870227, 0.392623, 0.297578,
		0.232836, 0.860093, -0.453903,
		37.964634, 32.588421, 27.354654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146217, 32.136066, 27.174072>,  <37.801647, 31.986357, 27.672386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146217, 32.136066, 27.174072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456383, 32.348598, 27.037590>,  <37.642483, 32.476116, 26.955700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456383, 32.348598, 27.037590>,  <37.146217, 32.136066, 27.174072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456383, 32.348598, 27.037590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302656, -0.161515, -0.939315,
		-0.554195, 0.831627, 0.035570,
		0.775414, 0.531329, -0.341208,
		37.689007, 32.507996, 26.935228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890324, 32.418613, 26.581213>,  <37.146217, 32.136066, 27.174072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890324, 32.418613, 26.581213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284836, 32.464405, 26.533630>,  <37.521542, 32.491882, 26.505081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284836, 32.464405, 26.533630>,  <36.890324, 32.418613, 26.581213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284836, 32.464405, 26.533630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116080, -0.031493, -0.992740,
		-0.117397, 0.992926, -0.017772,
		0.986278, 0.114482, -0.118956,
		37.580719, 32.498749, 26.497944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993046, 33.012955, 26.001978>,  <36.890324, 32.418613, 26.581213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993046, 33.012955, 26.001978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323769, 32.790951, 26.038555>,  <37.522202, 32.657749, 26.060501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323769, 32.790951, 26.038555>,  <36.993046, 33.012955, 26.001978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323769, 32.790951, 26.038555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035554, -0.110681, -0.993220,
		0.561365, 0.824449, -0.071779,
		0.826804, -0.555007, 0.091444,
		37.571812, 32.624447, 26.065989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379681, 33.277039, 25.495773>,  <36.993046, 33.012955, 26.001978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379681, 33.277039, 25.495773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544651, 32.923908, 25.585682>,  <37.643635, 32.712032, 25.639627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544651, 32.923908, 25.585682>,  <37.379681, 33.277039, 25.495773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544651, 32.923908, 25.585682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140307, -0.182234, -0.973193,
		0.900119, 0.432912, 0.048707,
		0.412431, -0.882824, 0.224773,
		37.668381, 32.659061, 25.653114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974190, 33.215973, 25.068827>,  <37.379681, 33.277039, 25.495773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974190, 33.215973, 25.068827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869171, 32.840569, 25.158504>,  <37.806160, 32.615326, 25.212311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869171, 32.840569, 25.158504>,  <37.974190, 33.215973, 25.068827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869171, 32.840569, 25.158504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058719, -0.247455, -0.967118,
		0.963132, -0.240747, 0.120076,
		-0.262544, -0.938513, 0.224195,
		37.790409, 32.559013, 25.225763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395500, 32.837173, 24.694496>,  <37.974190, 33.215973, 25.068827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395500, 32.837173, 24.694496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082706, 32.603474, 24.781353>,  <37.895031, 32.463253, 24.833467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082706, 32.603474, 24.781353>,  <38.395500, 32.837173, 24.694496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082706, 32.603474, 24.781353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002400, -0.345551, -0.938397,
		0.623294, -0.734332, 0.268813,
		-0.781984, -0.584252, 0.217142,
		37.848110, 32.428200, 24.846497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550163, 32.085964, 24.495192>,  <38.395500, 32.837173, 24.694496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550163, 32.085964, 24.495192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155731, 32.152470, 24.494034>,  <37.919071, 32.192371, 24.493340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155731, 32.152470, 24.494034>,  <38.550163, 32.085964, 24.495192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155731, 32.152470, 24.494034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056948, -0.354004, -0.933509,
		-0.156234, -0.920346, 0.358544,
		-0.986077, 0.166263, -0.002896,
		37.859909, 32.202351, 24.493164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240845, 31.481289, 24.199926>,  <38.550163, 32.085964, 24.495192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240845, 31.481289, 24.199926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917313, 31.716499, 24.201759>,  <37.723194, 31.857626, 24.202858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917313, 31.716499, 24.201759>,  <38.240845, 31.481289, 24.199926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917313, 31.716499, 24.201759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242699, -0.326716, -0.913430,
		-0.535625, -0.739920, 0.406971,
		-0.808828, 0.588026, 0.004580,
		37.674664, 31.892906, 24.203135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665501, 31.085503, 24.018169>,  <38.240845, 31.481289, 24.199926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665501, 31.085503, 24.018169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547104, 31.453064, 23.913860>,  <37.476067, 31.673601, 23.851274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547104, 31.453064, 23.913860>,  <37.665501, 31.085503, 24.018169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547104, 31.453064, 23.913860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226143, -0.332660, -0.915531,
		-0.928036, -0.212014, 0.306268,
		-0.295989, 0.918906, -0.260774,
		37.458305, 31.728735, 23.835629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067375, 30.897345, 23.615723>,  <37.665501, 31.085503, 24.018169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067375, 30.897345, 23.615723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180111, 31.265690, 23.507961>,  <37.247753, 31.486696, 23.443304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180111, 31.265690, 23.507961>,  <37.067375, 30.897345, 23.615723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180111, 31.265690, 23.507961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088156, -0.304452, -0.948439,
		-0.955403, 0.243558, -0.166986,
		0.281839, 0.920863, -0.269403,
		37.264664, 31.541948, 23.427141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708271, 31.000965, 23.044355>,  <37.067375, 30.897345, 23.615723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708271, 31.000965, 23.044355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975147, 31.296928, 23.009960>,  <37.135273, 31.474506, 22.989323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975147, 31.296928, 23.009960>,  <36.708271, 31.000965, 23.044355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975147, 31.296928, 23.009960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176212, -0.268935, -0.946902,
		-0.723747, 0.616610, -0.309811,
		0.667188, 0.739910, -0.085987,
		37.175304, 31.518902, 22.984163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603352, 31.385971, 22.410440>,  <36.708271, 31.000965, 23.044355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603352, 31.385971, 22.410440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990314, 31.438126, 22.497265>,  <37.222492, 31.469418, 22.549360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990314, 31.438126, 22.497265>,  <36.603352, 31.385971, 22.410440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990314, 31.438126, 22.497265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246107, -0.282544, -0.927146,
		-0.059556, 0.950352, -0.305425,
		0.967411, 0.130385, 0.217060,
		37.280537, 31.477242, 22.562384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876556, 31.766880, 21.888659>,  <36.603352, 31.385971, 22.410440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876556, 31.766880, 21.888659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222958, 31.641193, 22.044247>,  <37.430798, 31.565781, 22.137600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222958, 31.641193, 22.044247>,  <36.876556, 31.766880, 21.888659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222958, 31.641193, 22.044247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418625, 0.030170, -0.907658,
		0.273466, 0.948872, 0.157667,
		0.866008, -0.314217, 0.388971,
		37.482761, 31.546928, 22.160938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364868, 32.170891, 21.593506>,  <36.876556, 31.766880, 21.888659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364868, 32.170891, 21.593506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580193, 31.875256, 21.755474>,  <37.709389, 31.697874, 21.852655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580193, 31.875256, 21.755474>,  <37.364868, 32.170891, 21.593506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580193, 31.875256, 21.755474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694096, 0.116330, -0.710421,
		0.477962, 0.663484, 0.575623,
		0.538315, -0.739092, 0.404920,
		37.741688, 31.653528, 21.876949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171066, 31.997131, 20.842388>,  <37.364868, 32.170891, 21.593506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171066, 31.997131, 20.842388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054260, 32.278206, 20.582863>,  <36.984177, 32.446850, 20.427147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054260, 32.278206, 20.582863>,  <37.171066, 31.997131, 20.842388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054260, 32.278206, 20.582863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611060, 0.384794, 0.691766,
		0.735754, 0.598469, 0.317019,
		-0.292014, 0.702687, -0.648814,
		36.966656, 32.489014, 20.388218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268879, 32.749531, 21.177546>,  <37.171066, 31.997131, 20.842388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268879, 32.749531, 21.177546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975937, 32.731598, 20.905766>,  <36.800171, 32.720837, 20.742699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975937, 32.731598, 20.905766>,  <37.268879, 32.749531, 21.177546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975937, 32.731598, 20.905766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582951, 0.556945, 0.591591,
		0.351891, 0.829338, -0.434017,
		-0.732353, -0.044835, -0.679448,
		36.756229, 32.718147, 20.701931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009407, 33.396877, 21.007376>,  <37.268879, 32.749531, 21.177546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009407, 33.396877, 21.007376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705082, 33.145367, 20.943111>,  <36.522488, 32.994461, 20.904552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705082, 33.145367, 20.943111>,  <37.009407, 33.396877, 21.007376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705082, 33.145367, 20.943111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601082, 0.589387, 0.539745,
		-0.244686, 0.507213, -0.826356,
		-0.760809, -0.628775, -0.160662,
		36.476841, 32.956734, 20.894913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425919, 33.903053, 21.092043>,  <37.009407, 33.396877, 21.007376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425919, 33.903053, 21.092043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250286, 33.559448, 21.197338>,  <36.144905, 33.353283, 21.260515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250286, 33.559448, 21.197338>,  <36.425919, 33.903053, 21.092043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250286, 33.559448, 21.197338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668564, 0.508128, 0.542981,
		-0.600189, 0.062421, -0.797419,
		-0.439085, -0.859016, 0.263240,
		36.118561, 33.301743, 21.276310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641407, 33.976299, 21.128540>,  <36.425919, 33.903053, 21.092043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641407, 33.976299, 21.128540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788746, 33.699909, 21.377335>,  <35.877148, 33.534073, 21.526611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788746, 33.699909, 21.377335>,  <35.641407, 33.976299, 21.128540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788746, 33.699909, 21.377335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615032, 0.320596, 0.720385,
		-0.697177, -0.647894, -0.306883,
		0.368348, -0.690979, 0.621988,
		35.899250, 33.492615, 21.563931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074856, 33.530464, 21.352154>,  <35.641407, 33.976299, 21.128540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074856, 33.530464, 21.352154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357258, 33.562706, 21.633595>,  <35.526699, 33.582050, 21.802460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357258, 33.562706, 21.633595>,  <35.074856, 33.530464, 21.352154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357258, 33.562706, 21.633595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682898, 0.340704, 0.646198,
		-0.187634, -0.936709, 0.295583,
		0.706006, 0.080604, 0.703604,
		35.569061, 33.586887, 21.844675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726765, 32.861717, 21.381454>,  <35.074856, 33.530464, 21.352154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726765, 32.861717, 21.381454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487309, 32.913425, 21.697662>,  <34.343636, 32.944450, 21.887386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487309, 32.913425, 21.697662>,  <34.726765, 32.861717, 21.381454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487309, 32.913425, 21.697662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201417, -0.979476, 0.007637,
		0.775282, -0.154652, 0.612389,
		-0.598639, 0.129267, 0.790520,
		34.307716, 32.952206, 21.934818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029877, 32.405815, 21.856245>,  <34.726765, 32.861717, 21.381454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029877, 32.405815, 21.856245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637897, 32.481617, 21.880856>,  <34.402710, 32.527100, 21.895622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637897, 32.481617, 21.880856>,  <35.029877, 32.405815, 21.856245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637897, 32.481617, 21.880856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185950, -0.980776, 0.059175,
		0.071556, 0.046548, 0.996350,
		-0.979950, 0.189505, 0.061524,
		34.343914, 32.538467, 21.899313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779125, 32.162201, 22.540192>,  <35.029877, 32.405815, 21.856245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779125, 32.162201, 22.540192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480228, 32.178822, 22.274891>,  <34.300892, 32.188793, 22.115711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480228, 32.178822, 22.274891>,  <34.779125, 32.162201, 22.540192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480228, 32.178822, 22.274891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076762, -0.996760, 0.024038,
		-0.660103, 0.068875, 0.748011,
		-0.747243, 0.041552, -0.663251,
		34.256054, 32.191288, 22.075916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225471, 31.735119, 22.813503>,  <34.779125, 32.162201, 22.540192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225471, 31.735119, 22.813503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160629, 31.751633, 22.419140>,  <34.121723, 31.761541, 22.182522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160629, 31.751633, 22.419140>,  <34.225471, 31.735119, 22.813503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160629, 31.751633, 22.419140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087144, -0.995820, -0.027372,
		-0.982918, 0.081478, 0.165027,
		-0.162107, 0.041286, -0.985909,
		34.111996, 31.764019, 22.123367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609352, 31.289579, 22.808477>,  <34.225471, 31.735119, 22.813503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609352, 31.289579, 22.808477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726898, 31.320770, 22.427414>,  <33.797428, 31.339485, 22.198776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726898, 31.320770, 22.427414>,  <33.609352, 31.289579, 22.808477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726898, 31.320770, 22.427414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298844, -0.939207, -0.169063,
		-0.907928, 0.334379, -0.252699,
		0.293868, 0.077979, -0.952660,
		33.815060, 31.344164, 22.141617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096443, 31.084293, 22.297291>,  <33.609352, 31.289579, 22.808477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096443, 31.084293, 22.297291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422394, 31.030743, 22.071705>,  <33.617966, 30.998613, 21.936354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422394, 31.030743, 22.071705>,  <33.096443, 31.084293, 22.297291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422394, 31.030743, 22.071705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237942, -0.964464, -0.114857,
		-0.528547, 0.227785, -0.817773,
		0.814876, -0.133875, -0.563964,
		33.666855, 30.990580, 21.902515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832619, 30.653337, 21.683760>,  <33.096443, 31.084293, 22.297291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832619, 30.653337, 21.683760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230797, 30.623127, 21.707008>,  <33.469704, 30.605000, 21.720957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230797, 30.623127, 21.707008>,  <32.832619, 30.653337, 21.683760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230797, 30.623127, 21.707008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074124, -0.996911, -0.025955,
		0.059903, 0.021529, -0.997972,
		0.995448, -0.075528, 0.058122,
		33.529430, 30.600468, 21.724445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995266, 30.097153, 21.262619>,  <32.832619, 30.653337, 21.683760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995266, 30.097153, 21.262619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318787, 30.156937, 21.490128>,  <33.512897, 30.192808, 21.626633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318787, 30.156937, 21.490128>,  <32.995266, 30.097153, 21.262619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318787, 30.156937, 21.490128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102734, -0.988202, 0.113589,
		0.579040, -0.033439, -0.814613,
		0.808800, 0.149461, 0.568774,
		33.561428, 30.201775, 21.660759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436722, 29.601460, 21.059198>,  <32.995266, 30.097153, 21.262619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436722, 29.601460, 21.059198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568897, 29.701168, 21.423325>,  <33.648201, 29.760992, 21.641800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568897, 29.701168, 21.423325>,  <33.436722, 29.601460, 21.059198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568897, 29.701168, 21.423325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055393, -0.967953, 0.244945,
		0.942202, -0.030513, -0.333654,
		0.330435, 0.249270, 0.910317,
		33.668026, 29.775949, 21.696419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085606, 29.244434, 21.262142>,  <33.436722, 29.601460, 21.059198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085606, 29.244434, 21.262142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933971, 29.351315, 21.616520>,  <33.842991, 29.415442, 21.829147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933971, 29.351315, 21.616520>,  <34.085606, 29.244434, 21.262142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933971, 29.351315, 21.616520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159565, -0.924188, 0.347008,
		0.911502, 0.272911, 0.307708,
		-0.379082, 0.267199, 0.885947,
		33.820248, 29.431475, 21.882303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472805, 28.884398, 21.772379>,  <34.085606, 29.244434, 21.262142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472805, 28.884398, 21.772379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149551, 28.965717, 21.993500>,  <33.955601, 29.014509, 22.126173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149551, 28.965717, 21.993500>,  <34.472805, 28.884398, 21.772379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149551, 28.965717, 21.993500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031142, -0.922484, 0.384776,
		0.588176, 0.328166, 0.739159,
		-0.808133, 0.203297, 0.552803,
		33.907112, 29.026707, 22.159340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661057, 28.856691, 22.549557>,  <34.472805, 28.884398, 21.772379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661057, 28.856691, 22.549557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270348, 28.790092, 22.495613>,  <34.035923, 28.750134, 22.463247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270348, 28.790092, 22.495613>,  <34.661057, 28.856691, 22.549557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270348, 28.790092, 22.495613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104250, -0.919191, 0.379762,
		-0.187193, 0.356884, 0.915201,
		-0.976776, -0.166498, -0.134861,
		33.977314, 28.740143, 22.455154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450005, 28.527540, 23.092304>,  <34.661057, 28.856691, 22.549557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450005, 28.527540, 23.092304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100975, 28.476418, 22.903717>,  <33.891556, 28.445744, 22.790565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100975, 28.476418, 22.903717>,  <34.450005, 28.527540, 23.092304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100975, 28.476418, 22.903717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119153, -0.880324, 0.459165,
		-0.473727, 0.456832, 0.752920,
		-0.872574, -0.127806, -0.471466,
		33.839203, 28.438076, 22.762278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943005, 28.457184, 23.635557>,  <34.450005, 28.527540, 23.092304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943005, 28.457184, 23.635557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798954, 28.304359, 23.295124>,  <33.712524, 28.212666, 23.090864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798954, 28.304359, 23.295124>,  <33.943005, 28.457184, 23.635557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798954, 28.304359, 23.295124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234115, -0.846087, 0.478881,
		-0.903049, 0.371709, 0.215254,
		-0.360128, -0.382059, -0.851081,
		33.690914, 28.189741, 23.039801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386311, 28.009155, 23.852121>,  <33.943005, 28.457184, 23.635557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386311, 28.009155, 23.852121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448231, 27.874294, 23.480667>,  <33.485382, 27.793377, 23.257793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448231, 27.874294, 23.480667>,  <33.386311, 28.009155, 23.852121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448231, 27.874294, 23.480667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322662, -0.905675, 0.275029,
		-0.933770, 0.257062, -0.248984,
		0.154799, -0.337152, -0.928637,
		33.494671, 27.773149, 23.202076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850918, 27.529703, 23.789032>,  <33.386311, 28.009155, 23.852121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850918, 27.529703, 23.789032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160172, 27.445213, 23.549820>,  <33.345726, 27.394520, 23.406292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160172, 27.445213, 23.549820>,  <32.850918, 27.529703, 23.789032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160172, 27.445213, 23.549820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013599, -0.948219, 0.317327,
		-0.634092, -0.237205, -0.735976,
		0.773138, -0.211223, -0.598032,
		33.392113, 27.381847, 23.370411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732956, 26.857582, 23.641193>,  <32.850918, 27.529703, 23.789032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732956, 26.857582, 23.641193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105293, 26.870426, 23.495594>,  <33.328697, 26.878132, 23.408234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105293, 26.870426, 23.495594>,  <32.732956, 26.857582, 23.641193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105293, 26.870426, 23.495594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148484, -0.943422, 0.296492,
		-0.333885, -0.330036, -0.882948,
		0.930846, 0.032110, -0.363999,
		33.384548, 26.880058, 23.386395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727478, 26.236832, 23.354986>,  <32.732956, 26.857582, 23.641193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727478, 26.236832, 23.354986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113209, 26.340843, 23.374825>,  <33.344646, 26.403250, 23.386728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113209, 26.340843, 23.374825>,  <32.727478, 26.236832, 23.354986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113209, 26.340843, 23.374825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244164, -0.946088, 0.212842,
		0.102270, -0.193139, -0.975827,
		0.964326, 0.260029, 0.049598,
		33.402508, 26.418852, 23.389704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251713, 25.834326, 22.860807>,  <32.727478, 26.236832, 23.354986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251713, 25.834326, 22.860807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461761, 25.961792, 23.176453>,  <33.587791, 26.038271, 23.365839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461761, 25.961792, 23.176453>,  <33.251713, 25.834326, 22.860807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461761, 25.961792, 23.176453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185217, -0.947816, 0.259497,
		0.830626, 0.009889, -0.556743,
		0.525124, 0.318663, 0.789112,
		33.619297, 26.057390, 23.413187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893089, 25.379459, 22.843424>,  <33.251713, 25.834326, 22.860807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893089, 25.379459, 22.843424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894608, 25.510078, 23.221493>,  <33.895519, 25.588449, 23.448334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894608, 25.510078, 23.221493>,  <33.893089, 25.379459, 22.843424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894608, 25.510078, 23.221493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375216, -0.876586, 0.301347,
		0.926929, 0.353502, -0.125849,
		0.003791, 0.326548, 0.945173,
		33.895744, 25.608044, 23.505045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582127, 25.273188, 23.165133>,  <33.893089, 25.379459, 22.843424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582127, 25.273188, 23.165133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341675, 25.271378, 23.484787>,  <34.197403, 25.270290, 23.676580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341675, 25.271378, 23.484787>,  <34.582127, 25.273188, 23.165133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341675, 25.271378, 23.484787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449504, -0.828714, 0.333434,
		0.660746, 0.559654, 0.500202,
		-0.601132, -0.004527, 0.799137,
		34.161335, 25.270020, 23.724527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999142, 24.975681, 23.636358>,  <34.582127, 25.273188, 23.165133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999142, 24.975681, 23.636358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642166, 24.961658, 23.816280>,  <34.427982, 24.953245, 23.924234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642166, 24.961658, 23.816280>,  <34.999142, 24.975681, 23.636358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642166, 24.961658, 23.816280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188123, -0.935089, 0.300363,
		0.410078, 0.352675, 0.841105,
		-0.892438, -0.035059, 0.449805,
		34.374435, 24.951141, 23.951221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078297, 24.856781, 24.436541>,  <34.999142, 24.975681, 23.636358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078297, 24.856781, 24.436541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715714, 24.728603, 24.326523>,  <34.498165, 24.651697, 24.260511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715714, 24.728603, 24.326523>,  <35.078297, 24.856781, 24.436541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715714, 24.728603, 24.326523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199693, -0.899146, 0.389434,
		-0.372098, 0.298081, 0.879028,
		-0.906458, -0.320443, -0.275046,
		34.443775, 24.632471, 24.244009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128929, 24.202755, 24.716665>,  <35.078297, 24.856781, 24.436541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128929, 24.202755, 24.716665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767632, 24.192497, 24.545322>,  <34.550854, 24.186342, 24.442516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767632, 24.192497, 24.545322>,  <35.128929, 24.202755, 24.716665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767632, 24.192497, 24.545322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112414, -0.949215, 0.293862,
		-0.414136, 0.313583, 0.854492,
		-0.903247, -0.025642, -0.428355,
		34.496658, 24.184805, 24.416817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542316, 24.135134, 25.244083>,  <35.128929, 24.202755, 24.716665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542316, 24.135134, 25.244083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432961, 23.982044, 24.891090>,  <34.367348, 23.890190, 24.679295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432961, 23.982044, 24.891090>,  <34.542316, 24.135134, 25.244083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432961, 23.982044, 24.891090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229564, -0.864965, 0.446245,
		-0.934108, 0.324586, 0.148614,
		-0.273391, -0.382725, -0.882485,
		34.350945, 23.867228, 24.626345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854488, 23.861609, 25.315035>,  <34.542316, 24.135134, 25.244083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854488, 23.861609, 25.315035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015221, 23.669651, 25.003078>,  <34.111660, 23.554478, 24.815905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015221, 23.669651, 25.003078>,  <33.854488, 23.861609, 25.315035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015221, 23.669651, 25.003078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196419, -0.877026, 0.438458,
		-0.894399, -0.023001, -0.446678,
		0.401833, -0.479892, -0.779894,
		34.135769, 23.525682, 24.769110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454357, 23.248259, 25.228998>,  <33.854488, 23.861609, 25.315035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454357, 23.248259, 25.228998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767338, 23.159058, 24.996437>,  <33.955128, 23.105537, 24.856899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767338, 23.159058, 24.996437>,  <33.454357, 23.248259, 25.228998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767338, 23.159058, 24.996437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128586, -0.971415, 0.199545,
		-0.609284, -0.081375, -0.788766,
		0.782457, -0.223004, -0.581404,
		34.002075, 23.092157, 24.822016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276054, 22.635769, 24.912884>,  <33.454357, 23.248259, 25.228998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276054, 22.635769, 24.912884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665234, 22.643311, 24.820782>,  <33.898743, 22.647835, 24.765520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665234, 22.643311, 24.820782>,  <33.276054, 22.635769, 24.912884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665234, 22.643311, 24.820782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030704, -0.977271, -0.209758,
		-0.228977, 0.211153, -0.950255,
		0.972947, 0.018853, -0.230256,
		33.957119, 22.648966, 24.751705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280712, 22.175146, 24.360676>,  <33.276054, 22.635769, 24.912884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280712, 22.175146, 24.360676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640907, 22.208977, 24.531307>,  <33.857025, 22.229275, 24.633686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640907, 22.208977, 24.531307>,  <33.280712, 22.175146, 24.360676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640907, 22.208977, 24.531307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110071, -0.993292, -0.035422,
		0.420720, 0.078850, -0.903757,
		0.900488, 0.084575, 0.426577,
		33.911053, 22.234350, 24.659281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753742, 21.717047, 24.021923>,  <33.280712, 22.175146, 24.360676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753742, 21.717047, 24.021923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926380, 21.781296, 24.376984>,  <34.029964, 21.819845, 24.590021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926380, 21.781296, 24.376984>,  <33.753742, 21.717047, 24.021923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926380, 21.781296, 24.376984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224240, -0.972235, 0.066896,
		0.873753, 0.170175, -0.455628,
		0.431593, 0.160621, 0.887653,
		34.055859, 21.829481, 24.643280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442905, 21.202110, 24.049973>,  <33.753742, 21.717047, 24.021923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442905, 21.202110, 24.049973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347713, 21.319927, 24.420185>,  <34.290596, 21.390617, 24.642313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347713, 21.319927, 24.420185>,  <34.442905, 21.202110, 24.049973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347713, 21.319927, 24.420185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049273, -0.948021, 0.314370,
		0.970019, 0.120418, 0.211100,
		-0.237983, 0.294543, 0.925531,
		34.276318, 21.408291, 24.697845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957924, 20.826456, 24.453825>,  <34.442905, 21.202110, 24.049973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957924, 20.826456, 24.453825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675461, 20.933159, 24.716179>,  <34.505985, 20.997181, 24.873592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675461, 20.933159, 24.716179>,  <34.957924, 20.826456, 24.453825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675461, 20.933159, 24.716179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050780, -0.904852, 0.422687,
		0.706236, 0.331788, 0.625418,
		-0.706153, 0.266758, 0.655887,
		34.463615, 21.013186, 24.912945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251534, 20.590878, 25.098356>,  <34.957924, 20.826456, 24.453825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251534, 20.590878, 25.098356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856949, 20.645206, 25.135105>,  <34.620197, 20.677805, 25.157154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856949, 20.645206, 25.135105>,  <35.251534, 20.590878, 25.098356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856949, 20.645206, 25.135105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082818, -0.896244, 0.435762,
		0.141528, 0.422254, 0.895361,
		-0.986464, 0.135824, 0.091873,
		34.561008, 20.685953, 25.162666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045231, 20.208723, 25.684141>,  <35.251534, 20.590878, 25.098356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045231, 20.208723, 25.684141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678680, 20.258762, 25.532028>,  <34.458752, 20.288786, 25.440760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678680, 20.258762, 25.532028>,  <35.045231, 20.208723, 25.684141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678680, 20.258762, 25.532028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271611, -0.892122, 0.361035,
		-0.294094, 0.434131, 0.851492,
		-0.916371, 0.125096, -0.380282,
		34.403770, 20.296291, 25.417944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469749, 20.257690, 26.263554>,  <35.045231, 20.208723, 25.684141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469749, 20.257690, 26.263554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299793, 20.119247, 25.928967>,  <34.197819, 20.036182, 25.728214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299793, 20.119247, 25.928967>,  <34.469749, 20.257690, 26.263554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299793, 20.119247, 25.928967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460950, -0.712541, 0.528971,
		-0.779098, 0.610325, 0.143215,
		-0.424891, -0.346106, -0.836468,
		34.172325, 20.015415, 25.678026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830326, 20.021090, 26.510008>,  <34.469749, 20.257690, 26.263554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830326, 20.021090, 26.510008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802509, 19.852493, 26.148342>,  <33.785820, 19.751335, 25.931343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802509, 19.852493, 26.148342>,  <33.830326, 20.021090, 26.510008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802509, 19.852493, 26.148342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478077, -0.781416, 0.401037,
		-0.875560, 0.460148, -0.147165,
		-0.069539, -0.421489, -0.904164,
		33.781647, 19.726048, 25.877092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169598, 19.837345, 26.409534>,  <33.830326, 20.021090, 26.510008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169598, 19.837345, 26.409534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370426, 19.596706, 26.161018>,  <33.490925, 19.452324, 26.011908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370426, 19.596706, 26.161018>,  <33.169598, 19.837345, 26.409534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370426, 19.596706, 26.161018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541231, -0.778900, 0.316834,
		-0.674531, 0.177188, -0.716668,
		0.502073, -0.601597, -0.621292,
		33.521049, 19.416227, 25.974630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688313, 19.424129, 26.095043>,  <33.169598, 19.837345, 26.409534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688313, 19.424129, 26.095043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045067, 19.244221, 26.076096>,  <33.259121, 19.136274, 26.064728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045067, 19.244221, 26.076096>,  <32.688313, 19.424129, 26.095043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045067, 19.244221, 26.076096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427866, -0.873069, 0.233842,
		-0.146531, -0.188293, -0.971120,
		0.891885, -0.449774, -0.047368,
		33.312634, 19.109289, 26.061886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551712, 18.825262, 25.852793>,  <32.688313, 19.424129, 26.095043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551712, 18.825262, 25.852793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920898, 18.749702, 25.986923>,  <33.142410, 18.704367, 26.067402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920898, 18.749702, 25.986923>,  <32.551712, 18.825262, 25.852793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920898, 18.749702, 25.986923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265865, -0.942904, 0.200620,
		0.278284, -0.274318, -0.920493,
		0.922970, -0.188898, 0.335326,
		33.197788, 18.693033, 26.087521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697659, 18.050501, 25.583214>,  <32.551712, 18.825262, 25.852793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697659, 18.050501, 25.583214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973881, 18.142704, 25.857441>,  <33.139614, 18.198027, 26.021976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973881, 18.142704, 25.857441>,  <32.697659, 18.050501, 25.583214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973881, 18.142704, 25.857441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039200, -0.958391, 0.282756,
		0.722218, -0.168384, -0.670856,
		0.690553, 0.230509, 0.685567,
		33.181046, 18.211857, 26.063110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233597, 17.573059, 25.566376>,  <32.697659, 18.050501, 25.583214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233597, 17.573059, 25.566376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272182, 17.698948, 25.944084>,  <33.295334, 17.774481, 26.170710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272182, 17.698948, 25.944084>,  <33.233597, 17.573059, 25.566376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272182, 17.698948, 25.944084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001031, -0.948726, 0.316099,
		0.995336, -0.029518, -0.091840,
		0.096462, 0.314720, 0.944271,
		33.301121, 17.793364, 26.227365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738224, 17.108646, 25.976309>,  <33.233597, 17.573059, 25.566376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738224, 17.108646, 25.976309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490120, 17.236069, 26.263027>,  <33.341255, 17.312523, 26.435059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490120, 17.236069, 26.263027>,  <33.738224, 17.108646, 25.976309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490120, 17.236069, 26.263027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050365, -0.895761, 0.441675,
		0.782774, 0.310056, 0.539564,
		-0.620264, 0.318556, 0.716794,
		33.304039, 17.331636, 26.478065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102207, 16.854401, 26.570131>,  <33.738224, 17.108646, 25.976309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102207, 16.854401, 26.570131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721241, 16.947292, 26.649105>,  <33.492661, 17.003027, 26.696489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721241, 16.947292, 26.649105>,  <34.102207, 16.854401, 26.570131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721241, 16.947292, 26.649105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085824, -0.825827, 0.557355,
		0.292480, 0.513887, 0.806458,
		-0.952412, 0.232229, 0.197434,
		33.435516, 17.016960, 26.708336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030010, 16.852253, 27.290255>,  <34.102207, 16.854401, 26.570131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030010, 16.852253, 27.290255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672379, 16.787312, 27.123280>,  <33.457798, 16.748346, 27.023094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672379, 16.787312, 27.123280>,  <34.030010, 16.852253, 27.290255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672379, 16.787312, 27.123280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051000, -0.889030, 0.455000,
		-0.444987, 0.428097, 0.786587,
		-0.894084, -0.162353, -0.417439,
		33.404152, 16.738605, 26.998047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411327, 16.600754, 27.754972>,  <34.030010, 16.852253, 27.290255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411327, 16.600754, 27.754972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316662, 16.442005, 27.400238>,  <33.259861, 16.346756, 27.187397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316662, 16.442005, 27.400238>,  <33.411327, 16.600754, 27.754972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316662, 16.442005, 27.400238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285224, -0.844171, 0.453896,
		-0.928782, 0.360370, 0.086590,
		-0.236667, -0.396873, -0.886837,
		33.245663, 16.322943, 27.134188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714935, 16.357235, 27.580484>,  <33.411327, 16.600754, 27.754972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714935, 16.357235, 27.580484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985550, 16.107792, 27.423813>,  <33.147919, 15.958126, 27.329811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985550, 16.107792, 27.423813>,  <32.714935, 16.357235, 27.580484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985550, 16.107792, 27.423813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337000, -0.735090, 0.588281,
		-0.654774, -0.265998, -0.707471,
		0.676536, -0.623609, -0.391677,
		33.188511, 15.920710, 27.306309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902107, 15.814619, 28.065826>,  <32.714935, 16.357235, 27.580484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902107, 15.814619, 28.065826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181011, 15.527905, 28.063103>,  <33.348354, 15.355876, 28.061468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181011, 15.527905, 28.063103>,  <32.902107, 15.814619, 28.065826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181011, 15.527905, 28.063103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025200, -0.015021, -0.999570,
		0.716377, 0.697130, -0.028537,
		0.697258, -0.716787, -0.006807,
		33.390190, 15.312868, 28.061060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649403, 16.501568, 28.450708>,  <32.902107, 15.814619, 28.065826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649403, 16.501568, 28.450708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439678, 16.535477, 28.789627>,  <32.313843, 16.555822, 28.992979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439678, 16.535477, 28.789627>,  <32.649403, 16.501568, 28.450708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439678, 16.535477, 28.789627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360824, 0.879167, -0.311242,
		-0.771299, -0.468913, -0.430369,
		-0.524312, 0.084773, 0.847296,
		32.282383, 16.560909, 29.043816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934137, 16.692385, 28.305248>,  <32.649403, 16.501568, 28.450708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934137, 16.692385, 28.305248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033623, 16.860687, 28.654213>,  <32.093315, 16.961668, 28.863592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033623, 16.860687, 28.654213>,  <31.934137, 16.692385, 28.305248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033623, 16.860687, 28.654213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460816, 0.843648, -0.275511,
		-0.851933, -0.333498, 0.403720,
		0.248715, 0.420757, 0.872413,
		32.108238, 16.986914, 28.915937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425043, 17.078241, 28.601480>,  <31.934137, 16.692385, 28.305248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425043, 17.078241, 28.601480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754141, 17.244694, 28.756363>,  <31.951599, 17.344564, 28.849293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754141, 17.244694, 28.756363>,  <31.425043, 17.078241, 28.601480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754141, 17.244694, 28.756363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411999, 0.905885, -0.098132,
		-0.391601, -0.078792, 0.916755,
		0.822743, 0.416131, 0.387207,
		32.000965, 17.369534, 28.872524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235161, 17.649645, 28.896751>,  <31.425043, 17.078241, 28.601480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235161, 17.649645, 28.896751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631945, 17.700195, 28.894043>,  <31.870014, 17.730526, 28.892418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631945, 17.700195, 28.894043>,  <31.235161, 17.649645, 28.896751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631945, 17.700195, 28.894043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125187, 0.987656, 0.094154,
		0.018588, -0.092549, 0.995535,
		0.991959, 0.126378, -0.006772,
		31.929533, 17.738110, 28.892012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470964, 18.246449, 29.290169>,  <31.235161, 17.649645, 28.896751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470964, 18.246449, 29.290169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800947, 18.174595, 29.075813>,  <31.998938, 18.131483, 28.947201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800947, 18.174595, 29.075813>,  <31.470964, 18.246449, 29.290169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800947, 18.174595, 29.075813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169604, 0.983131, -0.068465,
		0.539146, -0.034408, 0.841509,
		0.824958, -0.179636, -0.535887,
		32.048435, 18.120705, 28.915047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005150, 18.585455, 29.561810>,  <31.470964, 18.246449, 29.290169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005150, 18.585455, 29.561810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121799, 18.538692, 29.182064>,  <32.191788, 18.510635, 28.954218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121799, 18.538692, 29.182064>,  <32.005150, 18.585455, 29.561810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121799, 18.538692, 29.182064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222496, 0.973570, -0.051544,
		0.930297, -0.196198, 0.309926,
		0.291622, -0.116908, -0.949362,
		32.209286, 18.503620, 28.897255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750801, 18.925217, 29.474295>,  <32.005150, 18.585455, 29.561810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750801, 18.925217, 29.474295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578129, 18.909786, 29.113815>,  <32.474525, 18.900528, 28.897528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578129, 18.909786, 29.113815>,  <32.750801, 18.925217, 29.474295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578129, 18.909786, 29.113815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119033, 0.987912, -0.099306,
		0.894136, -0.150141, -0.421875,
		-0.431685, -0.038576, -0.901199,
		32.448624, 18.898212, 28.843456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161411, 19.323193, 29.111431>,  <32.750801, 18.925217, 29.474295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161411, 19.323193, 29.111431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821480, 19.290771, 28.903114>,  <32.617519, 19.271318, 28.778124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821480, 19.290771, 28.903114>,  <33.161411, 19.323193, 29.111431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821480, 19.290771, 28.903114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023220, 0.981389, -0.190623,
		0.526550, -0.174090, -0.832129,
		-0.849827, -0.081051, -0.520792,
		32.566532, 19.266457, 28.746876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262123, 19.596912, 28.484425>,  <33.161411, 19.323193, 29.111431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262123, 19.596912, 28.484425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865650, 19.617756, 28.533157>,  <32.627766, 19.630262, 28.562397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865650, 19.617756, 28.533157>,  <33.262123, 19.596912, 28.484425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865650, 19.617756, 28.533157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027674, 0.980558, -0.194269,
		-0.129586, -0.189185, -0.973353,
		-0.991182, 0.052111, 0.121831,
		32.568295, 19.633389, 28.569706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032368, 20.006479, 27.908558>,  <33.262123, 19.596912, 28.484425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032368, 20.006479, 27.908558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751030, 20.029453, 28.191967>,  <32.582226, 20.043238, 28.362013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751030, 20.029453, 28.191967>,  <33.032368, 20.006479, 27.908558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751030, 20.029453, 28.191967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235101, 0.921842, -0.308115,
		-0.670842, -0.383286, -0.634872,
		-0.703348, 0.057437, 0.708522,
		32.540024, 20.046684, 28.404524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495193, 20.390074, 27.631142>,  <33.032368, 20.006479, 27.908558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495193, 20.390074, 27.631142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410255, 20.435822, 28.019333>,  <32.359295, 20.463270, 28.252249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410255, 20.435822, 28.019333>,  <32.495193, 20.390074, 27.631142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410255, 20.435822, 28.019333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228111, 0.959888, -0.163033,
		-0.950198, -0.255996, -0.177736,
		-0.212343, 0.114370, 0.970479,
		32.346554, 20.470133, 28.310476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788298, 20.666985, 27.635689>,  <32.495193, 20.390074, 27.631142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788298, 20.666985, 27.635689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915579, 20.741028, 28.007599>,  <31.991947, 20.785454, 28.230745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915579, 20.741028, 28.007599>,  <31.788298, 20.666985, 27.635689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915579, 20.741028, 28.007599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347656, 0.935210, -0.067210,
		-0.881975, -0.301855, 0.361943,
		0.318205, 0.185110, 0.929774,
		32.011040, 20.796560, 28.286531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252977, 20.990149, 27.833353>,  <31.788298, 20.666985, 27.635689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252977, 20.990149, 27.833353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557631, 21.100765, 28.067768>,  <31.740423, 21.167135, 28.208418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557631, 21.100765, 28.067768>,  <31.252977, 20.990149, 27.833353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557631, 21.100765, 28.067768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342374, 0.939562, 0.001599,
		-0.550178, -0.201863, 0.810281,
		0.761632, 0.276539, 0.586039,
		31.786119, 21.183727, 28.243580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958851, 21.528545, 28.227875>,  <31.252977, 20.990149, 27.833353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958851, 21.528545, 28.227875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345016, 21.574814, 28.321342>,  <31.576715, 21.602575, 28.377422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345016, 21.574814, 28.321342>,  <30.958851, 21.528545, 28.227875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345016, 21.574814, 28.321342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139322, 0.986389, 0.087333,
		-0.220385, -0.116867, 0.968387,
		0.965412, 0.115671, 0.233667,
		31.634640, 21.609514, 28.391443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967054, 22.006311, 28.742647>,  <30.958851, 21.528545, 28.227875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967054, 22.006311, 28.742647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303076, 22.025242, 28.526474>,  <31.504688, 22.036600, 28.396770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303076, 22.025242, 28.526474>,  <30.967054, 22.006311, 28.742647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303076, 22.025242, 28.526474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092393, 0.994115, -0.056564,
		0.534576, 0.097449, 0.839483,
		0.840055, 0.047325, -0.540434,
		31.555092, 22.039438, 28.364344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195770, 22.654791, 28.988129>,  <30.967054, 22.006311, 28.742647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195770, 22.654791, 28.988129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405148, 22.576862, 28.656334>,  <31.530775, 22.530106, 28.457256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405148, 22.576862, 28.656334>,  <31.195770, 22.654791, 28.988129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405148, 22.576862, 28.656334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144839, 0.979686, -0.138699,
		0.839659, -0.047541, 0.541029,
		0.523445, -0.194822, -0.829488,
		31.562181, 22.518415, 28.407488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883385, 23.165644, 28.940737>,  <31.195770, 22.654791, 28.988129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883385, 23.165644, 28.940737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807966, 23.040428, 28.568401>,  <31.762714, 22.965300, 28.345001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807966, 23.040428, 28.568401>,  <31.883385, 23.165644, 28.940737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807966, 23.040428, 28.568401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348417, 0.864858, -0.361423,
		0.918181, -0.392465, -0.053999,
		-0.188547, -0.313038, -0.930837,
		31.751402, 22.946516, 28.289150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510185, 23.367086, 28.539976>,  <31.883385, 23.165644, 28.940737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510185, 23.367086, 28.539976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221897, 23.301552, 28.270542>,  <32.048923, 23.262232, 28.108881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221897, 23.301552, 28.270542>,  <32.510185, 23.367086, 28.539976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221897, 23.301552, 28.270542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210019, 0.874400, -0.437398,
		0.660644, -0.456709, -0.595791,
		-0.720723, -0.163837, -0.673584,
		32.005680, 23.252401, 28.068466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782402, 23.527025, 27.943651>,  <32.510185, 23.367086, 28.539976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782402, 23.527025, 27.943651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404625, 23.529308, 27.812202>,  <32.177959, 23.530678, 27.733334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404625, 23.529308, 27.812202>,  <32.782402, 23.527025, 27.943651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404625, 23.529308, 27.812202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180348, 0.844883, -0.503633,
		0.274772, -0.534920, -0.798975,
		-0.944444, 0.005709, -0.328622,
		32.121292, 23.531021, 27.713615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796867, 23.556326, 27.265894>,  <32.782402, 23.527025, 27.943651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796867, 23.556326, 27.265894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441940, 23.713837, 27.361904>,  <32.228985, 23.808342, 27.419510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441940, 23.713837, 27.361904>,  <32.796867, 23.556326, 27.265894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441940, 23.713837, 27.361904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203554, 0.801458, -0.562344,
		-0.413808, -0.450118, -0.791300,
		-0.887315, 0.393775, 0.240026,
		32.175747, 23.831968, 27.433912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391861, 23.870831, 26.626026>,  <32.796867, 23.556326, 27.265894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391861, 23.870831, 26.626026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211555, 24.065403, 26.925411>,  <32.103371, 24.182146, 27.105042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211555, 24.065403, 26.925411>,  <32.391861, 23.870831, 26.626026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211555, 24.065403, 26.925411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037582, 0.848079, -0.528536,
		-0.891850, -0.210118, -0.400567,
		-0.450767, 0.486429, 0.748462,
		32.076324, 24.211332, 27.149950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918589, 24.135601, 26.207148>,  <32.391861, 23.870831, 26.626026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918589, 24.135601, 26.207148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941061, 24.351349, 26.543224>,  <31.954544, 24.480797, 26.744871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941061, 24.351349, 26.543224>,  <31.918589, 24.135601, 26.207148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941061, 24.351349, 26.543224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047285, 0.842015, -0.537378,
		-0.997300, -0.009537, 0.072811,
		0.056182, 0.539370, 0.840192,
		31.957916, 24.513161, 26.795282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377619, 24.719717, 26.116745>,  <31.918589, 24.135601, 26.207148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377619, 24.719717, 26.116745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592001, 24.867935, 26.420177>,  <31.720631, 24.956865, 26.602238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592001, 24.867935, 26.420177>,  <31.377619, 24.719717, 26.116745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592001, 24.867935, 26.420177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105860, 0.920937, -0.375058,
		-0.837583, 0.120710, 0.532807,
		0.535956, 0.370546, 0.758583,
		31.752787, 24.979099, 26.647753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908575, 25.204729, 26.424633>,  <31.377619, 24.719717, 26.116745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908575, 25.204729, 26.424633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279148, 25.301964, 26.539616>,  <31.501492, 25.360306, 26.608606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279148, 25.301964, 26.539616>,  <30.908575, 25.204729, 26.424633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279148, 25.301964, 26.539616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176338, 0.954837, -0.239145,
		-0.332609, 0.170862, 0.927458,
		0.926432, 0.243088, 0.287458,
		31.557077, 25.374889, 26.625853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836843, 25.931581, 26.712252>,  <30.908575, 25.204729, 26.424633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836843, 25.931581, 26.712252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228292, 25.893940, 26.639099>,  <31.463161, 25.871355, 26.595207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228292, 25.893940, 26.639099>,  <30.836843, 25.931581, 26.712252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228292, 25.893940, 26.639099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054561, 0.976111, -0.210308,
		0.198301, 0.195834, 0.960378,
		0.978621, -0.094104, -0.182879,
		31.521879, 25.865709, 26.584236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259966, 26.517706, 27.065674>,  <30.836843, 25.931581, 26.712252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259966, 26.517706, 27.065674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494862, 26.391586, 26.767483>,  <31.635799, 26.315914, 26.588568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494862, 26.391586, 26.767483>,  <31.259966, 26.517706, 27.065674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494862, 26.391586, 26.767483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266326, 0.944993, -0.189889,
		0.764342, -0.087030, 0.638910,
		0.587240, -0.315299, -0.745477,
		31.671034, 26.296997, 26.543840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813711, 26.915808, 27.071789>,  <31.259966, 26.517706, 27.065674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813711, 26.915808, 27.071789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849501, 26.799809, 26.690655>,  <31.870975, 26.730209, 26.461975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849501, 26.799809, 26.690655>,  <31.813711, 26.915808, 27.071789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849501, 26.799809, 26.690655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003578, 0.956760, -0.290856,
		0.995983, 0.022616, 0.086644,
		0.089476, -0.289998, -0.952835,
		31.876343, 26.712809, 26.404804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396572, 27.177490, 26.762712>,  <31.813711, 26.915808, 27.071789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396572, 27.177490, 26.762712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219471, 27.098980, 26.412754>,  <32.113213, 27.051874, 26.202778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219471, 27.098980, 26.412754>,  <32.396572, 27.177490, 26.762712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219471, 27.098980, 26.412754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263528, 0.904167, -0.336205,
		0.857044, -0.379416, -0.348597,
		-0.442751, -0.196277, -0.874898,
		32.086647, 27.040096, 26.150284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923286, 27.244265, 26.245707>,  <32.396572, 27.177490, 26.762712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923286, 27.244265, 26.245707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570354, 27.282280, 26.061333>,  <32.358597, 27.305090, 25.950708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570354, 27.282280, 26.061333>,  <32.923286, 27.244265, 26.245707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570354, 27.282280, 26.061333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291988, 0.878657, -0.377763,
		0.369101, -0.467899, -0.803016,
		-0.882331, 0.095038, -0.460934,
		32.305656, 27.310791, 25.923052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161053, 27.463633, 25.693502>,  <32.923286, 27.244265, 26.245707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161053, 27.463633, 25.693502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776428, 27.569984, 25.720940>,  <32.545654, 27.633795, 25.737402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776428, 27.569984, 25.720940>,  <33.161053, 27.463633, 25.693502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776428, 27.569984, 25.720940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229316, 0.914982, -0.331999,
		-0.151032, -0.303509, -0.940783,
		-0.961563, 0.265879, 0.068592,
		32.487961, 27.649748, 25.741518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856304, 27.626303, 25.015104>,  <33.161053, 27.463633, 25.693502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856304, 27.626303, 25.015104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643501, 27.809647, 25.299885>,  <32.515820, 27.919653, 25.470753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643501, 27.809647, 25.299885>,  <32.856304, 27.626303, 25.015104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643501, 27.809647, 25.299885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014084, 0.835908, -0.548688,
		-0.846625, -0.301931, -0.438250,
		-0.532003, 0.458361, 0.711953,
		32.483902, 27.947155, 25.513472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406582, 28.129175, 24.621048>,  <32.856304, 27.626303, 25.015104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406582, 28.129175, 24.621048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348541, 28.251778, 24.997345>,  <32.313717, 28.325338, 25.223124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348541, 28.251778, 24.997345>,  <32.406582, 28.129175, 24.621048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348541, 28.251778, 24.997345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084426, 0.943503, -0.320427,
		-0.985808, -0.125918, -0.111027,
		-0.145102, 0.306506, 0.940744,
		32.305012, 28.343729, 25.279568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886765, 28.673422, 24.592922>,  <32.406582, 28.129175, 24.621048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886765, 28.673422, 24.592922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086414, 28.732605, 24.934444>,  <32.206203, 28.768116, 25.139359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086414, 28.732605, 24.934444>,  <31.886765, 28.673422, 24.592922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086414, 28.732605, 24.934444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106885, 0.967278, -0.230108,
		-0.859914, 0.206111, 0.466976,
		0.499123, 0.147960, 0.853806,
		32.236153, 28.776993, 25.190586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723825, 29.236254, 24.738693>,  <31.886765, 28.673422, 24.592922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723825, 29.236254, 24.738693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043697, 29.203934, 24.976681>,  <32.235619, 29.184542, 25.119473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043697, 29.203934, 24.976681>,  <31.723825, 29.236254, 24.738693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043697, 29.203934, 24.976681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235455, 0.953735, -0.186949,
		-0.552336, 0.289587, 0.781705,
		0.799678, -0.080798, 0.594968,
		32.283600, 29.179695, 25.155170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658545, 29.666700, 25.358387>,  <31.723825, 29.236254, 24.738693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658545, 29.666700, 25.358387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041264, 29.600437, 25.262810>,  <32.270897, 29.560678, 25.205463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041264, 29.600437, 25.262810>,  <31.658545, 29.666700, 25.358387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041264, 29.600437, 25.262810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160619, 0.986183, -0.040558,
		0.242362, 0.000427, 0.970186,
		0.956798, -0.165660, -0.238945,
		32.328304, 29.550739, 25.191126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901617, 30.355011, 25.652920>,  <31.658545, 29.666700, 25.358387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901617, 30.355011, 25.652920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192299, 30.196095, 25.428757>,  <32.366707, 30.100744, 25.294258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192299, 30.196095, 25.428757>,  <31.901617, 30.355011, 25.652920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192299, 30.196095, 25.428757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355973, 0.915509, -0.187423,
		0.587521, -0.063290, 0.806730,
		0.726706, -0.397289, -0.560410,
		32.410313, 30.076908, 25.260633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382717, 30.775414, 25.805080>,  <31.901617, 30.355011, 25.652920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382717, 30.775414, 25.805080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536251, 30.621197, 25.469456>,  <32.628372, 30.528666, 25.268082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536251, 30.621197, 25.469456>,  <32.382717, 30.775414, 25.805080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536251, 30.621197, 25.469456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163531, 0.922684, -0.349158,
		0.908805, -0.003193, 0.417210,
		0.383838, -0.385543, -0.839062,
		32.651402, 30.505533, 25.217737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046249, 31.172071, 25.577932>,  <32.382717, 30.775414, 25.805080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046249, 31.172071, 25.577932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920906, 30.976215, 25.252464>,  <32.845699, 30.858702, 25.057184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920906, 30.976215, 25.252464>,  <33.046249, 31.172071, 25.577932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920906, 30.976215, 25.252464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104819, 0.833755, -0.542095,
		0.943832, -0.255158, -0.209941,
		-0.313359, -0.489640, -0.813670,
		32.826897, 30.829323, 25.008364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656849, 31.280151, 25.156223>,  <33.046249, 31.172071, 25.577932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656849, 31.280151, 25.156223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305920, 31.204632, 24.979740>,  <33.095364, 31.159321, 24.873850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305920, 31.204632, 24.979740>,  <33.656849, 31.280151, 25.156223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305920, 31.204632, 24.979740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177692, 0.726225, -0.664095,
		0.445795, -0.661023, -0.603585,
		-0.877321, -0.188798, -0.441207,
		33.042725, 31.147993, 24.847378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842243, 31.337042, 24.373495>,  <33.656849, 31.280151, 25.156223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842243, 31.337042, 24.373495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452839, 31.388168, 24.449333>,  <33.219196, 31.418844, 24.494837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452839, 31.388168, 24.449333>,  <33.842243, 31.337042, 24.373495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452839, 31.388168, 24.449333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050411, 0.928745, -0.367277,
		-0.223032, -0.347989, -0.910583,
		-0.973507, 0.127818, 0.189597,
		33.160786, 31.426514, 24.506212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638535, 31.682953, 23.781839>,  <33.842243, 31.337042, 24.373495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638535, 31.682953, 23.781839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322136, 31.719166, 24.023872>,  <33.132298, 31.740894, 24.169092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322136, 31.719166, 24.023872>,  <33.638535, 31.682953, 23.781839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322136, 31.719166, 24.023872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058488, 0.973272, -0.222083,
		-0.609015, -0.211058, -0.764562,
		-0.791000, 0.090534, 0.605081,
		33.084835, 31.746326, 24.205397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099861, 32.021729, 23.325338>,  <33.638535, 31.682953, 23.781839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099861, 32.021729, 23.325338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972401, 32.102783, 23.695721>,  <32.895924, 32.151417, 23.917950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972401, 32.102783, 23.695721>,  <33.099861, 32.021729, 23.325338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972401, 32.102783, 23.695721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124139, 0.959546, -0.252709,
		-0.939707, -0.195474, -0.280607,
		-0.318653, 0.202638, 0.925958,
		32.876804, 32.163574, 23.973509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620472, 32.555473, 23.229164>,  <33.099861, 32.021729, 23.325338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620472, 32.555473, 23.229164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694824, 32.574913, 23.621712>,  <32.739433, 32.586578, 23.857241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694824, 32.574913, 23.621712>,  <32.620472, 32.555473, 23.229164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694824, 32.574913, 23.621712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138278, 0.990130, -0.022842,
		-0.972795, -0.131456, 0.190762,
		0.185877, 0.048599, 0.981371,
		32.750587, 32.589493, 23.916122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042919, 32.904819, 23.539406>,  <32.620472, 32.555473, 23.229164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042919, 32.904819, 23.539406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366718, 32.926807, 23.773224>,  <32.560997, 32.939999, 23.913515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366718, 32.926807, 23.773224>,  <32.042919, 32.904819, 23.539406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366718, 32.926807, 23.773224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090852, 0.995343, 0.032213,
		-0.580050, -0.079184, 0.810723,
		0.809498, 0.054970, 0.584543,
		32.609570, 32.943298, 23.948587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953753, 33.332981, 24.096983>,  <32.042919, 32.904819, 23.539406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953753, 33.332981, 24.096983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333538, 33.333397, 23.971436>,  <32.561409, 33.333645, 23.896107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333538, 33.333397, 23.971436>,  <31.953753, 33.332981, 24.096983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333538, 33.333397, 23.971436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006045, 0.999869, -0.014979,
		0.313814, 0.016120, 0.949348,
		0.949465, 0.001039, -0.313870,
		32.618378, 33.333710, 23.877274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744524, 32.733875, 24.617048>,  <31.953753, 33.332981, 24.096983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744524, 32.733875, 24.617048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407732, 32.943108, 24.564201>,  <31.205656, 33.068645, 24.532494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407732, 32.943108, 24.564201>,  <31.744524, 32.733875, 24.617048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407732, 32.943108, 24.564201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531819, -0.763511, 0.366359,
		0.090761, 0.378730, 0.921046,
		-0.841980, 0.523081, -0.132119,
		31.155138, 33.100033, 24.524565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335953, 32.712631, 25.174395>,  <31.744524, 32.733875, 24.617048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335953, 32.712631, 25.174395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065062, 32.788960, 24.890156>,  <30.902527, 32.834755, 24.719612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065062, 32.788960, 24.890156>,  <31.335953, 32.712631, 25.174395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065062, 32.788960, 24.890156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482687, -0.844134, 0.233346,
		-0.555313, 0.501025, 0.663779,
		-0.677230, 0.190817, -0.710597,
		30.861893, 32.846207, 24.676977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578838, 32.723911, 25.419449>,  <31.335953, 32.712631, 25.174395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578838, 32.723911, 25.419449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561331, 32.645016, 25.027699>,  <30.550827, 32.597679, 24.792648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561331, 32.645016, 25.027699>,  <30.578838, 32.723911, 25.419449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561331, 32.645016, 25.027699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494217, -0.847688, 0.192807,
		-0.868236, 0.492464, -0.060378,
		-0.043769, -0.197241, -0.979378,
		30.548201, 32.585842, 24.733885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913612, 32.421032, 25.308655>,  <30.578838, 32.723911, 25.419449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913612, 32.421032, 25.308655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101147, 32.304642, 24.975063>,  <30.213667, 32.234806, 24.774908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101147, 32.304642, 24.975063>,  <29.913612, 32.421032, 25.308655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101147, 32.304642, 24.975063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425294, -0.901893, 0.075588,
		-0.774155, 0.319248, -0.546594,
		0.468838, -0.290980, -0.833979,
		30.241798, 32.217346, 24.724869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417919, 32.102482, 24.966501>,  <29.913612, 32.421032, 25.308655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417919, 32.102482, 24.966501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761219, 31.945538, 24.834160>,  <29.967199, 31.851372, 24.754755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761219, 31.945538, 24.834160>,  <29.417919, 32.102482, 24.966501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761219, 31.945538, 24.834160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354773, -0.919371, 0.169982,
		-0.370871, -0.028509, -0.928247,
		0.858249, -0.392358, -0.330853,
		30.018694, 31.827829, 24.734903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239799, 31.471842, 24.551264>,  <29.417919, 32.102482, 24.966501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239799, 31.471842, 24.551264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629805, 31.448578, 24.637020>,  <29.863808, 31.434620, 24.688475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629805, 31.448578, 24.637020>,  <29.239799, 31.471842, 24.551264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629805, 31.448578, 24.637020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095209, -0.981391, 0.166753,
		0.200702, -0.182999, -0.962408,
		0.975015, -0.058162, 0.214391,
		29.922310, 31.431129, 24.701338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475336, 30.929125, 24.136175>,  <29.239799, 31.471842, 24.551264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475336, 30.929125, 24.136175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736181, 30.981537, 24.434860>,  <29.892689, 31.012983, 24.614071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736181, 30.981537, 24.434860>,  <29.475336, 30.929125, 24.136175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736181, 30.981537, 24.434860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212495, -0.913877, 0.345939,
		0.727731, -0.384264, -0.568109,
		0.652114, 0.131030, 0.746711,
		29.931816, 31.020845, 24.658875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938473, 30.224821, 24.170361>,  <29.475336, 30.929125, 24.136175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938473, 30.224821, 24.170361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975260, 30.423435, 24.515614>,  <29.997332, 30.542604, 24.722765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975260, 30.423435, 24.515614>,  <29.938473, 30.224821, 24.170361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975260, 30.423435, 24.515614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288025, -0.816486, 0.500391,
		0.953196, -0.294623, 0.067925,
		0.091967, 0.496535, 0.863131,
		30.002850, 30.572395, 24.774553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148409, 29.685253, 24.584272>,  <29.938473, 30.224821, 24.170361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148409, 29.685253, 24.584272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.073595, 29.971191, 24.853794>,  <30.028708, 30.142754, 25.015507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.073595, 29.971191, 24.853794>,  <30.148409, 29.685253, 24.584272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073595, 29.971191, 24.853794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110729, -0.696879, 0.708589,
		0.976093, 0.057920, 0.209494,
		-0.187033, 0.714846, 0.673806,
		30.017485, 30.185646, 25.055935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691233, 29.715046, 25.084673>,  <30.148409, 29.685253, 24.584272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691233, 29.715046, 25.084673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348352, 29.852310, 25.238266>,  <30.142624, 29.934669, 25.330421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348352, 29.852310, 25.238266>,  <30.691233, 29.715046, 25.084673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348352, 29.852310, 25.238266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031578, -0.779253, 0.625914,
		0.514011, 0.524410, 0.678814,
		-0.857202, 0.343162, 0.383984,
		30.091192, 29.955259, 25.353462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662729, 29.469347, 25.801968>,  <30.691233, 29.715046, 25.084673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662729, 29.469347, 25.801968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290091, 29.603851, 25.746746>,  <30.066507, 29.684553, 25.713614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290091, 29.603851, 25.746746>,  <30.662729, 29.469347, 25.801968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290091, 29.603851, 25.746746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358700, -0.788925, 0.498931,
		0.058857, 0.514321, 0.855576,
		-0.931595, 0.336261, -0.138053,
		30.010612, 29.704729, 25.705330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292944, 29.465487, 26.479898>,  <30.662729, 29.469347, 25.801968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292944, 29.465487, 26.479898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996199, 29.456013, 26.211845>,  <29.818151, 29.450329, 26.051014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996199, 29.456013, 26.211845>,  <30.292944, 29.465487, 26.479898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996199, 29.456013, 26.211845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317943, -0.867468, 0.382637,
		-0.590380, 0.496928, 0.636013,
		-0.741865, -0.023685, -0.670131,
		29.773640, 29.448908, 26.010805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711657, 29.323017, 26.823643>,  <30.292944, 29.465487, 26.479898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711657, 29.323017, 26.823643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616091, 29.220959, 26.448875>,  <29.558750, 29.159723, 26.224014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616091, 29.220959, 26.448875>,  <29.711657, 29.323017, 26.823643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616091, 29.220959, 26.448875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386045, -0.860378, 0.332744,
		-0.891004, 0.441192, 0.107059,
		-0.238916, -0.255147, -0.936920,
		29.544416, 29.144415, 26.167799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148478, 29.142162, 26.981873>,  <29.711657, 29.323017, 26.823643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148478, 29.142162, 26.981873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203831, 28.972576, 26.623856>,  <29.237043, 28.870825, 26.409044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203831, 28.972576, 26.623856>,  <29.148478, 29.142162, 26.981873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203831, 28.972576, 26.623856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286941, -0.882140, 0.373488,
		-0.947900, 0.205141, -0.243726,
		0.138382, -0.423965, -0.895044,
		29.245346, 28.845387, 26.355343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647749, 28.593193, 26.942392>,  <29.148478, 29.142162, 26.981873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647749, 28.593193, 26.942392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940445, 28.478657, 26.694984>,  <29.116062, 28.409935, 26.546539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940445, 28.478657, 26.694984>,  <28.647749, 28.593193, 26.942392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940445, 28.478657, 26.694984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091084, -0.940414, 0.327606,
		-0.675471, -0.183385, -0.714219,
		0.731739, -0.286342, -0.618519,
		29.159967, 28.392754, 26.509428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434021, 28.039425, 26.687395>,  <28.647749, 28.593193, 26.942392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434021, 28.039425, 26.687395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828894, 28.001575, 26.635983>,  <29.065817, 27.978867, 26.605135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828894, 28.001575, 26.635983>,  <28.434021, 28.039425, 26.687395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828894, 28.001575, 26.635983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046650, -0.941201, 0.334611,
		-0.152634, -0.324326, -0.933550,
		0.987181, -0.094623, -0.128530,
		29.125048, 27.973188, 26.597424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344391, 27.398449, 26.462286>,  <28.434021, 28.039425, 26.687395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344391, 27.398449, 26.462286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720057, 27.453506, 26.588158>,  <28.945456, 27.486540, 26.663681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720057, 27.453506, 26.588158>,  <28.344391, 27.398449, 26.462286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720057, 27.453506, 26.588158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026159, -0.942193, 0.334048,
		0.342467, -0.305494, -0.888476,
		0.939166, 0.137642, 0.314678,
		29.001806, 27.494799, 26.682562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717857, 26.822090, 26.290476>,  <28.344391, 27.398449, 26.462286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717857, 26.822090, 26.290476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.951715, 26.969097, 26.579784>,  <29.092030, 27.057301, 26.753368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.951715, 26.969097, 26.579784>,  <28.717857, 26.822090, 26.290476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951715, 26.969097, 26.579784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027171, -0.899878, 0.435294,
		0.810834, -0.234841, -0.536096,
		0.584646, 0.367518, 0.723270,
		29.127110, 27.079353, 26.796766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352255, 26.454031, 26.234650>,  <28.717857, 26.822090, 26.290476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352255, 26.454031, 26.234650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317417, 26.611801, 26.600567>,  <29.296515, 26.706463, 26.820116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317417, 26.611801, 26.600567>,  <29.352255, 26.454031, 26.234650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317417, 26.611801, 26.600567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221475, -0.887633, 0.403803,
		0.971269, 0.237771, -0.010050,
		-0.087092, 0.394427, 0.914791,
		29.291290, 26.730129, 26.875004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844088, 26.169394, 26.484304>,  <29.352255, 26.454031, 26.234650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844088, 26.169394, 26.484304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613981, 26.284595, 26.790539>,  <29.475918, 26.353716, 26.974279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613981, 26.284595, 26.790539>,  <29.844088, 26.169394, 26.484304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613981, 26.284595, 26.790539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101629, -0.903545, 0.416267,
		0.811628, 0.317270, 0.490510,
		-0.575266, 0.288004, 0.765586,
		29.441401, 26.370996, 27.020214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208584, 26.040941, 27.050112>,  <29.844088, 26.169394, 26.484304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208584, 26.040941, 27.050112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822477, 26.057980, 27.153221>,  <29.590813, 26.068203, 27.215086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822477, 26.057980, 27.153221>,  <30.208584, 26.040941, 27.050112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822477, 26.057980, 27.153221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051265, -0.936564, 0.346728,
		0.256189, 0.347899, 0.901850,
		-0.965266, 0.042595, 0.257772,
		29.532898, 26.070759, 27.230553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269182, 25.697344, 27.734711>,  <30.208584, 26.040941, 27.050112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269182, 25.697344, 27.734711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893045, 25.699188, 27.598633>,  <29.667362, 25.700294, 27.516985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893045, 25.699188, 27.598633>,  <30.269182, 25.697344, 27.734711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893045, 25.699188, 27.598633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112529, -0.947847, 0.298201,
		-0.321079, 0.318694, 0.891820,
		-0.940343, 0.004610, -0.340196,
		29.610943, 25.700571, 27.496574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913301, 25.433767, 28.292530>,  <30.269182, 25.697344, 27.734711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913301, 25.433767, 28.292530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692345, 25.381191, 27.963268>,  <29.559771, 25.349646, 27.765711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692345, 25.381191, 27.963268>,  <29.913301, 25.433767, 28.292530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692345, 25.381191, 27.963268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170997, -0.948622, 0.266227,
		-0.815857, 0.287819, 0.501535,
		-0.552392, -0.131442, -0.823156,
		29.526627, 25.341759, 27.716322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473745, 25.022690, 28.544283>,  <29.913301, 25.433767, 28.292530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473745, 25.022690, 28.544283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428965, 24.976437, 28.149498>,  <29.402096, 24.948685, 27.912626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428965, 24.976437, 28.149498>,  <29.473745, 25.022690, 28.544283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428965, 24.976437, 28.149498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020542, -0.992725, 0.118636,
		-0.993501, 0.033555, 0.108762,
		-0.111952, -0.115631, -0.986963,
		29.395378, 24.941748, 27.853409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842688, 24.593639, 28.448753>,  <29.473745, 25.022690, 28.544283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842688, 24.593639, 28.448753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086498, 24.578281, 28.132019>,  <29.232784, 24.569067, 27.941978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086498, 24.578281, 28.132019>,  <28.842688, 24.593639, 28.448753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086498, 24.578281, 28.132019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039028, -0.996162, 0.078343,
		-0.791806, -0.078656, -0.605687,
		0.609525, -0.038394, -0.791837,
		29.269356, 24.566763, 27.894468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476637, 24.106756, 28.014841>,  <28.842688, 24.593639, 28.448753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476637, 24.106756, 28.014841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.840971, 24.145542, 27.854355>,  <29.059572, 24.168814, 27.758062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.840971, 24.145542, 27.854355>,  <28.476637, 24.106756, 28.014841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840971, 24.145542, 27.854355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063165, -0.927822, -0.367636,
		-0.407906, 0.360199, -0.838969,
		0.910836, 0.096967, -0.401217,
		29.114222, 24.174633, 27.733990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465801, 23.763130, 27.335258>,  <28.476637, 24.106756, 28.014841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465801, 23.763130, 27.335258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845591, 23.782688, 27.459263>,  <29.073465, 23.794422, 27.533667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845591, 23.782688, 27.459263>,  <28.465801, 23.763130, 27.335258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845591, 23.782688, 27.459263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098016, -0.984579, -0.144905,
		0.298146, 0.167970, -0.939625,
		0.949475, 0.048896, 0.310013,
		29.130432, 23.797358, 27.552267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806963, 23.391766, 26.855030>,  <28.465801, 23.763130, 27.335258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806963, 23.391766, 26.855030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021013, 23.384384, 27.192860>,  <29.149443, 23.379955, 27.395557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021013, 23.384384, 27.192860>,  <28.806963, 23.391766, 26.855030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021013, 23.384384, 27.192860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112938, -0.989224, -0.093172,
		0.837190, 0.145243, -0.527273,
		0.535124, -0.018453, 0.844572,
		29.181551, 23.378849, 27.446232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381668, 23.055475, 26.695372>,  <28.806963, 23.391766, 26.855030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381668, 23.055475, 26.695372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363398, 23.008724, 27.092209>,  <29.352436, 22.980673, 27.330311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363398, 23.008724, 27.092209>,  <29.381668, 23.055475, 26.695372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363398, 23.008724, 27.092209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272675, -0.956877, -0.100177,
		0.961021, 0.265944, 0.075575,
		-0.045675, -0.116880, 0.992095,
		29.349695, 22.973660, 27.389837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867870, 22.542770, 26.790024>,  <29.381668, 23.055475, 26.695372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867870, 22.542770, 26.790024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645771, 22.537167, 27.122650>,  <29.512512, 22.533804, 27.322226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645771, 22.537167, 27.122650>,  <29.867870, 22.542770, 26.790024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645771, 22.537167, 27.122650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072065, -0.995287, -0.064885,
		0.828557, -0.095954, 0.551621,
		-0.555247, -0.014008, 0.831567,
		29.479197, 22.532965, 27.372120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063017, 21.941031, 27.204535>,  <29.867870, 22.542770, 26.790024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063017, 21.941031, 27.204535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700588, 22.024189, 27.351948>,  <29.483131, 22.074083, 27.440395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700588, 22.024189, 27.351948>,  <30.063017, 21.941031, 27.204535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700588, 22.024189, 27.351948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185772, -0.977993, 0.094962,
		0.380167, 0.017579, 0.924751,
		-0.906069, 0.207894, 0.368535,
		29.428768, 22.086557, 27.462509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987295, 21.419674, 27.772062>,  <30.063017, 21.941031, 27.204535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987295, 21.419674, 27.772062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612387, 21.549740, 27.721802>,  <29.387442, 21.627779, 27.691645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612387, 21.549740, 27.721802>,  <29.987295, 21.419674, 27.772062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612387, 21.549740, 27.721802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330011, -0.943780, 0.019291,
		-0.112314, 0.059547, 0.991887,
		-0.937272, 0.325167, -0.125651,
		29.331205, 21.647289, 27.684107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611488, 21.314743, 28.357126>,  <29.987295, 21.419674, 27.772062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611488, 21.314743, 28.357126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332315, 21.332390, 28.071205>,  <29.164812, 21.342978, 27.899652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332315, 21.332390, 28.071205>,  <29.611488, 21.314743, 28.357126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332315, 21.332390, 28.071205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309920, -0.918407, 0.245925,
		-0.645630, 0.393171, 0.654659,
		-0.697934, 0.044115, -0.714802,
		29.122936, 21.345625, 27.856764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958412, 21.087835, 28.701403>,  <29.611488, 21.314743, 28.357126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958412, 21.087835, 28.701403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912756, 21.049973, 28.305824>,  <28.885363, 21.027254, 28.068478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912756, 21.049973, 28.305824>,  <28.958412, 21.087835, 28.701403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912756, 21.049973, 28.305824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334187, -0.933782, 0.127950,
		-0.935570, 0.345096, 0.074951,
		-0.114143, -0.094658, -0.988944,
		28.878513, 21.021576, 28.009140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289682, 20.710661, 28.595753>,  <28.958412, 21.087835, 28.701403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289682, 20.710661, 28.595753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454540, 20.655704, 28.235474>,  <28.553455, 20.622730, 28.019306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454540, 20.655704, 28.235474>,  <28.289682, 20.710661, 28.595753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454540, 20.655704, 28.235474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414913, -0.908414, -0.051292,
		-0.811161, 0.394852, -0.431404,
		0.412146, -0.137389, -0.900700,
		28.578184, 20.614489, 27.965263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810781, 20.254913, 28.353439>,  <28.289682, 20.710661, 28.595753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810781, 20.254913, 28.353439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117176, 20.230255, 28.097481>,  <28.301012, 20.215460, 27.943907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117176, 20.230255, 28.097481>,  <27.810781, 20.254913, 28.353439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117176, 20.230255, 28.097481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216452, -0.962003, -0.166427,
		-0.605321, 0.265988, -0.750225,
		0.765986, -0.061646, -0.639894,
		28.346972, 20.211761, 27.905512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514801, 19.978184, 27.680300>,  <27.810781, 20.254913, 28.353439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514801, 19.978184, 27.680300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906965, 19.903389, 27.705059>,  <28.142263, 19.858513, 27.719915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906965, 19.903389, 27.705059>,  <27.514801, 19.978184, 27.680300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906965, 19.903389, 27.705059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185757, -0.982275, -0.025090,
		0.065495, 0.013100, -0.997767,
		0.980410, -0.186986, 0.061900,
		28.201088, 19.847294, 27.723629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507904, 19.382959, 27.283632>,  <27.514801, 19.978184, 27.680300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507904, 19.382959, 27.283632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839420, 19.412670, 27.505474>,  <28.038330, 19.430496, 27.638578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839420, 19.412670, 27.505474>,  <27.507904, 19.382959, 27.283632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839420, 19.412670, 27.505474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071931, -0.997070, 0.026042,
		0.554913, 0.018310, -0.831707,
		0.828793, 0.074277, 0.554604,
		28.088058, 19.434954, 27.671856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515305, 19.053286, 26.648836>,  <27.507904, 19.382959, 27.283632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515305, 19.053286, 26.648836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527370, 19.009365, 26.251438>,  <27.534611, 18.983013, 26.012999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527370, 19.009365, 26.251438>,  <27.515305, 19.053286, 26.648836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527370, 19.009365, 26.251438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250398, 0.963084, -0.098840,
		0.967673, -0.245788, 0.056546,
		0.030165, -0.109804, -0.993495,
		27.536419, 18.976423, 25.953390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078127, 19.457577, 26.395876>,  <27.515305, 19.053286, 26.648836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078127, 19.457577, 26.395876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827450, 19.432861, 26.085152>,  <27.677044, 19.418032, 25.898716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827450, 19.432861, 26.085152>,  <28.078127, 19.457577, 26.395876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827450, 19.432861, 26.085152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123808, 0.976295, -0.177536,
		0.769368, -0.207436, -0.604189,
		-0.626694, -0.061787, -0.776812,
		27.639442, 19.414326, 25.852108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406124, 19.830925, 25.905609>,  <28.078127, 19.457577, 26.395876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406124, 19.830925, 25.905609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026804, 19.821003, 25.779049>,  <27.799212, 19.815050, 25.703114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026804, 19.821003, 25.779049>,  <28.406124, 19.830925, 25.905609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026804, 19.821003, 25.779049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006774, 0.995132, -0.098314,
		0.317298, -0.095374, -0.943517,
		-0.948301, -0.024804, -0.316400,
		27.742313, 19.813562, 25.684130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366087, 20.271122, 25.306274>,  <28.406124, 19.830925, 25.905609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366087, 20.271122, 25.306274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979099, 20.255089, 25.406189>,  <27.746906, 20.245468, 25.466137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979099, 20.255089, 25.406189>,  <28.366087, 20.271122, 25.306274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979099, 20.255089, 25.406189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081071, 0.984420, -0.156030,
		-0.239639, -0.171205, -0.955647,
		-0.967471, -0.040085, 0.249785,
		27.688858, 20.243063, 25.481125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960365, 20.596338, 24.733931>,  <28.366087, 20.271122, 25.306274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960365, 20.596338, 24.733931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732037, 20.603958, 25.062271>,  <27.595039, 20.608530, 25.259275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732037, 20.603958, 25.062271>,  <27.960365, 20.596338, 24.733931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732037, 20.603958, 25.062271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218714, 0.960082, -0.174372,
		-0.791408, -0.279068, -0.543870,
		-0.570822, 0.019048, 0.820853,
		27.560791, 20.609673, 25.308527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386826, 21.058868, 24.573048>,  <27.960365, 20.596338, 24.733931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386826, 21.058868, 24.573048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359720, 21.025391, 24.970722>,  <27.343456, 21.005304, 25.209326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359720, 21.025391, 24.970722>,  <27.386826, 21.058868, 24.573048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359720, 21.025391, 24.970722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292577, 0.954333, 0.060399,
		-0.953838, -0.286782, -0.089157,
		-0.067764, -0.083696, 0.994184,
		27.339392, 21.000282, 25.268978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.828939, 21.526161, 24.775707>,  <27.386826, 21.058868, 24.573048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.828939, 21.526161, 24.775707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033134, 21.469624, 25.114983>,  <27.155651, 21.435701, 25.318548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033134, 21.469624, 25.114983>,  <26.828939, 21.526161, 24.775707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033134, 21.469624, 25.114983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067589, 0.976750, 0.203449,
		-0.857224, -0.161186, 0.489066,
		0.510488, -0.141346, 0.848188,
		27.186281, 21.427219, 25.369438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448769, 21.918242, 25.259598>,  <26.828939, 21.526161, 24.775707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448769, 21.918242, 25.259598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828238, 21.879318, 25.379967>,  <27.055918, 21.855965, 25.452188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828238, 21.879318, 25.379967>,  <26.448769, 21.918242, 25.259598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.828238, 21.879318, 25.379967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003500, 0.954662, 0.297671,
		-0.316244, -0.281338, 0.906001,
		0.948671, -0.097308, 0.300922,
		27.112839, 21.850126, 25.470243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511934, 22.348328, 25.858685>,  <26.448769, 21.918242, 25.259598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511934, 22.348328, 25.858685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903669, 22.281803, 25.812660>,  <27.138710, 22.241888, 25.785046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903669, 22.281803, 25.812660>,  <26.511934, 22.348328, 25.858685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903669, 22.281803, 25.812660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185260, 0.965939, 0.180668,
		0.081094, -0.198251, 0.976791,
		0.979338, -0.166309, -0.115060,
		27.197472, 22.231911, 25.778143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785002, 22.886206, 26.295765>,  <26.511934, 22.348328, 25.858685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785002, 22.886206, 26.295765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.071596, 22.768692, 26.042675>,  <27.243553, 22.698185, 25.890821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.071596, 22.768692, 26.042675>,  <26.785002, 22.886206, 26.295765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071596, 22.768692, 26.042675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325264, 0.943062, -0.069553,
		0.617132, -0.155969, 0.771247,
		0.716485, -0.293782, -0.632725,
		27.286541, 22.680557, 25.852858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337692, 23.263830, 26.486397>,  <26.785002, 22.886206, 26.295765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337692, 23.263830, 26.486397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430279, 23.138115, 26.118126>,  <27.485830, 23.062687, 25.897163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430279, 23.138115, 26.118126>,  <27.337692, 23.263830, 26.486397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430279, 23.138115, 26.118126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531728, 0.833381, -0.150806,
		0.814671, -0.454644, 0.360013,
		0.231465, -0.314286, -0.920678,
		27.499718, 23.043829, 25.841923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075575, 23.314209, 26.351658>,  <27.337692, 23.263830, 26.486397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075575, 23.314209, 26.351658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896229, 23.313629, 25.994118>,  <27.788622, 23.313280, 25.779594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896229, 23.313629, 25.994118>,  <28.075575, 23.314209, 26.351658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896229, 23.313629, 25.994118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512838, 0.818619, -0.258574,
		0.732098, -0.574336, -0.366295,
		-0.448364, -0.001451, -0.893850,
		27.761719, 23.313194, 25.725964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619602, 23.325054, 25.784979>,  <28.075575, 23.314209, 26.351658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619602, 23.325054, 25.784979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289516, 23.478325, 25.618996>,  <28.091465, 23.570288, 25.519405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289516, 23.478325, 25.618996>,  <28.619602, 23.325054, 25.784979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.289516, 23.478325, 25.618996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516372, 0.809509, -0.279382,
		0.228861, -0.444824, -0.865883,
		-0.825217, 0.383178, -0.414960,
		28.041952, 23.593279, 25.494507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905207, 23.496141, 25.171288>,  <28.619602, 23.325054, 25.784979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905207, 23.496141, 25.171288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568529, 23.709038, 25.207657>,  <28.366522, 23.836777, 25.229479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568529, 23.709038, 25.207657>,  <28.905207, 23.496141, 25.171288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568529, 23.709038, 25.207657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515523, 0.842215, -0.157829,
		-0.160580, -0.085971, -0.983272,
		-0.841695, 0.532243, 0.090923,
		28.316021, 23.868711, 25.234934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744383, 23.995699, 24.470844>,  <28.905207, 23.496141, 25.171288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744383, 23.995699, 24.470844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566921, 24.148140, 24.795296>,  <28.460443, 24.239605, 24.989967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566921, 24.148140, 24.795296>,  <28.744383, 23.995699, 24.470844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566921, 24.148140, 24.795296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226800, 0.923362, -0.309781,
		-0.867025, 0.046529, -0.496088,
		-0.443655, 0.381101, 0.811130,
		28.433825, 24.262470, 25.038635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252258, 24.518026, 24.158352>,  <28.744383, 23.995699, 24.470844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252258, 24.518026, 24.158352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282997, 24.605324, 24.547497>,  <28.301441, 24.657701, 24.780985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282997, 24.605324, 24.547497>,  <28.252258, 24.518026, 24.158352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282997, 24.605324, 24.547497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111122, 0.967796, -0.225882,
		-0.990831, 0.125466, 0.050122,
		0.076848, 0.218242, 0.972864,
		28.306051, 24.670795, 24.839355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688982, 24.977865, 24.358589>,  <28.252258, 24.518026, 24.158352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688982, 24.977865, 24.358589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982628, 25.013832, 24.627808>,  <28.158815, 25.035412, 24.789339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982628, 25.013832, 24.627808>,  <27.688982, 24.977865, 24.358589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982628, 25.013832, 24.627808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043358, 0.982963, -0.178614,
		-0.677641, 0.160305, 0.717708,
		0.734114, 0.089918, 0.673047,
		28.202862, 25.040808, 24.829721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500217, 25.631397, 24.760113>,  <27.688982, 24.977865, 24.358589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500217, 25.631397, 24.760113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890091, 25.552708, 24.802624>,  <28.124014, 25.505493, 24.828131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890091, 25.552708, 24.802624>,  <27.500217, 25.631397, 24.760113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890091, 25.552708, 24.802624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220715, 0.922563, -0.316485,
		-0.035786, 0.331929, 0.942626,
		0.974682, -0.196726, 0.106277,
		28.182495, 25.493690, 24.834507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688833, 26.288887, 25.029505>,  <27.500217, 25.631397, 24.760113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688833, 26.288887, 25.029505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033571, 26.107197, 24.939259>,  <28.240414, 25.998182, 24.885111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033571, 26.107197, 24.939259>,  <27.688833, 26.288887, 25.029505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033571, 26.107197, 24.939259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361282, 0.862051, -0.355448,
		0.355944, 0.224831, 0.907058,
		0.861847, -0.454223, -0.225615,
		28.292126, 25.970930, 24.871574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264963, 26.771839, 25.223896>,  <27.688833, 26.288887, 25.029505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264963, 26.771839, 25.223896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410009, 26.513733, 24.954929>,  <28.497038, 26.358870, 24.793549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.410009, 26.513733, 24.954929>,  <28.264963, 26.771839, 25.223896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410009, 26.513733, 24.954929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395378, 0.759890, -0.515988,
		0.843910, -0.078752, 0.530673,
		0.362618, -0.645263, -0.672416,
		28.518795, 26.320154, 24.753204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892414, 26.921251, 25.248520>,  <28.264963, 26.771839, 25.223896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892414, 26.921251, 25.248520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845034, 26.749233, 24.890518>,  <28.816605, 26.646023, 24.675718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845034, 26.749233, 24.890518>,  <28.892414, 26.921251, 25.248520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845034, 26.749233, 24.890518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382130, 0.812187, -0.440828,
		0.916486, -0.394224, 0.068128,
		-0.118452, -0.430046, -0.895003,
		28.809498, 26.620220, 24.622017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548210, 27.031239, 24.844442>,  <28.892414, 26.921251, 25.248520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548210, 27.031239, 24.844442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249422, 26.961163, 24.587898>,  <29.070150, 26.919117, 24.433971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249422, 26.961163, 24.587898>,  <29.548210, 27.031239, 24.844442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249422, 26.961163, 24.587898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065045, 0.940775, -0.332732,
		0.661669, -0.290258, -0.691335,
		-0.746969, -0.175191, -0.641362,
		29.025331, 26.908606, 24.395489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744522, 27.318272, 24.218382>,  <29.548210, 27.031239, 24.844442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744522, 27.318272, 24.218382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350172, 27.279251, 24.163921>,  <29.113562, 27.255838, 24.131245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350172, 27.279251, 24.163921>,  <29.744522, 27.318272, 24.218382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350172, 27.279251, 24.163921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037087, 0.919849, -0.390514,
		0.163336, -0.379948, -0.910473,
		-0.985873, -0.097552, -0.136153,
		29.054411, 27.249985, 24.123075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607563, 27.731712, 23.567833>,  <29.744522, 27.318272, 24.218382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607563, 27.731712, 23.567833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252014, 27.660809, 23.736824>,  <29.038685, 27.618265, 23.838219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252014, 27.660809, 23.736824>,  <29.607563, 27.731712, 23.567833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252014, 27.660809, 23.736824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327705, 0.890409, -0.315881,
		-0.320186, -0.419226, -0.849547,
		-0.888870, -0.177260, 0.422480,
		28.985353, 27.607630, 23.863567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156670, 27.801903, 23.033741>,  <29.607563, 27.731712, 23.567833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156670, 27.801903, 23.033741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978699, 27.883263, 23.382607>,  <28.871916, 27.932077, 23.591927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978699, 27.883263, 23.382607>,  <29.156670, 27.801903, 23.033741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978699, 27.883263, 23.382607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444352, 0.795400, -0.412178,
		-0.777555, -0.570937, -0.263514,
		-0.444926, 0.203398, 0.872164,
		28.845221, 27.944283, 23.644257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581980, 28.092167, 22.831488>,  <29.156670, 27.801903, 23.033741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581980, 28.092167, 22.831488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545458, 28.207115, 23.212872>,  <28.523544, 28.276083, 23.441702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545458, 28.207115, 23.212872>,  <28.581980, 28.092167, 22.831488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545458, 28.207115, 23.212872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419879, 0.857078, -0.298527,
		-0.902976, -0.427594, 0.042406,
		-0.091303, 0.287368, 0.953458,
		28.518066, 28.293325, 23.498909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907377, 28.178869, 23.036301>,  <28.581980, 28.092167, 22.831488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907377, 28.178869, 23.036301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134108, 28.410374, 23.270821>,  <28.270145, 28.549276, 23.411531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134108, 28.410374, 23.270821>,  <27.907377, 28.178869, 23.036301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134108, 28.410374, 23.270821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472125, 0.811414, -0.344537,
		-0.675135, -0.081514, 0.733177,
		0.566825, 0.578760, 0.586299,
		28.304155, 28.584002, 23.446711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472689, 28.589649, 23.566679>,  <27.907377, 28.178869, 23.036301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472689, 28.589649, 23.566679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812841, 28.798485, 23.540539>,  <28.016933, 28.923786, 23.524855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812841, 28.798485, 23.540539>,  <27.472689, 28.589649, 23.566679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812841, 28.798485, 23.540539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526160, 0.844222, -0.102200,
		0.001812, 0.121294, 0.992615,
		0.850383, 0.522089, -0.065349,
		28.067957, 28.955112, 23.520933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328421, 29.272036, 23.888222>,  <27.472689, 28.589649, 23.566679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328421, 29.272036, 23.888222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660074, 29.353828, 23.680096>,  <27.859066, 29.402905, 23.555220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660074, 29.353828, 23.680096>,  <27.328421, 29.272036, 23.888222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660074, 29.353828, 23.680096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436085, 0.818930, -0.373072,
		0.349813, 0.536227, 0.768174,
		0.829133, 0.204484, -0.520313,
		27.908813, 29.415174, 23.524002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366911, 29.899601, 23.962849>,  <27.328421, 29.272036, 23.888222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366911, 29.899601, 23.962849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603886, 29.854458, 23.643780>,  <27.746071, 29.827372, 23.452339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603886, 29.854458, 23.643780>,  <27.366911, 29.899601, 23.962849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603886, 29.854458, 23.643780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309501, 0.882269, -0.354699,
		0.743792, 0.457017, 0.487759,
		0.592438, -0.112860, -0.797671,
		27.781616, 29.820601, 23.404478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625366, 30.535408, 23.880587>,  <27.366911, 29.899601, 23.962849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625366, 30.535408, 23.880587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687725, 30.343548, 23.535187>,  <27.725140, 30.228432, 23.327948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687725, 30.343548, 23.535187>,  <27.625366, 30.535408, 23.880587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687725, 30.343548, 23.535187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227581, 0.833227, -0.503923,
		0.961199, 0.275076, 0.020738,
		0.155897, -0.479651, -0.863499,
		27.734493, 30.199652, 23.276136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102116, 30.993311, 23.363571>,  <27.625366, 30.535408, 23.880587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102116, 30.993311, 23.363571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916693, 30.731735, 23.124413>,  <27.805439, 30.574789, 22.980917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916693, 30.731735, 23.124413>,  <28.102116, 30.993311, 23.363571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916693, 30.731735, 23.124413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146236, 0.721983, -0.676281,
		0.873917, -0.226060, -0.430309,
		-0.463556, -0.653940, -0.597896,
		27.777626, 30.535553, 22.945044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255741, 31.114201, 22.507347>,  <28.102116, 30.993311, 23.363571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255741, 31.114201, 22.507347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919968, 30.904133, 22.563274>,  <27.718504, 30.778091, 22.596830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919968, 30.904133, 22.563274>,  <28.255741, 31.114201, 22.507347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919968, 30.904133, 22.563274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430172, 0.484854, -0.761491,
		0.332120, -0.699367, -0.632916,
		-0.839434, -0.525169, 0.139818,
		27.668139, 30.746582, 22.605219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167543, 30.848942, 21.872469>,  <28.255741, 31.114201, 22.507347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167543, 30.848942, 21.872469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807186, 30.848068, 22.046082>,  <27.590971, 30.847544, 22.150249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807186, 30.848068, 22.046082>,  <28.167543, 30.848942, 21.872469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807186, 30.848068, 22.046082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387707, 0.453587, -0.802460,
		-0.195121, -0.891209, -0.409480,
		-0.900895, -0.002181, 0.434032,
		27.536917, 30.847414, 22.176291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763916, 30.721275, 21.382360>,  <28.167543, 30.848942, 21.872469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763916, 30.721275, 21.382360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498655, 30.869366, 21.642563>,  <27.339499, 30.958220, 21.798685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498655, 30.869366, 21.642563>,  <27.763916, 30.721275, 21.382360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498655, 30.869366, 21.642563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525892, 0.387961, -0.756917,
		-0.532602, -0.844049, -0.062579,
		-0.663153, 0.370226, 0.650508,
		27.299709, 30.980433, 21.837715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163227, 30.716299, 21.076189>,  <27.763916, 30.721275, 21.382360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163227, 30.716299, 21.076189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067812, 30.962082, 21.376999>,  <27.010563, 31.109552, 21.557486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067812, 30.962082, 21.376999>,  <27.163227, 30.716299, 21.076189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067812, 30.962082, 21.376999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748198, 0.377398, -0.545683,
		-0.619112, -0.692830, 0.369712,
		-0.238537, 0.614457, 0.752026,
		26.996250, 31.146420, 21.602606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.443520, 30.675936, 21.103193>,  <27.163227, 30.716299, 21.076189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.443520, 30.675936, 21.103193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512711, 31.007504, 21.315975>,  <26.554226, 31.206444, 21.443644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512711, 31.007504, 21.315975>,  <26.443520, 30.675936, 21.103193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512711, 31.007504, 21.315975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736581, 0.467420, -0.488842,
		-0.653855, -0.307267, 0.691418,
		0.172978, 0.828918, 0.531953,
		26.564604, 31.256180, 21.475561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840782, 31.006290, 21.364506>,  <26.443520, 30.675936, 21.103193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.840782, 31.006290, 21.364506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113062, 31.297131, 21.328789>,  <26.276430, 31.471636, 21.307360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113062, 31.297131, 21.328789>,  <25.840782, 31.006290, 21.364506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113062, 31.297131, 21.328789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651564, 0.545208, -0.527458,
		-0.334834, 0.417218, 0.844876,
		0.680698, 0.727102, -0.089291,
		26.317272, 31.515261, 21.302002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.313358, 31.493122, 21.285757>,  <25.840782, 31.006290, 21.364506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.313358, 31.493122, 21.285757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667303, 31.665287, 21.214466>,  <25.879669, 31.768585, 21.171692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667303, 31.665287, 21.214466>,  <25.313358, 31.493122, 21.285757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667303, 31.665287, 21.214466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459276, 0.741930, -0.488472,
		-0.078011, 0.514087, 0.854183,
		0.884861, 0.430412, -0.178229,
		25.932762, 31.794411, 21.160997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.117073, 32.085163, 21.372879>,  <25.313358, 31.493122, 21.285757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.117073, 32.085163, 21.372879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467278, 32.114185, 21.181793>,  <25.677401, 32.131599, 21.067141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467278, 32.114185, 21.181793>,  <25.117073, 32.085163, 21.372879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467278, 32.114185, 21.181793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316068, 0.833808, -0.452621,
		0.365483, 0.547266, 0.752942,
		0.875513, 0.072555, -0.477716,
		25.729931, 32.135952, 21.038479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329464, 32.698345, 21.524891>,  <25.117073, 32.085163, 21.372879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.329464, 32.698345, 21.524891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469358, 32.560066, 21.176598>,  <25.553295, 32.477097, 20.967621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469358, 32.560066, 21.176598>,  <25.329464, 32.698345, 21.524891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469358, 32.560066, 21.176598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244629, 0.863485, -0.441079,
		0.904346, 0.367267, 0.217423,
		0.349735, -0.345700, -0.870733,
		25.574280, 32.456356, 20.915377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.671837, 32.813511, 21.960548>,  <25.329464, 32.698345, 21.524891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.671837, 32.813511, 21.960548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381901, 33.086975, 21.994522>,  <24.207939, 33.251053, 22.014906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381901, 33.086975, 21.994522>,  <24.671837, 32.813511, 21.960548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.381901, 33.086975, 21.994522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362623, 0.483446, -0.796733,
		-0.585755, -0.546707, -0.598333,
		-0.724841, 0.683660, 0.084933,
		24.164448, 33.292072, 22.020002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.232441, 32.808109, 21.334686>,  <24.671837, 32.813511, 21.960548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.232441, 32.808109, 21.334686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.238434, 33.167789, 21.509598>,  <24.242029, 33.383598, 21.614544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.238434, 33.167789, 21.509598>,  <24.232441, 32.808109, 21.334686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.238434, 33.167789, 21.509598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198103, 0.425990, -0.882773,
		-0.980067, 0.099851, -0.171753,
		0.014981, 0.899201, 0.437279,
		24.242928, 33.437550, 21.640781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.850586, 33.092434, 20.850096>,  <24.232441, 32.808109, 21.334686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.850586, 33.092434, 20.850096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.051998, 33.363232, 21.064808>,  <24.172846, 33.525711, 21.193636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.051998, 33.363232, 21.064808>,  <23.850586, 33.092434, 20.850096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.051998, 33.363232, 21.064808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221074, 0.499648, -0.837543,
		-0.835214, 0.540398, 0.101922,
		0.503531, 0.676995, 0.536781,
		24.203058, 33.566330, 21.225842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.487823, 33.826603, 20.670134>,  <23.850586, 33.092434, 20.850096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.487823, 33.826603, 20.670134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.302938, 34.161129, 20.552189>,  <23.192007, 34.361843, 20.481422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.302938, 34.161129, 20.552189>,  <23.487823, 33.826603, 20.670134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.302938, 34.161129, 20.552189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315533, -0.465860, -0.826688,
		-0.828733, -0.289066, 0.479209,
		-0.462212, 0.836311, -0.294864,
		23.164274, 34.412022, 20.463730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.652119, 33.829456, 20.722355>,  <23.487823, 33.826603, 20.670134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.652119, 33.829456, 20.722355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.800447, 34.069901, 20.439186>,  <22.889444, 34.214169, 20.269285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.800447, 34.069901, 20.439186>,  <22.652119, 33.829456, 20.722355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.800447, 34.069901, 20.439186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346013, -0.617960, -0.705975,
		-0.861839, 0.506741, -0.021160,
		0.370823, 0.601115, -0.707921,
		22.911694, 34.250237, 20.226810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.210573, 33.848534, 20.107336>,  <22.652119, 33.829456, 20.722355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.210573, 33.848534, 20.107336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.509817, 33.981239, 19.877460>,  <22.689363, 34.060863, 19.739534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.509817, 33.981239, 19.877460>,  <22.210573, 33.848534, 20.107336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.509817, 33.981239, 19.877460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257166, -0.653416, -0.711978,
		-0.611718, 0.680427, -0.403509,
		0.748108, 0.331761, -0.574690,
		22.734249, 34.080769, 19.705053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.977152, 34.247116, 19.513021>,  <22.210573, 33.848534, 20.107336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.977152, 34.247116, 19.513021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.731823, 34.455742, 19.750275>,  <21.584625, 34.580917, 19.892628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.731823, 34.455742, 19.750275>,  <21.977152, 34.247116, 19.513021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.731823, 34.455742, 19.750275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134414, 0.671085, -0.729094,
		-0.778310, -0.526896, -0.341487,
		-0.613324, 0.521561, 0.593135,
		21.547827, 34.612209, 19.928215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.436909, 34.347916, 19.141285>,  <21.977152, 34.247116, 19.513021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.436909, 34.347916, 19.141285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.444788, 34.638306, 19.416260>,  <21.449514, 34.812542, 19.581245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.444788, 34.638306, 19.416260>,  <21.436909, 34.347916, 19.141285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.444788, 34.638306, 19.416260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077131, 0.686625, -0.722909,
		-0.996826, -0.038784, 0.069519,
		0.019696, 0.725977, 0.687437,
		21.450697, 34.856098, 19.622490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.863953, 34.776752, 19.038067>,  <21.436909, 34.347916, 19.141285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.863953, 34.776752, 19.038067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.156488, 34.978989, 19.221161>,  <21.332010, 35.100330, 19.331018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.156488, 34.978989, 19.221161>,  <20.863953, 34.776752, 19.038067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.156488, 34.978989, 19.221161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017284, 0.684678, -0.728641,
		-0.681795, 0.524972, 0.509471,
		0.731339, 0.505589, 0.457736,
		21.375891, 35.130665, 19.358482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.471350, 35.400837, 19.119164>,  <20.863953, 34.776752, 19.038067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.471350, 35.400837, 19.119164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.865595, 35.465809, 19.137871>,  <21.102142, 35.504791, 19.149096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.865595, 35.465809, 19.137871>,  <20.471350, 35.400837, 19.119164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.865595, 35.465809, 19.137871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099125, 0.779535, -0.618465,
		-0.136917, 0.604930, 0.784419,
		0.985611, 0.162434, 0.046768,
		21.161278, 35.514538, 19.151901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.621582, 36.147274, 19.209581>,  <20.471350, 35.400837, 19.119164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.621582, 36.147274, 19.209581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.947870, 35.986130, 19.043545>,  <21.143644, 35.889442, 18.943922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.947870, 35.986130, 19.043545>,  <20.621582, 36.147274, 19.209581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.947870, 35.986130, 19.043545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025125, 0.741601, -0.670370,
		0.577899, 0.536406, 0.615062,
		0.815722, -0.402860, -0.415093,
		21.192587, 35.865273, 18.919016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.870533, 36.715534, 18.880089>,  <20.621582, 36.147274, 19.209581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.870533, 36.715534, 18.880089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.085920, 36.425030, 18.709160>,  <21.215153, 36.250729, 18.606604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.085920, 36.425030, 18.709160>,  <20.870533, 36.715534, 18.880089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.085920, 36.425030, 18.709160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196963, 0.601548, -0.774174,
		0.819303, 0.332702, 0.466960,
		0.538469, -0.726257, -0.427320,
		21.247461, 36.207153, 18.580963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.380342, 37.033169, 18.626358>,  <20.870533, 36.715534, 18.880089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.380342, 37.033169, 18.626358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.391054, 36.694935, 18.413094>,  <21.397482, 36.491993, 18.285135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.391054, 36.694935, 18.413094>,  <21.380342, 37.033169, 18.626358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.391054, 36.694935, 18.413094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332695, 0.510487, -0.792916,
		0.942654, -0.156146, 0.294995,
		0.026781, -0.845589, -0.533162,
		21.399088, 36.441257, 18.253145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.992018, 37.130058, 18.246422>,  <21.380342, 37.033169, 18.626358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.992018, 37.130058, 18.246422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.754726, 36.868366, 18.058781>,  <21.612352, 36.711349, 17.946196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.754726, 36.868366, 18.058781>,  <21.992018, 37.130058, 18.246422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.754726, 36.868366, 18.058781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055619, 0.548014, -0.834618,
		0.803112, -0.521209, -0.288708,
		-0.593227, -0.654235, -0.469105,
		21.576757, 36.672096, 17.918049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.261209, 37.083736, 17.604977>,  <21.992018, 37.130058, 18.246422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.261209, 37.083736, 17.604977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.885609, 36.953091, 17.561905>,  <21.660248, 36.874702, 17.536062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.885609, 36.953091, 17.561905>,  <22.261209, 37.083736, 17.604977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.885609, 36.953091, 17.561905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077290, 0.505520, -0.859346,
		0.335107, -0.798607, -0.499930,
		-0.939004, -0.326612, -0.107679,
		21.603907, 36.855106, 17.529602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.316343, 36.497726, 17.079567>,  <22.261209, 37.083736, 17.604977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.316343, 36.497726, 17.079567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.950945, 36.660156, 17.089584>,  <21.731707, 36.757614, 17.095594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.950945, 36.660156, 17.089584>,  <22.316343, 36.497726, 17.079567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.950945, 36.660156, 17.089584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095897, 0.274726, -0.956728,
		-0.395383, -0.871567, -0.289902,
		-0.913497, 0.406075, 0.025042,
		21.676895, 36.781979, 17.097097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.093628, 36.205093, 16.480869>,  <22.316343, 36.497726, 17.079567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.093628, 36.205093, 16.480869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.844831, 36.504272, 16.573563>,  <21.695553, 36.683781, 16.629179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.844831, 36.504272, 16.573563>,  <22.093628, 36.205093, 16.480869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.844831, 36.504272, 16.573563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008265, 0.289661, -0.957094,
		-0.782980, -0.597220, -0.173985,
		-0.621992, 0.747947, 0.231735,
		21.658234, 36.728657, 16.643084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.625376, 36.226189, 15.936252>,  <22.093628, 36.205093, 16.480869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.625376, 36.226189, 15.936252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.586895, 36.577557, 16.123493>,  <21.563807, 36.788376, 16.235838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.586895, 36.577557, 16.123493>,  <21.625376, 36.226189, 15.936252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.586895, 36.577557, 16.123493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101401, 0.459189, -0.882532,
		-0.990183, -0.132369, 0.044897,
		-0.096204, 0.878421, 0.468103,
		21.558033, 36.841084, 16.263924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.006145, 36.521107, 15.611986>,  <21.625376, 36.226189, 15.936252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.006145, 36.521107, 15.611986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.225504, 36.811344, 15.778249>,  <21.357119, 36.985489, 15.878007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.225504, 36.811344, 15.778249>,  <21.006145, 36.521107, 15.611986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.225504, 36.811344, 15.778249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054165, 0.465201, -0.883546,
		-0.834463, 0.507047, 0.215812,
		0.548396, 0.725597, 0.415658,
		21.390022, 37.029022, 15.902946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.768646, 37.141674, 15.361717>,  <21.006145, 36.521107, 15.611986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.768646, 37.141674, 15.361717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.129549, 37.259457, 15.487720>,  <21.346090, 37.330128, 15.563321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.129549, 37.259457, 15.487720>,  <20.768646, 37.141674, 15.361717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.129549, 37.259457, 15.487720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092448, 0.581442, -0.808318,
		-0.421175, 0.758431, 0.497387,
		0.902255, 0.294461, 0.315005,
		21.400227, 37.347794, 15.582221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.744734, 37.948692, 15.309155>,  <20.768646, 37.141674, 15.361717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.744734, 37.948692, 15.309155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.118845, 37.808189, 15.291842>,  <21.343311, 37.723888, 15.281455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.118845, 37.808189, 15.291842>,  <20.744734, 37.948692, 15.309155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.118845, 37.808189, 15.291842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211545, 0.652888, -0.727315,
		0.283730, 0.671087, 0.684938,
		0.935279, -0.351256, -0.043279,
		21.399429, 37.702812, 15.278859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.158083, 38.509624, 15.206656>,  <20.744734, 37.948692, 15.309155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.158083, 38.509624, 15.206656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.419306, 38.233105, 15.082961>,  <21.576038, 38.067192, 15.008744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.419306, 38.233105, 15.082961>,  <21.158083, 38.509624, 15.206656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.419306, 38.233105, 15.082961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295329, 0.608480, -0.736568,
		0.697351, 0.389694, 0.601532,
		0.653056, -0.691296, -0.309237,
		21.615223, 38.025715, 14.990191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.718908, 38.906483, 15.074727>,  <21.158083, 38.509624, 15.206656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.718908, 38.906483, 15.074727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.763783, 38.557751, 14.884011>,  <21.790707, 38.348511, 14.769582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.763783, 38.557751, 14.884011>,  <21.718908, 38.906483, 15.074727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.763783, 38.557751, 14.884011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372913, 0.481686, -0.793041,
		0.921059, -0.088834, 0.379155,
		0.112185, -0.871829, -0.476789,
		21.797438, 38.296204, 14.740974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.468540, 38.862541, 14.834663>,  <21.718908, 38.906483, 15.074727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.468540, 38.862541, 14.834663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.255775, 38.609280, 14.609740>,  <22.128117, 38.457325, 14.474787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.255775, 38.609280, 14.609740>,  <22.468540, 38.862541, 14.834663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.255775, 38.609280, 14.609740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191703, 0.556763, -0.808248,
		0.824814, -0.537713, -0.174773,
		-0.531913, -0.633150, -0.562307,
		22.096201, 38.419334, 14.441048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.969261, 38.583580, 14.433355>,  <22.468540, 38.862541, 14.834663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.969261, 38.583580, 14.433355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.621330, 38.525562, 14.244735>,  <22.412571, 38.490753, 14.131562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.621330, 38.525562, 14.244735>,  <22.969261, 38.583580, 14.433355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.621330, 38.525562, 14.244735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359700, 0.467720, -0.807375,
		0.337659, -0.871895, -0.354664,
		-0.869829, -0.145045, -0.471551,
		22.360382, 38.482048, 14.103270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.170319, 38.377373, 13.789608>,  <22.969261, 38.583580, 14.433355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.170319, 38.377373, 13.789608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.790035, 38.497593, 13.759086>,  <22.561865, 38.569725, 13.740772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.790035, 38.497593, 13.759086>,  <23.170319, 38.377373, 13.789608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.790035, 38.497593, 13.759086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257359, 0.627524, -0.734833,
		-0.172969, -0.718251, -0.673942,
		-0.950709, 0.300548, -0.076306,
		22.504822, 38.587757, 13.736194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.064817, 38.363865, 13.095140>,  <23.170319, 38.377373, 13.789608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.064817, 38.363865, 13.095140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.780426, 38.600452, 13.247281>,  <22.609791, 38.742405, 13.338566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.780426, 38.600452, 13.247281>,  <23.064817, 38.363865, 13.095140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.780426, 38.600452, 13.247281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125581, 0.638977, -0.758906,
		-0.691910, -0.491801, -0.528577,
		-0.710979, 0.591474, 0.380353,
		22.567133, 38.777893, 13.361387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.558170, 38.530254, 12.501217>,  <23.064817, 38.363865, 13.095140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.558170, 38.530254, 12.501217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.523767, 38.810303, 12.784747>,  <22.503126, 38.978333, 12.954865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.523767, 38.810303, 12.784747>,  <22.558170, 38.530254, 12.501217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.523767, 38.810303, 12.784747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125464, 0.713409, -0.689425,
		-0.988363, 0.029635, -0.149199,
		-0.086009, 0.700121, 0.708825,
		22.497965, 39.020340, 12.997395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.192060, 39.083427, 12.316956>,  <22.558170, 38.530254, 12.501217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.192060, 39.083427, 12.316956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.466732, 39.217640, 12.574914>,  <22.631535, 39.298168, 12.729689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.466732, 39.217640, 12.574914>,  <22.192060, 39.083427, 12.316956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.466732, 39.217640, 12.574914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222182, 0.747798, -0.625647,
		-0.692176, 0.572903, 0.438948,
		0.686679, 0.335532, 0.644896,
		22.672735, 39.318298, 12.768383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.024506, 39.847645, 12.089266>,  <22.192060, 39.083427, 12.316956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.024506, 39.847645, 12.089266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.989153, 39.965485, 11.708655>,  <21.967941, 40.036190, 11.480289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.989153, 39.965485, 11.708655>,  <22.024506, 39.847645, 12.089266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.989153, 39.965485, 11.708655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995676, -0.053574, 0.075894,
		-0.028619, 0.954118, 0.298059,
		-0.088380, 0.294598, -0.951526,
		21.962639, 40.053864, 11.423198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.573984, 40.317646, 11.982501>,  <22.024506, 39.847645, 12.089266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.573984, 40.317646, 11.982501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.580652, 40.156975, 11.616250>,  <21.584652, 40.060570, 11.396500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.580652, 40.156975, 11.616250>,  <21.573984, 40.317646, 11.982501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.580652, 40.156975, 11.616250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999507, -0.031068, -0.004566,
		-0.026612, 0.915253, -0.402000,
		0.016668, -0.401680, -0.915628,
		21.585653, 40.036472, 11.341561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.779520, 40.993118, 12.339338>,  <21.573984, 40.317646, 11.982501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.779520, 40.993118, 12.339338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.091656, 41.208256, 12.466956>,  <22.278936, 41.337337, 12.543527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.091656, 41.208256, 12.466956>,  <21.779520, 40.993118, 12.339338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.091656, 41.208256, 12.466956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317819, -0.098292, 0.943043,
		0.538574, -0.837292, 0.094237,
		0.780339, 0.537848, 0.319045,
		22.325758, 41.369610, 12.562670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.704672, 40.766441, 12.999211>,  <21.779520, 40.993118, 12.339338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.704672, 40.766441, 12.999211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.029213, 40.998928, 12.974261>,  <22.223938, 41.138420, 12.959291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.029213, 40.998928, 12.974261>,  <21.704672, 40.766441, 12.999211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.029213, 40.998928, 12.974261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130973, -0.076757, 0.988410,
		0.569696, -0.810118, -0.138401,
		0.811352, 0.581220, -0.062375,
		22.272619, 41.173294, 12.955548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.287086, 40.506371, 13.304528>,  <21.704672, 40.766441, 12.999211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.287086, 40.506371, 13.304528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.357277, 40.898193, 13.343875>,  <22.399391, 41.133286, 13.367483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.357277, 40.898193, 13.343875>,  <22.287086, 40.506371, 13.304528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.357277, 40.898193, 13.343875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396762, -0.161809, 0.903547,
		0.900993, -0.119521, -0.417045,
		0.175475, 0.979557, 0.098368,
		22.409920, 41.192062, 13.373385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.943682, 40.676289, 13.418489>,  <22.287086, 40.506371, 13.304528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.943682, 40.676289, 13.418489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.687986, 40.915546, 13.611815>,  <22.534569, 41.059101, 13.727811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.687986, 40.915546, 13.611815>,  <22.943682, 40.676289, 13.418489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.687986, 40.915546, 13.611815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463816, -0.201422, 0.862730,
		0.613391, 0.775659, -0.148674,
		-0.639239, 0.598149, 0.483314,
		22.496214, 41.094990, 13.756809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.301992, 41.113701, 13.896792>,  <22.943682, 40.676289, 13.418489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.301992, 41.113701, 13.896792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.921587, 41.053688, 14.004912>,  <22.693344, 41.017681, 14.069784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.921587, 41.053688, 14.004912>,  <23.301992, 41.113701, 13.896792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.921587, 41.053688, 14.004912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307135, -0.359002, 0.881354,
		-0.035191, 0.921200, 0.387496,
		-0.951015, -0.150029, 0.270299,
		22.636282, 41.008678, 14.086002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.977987, 41.485756, 14.612080>,  <23.301992, 41.113701, 13.896792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.977987, 41.485756, 14.612080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.808321, 41.136604, 14.515609>,  <22.706522, 40.927113, 14.457726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.808321, 41.136604, 14.515609>,  <22.977987, 41.485756, 14.612080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.808321, 41.136604, 14.515609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100538, -0.310066, 0.945384,
		-0.899987, 0.376751, 0.219277,
		-0.424165, -0.872879, -0.241178,
		22.681072, 40.874741, 14.443255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.422955, 41.340927, 15.045501>,  <22.977987, 41.485756, 14.612080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.422955, 41.340927, 15.045501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.529762, 40.981392, 14.906484>,  <22.593847, 40.765671, 14.823073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.529762, 40.981392, 14.906484>,  <22.422955, 41.340927, 15.045501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.529762, 40.981392, 14.906484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293677, -0.419379, 0.858996,
		-0.917853, -0.127303, -0.375952,
		0.267019, -0.898841, -0.347542,
		22.609869, 40.711739, 14.802221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.815981, 40.825832, 14.911071>,  <22.422955, 41.340927, 15.045501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.815981, 40.825832, 14.911071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.152086, 40.624359, 14.991328>,  <22.353750, 40.503475, 15.039482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.152086, 40.624359, 14.991328>,  <21.815981, 40.825832, 14.911071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.152086, 40.624359, 14.991328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415391, -0.360238, 0.835271,
		-0.348410, -0.785209, -0.511916,
		0.840274, -0.503662, 0.200658,
		22.404165, 40.473255, 15.051521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.559151, 40.168049, 15.102070>,  <21.815981, 40.825832, 14.911071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.559151, 40.168049, 15.102070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.925989, 40.193230, 15.259536>,  <22.146091, 40.208336, 15.354015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.925989, 40.193230, 15.259536>,  <21.559151, 40.168049, 15.102070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.925989, 40.193230, 15.259536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304376, -0.527163, 0.793382,
		0.257468, -0.847430, -0.464299,
		0.917096, 0.062949, 0.393665,
		22.201118, 40.212112, 15.377635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.692118, 39.584667, 15.352977>,  <21.559151, 40.168049, 15.102070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.692118, 39.584667, 15.352977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.969872, 39.783909, 15.560718>,  <22.136524, 39.903454, 15.685362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.969872, 39.783909, 15.560718>,  <21.692118, 39.584667, 15.352977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.969872, 39.783909, 15.560718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224901, -0.535349, 0.814138,
		0.683557, -0.682128, -0.259715,
		0.694384, 0.498100, 0.519353,
		22.178186, 39.933338, 15.716523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.001055, 39.129532, 15.779625>,  <21.692118, 39.584667, 15.352977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.001055, 39.129532, 15.779625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.115692, 39.468704, 15.958009>,  <22.184475, 39.672207, 16.065039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.115692, 39.468704, 15.958009>,  <22.001055, 39.129532, 15.779625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.115692, 39.468704, 15.958009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101987, -0.435839, 0.894227,
		0.952608, -0.301762, -0.038430,
		0.286593, 0.847929, 0.445960,
		22.201670, 39.723083, 16.091797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.504951, 38.905544, 16.245750>,  <22.001055, 39.129532, 15.779625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.504951, 38.905544, 16.245750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.355354, 39.256180, 16.366886>,  <22.265594, 39.466560, 16.439568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.355354, 39.256180, 16.366886>,  <22.504951, 38.905544, 16.245750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.355354, 39.256180, 16.366886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211182, -0.398452, 0.892546,
		0.903067, 0.269853, 0.334140,
		-0.373995, 0.876593, 0.302841,
		22.243156, 39.519157, 16.457739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.723995, 38.863018, 16.945568>,  <22.504951, 38.905544, 16.245750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.723995, 38.863018, 16.945568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.455416, 39.158073, 16.917152>,  <22.294268, 39.335106, 16.900103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.455416, 39.158073, 16.917152>,  <22.723995, 38.863018, 16.945568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.455416, 39.158073, 16.917152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266512, -0.150920, 0.951943,
		0.691467, 0.658115, 0.297924,
		-0.671450, 0.737637, -0.071039,
		22.253981, 39.379364, 16.895842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.806124, 39.266880, 17.645815>,  <22.723995, 38.863018, 16.945568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.806124, 39.266880, 17.645815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.453207, 39.405384, 17.518276>,  <22.241457, 39.488487, 17.441753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.453207, 39.405384, 17.518276>,  <22.806124, 39.266880, 17.645815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.453207, 39.405384, 17.518276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405360, -0.214635, 0.888603,
		0.239254, 0.913255, 0.329731,
		-0.882293, 0.346262, -0.318845,
		22.188519, 39.509262, 17.422623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.534754, 39.780827, 18.124285>,  <22.806124, 39.266880, 17.645815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.534754, 39.780827, 18.124285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.225386, 39.627121, 17.922626>,  <22.039764, 39.534897, 17.801632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.225386, 39.627121, 17.922626>,  <22.534754, 39.780827, 18.124285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.225386, 39.627121, 17.922626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464107, -0.198462, 0.863260,
		-0.431771, 0.901641, -0.024843,
		-0.773420, -0.384260, -0.504148,
		21.993359, 39.511845, 17.771381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.883545, 40.042019, 18.430479>,  <22.534754, 39.780827, 18.124285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.883545, 40.042019, 18.430479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.743584, 39.701935, 18.273144>,  <21.659607, 39.497887, 18.178743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.743584, 39.701935, 18.273144>,  <21.883545, 40.042019, 18.430479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.743584, 39.701935, 18.273144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549675, -0.153662, 0.821124,
		-0.758568, 0.503521, -0.413572,
		-0.349903, -0.850208, -0.393336,
		21.638613, 39.446873, 18.155144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.155807, 39.963150, 18.559349>,  <21.883545, 40.042019, 18.430479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.155807, 39.963150, 18.559349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.261513, 39.582314, 18.497795>,  <21.324936, 39.353809, 18.460863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.261513, 39.582314, 18.497795>,  <21.155807, 39.963150, 18.559349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.261513, 39.582314, 18.497795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532062, -0.277002, 0.800113,
		-0.804409, -0.129564, -0.579775,
		0.264264, -0.952094, -0.153887,
		21.340792, 39.296684, 18.451630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.539951, 39.562584, 18.727245>,  <21.155807, 39.963150, 18.559349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.539951, 39.562584, 18.727245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.859446, 39.322063, 18.735828>,  <21.051142, 39.177750, 18.740978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.859446, 39.322063, 18.735828>,  <20.539951, 39.562584, 18.727245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.859446, 39.322063, 18.735828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329133, -0.406793, 0.852168,
		-0.503680, -0.687719, -0.522828,
		0.798735, -0.601300, 0.021458,
		21.099066, 39.141674, 18.742266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.166563, 38.938690, 18.915564>,  <20.539951, 39.562584, 18.727245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.166563, 38.938690, 18.915564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.552233, 38.855907, 18.981941>,  <20.783634, 38.806240, 19.021769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.552233, 38.855907, 18.981941>,  <20.166563, 38.938690, 18.915564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.552233, 38.855907, 18.981941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246579, -0.468571, 0.848316,
		-0.097804, -0.858843, -0.502814,
		0.964175, -0.206952, 0.165945,
		20.841486, 38.793823, 19.031725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.269245, 38.155037, 18.995171>,  <20.166563, 38.938690, 18.915564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.269245, 38.155037, 18.995171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.599300, 38.298977, 19.169365>,  <20.797335, 38.385342, 19.273882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.599300, 38.298977, 19.169365>,  <20.269245, 38.155037, 18.995171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.599300, 38.298977, 19.169365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091839, -0.675173, 0.731920,
		0.557414, -0.643931, -0.524063,
		0.825140, 0.359853, 0.435488,
		20.846842, 38.406933, 19.300011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.764526, 37.580959, 19.158405>,  <20.269245, 38.155037, 18.995171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.764526, 37.580959, 19.158405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.890198, 37.883636, 19.387737>,  <20.965601, 38.065243, 19.525337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.890198, 37.883636, 19.387737>,  <20.764526, 37.580959, 19.158405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.890198, 37.883636, 19.387737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054852, -0.617371, 0.784758,
		0.947779, -0.215104, -0.235470,
		0.314177, 0.756692, 0.573332,
		20.984451, 38.110645, 19.559736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.360964, 37.367828, 19.486591>,  <20.764526, 37.580959, 19.158405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.360964, 37.367828, 19.486591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.202204, 37.669621, 19.695679>,  <21.106949, 37.850697, 19.821131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.202204, 37.669621, 19.695679>,  <21.360964, 37.367828, 19.486591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.202204, 37.669621, 19.695679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002989, -0.568430, 0.822726,
		0.917858, 0.328101, 0.223354,
		-0.396899, 0.754478, 0.522719,
		21.083134, 37.895966, 19.852495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.743301, 37.398754, 20.112726>,  <21.360964, 37.367828, 19.486591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.743301, 37.398754, 20.112726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.396404, 37.583496, 20.187103>,  <21.188265, 37.694344, 20.231730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.396404, 37.583496, 20.187103>,  <21.743301, 37.398754, 20.112726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.396404, 37.583496, 20.187103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148973, -0.597070, 0.788235,
		0.475072, 0.655893, 0.586610,
		-0.867245, 0.461857, 0.185941,
		21.136230, 37.722054, 20.242886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.675570, 37.413364, 20.842627>,  <21.743301, 37.398754, 20.112726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.675570, 37.413364, 20.842627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.296955, 37.513660, 20.761433>,  <21.069786, 37.573837, 20.712717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.296955, 37.513660, 20.761433>,  <21.675570, 37.413364, 20.842627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.296955, 37.513660, 20.761433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280682, -0.329921, 0.901315,
		0.159026, 0.910100, 0.382660,
		-0.946535, 0.250738, -0.202983,
		21.012995, 37.588882, 20.700539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.450594, 37.851242, 21.373980>,  <21.675570, 37.413364, 20.842627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.450594, 37.851242, 21.373980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.126461, 37.672298, 21.222595>,  <20.931982, 37.564930, 21.131763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.126461, 37.672298, 21.222595>,  <21.450594, 37.851242, 21.373980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.126461, 37.672298, 21.222595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184483, -0.418254, 0.889398,
		-0.556175, 0.790526, 0.256393,
		-0.810330, -0.447361, -0.378462,
		20.883362, 37.538090, 21.109056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.876860, 37.904449, 21.859205>,  <21.450594, 37.851242, 21.373980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.876860, 37.904449, 21.859205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.785217, 37.591602, 21.627411>,  <20.730232, 37.403893, 21.488335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.785217, 37.591602, 21.627411>,  <20.876860, 37.904449, 21.859205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.785217, 37.591602, 21.627411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228480, -0.535480, 0.813055,
		-0.946207, 0.318676, -0.056016,
		-0.229106, -0.782116, -0.579486,
		20.716486, 37.356968, 21.453566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.265512, 37.781990, 22.149469>,  <20.876860, 37.904449, 21.859205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.265512, 37.781990, 22.149469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.379427, 37.449825, 21.957920>,  <20.447775, 37.250526, 21.842991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.379427, 37.449825, 21.957920>,  <20.265512, 37.781990, 22.149469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.379427, 37.449825, 21.957920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277926, -0.549628, 0.787823,
		-0.917417, -0.091269, -0.387318,
		0.284785, -0.830409, -0.478872,
		20.464863, 37.200703, 21.814259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.800274, 37.172142, 22.319927>,  <20.265512, 37.781990, 22.149469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.800274, 37.172142, 22.319927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.152470, 37.021435, 22.204838>,  <20.363787, 36.931011, 22.135784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.152470, 37.021435, 22.204838>,  <19.800274, 37.172142, 22.319927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.152470, 37.021435, 22.204838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006518, -0.616485, 0.787340,
		-0.474022, -0.691368, -0.545264,
		0.880489, -0.376770, -0.287722,
		20.416616, 36.908401, 22.118521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.645569, 36.514156, 22.289452>,  <19.800274, 37.172142, 22.319927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.645569, 36.514156, 22.289452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.038498, 36.571495, 22.337612>,  <20.274256, 36.605900, 22.366508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.038498, 36.571495, 22.337612>,  <19.645569, 36.514156, 22.289452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.038498, 36.571495, 22.337612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017474, -0.710568, 0.703412,
		0.186385, -0.688872, -0.700511,
		0.982321, 0.143347, 0.120402,
		20.333195, 36.614498, 22.373734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.146137, 36.360497, 22.864248>,  <19.645569, 36.514156, 22.289452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.146137, 36.360497, 22.864248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.869823, 36.339279, 23.152695>,  <18.704035, 36.326550, 23.325762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.869823, 36.339279, 23.152695>,  <19.146137, 36.360497, 22.864248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.869823, 36.339279, 23.152695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083211, 0.996511, -0.006408,
		-0.718259, -0.064431, -0.692786,
		-0.690782, -0.053045, 0.721114,
		18.662588, 36.323364, 23.369030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.358789, 36.699245, 22.795591>,  <19.146137, 36.360497, 22.864248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.358789, 36.699245, 22.795591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.519777, 36.696465, 23.161755>,  <18.616369, 36.694794, 23.381453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.519777, 36.696465, 23.161755>,  <18.358789, 36.699245, 22.795591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.519777, 36.696465, 23.161755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009102, 0.999952, 0.003598,
		-0.915388, 0.006884, 0.402514,
		0.402470, -0.006957, 0.915407,
		18.640518, 36.694378, 23.436377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.893639, 36.940578, 23.366657>,  <18.358789, 36.699245, 22.795591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.893639, 36.940578, 23.366657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.287184, 36.992577, 23.415844>,  <18.523310, 37.023773, 23.445356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.287184, 36.992577, 23.415844>,  <17.893639, 36.940578, 23.366657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.287184, 36.992577, 23.415844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107700, 0.978980, -0.173203,
		-0.142895, 0.157164, 0.977180,
		0.983860, 0.129992, 0.122965,
		18.582342, 37.031574, 23.452734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.144218, 23.036928, 21.741238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.530693, 23.046009, 21.843979>,  <32.762577, 23.051458, 21.905622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.530693, 23.046009, 21.843979>,  <32.144218, 23.036928, 21.741238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530693, 23.046009, 21.843979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024689, 0.983394, -0.179799,
		-0.256668, 0.180060, 0.949579,
		0.966184, 0.022704, 0.256851,
		32.820549, 23.052820, 21.921034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230850, 23.539042, 22.063274>,  <32.144218, 23.036928, 21.741238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230850, 23.539042, 22.063274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.618816, 23.505409, 21.971889>,  <32.851597, 23.485229, 21.917059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.618816, 23.505409, 21.971889>,  <32.230850, 23.539042, 22.063274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618816, 23.505409, 21.971889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061785, 0.992754, -0.103065,
		0.235473, 0.085848, 0.968082,
		0.969915, -0.084082, -0.228463,
		32.909790, 23.480185, 21.903351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455746, 23.997753, 22.433453>,  <32.230850, 23.539042, 22.063274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455746, 23.997753, 22.433453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.728527, 23.937820, 22.147099>,  <32.892197, 23.901861, 21.975286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.728527, 23.937820, 22.147099>,  <32.455746, 23.997753, 22.433453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728527, 23.937820, 22.147099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192075, 0.981125, -0.022377,
		0.705726, -0.122243, 0.697859,
		0.681952, -0.149834, -0.715885,
		32.933113, 23.892870, 21.932333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988216, 24.500254, 22.516317>,  <32.455746, 23.997753, 22.433453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988216, 24.500254, 22.516317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.047951, 24.388897, 22.136803>,  <33.083790, 24.322083, 21.909094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.047951, 24.388897, 22.136803>,  <32.988216, 24.500254, 22.516317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047951, 24.388897, 22.136803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206910, 0.947102, -0.245331,
		0.966896, -0.159676, 0.199038,
		0.149335, -0.278392, -0.948787,
		33.092751, 24.305380, 21.852167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409199, 24.961599, 22.339006>,  <32.988216, 24.500254, 22.516317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409199, 24.961599, 22.339006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.277676, 24.815838, 21.990501>,  <33.198761, 24.728380, 21.781399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.277676, 24.815838, 21.990501>,  <33.409199, 24.961599, 22.339006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277676, 24.815838, 21.990501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053306, 0.913925, -0.402367,
		0.942892, -0.178744, -0.281079,
		-0.328805, -0.364405, -0.871261,
		33.179035, 24.706516, 21.729122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838726, 25.275671, 21.861279>,  <33.409199, 24.961599, 22.339006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838726, 25.275671, 21.861279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.525970, 25.149452, 21.646217>,  <33.338318, 25.073721, 21.517179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.525970, 25.149452, 21.646217>,  <33.838726, 25.275671, 21.861279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525970, 25.149452, 21.646217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094682, 0.912541, -0.397875,
		0.616180, -0.260190, -0.743387,
		-0.781894, -0.315548, -0.537654,
		33.291401, 25.054789, 21.484921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000347, 25.526304, 21.185392>,  <33.838726, 25.275671, 21.861279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000347, 25.526304, 21.185392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.605801, 25.462585, 21.201916>,  <33.369072, 25.424355, 21.211830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.605801, 25.462585, 21.201916>,  <34.000347, 25.526304, 21.185392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605801, 25.462585, 21.201916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161004, 0.882185, -0.442524,
		0.034048, -0.443142, -0.895804,
		-0.986366, -0.159296, 0.041311,
		33.309891, 25.414797, 21.214310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741890, 25.658108, 20.517916>,  <34.000347, 25.526304, 21.185392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741890, 25.658108, 20.517916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.445335, 25.689602, 20.784492>,  <33.267403, 25.708498, 20.944439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.445335, 25.689602, 20.784492>,  <33.741890, 25.658108, 20.517916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445335, 25.689602, 20.784492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245437, 0.892478, -0.378477,
		-0.624584, -0.444167, -0.642347,
		-0.741387, 0.078735, 0.666443,
		33.222919, 25.713223, 20.984425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267967, 25.973194, 20.106529>,  <33.741890, 25.658108, 20.517916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267967, 25.973194, 20.106529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.131924, 26.023552, 20.479298>,  <33.050297, 26.053766, 20.702959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.131924, 26.023552, 20.479298>,  <33.267967, 25.973194, 20.106529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131924, 26.023552, 20.479298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374603, 0.890840, -0.257055,
		-0.862556, -0.436526, -0.255818,
		-0.340104, 0.125894, 0.931923,
		33.029892, 26.061319, 20.758875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720070, 26.341213, 19.980865>,  <33.267967, 25.973194, 20.106529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720070, 26.341213, 19.980865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.784973, 26.418613, 20.367901>,  <32.823917, 26.465054, 20.600122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.784973, 26.418613, 20.367901>,  <32.720070, 26.341213, 19.980865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784973, 26.418613, 20.367901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272747, 0.951176, -0.144477,
		-0.948304, -0.240464, 0.207117,
		0.162263, 0.193499, 0.967589,
		32.833652, 26.476664, 20.658178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060730, 26.587893, 20.313780>,  <32.720070, 26.341213, 19.980865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060730, 26.587893, 20.313780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.353092, 26.732525, 20.545307>,  <32.528511, 26.819305, 20.684223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.353092, 26.732525, 20.545307>,  <32.060730, 26.587893, 20.313780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353092, 26.732525, 20.545307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495639, 0.864263, 0.085976,
		-0.469165, -0.349726, 0.810911,
		0.730908, 0.361583, 0.578819,
		32.572365, 26.841000, 20.718952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745033, 26.965326, 20.839731>,  <32.060730, 26.587893, 20.313780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745033, 26.965326, 20.839731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.113350, 27.120201, 20.820866>,  <32.334339, 27.213125, 20.809547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.113350, 27.120201, 20.820866>,  <31.745033, 26.965326, 20.839731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113350, 27.120201, 20.820866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380010, 0.917768, 0.115302,
		0.087928, -0.088247, 0.992210,
		0.920794, 0.387188, -0.047163,
		32.389587, 27.236357, 20.806717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738958, 27.511137, 21.315382>,  <31.745033, 26.965326, 20.839731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738958, 27.511137, 21.315382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.049934, 27.578152, 21.072887>,  <32.236519, 27.618361, 20.927391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.049934, 27.578152, 21.072887>,  <31.738958, 27.511137, 21.315382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049934, 27.578152, 21.072887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256631, 0.964482, -0.062567,
		0.574220, 0.204221, 0.792821,
		0.777439, 0.167535, -0.606235,
		32.283165, 27.628412, 20.891018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172882, 28.139921, 21.563587>,  <31.738958, 27.511137, 21.315382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172882, 28.139921, 21.563587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.239250, 28.096603, 21.171516>,  <32.279072, 28.070612, 20.936274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.239250, 28.096603, 21.171516>,  <32.172882, 28.139921, 21.563587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239250, 28.096603, 21.171516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251402, 0.956464, -0.148233,
		0.953556, 0.271013, 0.131468,
		0.165917, -0.108297, -0.980175,
		32.289024, 28.064114, 20.877464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465015, 28.687361, 21.383131>,  <32.172882, 28.139921, 21.563587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465015, 28.687361, 21.383131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.389538, 28.579952, 21.005287>,  <32.344250, 28.515507, 20.778580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.389538, 28.579952, 21.005287>,  <32.465015, 28.687361, 21.383131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389538, 28.579952, 21.005287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475016, 0.866834, -0.151522,
		0.859507, 0.420113, -0.291123,
		-0.188699, -0.268522, -0.944610,
		32.332928, 28.499395, 20.721905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703403, 29.213964, 20.884983>,  <32.465015, 28.687361, 21.383131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703403, 29.213964, 20.884983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.402676, 29.013451, 20.713646>,  <32.222237, 28.893143, 20.610844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.402676, 29.013451, 20.713646>,  <32.703403, 29.213964, 20.884983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402676, 29.013451, 20.713646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534150, 0.843905, -0.050081,
		0.386585, 0.191147, -0.902228,
		-0.751822, -0.501286, -0.428342,
		32.177128, 28.863066, 20.585144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519505, 29.617252, 20.255449>,  <32.703403, 29.213964, 20.884983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519505, 29.617252, 20.255449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.207401, 29.381039, 20.337875>,  <32.020138, 29.239311, 20.387331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.207401, 29.381039, 20.337875>,  <32.519505, 29.617252, 20.255449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207401, 29.381039, 20.337875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605567, 0.795693, -0.012705,
		-0.156461, -0.134698, -0.978456,
		-0.780262, -0.590532, 0.206063,
		31.973322, 29.203878, 20.399694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975712, 29.830763, 19.922159>,  <32.519505, 29.617252, 20.255449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975712, 29.830763, 19.922159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.770021, 29.612377, 20.186733>,  <31.646608, 29.481346, 20.345478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.770021, 29.612377, 20.186733>,  <31.975712, 29.830763, 19.922159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770021, 29.612377, 20.186733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664470, 0.741221, 0.095239,
		-0.542265, -0.390529, -0.743932,
		-0.514225, -0.545966, 0.661434,
		31.615753, 29.448587, 20.385162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334917, 29.933752, 19.693899>,  <31.975712, 29.830763, 19.922159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334917, 29.933752, 19.693899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.259367, 29.806473, 20.065506>,  <31.214037, 29.730106, 20.288471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.259367, 29.806473, 20.065506>,  <31.334917, 29.933752, 19.693899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259367, 29.806473, 20.065506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794543, 0.605474, 0.045842,
		-0.577084, -0.729488, -0.367181,
		-0.188877, -0.318196, 0.929019,
		31.202703, 29.711014, 20.344212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721157, 29.690052, 19.642189>,  <31.334917, 29.933752, 19.693899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721157, 29.690052, 19.642189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.776182, 29.781181, 20.027763>,  <30.809198, 29.835859, 20.259108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.776182, 29.781181, 20.027763>,  <30.721157, 29.690052, 19.642189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776182, 29.781181, 20.027763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860146, 0.510044, 0.002204,
		-0.491147, -0.829428, 0.266127,
		0.137565, 0.227825, 0.963935,
		30.817451, 29.849529, 20.316944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103664, 29.604561, 19.949100>,  <30.721157, 29.690052, 19.642189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103664, 29.604561, 19.949100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.301340, 29.852211, 20.193218>,  <30.419947, 30.000801, 20.339689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.301340, 29.852211, 20.193218>,  <30.103664, 29.604561, 19.949100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301340, 29.852211, 20.193218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827576, 0.550040, 0.112136,
		-0.266260, -0.560482, 0.784198,
		0.494190, 0.619125, 0.610295,
		30.449596, 30.037949, 20.376307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654734, 29.708643, 20.543701>,  <30.103664, 29.604561, 19.949100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654734, 29.708643, 20.543701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.914412, 30.012844, 20.549110>,  <30.070219, 30.195364, 20.552357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.914412, 30.012844, 20.549110>,  <29.654734, 29.708643, 20.543701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914412, 30.012844, 20.549110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748703, 0.635787, 0.187667,
		0.134122, -0.131959, 0.982140,
		0.649196, 0.760501, 0.013526,
		30.109171, 30.240993, 20.553167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208891, 30.296717, 20.652815>,  <29.654734, 29.708643, 20.543701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208891, 30.296717, 20.652815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.563707, 30.474712, 20.603592>,  <29.776598, 30.581511, 20.574059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.563707, 30.474712, 20.603592>,  <29.208891, 30.296717, 20.652815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563707, 30.474712, 20.603592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433697, 0.894513, 0.108417,
		0.158323, -0.042800, 0.986459,
		0.887041, 0.444989, -0.123059,
		29.829819, 30.608210, 20.566673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567305, 30.626255, 20.465593>,  <29.208891, 30.296717, 20.652815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567305, 30.626255, 20.465593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.310270, 30.590233, 20.161232>,  <28.156050, 30.568621, 19.978615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.310270, 30.590233, 20.161232>,  <28.567305, 30.626255, 20.465593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310270, 30.590233, 20.161232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082731, -0.995418, 0.047942,
		-0.761735, -0.032144, 0.647091,
		-0.642585, -0.090054, -0.760904,
		28.117495, 30.563217, 19.932961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048182, 30.096157, 20.736309>,  <28.567305, 30.626255, 20.465593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048182, 30.096157, 20.736309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.035484, 30.117752, 20.337093>,  <28.027866, 30.130709, 20.097565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.035484, 30.117752, 20.337093>,  <28.048182, 30.096157, 20.736309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035484, 30.117752, 20.337093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165825, -0.984417, -0.058523,
		-0.985644, -0.167357, 0.022297,
		-0.031743, 0.053985, -0.998037,
		28.025961, 30.133947, 20.037682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441105, 29.687040, 20.508564>,  <28.048182, 30.096157, 20.736309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441105, 29.687040, 20.508564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.675804, 29.717499, 20.186092>,  <27.816624, 29.735775, 19.992609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.675804, 29.717499, 20.186092>,  <27.441105, 29.687040, 20.508564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675804, 29.717499, 20.186092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010435, -0.994775, -0.101556,
		-0.809702, 0.068000, -0.582888,
		0.586748, 0.076147, -0.806181,
		27.851830, 29.740343, 19.944239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242025, 29.138391, 20.123262>,  <27.441105, 29.687040, 20.508564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242025, 29.138391, 20.123262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.600775, 29.203999, 19.958961>,  <27.816025, 29.243362, 19.860380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.600775, 29.203999, 19.958961>,  <27.242025, 29.138391, 20.123262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600775, 29.203999, 19.958961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240995, -0.959949, 0.142899,
		-0.370864, -0.227151, -0.900479,
		0.896873, 0.164015, -0.410753,
		27.869837, 29.253202, 19.835735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263241, 28.543962, 19.665579>,  <27.242025, 29.138391, 20.123262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263241, 28.543962, 19.665579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.630730, 28.698822, 19.696724>,  <27.851223, 28.791739, 19.715410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.630730, 28.698822, 19.696724>,  <27.263241, 28.543962, 19.665579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630730, 28.698822, 19.696724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368806, -0.911656, 0.181286,
		0.141169, -0.137835, -0.980343,
		0.918724, 0.387149, 0.077864,
		27.906347, 28.814966, 19.720083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714615, 28.246233, 19.223606>,  <27.263241, 28.543962, 19.665579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714615, 28.246233, 19.223606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.937765, 28.390942, 19.522377>,  <28.071655, 28.477766, 19.701639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.937765, 28.390942, 19.522377>,  <27.714615, 28.246233, 19.223606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937765, 28.390942, 19.522377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482828, -0.873486, 0.062447,
		0.675020, 0.325799, -0.661969,
		0.557875, 0.361770, 0.746925,
		28.105127, 28.499474, 19.746454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477764, 28.194304, 19.084421>,  <27.714615, 28.246233, 19.223606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477764, 28.194304, 19.084421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.454210, 28.232338, 19.481911>,  <28.440079, 28.255157, 19.720406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.454210, 28.232338, 19.481911>,  <28.477764, 28.194304, 19.084421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454210, 28.232338, 19.481911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582958, -0.804808, 0.111552,
		0.810366, 0.585869, -0.008038,
		-0.058886, 0.095084, 0.993726,
		28.436544, 28.260864, 19.780029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072996, 28.010157, 19.326044>,  <28.477764, 28.194304, 19.084421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072996, 28.010157, 19.326044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.848480, 27.951729, 19.651894>,  <28.713770, 27.916672, 19.847404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.848480, 27.951729, 19.651894>,  <29.072996, 28.010157, 19.326044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848480, 27.951729, 19.651894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524524, -0.824159, 0.213625,
		0.640177, 0.547197, 0.539212,
		-0.561292, -0.146072, 0.814625,
		28.680092, 27.907907, 19.896282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496542, 27.700747, 19.833113>,  <29.072996, 28.010157, 19.326044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496542, 27.700747, 19.833113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.134409, 27.618076, 19.981522>,  <28.917130, 27.568474, 20.070566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.134409, 27.618076, 19.981522>,  <29.496542, 27.700747, 19.833113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134409, 27.618076, 19.981522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368893, -0.815572, 0.445826,
		0.210453, 0.540488, 0.814605,
		-0.905333, -0.206677, 0.371022,
		28.862808, 27.556074, 20.092829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605343, 27.660463, 20.639380>,  <29.496542, 27.700747, 19.833113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605343, 27.660463, 20.639380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.266127, 27.475990, 20.534969>,  <29.062597, 27.365307, 20.472322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.266127, 27.475990, 20.534969>,  <29.605343, 27.660463, 20.639380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266127, 27.475990, 20.534969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277504, -0.806108, 0.522668,
		-0.451461, 0.370809, 0.811594,
		-0.848042, -0.461184, -0.261025,
		29.011715, 27.337635, 20.456661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227564, 27.378477, 21.289923>,  <29.605343, 27.660463, 20.639380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227564, 27.378477, 21.289923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.093132, 27.163597, 20.980480>,  <29.012472, 27.034670, 20.794815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.093132, 27.163597, 20.980480>,  <29.227564, 27.378477, 21.289923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093132, 27.163597, 20.980480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261227, -0.842324, 0.471434,
		-0.904881, -0.043647, 0.423421,
		-0.336081, -0.537200, -0.773605,
		28.992308, 27.002438, 20.748398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025558, 26.848406, 21.666010>,  <29.227564, 27.378477, 21.289923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025558, 26.848406, 21.666010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.042982, 26.741989, 21.280819>,  <29.053436, 26.678139, 21.049704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.042982, 26.741989, 21.280819>,  <29.025558, 26.848406, 21.666010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042982, 26.741989, 21.280819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230344, -0.935247, 0.268801,
		-0.972134, -0.233524, 0.020544,
		0.043558, -0.266043, -0.962977,
		29.056049, 26.662176, 20.991926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572540, 26.373781, 21.437206>,  <29.025558, 26.848406, 21.666010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572540, 26.373781, 21.437206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.845083, 26.288227, 21.157204>,  <29.008610, 26.236895, 20.989202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.845083, 26.288227, 21.157204>,  <28.572540, 26.373781, 21.437206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845083, 26.288227, 21.157204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092164, -0.923672, 0.371935,
		-0.726126, -0.317936, -0.609637,
		0.681356, -0.213885, -0.700005,
		29.049490, 26.224062, 20.947203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510447, 25.701939, 21.316975>,  <28.572540, 26.373781, 21.437206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510447, 25.701939, 21.316975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.859949, 25.733913, 21.125072>,  <29.069651, 25.753098, 21.009932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.859949, 25.733913, 21.125072>,  <28.510447, 25.701939, 21.316975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859949, 25.733913, 21.125072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208662, -0.952621, 0.221301,
		-0.439333, -0.293469, -0.849036,
		0.873754, 0.079937, -0.479753,
		29.122076, 25.757895, 20.981146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.520910, 25.282059, 20.735666>,  <28.510447, 25.701939, 21.316975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.520910, 25.282059, 20.735666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.891371, 25.322090, 20.881119>,  <29.113647, 25.346109, 20.968390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.891371, 25.322090, 20.881119>,  <28.520910, 25.282059, 20.735666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891371, 25.322090, 20.881119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069106, -0.992858, 0.097251,
		0.370765, -0.064941, -0.926454,
		0.926152, 0.100081, 0.363629,
		29.169216, 25.352114, 20.990208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930855, 24.862703, 20.365396>,  <28.520910, 25.282059, 20.735666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930855, 24.862703, 20.365396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.170433, 24.934303, 20.677608>,  <29.314180, 24.977262, 20.864935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.170433, 24.934303, 20.677608>,  <28.930855, 24.862703, 20.365396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170433, 24.934303, 20.677608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181321, -0.979697, 0.085537,
		0.779992, 0.090295, -0.619240,
		0.598944, 0.179000, 0.780528,
		29.350117, 24.988003, 20.911768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541882, 24.519526, 20.122725>,  <28.930855, 24.862703, 20.365396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541882, 24.519526, 20.122725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.564482, 24.568665, 20.519051>,  <29.578043, 24.598148, 20.756845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.564482, 24.568665, 20.519051>,  <29.541882, 24.519526, 20.122725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564482, 24.568665, 20.519051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257468, -0.960628, 0.104423,
		0.964634, 0.249203, -0.085906,
		0.056501, 0.122848, 0.990816,
		29.581432, 24.605518, 20.816296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.294201, 24.236876, 20.301004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.089266, 24.247093, 20.644367>,  <29.966305, 24.253223, 20.850384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.089266, 24.247093, 20.644367>,  <30.294201, 24.236876, 20.301004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089266, 24.247093, 20.644367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184529, -0.972936, 0.139086,
		0.838726, 0.229660, 0.493757,
		-0.512336, 0.025543, 0.858405,
		29.935564, 24.254755, 20.901888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749775, 24.146646, 20.874868>,  <30.294201, 24.236876, 20.301004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749775, 24.146646, 20.874868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.389194, 24.031925, 21.004562>,  <30.172846, 23.963093, 21.082378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.389194, 24.031925, 21.004562>,  <30.749775, 24.146646, 20.874868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389194, 24.031925, 21.004562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349018, -0.924628, 0.152475,
		0.256068, 0.250613, 0.933607,
		-0.901452, -0.286802, 0.324237,
		30.118759, 23.945885, 21.101833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836939, 23.903549, 21.567492>,  <30.749775, 24.146646, 20.874868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836939, 23.903549, 21.567492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.502590, 23.728252, 21.435272>,  <30.301981, 23.623074, 21.355940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.502590, 23.728252, 21.435272>,  <30.836939, 23.903549, 21.567492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502590, 23.728252, 21.435272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335282, -0.884398, 0.324694,
		-0.434632, 0.160575, 0.886178,
		-0.835872, -0.438242, -0.330549,
		30.251829, 23.596781, 21.336107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716740, 23.463087, 22.064930>,  <30.836939, 23.903549, 21.567492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716740, 23.463087, 22.064930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.463299, 23.338268, 21.781754>,  <30.311235, 23.263378, 21.611849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.463299, 23.338268, 21.781754>,  <30.716740, 23.463087, 22.064930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463299, 23.338268, 21.781754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093119, -0.939158, 0.330621,
		-0.768036, 0.143559, 0.624109,
		-0.633600, -0.312045, -0.707940,
		30.273218, 23.244656, 21.569372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142460, 23.132607, 22.406378>,  <30.716740, 23.463087, 22.064930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142460, 23.132607, 22.406378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.172440, 22.979477, 22.038067>,  <30.190428, 22.887600, 21.817080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.172440, 22.979477, 22.038067>,  <30.142460, 23.132607, 22.406378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172440, 22.979477, 22.038067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012732, -0.922931, 0.384754,
		-0.997106, -0.040560, -0.064298,
		0.074948, -0.382822, -0.920777,
		30.194923, 22.864630, 21.761833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597654, 22.514774, 22.362921>,  <30.142460, 23.132607, 22.406378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597654, 22.514774, 22.362921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.839401, 22.441628, 22.052746>,  <29.984449, 22.397739, 21.866642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.839401, 22.441628, 22.052746>,  <29.597654, 22.514774, 22.362921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839401, 22.441628, 22.052746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016917, -0.976028, 0.216986,
		-0.796526, -0.118021, -0.592973,
		0.604367, -0.182866, -0.775435,
		30.020712, 22.386768, 21.820114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445982, 21.815386, 22.156685>,  <29.597654, 22.514774, 22.362921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445982, 21.815386, 22.156685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.793753, 21.868275, 21.966270>,  <30.002415, 21.900007, 21.852022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.793753, 21.868275, 21.966270>,  <29.445982, 21.815386, 22.156685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793753, 21.868275, 21.966270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221177, -0.965745, 0.135712,
		-0.441787, -0.223281, -0.868890,
		0.869428, 0.132223, -0.476038,
		30.054581, 21.907942, 21.823460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483492, 21.232542, 21.722622>,  <29.445982, 21.815386, 22.156685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483492, 21.232542, 21.722622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.858803, 21.351337, 21.793545>,  <30.083988, 21.422615, 21.836100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.858803, 21.351337, 21.793545>,  <29.483492, 21.232542, 21.722622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858803, 21.351337, 21.793545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286037, -0.954439, 0.085020,
		0.194479, -0.029055, -0.980476,
		0.938275, 0.296987, 0.177308,
		30.140285, 21.440434, 21.846737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849167, 20.780396, 21.371696>,  <29.483492, 21.232542, 21.722622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849167, 20.780396, 21.371696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.080294, 20.913239, 21.669914>,  <30.218969, 20.992945, 21.848845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.080294, 20.913239, 21.669914>,  <29.849167, 20.780396, 21.371696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080294, 20.913239, 21.669914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235869, -0.942439, 0.237011,
		0.781342, 0.038902, -0.622890,
		0.577815, 0.332107, 0.745543,
		30.253639, 21.012871, 21.893578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443504, 20.229460, 21.246075>,  <29.849167, 20.780396, 21.371696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443504, 20.229460, 21.246075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.470219, 20.425087, 21.593948>,  <30.486248, 20.542463, 21.802673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.470219, 20.425087, 21.593948>,  <30.443504, 20.229460, 21.246075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470219, 20.425087, 21.593948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193270, -0.861464, 0.469603,
		0.978870, 0.136720, -0.152057,
		0.066788, 0.489068, 0.869685,
		30.490255, 20.571808, 21.854855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860855, 19.852119, 21.587585>,  <30.443504, 20.229460, 21.246075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860855, 19.852119, 21.587585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.679543, 20.057568, 21.878990>,  <30.570755, 20.180838, 22.053833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.679543, 20.057568, 21.878990>,  <30.860855, 19.852119, 21.587585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679543, 20.057568, 21.878990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077465, -0.791505, 0.606234,
		0.887996, 0.331228, 0.318985,
		-0.453280, 0.513623, 0.728512,
		30.543558, 20.211655, 22.097544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328285, 19.637430, 22.267523>,  <30.860855, 19.852119, 21.587585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328285, 19.637430, 22.267523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.954472, 19.758972, 22.341621>,  <30.730183, 19.831898, 22.386080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.954472, 19.758972, 22.341621>,  <31.328285, 19.637430, 22.267523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954472, 19.758972, 22.341621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111197, -0.743806, 0.659081,
		0.338053, 0.595336, 0.728900,
		-0.934535, 0.303856, 0.185246,
		30.674110, 19.850128, 22.397196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230412, 19.439014, 22.930986>,  <31.328285, 19.637430, 22.267523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230412, 19.439014, 22.930986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.850803, 19.502602, 22.822109>,  <30.623039, 19.540754, 22.756783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.850803, 19.502602, 22.822109>,  <31.230412, 19.439014, 22.930986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850803, 19.502602, 22.822109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275751, -0.837039, 0.472574,
		-0.152714, 0.523541, 0.838203,
		-0.949020, 0.158966, -0.272195,
		30.566097, 19.550291, 22.740450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900787, 19.422302, 23.523680>,  <31.230412, 19.439014, 22.930986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900787, 19.422302, 23.523680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.597588, 19.366226, 23.268875>,  <30.415668, 19.332581, 23.115992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.597588, 19.366226, 23.268875>,  <30.900787, 19.422302, 23.523680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597588, 19.366226, 23.268875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404006, -0.665819, 0.627267,
		-0.512074, 0.732824, 0.448051,
		-0.757997, -0.140192, -0.637014,
		30.370188, 19.324169, 23.077770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340954, 19.447895, 23.897030>,  <30.900787, 19.422302, 23.523680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340954, 19.447895, 23.897030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.226280, 19.232868, 23.579834>,  <30.157476, 19.103851, 23.389517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.226280, 19.232868, 23.579834>,  <30.340954, 19.447895, 23.897030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226280, 19.232868, 23.579834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439243, -0.661852, 0.607468,
		-0.851397, 0.522467, -0.046381,
		-0.286685, -0.537569, -0.792989,
		30.140274, 19.071598, 23.341938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562778, 19.264660, 23.985874>,  <30.340954, 19.447895, 23.897030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562778, 19.264660, 23.985874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.702866, 19.002487, 23.718216>,  <29.786919, 18.845184, 23.557621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.702866, 19.002487, 23.718216>,  <29.562778, 19.264660, 23.985874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702866, 19.002487, 23.718216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611306, -0.701210, 0.366891,
		-0.709687, 0.280566, -0.646241,
		0.350213, -0.655429, -0.669151,
		29.807932, 18.805859, 23.517471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936357, 18.962875, 23.716166>,  <29.562778, 19.264660, 23.985874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936357, 18.962875, 23.716166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.262327, 18.735855, 23.669197>,  <29.457909, 18.599644, 23.641016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.262327, 18.735855, 23.669197>,  <28.936357, 18.962875, 23.716166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262327, 18.735855, 23.669197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417839, -0.715733, 0.559587,
		-0.401635, -0.406957, -0.820412,
		0.814923, -0.567549, -0.117421,
		29.506804, 18.565590, 23.633970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685686, 18.384150, 23.469643>,  <28.936357, 18.962875, 23.716166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685686, 18.384150, 23.469643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.043476, 18.285145, 23.618587>,  <29.258150, 18.225742, 23.707954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.043476, 18.285145, 23.618587>,  <28.685686, 18.384150, 23.469643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043476, 18.285145, 23.618587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416564, -0.763891, 0.492894,
		0.162447, -0.595993, -0.786386,
		0.894475, -0.247511, 0.372362,
		29.311819, 18.210892, 23.730295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646486, 17.651861, 23.482935>,  <28.685686, 18.384150, 23.469643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646486, 17.651861, 23.482935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.983128, 17.714611, 23.689659>,  <29.185112, 17.752260, 23.813694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.983128, 17.714611, 23.689659>,  <28.646486, 17.651861, 23.482935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983128, 17.714611, 23.689659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100930, -0.894348, 0.435838,
		0.530579, -0.418965, -0.736854,
		0.841605, 0.156875, 0.516809,
		29.235609, 17.761673, 23.844702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108015, 17.037895, 23.380054>,  <28.646486, 17.651861, 23.482935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108015, 17.037895, 23.380054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.248083, 17.223869, 23.705315>,  <29.332125, 17.335455, 23.900471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.248083, 17.223869, 23.705315>,  <29.108015, 17.037895, 23.380054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248083, 17.223869, 23.705315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003757, -0.867410, 0.497579,
		0.936678, -0.177293, -0.301995,
		0.350171, 0.464937, 0.813151,
		29.353134, 17.363350, 23.949261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765322, 16.727385, 23.690180>,  <29.108015, 17.037895, 23.380054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765322, 16.727385, 23.690180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.633799, 16.928814, 24.009754>,  <29.554884, 17.049671, 24.201500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.633799, 16.928814, 24.009754>,  <29.765322, 16.727385, 23.690180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633799, 16.928814, 24.009754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170611, -0.800383, 0.574700,
		0.928858, 0.325273, 0.177257,
		-0.328808, 0.503573, 0.798937,
		29.535156, 17.079885, 24.249435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178505, 16.696404, 24.207024>,  <29.765322, 16.727385, 23.690180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178505, 16.696404, 24.207024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.825176, 16.755539, 24.384960>,  <29.613178, 16.791021, 24.491722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.825176, 16.755539, 24.384960>,  <30.178505, 16.696404, 24.207024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825176, 16.755539, 24.384960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018226, -0.937415, 0.347736,
		0.468410, 0.315271, 0.825346,
		-0.883323, 0.147840, 0.444841,
		29.560179, 16.799891, 24.518412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192846, 16.214603, 24.775686>,  <30.178505, 16.696404, 24.207024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192846, 16.214603, 24.775686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.801212, 16.295975, 24.776928>,  <29.566233, 16.344797, 24.777672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.801212, 16.295975, 24.776928>,  <30.192846, 16.214603, 24.775686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801212, 16.295975, 24.776928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190300, -0.921088, 0.339680,
		0.071957, 0.331986, 0.940536,
		-0.979085, 0.203427, 0.003102,
		29.507486, 16.357002, 24.777859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785358, 15.715695, 25.017889>,  <30.192846, 16.214603, 24.775686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785358, 15.715695, 25.017889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.060310, 15.664547, 25.303871>,  <31.225281, 15.633858, 25.475460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.060310, 15.664547, 25.303871>,  <30.785358, 15.715695, 25.017889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060310, 15.664547, 25.303871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520562, 0.773195, -0.362195,
		-0.506484, 0.621143, 0.598043,
		0.687379, -0.127872, 0.714954,
		31.266523, 15.626185, 25.518356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908266, 16.281185, 25.409260>,  <30.785358, 15.715695, 25.017889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908266, 16.281185, 25.409260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.254030, 16.082951, 25.375336>,  <31.461489, 15.964010, 25.354980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.254030, 16.082951, 25.375336>,  <30.908266, 16.281185, 25.409260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254030, 16.082951, 25.375336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347012, 0.710109, -0.612640,
		0.363839, 0.500142, 0.785798,
		0.864410, -0.495584, -0.084810,
		31.513353, 15.934276, 25.349892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443323, 16.760702, 25.528471>,  <30.908266, 16.281185, 25.409260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443323, 16.760702, 25.528471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.632452, 16.482960, 25.311470>,  <31.745930, 16.316315, 25.181269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.632452, 16.482960, 25.311470>,  <31.443323, 16.760702, 25.528471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632452, 16.482960, 25.311470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477696, 0.719333, -0.504347,
		0.740437, -0.020686, 0.671807,
		0.472820, -0.694357, -0.542503,
		31.774298, 16.274652, 25.148720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119125, 16.821301, 25.669544>,  <31.443323, 16.760702, 25.528471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119125, 16.821301, 25.669544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.098988, 16.639538, 25.313797>,  <32.086906, 16.530479, 25.100348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.098988, 16.639538, 25.313797>,  <32.119125, 16.821301, 25.669544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098988, 16.639538, 25.313797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399833, 0.806853, -0.434882,
		0.915205, -0.377493, 0.141067,
		-0.050345, -0.454409, -0.889369,
		32.083885, 16.503216, 25.046986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752506, 16.767473, 25.426935>,  <32.119125, 16.821301, 25.669544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752506, 16.767473, 25.426935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.523224, 16.733288, 25.100960>,  <32.385654, 16.712776, 24.905375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.523224, 16.733288, 25.100960>,  <32.752506, 16.767473, 25.426935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523224, 16.733288, 25.100960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545056, 0.702842, -0.457085,
		0.611838, -0.706194, -0.356293,
		-0.573209, -0.085462, -0.814940,
		32.351261, 16.707649, 24.856478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261112, 16.859053, 24.863050>,  <32.752506, 16.767473, 25.426935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261112, 16.859053, 24.863050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.894775, 16.915863, 24.712818>,  <32.674973, 16.949949, 24.622679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.894775, 16.915863, 24.712818>,  <33.261112, 16.859053, 24.863050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894775, 16.915863, 24.712818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322460, 0.817512, -0.477173,
		0.239270, -0.558125, -0.794510,
		-0.915844, 0.142025, -0.375579,
		32.620022, 16.958471, 24.600145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296307, 16.899080, 24.141493>,  <33.261112, 16.859053, 24.863050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296307, 16.899080, 24.141493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.983932, 17.123215, 24.251888>,  <32.796509, 17.257696, 24.318125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.983932, 17.123215, 24.251888>,  <33.296307, 16.899080, 24.141493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983932, 17.123215, 24.251888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362970, 0.766693, -0.529560,
		-0.508331, -0.313375, -0.802120,
		-0.780931, 0.560337, 0.275988,
		32.749653, 17.291315, 24.334684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311378, 17.321669, 23.618916>,  <33.296307, 16.899080, 24.141493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311378, 17.321669, 23.618916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.024654, 17.500210, 23.833187>,  <32.852619, 17.607334, 23.961750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.024654, 17.500210, 23.833187>,  <33.311378, 17.321669, 23.618916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024654, 17.500210, 23.833187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148293, 0.848268, -0.508380,
		-0.681318, -0.284973, -0.674237,
		-0.716809, 0.446353, 0.535681,
		32.809612, 17.634115, 23.993891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956192, 17.651527, 23.106794>,  <33.311378, 17.321669, 23.618916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956192, 17.651527, 23.106794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.862160, 17.837307, 23.448326>,  <32.805740, 17.948774, 23.653244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.862160, 17.837307, 23.448326>,  <32.956192, 17.651527, 23.106794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862160, 17.837307, 23.448326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068139, 0.868410, -0.491142,
		-0.969584, -0.173639, -0.172502,
		-0.235083, 0.464449, 0.853828,
		32.791634, 17.976643, 23.704475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540081, 18.127920, 22.878811>,  <32.956192, 17.651527, 23.106794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540081, 18.127920, 22.878811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.656071, 18.277901, 23.231022>,  <32.725666, 18.367889, 23.442348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.656071, 18.277901, 23.231022>,  <32.540081, 18.127920, 22.878811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656071, 18.277901, 23.231022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159584, 0.926120, -0.341811,
		-0.943636, -0.041402, 0.328385,
		0.289973, 0.374950, 0.880527,
		32.743061, 18.390387, 23.495180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079536, 18.738605, 23.048323>,  <32.540081, 18.127920, 22.878811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079536, 18.738605, 23.048323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436466, 18.788319, 23.221905>,  <32.650623, 18.818148, 23.326054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436466, 18.788319, 23.221905>,  <32.079536, 18.738605, 23.048323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436466, 18.788319, 23.221905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052955, 0.925890, -0.374063,
		-0.448286, 0.356763, 0.819609,
		0.892320, 0.124285, 0.433956,
		32.704163, 18.825603, 23.352091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982496, 19.364227, 23.345360>,  <32.079536, 18.738605, 23.048323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982496, 19.364227, 23.345360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.380249, 19.324223, 23.331474>,  <32.618900, 19.300220, 23.323143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.380249, 19.324223, 23.331474>,  <31.982496, 19.364227, 23.345360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380249, 19.324223, 23.331474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085624, 0.952625, -0.291847,
		0.062258, 0.287234, 0.955835,
		0.994380, -0.100013, -0.034715,
		32.678562, 19.294218, 23.321060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221458, 19.931915, 23.767986>,  <31.982496, 19.364227, 23.345360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221458, 19.931915, 23.767986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.540146, 19.833813, 23.547050>,  <32.731358, 19.774952, 23.414488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.540146, 19.833813, 23.547050>,  <32.221458, 19.931915, 23.767986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540146, 19.833813, 23.547050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111112, 0.957818, -0.265027,
		0.594042, 0.149782, 0.790367,
		0.796723, -0.245256, -0.552342,
		32.779163, 19.760237, 23.381348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681438, 20.457237, 23.904799>,  <32.221458, 19.931915, 23.767986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681438, 20.457237, 23.904799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.796375, 20.294857, 23.557781>,  <32.865337, 20.197428, 23.349571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.796375, 20.294857, 23.557781>,  <32.681438, 20.457237, 23.904799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796375, 20.294857, 23.557781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083712, 0.912922, -0.399458,
		0.954161, 0.042159, 0.296308,
		0.287347, -0.405951, -0.867545,
		32.882580, 20.173071, 23.297518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314342, 20.865894, 23.636892>,  <32.681438, 20.457237, 23.904799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314342, 20.865894, 23.636892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.135002, 20.696629, 23.321953>,  <33.027397, 20.595070, 23.132990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.135002, 20.696629, 23.321953>,  <33.314342, 20.865894, 23.636892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135002, 20.696629, 23.321953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090143, 0.897755, -0.431172,
		0.889303, -0.122340, -0.440650,
		-0.448346, -0.423165, -0.787348,
		33.000500, 20.569679, 23.085749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644787, 21.322199, 23.169607>,  <33.314342, 20.865894, 23.636892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644787, 21.322199, 23.169607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.376011, 21.119991, 22.953110>,  <33.214745, 20.998667, 22.823212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.376011, 21.119991, 22.953110>,  <33.644787, 21.322199, 23.169607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376011, 21.119991, 22.953110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037825, 0.753286, -0.656605,
		0.739635, -0.420729, -0.525287,
		-0.671944, -0.505517, -0.541242,
		33.174427, 20.968336, 22.790737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868561, 21.179934, 22.457191>,  <33.644787, 21.322199, 23.169607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868561, 21.179934, 22.457191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.471313, 21.138931, 22.434547>,  <33.232964, 21.114330, 22.420961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.471313, 21.138931, 22.434547>,  <33.868561, 21.179934, 22.457191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471313, 21.138931, 22.434547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044787, 0.779176, -0.625204,
		0.108196, -0.618367, -0.778406,
		-0.993120, -0.102507, -0.056609,
		33.173378, 21.108179, 22.417564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721928, 21.121357, 21.724924>,  <33.868561, 21.179934, 22.457191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721928, 21.121357, 21.724924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.399250, 21.258289, 21.917614>,  <33.205643, 21.340448, 22.033228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.399250, 21.258289, 21.917614>,  <33.721928, 21.121357, 21.724924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399250, 21.258289, 21.917614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097159, 0.880871, -0.463277,
		-0.582934, -0.326917, -0.743851,
		-0.806690, 0.342332, 0.481727,
		33.157242, 21.360989, 22.062132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319916, 21.498640, 21.267019>,  <33.721928, 21.121357, 21.724924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319916, 21.498640, 21.267019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.145710, 21.646412, 21.595371>,  <33.041187, 21.735075, 21.792383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.145710, 21.646412, 21.595371>,  <33.319916, 21.498640, 21.267019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145710, 21.646412, 21.595371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025845, 0.906399, -0.421631,
		-0.899809, -0.204843, -0.385205,
		-0.435517, 0.369432, 0.820881,
		33.015053, 21.757242, 21.841635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019886, 22.083017, 21.083580>,  <33.319916, 21.498640, 21.267019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019886, 22.083017, 21.083580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.076729, 22.143215, 21.474918>,  <33.110832, 22.179335, 21.709721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.076729, 22.143215, 21.474918>,  <33.019886, 22.083017, 21.083580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076729, 22.143215, 21.474918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029646, 0.988578, -0.147765,
		-0.989408, -0.008007, 0.144941,
		0.142103, 0.150497, 0.978345,
		33.119358, 22.188364, 21.768421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396873, 22.579531, 21.249578>,  <33.019886, 22.083017, 21.083580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396873, 22.579531, 21.249578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675987, 22.590763, 21.535881>,  <32.843456, 22.597502, 21.707663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675987, 22.590763, 21.535881>,  <32.396873, 22.579531, 21.249578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675987, 22.590763, 21.535881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015996, 0.999593, -0.023622,
		-0.716126, 0.005034, 0.697953,
		0.697788, 0.028081, 0.715754,
		32.885323, 22.599188, 21.750607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<21.572237, 39.483509, 13.908528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.861769, 39.272625, 13.730483>,  <22.035488, 39.146095, 13.623656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.861769, 39.272625, 13.730483>,  <21.572237, 39.483509, 13.908528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.861769, 39.272625, 13.730483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209524, -0.782596, 0.586211,
		-0.657397, -0.331056, -0.676928,
		0.723830, -0.527206, -0.445112,
		22.078917, 39.114464, 13.596949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.246023, 38.935623, 13.568134>,  <21.572237, 39.483509, 13.908528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.246023, 38.935623, 13.568134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.630064, 38.838631, 13.623855>,  <21.860489, 38.780434, 13.657287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.630064, 38.838631, 13.623855>,  <21.246023, 38.935623, 13.568134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.630064, 38.838631, 13.623855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277168, -0.758922, 0.589250,
		-0.037165, -0.604350, -0.795852,
		0.960103, -0.242484, 0.139301,
		21.918095, 38.765884, 13.665645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.271563, 38.207371, 13.477430>,  <21.246023, 38.935623, 13.568134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.271563, 38.207371, 13.477430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.610834, 38.302124, 13.666945>,  <21.814398, 38.358978, 13.780655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.610834, 38.302124, 13.666945>,  <21.271563, 38.207371, 13.477430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.610834, 38.302124, 13.666945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232739, -0.636818, 0.735048,
		0.475840, -0.733722, -0.485003,
		0.848180, 0.236886, 0.473789,
		21.865288, 38.373188, 13.809082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.444229, 37.534393, 13.720016>,  <21.271563, 38.207371, 13.477430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.444229, 37.534393, 13.720016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.636690, 37.808350, 13.938891>,  <21.752167, 37.972725, 14.070216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.636690, 37.808350, 13.938891>,  <21.444229, 37.534393, 13.720016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.636690, 37.808350, 13.938891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177654, -0.535059, 0.825924,
		0.858446, -0.494607, -0.135772,
		0.481154, 0.684891, 0.547188,
		21.781036, 38.013817, 14.103048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.031021, 37.152409, 14.074553>,  <21.444229, 37.534393, 13.720016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.031021, 37.152409, 14.074553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.966717, 37.496792, 14.267596>,  <21.928135, 37.703423, 14.383422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.966717, 37.496792, 14.267596>,  <22.031021, 37.152409, 14.074553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.966717, 37.496792, 14.267596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081534, -0.498879, 0.862828,
		0.983620, 0.099359, 0.150396,
		-0.160760, 0.860958, 0.482606,
		21.918489, 37.755077, 14.412378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.415928, 37.064034, 14.643239>,  <22.031021, 37.152409, 14.074553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.415928, 37.064034, 14.643239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.177834, 37.364338, 14.757815>,  <22.034977, 37.544521, 14.826561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.177834, 37.364338, 14.757815>,  <22.415928, 37.064034, 14.643239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.177834, 37.364338, 14.757815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030028, -0.335438, 0.941584,
		0.802992, 0.569064, 0.177120,
		-0.595234, 0.750765, 0.286441,
		21.999264, 37.589569, 14.843748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.727306, 37.496830, 15.278842>,  <22.415928, 37.064034, 14.643239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.727306, 37.496830, 15.278842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.328878, 37.532009, 15.283107>,  <22.089823, 37.553116, 15.285666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.328878, 37.532009, 15.283107>,  <22.727306, 37.496830, 15.278842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.328878, 37.532009, 15.283107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024214, -0.386031, 0.922168,
		0.085221, 0.918283, 0.386643,
		-0.996068, 0.087950, 0.010663,
		22.030058, 37.558395, 15.286305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.570099, 37.785889, 15.962029>,  <22.727306, 37.496830, 15.278842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.570099, 37.785889, 15.962029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.212074, 37.653191, 15.842822>,  <21.997259, 37.573574, 15.771297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.212074, 37.653191, 15.842822>,  <22.570099, 37.785889, 15.962029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.212074, 37.653191, 15.842822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209028, -0.278222, 0.937496,
		-0.393923, 0.901409, 0.179682,
		-0.895060, -0.331743, -0.298018,
		21.943556, 37.553669, 15.753417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.145168, 38.023979, 16.421623>,  <22.570099, 37.785889, 15.962029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.145168, 38.023979, 16.421623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.924734, 37.732780, 16.258492>,  <21.792473, 37.558060, 16.160612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.924734, 37.732780, 16.258492>,  <22.145168, 38.023979, 16.421623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.924734, 37.732780, 16.258492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227690, -0.339009, 0.912814,
		-0.802784, 0.595898, 0.021066,
		-0.551086, -0.727996, -0.407831,
		21.759409, 37.514381, 16.136143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.413284, 38.066654, 16.685640>,  <22.145168, 38.023979, 16.421623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.413284, 38.066654, 16.685640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.479435, 37.689873, 16.568764>,  <21.519125, 37.463802, 16.498638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.479435, 37.689873, 16.568764>,  <21.413284, 38.066654, 16.685640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.479435, 37.689873, 16.568764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386860, -0.334485, 0.859336,
		-0.907188, -0.029077, -0.419720,
		0.165377, -0.941953, -0.292192,
		21.529049, 37.407288, 16.481106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.829674, 37.691986, 16.969631>,  <21.413284, 38.066654, 16.685640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.829674, 37.691986, 16.969631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.111872, 37.430305, 16.860600>,  <21.281191, 37.273296, 16.795181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.111872, 37.430305, 16.860600>,  <20.829674, 37.691986, 16.969631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.111872, 37.430305, 16.860600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185536, -0.541680, 0.819853,
		-0.684000, -0.527828, -0.503530,
		0.705493, -0.654202, -0.272578,
		21.323521, 37.234043, 16.778826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.415031, 37.041912, 16.985033>,  <20.829674, 37.691986, 16.969631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.415031, 37.041912, 16.985033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.811043, 37.006088, 17.028522>,  <21.048651, 36.984596, 17.054617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.811043, 37.006088, 17.028522>,  <20.415031, 37.041912, 16.985033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.811043, 37.006088, 17.028522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140304, -0.558527, 0.817534,
		-0.012491, -0.824637, -0.565524,
		0.990029, -0.089557, 0.108723,
		21.108051, 36.979221, 17.061140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.469257, 36.356472, 17.154169>,  <20.415031, 37.041912, 16.985033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.469257, 36.356472, 17.154169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.813885, 36.505016, 17.292614>,  <21.020660, 36.594143, 17.375681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.813885, 36.505016, 17.292614>,  <20.469257, 36.356472, 17.154169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.813885, 36.505016, 17.292614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008920, -0.670622, 0.741746,
		0.507567, -0.642150, -0.574473,
		0.861566, 0.371361, 0.346113,
		21.072355, 36.616425, 17.396448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.803135, 35.790417, 17.279711>,  <20.469257, 36.356472, 17.154169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.803135, 35.790417, 17.279711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.040377, 36.051430, 17.468361>,  <21.182722, 36.208038, 17.581551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.040377, 36.051430, 17.468361>,  <20.803135, 35.790417, 17.279711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.040377, 36.051430, 17.468361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046315, -0.557159, 0.829113,
		0.803792, -0.513594, -0.300232,
		0.593105, 0.652530, 0.471627,
		21.218307, 36.247189, 17.609848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.379496, 35.410126, 17.515190>,  <20.803135, 35.790417, 17.279711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.379496, 35.410126, 17.515190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.393505, 35.730907, 17.753735>,  <21.401911, 35.923378, 17.896860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.393505, 35.730907, 17.753735>,  <21.379496, 35.410126, 17.515190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.393505, 35.730907, 17.753735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255801, -0.569653, 0.781064,
		0.966095, -0.179905, 0.185189,
		0.035024, 0.801953, 0.596359,
		21.404013, 35.971493, 17.932642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.838602, 35.158298, 18.053606>,  <21.379496, 35.410126, 17.515190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.838602, 35.158298, 18.053606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.667746, 35.485058, 18.208645>,  <21.565231, 35.681114, 18.301668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.667746, 35.485058, 18.208645>,  <21.838602, 35.158298, 18.053606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.667746, 35.485058, 18.208645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016054, -0.421749, 0.906570,
		0.904042, 0.393457, 0.167033,
		-0.427142, 0.816896, 0.387596,
		21.539602, 35.730125, 18.324924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.257000, 35.263046, 18.502129>,  <21.838602, 35.158298, 18.053606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.257000, 35.263046, 18.502129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.924965, 35.439487, 18.638588>,  <21.725744, 35.545353, 18.720463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.924965, 35.439487, 18.638588>,  <22.257000, 35.263046, 18.502129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.924965, 35.439487, 18.638588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171663, -0.379934, 0.908945,
		0.530553, 0.813067, 0.239658,
		-0.830088, 0.441103, 0.341149,
		21.675938, 35.571819, 18.740932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.429201, 35.636528, 19.186052>,  <22.257000, 35.263046, 18.502129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.429201, 35.636528, 19.186052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.032074, 35.590343, 19.198570>,  <21.793797, 35.562634, 19.206081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.032074, 35.590343, 19.198570>,  <22.429201, 35.636528, 19.186052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.032074, 35.590343, 19.198570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083615, -0.482709, 0.871780,
		-0.085551, 0.868136, 0.488897,
		-0.992819, -0.115461, 0.031293,
		21.734228, 35.555706, 19.207958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.206450, 35.912292, 19.904716>,  <22.429201, 35.636528, 19.186052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.206450, 35.912292, 19.904716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.920252, 35.679668, 19.749874>,  <21.748533, 35.540092, 19.656969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.920252, 35.679668, 19.749874>,  <22.206450, 35.912292, 19.904716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.920252, 35.679668, 19.749874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062522, -0.498576, 0.864589,
		-0.695816, 0.642810, 0.320367,
		-0.715493, -0.581565, -0.387107,
		21.705605, 35.505199, 19.633741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.606901, 35.857311, 20.424011>,  <22.206450, 35.912292, 19.904716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.606901, 35.857311, 20.424011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.518711, 35.548405, 20.185688>,  <21.465797, 35.363060, 20.042694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.518711, 35.548405, 20.185688>,  <21.606901, 35.857311, 20.424011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.518711, 35.548405, 20.185688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183758, -0.567017, 0.802947,
		-0.957927, 0.286514, -0.016898,
		-0.220475, -0.772270, -0.595810,
		21.452568, 35.316723, 20.006945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.879446, 35.581318, 20.540358>,  <21.606901, 35.857311, 20.424011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.879446, 35.581318, 20.540358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.093176, 35.282166, 20.382793>,  <21.221415, 35.102673, 20.288256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.093176, 35.282166, 20.382793>,  <20.879446, 35.581318, 20.540358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.093176, 35.282166, 20.382793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172825, -0.552829, 0.815176,
		-0.827422, -0.367492, -0.424644,
		0.534326, -0.747884, -0.393911,
		21.253473, 35.057800, 20.264620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.782364, 36.146832, 21.103998>,  <20.879446, 35.581318, 20.540358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.782364, 36.146832, 21.103998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.668829, 36.460773, 21.324341>,  <20.600708, 36.649139, 21.456547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.668829, 36.460773, 21.324341>,  <20.782364, 36.146832, 21.103998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.668829, 36.460773, 21.324341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027953, 0.581011, -0.813416,
		-0.958465, -0.215481, -0.186853,
		-0.283839, 0.784853, 0.550855,
		20.583677, 36.696228, 21.489597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.277599, 36.467133, 20.686663>,  <20.782364, 36.146832, 21.103998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.277599, 36.467133, 20.686663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.390903, 36.754543, 20.940742>,  <20.458885, 36.926991, 21.093191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.390903, 36.754543, 20.940742>,  <20.277599, 36.467133, 20.686663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.390903, 36.754543, 20.940742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008757, 0.660362, -0.750896,
		-0.959004, 0.218260, 0.180761,
		0.283259, 0.718529, 0.635201,
		20.475882, 36.970100, 21.131302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.855991, 37.026810, 20.529251>,  <20.277599, 36.467133, 20.686663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.855991, 37.026810, 20.529251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.180670, 37.165730, 20.717094>,  <20.375477, 37.249081, 20.829800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.180670, 37.165730, 20.717094>,  <19.855991, 37.026810, 20.529251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.180670, 37.165730, 20.717094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170193, 0.628485, -0.758974,
		-0.558733, 0.695980, 0.451030,
		0.811697, 0.347302, 0.469606,
		20.424179, 37.269920, 20.857977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.793839, 37.733379, 20.442764>,  <19.855991, 37.026810, 20.529251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.793839, 37.733379, 20.442764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.184477, 37.676758, 20.507542>,  <20.418859, 37.642784, 20.546408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.184477, 37.676758, 20.507542>,  <19.793839, 37.733379, 20.442764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.184477, 37.676758, 20.507542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214915, 0.672680, -0.708035,
		-0.008712, 0.726267, 0.687357,
		0.976594, -0.141555, 0.161946,
		20.477455, 37.634293, 20.556126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.067024, 38.419449, 20.369204>,  <19.793839, 37.733379, 20.442764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.067024, 38.419449, 20.369204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.399900, 38.199841, 20.338131>,  <20.599627, 38.068077, 20.319489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.399900, 38.199841, 20.338131>,  <20.067024, 38.419449, 20.369204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.399900, 38.199841, 20.338131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401402, 0.693142, -0.598690,
		0.382537, 0.467044, 0.797205,
		0.832191, -0.549021, -0.077680,
		20.649557, 38.035133, 20.314827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.498579, 38.887066, 20.524935>,  <20.067024, 38.419449, 20.369204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.498579, 38.887066, 20.524935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.692492, 38.605415, 20.317402>,  <20.808840, 38.436424, 20.192883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.692492, 38.605415, 20.317402>,  <20.498579, 38.887066, 20.524935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.692492, 38.605415, 20.317402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606442, 0.698055, -0.380720,
		0.630251, -0.130077, 0.765418,
		0.484781, -0.704130, -0.518834,
		20.837925, 38.394176, 20.161753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.103529, 39.212070, 20.326777>,  <20.498579, 38.887066, 20.524935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.103529, 39.212070, 20.326777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.100163, 38.863781, 20.130096>,  <21.098143, 38.654808, 20.012089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.100163, 38.863781, 20.130096>,  <21.103529, 39.212070, 20.326777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.100163, 38.863781, 20.130096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516060, 0.417395, -0.747973,
		0.856511, -0.260040, 0.445834,
		-0.008414, -0.870724, -0.491699,
		21.097639, 38.602562, 19.982586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.803278, 39.003616, 19.894762>,  <21.103529, 39.212070, 20.326777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.803278, 39.003616, 19.894762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.489504, 38.830391, 19.717171>,  <21.301239, 38.726456, 19.610617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.489504, 38.830391, 19.717171>,  <21.803278, 39.003616, 19.894762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.489504, 38.830391, 19.717171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267970, 0.408927, -0.872337,
		0.559333, -0.803264, -0.204728,
		-0.784436, -0.433065, -0.443977,
		21.254173, 38.700470, 19.583977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.130426, 38.675861, 19.271124>,  <21.803278, 39.003616, 19.894762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.130426, 38.675861, 19.271124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.739861, 38.729996, 19.203831>,  <21.505522, 38.762478, 19.163456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.739861, 38.729996, 19.203831>,  <22.130426, 38.675861, 19.271124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.739861, 38.729996, 19.203831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200068, 0.274139, -0.940649,
		-0.081188, -0.952119, -0.294750,
		-0.976413, 0.135340, -0.168231,
		21.446938, 38.770599, 19.153360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.060640, 38.279018, 18.679079>,  <22.130426, 38.675861, 19.271124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.060640, 38.279018, 18.679079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.765188, 38.546692, 18.711639>,  <21.587917, 38.707294, 18.731174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.765188, 38.546692, 18.711639>,  <22.060640, 38.279018, 18.679079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.765188, 38.546692, 18.711639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127556, 0.257310, -0.957873,
		-0.661935, -0.697129, -0.275415,
		-0.738628, 0.669180, 0.081399,
		21.543600, 38.747444, 18.736059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.537914, 38.045868, 18.205242>,  <22.060640, 38.279018, 18.679079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.537914, 38.045868, 18.205242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.504862, 38.437008, 18.282162>,  <21.485029, 38.671692, 18.328314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.504862, 38.437008, 18.282162>,  <21.537914, 38.045868, 18.205242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.504862, 38.437008, 18.282162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026675, 0.195062, -0.980428,
		-0.996223, -0.075886, -0.042202,
		-0.082632, 0.977851, 0.192301,
		21.480072, 38.730362, 18.339851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.070562, 38.405704, 17.690073>,  <21.537914, 38.045868, 18.205242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.070562, 38.405704, 17.690073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.288193, 38.714828, 17.820763>,  <21.418772, 38.900303, 17.899178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.288193, 38.714828, 17.820763>,  <21.070562, 38.405704, 17.690073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.288193, 38.714828, 17.820763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024678, 0.403977, -0.914436,
		-0.838672, 0.489461, 0.238866,
		0.544077, 0.772807, 0.326726,
		21.451416, 38.946671, 17.918781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.917479, 38.999985, 17.211294>,  <21.070562, 38.405704, 17.690073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.917479, 38.999985, 17.211294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.238375, 39.158825, 17.389606>,  <21.430912, 39.254128, 17.496593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.238375, 39.158825, 17.389606>,  <20.917479, 38.999985, 17.211294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.238375, 39.158825, 17.389606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254409, 0.448108, -0.857015,
		-0.540079, 0.800943, 0.258465,
		0.802241, 0.397101, 0.445781,
		21.479048, 39.277954, 17.523340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.936516, 39.690121, 17.101542>,  <20.917479, 38.999985, 17.211294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.936516, 39.690121, 17.101542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.316444, 39.583084, 17.166328>,  <21.544401, 39.518860, 17.205200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.316444, 39.583084, 17.166328>,  <20.936516, 39.690121, 17.101542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.316444, 39.583084, 17.166328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277957, 0.484578, -0.829412,
		0.143460, 0.832813, 0.534642,
		0.949821, -0.267595, 0.161969,
		21.601391, 39.502804, 17.214918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.329710, 40.238724, 16.803261>,  <20.936516, 39.690121, 17.101542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.329710, 40.238724, 16.803261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.640551, 39.989006, 16.835178>,  <21.827055, 39.839176, 16.854330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.640551, 39.989006, 16.835178>,  <21.329710, 40.238724, 16.803261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.640551, 39.989006, 16.835178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479263, 0.504805, -0.717969,
		0.407943, 0.596179, 0.691487,
		0.777104, -0.624294, 0.079795,
		21.873682, 39.801720, 16.859118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.885239, 40.700100, 16.842068>,  <21.329710, 40.238724, 16.803261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.885239, 40.700100, 16.842068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.010267, 40.338947, 16.724010>,  <22.085283, 40.122257, 16.653175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.010267, 40.338947, 16.724010>,  <21.885239, 40.700100, 16.842068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.010267, 40.338947, 16.724010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520159, 0.422676, -0.742146,
		0.794817, 0.078451, 0.601756,
		0.312570, -0.902879, -0.295143,
		22.104038, 40.068085, 16.635468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.567905, 40.822670, 16.678991>,  <21.885239, 40.700100, 16.842068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.567905, 40.822670, 16.678991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.465809, 40.480877, 16.498013>,  <22.404551, 40.275799, 16.389425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.465809, 40.480877, 16.498013>,  <22.567905, 40.822670, 16.678991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.465809, 40.480877, 16.498013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345473, 0.356455, -0.868095,
		0.903050, -0.377883, 0.204219,
		-0.255244, -0.854485, -0.452445,
		22.389236, 40.224533, 16.362280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.113985, 40.626137, 16.240767>,  <22.567905, 40.822670, 16.678991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.113985, 40.626137, 16.240767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.812237, 40.405689, 16.098114>,  <22.631187, 40.273418, 16.012522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.812237, 40.405689, 16.098114>,  <23.113985, 40.626137, 16.240767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.812237, 40.405689, 16.098114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275530, 0.227276, -0.934039,
		0.595825, -0.802875, -0.019600,
		-0.754372, -0.551123, -0.356633,
		22.585926, 40.240353, 15.991124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.390543, 40.122120, 15.836041>,  <23.113985, 40.626137, 16.240767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.390543, 40.122120, 15.836041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.025770, 40.113884, 15.672112>,  <22.806906, 40.108944, 15.573755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.025770, 40.113884, 15.672112>,  <23.390543, 40.122120, 15.836041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.025770, 40.113884, 15.672112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405724, 0.104136, -0.908044,
		0.061369, -0.994350, -0.086614,
		-0.911933, -0.020584, -0.409823,
		22.752190, 40.107708, 15.549166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.404610, 39.695675, 15.207365>,  <23.390543, 40.122120, 15.836041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.404610, 39.695675, 15.207365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.099924, 39.948166, 15.148931>,  <22.917112, 40.099659, 15.113870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.099924, 39.948166, 15.148931>,  <23.404610, 39.695675, 15.207365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.099924, 39.948166, 15.148931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283159, 0.121524, -0.951343,
		-0.582761, -0.766018, -0.271304,
		-0.761716, 0.631227, -0.146085,
		22.871408, 40.137535, 15.105104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.115683, 39.501984, 14.504601>,  <23.404610, 39.695675, 15.207365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.115683, 39.501984, 14.504601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.993113, 39.873219, 14.589232>,  <22.919571, 40.095959, 14.640012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.993113, 39.873219, 14.589232>,  <23.115683, 39.501984, 14.504601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.993113, 39.873219, 14.589232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189849, 0.277391, -0.941813,
		-0.932771, -0.248426, -0.261195,
		-0.306424, 0.928083, 0.211579,
		22.901186, 40.151642, 14.652706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.494322, 26.378254, 19.800354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690582, 26.592106, 20.075581>,  <28.808338, 26.720417, 20.240717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690582, 26.592106, 20.075581>,  <28.494322, 26.378254, 19.800354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690582, 26.592106, 20.075581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552625, 0.801450, -0.228656,
		-0.673695, -0.268050, 0.688683,
		0.490653, 0.534628, 0.688064,
		28.837778, 26.752495, 20.282000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923920, 26.757008, 20.084370>,  <28.494322, 26.378254, 19.800354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923920, 26.757008, 20.084370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255320, 26.951344, 20.195763>,  <28.454159, 27.067945, 20.262598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255320, 26.951344, 20.195763>,  <27.923920, 26.757008, 20.084370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255320, 26.951344, 20.195763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471628, 0.873488, -0.120768,
		-0.301924, -0.031283, 0.952819,
		0.828498, 0.485839, 0.278481,
		28.503868, 27.097095, 20.279306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737564, 27.275276, 20.618759>,  <27.923920, 26.757008, 20.084370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737564, 27.275276, 20.618759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090216, 27.392830, 20.471050>,  <28.301807, 27.463362, 20.382425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090216, 27.392830, 20.471050>,  <27.737564, 27.275276, 20.618759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090216, 27.392830, 20.471050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375112, 0.911182, -0.170406,
		0.286393, 0.288753, 0.913565,
		0.881629, 0.293886, -0.369271,
		28.354704, 27.480995, 20.360270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873919, 27.969154, 20.878090>,  <27.737564, 27.275276, 20.618759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873919, 27.969154, 20.878090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129677, 27.912239, 20.575851>,  <28.283133, 27.878090, 20.394508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129677, 27.912239, 20.575851>,  <27.873919, 27.969154, 20.878090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129677, 27.912239, 20.575851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081409, 0.964675, -0.250549,
		0.764554, 0.221713, 0.605227,
		0.639398, -0.142287, -0.755596,
		28.321497, 27.869553, 20.349173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426779, 28.484663, 21.015842>,  <27.873919, 27.969154, 20.878090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426779, 28.484663, 21.015842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410961, 28.411762, 20.622860>,  <28.401470, 28.368023, 20.387070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410961, 28.411762, 20.622860>,  <28.426779, 28.484663, 21.015842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410961, 28.411762, 20.622860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042306, 0.982649, -0.180583,
		0.998322, 0.034423, -0.046567,
		-0.039543, -0.182250, -0.982457,
		28.399097, 28.357086, 20.328123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797409, 29.057573, 20.776546>,  <28.426779, 28.484663, 21.015842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797409, 29.057573, 20.776546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603209, 28.904037, 20.462360>,  <28.486689, 28.811916, 20.273849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603209, 28.904037, 20.462360>,  <28.797409, 29.057573, 20.776546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603209, 28.904037, 20.462360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122329, 0.919448, -0.373700,
		0.865633, -0.085348, -0.493350,
		-0.485504, -0.383839, -0.785464,
		28.457558, 28.788885, 20.226721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079716, 29.317835, 20.166571>,  <28.797409, 29.057573, 20.776546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079716, 29.317835, 20.166571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736187, 29.167271, 20.027580>,  <28.530069, 29.076933, 19.944185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736187, 29.167271, 20.027580>,  <29.079716, 29.317835, 20.166571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736187, 29.167271, 20.027580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126573, 0.813192, -0.568065,
		0.496390, -0.443886, -0.746031,
		-0.858823, -0.376409, -0.347477,
		28.478540, 29.054348, 19.923338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049835, 29.511284, 19.495485>,  <29.079716, 29.317835, 20.166571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049835, 29.511284, 19.495485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670807, 29.407391, 19.569946>,  <28.443390, 29.345055, 19.614622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670807, 29.407391, 19.569946>,  <29.049835, 29.511284, 19.495485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670807, 29.407391, 19.569946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303782, 0.912917, -0.272580,
		-0.099145, -0.314838, -0.943953,
		-0.947569, -0.259731, 0.186153,
		28.386536, 29.329472, 19.625792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660730, 29.839281, 18.903362>,  <29.049835, 29.511284, 19.495485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660730, 29.839281, 18.903362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424284, 29.821625, 19.225513>,  <28.282417, 29.811031, 19.418804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424284, 29.821625, 19.225513>,  <28.660730, 29.839281, 18.903362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424284, 29.821625, 19.225513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305055, 0.936570, -0.172564,
		-0.746677, -0.347690, -0.567085,
		-0.591114, -0.044143, 0.805379,
		28.246950, 29.808382, 19.467127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011433, 30.108395, 18.735392>,  <28.660730, 29.839281, 18.903362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.011433, 30.108395, 18.735392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024679, 30.126183, 19.134777>,  <28.032627, 30.136854, 19.374409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024679, 30.126183, 19.134777>,  <28.011433, 30.108395, 18.735392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024679, 30.126183, 19.134777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286364, 0.957547, -0.033149,
		-0.957548, -0.284826, 0.044444,
		0.033115, 0.044469, 0.998462,
		28.034615, 30.139523, 19.434315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306322, 30.383192, 18.920786>,  <28.011433, 30.108395, 18.735392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306322, 30.383192, 18.920786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553650, 30.458473, 19.226009>,  <27.702047, 30.503643, 19.409143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553650, 30.458473, 19.226009>,  <27.306322, 30.383192, 18.920786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553650, 30.458473, 19.226009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349431, 0.935495, 0.052415,
		-0.703973, -0.299046, 0.644199,
		0.618319, 0.188204, 0.763059,
		27.739145, 30.514935, 19.454927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039259, 30.528700, 19.623220>,  <27.306322, 30.383192, 18.920786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039259, 30.528700, 19.623220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383949, 30.728806, 19.589363>,  <27.590763, 30.848869, 19.569050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383949, 30.728806, 19.589363>,  <27.039259, 30.528700, 19.623220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383949, 30.728806, 19.589363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491492, 0.864468, 0.105505,
		0.125950, -0.049316, 0.990810,
		0.861726, 0.500264, -0.084642,
		27.642467, 30.878885, 19.563971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253178, 30.957493, 20.219202>,  <27.039259, 30.528700, 19.623220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253178, 30.957493, 20.219202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386065, 31.117786, 19.877666>,  <27.465797, 31.213963, 19.672745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386065, 31.117786, 19.877666>,  <27.253178, 30.957493, 20.219202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386065, 31.117786, 19.877666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637197, 0.762799, 0.110083,
		0.695422, 0.507493, 0.508763,
		0.332217, 0.400736, -0.853840,
		27.485729, 31.238007, 19.621515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298851, 31.654654, 20.408941>,  <27.253178, 30.957493, 20.219202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298851, 31.654654, 20.408941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273693, 31.599072, 20.013622>,  <27.258598, 31.565723, 19.776430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273693, 31.599072, 20.013622>,  <27.298851, 31.654654, 20.408941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273693, 31.599072, 20.013622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747220, 0.663006, -0.045664,
		0.661594, 0.735605, -0.145527,
		-0.062895, -0.138952, -0.988300,
		27.254824, 31.557386, 19.717133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.736814, 32.104309, 20.332579>,  <27.298851, 31.654654, 20.408941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.736814, 32.104309, 20.332579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419664, 32.166271, 20.568325>,  <26.229374, 32.203449, 20.709772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419664, 32.166271, 20.568325>,  <26.736814, 32.104309, 20.332579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419664, 32.166271, 20.568325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459124, -0.484084, 0.744895,
		0.400688, 0.861201, 0.312700,
		-0.792877, 0.154903, 0.589365,
		26.181801, 32.212742, 20.745134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060520, 32.438129, 20.857203>,  <26.736814, 32.104309, 20.332579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060520, 32.438129, 20.857203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727365, 32.239483, 20.954914>,  <26.527472, 32.120296, 21.013540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727365, 32.239483, 20.954914>,  <27.060520, 32.438129, 20.857203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727365, 32.239483, 20.954914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498491, -0.481417, 0.720933,
		-0.240424, 0.722228, 0.648524,
		-0.832888, -0.496613, 0.244280,
		26.477499, 32.090500, 21.028198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.126249, 32.469898, 21.465576>,  <27.060520, 32.438129, 20.857203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.126249, 32.469898, 21.465576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840067, 32.193756, 21.422615>,  <26.668358, 32.028072, 21.396839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840067, 32.193756, 21.422615>,  <27.126249, 32.469898, 21.465576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840067, 32.193756, 21.422615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284553, -0.428328, 0.857651,
		-0.638084, 0.583050, 0.502892,
		-0.715456, -0.690353, -0.107401,
		26.625429, 31.986650, 21.390394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.850115, 32.338715, 22.079947>,  <27.126249, 32.469898, 21.465576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.850115, 32.338715, 22.079947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787663, 31.993141, 21.888428>,  <26.750191, 31.785797, 21.773518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787663, 31.993141, 21.888428>,  <26.850115, 32.338715, 22.079947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787663, 31.993141, 21.888428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293455, -0.503424, 0.812680,
		-0.943137, -0.013621, 0.332125,
		-0.156130, -0.863932, -0.478795,
		26.740824, 31.733961, 21.744789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810467, 31.978069, 22.596777>,  <26.850115, 32.338715, 22.079947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810467, 31.978069, 22.596777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.850021, 31.712563, 22.300228>,  <26.873755, 31.553259, 22.122299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.850021, 31.712563, 22.300228>,  <26.810467, 31.978069, 22.596777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850021, 31.712563, 22.300228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328197, -0.681582, 0.654013,
		-0.939419, -0.307988, 0.150449,
		0.098884, -0.663769, -0.741372,
		26.879686, 31.513432, 22.077816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.528255, 31.369648, 22.847061>,  <26.810467, 31.978069, 22.596777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.528255, 31.369648, 22.847061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763948, 31.267250, 22.540527>,  <26.905363, 31.205811, 22.356607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763948, 31.267250, 22.540527>,  <26.528255, 31.369648, 22.847061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763948, 31.267250, 22.540527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366256, -0.760801, 0.535759,
		-0.720182, -0.596362, -0.354528,
		0.589232, -0.255996, -0.766337,
		26.940718, 31.190451, 22.310627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.343323, 30.752398, 22.716034>,  <26.528255, 31.369648, 22.847061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.343323, 30.752398, 22.716034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712158, 30.800140, 22.568787>,  <26.933458, 30.828787, 22.480438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712158, 30.800140, 22.568787>,  <26.343323, 30.752398, 22.716034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712158, 30.800140, 22.568787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300780, -0.819573, 0.487679,
		-0.243491, -0.560405, -0.791617,
		0.922086, 0.119357, -0.368118,
		26.988785, 30.835947, 22.458351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539780, 30.143578, 22.540007>,  <26.343323, 30.752398, 22.716034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539780, 30.143578, 22.540007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898239, 30.319851, 22.560841>,  <27.113316, 30.425615, 22.573341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898239, 30.319851, 22.560841>,  <26.539780, 30.143578, 22.540007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898239, 30.319851, 22.560841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397451, -0.849302, 0.347446,
		0.197348, -0.290663, -0.936252,
		0.896151, 0.440682, 0.052084,
		27.167084, 30.452055, 22.576466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064270, 29.681520, 22.350433>,  <26.539780, 30.143578, 22.540007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064270, 29.681520, 22.350433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285965, 29.953030, 22.543137>,  <27.418982, 30.115934, 22.658758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285965, 29.953030, 22.543137>,  <27.064270, 29.681520, 22.350433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285965, 29.953030, 22.543137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538581, -0.733740, 0.414193,
		0.634628, 0.029905, -0.772239,
		0.554236, 0.678772, 0.481758,
		27.452236, 30.156662, 22.687664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842112, 29.660856, 22.085968>,  <27.064270, 29.681520, 22.350433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.842112, 29.660856, 22.085968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803234, 29.822418, 22.449818>,  <27.779907, 29.919355, 22.668127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803234, 29.822418, 22.449818>,  <27.842112, 29.660856, 22.085968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803234, 29.822418, 22.449818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726125, -0.596269, 0.342352,
		0.680658, 0.693775, -0.235333,
		-0.097194, 0.403906, 0.909623,
		27.774076, 29.943590, 22.722704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533087, 29.702030, 22.340487>,  <27.842112, 29.660856, 22.085968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533087, 29.702030, 22.340487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296091, 29.700851, 22.662716>,  <28.153894, 29.700144, 22.856054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296091, 29.700851, 22.662716>,  <28.533087, 29.702030, 22.340487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296091, 29.700851, 22.662716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670983, -0.555194, 0.491470,
		0.445802, 0.831716, 0.330922,
		-0.592489, -0.002945, 0.805573,
		28.118345, 29.699968, 22.904388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015453, 29.582762, 22.871294>,  <28.533087, 29.702030, 22.340487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015453, 29.582762, 22.871294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670973, 29.543697, 23.070812>,  <28.464285, 29.520258, 23.190523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670973, 29.543697, 23.070812>,  <29.015453, 29.582762, 22.871294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670973, 29.543697, 23.070812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430502, -0.661842, 0.613704,
		0.270189, 0.743255, 0.612022,
		-0.861200, -0.097660, 0.498795,
		28.412613, 29.514399, 23.220451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201262, 29.610422, 23.583147>,  <29.015453, 29.582762, 22.871294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201262, 29.610422, 23.583147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851530, 29.416546, 23.573162>,  <28.641691, 29.300220, 23.567171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851530, 29.416546, 23.573162>,  <29.201262, 29.610422, 23.583147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851530, 29.416546, 23.573162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382808, -0.720331, 0.578430,
		-0.298340, 0.496182, 0.815350,
		-0.874329, -0.484691, -0.024961,
		28.589231, 29.271139, 23.565674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990959, 29.325989, 24.291681>,  <29.201262, 29.610422, 23.583147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990959, 29.325989, 24.291681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805367, 29.098991, 24.019600>,  <28.694012, 28.962793, 23.856352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805367, 29.098991, 24.019600>,  <28.990959, 29.325989, 24.291681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805367, 29.098991, 24.019600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417020, -0.817377, 0.397478,
		-0.781547, -0.099235, 0.615903,
		-0.463981, -0.567492, -0.680202,
		28.666172, 28.928743, 23.815540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919474, 29.320919, 25.030149>,  <28.990959, 29.325989, 24.291681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919474, 29.320919, 25.030149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201885, 29.360264, 25.310677>,  <29.371332, 29.383871, 25.478992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201885, 29.360264, 25.310677>,  <28.919474, 29.320919, 25.030149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201885, 29.360264, 25.310677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184809, 0.930401, -0.316544,
		-0.683642, 0.353099, 0.638713,
		0.706031, 0.098362, 0.701317,
		29.413694, 29.389772, 25.521072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733440, 29.931595, 25.424116>,  <28.919474, 29.320919, 25.030149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733440, 29.931595, 25.424116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122187, 29.855335, 25.479446>,  <29.355434, 29.809580, 25.512644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122187, 29.855335, 25.479446>,  <28.733440, 29.931595, 25.424116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122187, 29.855335, 25.479446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220919, 0.941488, -0.254550,
		-0.081701, 0.277947, 0.957116,
		0.971864, -0.190648, 0.138325,
		29.413746, 29.798141, 25.520945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015165, 30.347218, 25.906204>,  <28.733440, 29.931595, 25.424116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015165, 30.347218, 25.906204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337280, 30.229874, 25.700115>,  <29.530550, 30.159468, 25.576462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337280, 30.229874, 25.700115>,  <29.015165, 30.347218, 25.906204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337280, 30.229874, 25.700115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183392, 0.949639, -0.254071,
		0.563808, 0.110113, 0.818533,
		0.805287, -0.293360, -0.515221,
		29.578867, 30.141867, 25.545549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335575, 30.933922, 25.799501>,  <29.015165, 30.347218, 25.906204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335575, 30.933922, 25.799501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579102, 30.698433, 25.586807>,  <29.725218, 30.557138, 25.459190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579102, 30.698433, 25.586807>,  <29.335575, 30.933922, 25.799501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579102, 30.698433, 25.586807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441368, 0.808330, -0.389611,
		0.659193, 0.002510, 0.751970,
		0.608817, -0.588725, -0.531737,
		29.761747, 30.521816, 25.427286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091211, 31.234537, 25.894400>,  <29.335575, 30.933922, 25.799501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091211, 31.234537, 25.894400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068027, 31.017906, 25.558941>,  <30.054117, 30.887928, 25.357666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068027, 31.017906, 25.558941>,  <30.091211, 31.234537, 25.894400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068027, 31.017906, 25.558941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487648, 0.717662, -0.497152,
		0.871114, -0.437782, 0.222503,
		-0.057962, -0.541580, -0.838649,
		30.050638, 30.855433, 25.307346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767265, 31.174480, 25.570137>,  <30.091211, 31.234537, 25.894400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767265, 31.174480, 25.570137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501862, 31.136589, 25.273277>,  <30.342619, 31.113853, 25.095161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501862, 31.136589, 25.273277>,  <30.767265, 31.174480, 25.570137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501862, 31.136589, 25.273277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479029, 0.708180, -0.518663,
		0.574707, -0.699648, -0.424506,
		-0.663509, -0.094729, -0.742148,
		30.302809, 31.108170, 25.050632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183378, 31.259968, 24.891817>,  <30.767265, 31.174480, 25.570137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183378, 31.259968, 24.891817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793770, 31.312534, 24.818043>,  <30.560005, 31.344074, 24.773777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793770, 31.312534, 24.818043>,  <31.183378, 31.259968, 24.891817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793770, 31.312534, 24.818043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211760, 0.817221, -0.536011,
		0.080284, -0.561141, -0.823818,
		-0.974019, 0.131418, -0.184437,
		30.501564, 31.351959, 24.762712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160826, 31.390011, 24.222752>,  <31.183378, 31.259968, 24.891817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160826, 31.390011, 24.222752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813688, 31.527351, 24.366394>,  <30.605406, 31.609756, 24.452579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813688, 31.527351, 24.366394>,  <31.160826, 31.390011, 24.222752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813688, 31.527351, 24.366394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249587, 0.926248, -0.282439,
		-0.429595, -0.155485, -0.889535,
		-0.867845, 0.343351, 0.359104,
		30.553335, 31.630356, 24.474125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917274, 31.788599, 23.765459>,  <31.160826, 31.390011, 24.222752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917274, 31.788599, 23.765459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692919, 31.933903, 24.063034>,  <30.558306, 32.021084, 24.241579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692919, 31.933903, 24.063034>,  <30.917274, 31.788599, 23.765459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692919, 31.933903, 24.063034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088542, 0.919762, -0.382358,
		-0.823142, -0.148591, -0.548050,
		-0.560890, 0.363260, 0.743938,
		30.524652, 32.042881, 24.286215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475933, 32.353008, 23.461205>,  <30.917274, 31.788599, 23.765459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475933, 32.353008, 23.461205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487169, 32.409069, 23.857098>,  <30.493910, 32.442707, 24.094633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487169, 32.409069, 23.857098>,  <30.475933, 32.353008, 23.461205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487169, 32.409069, 23.857098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146170, 0.978903, -0.142769,
		-0.988861, 0.148679, 0.007009,
		0.028088, 0.140154, 0.989731,
		30.495596, 32.451115, 24.154016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172899, 33.099072, 23.583172>,  <30.475933, 32.353008, 23.461205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172899, 33.099072, 23.583172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383945, 33.010815, 23.911304>,  <30.510572, 32.957859, 24.108183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383945, 33.010815, 23.911304>,  <30.172899, 33.099072, 23.583172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383945, 33.010815, 23.911304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329543, 0.943217, 0.041743,
		-0.782959, 0.248310, 0.570365,
		0.527613, -0.220643, 0.820330,
		30.542229, 32.944622, 24.157404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051506, 33.708408, 24.086348>,  <30.172899, 33.099072, 23.583172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051506, 33.708408, 24.086348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383602, 33.524769, 24.212791>,  <30.582859, 33.414585, 24.288658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383602, 33.524769, 24.212791>,  <30.051506, 33.708408, 24.086348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383602, 33.524769, 24.212791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479474, 0.877427, 0.015023,
		-0.284262, 0.139095, 0.948603,
		0.830241, -0.459101, 0.316111,
		30.632675, 33.387039, 24.307625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.332827, 26.102245, 27.664999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.716631, 26.087635, 27.553280>,  <28.946913, 26.078869, 27.486248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.716631, 26.087635, 27.553280>,  <28.332827, 26.102245, 27.664999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716631, 26.087635, 27.553280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066836, 0.992763, 0.099774,
		0.273630, -0.114401, 0.955007,
		0.959510, -0.036528, -0.279296,
		29.004484, 26.076677, 27.469490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664202, 26.640245, 28.059965>,  <28.332827, 26.102245, 27.664999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664202, 26.640245, 28.059965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.905161, 26.560177, 27.750889>,  <29.049736, 26.512136, 27.565443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.905161, 26.560177, 27.750889>,  <28.664202, 26.640245, 28.059965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905161, 26.560177, 27.750889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245691, 0.967545, -0.059105,
		0.759442, -0.154238, 0.632027,
		0.602398, -0.200170, -0.772689,
		29.085880, 26.500126, 27.519081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196098, 27.215462, 28.077488>,  <28.664202, 26.640245, 28.059965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196098, 27.215462, 28.077488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.229128, 27.063744, 27.708855>,  <29.248945, 26.972713, 27.487675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.229128, 27.063744, 27.708855>,  <29.196098, 27.215462, 28.077488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229128, 27.063744, 27.708855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264527, 0.899912, -0.346675,
		0.960837, -0.215158, 0.174643,
		0.082573, -0.379296, -0.921583,
		29.253901, 26.949955, 27.432379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807911, 27.462486, 27.877050>,  <29.196098, 27.215462, 28.077488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807911, 27.462486, 27.877050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.599039, 27.369247, 27.548904>,  <29.473717, 27.313305, 27.352016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.599039, 27.369247, 27.548904>,  <29.807911, 27.462486, 27.877050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599039, 27.369247, 27.548904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227642, 0.888927, -0.397476,
		0.821892, -0.394303, -0.411118,
		-0.522180, -0.233095, -0.820362,
		29.442385, 27.299318, 27.302795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252958, 27.625170, 27.221146>,  <29.807911, 27.462486, 27.877050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252958, 27.625170, 27.221146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.883997, 27.586655, 27.071529>,  <29.662621, 27.563545, 26.981760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.883997, 27.586655, 27.071529>,  <30.252958, 27.625170, 27.221146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883997, 27.586655, 27.071529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220213, 0.664490, -0.714114,
		0.317305, -0.741068, -0.591723,
		-0.922401, -0.096287, -0.374039,
		29.607277, 27.557768, 26.959318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421535, 27.906279, 26.592714>,  <30.252958, 27.625170, 27.221146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421535, 27.906279, 26.592714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.023235, 27.939804, 26.607960>,  <29.784254, 27.959919, 26.617107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.023235, 27.939804, 26.607960>,  <30.421535, 27.906279, 26.592714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023235, 27.939804, 26.607960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034771, 0.725609, -0.687228,
		-0.085252, -0.682984, -0.725441,
		-0.995752, 0.083812, 0.038112,
		29.724510, 27.964947, 26.619392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203674, 27.985413, 25.854605>,  <30.421535, 27.906279, 26.592714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203674, 27.985413, 25.854605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.878757, 28.116894, 26.047325>,  <29.683807, 28.195782, 26.162958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.878757, 28.116894, 26.047325>,  <30.203674, 27.985413, 25.854605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878757, 28.116894, 26.047325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031934, 0.849893, -0.525988,
		-0.582373, -0.411871, -0.700860,
		-0.812294, 0.328703, 0.481802,
		29.635069, 28.215504, 26.191866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680485, 28.128494, 25.302111>,  <30.203674, 27.985413, 25.854605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680485, 28.128494, 25.302111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.543156, 28.343838, 25.609955>,  <29.460758, 28.473043, 25.794661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.543156, 28.343838, 25.609955>,  <29.680485, 28.128494, 25.302111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543156, 28.343838, 25.609955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101502, 0.835885, -0.539439,
		-0.933717, -0.107085, -0.341622,
		-0.343322, 0.538359, 0.769610,
		29.440159, 28.505344, 25.840837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347820, 28.741278, 24.980818>,  <29.680485, 28.128494, 25.302111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347820, 28.741278, 24.980818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.418446, 28.868343, 25.353466>,  <29.460821, 28.944582, 25.577055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.418446, 28.868343, 25.353466>,  <29.347820, 28.741278, 24.980818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418446, 28.868343, 25.353466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194964, 0.916449, -0.349443,
		-0.964787, 0.243332, 0.099879,
		0.176565, 0.317665, 0.931619,
		29.471415, 28.963642, 25.632952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650440, 28.615959, 24.719376>,  <29.347820, 28.741278, 24.980818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650440, 28.615959, 24.719376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.578854, 28.537037, 24.333828>,  <28.535902, 28.489683, 24.102499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.578854, 28.537037, 24.333828>,  <28.650440, 28.615959, 24.719376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578854, 28.537037, 24.333828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068520, -0.974806, 0.212269,
		-0.981466, 0.104033, 0.160937,
		-0.178966, -0.197308, -0.963868,
		28.525164, 28.477844, 24.044668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064934, 28.135256, 24.691507>,  <28.650440, 28.615959, 24.719376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064934, 28.135256, 24.691507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.322849, 28.080505, 24.390705>,  <28.477598, 28.047655, 24.210224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.322849, 28.080505, 24.390705>,  <28.064934, 28.135256, 24.691507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322849, 28.080505, 24.390705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113868, -0.990059, 0.082574,
		-0.755831, 0.032386, -0.653966,
		0.644790, -0.136878, -0.752005,
		28.516287, 28.039442, 24.165104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.843126, 27.465960, 24.507622>,  <28.064934, 28.135256, 24.691507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.843126, 27.465960, 24.507622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.171280, 27.511448, 24.283466>,  <28.368172, 27.538742, 24.148973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.171280, 27.511448, 24.283466>,  <27.843126, 27.465960, 24.507622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171280, 27.511448, 24.283466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048230, -0.990293, -0.130357,
		-0.569774, 0.079915, -0.817906,
		0.820385, 0.113722, -0.560389,
		28.417395, 27.545565, 24.115349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769968, 27.067259, 23.919250>,  <27.843126, 27.465960, 24.507622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769968, 27.067259, 23.919250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.161730, 27.109905, 23.987831>,  <28.396788, 27.135492, 24.028980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.161730, 27.109905, 23.987831>,  <27.769968, 27.067259, 23.919250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161730, 27.109905, 23.987831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111488, -0.993584, -0.019013,
		0.168327, 0.037736, -0.985009,
		0.979406, 0.106616, 0.171454,
		28.455551, 27.141890, 24.039267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223515, 26.615950, 23.435339>,  <27.769968, 27.067259, 23.919250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223515, 26.615950, 23.435339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.464085, 26.706032, 23.741951>,  <28.608427, 26.760082, 23.925919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.464085, 26.706032, 23.741951>,  <28.223515, 26.615950, 23.435339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464085, 26.706032, 23.741951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109583, -0.973633, 0.200075,
		0.791377, -0.036332, -0.610248,
		0.601427, 0.225207, 0.766529,
		28.644512, 26.773594, 23.971910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611046, 26.023842, 23.487799>,  <28.223515, 26.615950, 23.435339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611046, 26.023842, 23.487799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.679373, 26.213318, 23.833385>,  <28.720369, 26.327003, 24.040737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.679373, 26.213318, 23.833385>,  <28.611046, 26.023842, 23.487799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679373, 26.213318, 23.833385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006978, -0.877413, 0.479685,
		0.985278, -0.075911, -0.153184,
		0.170819, 0.473692, 0.863966,
		28.730619, 26.355425, 24.092575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193354, 25.663092, 23.868788>,  <28.611046, 26.023842, 23.487799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193354, 25.663092, 23.868788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.965548, 25.852390, 24.137619>,  <28.828863, 25.965969, 24.298918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.965548, 25.852390, 24.137619>,  <29.193354, 25.663092, 23.868788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965548, 25.852390, 24.137619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026903, -0.827927, 0.560190,
		0.821541, 0.300956, 0.484248,
		-0.569515, 0.473247, 0.672079,
		28.794693, 25.994364, 24.339243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387751, 25.384197, 24.421953>,  <29.193354, 25.663092, 23.868788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387751, 25.384197, 24.421953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.051947, 25.552235, 24.559792>,  <28.850464, 25.653057, 24.642494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.051947, 25.552235, 24.559792>,  <29.387751, 25.384197, 24.421953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051947, 25.552235, 24.559792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091352, -0.734312, 0.672637,
		0.535611, 0.533206, 0.654838,
		-0.839509, 0.420092, 0.344596,
		28.800095, 25.678263, 24.663170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421526, 25.235065, 25.167099>,  <29.387751, 25.384197, 24.421953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421526, 25.235065, 25.167099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.047663, 25.326653, 25.058292>,  <28.823345, 25.381605, 24.993010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.047663, 25.326653, 25.058292>,  <29.421526, 25.235065, 25.167099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047663, 25.326653, 25.058292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350271, -0.724347, 0.593828,
		-0.061066, 0.650303, 0.757216,
		-0.934656, 0.228968, -0.272015,
		28.767265, 25.395344, 24.976688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022881, 25.194565, 25.822039>,  <29.421526, 25.235065, 25.167099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022881, 25.194565, 25.822039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.788145, 25.140701, 25.502666>,  <28.647305, 25.108383, 25.311043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.788145, 25.140701, 25.502666>,  <29.022881, 25.194565, 25.822039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788145, 25.140701, 25.502666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492767, -0.723053, 0.484123,
		-0.642498, 0.677541, 0.357959,
		-0.586837, -0.134658, -0.798429,
		28.612095, 25.100304, 25.263138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358591, 24.944721, 26.123325>,  <29.022881, 25.194565, 25.822039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358591, 24.944721, 26.123325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.353573, 24.858986, 25.732655>,  <28.350561, 24.807545, 25.498251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.353573, 24.858986, 25.732655>,  <28.358591, 24.944721, 26.123325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353573, 24.858986, 25.732655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499600, -0.844756, 0.191803,
		-0.866166, 0.490354, -0.096485,
		-0.012545, -0.214337, -0.976679,
		28.349810, 24.794685, 25.439651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682680, 24.759327, 25.985907>,  <28.358591, 24.944721, 26.123325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682680, 24.759327, 25.985907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.918148, 24.607147, 25.700607>,  <28.059429, 24.515839, 25.529427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.918148, 24.607147, 25.700607>,  <27.682680, 24.759327, 25.985907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918148, 24.607147, 25.700607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569576, -0.821316, -0.031998,
		-0.573630, 0.425086, -0.700179,
		0.588670, -0.380450, -0.713250,
		28.094749, 24.493011, 25.486633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207687, 24.538849, 25.485411>,  <27.682680, 24.759327, 25.985907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207687, 24.538849, 25.485411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.545731, 24.339149, 25.408951>,  <27.748556, 24.219330, 25.363075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.545731, 24.339149, 25.408951>,  <27.207687, 24.538849, 25.485411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545731, 24.339149, 25.408951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513750, -0.857336, -0.032175,
		-0.147816, 0.125395, -0.981034,
		0.845110, -0.499250, -0.191150,
		27.799263, 24.189375, 25.351606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923113, 24.029039, 25.067635>,  <27.207687, 24.538849, 25.485411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923113, 24.029039, 25.067635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.280230, 23.893421, 25.186275>,  <27.494499, 23.812050, 25.257460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.280230, 23.893421, 25.186275>,  <26.923113, 24.029039, 25.067635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.280230, 23.893421, 25.186275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307840, -0.939893, -0.147771,
		0.328877, 0.040622, -0.943499,
		0.892790, -0.339045, 0.296604,
		27.548067, 23.791708, 25.275257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.269245, 22.949368, 24.764210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.886189, 22.834240, 24.760567>,  <34.656353, 22.765163, 24.758381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.886189, 22.834240, 24.760567>,  <35.269245, 22.949368, 24.764210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886189, 22.834240, 24.760567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239264, 0.812889, -0.531003,
		0.160236, -0.506332, -0.847321,
		-0.957642, -0.287819, -0.009107,
		34.598896, 22.747894, 24.757835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022118, 22.891571, 24.033388>,  <35.269245, 22.949368, 24.764210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022118, 22.891571, 24.033388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.697735, 22.944565, 24.261353>,  <34.503105, 22.976362, 24.398130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.697735, 22.944565, 24.261353>,  <35.022118, 22.891571, 24.033388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697735, 22.944565, 24.261353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178800, 0.871321, -0.456979,
		-0.557118, -0.472490, -0.682915,
		-0.810956, 0.132486, 0.569910,
		34.454449, 22.984310, 24.432325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457970, 22.938295, 23.562546>,  <35.022118, 22.891571, 24.033388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457970, 22.938295, 23.562546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.395432, 23.121532, 23.912563>,  <34.357906, 23.231476, 24.122574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.395432, 23.121532, 23.912563>,  <34.457970, 22.938295, 23.562546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395432, 23.121532, 23.912563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238082, 0.842338, -0.483511,
		-0.958578, -0.283929, -0.022634,
		-0.156348, 0.458095, 0.875045,
		34.348526, 23.258961, 24.175077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909977, 23.389338, 23.497580>,  <34.457970, 22.938295, 23.562546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909977, 23.389338, 23.497580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.051334, 23.522820, 23.847153>,  <34.136147, 23.602909, 24.056896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.051334, 23.522820, 23.847153>,  <33.909977, 23.389338, 23.497580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051334, 23.522820, 23.847153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119730, 0.942661, -0.311536,
		-0.927783, 0.005458, 0.373081,
		0.353389, 0.333707, 0.873931,
		34.157352, 23.622932, 24.109333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525845, 23.953932, 23.556093>,  <33.909977, 23.389338, 23.497580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525845, 23.953932, 23.556093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.787914, 24.028408, 23.848965>,  <33.945156, 24.073093, 24.024687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.787914, 24.028408, 23.848965>,  <33.525845, 23.953932, 23.556093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787914, 24.028408, 23.848965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190006, 0.978613, -0.078834,
		-0.731197, -0.087469, 0.676535,
		0.655171, 0.186188, 0.732178,
		33.984467, 24.084265, 24.068619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223633, 24.246099, 24.022480>,  <33.525845, 23.953932, 23.556093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223633, 24.246099, 24.022480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.595398, 24.376419, 24.091812>,  <33.818459, 24.454611, 24.133411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.595398, 24.376419, 24.091812>,  <33.223633, 24.246099, 24.022480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595398, 24.376419, 24.091812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303363, 0.941951, -0.143871,
		-0.210142, 0.081133, 0.974299,
		0.929414, 0.325799, 0.173330,
		33.874222, 24.474159, 24.143810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171082, 24.868071, 24.517218>,  <33.223633, 24.246099, 24.022480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171082, 24.868071, 24.517218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.542221, 24.894623, 24.370415>,  <33.764904, 24.910553, 24.282333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.542221, 24.894623, 24.370415>,  <33.171082, 24.868071, 24.517218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542221, 24.894623, 24.370415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167586, 0.953301, -0.251262,
		0.333191, 0.294638, 0.895641,
		0.927846, 0.066378, -0.367009,
		33.820576, 24.914536, 24.260313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370628, 25.539150, 24.692339>,  <33.171082, 24.868071, 24.517218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370628, 25.539150, 24.692339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.633892, 25.460583, 24.401615>,  <33.791851, 25.413443, 24.227180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.633892, 25.460583, 24.401615>,  <33.370628, 25.539150, 24.692339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633892, 25.460583, 24.401615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147748, 0.912902, -0.380501,
		0.738243, 0.357814, 0.571811,
		0.658156, -0.196418, -0.726809,
		33.831337, 25.401657, 24.183573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915718, 26.127003, 24.704645>,  <33.370628, 25.539150, 24.692339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915718, 26.127003, 24.704645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.886234, 25.960331, 24.342220>,  <33.868542, 25.860329, 24.124765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.886234, 25.960331, 24.342220>,  <33.915718, 26.127003, 24.704645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886234, 25.960331, 24.342220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001852, 0.908588, -0.417689,
		0.997278, -0.029111, -0.067747,
		-0.073713, -0.416677, -0.906061,
		33.864120, 25.835327, 24.070402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329845, 26.494591, 24.347942>,  <33.915718, 26.127003, 24.704645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329845, 26.494591, 24.347942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.083797, 26.349205, 24.068081>,  <33.936169, 26.261972, 23.900164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.083797, 26.349205, 24.068081>,  <34.329845, 26.494591, 24.347942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083797, 26.349205, 24.068081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159982, 0.926480, -0.340646,
		0.772030, -0.097607, -0.628046,
		-0.615122, -0.363466, -0.699655,
		33.899261, 26.240166, 23.858185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619595, 26.797506, 23.763672>,  <34.329845, 26.494591, 24.347942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619595, 26.797506, 23.763672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.259491, 26.692547, 23.624714>,  <34.043430, 26.629570, 23.541340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.259491, 26.692547, 23.624714>,  <34.619595, 26.797506, 23.763672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259491, 26.692547, 23.624714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001400, 0.796203, -0.605028,
		0.435356, -0.545168, -0.716420,
		-0.900258, -0.262400, -0.347394,
		33.989414, 26.613827, 23.520494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625732, 26.815489, 23.036146>,  <34.619595, 26.797506, 23.763672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625732, 26.815489, 23.036146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.238552, 26.841339, 23.133221>,  <34.006245, 26.856850, 23.191465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.238552, 26.841339, 23.133221>,  <34.625732, 26.815489, 23.036146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238552, 26.841339, 23.133221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083196, 0.829249, -0.552652,
		-0.236965, -0.555129, -0.797295,
		-0.967949, 0.064627, 0.242688,
		33.948166, 26.860727, 23.206026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341427, 27.047539, 22.483555>,  <34.625732, 26.815489, 23.036146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341427, 27.047539, 22.483555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.030540, 27.126221, 22.722633>,  <33.844009, 27.173429, 22.866079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.030540, 27.126221, 22.722633>,  <34.341427, 27.047539, 22.483555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030540, 27.126221, 22.722633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224079, 0.801085, -0.555025,
		-0.587980, -0.565306, -0.578540,
		-0.777218, 0.196705, 0.597695,
		33.797375, 27.185232, 22.901941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679916, 27.167456, 22.103376>,  <34.341427, 27.047539, 22.483555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679916, 27.167456, 22.103376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650124, 27.367840, 22.448280>,  <33.632248, 27.488070, 22.655222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650124, 27.367840, 22.448280>,  <33.679916, 27.167456, 22.103376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650124, 27.367840, 22.448280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271092, 0.821927, -0.500945,
		-0.959667, -0.271065, 0.074584,
		-0.074486, 0.500960, 0.862259,
		33.627777, 27.518127, 22.706959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180824, 26.725960, 21.872658>,  <33.679916, 27.167456, 22.103376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180824, 26.725960, 21.872658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.037151, 26.657654, 21.505653>,  <32.950947, 26.616671, 21.285450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.037151, 26.657654, 21.505653>,  <33.180824, 26.725960, 21.872658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037151, 26.657654, 21.505653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143046, -0.961427, 0.234937,
		-0.922241, 0.215631, 0.320897,
		-0.359178, -0.170766, -0.917513,
		32.929398, 26.606424, 21.230400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623554, 26.363211, 21.976517>,  <33.180824, 26.725960, 21.872658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623554, 26.363211, 21.976517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.738640, 26.266685, 21.605789>,  <32.807690, 26.208771, 21.383352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.738640, 26.266685, 21.605789>,  <32.623554, 26.363211, 21.976517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738640, 26.266685, 21.605789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006795, -0.968226, 0.249984,
		-0.957692, -0.065627, -0.280213,
		0.287715, -0.241312, -0.926816,
		32.824955, 26.194292, 21.327744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209179, 25.758198, 21.785242>,  <32.623554, 26.363211, 21.976517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209179, 25.758198, 21.785242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501904, 25.749458, 21.512779>,  <32.677536, 25.744215, 21.349300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501904, 25.749458, 21.512779>,  <32.209179, 25.758198, 21.785242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501904, 25.749458, 21.512779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038646, -0.996547, 0.073484,
		-0.680412, -0.080101, -0.728439,
		0.731810, -0.021848, -0.681159,
		32.721447, 25.742905, 21.308432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031109, 25.104595, 21.446264>,  <32.209179, 25.758198, 21.785242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031109, 25.104595, 21.446264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.407040, 25.190098, 21.339653>,  <32.632599, 25.241400, 21.275686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.407040, 25.190098, 21.339653>,  <32.031109, 25.104595, 21.446264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407040, 25.190098, 21.339653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225846, -0.974045, 0.015186,
		-0.256365, -0.074466, -0.963707,
		0.939825, 0.213757, -0.266529,
		32.688988, 25.254225, 21.259695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206951, 24.727459, 20.884836>,  <32.031109, 25.104595, 21.446264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206951, 24.727459, 20.884836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.549980, 24.814838, 21.071106>,  <32.755798, 24.867266, 21.182869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.549980, 24.814838, 21.071106>,  <32.206951, 24.727459, 20.884836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549980, 24.814838, 21.071106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247328, -0.968931, -0.000945,
		0.451001, 0.115985, -0.884955,
		0.857570, 0.218447, 0.465676,
		32.807251, 24.880373, 21.210808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711525, 24.231979, 20.556309>,  <32.206951, 24.727459, 20.884836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711525, 24.231979, 20.556309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.843243, 24.371685, 20.907211>,  <32.922276, 24.455509, 21.117752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.843243, 24.371685, 20.907211>,  <32.711525, 24.231979, 20.556309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843243, 24.371685, 20.907211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252746, -0.927775, 0.274506,
		0.909771, 0.131328, -0.393789,
		0.329298, 0.349266, 0.877255,
		32.942032, 24.476465, 21.170387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390270, 23.909424, 20.644392>,  <32.711525, 24.231979, 20.556309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390270, 23.909424, 20.644392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.290703, 24.033039, 21.011551>,  <33.230965, 24.107208, 21.231846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.290703, 24.033039, 21.011551>,  <33.390270, 23.909424, 20.644392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290703, 24.033039, 21.011551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079936, -0.937938, 0.337464,
		0.965221, 0.157373, 0.208765,
		-0.248917, 0.309039, 0.917897,
		33.216026, 24.125751, 21.286921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852234, 23.590084, 21.033342>,  <33.390270, 23.909424, 20.644392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852234, 23.590084, 21.033342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.578503, 23.687317, 21.308327>,  <33.414265, 23.745657, 21.473318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.578503, 23.687317, 21.308327>,  <33.852234, 23.590084, 21.033342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578503, 23.687317, 21.308327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067891, -0.917462, 0.391989,
		0.726003, 0.314922, 0.611345,
		-0.684332, 0.243080, 0.687461,
		33.373203, 23.760241, 21.514565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181202, 23.359886, 21.620550>,  <33.852234, 23.590084, 21.033342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181202, 23.359886, 21.620550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.792213, 23.390285, 21.708664>,  <33.558819, 23.408525, 21.761532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.792213, 23.390285, 21.708664>,  <34.181202, 23.359886, 21.620550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792213, 23.390285, 21.708664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026058, -0.974858, 0.221297,
		0.231567, 0.209464, 0.950001,
		-0.972470, 0.076000, 0.220286,
		33.500473, 23.413086, 21.774750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054523, 22.994080, 22.258158>,  <34.181202, 23.359886, 21.620550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054523, 22.994080, 22.258158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.679634, 23.015610, 22.120338>,  <33.454700, 23.028528, 22.037647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.679634, 23.015610, 22.120338>,  <34.054523, 22.994080, 22.258158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679634, 23.015610, 22.120338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219073, -0.859596, 0.461629,
		-0.271326, 0.508131, 0.817426,
		-0.937225, 0.053824, -0.344548,
		33.398468, 23.031757, 22.016973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718704, 22.725182, 22.750967>,  <34.054523, 22.994080, 22.258158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718704, 22.725182, 22.750967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.460934, 22.677116, 22.448902>,  <33.306271, 22.648277, 22.267662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.460934, 22.677116, 22.448902>,  <33.718704, 22.725182, 22.750967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460934, 22.677116, 22.448902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246837, -0.902017, 0.354170,
		-0.723727, 0.414641, 0.551627,
		-0.644430, -0.120161, -0.755163,
		33.267605, 22.641068, 22.222353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187157, 22.325529, 23.045025>,  <33.718704, 22.725182, 22.750967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187157, 22.325529, 23.045025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.153938, 22.289223, 22.648064>,  <33.134007, 22.267439, 22.409887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.153938, 22.289223, 22.648064>,  <33.187157, 22.325529, 23.045025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153938, 22.289223, 22.648064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244867, -0.963454, 0.108608,
		-0.965994, 0.252026, 0.057784,
		-0.083044, -0.090765, -0.992404,
		33.129025, 22.261993, 22.350342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505764, 22.060431, 22.970236>,  <33.187157, 22.325529, 23.045025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505764, 22.060431, 22.970236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.649963, 21.974110, 22.607254>,  <32.736481, 21.922318, 22.389465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.649963, 21.974110, 22.607254>,  <32.505764, 22.060431, 22.970236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649963, 21.974110, 22.607254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395782, -0.916337, 0.060685,
		-0.844629, 0.337277, -0.415747,
		0.360497, -0.215801, -0.907453,
		32.758114, 21.909369, 22.335018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983116, 21.806450, 22.627775>,  <32.505764, 22.060431, 22.970236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983116, 21.806450, 22.627775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.333706, 21.676128, 22.485989>,  <32.544060, 21.597935, 22.400917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.333706, 21.676128, 22.485989>,  <31.983116, 21.806450, 22.627775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333706, 21.676128, 22.485989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275983, -0.943272, 0.184585,
		-0.394495, -0.063957, -0.916669,
		0.876474, -0.325803, -0.354465,
		32.596649, 21.578388, 22.379650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358913, 21.730515, 22.149677>,  <31.983116, 21.806450, 22.627775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358913, 21.730515, 22.149677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.980223, 21.647953, 22.050797>,  <30.753008, 21.598415, 21.991468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.980223, 21.647953, 22.050797>,  <31.358913, 21.730515, 22.149677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980223, 21.647953, 22.050797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110707, 0.929412, -0.352048,
		0.302417, -0.305925, -0.902748,
		-0.946725, -0.206406, -0.247202,
		30.696205, 21.586031, 21.976635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297447, 21.908806, 21.469423>,  <31.358913, 21.730515, 22.149677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297447, 21.908806, 21.469423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.924541, 21.949390, 21.608326>,  <30.700798, 21.973742, 21.691668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.924541, 21.949390, 21.608326>,  <31.297447, 21.908806, 21.469423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924541, 21.949390, 21.608326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079028, 0.879570, -0.469159,
		-0.353038, -0.464824, -0.811975,
		-0.932265, 0.101463, 0.347256,
		30.644861, 21.979830, 21.712503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853071, 22.157118, 20.878010>,  <31.297447, 21.908806, 21.469423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853071, 22.157118, 20.878010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.582914, 22.238525, 21.161537>,  <30.420820, 22.287371, 21.331654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.582914, 22.238525, 21.161537>,  <30.853071, 22.157118, 20.878010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582914, 22.238525, 21.161537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257154, 0.835841, -0.485018,
		-0.691172, -0.509853, -0.512183,
		-0.675391, 0.203521, 0.708821,
		30.380297, 22.299582, 21.374184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181051, 22.431437, 20.557034>,  <30.853071, 22.157118, 20.878010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181051, 22.431437, 20.557034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.168573, 22.562248, 20.934834>,  <30.161087, 22.640736, 21.161514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.168573, 22.562248, 20.934834>,  <30.181051, 22.431437, 20.557034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168573, 22.562248, 20.934834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279077, 0.904528, -0.322404,
		-0.959762, -0.273645, 0.063051,
		-0.031193, 0.327028, 0.944500,
		30.159216, 22.660357, 21.218184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528650, 22.721626, 20.632401>,  <30.181051, 22.431437, 20.557034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528650, 22.721626, 20.632401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.759903, 22.885830, 20.914463>,  <29.898655, 22.984352, 21.083700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.759903, 22.885830, 20.914463>,  <29.528650, 22.721626, 20.632401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759903, 22.885830, 20.914463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438333, 0.885182, -0.155938,
		-0.688205, -0.218940, 0.691693,
		0.578133, 0.410509, 0.705155,
		29.933342, 23.008984, 21.126009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127476, 23.127502, 20.946236>,  <29.528650, 22.721626, 20.632401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127476, 23.127502, 20.946236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.482616, 23.273258, 21.058620>,  <29.695702, 23.360712, 21.126051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.482616, 23.273258, 21.058620>,  <29.127476, 23.127502, 20.946236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482616, 23.273258, 21.058620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376836, 0.926221, -0.010430,
		-0.264036, -0.096617, 0.959662,
		0.887851, 0.364389, 0.280964,
		29.748972, 23.382574, 21.142910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990725, 23.610422, 21.565771>,  <29.127476, 23.127502, 20.946236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990725, 23.610422, 21.565771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.351797, 23.710556, 21.425774>,  <29.568441, 23.770636, 21.341774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.351797, 23.710556, 21.425774>,  <28.990725, 23.610422, 21.565771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351797, 23.710556, 21.425774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230043, 0.968118, 0.099133,
		0.363653, -0.008972, 0.931491,
		0.902683, 0.250333, -0.349995,
		29.622602, 23.785656, 21.320774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192324, 24.198309, 21.973700>,  <28.990725, 23.610422, 21.565771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192324, 24.198309, 21.973700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.436733, 24.198341, 21.657055>,  <29.583378, 24.198360, 21.467068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.436733, 24.198341, 21.657055>,  <29.192324, 24.198309, 21.973700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436733, 24.198341, 21.657055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016367, 0.999785, 0.012736,
		0.791444, -0.020739, 0.610890,
		0.611023, 0.000081, -0.791613,
		29.620041, 24.198366, 21.419571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703444, 24.671553, 22.115667>,  <29.192324, 24.198309, 21.973700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703444, 24.671553, 22.115667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.666729, 24.667152, 21.717381>,  <29.644701, 24.664513, 21.478409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.666729, 24.667152, 21.717381>,  <29.703444, 24.671553, 22.115667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666729, 24.667152, 21.717381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040734, 0.999060, -0.014791,
		0.994945, -0.041917, -0.091252,
		-0.091786, -0.010999, -0.995718,
		29.639193, 24.663853, 21.418665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165115, 25.190100, 21.910507>,  <29.703444, 24.671553, 22.115667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165115, 25.190100, 21.910507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.915592, 25.131081, 21.603497>,  <29.765879, 25.095669, 21.419291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.915592, 25.131081, 21.603497>,  <30.165115, 25.190100, 21.910507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915592, 25.131081, 21.603497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048997, 0.972705, -0.226813,
		0.780041, -0.179094, -0.599551,
		-0.623807, -0.147547, -0.767525,
		29.728451, 25.086817, 21.373240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425468, 25.608288, 21.303083>,  <30.165115, 25.190100, 21.910507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425468, 25.608288, 21.303083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.046713, 25.529884, 21.201115>,  <29.819460, 25.482841, 21.139935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.046713, 25.529884, 21.201115>,  <30.425468, 25.608288, 21.303083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046713, 25.529884, 21.201115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025476, 0.835982, -0.548165,
		0.320555, -0.512556, -0.796575,
		-0.946887, -0.196010, -0.254920,
		29.762646, 25.471081, 21.124640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323870, 25.844805, 20.556246>,  <30.425468, 25.608288, 21.303083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323870, 25.844805, 20.556246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.961531, 25.816010, 20.723221>,  <29.744127, 25.798733, 20.823406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.961531, 25.816010, 20.723221>,  <30.323870, 25.844805, 20.556246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961531, 25.816010, 20.723221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283336, 0.835531, -0.470754,
		-0.314896, -0.544708, -0.777261,
		-0.905849, -0.071987, 0.417440,
		29.689775, 25.794413, 20.848454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890751, 26.064650, 20.040413>,  <30.323870, 25.844805, 20.556246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890751, 26.064650, 20.040413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.622568, 26.120403, 20.331909>,  <29.461658, 26.153856, 20.506807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.622568, 26.120403, 20.331909>,  <29.890751, 26.064650, 20.040413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622568, 26.120403, 20.331909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392177, 0.767195, -0.507552,
		-0.629831, -0.626086, -0.459706,
		-0.670455, 0.139386, 0.728740,
		29.421432, 26.162220, 20.550531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246164, 26.260103, 19.710583>,  <29.890751, 26.064650, 20.040413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246164, 26.260103, 19.710583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.185894, 26.387447, 20.084949>,  <29.149733, 26.463854, 20.309570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.185894, 26.387447, 20.084949>,  <29.246164, 26.260103, 19.710583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185894, 26.387447, 20.084949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387113, 0.852123, -0.352180,
		-0.909638, -0.415371, -0.005152,
		-0.150675, 0.318362, 0.935918,
		29.140692, 26.482956, 20.365725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.974251, 30.819206, 30.721415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.360733, 30.904091, 30.779957>,  <39.592621, 30.955023, 30.815083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.360733, 30.904091, 30.779957>,  <38.974251, 30.819206, 30.721415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360733, 30.904091, 30.779957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078841, 0.297280, -0.951530,
		-0.245436, 0.930908, 0.270501,
		0.966201, 0.212213, 0.146357,
		39.650593, 30.967754, 30.823864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019886, 31.580875, 30.580557>,  <38.974251, 30.819206, 30.721415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019886, 31.580875, 30.580557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.320896, 31.324299, 30.520878>,  <39.501503, 31.170353, 30.485069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.320896, 31.324299, 30.520878>,  <39.019886, 31.580875, 30.580557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320896, 31.324299, 30.520878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024885, 0.254088, -0.966861,
		0.658092, 0.723875, 0.207170,
		0.752526, -0.641439, -0.149200,
		39.546654, 31.131866, 30.476118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385178, 31.833616, 30.029936>,  <39.019886, 31.580875, 30.580557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385178, 31.833616, 30.029936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.596447, 31.493973, 30.027077>,  <39.723209, 31.290188, 30.025362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.596447, 31.493973, 30.027077>,  <39.385178, 31.833616, 30.029936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596447, 31.493973, 30.027077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283107, 0.184023, -0.941268,
		0.800553, 0.495129, 0.337584,
		0.528173, -0.849107, -0.007146,
		39.754898, 31.239241, 30.024933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150791, 31.960257, 29.968470>,  <39.385178, 31.833616, 30.029936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150791, 31.960257, 29.968470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.038345, 31.604164, 29.825104>,  <39.970879, 31.390509, 29.739084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.038345, 31.604164, 29.825104>,  <40.150791, 31.960257, 29.968470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038345, 31.604164, 29.825104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505451, 0.180129, -0.843844,
		0.815777, -0.418382, 0.399330,
		-0.281118, -0.890231, -0.358416,
		39.954010, 31.337095, 29.717579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643551, 31.822430, 29.507534>,  <40.150791, 31.960257, 29.968470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643551, 31.822430, 29.507534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.361980, 31.548100, 29.433632>,  <40.193039, 31.383501, 29.389290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.361980, 31.548100, 29.433632>,  <40.643551, 31.822430, 29.507534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361980, 31.548100, 29.433632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187818, 0.071131, -0.979625,
		0.684993, -0.724282, 0.078740,
		-0.703924, -0.685825, -0.184757,
		40.150803, 31.342352, 29.378204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935642, 31.328476, 29.098064>,  <40.643551, 31.822430, 29.507534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935642, 31.328476, 29.098064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.541454, 31.344769, 29.032116>,  <40.304939, 31.354544, 28.992546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.541454, 31.344769, 29.032116>,  <40.935642, 31.328476, 29.098064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541454, 31.344769, 29.032116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160982, -0.085228, -0.983271,
		-0.054097, -0.995529, 0.077433,
		-0.985474, 0.040727, -0.164872,
		40.245811, 31.356989, 28.982655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763683, 30.673092, 28.767818>,  <40.935642, 31.328476, 29.098064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763683, 30.673092, 28.767818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.467930, 30.930294, 28.687965>,  <40.290478, 31.084616, 28.640053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.467930, 30.930294, 28.687965>,  <40.763683, 30.673092, 28.767818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467930, 30.930294, 28.687965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139063, -0.144268, -0.979718,
		-0.658768, -0.752148, 0.017251,
		-0.739382, 0.643008, -0.199635,
		40.246117, 31.123196, 28.628075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460159, 30.383522, 28.174650>,  <40.763683, 30.673092, 28.767818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460159, 30.383522, 28.174650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.306515, 30.751804, 28.147053>,  <40.214329, 30.972773, 28.130495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.306515, 30.751804, 28.147053>,  <40.460159, 30.383522, 28.174650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306515, 30.751804, 28.147053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013540, -0.080335, -0.996676,
		-0.923186, -0.381905, 0.043324,
		-0.384116, 0.920704, -0.068993,
		40.191280, 31.028015, 28.126354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110367, 30.306299, 27.559990>,  <40.460159, 30.383522, 28.174650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110367, 30.306299, 27.559990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.103893, 30.701748, 27.619816>,  <40.100010, 30.939016, 27.655712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.103893, 30.701748, 27.619816>,  <40.110367, 30.306299, 27.559990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103893, 30.701748, 27.619816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108934, 0.146951, -0.983127,
		-0.993917, -0.032205, 0.105316,
		-0.016186, 0.988619, 0.149565,
		40.099037, 30.998333, 27.664686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438171, 30.581656, 27.296789>,  <40.110367, 30.306299, 27.559990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438171, 30.581656, 27.296789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.731857, 30.852818, 27.281960>,  <39.908070, 31.015514, 27.273062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.731857, 30.852818, 27.281960>,  <39.438171, 30.581656, 27.296789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731857, 30.852818, 27.281960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102781, 0.057005, -0.993069,
		-0.671091, 0.732938, 0.111530,
		0.734216, 0.677903, -0.037076,
		39.952122, 31.056189, 27.270836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282715, 30.985870, 26.749239>,  <39.438171, 30.581656, 27.296789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282715, 30.985870, 26.749239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.654903, 31.110428, 26.826447>,  <39.878216, 31.185162, 26.872772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.654903, 31.110428, 26.826447>,  <39.282715, 30.985870, 26.749239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654903, 31.110428, 26.826447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129589, 0.213055, -0.968408,
		-0.342679, 0.926090, 0.157889,
		0.930472, 0.311392, 0.193021,
		39.934044, 31.203846, 26.884354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397484, 31.644167, 26.431837>,  <39.282715, 30.985870, 26.749239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397484, 31.644167, 26.431837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.763988, 31.485401, 26.453434>,  <39.983891, 31.390141, 26.466393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.763988, 31.485401, 26.453434>,  <39.397484, 31.644167, 26.431837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763988, 31.485401, 26.453434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128143, 0.162738, -0.978313,
		0.379522, 0.903313, 0.199974,
		0.916265, -0.396916, 0.053990,
		40.038868, 31.366325, 26.469631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789768, 32.172119, 26.132738>,  <39.397484, 31.644167, 26.431837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789768, 32.172119, 26.132738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.004017, 31.834793, 26.115124>,  <40.132565, 31.632399, 26.104555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.004017, 31.834793, 26.115124>,  <39.789768, 32.172119, 26.132738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004017, 31.834793, 26.115124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212414, 0.185013, -0.959505,
		0.817309, 0.504575, 0.278227,
		0.535618, -0.843311, -0.044034,
		40.164703, 31.581800, 26.101913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304855, 32.257935, 25.734224>,  <39.789768, 32.172119, 26.132738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304855, 32.257935, 25.734224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.315430, 31.858292, 25.747391>,  <40.321774, 31.618505, 25.755291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.315430, 31.858292, 25.747391>,  <40.304855, 32.257935, 25.734224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315430, 31.858292, 25.747391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183211, -0.027526, -0.982688,
		0.982718, 0.032012, 0.182320,
		0.026439, -0.999108, 0.032915,
		40.323360, 31.558559, 25.757265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835121, 32.187016, 25.247974>,  <40.304855, 32.257935, 25.734224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835121, 32.187016, 25.247974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.615322, 31.855267, 25.288349>,  <40.483440, 31.656218, 25.312574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.615322, 31.855267, 25.288349>,  <40.835121, 32.187016, 25.247974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615322, 31.855267, 25.288349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000913, -0.121405, -0.992603,
		0.835493, -0.545343, 0.067469,
		-0.549500, -0.829374, 0.100935,
		40.450474, 31.606455, 25.318630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137558, 31.722492, 24.750118>,  <40.835121, 32.187016, 25.247974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137558, 31.722492, 24.750118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.773796, 31.578800, 24.833969>,  <40.555538, 31.492586, 24.884279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.773796, 31.578800, 24.833969>,  <41.137558, 31.722492, 24.750118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773796, 31.578800, 24.833969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227008, 0.006386, -0.973872,
		0.348504, -0.933228, -0.087356,
		-0.909402, -0.359229, 0.209625,
		40.500977, 31.471031, 24.896856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122452, 31.193125, 24.315792>,  <41.137558, 31.722492, 24.750118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122452, 31.193125, 24.315792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.737114, 31.233009, 24.415409>,  <40.505913, 31.256941, 24.475180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.737114, 31.233009, 24.415409>,  <41.122452, 31.193125, 24.315792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737114, 31.233009, 24.415409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262567, -0.160180, -0.951526,
		-0.054989, -0.982038, 0.180491,
		-0.963345, 0.099715, 0.249043,
		40.448109, 31.262924, 24.490122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806992, 30.726400, 23.903460>,  <41.122452, 31.193125, 24.315792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806992, 30.726400, 23.903460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.518063, 30.975708, 24.023319>,  <40.344707, 31.125292, 24.095236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.518063, 30.975708, 24.023319>,  <40.806992, 30.726400, 23.903460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518063, 30.975708, 24.023319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452417, -0.098164, -0.886387,
		-0.523042, -0.775822, 0.352883,
		-0.722320, 0.623268, 0.299651,
		40.301365, 31.162689, 24.113214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038502, 30.474186, 23.653635>,  <40.806992, 30.726400, 23.903460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038502, 30.474186, 23.653635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.997753, 30.863182, 23.737427>,  <39.973305, 31.096581, 23.787701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.997753, 30.863182, 23.737427>,  <40.038502, 30.474186, 23.653635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997753, 30.863182, 23.737427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520972, 0.127233, -0.844038,
		-0.847472, -0.195119, 0.493680,
		-0.101875, 0.972492, 0.209478,
		39.967190, 31.154930, 23.800270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274303, 30.662138, 23.649509>,  <40.038502, 30.474186, 23.653635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274303, 30.662138, 23.649509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.457439, 31.007793, 23.565937>,  <39.567322, 31.215187, 23.515793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.457439, 31.007793, 23.565937>,  <39.274303, 30.662138, 23.649509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457439, 31.007793, 23.565937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465044, 0.032489, -0.884691,
		-0.757706, 0.502208, 0.416736,
		0.457839, 0.864136, -0.208932,
		39.594791, 31.267035, 23.503258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794098, 31.051735, 23.257843>,  <39.274303, 30.662138, 23.649509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794098, 31.051735, 23.257843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.122242, 31.270954, 23.192543>,  <39.319130, 31.402485, 23.153364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.122242, 31.270954, 23.192543>,  <38.794098, 31.051735, 23.257843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122242, 31.270954, 23.192543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190735, -0.006890, -0.981618,
		-0.539097, 0.836419, 0.098880,
		0.820362, 0.548047, -0.163249,
		39.368351, 31.435368, 23.143568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605648, 31.184540, 22.637957>,  <38.794098, 31.051735, 23.257843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605648, 31.184540, 22.637957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.240742, 31.276062, 22.502060>,  <38.021797, 31.330976, 22.420523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.240742, 31.276062, 22.502060>,  <38.605648, 31.184540, 22.637957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240742, 31.276062, 22.502060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168528, 0.546312, 0.820452,
		0.373330, 0.805724, -0.459819,
		-0.912262, 0.228807, -0.339741,
		37.967064, 31.344704, 22.400137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491409, 31.835432, 22.774990>,  <38.605648, 31.184540, 22.637957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491409, 31.835432, 22.774990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.110516, 31.739639, 22.699200>,  <37.881981, 31.682163, 22.653725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.110516, 31.739639, 22.699200>,  <38.491409, 31.835432, 22.774990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110516, 31.739639, 22.699200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290091, 0.515568, 0.806248,
		-0.095394, 0.822701, -0.560413,
		-0.952233, -0.239482, -0.189476,
		37.824844, 31.667795, 22.642357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047398, 32.461712, 22.828419>,  <38.491409, 31.835432, 22.774990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047398, 32.461712, 22.828419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.759003, 32.186977, 22.865139>,  <37.585964, 32.022137, 22.887171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.759003, 32.186977, 22.865139>,  <38.047398, 32.461712, 22.828419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759003, 32.186977, 22.865139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381395, 0.503938, 0.774974,
		-0.578542, 0.523737, -0.625291,
		-0.720990, -0.686838, 0.091799,
		37.542706, 31.980927, 22.892679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570969, 32.775902, 23.110649>,  <38.047398, 32.461712, 22.828419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570969, 32.775902, 23.110649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.441349, 32.408978, 23.203197>,  <37.363579, 32.188824, 23.258726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.441349, 32.408978, 23.203197>,  <37.570969, 32.775902, 23.110649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441349, 32.408978, 23.203197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369876, 0.347947, 0.861466,
		-0.870738, 0.193579, -0.452043,
		-0.324049, -0.917311, 0.231370,
		37.344135, 32.133785, 23.272608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985268, 32.881886, 23.527468>,  <37.570969, 32.775902, 23.110649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985268, 32.881886, 23.527468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.135269, 32.523106, 23.621155>,  <37.225269, 32.307838, 23.677366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.135269, 32.523106, 23.621155>,  <36.985268, 32.881886, 23.527468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135269, 32.523106, 23.621155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196850, 0.169845, 0.965610,
		-0.905882, -0.408214, -0.112872,
		0.375004, -0.896947, 0.234217,
		37.247772, 32.254021, 23.691420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577469, 32.598171, 24.128403>,  <36.985268, 32.881886, 23.527468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577469, 32.598171, 24.128403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.934738, 32.418827, 24.142323>,  <37.149101, 32.311222, 24.150675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.934738, 32.418827, 24.142323>,  <36.577469, 32.598171, 24.128403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934738, 32.418827, 24.142323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013895, 0.104854, 0.994391,
		-0.449494, -0.887682, 0.099883,
		0.893175, -0.448360, 0.034797,
		37.202690, 32.284321, 24.152761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528530, 32.077171, 24.745844>,  <36.577469, 32.598171, 24.128403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528530, 32.077171, 24.745844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.910877, 32.154766, 24.657585>,  <37.140285, 32.201324, 24.604630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.910877, 32.154766, 24.657585>,  <36.528530, 32.077171, 24.745844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910877, 32.154766, 24.657585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220090, 0.024700, 0.975167,
		0.194624, -0.980692, -0.019086,
		0.955867, 0.193991, -0.220648,
		37.197636, 32.212963, 24.591391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886837, 31.704239, 25.191328>,  <36.528530, 32.077171, 24.745844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886837, 31.704239, 25.191328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.179985, 31.958813, 25.095119>,  <37.355873, 32.111557, 25.037394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.179985, 31.958813, 25.095119>,  <36.886837, 31.704239, 25.191328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179985, 31.958813, 25.095119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276577, 0.044308, 0.959970,
		0.621616, -0.770056, -0.143551,
		0.732870, 0.636435, -0.240522,
		37.399845, 32.149742, 25.022963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446678, 31.337484, 25.499548>,  <36.886837, 31.704239, 25.191328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446678, 31.337484, 25.499548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.564095, 31.710262, 25.414398>,  <37.634544, 31.933929, 25.363308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.564095, 31.710262, 25.414398>,  <37.446678, 31.337484, 25.499548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564095, 31.710262, 25.414398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048502, 0.207878, 0.976951,
		0.954715, -0.297101, 0.015820,
		0.293542, 0.931943, -0.212875,
		37.652157, 31.989845, 25.350536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085720, 31.443836, 25.871122>,  <37.446678, 31.337484, 25.499548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085720, 31.443836, 25.871122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.976574, 31.820343, 25.791565>,  <37.911087, 32.046249, 25.743830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.976574, 31.820343, 25.791565>,  <38.085720, 31.443836, 25.871122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976574, 31.820343, 25.791565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358792, 0.291388, 0.886770,
		0.892645, 0.170604, -0.417228,
		-0.272862, 0.941269, -0.198895,
		37.894714, 32.102722, 25.731895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739277, 31.942905, 26.041285>,  <38.085720, 31.443836, 25.871122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739277, 31.942905, 26.041285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.385891, 32.128567, 26.066746>,  <38.173859, 32.239964, 26.082022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.385891, 32.128567, 26.066746>,  <38.739277, 31.942905, 26.041285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385891, 32.128567, 26.066746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231117, 0.313606, 0.920997,
		0.407522, 0.828380, -0.384333,
		-0.883465, 0.464153, 0.063652,
		38.120850, 32.267811, 26.085842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904423, 32.593178, 26.373775>,  <38.739277, 31.942905, 26.041285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904423, 32.593178, 26.373775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.506763, 32.574146, 26.412579>,  <38.268169, 32.562729, 26.435860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.506763, 32.574146, 26.412579>,  <38.904423, 32.593178, 26.373775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506763, 32.574146, 26.412579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066701, 0.436078, 0.897433,
		-0.084998, 0.898650, -0.430352,
		-0.994146, -0.047575, 0.097006,
		38.208519, 32.559875, 26.441681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632607, 33.233887, 26.463446>,  <38.904423, 32.593178, 26.373775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632607, 33.233887, 26.463446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.356064, 32.997166, 26.629238>,  <38.190140, 32.855133, 26.728714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.356064, 32.997166, 26.629238>,  <38.632607, 33.233887, 26.463446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356064, 32.997166, 26.629238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054945, 0.528942, 0.846878,
		-0.720423, 0.608267, -0.333170,
		-0.691355, -0.591804, 0.414483,
		38.148659, 32.819626, 26.753584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216465, 33.723698, 26.844330>,  <38.632607, 33.233887, 26.463446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216465, 33.723698, 26.844330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.147053, 33.360069, 26.995846>,  <38.105404, 33.141891, 27.086756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.147053, 33.360069, 26.995846>,  <38.216465, 33.723698, 26.844330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147053, 33.360069, 26.995846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070530, 0.372166, 0.925483,
		-0.982300, 0.187314, -0.000465,
		-0.173529, -0.909069, 0.378790,
		38.094994, 33.087349, 27.109484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845058, 33.889938, 27.409130>,  <38.216465, 33.723698, 26.844330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845058, 33.889938, 27.409130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.955315, 33.514481, 27.492050>,  <38.021469, 33.289207, 27.541801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.955315, 33.514481, 27.492050>,  <37.845058, 33.889938, 27.409130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955315, 33.514481, 27.492050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039753, 0.226600, 0.973176,
		-0.960438, -0.260007, 0.099774,
		0.275641, -0.938642, 0.207299,
		38.038006, 33.232887, 27.554239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357456, 33.629684, 27.911821>,  <37.845058, 33.889938, 27.409130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357456, 33.629684, 27.911821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.689537, 33.407192, 27.926670>,  <37.888786, 33.273697, 27.935579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.689537, 33.407192, 27.926670>,  <37.357456, 33.629684, 27.911821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689537, 33.407192, 27.926670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050744, 0.141713, 0.988606,
		-0.555149, -0.818859, 0.145875,
		0.830201, -0.556227, 0.037120,
		37.938599, 33.240326, 27.937805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325962, 33.117691, 28.446426>,  <37.357456, 33.629684, 27.911821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325962, 33.117691, 28.446426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.724709, 33.109638, 28.415825>,  <37.963955, 33.104805, 28.397465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.724709, 33.109638, 28.415825>,  <37.325962, 33.117691, 28.446426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724709, 33.109638, 28.415825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079028, 0.210296, 0.974438,
		-0.003529, -0.977430, 0.211228,
		0.996866, -0.020132, -0.076502,
		38.023769, 33.103600, 28.392874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488972, 32.685078, 28.931658>,  <37.325962, 33.117691, 28.446426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488972, 32.685078, 28.931658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.807438, 32.915676, 28.858147>,  <37.998516, 33.054035, 28.814041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.807438, 32.915676, 28.858147>,  <37.488972, 32.685078, 28.931658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807438, 32.915676, 28.858147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148168, 0.108724, 0.982968,
		0.586658, -0.809834, 0.001144,
		0.796165, 0.576496, -0.183776,
		38.046288, 33.088627, 28.803015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018047, 32.522560, 29.511620>,  <37.488972, 32.685078, 28.931658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018047, 32.522560, 29.511620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.140087, 32.855190, 29.325974>,  <38.213310, 33.054768, 29.214586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.140087, 32.855190, 29.325974>,  <38.018047, 32.522560, 29.511620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140087, 32.855190, 29.325974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242454, 0.403464, 0.882288,
		0.920941, -0.381709, -0.078523,
		0.305096, 0.831574, -0.464114,
		38.231617, 33.104664, 29.186739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690689, 32.592728, 29.653984>,  <38.018047, 32.522560, 29.511620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690689, 32.592728, 29.653984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.542160, 32.957630, 29.584801>,  <38.453045, 33.176571, 29.543291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.542160, 32.957630, 29.584801>,  <38.690689, 32.592728, 29.653984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542160, 32.957630, 29.584801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165248, 0.248228, 0.954503,
		0.913682, 0.325844, -0.242921,
		-0.371319, 0.912254, -0.172957,
		38.430763, 33.231308, 29.532913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066715, 33.001797, 30.011387>,  <38.690689, 32.592728, 29.653984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066715, 33.001797, 30.011387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.734863, 33.214649, 29.943794>,  <38.535751, 33.342361, 29.903238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.734863, 33.214649, 29.943794>,  <39.066715, 33.001797, 30.011387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734863, 33.214649, 29.943794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006391, 0.311691, 0.950162,
		0.558278, 0.787202, -0.261989,
		-0.829629, 0.532129, -0.168979,
		38.485973, 33.374287, 29.893101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.989349, 23.229477, 24.665083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.250807, 23.269882, 24.965096>,  <27.407681, 23.294125, 25.145103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.250807, 23.269882, 24.965096>,  <26.989349, 23.229477, 24.665083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250807, 23.269882, 24.965096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110321, -0.993184, 0.037618,
		0.748719, 0.058156, -0.660331,
		0.653643, 0.101014, 0.750032,
		27.446899, 23.300186, 25.190105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638365, 22.798014, 24.558205>,  <26.989349, 23.229477, 24.665083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638365, 22.798014, 24.558205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.608730, 22.847557, 24.954018>,  <27.590950, 22.877283, 25.191505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.608730, 22.847557, 24.954018>,  <27.638365, 22.798014, 24.558205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608730, 22.847557, 24.954018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188984, -0.972534, 0.135881,
		0.979182, 0.197072, 0.048642,
		-0.074084, 0.123859, 0.989530,
		27.586506, 22.884714, 25.250877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182817, 22.330343, 24.929243>,  <27.638365, 22.798014, 24.558205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182817, 22.330343, 24.929243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.871315, 22.423447, 25.162262>,  <27.684414, 22.479309, 25.302073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.871315, 22.423447, 25.162262>,  <28.182817, 22.330343, 24.929243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871315, 22.423447, 25.162262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098555, -0.962483, 0.252812,
		0.619534, 0.139467, 0.772480,
		-0.778758, 0.232757, 0.582546,
		27.637688, 22.493275, 25.337027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425211, 21.985052, 25.407581>,  <28.182817, 22.330343, 24.929243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425211, 21.985052, 25.407581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.050186, 22.062119, 25.523415>,  <27.825172, 22.108358, 25.592915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.050186, 22.062119, 25.523415>,  <28.425211, 21.985052, 25.407581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050186, 22.062119, 25.523415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155356, -0.976868, 0.146945,
		0.311197, 0.092781, 0.945806,
		-0.937561, 0.192665, 0.289585,
		27.768917, 22.119919, 25.610291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315908, 21.619717, 26.007893>,  <28.425211, 21.985052, 25.407581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315908, 21.619717, 26.007893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.958710, 21.692898, 25.843410>,  <27.744390, 21.736807, 25.744722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.958710, 21.692898, 25.843410>,  <28.315908, 21.619717, 26.007893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958710, 21.692898, 25.843410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197404, -0.980294, -0.007456,
		-0.404464, 0.074515, 0.911513,
		-0.892995, 0.182952, -0.411203,
		27.690811, 21.747784, 25.720049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963732, 21.238348, 26.419479>,  <28.315908, 21.619717, 26.007893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963732, 21.238348, 26.419479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.724251, 21.289841, 26.103256>,  <27.580563, 21.320736, 25.913523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.724251, 21.289841, 26.103256>,  <27.963732, 21.238348, 26.419479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724251, 21.289841, 26.103256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316204, -0.944820, 0.085615,
		-0.735913, 0.301236, 0.606373,
		-0.598704, 0.128733, -0.790558,
		27.544640, 21.328461, 25.866089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339935, 20.967209, 26.594622>,  <27.963732, 21.238348, 26.419479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339935, 20.967209, 26.594622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.350437, 20.994083, 26.195663>,  <27.356737, 21.010208, 25.956289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.350437, 20.994083, 26.195663>,  <27.339935, 20.967209, 26.594622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350437, 20.994083, 26.195663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137949, -0.987950, -0.070180,
		-0.990091, 0.139432, -0.016668,
		0.026253, 0.067186, -0.997395,
		27.358313, 21.014238, 25.896444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745867, 20.559624, 26.372551>,  <27.339935, 20.967209, 26.594622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745867, 20.559624, 26.372551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.013767, 20.591614, 26.077244>,  <27.174507, 20.610807, 25.900059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.013767, 20.591614, 26.077244>,  <26.745867, 20.559624, 26.372551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013767, 20.591614, 26.077244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036299, -0.996521, -0.075023,
		-0.741700, 0.023448, -0.670322,
		0.669749, 0.079976, -0.738268,
		27.214691, 20.615606, 25.855762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418705, 20.127312, 25.736198>,  <26.745867, 20.559624, 26.372551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418705, 20.127312, 25.736198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.808224, 20.142654, 25.646538>,  <27.041935, 20.151859, 25.592741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.808224, 20.142654, 25.646538>,  <26.418705, 20.127312, 25.736198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808224, 20.142654, 25.646538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002124, -0.987163, -0.159699,
		-0.227401, 0.155039, -0.961380,
		0.973799, 0.038357, -0.224153,
		27.100363, 20.154161, 25.579292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508472, 19.761671, 25.154884>,  <26.418705, 20.127312, 25.736198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508472, 19.761671, 25.154884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.865263, 19.768444, 25.335590>,  <27.079338, 19.772509, 25.444014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.865263, 19.768444, 25.335590>,  <26.508472, 19.761671, 25.154884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865263, 19.768444, 25.335590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079049, -0.989745, -0.118978,
		0.445119, 0.141837, -0.884167,
		0.891976, 0.016933, 0.451766,
		27.132856, 19.773523, 25.471121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867447, 19.164270, 24.862860>,  <26.508472, 19.761671, 25.154884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867447, 19.164270, 24.862860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.114614, 19.264458, 25.160973>,  <27.262915, 19.324570, 25.339840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.114614, 19.264458, 25.160973>,  <26.867447, 19.164270, 24.862860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114614, 19.264458, 25.160973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303768, -0.950350, 0.067533,
		0.725193, 0.184663, -0.663321,
		0.617917, 0.250470, 0.745281,
		27.299990, 19.339600, 25.384558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450491, 18.851860, 24.668732>,  <26.867447, 19.164270, 24.862860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450491, 18.851860, 24.668732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.493616, 18.891285, 25.064442>,  <27.519491, 18.914940, 25.301867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.493616, 18.891285, 25.064442>,  <27.450491, 18.851860, 24.668732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.493616, 18.891285, 25.064442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197971, -0.977273, 0.075791,
		0.974261, 0.187676, -0.124876,
		0.107814, 0.098562, 0.989273,
		27.525961, 18.920853, 25.361223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126135, 18.515844, 24.879442>,  <27.450491, 18.851860, 24.668732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126135, 18.515844, 24.879442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.925920, 18.512348, 25.225712>,  <27.805792, 18.510250, 25.433474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.925920, 18.512348, 25.225712>,  <28.126135, 18.515844, 24.879442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925920, 18.512348, 25.225712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127826, -0.989735, 0.063918,
		0.856228, 0.142648, 0.496513,
		-0.500534, -0.008739, 0.865673,
		27.775761, 18.509726, 25.485415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435335, 17.938540, 25.161997>,  <28.126135, 18.515844, 24.879442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435335, 17.938540, 25.161997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.074425, 17.955654, 25.333611>,  <27.857878, 17.965923, 25.436579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.074425, 17.955654, 25.333611>,  <28.435335, 17.938540, 25.161997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074425, 17.955654, 25.333611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027667, -0.998759, 0.041415,
		0.430272, 0.025498, 0.902339,
		-0.902275, 0.042785, 0.429032,
		27.803741, 17.968489, 25.462320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552898, 17.182201, 25.276934>,  <28.435335, 17.938540, 25.161997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552898, 17.182201, 25.276934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.835581, 17.047173, 25.028221>,  <29.005190, 16.966156, 24.878994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.835581, 17.047173, 25.028221>,  <28.552898, 17.182201, 25.276934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835581, 17.047173, 25.028221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108350, 0.920105, -0.376386,
		0.699163, 0.198624, 0.686818,
		0.706704, -0.337572, -0.621783,
		29.047592, 16.945902, 24.841686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113869, 17.705954, 25.332544>,  <28.552898, 17.182201, 25.276934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113869, 17.705954, 25.332544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.221237, 17.515469, 24.997601>,  <29.285658, 17.401176, 24.796635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.221237, 17.515469, 24.997601>,  <29.113869, 17.705954, 25.332544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221237, 17.515469, 24.997601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278342, 0.870524, -0.405850,
		0.922212, -0.124133, 0.366218,
		0.268422, -0.476214, -0.837359,
		29.301764, 17.372604, 24.746393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680504, 17.998621, 25.059063>,  <29.113869, 17.705954, 25.332544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680504, 17.998621, 25.059063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.566984, 17.801682, 24.729931>,  <29.498873, 17.683517, 24.532452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.566984, 17.801682, 24.729931>,  <29.680504, 17.998621, 25.059063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566984, 17.801682, 24.729931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472890, 0.674639, -0.566778,
		0.834166, -0.549960, 0.041365,
		-0.283799, -0.492348, -0.822831,
		29.481844, 17.653976, 24.483082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249090, 17.929333, 24.616510>,  <29.680504, 17.998621, 25.059063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249090, 17.929333, 24.616510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.939856, 17.895012, 24.365124>,  <29.754314, 17.874420, 24.214291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.939856, 17.895012, 24.365124>,  <30.249090, 17.929333, 24.616510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939856, 17.895012, 24.365124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513229, 0.497615, -0.699268,
		0.372733, -0.863144, -0.340664,
		-0.773088, -0.085801, -0.628468,
		29.707930, 17.869272, 24.176584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523777, 17.715891, 23.996193>,  <30.249090, 17.929333, 24.616510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523777, 17.715891, 23.996193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.165300, 17.862087, 23.895588>,  <29.950214, 17.949804, 23.835226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.165300, 17.862087, 23.895588>,  <30.523777, 17.715891, 23.996193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165300, 17.862087, 23.895588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435459, 0.616075, -0.656374,
		-0.084949, -0.697759, -0.711278,
		-0.896192, 0.365490, -0.251510,
		29.896442, 17.971735, 23.820135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457024, 17.726803, 23.275356>,  <30.523777, 17.715891, 23.996193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457024, 17.726803, 23.275356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.174704, 17.992760, 23.373142>,  <30.005312, 18.152334, 23.431814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.174704, 17.992760, 23.373142>,  <30.457024, 17.726803, 23.275356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174704, 17.992760, 23.373142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386455, 0.650596, -0.653741,
		-0.593715, -0.366937, -0.716142,
		-0.705801, 0.664893, 0.244464,
		29.962963, 18.192228, 23.446482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222055, 18.019203, 22.581657>,  <30.457024, 17.726803, 23.275356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222055, 18.019203, 22.581657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.091532, 18.255196, 22.877075>,  <30.013218, 18.396791, 23.054325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.091532, 18.255196, 22.877075>,  <30.222055, 18.019203, 22.581657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091532, 18.255196, 22.877075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207436, 0.806959, -0.552981,
		-0.922222, -0.027242, -0.385700,
		-0.326309, 0.589979, 0.738544,
		29.993639, 18.432190, 23.098639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645336, 18.398106, 22.359087>,  <30.222055, 18.019203, 22.581657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645336, 18.398106, 22.359087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.803789, 18.600609, 22.665493>,  <29.898861, 18.722111, 22.849337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.803789, 18.600609, 22.665493>,  <29.645336, 18.398106, 22.359087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803789, 18.600609, 22.665493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123884, 0.856104, -0.501736,
		-0.909797, 0.103858, 0.401849,
		0.396134, 0.506261, 0.766015,
		29.922628, 18.752487, 22.895298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460608, 19.086308, 22.141775>,  <29.645336, 18.398106, 22.359087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460608, 19.086308, 22.141775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.714834, 19.168823, 22.439365>,  <29.867371, 19.218332, 22.617920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.714834, 19.168823, 22.439365>,  <29.460608, 19.086308, 22.141775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714834, 19.168823, 22.439365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003957, 0.964499, -0.264056,
		-0.772034, 0.164881, 0.613822,
		0.635569, 0.206289, 0.743974,
		29.905504, 19.230709, 22.662558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481047, 19.806087, 22.182138>,  <29.460608, 19.086308, 22.141775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481047, 19.806087, 22.182138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.799162, 19.715050, 22.406895>,  <29.990030, 19.660427, 22.541748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.799162, 19.715050, 22.406895>,  <29.481047, 19.806087, 22.182138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799162, 19.715050, 22.406895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364095, 0.920392, -0.142525,
		-0.484721, 0.317929, 0.814841,
		0.795286, -0.227595, 0.561890,
		30.037748, 19.646770, 22.575462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516685, 20.287672, 22.767128>,  <29.481047, 19.806087, 22.182138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516685, 20.287672, 22.767128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.871180, 20.152252, 22.640656>,  <30.083876, 20.071001, 22.564772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.871180, 20.152252, 22.640656>,  <29.516685, 20.287672, 22.767128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871180, 20.152252, 22.640656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228715, 0.913346, -0.336882,
		0.402832, 0.226241, 0.886871,
		0.886237, -0.338548, -0.316180,
		30.137051, 20.050688, 22.545801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850670, 20.879105, 22.941908>,  <29.516685, 20.287672, 22.767128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850670, 20.879105, 22.941908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.087091, 20.684471, 22.684570>,  <30.228945, 20.567692, 22.530167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.087091, 20.684471, 22.684570>,  <29.850670, 20.879105, 22.941908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087091, 20.684471, 22.684570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581779, 0.809613, -0.077848,
		0.558740, -0.328272, 0.761608,
		0.591053, -0.486584, -0.643345,
		30.264408, 20.538496, 22.491568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514835, 21.089396, 23.013411>,  <29.850670, 20.879105, 22.941908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514835, 21.089396, 23.013411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.495523, 20.944798, 22.640961>,  <30.483936, 20.858038, 22.417492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.495523, 20.944798, 22.640961>,  <30.514835, 21.089396, 23.013411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495523, 20.944798, 22.640961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363281, 0.862012, -0.353501,
		0.930428, -0.355326, 0.089707,
		-0.048280, -0.361495, -0.931123,
		30.481039, 20.836349, 22.361624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211191, 21.282225, 22.688919>,  <30.514835, 21.089396, 23.013411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211191, 21.282225, 22.688919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.911102, 21.211643, 22.434036>,  <30.731049, 21.169294, 22.281107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.911102, 21.211643, 22.434036>,  <31.211191, 21.282225, 22.688919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911102, 21.211643, 22.434036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049392, 0.946083, -0.320137,
		0.659340, -0.271647, -0.701056,
		-0.750221, -0.176452, -0.637207,
		30.686035, 21.158707, 22.242874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876448, 21.038235, 22.521229>,  <31.211191, 21.282225, 22.688919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876448, 21.038235, 22.521229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.271790, 21.062698, 22.465500>,  <32.508995, 21.077377, 22.432062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.271790, 21.062698, 22.465500>,  <31.876448, 21.038235, 22.521229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271790, 21.062698, 22.465500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089012, -0.975037, 0.203423,
		-0.123402, -0.213455, -0.969128,
		0.988357, 0.061161, -0.139322,
		32.568298, 21.081047, 22.423704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021469, 20.433033, 22.242476>,  <31.876448, 21.038235, 22.521229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021469, 20.433033, 22.242476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.365517, 20.564476, 22.398529>,  <32.571945, 20.643341, 22.492161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.365517, 20.564476, 22.398529>,  <32.021469, 20.433033, 22.242476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365517, 20.564476, 22.398529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226055, -0.931197, 0.285959,
		0.457260, -0.157768, -0.875227,
		0.860124, 0.328607, 0.390135,
		32.623554, 20.663057, 22.515570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557388, 20.013813, 22.004627>,  <32.021469, 20.433033, 22.242476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557388, 20.013813, 22.004627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.701527, 20.175545, 22.340881>,  <32.788010, 20.272583, 22.542633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.701527, 20.175545, 22.340881>,  <32.557388, 20.013813, 22.004627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701527, 20.175545, 22.340881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193030, -0.913994, 0.356866,
		0.912627, 0.033671, -0.407405,
		0.360350, 0.404327, 0.840635,
		32.809631, 20.296843, 22.593073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110237, 19.546753, 22.207253>,  <32.557388, 20.013813, 22.004627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110237, 19.546753, 22.207253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.024532, 19.749645, 22.541153>,  <32.973110, 19.871380, 22.741493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.024532, 19.749645, 22.541153>,  <33.110237, 19.546753, 22.207253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024532, 19.749645, 22.541153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032268, -0.850457, 0.525054,
		0.976244, 0.139433, 0.165851,
		-0.214259, 0.507229, 0.834752,
		32.960255, 19.901814, 22.791578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799904, 19.404343, 22.621052>,  <33.110237, 19.546753, 22.207253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799904, 19.404343, 22.621052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490356, 19.492092, 22.858707>,  <33.304626, 19.544743, 23.001301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490356, 19.492092, 22.858707>,  <33.799904, 19.404343, 22.621052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490356, 19.492092, 22.858707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105909, -0.880064, 0.462893,
		0.624428, 0.421143, 0.657820,
		-0.773869, 0.219375, 0.594140,
		33.258194, 19.557905, 23.036949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961407, 19.075485, 23.261887>,  <33.799904, 19.404343, 22.621052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961407, 19.075485, 23.261887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.570965, 19.157452, 23.290829>,  <33.336700, 19.206633, 23.308193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.570965, 19.157452, 23.290829>,  <33.961407, 19.075485, 23.261887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570965, 19.157452, 23.290829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149711, -0.875416, 0.459602,
		0.157521, 0.437785, 0.885173,
		-0.976101, 0.204917, 0.072355,
		33.278133, 19.218927, 23.312534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691303, 19.136425, 24.042652>,  <33.961407, 19.075485, 23.261887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691303, 19.136425, 24.042652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388020, 19.013973, 23.812382>,  <33.206047, 18.940502, 23.674219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388020, 19.013973, 23.812382>,  <33.691303, 19.136425, 24.042652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388020, 19.013973, 23.812382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153251, -0.774515, 0.613710,
		-0.633743, 0.553544, 0.540332,
		-0.758211, -0.306128, -0.575675,
		33.160557, 18.922134, 23.639679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479168, 19.748739, 24.590353>,  <33.691303, 19.136425, 24.042652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479168, 19.748739, 24.590353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.690121, 19.830315, 24.920269>,  <33.816692, 19.879259, 25.118217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.690121, 19.830315, 24.920269>,  <33.479168, 19.748739, 24.590353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690121, 19.830315, 24.920269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196143, 0.915318, -0.351739,
		-0.826676, 0.347278, 0.442724,
		0.527385, 0.203937, 0.824788,
		33.848335, 19.891495, 25.167706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354370, 20.412203, 24.716591>,  <33.479168, 19.748739, 24.590353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354370, 20.412203, 24.716591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.664665, 20.384884, 24.967529>,  <33.850842, 20.368492, 25.118092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.664665, 20.384884, 24.967529>,  <33.354370, 20.412203, 24.716591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664665, 20.384884, 24.967529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261795, 0.939372, -0.221456,
		-0.574187, 0.336028, 0.746588,
		0.775740, -0.068296, 0.627346,
		33.897388, 20.364395, 25.155733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241463, 20.821054, 25.340729>,  <33.354370, 20.412203, 24.716591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241463, 20.821054, 25.340729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.635864, 20.776772, 25.290878>,  <33.872505, 20.750202, 25.260967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.635864, 20.776772, 25.290878>,  <33.241463, 20.821054, 25.340729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635864, 20.776772, 25.290878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122982, 0.987802, 0.095517,
		0.112531, -0.109507, 0.987596,
		0.986008, -0.110708, -0.124626,
		33.931667, 20.743559, 25.253490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505074, 21.372599, 25.662043>,  <33.241463, 20.821054, 25.340729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505074, 21.372599, 25.662043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809258, 21.260395, 25.427773>,  <33.991768, 21.193073, 25.287210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809258, 21.260395, 25.427773>,  <33.505074, 21.372599, 25.662043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809258, 21.260395, 25.427773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207580, 0.959577, -0.190062,
		0.615315, 0.022960, 0.787947,
		0.760459, -0.280509, -0.585676,
		34.037395, 21.176243, 25.252069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054977, 21.806671, 25.896132>,  <33.505074, 21.372599, 25.662043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054977, 21.806671, 25.896132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.096451, 21.662251, 25.525425>,  <34.121334, 21.575598, 25.303001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.096451, 21.662251, 25.525425>,  <34.054977, 21.806671, 25.896132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096451, 21.662251, 25.525425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176974, 0.923614, -0.340026,
		0.978739, -0.128759, 0.159657,
		0.103680, -0.361052, -0.926764,
		34.127556, 21.553934, 25.247396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715862, 21.975941, 25.747583>,  <34.054977, 21.806671, 25.896132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715862, 21.975941, 25.747583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506897, 21.937984, 25.408627>,  <34.381516, 21.915211, 25.205252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506897, 21.937984, 25.408627>,  <34.715862, 21.975941, 25.747583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506897, 21.937984, 25.408627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278333, 0.920377, -0.274657,
		0.805985, -0.379343, -0.454408,
		-0.522416, -0.094892, -0.847394,
		34.350174, 21.909517, 25.154408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028328, 22.463018, 25.310026>,  <34.715862, 21.975941, 25.747583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028328, 22.463018, 25.310026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.698891, 22.381874, 25.098160>,  <34.501228, 22.333187, 24.971039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.698891, 22.381874, 25.098160>,  <35.028328, 22.463018, 25.310026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698891, 22.381874, 25.098160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021356, 0.944279, -0.328451,
		0.566785, -0.259197, -0.782031,
		-0.823589, -0.202862, -0.529668,
		34.451813, 22.321016, 24.939259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.990131, 19.360552, 28.499557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.864660, 19.336285, 28.120522>,  <28.789377, 19.321724, 27.893101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.864660, 19.336285, 28.120522>,  <28.990131, 19.360552, 28.499557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864660, 19.336285, 28.120522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020318, 0.997300, -0.070576,
		0.949313, -0.041391, -0.311596,
		-0.313675, -0.060668, -0.947590,
		28.770557, 19.318085, 27.836245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446136, 19.662689, 28.001476>,  <28.990131, 19.360552, 28.499557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446136, 19.662689, 28.001476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.066456, 19.705177, 27.882999>,  <28.838646, 19.730671, 27.811914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.066456, 19.705177, 27.882999>,  <29.446136, 19.662689, 28.001476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066456, 19.705177, 27.882999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136560, 0.987095, -0.083640,
		0.283484, -0.119839, -0.951460,
		-0.949204, 0.106221, -0.296191,
		28.781694, 19.737043, 27.794142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484694, 19.980101, 27.280643>,  <29.446136, 19.662689, 28.001476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484694, 19.980101, 27.280643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.132799, 20.052315, 27.456585>,  <28.921661, 20.095642, 27.562149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.132799, 20.052315, 27.456585>,  <29.484694, 19.980101, 27.280643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132799, 20.052315, 27.456585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156226, 0.983501, -0.091207,
		-0.449062, -0.011521, -0.893426,
		-0.879737, 0.180534, 0.439853,
		28.868877, 20.106476, 27.588541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226730, 20.430189, 26.873121>,  <29.484694, 19.980101, 27.280643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226730, 20.430189, 26.873121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.047087, 20.499241, 27.223778>,  <28.939301, 20.540672, 27.434172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.047087, 20.499241, 27.223778>,  <29.226730, 20.430189, 26.873121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047087, 20.499241, 27.223778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090780, 0.984896, -0.147439,
		-0.888852, 0.013365, -0.457999,
		-0.449111, 0.172629, 0.876641,
		28.912354, 20.551029, 27.486771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698338, 21.000988, 26.711014>,  <29.226730, 20.430189, 26.873121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698338, 21.000988, 26.711014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.761383, 20.989731, 27.105854>,  <28.799212, 20.982977, 27.342758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.761383, 20.989731, 27.105854>,  <28.698338, 21.000988, 26.711014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761383, 20.989731, 27.105854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065314, 0.997702, 0.018016,
		-0.985338, 0.061632, 0.159091,
		0.157615, -0.028142, 0.987100,
		28.808668, 20.981289, 27.401983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250158, 21.581499, 26.976940>,  <28.698338, 21.000988, 26.711014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250158, 21.581499, 26.976940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.551264, 21.481030, 27.220337>,  <28.731926, 21.420748, 27.366375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.551264, 21.481030, 27.220337>,  <28.250158, 21.581499, 26.976940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551264, 21.481030, 27.220337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205881, 0.967805, 0.144797,
		-0.625269, 0.016279, 0.780239,
		0.752762, -0.251173, 0.608490,
		28.777092, 21.405678, 27.402884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149082, 22.097462, 27.373692>,  <28.250158, 21.581499, 26.976940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149082, 22.097462, 27.373692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.512636, 21.960846, 27.469421>,  <28.730768, 21.878876, 27.526859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.512636, 21.960846, 27.469421>,  <28.149082, 22.097462, 27.373692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512636, 21.960846, 27.469421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313395, 0.937959, 0.148378,
		-0.275156, -0.059855, 0.959534,
		0.908885, -0.341541, 0.239327,
		28.785301, 21.858383, 27.541220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288700, 22.332045, 28.006050>,  <28.149082, 22.097462, 27.373692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288700, 22.332045, 28.006050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.652880, 22.267086, 27.853886>,  <28.871387, 22.228111, 27.762587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.652880, 22.267086, 27.853886>,  <28.288700, 22.332045, 28.006050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652880, 22.267086, 27.853886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268714, 0.931408, 0.245505,
		0.314450, -0.325741, 0.891636,
		0.910447, -0.162396, -0.380412,
		28.926014, 22.218367, 27.739761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681934, 22.606209, 28.471825>,  <28.288700, 22.332045, 28.006050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681934, 22.606209, 28.471825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.929607, 22.582684, 28.158607>,  <29.078211, 22.568569, 27.970676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.929607, 22.582684, 28.158607>,  <28.681934, 22.606209, 28.471825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929607, 22.582684, 28.158607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360915, 0.906936, 0.217271,
		0.697391, -0.417142, 0.582785,
		0.619181, -0.058813, -0.783042,
		29.115362, 22.565039, 27.923695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300365, 22.980427, 28.685295>,  <28.681934, 22.606209, 28.471825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300365, 22.980427, 28.685295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.318293, 22.957844, 28.286335>,  <29.329050, 22.944294, 28.046959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.318293, 22.957844, 28.286335>,  <29.300365, 22.980427, 28.685295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318293, 22.957844, 28.286335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222613, 0.973862, -0.045124,
		0.973876, -0.220011, 0.056217,
		0.044819, -0.056460, -0.997398,
		29.331738, 22.940907, 27.987116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926769, 23.393936, 28.485620>,  <29.300365, 22.980427, 28.685295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926769, 23.393936, 28.485620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.680439, 23.357822, 28.172543>,  <29.532640, 23.336155, 27.984695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.680439, 23.357822, 28.172543>,  <29.926769, 23.393936, 28.485620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680439, 23.357822, 28.172543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046064, 0.995839, -0.078627,
		0.786536, -0.012366, -0.617420,
		-0.615824, -0.090284, -0.782694,
		29.495691, 23.330738, 27.937735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338667, 23.646235, 27.945765>,  <29.926769, 23.393936, 28.485620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338667, 23.646235, 27.945765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.950907, 23.695881, 27.861042>,  <29.718250, 23.725668, 27.810207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.950907, 23.695881, 27.861042>,  <30.338667, 23.646235, 27.945765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950907, 23.695881, 27.861042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171715, 0.959409, -0.223713,
		0.175444, -0.253237, -0.951362,
		-0.969398, 0.124114, -0.211807,
		29.660088, 23.733114, 27.797501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858301, 23.402794, 27.487919>,  <30.338667, 23.646235, 27.945765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858301, 23.402794, 27.487919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.250656, 23.459267, 27.541470>,  <31.486069, 23.493151, 27.573601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.250656, 23.459267, 27.541470>,  <30.858301, 23.402794, 27.487919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250656, 23.459267, 27.541470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101897, -0.958934, 0.264694,
		0.165750, -0.245994, -0.954994,
		0.980889, 0.141184, 0.133877,
		31.544924, 23.501621, 27.581633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132309, 22.925079, 27.168076>,  <30.858301, 23.402794, 27.487919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132309, 22.925079, 27.168076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.411329, 23.040878, 27.430256>,  <31.578741, 23.110357, 27.587564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.411329, 23.040878, 27.430256>,  <31.132309, 22.925079, 27.168076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411329, 23.040878, 27.430256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102317, -0.945618, 0.308769,
		0.709194, -0.148317, -0.689236,
		0.697549, 0.289497, 0.655451,
		31.620594, 23.127728, 27.626892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815800, 22.551077, 27.040382>,  <31.132309, 22.925079, 27.168076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815800, 22.551077, 27.040382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.788183, 22.669262, 27.421524>,  <31.771612, 22.740173, 27.650209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.788183, 22.669262, 27.421524>,  <31.815800, 22.551077, 27.040382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788183, 22.669262, 27.421524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266120, -0.915071, 0.303029,
		0.961464, 0.274496, -0.015449,
		-0.069043, 0.295462, 0.952856,
		31.767469, 22.757900, 27.707380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295662, 22.235378, 27.358078>,  <31.815800, 22.551077, 27.040382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295662, 22.235378, 27.358078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.080738, 22.320244, 27.684582>,  <31.951782, 22.371162, 27.880484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.080738, 22.320244, 27.684582>,  <32.295662, 22.235378, 27.358078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080738, 22.320244, 27.684582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143047, -0.930892, 0.336122,
		0.831164, 0.297366, 0.469830,
		-0.537312, 0.212164, 0.816261,
		31.919544, 22.383894, 27.929461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756607, 22.147324, 27.868158>,  <32.295662, 22.235378, 27.358078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756607, 22.147324, 27.868158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.388119, 22.115887, 28.020569>,  <32.167027, 22.097025, 28.112015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.388119, 22.115887, 28.020569>,  <32.756607, 22.147324, 27.868158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388119, 22.115887, 28.020569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259918, -0.853070, 0.452454,
		0.289485, 0.515844, 0.806290,
		-0.921217, -0.078591, 0.381028,
		32.111755, 22.092310, 28.134878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869213, 21.883085, 28.523510>,  <32.756607, 22.147324, 27.868158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869213, 21.883085, 28.523510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.482239, 21.796200, 28.471542>,  <32.250053, 21.744068, 28.440361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.482239, 21.796200, 28.471542>,  <32.869213, 21.883085, 28.523510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482239, 21.796200, 28.471542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129235, -0.865283, 0.484338,
		-0.217624, 0.451777, 0.865180,
		-0.967439, -0.217215, -0.129921,
		32.192009, 21.731035, 28.432566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626755, 21.614655, 29.179914>,  <32.869213, 21.883085, 28.523510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626755, 21.614655, 29.179914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.379536, 21.471062, 28.900158>,  <32.231205, 21.384907, 28.732304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.379536, 21.471062, 28.900158>,  <32.626755, 21.614655, 29.179914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379536, 21.471062, 28.900158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123521, -0.922947, 0.364570,
		-0.776377, 0.138932, 0.614766,
		-0.618047, -0.358980, -0.699393,
		32.194122, 21.363367, 28.690340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483036, 21.078869, 29.473799>,  <32.626755, 21.614655, 29.179914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483036, 21.078869, 29.473799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.321880, 20.979218, 29.121521>,  <32.225189, 20.919428, 28.910154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.321880, 20.979218, 29.121521>,  <32.483036, 21.078869, 29.473799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321880, 20.979218, 29.121521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186167, -0.964432, 0.187649,
		-0.896116, -0.088355, 0.434935,
		-0.402886, -0.249126, -0.880692,
		32.201015, 20.904480, 28.857313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987787, 20.488935, 29.554989>,  <32.483036, 21.078869, 29.473799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987787, 20.488935, 29.554989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.076759, 20.509186, 29.165535>,  <32.130142, 20.521336, 28.931864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.076759, 20.509186, 29.165535>,  <31.987787, 20.488935, 29.554989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076759, 20.509186, 29.165535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117189, -0.990022, -0.078249,
		-0.967879, 0.131505, -0.214280,
		0.222432, 0.050625, -0.973633,
		32.143490, 20.524374, 28.873446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575836, 20.137356, 29.222395>,  <31.987787, 20.488935, 29.554989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575836, 20.137356, 29.222395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.878714, 20.101604, 28.963577>,  <32.060440, 20.080154, 28.808287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.878714, 20.101604, 28.963577>,  <31.575836, 20.137356, 29.222395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878714, 20.101604, 28.963577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114664, -0.993400, 0.003035,
		-0.643045, 0.071895, -0.762446,
		0.757196, -0.089376, -0.647044,
		32.105873, 20.074791, 28.769464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311960, 19.632223, 28.814774>,  <31.575836, 20.137356, 29.222395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311960, 19.632223, 28.814774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.695484, 19.649513, 28.702477>,  <31.925598, 19.659887, 28.635099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.695484, 19.649513, 28.702477>,  <31.311960, 19.632223, 28.814774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695484, 19.649513, 28.702477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014667, -0.994570, -0.103033,
		-0.283670, 0.094672, -0.954237,
		0.958810, 0.043223, -0.280741,
		31.983128, 19.662479, 28.618254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411354, 19.352287, 28.146133>,  <31.311960, 19.632223, 28.814774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411354, 19.352287, 28.146133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.764917, 19.320427, 28.330463>,  <31.977057, 19.301311, 28.441061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.764917, 19.320427, 28.330463>,  <31.411354, 19.352287, 28.146133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764917, 19.320427, 28.330463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041236, -0.968276, -0.246457,
		0.465837, 0.236848, -0.852584,
		0.883909, -0.079651, 0.460826,
		32.030090, 19.296532, 28.468712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845007, 18.882315, 27.685434>,  <31.411354, 19.352287, 28.146133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845007, 18.882315, 27.685434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.036221, 18.884647, 28.036762>,  <32.150948, 18.886047, 28.247559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.036221, 18.884647, 28.036762>,  <31.845007, 18.882315, 27.685434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036221, 18.884647, 28.036762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009013, -0.999893, 0.011545,
		0.878294, -0.013435, -0.477931,
		0.478035, 0.005832, 0.878321,
		32.179630, 18.886396, 28.300259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519135, 18.436049, 27.610418>,  <31.845007, 18.882315, 27.685434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519135, 18.436049, 27.610418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.388573, 18.468529, 27.987114>,  <32.310238, 18.488016, 28.213131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.388573, 18.468529, 27.987114>,  <32.519135, 18.436049, 27.610418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388573, 18.468529, 27.987114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050665, -0.993368, 0.103213,
		0.943873, 0.081402, 0.320122,
		-0.326400, 0.081201, 0.941737,
		32.290653, 18.492889, 28.269634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616821, 17.863985, 27.190611>,  <32.519135, 18.436049, 27.610418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616821, 17.863985, 27.190611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.947323, 17.711338, 27.024876>,  <33.145622, 17.619751, 26.925434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.947323, 17.711338, 27.024876>,  <32.616821, 17.863985, 27.190611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947323, 17.711338, 27.024876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291785, 0.919133, -0.264680,
		0.481838, 0.097795, 0.870786,
		0.826253, -0.381616, -0.414338,
		33.195198, 17.596853, 26.900574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337360, 18.246925, 27.402397>,  <32.616821, 17.863985, 27.190611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337360, 18.246925, 27.402397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.371815, 18.082668, 27.039310>,  <33.392487, 17.984114, 26.821459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.371815, 18.082668, 27.039310>,  <33.337360, 18.246925, 27.402397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371815, 18.082668, 27.039310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311304, 0.876577, -0.367018,
		0.946399, -0.250964, 0.203336,
		0.086132, -0.410645, -0.907718,
		33.397655, 17.959475, 26.766994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989037, 18.514410, 27.067074>,  <33.337360, 18.246925, 27.402397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989037, 18.514410, 27.067074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.784420, 18.388271, 26.747353>,  <33.661652, 18.312588, 26.555519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.784420, 18.388271, 26.747353>,  <33.989037, 18.514410, 27.067074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784420, 18.388271, 26.747353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263574, 0.827793, -0.495265,
		0.817833, -0.464025, -0.340337,
		-0.511544, -0.315341, -0.799301,
		33.630959, 18.293669, 26.507561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412296, 18.448427, 26.431379>,  <33.989037, 18.514410, 27.067074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412296, 18.448427, 26.431379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.032314, 18.520504, 26.329308>,  <33.804325, 18.563749, 26.268064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.032314, 18.520504, 26.329308>,  <34.412296, 18.448427, 26.431379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032314, 18.520504, 26.329308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288142, 0.820946, -0.492972,
		0.120659, -0.541829, -0.831783,
		-0.949956, 0.180191, -0.255178,
		33.747326, 18.574560, 26.252754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435001, 18.514179, 25.772644>,  <34.412296, 18.448427, 26.431379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435001, 18.514179, 25.772644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.102016, 18.715321, 25.865723>,  <33.902225, 18.836006, 25.921570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.102016, 18.715321, 25.865723>,  <34.435001, 18.514179, 25.772644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102016, 18.715321, 25.865723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295038, 0.757758, -0.582027,
		-0.469003, -0.415859, -0.779164,
		-0.832459, 0.502855, 0.232697,
		33.852280, 18.866177, 25.935532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272087, 18.777536, 25.121244>,  <34.435001, 18.514179, 25.772644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272087, 18.777536, 25.121244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.051426, 18.971390, 25.392776>,  <33.919029, 19.087702, 25.555696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.051426, 18.971390, 25.392776>,  <34.272087, 18.777536, 25.121244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051426, 18.971390, 25.392776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110000, 0.849036, -0.516757,
		-0.826790, -0.210398, -0.521681,
		-0.551651, 0.484635, 0.678831,
		33.885929, 19.116779, 25.596426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893116, 19.156990, 24.741879>,  <34.272087, 18.777536, 25.121244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893116, 19.156990, 24.741879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.875900, 19.351994, 25.090702>,  <33.865570, 19.468996, 25.299995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.875900, 19.351994, 25.090702>,  <33.893116, 19.156990, 24.741879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875900, 19.351994, 25.090702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189141, 0.861057, -0.472024,
		-0.981006, 0.144629, -0.129264,
		-0.043035, 0.487508, 0.872057,
		33.862991, 19.498245, 25.352320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255322, 18.818356, 24.569082>,  <33.893116, 19.156990, 24.741879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255322, 18.818356, 24.569082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.076046, 18.696918, 24.232758>,  <32.968483, 18.624056, 24.030964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.076046, 18.696918, 24.232758>,  <33.255322, 18.818356, 24.569082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076046, 18.696918, 24.232758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348556, -0.806775, 0.477098,
		-0.823188, 0.506898, 0.255767,
		-0.448186, -0.303593, -0.840809,
		32.941589, 18.605841, 23.980515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622776, 18.732931, 24.791620>,  <33.255322, 18.818356, 24.569082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622776, 18.732931, 24.791620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.690151, 18.495960, 24.476494>,  <32.730576, 18.353777, 24.287418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.690151, 18.495960, 24.476494>,  <32.622776, 18.732931, 24.791620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690151, 18.495960, 24.476494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379754, -0.776544, 0.502758,
		-0.909623, 0.214492, -0.355780,
		0.168442, -0.592429, -0.787817,
		32.740685, 18.318232, 24.240149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095116, 18.332741, 24.882858>,  <32.622776, 18.732931, 24.791620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095116, 18.332741, 24.882858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.282856, 18.124027, 24.597916>,  <32.395500, 17.998800, 24.426950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.282856, 18.124027, 24.597916>,  <32.095116, 18.332741, 24.882858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282856, 18.124027, 24.597916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373635, -0.848311, 0.375187,
		-0.800064, 0.090064, -0.593116,
		0.469355, -0.521782, -0.712354,
		32.423664, 17.967493, 24.384209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641315, 17.901438, 24.504459>,  <32.095116, 18.332741, 24.882858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641315, 17.901438, 24.504459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.987215, 17.712936, 24.435032>,  <32.194756, 17.599836, 24.393375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.987215, 17.712936, 24.435032>,  <31.641315, 17.901438, 24.504459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987215, 17.712936, 24.435032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422335, -0.869421, 0.256399,
		-0.271735, -0.148416, -0.950859,
		0.864751, -0.471253, -0.173571,
		32.246639, 17.571560, 24.382961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455458, 17.266294, 24.176538>,  <31.641315, 17.901438, 24.504459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455458, 17.266294, 24.176538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.821142, 17.153465, 24.292919>,  <32.040554, 17.085768, 24.362747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.821142, 17.153465, 24.292919>,  <31.455458, 17.266294, 24.176538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821142, 17.153465, 24.292919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336722, -0.928235, 0.158110,
		0.225475, -0.242517, -0.943582,
		0.914210, -0.282075, 0.290954,
		32.095406, 17.068844, 24.380205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613037, 16.660221, 23.795898>,  <31.455458, 17.266294, 24.176538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613037, 16.660221, 23.795898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.848341, 16.674232, 24.119064>,  <31.989523, 16.682640, 24.312963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.848341, 16.674232, 24.119064>,  <31.613037, 16.660221, 23.795898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848341, 16.674232, 24.119064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238014, -0.947308, 0.214376,
		0.772852, -0.318403, -0.548926,
		0.588260, 0.035029, 0.807913,
		32.024818, 16.684742, 24.361439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981337, 15.966032, 23.852837>,  <31.613037, 16.660221, 23.795898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981337, 15.966032, 23.852837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.978315, 16.127640, 24.218723>,  <31.976503, 16.224604, 24.438255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.978315, 16.127640, 24.218723>,  <31.981337, 15.966032, 23.852837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978315, 16.127640, 24.218723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148962, -0.904993, 0.398494,
		0.988814, -0.133248, 0.067019,
		-0.007554, 0.404020, 0.914719,
		31.976049, 16.248846, 24.493139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173706, 15.319835, 24.404510>,  <31.981337, 15.966032, 23.852837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173706, 15.319835, 24.404510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.079205, 15.619858, 24.651604>,  <32.022503, 15.799871, 24.799860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.079205, 15.619858, 24.651604>,  <32.173706, 15.319835, 24.404510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079205, 15.619858, 24.651604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193452, -0.659312, 0.726556,
		0.952239, 0.052151, 0.300867,
		-0.236255, 0.750059, 0.617734,
		32.008327, 15.844875, 24.836924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544518, 15.161797, 25.148590>,  <32.173706, 15.319835, 24.404510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544518, 15.161797, 25.148590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.227581, 15.403324, 25.183445>,  <32.037418, 15.548241, 25.204357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.227581, 15.403324, 25.183445>,  <32.544518, 15.161797, 25.148590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227581, 15.403324, 25.183445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354384, -0.571805, 0.739900,
		0.496589, 0.555377, 0.667050,
		-0.792346, 0.603818, 0.087136,
		31.989878, 15.584470, 25.209585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.955227, 31.226046, 20.830963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695671, 30.938103, 20.732376>,  <30.539938, 30.765337, 20.673223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695671, 30.938103, 20.732376>,  <30.955227, 31.226046, 20.830963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695671, 30.938103, 20.732376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663362, -0.693881, 0.280141,
		-0.372680, 0.018284, 0.927780,
		-0.648891, -0.719857, -0.246467,
		30.501003, 30.722145, 20.658436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014410, 30.723024, 21.348831>,  <30.955227, 31.226046, 20.830963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014410, 30.723024, 21.348831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866344, 30.513767, 21.041767>,  <30.777506, 30.388214, 20.857529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866344, 30.513767, 21.041767>,  <31.014410, 30.723024, 21.348831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866344, 30.513767, 21.041767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469648, -0.818362, 0.331230,
		-0.801504, -0.237921, 0.548620,
		-0.370164, -0.523141, -0.767660,
		30.755295, 30.356825, 20.811468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903826, 30.038366, 21.631485>,  <31.014410, 30.723024, 21.348831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903826, 30.038366, 21.631485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856688, 29.971584, 21.239925>,  <30.828403, 29.931515, 21.004990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856688, 29.971584, 21.239925>,  <30.903826, 30.038366, 21.631485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856688, 29.971584, 21.239925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501824, -0.860647, 0.086372,
		-0.856905, -0.481055, 0.185206,
		-0.117847, -0.166953, -0.978897,
		30.821333, 29.921499, 20.946257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022800, 29.339376, 21.536100>,  <30.903826, 30.038366, 21.631485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022800, 29.339376, 21.536100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067932, 29.415371, 21.145988>,  <31.095011, 29.460968, 20.911921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067932, 29.415371, 21.145988>,  <31.022800, 29.339376, 21.536100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067932, 29.415371, 21.145988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535533, -0.838408, -0.101369,
		-0.836943, -0.510859, -0.196340,
		0.112828, 0.189986, -0.975282,
		31.101780, 29.472366, 20.853403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915348, 28.704750, 21.235699>,  <31.022800, 29.339376, 21.536100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915348, 28.704750, 21.235699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097128, 28.932541, 20.961716>,  <31.206196, 29.069216, 20.797325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097128, 28.932541, 20.961716>,  <30.915348, 28.704750, 21.235699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097128, 28.932541, 20.961716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612863, -0.757917, -0.223520,
		-0.646433, -0.318207, -0.693447,
		0.454449, 0.569479, -0.684960,
		31.233463, 29.103384, 20.756227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935514, 28.417076, 20.550507>,  <30.915348, 28.704750, 21.235699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935514, 28.417076, 20.550507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264376, 28.644753, 20.554287>,  <31.461693, 28.781359, 20.556555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264376, 28.644753, 20.554287>,  <30.935514, 28.417076, 20.550507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264376, 28.644753, 20.554287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549223, -0.788729, -0.276153,
		-0.149731, 0.232230, -0.961067,
		0.822152, 0.569189, 0.009449,
		31.511021, 28.815510, 20.557121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285940, 28.080462, 19.980692>,  <30.935514, 28.417076, 20.550507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285940, 28.080462, 19.980692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564650, 28.334293, 20.114449>,  <31.731874, 28.486593, 20.194702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564650, 28.334293, 20.114449>,  <31.285940, 28.080462, 19.980692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564650, 28.334293, 20.114449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714319, -0.656279, -0.242994,
		0.065257, 0.408175, -0.910568,
		0.696771, 0.634579, 0.334394,
		31.773682, 28.524668, 20.214767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855387, 27.987329, 19.582357>,  <31.285940, 28.080462, 19.980692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855387, 27.987329, 19.582357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020782, 28.143543, 19.911358>,  <32.120018, 28.237270, 20.108759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020782, 28.143543, 19.911358>,  <31.855387, 27.987329, 19.582357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020782, 28.143543, 19.911358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530030, -0.837750, 0.131317,
		0.740335, 0.381653, -0.553394,
		0.413488, 0.390533, 0.822503,
		32.144829, 28.260704, 20.158110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648804, 27.917107, 19.584410>,  <31.855387, 27.987329, 19.582357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648804, 27.917107, 19.584410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524075, 27.942852, 19.963593>,  <32.449238, 27.958300, 20.191103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524075, 27.942852, 19.963593>,  <32.648804, 27.917107, 19.584410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524075, 27.942852, 19.963593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402190, -0.894969, 0.193064,
		0.860819, 0.441461, 0.253187,
		-0.311825, 0.064364, 0.947957,
		32.430527, 27.962162, 20.247980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224838, 27.762102, 19.992807>,  <32.648804, 27.917107, 19.584410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224838, 27.762102, 19.992807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927406, 27.724926, 20.257671>,  <32.748947, 27.702621, 20.416590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927406, 27.724926, 20.257671>,  <33.224838, 27.762102, 19.992807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927406, 27.724926, 20.257671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449946, -0.802085, 0.392694,
		0.494611, 0.589934, 0.638230,
		-0.743578, -0.092939, 0.662158,
		32.704334, 27.697044, 20.456318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638336, 27.616940, 20.649502>,  <33.224838, 27.762102, 19.992807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638336, 27.616940, 20.649502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257820, 27.499325, 20.686565>,  <33.029510, 27.428755, 20.708803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257820, 27.499325, 20.686565>,  <33.638336, 27.616940, 20.649502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257820, 27.499325, 20.686565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302908, -0.835529, 0.458408,
		-0.057369, 0.464147, 0.883898,
		-0.951291, -0.294038, 0.092661,
		32.972431, 27.411114, 20.714363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539440, 27.367281, 21.308931>,  <33.638336, 27.616940, 20.649502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539440, 27.367281, 21.308931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217381, 27.215710, 21.126438>,  <33.024143, 27.124767, 21.016941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217381, 27.215710, 21.126438>,  <33.539440, 27.367281, 21.308931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217381, 27.215710, 21.126438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245689, -0.913266, 0.324935,
		-0.539791, 0.149529, 0.828412,
		-0.805148, -0.378929, -0.456235,
		32.975838, 27.102032, 20.989567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297218, 27.726805, 21.876703>,  <33.539440, 27.367281, 21.308931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297218, 27.726805, 21.876703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397545, 27.851894, 22.243156>,  <33.457741, 27.926949, 22.463028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397545, 27.851894, 22.243156>,  <33.297218, 27.726805, 21.876703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397545, 27.851894, 22.243156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151202, 0.947422, -0.282010,
		-0.956154, -0.067789, 0.284910,
		0.250812, 0.312724, 0.916132,
		33.472790, 27.945711, 22.517996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759155, 28.199369, 22.127621>,  <33.297218, 27.726805, 21.876703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759155, 28.199369, 22.127621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106159, 28.274361, 22.311913>,  <33.314362, 28.319355, 22.422487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106159, 28.274361, 22.311913>,  <32.759155, 28.199369, 22.127621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106159, 28.274361, 22.311913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050443, 0.954634, -0.293477,
		-0.494850, 0.231355, 0.837614,
		0.867513, 0.187479, 0.460731,
		33.366413, 28.330605, 22.450132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690647, 28.833101, 22.332012>,  <32.759155, 28.199369, 22.127621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690647, 28.833101, 22.332012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084740, 28.785439, 22.381191>,  <33.321198, 28.756842, 22.410698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084740, 28.785439, 22.381191>,  <32.690647, 28.833101, 22.332012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084740, 28.785439, 22.381191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147551, 0.955168, -0.256677,
		-0.086850, 0.271028, 0.958645,
		0.985234, -0.119157, 0.122947,
		33.380310, 28.749691, 22.418076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880627, 29.260429, 22.865648>,  <32.690647, 28.833101, 22.332012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880627, 29.260429, 22.865648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207836, 29.193672, 22.645473>,  <33.404163, 29.153618, 22.513369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207836, 29.193672, 22.645473>,  <32.880627, 29.260429, 22.865648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207836, 29.193672, 22.645473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155410, 0.985517, -0.067850,
		0.553787, -0.030040, 0.832116,
		0.818027, -0.166893, -0.550435,
		33.453243, 29.143604, 22.480343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264622, 29.774290, 23.003574>,  <32.880627, 29.260429, 22.865648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264622, 29.774290, 23.003574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471863, 29.661427, 22.680599>,  <33.596207, 29.593708, 22.486814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471863, 29.661427, 22.680599>,  <33.264622, 29.774290, 23.003574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471863, 29.661427, 22.680599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318579, 0.939754, -0.123978,
		0.793775, -0.193000, 0.576777,
		0.518101, -0.282160, -0.807439,
		33.627293, 29.576778, 22.438368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002850, 30.122538, 22.909330>,  <33.264622, 29.774290, 23.003574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002850, 30.122538, 22.909330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903015, 30.018948, 22.536098>,  <33.843113, 29.956795, 22.312159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903015, 30.018948, 22.536098>,  <34.002850, 30.122538, 22.909330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903015, 30.018948, 22.536098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195358, 0.930297, -0.310457,
		0.948442, -0.259771, -0.181599,
		-0.249588, -0.258973, -0.933080,
		33.828140, 29.941256, 22.256174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553505, 30.344088, 22.415184>,  <34.002850, 30.122538, 22.909330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553505, 30.344088, 22.415184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236565, 30.295006, 22.176144>,  <34.046402, 30.265556, 22.032719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236565, 30.295006, 22.176144>,  <34.553505, 30.344088, 22.415184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236565, 30.295006, 22.176144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060765, 0.958820, -0.277438,
		0.607034, -0.256141, -0.752264,
		-0.792350, -0.122703, -0.597601,
		33.998859, 30.258196, 21.996864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827511, 30.549925, 21.719009>,  <34.553505, 30.344088, 22.415184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827511, 30.549925, 21.719009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428665, 30.564304, 21.692265>,  <34.189358, 30.572933, 21.676218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428665, 30.564304, 21.692265>,  <34.827511, 30.549925, 21.719009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428665, 30.564304, 21.692265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038095, 0.998791, -0.031074,
		0.065664, -0.033531, -0.997279,
		-0.997115, 0.035951, -0.066862,
		34.129532, 30.575090, 21.672207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618320, 30.927008, 21.102694>,  <34.827511, 30.549925, 21.719009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618320, 30.927008, 21.102694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300102, 30.969299, 21.341331>,  <34.109173, 30.994675, 21.484514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300102, 30.969299, 21.341331>,  <34.618320, 30.927008, 21.102694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300102, 30.969299, 21.341331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145130, 0.989245, 0.018212,
		-0.588255, 0.101073, -0.802334,
		-0.795546, 0.105730, 0.596597,
		34.061440, 31.001019, 21.520311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308224, 31.520531, 20.825525>,  <34.618320, 30.927008, 21.102694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308224, 31.520531, 20.825525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154362, 31.491619, 21.193615>,  <34.062042, 31.474272, 21.414469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154362, 31.491619, 21.193615>,  <34.308224, 31.520531, 20.825525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154362, 31.491619, 21.193615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043640, 0.997239, 0.060087,
		-0.922027, -0.017046, -0.386749,
		-0.384657, -0.072280, 0.920225,
		34.038963, 31.469934, 21.469683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743507, 31.925034, 20.894636>,  <34.308224, 31.520531, 20.825525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743507, 31.925034, 20.894636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857914, 31.876347, 21.274822>,  <33.926556, 31.847134, 21.502934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857914, 31.876347, 21.274822>,  <33.743507, 31.925034, 20.894636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857914, 31.876347, 21.274822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141858, 0.975591, 0.167626,
		-0.947667, -0.182774, 0.261765,
		0.286013, -0.121720, 0.950464,
		33.943718, 31.839830, 21.559961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251472, 32.349972, 21.250546>,  <33.743507, 31.925034, 20.894636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251472, 32.349972, 21.250546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566223, 32.276546, 21.486217>,  <33.755074, 32.232491, 21.627621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566223, 32.276546, 21.486217>,  <33.251472, 32.349972, 21.250546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566223, 32.276546, 21.486217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026975, 0.964055, 0.264330,
		-0.616524, -0.192102, 0.763542,
		0.786874, -0.183562, 0.589181,
		33.802284, 32.221478, 21.662971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063103, 32.675495, 21.917252>,  <33.251472, 32.349972, 21.250546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063103, 32.675495, 21.917252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462906, 32.669182, 21.906368>,  <33.702785, 32.665394, 21.899837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462906, 32.669182, 21.906368>,  <33.063103, 32.675495, 21.917252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462906, 32.669182, 21.906368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020195, 0.985160, 0.170444,
		0.024117, -0.170909, 0.984992,
		0.999505, -0.015782, -0.027210,
		33.762756, 32.664448, 21.898205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299797, 33.254604, 22.426844>,  <33.063103, 32.675495, 21.917252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299797, 33.254604, 22.426844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605923, 33.142288, 22.195168>,  <33.789597, 33.074898, 22.056162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605923, 33.142288, 22.195168>,  <33.299797, 33.254604, 22.426844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605923, 33.142288, 22.195168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348309, 0.937362, 0.005812,
		0.541277, -0.206185, 0.815173,
		0.765311, -0.280786, -0.579188,
		33.835514, 33.058052, 22.021412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266628, 33.518761, 23.158857>,  <33.299797, 33.254604, 22.426844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266628, 33.518761, 23.158857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344849, 33.827770, 23.400509>,  <33.391781, 34.013176, 23.545500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344849, 33.827770, 23.400509>,  <33.266628, 33.518761, 23.158857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344849, 33.827770, 23.400509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015043, -0.618314, 0.785787,
		0.980579, -0.144572, -0.132532,
		0.195549, 0.772520, 0.604130,
		33.403515, 34.059525, 23.581749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850903, 33.424599, 23.446493>,  <33.266628, 33.518761, 23.158857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850903, 33.424599, 23.446493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562481, 33.606232, 23.655834>,  <33.389427, 33.715210, 23.781439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562481, 33.606232, 23.655834>,  <33.850903, 33.424599, 23.446493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562481, 33.606232, 23.655834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097731, -0.814428, 0.571975,
		0.685955, 0.361275, 0.631622,
		-0.721051, 0.454079, 0.523353,
		33.346165, 33.742455, 23.812840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963661, 33.309406, 24.133228>,  <33.850903, 33.424599, 23.446493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963661, 33.309406, 24.133228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575603, 33.359756, 24.050301>,  <33.342770, 33.389969, 24.000544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575603, 33.359756, 24.050301>,  <33.963661, 33.309406, 24.133228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575603, 33.359756, 24.050301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231290, -0.737476, 0.634534,
		-0.073018, 0.663538, 0.744570,
		-0.970141, 0.125880, -0.207319,
		33.284561, 33.397522, 23.988106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567238, 33.124844, 24.758295>,  <33.963661, 33.309406, 24.133228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567238, 33.124844, 24.758295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294521, 33.054779, 24.474186>,  <33.130894, 33.012741, 24.303720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294521, 33.054779, 24.474186>,  <33.567238, 33.124844, 24.758295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294521, 33.054779, 24.474186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253904, -0.853899, 0.454301,
		-0.686074, 0.490077, 0.537705,
		-0.681788, -0.175159, -0.710271,
		33.089985, 33.002232, 24.261105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105911, 32.883667, 25.122311>,  <33.567238, 33.124844, 24.758295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105911, 32.883667, 25.122311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035404, 32.753311, 24.750778>,  <32.993099, 32.675098, 24.527859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035404, 32.753311, 24.750778>,  <33.105911, 32.883667, 25.122311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035404, 32.753311, 24.750778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231283, -0.903478, 0.360882,
		-0.956785, 0.278435, 0.083883,
		-0.176269, -0.325886, -0.928831,
		32.982525, 32.655544, 24.472128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593658, 32.455452, 25.204660>,  <33.105911, 32.883667, 25.122311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593658, 32.455452, 25.204660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694969, 32.349789, 24.832409>,  <32.755756, 32.286392, 24.609058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694969, 32.349789, 24.832409>,  <32.593658, 32.455452, 25.204660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694969, 32.349789, 24.832409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408327, -0.901294, 0.144700,
		-0.876994, 0.343351, -0.336143,
		0.253281, -0.264157, -0.930629,
		32.770954, 32.270542, 24.553221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088234, 31.988678, 24.998003>,  <32.593658, 32.455452, 25.204660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088234, 31.988678, 24.998003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389420, 31.910233, 24.746738>,  <32.570129, 31.863165, 24.595980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389420, 31.910233, 24.746738>,  <32.088234, 31.988678, 24.998003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389420, 31.910233, 24.746738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161672, -0.980433, 0.112305,
		-0.637896, 0.016995, -0.769934,
		0.752961, -0.196116, -0.628163,
		32.615307, 31.851398, 24.558290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885653, 31.501163, 24.558067>,  <32.088234, 31.988678, 24.998003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885653, 31.501163, 24.558067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285053, 31.479984, 24.552525>,  <32.524693, 31.467278, 24.549198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285053, 31.479984, 24.552525>,  <31.885653, 31.501163, 24.558067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285053, 31.479984, 24.552525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051664, -0.995406, 0.080609,
		-0.018061, -0.079773, -0.996650,
		0.998501, -0.052947, -0.013856,
		32.584602, 31.464100, 24.548368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021450, 30.903637, 24.069344>,  <31.885653, 31.501163, 24.558067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021450, 30.903637, 24.069344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326435, 30.968517, 24.319893>,  <32.509426, 31.007446, 24.470222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326435, 30.968517, 24.319893>,  <32.021450, 30.903637, 24.069344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326435, 30.968517, 24.319893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116835, -0.986669, 0.113285,
		0.636399, -0.013193, -0.771247,
		0.762460, 0.162203, 0.626374,
		32.555172, 31.017178, 24.507805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419308, 30.304272, 23.870691>,  <32.021450, 30.903637, 24.069344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419308, 30.304272, 23.870691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538216, 30.451809, 24.222961>,  <32.609562, 30.540331, 24.434322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538216, 30.451809, 24.222961>,  <32.419308, 30.304272, 23.870691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538216, 30.451809, 24.222961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008140, -0.923317, 0.383954,
		0.954759, -0.106969, -0.277475,
		0.297268, 0.368842, 0.880674,
		32.627396, 30.562462, 24.487164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994030, 29.917336, 24.114897>,  <32.419308, 30.304272, 23.870691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994030, 29.917336, 24.114897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903503, 30.097805, 24.460201>,  <32.849190, 30.206087, 24.667385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903503, 30.097805, 24.460201>,  <32.994030, 29.917336, 24.114897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903503, 30.097805, 24.460201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025835, -0.883165, 0.468350,
		0.973712, 0.128296, 0.188216,
		-0.226313, 0.451175, 0.863263,
		32.835609, 30.233158, 24.719181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356819, 29.531359, 24.518930>,  <32.994030, 29.917336, 24.114897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356819, 29.531359, 24.518930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070919, 29.672371, 24.760544>,  <32.899380, 29.756979, 24.905512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070919, 29.672371, 24.760544>,  <33.356819, 29.531359, 24.518930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070919, 29.672371, 24.760544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016989, -0.854663, 0.518905,
		0.699177, 0.381148, 0.604879,
		-0.714747, 0.352530, 0.604036,
		32.856495, 29.778130, 24.941755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606895, 29.457176, 25.273823>,  <33.356819, 29.531359, 24.518930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606895, 29.457176, 25.273823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208920, 29.466103, 25.234657>,  <32.970135, 29.471458, 25.211157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208920, 29.466103, 25.234657>,  <33.606895, 29.457176, 25.273823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208920, 29.466103, 25.234657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068841, -0.861444, 0.503164,
		-0.073119, 0.507361, 0.858626,
		-0.994944, 0.022318, -0.097915,
		32.910435, 29.472797, 25.205282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337486, 29.054136, 25.929583>,  <33.606895, 29.457176, 25.273823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337486, 29.054136, 25.929583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012913, 29.105259, 25.701466>,  <32.818169, 29.135933, 25.564596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012913, 29.105259, 25.701466>,  <33.337486, 29.054136, 25.929583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012913, 29.105259, 25.701466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442860, -0.771211, 0.457284,
		-0.381371, 0.623618, 0.682391,
		-0.811437, 0.127809, -0.570293,
		32.769482, 29.143602, 25.530378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861176, 28.979855, 26.361376>,  <33.337486, 29.054136, 25.929583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861176, 28.979855, 26.361376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689365, 28.901531, 26.008747>,  <32.586281, 28.854538, 25.797169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689365, 28.901531, 26.008747>,  <32.861176, 28.979855, 26.361376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689365, 28.901531, 26.008747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516550, -0.747466, 0.417697,
		-0.740734, 0.634786, 0.219907,
		-0.429521, -0.195809, -0.881573,
		32.560509, 28.842789, 25.744276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247433, 28.738096, 26.539139>,  <32.861176, 28.979855, 26.361376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247433, 28.738096, 26.539139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290813, 28.622746, 26.158596>,  <32.316841, 28.553535, 25.930271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290813, 28.622746, 26.158596>,  <32.247433, 28.738096, 26.539139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290813, 28.622746, 26.158596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470753, -0.857793, 0.206355,
		-0.875575, 0.425475, -0.228780,
		0.108447, -0.288378, -0.951355,
		32.323349, 28.536232, 25.873190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600857, 28.415266, 26.323269>,  <32.247433, 28.738096, 26.539139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600857, 28.415266, 26.323269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879019, 28.268307, 26.076229>,  <32.045918, 28.180132, 25.928005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879019, 28.268307, 26.076229>,  <31.600857, 28.415266, 26.323269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879019, 28.268307, 26.076229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420999, -0.904786, 0.064201,
		-0.582385, 0.215364, -0.783867,
		0.695405, -0.367396, -0.617601,
		32.087639, 28.158089, 25.890949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241819, 28.007460, 25.889090>,  <31.600857, 28.415266, 26.323269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241819, 28.007460, 25.889090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614973, 27.875568, 25.831120>,  <31.838865, 27.796434, 25.796337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614973, 27.875568, 25.831120>,  <31.241819, 28.007460, 25.889090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614973, 27.875568, 25.831120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348646, -0.927681, -0.133617,
		-0.090389, 0.175177, -0.980379,
		0.932885, -0.329728, -0.144927,
		31.894838, 27.776649, 25.787642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209295, 27.493200, 25.315739>,  <31.241819, 28.007460, 25.889090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209295, 27.493200, 25.315739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559719, 27.422901, 25.495354>,  <31.769974, 27.380722, 25.603123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559719, 27.422901, 25.495354>,  <31.209295, 27.493200, 25.315739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559719, 27.422901, 25.495354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259461, -0.956725, 0.131747,
		0.406450, -0.231926, -0.883747,
		0.876059, -0.175749, 0.449036,
		31.822536, 27.370176, 25.630064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407118, 26.766554, 25.119732>,  <31.209295, 27.493200, 25.315739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407118, 26.766554, 25.119732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622532, 26.849918, 25.446301>,  <31.751780, 26.899937, 25.642242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622532, 26.849918, 25.446301>,  <31.407118, 26.766554, 25.119732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622532, 26.849918, 25.446301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270894, -0.874666, 0.401965,
		0.797871, -0.437635, -0.414580,
		0.538533, 0.208409, 0.816423,
		31.784092, 26.912441, 25.691227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838583, 26.194941, 25.244970>,  <31.407118, 26.766554, 25.119732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838583, 26.194941, 25.244970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853350, 26.370049, 25.604301>,  <31.862209, 26.475113, 25.819901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853350, 26.370049, 25.604301>,  <31.838583, 26.194941, 25.244970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853350, 26.370049, 25.604301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024089, -0.898290, 0.438743,
		0.999028, -0.037836, -0.022615,
		0.036915, 0.437772, 0.898328,
		31.864424, 26.501381, 25.873800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387817, 25.762827, 25.610094>,  <31.838583, 26.194941, 25.244970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387817, 25.762827, 25.610094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182251, 25.951439, 25.896744>,  <32.058910, 26.064606, 26.068733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182251, 25.951439, 25.896744>,  <32.387817, 25.762827, 25.610094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182251, 25.951439, 25.896744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012769, -0.839495, 0.543217,
		0.857746, 0.270017, 0.437450,
		-0.513915, 0.471529, 0.716626,
		32.028076, 26.092897, 26.111731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770626, 25.625156, 26.212376>,  <32.387817, 25.762827, 25.610094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770626, 25.625156, 26.212376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394543, 25.694458, 26.329670>,  <32.168892, 25.736038, 26.400045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394543, 25.694458, 26.329670>,  <32.770626, 25.625156, 26.212376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394543, 25.694458, 26.329670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047239, -0.786297, 0.616040,
		0.337300, 0.593059, 0.731101,
		-0.940211, 0.173254, 0.293233,
		32.112480, 25.746435, 26.417641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793552, 25.624073, 26.930405>,  <32.770626, 25.625156, 26.212376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793552, 25.624073, 26.930405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419186, 25.529087, 26.826355>,  <32.194565, 25.472095, 26.763926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419186, 25.529087, 26.826355>,  <32.793552, 25.624073, 26.930405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419186, 25.529087, 26.826355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018338, -0.770395, 0.637303,
		-0.351733, 0.591695, 0.725383,
		-0.935921, -0.237463, -0.260122,
		32.138409, 25.457848, 26.748318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530071, 25.373922, 27.561544>,  <32.793552, 25.624073, 26.930405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530071, 25.373922, 27.561544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268085, 25.263947, 27.279999>,  <32.110893, 25.197962, 27.111071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268085, 25.263947, 27.279999>,  <32.530071, 25.373922, 27.561544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268085, 25.263947, 27.279999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156660, -0.861819, 0.482416,
		-0.739239, 0.426234, 0.521392,
		-0.654968, -0.274940, -0.703865,
		32.071594, 25.181465, 27.068840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061295, 25.115770, 27.971071>,  <32.530071, 25.373922, 27.561544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061295, 25.115770, 27.971071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026249, 24.939678, 27.613632>,  <32.005222, 24.834023, 27.399168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026249, 24.939678, 27.613632>,  <32.061295, 25.115770, 27.971071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026249, 24.939678, 27.613632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046426, -0.894270, 0.445114,
		-0.995072, 0.080483, 0.057910,
		-0.087611, -0.440232, -0.893599,
		31.999966, 24.807608, 27.345552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347292, 24.808222, 27.988646>,  <32.061295, 25.115770, 27.971071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347292, 24.808222, 27.988646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561691, 24.622101, 27.706879>,  <31.690331, 24.510427, 27.537819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561691, 24.622101, 27.706879>,  <31.347292, 24.808222, 27.988646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561691, 24.622101, 27.706879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273468, -0.885103, 0.376573,
		-0.798701, -0.009206, -0.601658,
		0.535996, -0.465303, -0.704415,
		31.722490, 24.482510, 27.495554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976732, 24.114853, 27.853348>,  <31.347292, 24.808222, 27.988646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976732, 24.114853, 27.853348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342884, 24.043552, 27.708958>,  <31.562576, 24.000772, 27.622324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342884, 24.043552, 27.708958>,  <30.976732, 24.114853, 27.853348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342884, 24.043552, 27.708958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068233, -0.952359, 0.297250,
		-0.396762, -0.247467, -0.883934,
		0.915382, -0.178251, -0.360975,
		31.617498, 23.990078, 27.600666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353397, 24.151501, 27.384809>,  <30.976732, 24.114853, 27.853348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353397, 24.151501, 27.384809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973749, 24.135998, 27.509815>,  <29.745960, 24.126696, 27.584818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973749, 24.135998, 27.509815>,  <30.353397, 24.151501, 27.384809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973749, 24.135998, 27.509815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158265, 0.916669, -0.366975,
		-0.272250, -0.397764, -0.876164,
		-0.949122, -0.038757, 0.312515,
		29.689013, 24.124371, 27.603569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032219, 24.515087, 26.861990>,  <30.353397, 24.151501, 27.384809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032219, 24.515087, 26.861990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772566, 24.523018, 27.166157>,  <29.616774, 24.527777, 27.348658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772566, 24.523018, 27.166157>,  <30.032219, 24.515087, 26.861990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772566, 24.523018, 27.166157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294832, 0.914961, -0.275538,
		-0.701215, -0.403055, -0.588085,
		-0.649131, 0.019825, 0.760418,
		29.577826, 24.528965, 27.394281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374868, 24.654625, 26.561005>,  <30.032219, 24.515087, 26.861990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374868, 24.654625, 26.561005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369663, 24.757504, 26.947514>,  <29.366539, 24.819231, 27.179419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369663, 24.757504, 26.947514>,  <29.374868, 24.654625, 26.561005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369663, 24.757504, 26.947514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174675, 0.950910, -0.255460,
		-0.984540, -0.172108, 0.032550,
		-0.013014, 0.257196, 0.966272,
		29.365759, 24.834661, 27.237394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853878, 25.145197, 26.613153>,  <29.374868, 24.654625, 26.561005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853878, 25.145197, 26.613153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054518, 25.185165, 26.956879>,  <29.174902, 25.209146, 27.163113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054518, 25.185165, 26.956879>,  <28.853878, 25.145197, 26.613153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054518, 25.185165, 26.956879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337148, 0.937348, 0.087806,
		-0.796700, -0.333758, 0.503860,
		0.501598, 0.099921, 0.859311,
		29.204998, 25.215141, 27.214672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411333, 25.479202, 27.042637>,  <28.853878, 25.145197, 26.613153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411333, 25.479202, 27.042637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779247, 25.566479, 27.173107>,  <28.999996, 25.618845, 27.251389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779247, 25.566479, 27.173107>,  <28.411333, 25.479202, 27.042637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779247, 25.566479, 27.173107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247275, 0.967655, 0.049985,
		-0.304718, -0.126630, 0.943987,
		0.919783, 0.218193, 0.326175,
		29.055182, 25.631937, 27.270960>
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
