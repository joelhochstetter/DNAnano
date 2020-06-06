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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.634632, 32.319603, 48.868576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484104, 32.688126, 48.907730>,  <40.393787, 32.909237, 48.931225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484104, 32.688126, 48.907730>,  <40.634632, 32.319603, 48.868576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484104, 32.688126, 48.907730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917336, 0.355698, 0.178811,
		0.129920, 0.157088, -0.979002,
		-0.376318, 0.921305, 0.097890,
		40.371208, 32.964516, 48.937096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970783, 32.770096, 48.340672>,  <40.634632, 32.319603, 48.868576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970783, 32.770096, 48.340672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858372, 32.971439, 48.667511>,  <40.790924, 33.092247, 48.863617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858372, 32.971439, 48.667511>,  <40.970783, 32.770096, 48.340672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858372, 32.971439, 48.667511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941995, 0.307467, 0.134572,
		-0.183493, 0.807523, -0.560569,
		-0.281026, 0.503360, 0.817100,
		40.774063, 33.122448, 48.912640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263950, 33.384014, 48.307892>,  <40.970783, 32.770096, 48.340672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263950, 33.384014, 48.307892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174976, 33.350582, 48.696434>,  <41.121590, 33.330524, 48.929562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174976, 33.350582, 48.696434>,  <41.263950, 33.384014, 48.307892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174976, 33.350582, 48.696434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907118, 0.347384, 0.237617,
		-0.357293, 0.933991, -0.001458,
		-0.222438, -0.083576, 0.971358,
		41.108246, 33.325508, 48.987843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447979, 34.026180, 48.659119>,  <41.263950, 33.384014, 48.307892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447979, 34.026180, 48.659119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412067, 33.780468, 48.972702>,  <41.390518, 33.633041, 49.160854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412067, 33.780468, 48.972702>,  <41.447979, 34.026180, 48.659119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412067, 33.780468, 48.972702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837254, 0.379748, 0.393443,
		-0.539393, 0.691699, 0.480217,
		-0.089783, -0.614284, 0.783961,
		41.385132, 33.596184, 49.207890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497074, 34.370747, 49.287514>,  <41.447979, 34.026180, 48.659119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497074, 34.370747, 49.287514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600021, 33.997818, 49.389130>,  <41.661789, 33.774059, 49.450100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600021, 33.997818, 49.389130>,  <41.497074, 34.370747, 49.287514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600021, 33.997818, 49.389130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826727, 0.348557, 0.441624,
		-0.500283, 0.096361, 0.860484,
		0.257372, -0.932321, 0.254041,
		41.677235, 33.718121, 49.465343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558140, 34.353271, 50.067108>,  <41.497074, 34.370747, 49.287514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558140, 34.353271, 50.067108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786537, 34.072407, 49.896961>,  <41.923576, 33.903889, 49.794872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786537, 34.072407, 49.896961>,  <41.558140, 34.353271, 50.067108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786537, 34.072407, 49.896961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810289, 0.398785, 0.429421,
		-0.131892, -0.589866, 0.796657,
		0.570996, -0.702159, -0.425365,
		41.957836, 33.861759, 49.769352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089134, 34.238289, 50.557987>,  <41.558140, 34.353271, 50.067108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089134, 34.238289, 50.557987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255333, 34.045509, 50.249420>,  <42.355053, 33.929840, 50.064281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255333, 34.045509, 50.249420>,  <42.089134, 34.238289, 50.557987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255333, 34.045509, 50.249420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902915, 0.115937, 0.413889,
		-0.110039, -0.868494, 0.483332,
		0.415496, -0.481951, -0.771418,
		42.379982, 33.900925, 50.017994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718338, 33.950066, 50.900078>,  <42.089134, 34.238289, 50.557987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718338, 33.950066, 50.900078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805916, 33.910721, 50.511772>,  <42.858463, 33.887112, 50.278790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805916, 33.910721, 50.511772>,  <42.718338, 33.950066, 50.900078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805916, 33.910721, 50.511772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973869, 0.083556, 0.211179,
		0.060341, -0.991636, 0.114089,
		0.218945, -0.098365, -0.970766,
		42.871601, 33.881210, 50.220543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203854, 33.231998, 50.745869>,  <42.718338, 33.950066, 50.900078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203854, 33.231998, 50.745869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232201, 33.550297, 50.505280>,  <43.249210, 33.741276, 50.360928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232201, 33.550297, 50.505280>,  <43.203854, 33.231998, 50.745869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232201, 33.550297, 50.505280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969948, 0.085733, 0.227707,
		0.232763, -0.599534, -0.765755,
		0.070867, 0.795744, -0.601472,
		43.253460, 33.789021, 50.324837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854328, 33.154118, 50.573353>,  <43.203854, 33.231998, 50.745869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854328, 33.154118, 50.573353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788570, 33.524422, 50.437145>,  <43.749115, 33.746605, 50.355423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788570, 33.524422, 50.437145>,  <43.854328, 33.154118, 50.573353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788570, 33.524422, 50.437145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976137, 0.202340, 0.078838,
		0.141884, -0.319429, -0.936928,
		-0.164395, 0.925756, -0.340516,
		43.739250, 33.802147, 50.334991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364128, 33.329544, 50.084854>,  <43.854328, 33.154118, 50.573353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364128, 33.329544, 50.084854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211655, 33.673027, 50.221867>,  <44.120171, 33.879116, 50.304073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211655, 33.673027, 50.221867>,  <44.364128, 33.329544, 50.084854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211655, 33.673027, 50.221867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924266, 0.362316, 0.120247,
		-0.020847, 0.362426, -0.931779,
		-0.381179, 0.858705, 0.342531,
		44.097301, 33.930637, 50.324627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849354, 33.860733, 49.931229>,  <44.364128, 33.329544, 50.084854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849354, 33.860733, 49.931229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.626118, 34.015759, 50.224712>,  <44.492176, 34.108772, 50.400803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.626118, 34.015759, 50.224712>,  <44.849354, 33.860733, 49.931229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626118, 34.015759, 50.224712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805030, 0.467239, 0.365534,
		-0.201149, 0.794658, -0.572763,
		-0.558091, 0.387564, 0.733708,
		44.458691, 34.132027, 50.444824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948063, 34.571636, 49.853458>,  <44.849354, 33.860733, 49.931229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948063, 34.571636, 49.853458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822330, 34.519154, 50.229538>,  <44.746891, 34.487663, 50.455185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822330, 34.519154, 50.229538>,  <44.948063, 34.571636, 49.853458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822330, 34.519154, 50.229538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723344, 0.608299, 0.326721,
		-0.614793, 0.782788, -0.096297,
		-0.314330, -0.131210, 0.940202,
		44.728031, 34.479790, 50.511600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018639, 35.194023, 50.190411>,  <44.948063, 34.571636, 49.853458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018639, 35.194023, 50.190411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.990273, 34.936558, 50.495216>,  <44.973255, 34.782078, 50.678101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.990273, 34.936558, 50.495216>,  <45.018639, 35.194023, 50.190411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.990273, 34.936558, 50.495216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757855, 0.461942, 0.460723,
		-0.648558, 0.610168, 0.455047,
		-0.070913, -0.643665, 0.762015,
		44.968998, 34.743458, 50.723820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286301, 35.575649, 50.833260>,  <45.018639, 35.194023, 50.190411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286301, 35.575649, 50.833260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298462, 35.196819, 50.961086>,  <45.305759, 34.969521, 51.037781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298462, 35.196819, 50.961086>,  <45.286301, 35.575649, 50.833260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298462, 35.196819, 50.961086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795792, 0.216393, 0.565587,
		-0.604806, 0.237110, 0.760256,
		0.030408, -0.947076, 0.319566,
		45.307583, 34.912697, 51.056957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.371082, 35.612118, 51.579205>,  <45.286301, 35.575649, 50.833260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.371082, 35.612118, 51.579205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.503994, 35.249310, 51.475742>,  <45.583740, 35.031624, 51.413666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.503994, 35.249310, 51.475742>,  <45.371082, 35.612118, 51.579205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.503994, 35.249310, 51.475742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794303, 0.121221, 0.595305,
		-0.508600, -0.403259, 0.760729,
		0.332278, -0.907021, -0.258656,
		45.603676, 34.977203, 51.398144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599167, 35.348873, 52.203114>,  <45.371082, 35.612118, 51.579205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599167, 35.348873, 52.203114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.784344, 35.166031, 51.899342>,  <45.895451, 35.056324, 51.717079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.784344, 35.166031, 51.899342>,  <45.599167, 35.348873, 52.203114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.784344, 35.166031, 51.899342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863710, 0.040058, 0.502394,
		-0.199227, -0.888508, 0.413354,
		0.462940, -0.457109, -0.759433,
		45.923225, 35.028900, 51.671513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.994011, 34.797615, 52.526581>,  <45.599167, 35.348873, 52.203114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.994011, 34.797615, 52.526581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.156197, 34.879517, 52.170227>,  <46.253510, 34.928658, 51.956413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.156197, 34.879517, 52.170227>,  <45.994011, 34.797615, 52.526581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.156197, 34.879517, 52.170227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874269, 0.197730, 0.443346,
		0.266930, -0.958634, -0.098834,
		0.405464, 0.204750, -0.890885,
		46.277836, 34.940941, 51.902962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.624657, 34.531708, 52.656658>,  <45.994011, 34.797615, 52.526581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.624657, 34.531708, 52.656658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.678360, 34.764420, 52.335785>,  <46.710583, 34.904049, 52.143261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.678360, 34.764420, 52.335785>,  <46.624657, 34.531708, 52.656658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.678360, 34.764420, 52.335785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955494, 0.138593, 0.260429,
		0.262691, -0.801448, -0.537284,
		0.134257, 0.581784, -0.802186,
		46.718636, 34.938953, 52.095131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.177593, 34.271355, 52.367325>,  <46.624657, 34.531708, 52.656658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.177593, 34.271355, 52.367325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.132908, 34.649384, 52.244450>,  <47.106098, 34.876202, 52.170723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.132908, 34.649384, 52.244450>,  <47.177593, 34.271355, 52.367325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.132908, 34.649384, 52.244450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980039, 0.155932, 0.123326,
		0.164453, -0.287283, -0.943623,
		-0.111711, 0.945068, -0.307192,
		47.099396, 34.932903, 52.152290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.889557, 34.430462, 52.043056>,  <47.177593, 34.271355, 52.367325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.889557, 34.430462, 52.043056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.729771, 34.787968, 52.124660>,  <47.633900, 35.002472, 52.173622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.729771, 34.787968, 52.124660>,  <47.889557, 34.430462, 52.043056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.729771, 34.787968, 52.124660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910105, 0.359877, 0.205421,
		0.110177, 0.267732, -0.957173,
		-0.399462, 0.893761, 0.204014,
		47.609932, 35.056095, 52.185863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.288448, 34.983910, 52.064270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.300076, 35.362453, 51.935543>,  <24.307053, 35.589581, 51.858307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.300076, 35.362453, 51.935543>,  <24.288448, 34.983910, 52.064270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.300076, 35.362453, 51.935543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934795, -0.139754, -0.326538,
		-0.353996, -0.291338, -0.888712,
		0.029068, 0.946357, -0.321814,
		24.308796, 35.646362, 51.839001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.475441, 35.000923, 51.302345>,  <24.288448, 34.983910, 52.064270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.475441, 35.000923, 51.302345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.573219, 35.333103, 51.502586>,  <24.631886, 35.532410, 51.622730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.573219, 35.333103, 51.502586>,  <24.475441, 35.000923, 51.302345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.573219, 35.333103, 51.502586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954092, -0.113843, -0.277033,
		-0.173073, 0.545337, -0.820154,
		0.244445, 0.830450, 0.500599,
		24.646553, 35.582237, 51.652767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.088083, 35.239151, 50.893959>,  <24.475441, 35.000923, 51.302345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.088083, 35.239151, 50.893959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.095570, 35.469109, 51.221165>,  <25.100061, 35.607082, 51.417488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.095570, 35.469109, 51.221165>,  <25.088083, 35.239151, 50.893959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.095570, 35.469109, 51.221165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999481, 0.010688, -0.030377,
		-0.026206, 0.818159, -0.574395,
		0.018714, 0.574893, 0.818014,
		25.101183, 35.641575, 51.466568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469492, 35.809013, 50.664101>,  <25.088083, 35.239151, 50.893959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.469492, 35.809013, 50.664101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.486248, 35.810738, 51.063747>,  <25.496302, 35.811771, 51.303535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.486248, 35.810738, 51.063747>,  <25.469492, 35.809013, 50.664101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.486248, 35.810738, 51.063747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966268, 0.254153, -0.041612,
		-0.254107, 0.967154, 0.006482,
		0.041892, 0.004310, 0.999113,
		25.498816, 35.812031, 51.363480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.838634, 36.400787, 50.886635>,  <25.469492, 35.809013, 50.664101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.838634, 36.400787, 50.886635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.872770, 36.184765, 51.221550>,  <25.893251, 36.055153, 51.422501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.872770, 36.184765, 51.221550>,  <25.838634, 36.400787, 50.886635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872770, 36.184765, 51.221550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994615, 0.095770, -0.039604,
		-0.058799, 0.836162, 0.545322,
		0.085341, -0.540057, 0.837290,
		25.898373, 36.022747, 51.472736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292889, 36.816235, 51.306740>,  <25.838634, 36.400787, 50.886635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292889, 36.816235, 51.306740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.285749, 36.451389, 51.470562>,  <26.281466, 36.232483, 51.568855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.285749, 36.451389, 51.470562>,  <26.292889, 36.816235, 51.306740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285749, 36.451389, 51.470562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999572, -0.006776, 0.028470,
		-0.023193, 0.409884, 0.911843,
		-0.017848, -0.912113, 0.409551,
		26.280396, 36.177757, 51.593426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659605, 36.791561, 51.961445>,  <26.292889, 36.816235, 51.306740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659605, 36.791561, 51.961445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.687054, 36.416271, 51.825787>,  <26.703524, 36.191097, 51.744392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.687054, 36.416271, 51.825787>,  <26.659605, 36.791561, 51.961445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687054, 36.416271, 51.825787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996736, 0.049987, 0.063394,
		-0.042525, -0.342387, 0.938596,
		0.068623, -0.938228, -0.339144,
		26.707640, 36.134804, 51.724045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125595, 36.506943, 52.363243>,  <26.659605, 36.791561, 51.961445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125595, 36.506943, 52.363243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.114388, 36.227634, 52.077129>,  <27.107662, 36.060047, 51.905460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.114388, 36.227634, 52.077129>,  <27.125595, 36.506943, 52.363243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114388, 36.227634, 52.077129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998917, -0.046145, 0.005917,
		-0.037138, -0.714342, 0.698811,
		-0.028020, -0.698274, -0.715282,
		27.105982, 36.018154, 51.862545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625994, 35.932545, 52.652428>,  <27.125595, 36.506943, 52.363243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625994, 35.932545, 52.652428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.594822, 35.892910, 52.255619>,  <27.576118, 35.869129, 52.017532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.594822, 35.892910, 52.255619>,  <27.625994, 35.932545, 52.652428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594822, 35.892910, 52.255619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943606, -0.328482, -0.041316,
		-0.321768, -0.939298, 0.119098,
		-0.077929, -0.099087, -0.992023,
		27.571444, 35.863182, 51.958012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967707, 35.215874, 52.409622>,  <27.625994, 35.932545, 52.652428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967707, 35.215874, 52.409622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.955944, 35.456142, 52.090042>,  <27.948887, 35.600304, 51.898293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.955944, 35.456142, 52.090042>,  <27.967707, 35.215874, 52.409622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955944, 35.456142, 52.090042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975273, -0.157912, -0.154621,
		-0.219041, -0.783743, -0.581178,
		-0.029408, 0.600675, -0.798952,
		27.947123, 35.636345, 51.850357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246683, 34.769886, 51.910465>,  <27.967707, 35.215874, 52.409622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246683, 34.769886, 51.910465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.290098, 35.126404, 51.734371>,  <28.316147, 35.340317, 51.628716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.290098, 35.126404, 51.734371>,  <28.246683, 34.769886, 51.910465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290098, 35.126404, 51.734371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923533, -0.254273, -0.287109,
		-0.367840, -0.375410, -0.850742,
		0.108537, 0.891298, -0.440235,
		28.322659, 35.393795, 51.602303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457071, 34.633289, 51.283161>,  <28.246683, 34.769886, 51.910465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457071, 34.633289, 51.283161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.559040, 35.016808, 51.333317>,  <28.620222, 35.246918, 51.363411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.559040, 35.016808, 51.333317>,  <28.457071, 34.633289, 51.283161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559040, 35.016808, 51.333317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853510, -0.162169, -0.495199,
		-0.454462, 0.233258, -0.859683,
		0.254923, 0.958797, 0.125388,
		28.635517, 35.304447, 51.370934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334822, 34.845367, 50.655964>,  <28.457071, 34.633289, 51.283161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334822, 34.845367, 50.655964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.603878, 35.074539, 50.843285>,  <28.765312, 35.212044, 50.955677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.603878, 35.074539, 50.843285>,  <28.334822, 34.845367, 50.655964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603878, 35.074539, 50.843285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723997, -0.378779, -0.576502,
		-0.152914, 0.726827, -0.669582,
		0.672641, 0.572931, 0.468300,
		28.805670, 35.246418, 50.983776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808479, 35.009014, 50.114502>,  <28.334822, 34.845367, 50.655964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808479, 35.009014, 50.114502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.004042, 35.048878, 50.461151>,  <29.121378, 35.072796, 50.669140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.004042, 35.048878, 50.461151>,  <28.808479, 35.009014, 50.114502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004042, 35.048878, 50.461151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837513, -0.331520, -0.434358,
		0.244017, 0.938170, -0.245545,
		0.488905, 0.099656, 0.866626,
		29.150713, 35.078773, 50.721138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436182, 35.202026, 49.887135>,  <28.808479, 35.009014, 50.114502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436182, 35.202026, 49.887135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.525688, 35.111088, 50.266239>,  <29.579391, 35.056526, 50.493702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.525688, 35.111088, 50.266239>,  <29.436182, 35.202026, 49.887135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525688, 35.111088, 50.266239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841745, -0.445117, -0.305509,
		0.491319, 0.866132, 0.091767,
		0.223764, -0.227347, 0.947757,
		29.592817, 35.042885, 50.550568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069468, 35.528709, 50.046070>,  <29.436182, 35.202026, 49.887135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069468, 35.528709, 50.046070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.060509, 35.249737, 50.332592>,  <30.055134, 35.082355, 50.504505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.060509, 35.249737, 50.332592>,  <30.069468, 35.528709, 50.046070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060509, 35.249737, 50.332592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818372, -0.424337, -0.387564,
		0.574253, 0.577524, 0.580259,
		-0.022397, -0.697427, 0.716306,
		30.053789, 35.040508, 50.547485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727921, 35.547276, 50.308193>,  <30.069468, 35.528709, 50.046070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727921, 35.547276, 50.308193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.594839, 35.181423, 50.400066>,  <30.514990, 34.961910, 50.455189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.594839, 35.181423, 50.400066>,  <30.727921, 35.547276, 50.308193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594839, 35.181423, 50.400066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878381, -0.389191, -0.277449,
		0.343154, 0.109440, 0.932882,
		-0.332705, -0.914633, 0.229682,
		30.495028, 34.907032, 50.468971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202030, 35.176960, 50.807110>,  <30.727921, 35.547276, 50.308193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202030, 35.176960, 50.807110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.005169, 34.886677, 50.614807>,  <30.887053, 34.712505, 50.499424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.005169, 34.886677, 50.614807>,  <31.202030, 35.176960, 50.807110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005169, 34.886677, 50.614807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870491, -0.406807, -0.277044,
		0.005477, -0.554846, 0.831935,
		-0.492153, -0.725709, -0.480761,
		30.857523, 34.668964, 50.470577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614094, 34.642605, 50.775768>,  <31.202030, 35.176960, 50.807110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614094, 34.642605, 50.775768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.374443, 34.489334, 50.494564>,  <31.230652, 34.397369, 50.325844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.374443, 34.489334, 50.494564>,  <31.614094, 34.642605, 50.775768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374443, 34.489334, 50.494564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777170, -0.489421, -0.395568,
		-0.192492, -0.783351, 0.591022,
		-0.599127, -0.383181, -0.703007,
		31.194704, 34.374378, 50.283661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786676, 33.943127, 50.656681>,  <31.614094, 34.642605, 50.775768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786676, 33.943127, 50.656681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.592310, 34.002388, 50.312138>,  <31.475691, 34.037945, 50.105412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.592310, 34.002388, 50.312138>,  <31.786676, 33.943127, 50.656681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592310, 34.002388, 50.312138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739648, -0.455334, -0.495572,
		-0.465631, -0.877906, 0.111665,
		-0.485910, 0.148161, -0.861359,
		31.446535, 34.046833, 50.053730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753283, 33.253540, 50.202579>,  <31.786676, 33.943127, 50.656681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753283, 33.253540, 50.202579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.728380, 33.571827, 49.961597>,  <31.713438, 33.762798, 49.817009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.728380, 33.571827, 49.961597>,  <31.753283, 33.253540, 50.202579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728380, 33.571827, 49.961597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661578, -0.419059, -0.621855,
		-0.747288, -0.437286, -0.500342,
		-0.062256, 0.795720, -0.602457,
		31.709703, 33.810543, 49.780861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.209764, 34.979511, 35.453594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.462658, 35.024193, 35.146919>,  <24.614393, 35.051003, 34.962914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.462658, 35.024193, 35.146919>,  <24.209764, 34.979511, 35.453594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.462658, 35.024193, 35.146919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072879, -0.993739, -0.084683,
		-0.771343, -0.002335, -0.636416,
		0.632233, 0.111701, -0.766684,
		24.652328, 35.057705, 34.916916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.892151, 34.661983, 34.909351>,  <24.209764, 34.979511, 35.453594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.892151, 34.661983, 34.909351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.286047, 34.693226, 34.847149>,  <24.522385, 34.711971, 34.809826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.286047, 34.693226, 34.847149>,  <23.892151, 34.661983, 34.909351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.286047, 34.693226, 34.847149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060275, -0.991387, -0.116269,
		-0.163248, 0.105122, -0.980969,
		0.984742, 0.078108, -0.155506,
		24.581470, 34.716660, 34.800495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.067156, 34.511074, 34.268585>,  <23.892151, 34.661983, 34.909351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.067156, 34.511074, 34.268585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.412745, 34.437935, 34.456253>,  <24.620098, 34.394051, 34.568855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.412745, 34.437935, 34.456253>,  <24.067156, 34.511074, 34.268585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.412745, 34.437935, 34.456253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172563, -0.982834, -0.065255,
		0.473050, -0.024583, -0.880693,
		0.863971, -0.182844, 0.469172,
		24.671936, 34.383083, 34.597004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.715343, 34.079758, 33.793087>,  <24.067156, 34.511074, 34.268585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.715343, 34.079758, 33.793087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.701456, 34.003250, 34.185455>,  <24.693123, 33.957348, 34.420876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.701456, 34.003250, 34.185455>,  <24.715343, 34.079758, 33.793087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.701456, 34.003250, 34.185455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134468, -0.971697, -0.194226,
		0.990309, -0.138646, 0.008018,
		-0.034720, -0.191266, 0.980924,
		24.691040, 33.945869, 34.479733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298586, 33.615574, 33.842705>,  <24.715343, 34.079758, 33.793087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298586, 33.615574, 33.842705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.047165, 33.553112, 34.147476>,  <24.896313, 33.515636, 34.330338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.047165, 33.553112, 34.147476>,  <25.298586, 33.615574, 33.842705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.047165, 33.553112, 34.147476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011781, -0.981437, -0.191422,
		0.777677, -0.111343, 0.618726,
		-0.628554, -0.156153, 0.761929,
		24.858599, 33.506268, 34.376057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.580940, 33.093628, 34.395176>,  <25.298586, 33.615574, 33.842705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.580940, 33.093628, 34.395176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.182465, 33.105042, 34.362213>,  <24.943378, 33.111889, 34.342434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.182465, 33.105042, 34.362213>,  <25.580940, 33.093628, 34.395176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.182465, 33.105042, 34.362213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010341, -0.976948, -0.213225,
		-0.086591, -0.211560, 0.973521,
		-0.996190, 0.028531, -0.082407,
		24.883608, 33.113602, 34.337490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154438, 32.675613, 34.899063>,  <25.580940, 33.093628, 34.395176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.154438, 32.675613, 34.899063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.031488, 32.723831, 34.521492>,  <24.957718, 32.752762, 34.294949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.031488, 32.723831, 34.521492>,  <25.154438, 32.675613, 34.899063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.031488, 32.723831, 34.521492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209406, -0.959060, -0.190665,
		-0.928262, -0.256269, 0.269547,
		-0.307374, 0.120542, -0.943923,
		24.939276, 32.759995, 34.238316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.120518, 33.391331, 35.223236>,  <25.154438, 32.675613, 34.899063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.120518, 33.391331, 35.223236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.464050, 33.255875, 35.069496>,  <25.670170, 33.174599, 34.977253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.464050, 33.255875, 35.069496>,  <25.120518, 33.391331, 35.223236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464050, 33.255875, 35.069496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487934, 0.769256, 0.412510,
		0.155971, -0.541816, 0.825899,
		0.858832, -0.338645, -0.384353,
		25.721701, 33.154282, 34.954189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659956, 33.144367, 35.665283>,  <25.120518, 33.391331, 35.223236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.659956, 33.144367, 35.665283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.711416, 33.361427, 35.333263>,  <25.742292, 33.491661, 35.134052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.711416, 33.361427, 35.333263>,  <25.659956, 33.144367, 35.665283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711416, 33.361427, 35.333263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276557, 0.784168, 0.555516,
		0.952348, -0.301022, -0.049191,
		0.128649, 0.542648, -0.830050,
		25.750011, 33.524223, 35.084248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326464, 33.459778, 35.665524>,  <25.659956, 33.144367, 35.665283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326464, 33.459778, 35.665524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.110964, 33.702522, 35.431782>,  <25.981663, 33.848167, 35.291538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.110964, 33.702522, 35.431782>,  <26.326464, 33.459778, 35.665524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110964, 33.702522, 35.431782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315634, 0.788499, 0.527869,
		0.781103, 0.099949, -0.616351,
		-0.538752, 0.606861, -0.584351,
		25.949339, 33.884579, 35.256477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845156, 34.136410, 35.477634>,  <26.326464, 33.459778, 35.665524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845156, 34.136410, 35.477634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.456505, 34.227684, 35.452759>,  <26.223314, 34.282448, 35.437832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.456505, 34.227684, 35.452759>,  <26.845156, 34.136410, 35.477634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456505, 34.227684, 35.452759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185047, 0.897216, 0.400951,
		0.147288, 0.378068, -0.913986,
		-0.971629, 0.228186, -0.062189,
		26.165016, 34.296139, 35.434101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750286, 34.712460, 35.218193>,  <26.845156, 34.136410, 35.477634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750286, 34.712460, 35.218193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.444828, 34.647717, 35.468201>,  <26.261553, 34.608871, 35.618206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.444828, 34.647717, 35.468201>,  <26.750286, 34.712460, 35.218193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444828, 34.647717, 35.468201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252059, 0.816508, 0.519405,
		-0.594404, 0.554182, -0.582724,
		-0.763643, -0.161856, 0.625021,
		26.215734, 34.599159, 35.655708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199945, 35.253990, 35.224987>,  <26.750286, 34.712460, 35.218193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199945, 35.253990, 35.224987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.259546, 35.086544, 35.583328>,  <26.295307, 34.986076, 35.798332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.259546, 35.086544, 35.583328>,  <26.199945, 35.253990, 35.224987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.259546, 35.086544, 35.583328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040323, 0.907790, 0.417482,
		-0.988014, -0.026083, 0.152144,
		0.149004, -0.418613, 0.895858,
		26.304247, 34.960960, 35.852085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854567, 35.583969, 35.814060>,  <26.199945, 35.253990, 35.224987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854567, 35.583969, 35.814060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.146620, 35.397778, 36.014153>,  <26.321852, 35.286060, 36.134209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.146620, 35.397778, 36.014153>,  <25.854567, 35.583969, 35.814060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.146620, 35.397778, 36.014153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006680, 0.727180, 0.686414,
		-0.683272, -0.504515, 0.527829,
		0.730133, -0.465482, 0.500232,
		26.365660, 35.258133, 36.164223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.626173, 35.528950, 36.510586>,  <25.854567, 35.583969, 35.814060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.626173, 35.528950, 36.510586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.019260, 35.547775, 36.438972>,  <26.255112, 35.559071, 36.396004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.019260, 35.547775, 36.438972>,  <25.626173, 35.528950, 36.510586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.019260, 35.547775, 36.438972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045276, 0.876653, 0.478987,
		0.179496, -0.478814, 0.859371,
		0.982716, 0.047067, -0.179035,
		26.314075, 35.561897, 36.385262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.895510, 35.777607, 37.134716>,  <25.626173, 35.528950, 36.510586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.895510, 35.777607, 37.134716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.200207, 35.816486, 36.878498>,  <26.383026, 35.839813, 36.724766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.200207, 35.816486, 36.878498>,  <25.895510, 35.777607, 37.134716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200207, 35.816486, 36.878498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275238, 0.846478, 0.455762,
		0.586507, -0.523476, 0.618047,
		0.761744, 0.097197, -0.640546,
		26.428730, 35.845646, 36.686333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548264, 35.978527, 37.396458>,  <25.895510, 35.777607, 37.134716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548264, 35.978527, 37.396458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.528320, 36.124611, 37.024620>,  <26.516356, 36.212261, 36.801517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.528320, 36.124611, 37.024620>,  <26.548264, 35.978527, 37.396458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528320, 36.124611, 37.024620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193689, 0.916613, 0.349721,
		0.979795, -0.162616, -0.116435,
		-0.049856, 0.365207, -0.929590,
		26.513363, 36.234173, 36.745743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388124, 36.079510, 37.663105>,  <26.548264, 35.978527, 37.396458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388124, 36.079510, 37.663105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.569883, 35.905537, 37.974068>,  <27.678938, 35.801151, 38.160645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.569883, 35.905537, 37.974068>,  <27.388124, 36.079510, 37.663105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569883, 35.905537, 37.974068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208407, 0.900388, 0.381927,
		-0.866078, -0.011529, 0.499775,
		0.454395, -0.434936, 0.777404,
		27.706202, 35.775055, 38.207291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135439, 36.290119, 38.325813>,  <27.388124, 36.079510, 37.663105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135439, 36.290119, 38.325813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.518841, 36.183357, 38.365883>,  <27.748882, 36.119301, 38.389923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.518841, 36.183357, 38.365883>,  <27.135439, 36.290119, 38.325813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518841, 36.183357, 38.365883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225767, 0.925229, 0.304928,
		-0.174067, -0.269659, 0.947093,
		0.958504, -0.266900, 0.100172,
		27.806393, 36.103287, 38.395935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448442, 36.441860, 39.058533>,  <27.135439, 36.290119, 38.325813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448442, 36.441860, 39.058533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.727055, 36.456818, 38.771912>,  <27.894222, 36.465790, 38.599937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.727055, 36.456818, 38.771912>,  <27.448442, 36.441860, 39.058533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727055, 36.456818, 38.771912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268077, 0.912764, 0.308214,
		0.665566, -0.406771, 0.625746,
		0.696532, 0.037389, -0.716551,
		27.936014, 36.468033, 38.556946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111252, 36.721584, 39.279480>,  <27.448442, 36.441860, 39.058533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111252, 36.721584, 39.279480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.074175, 36.773163, 38.884556>,  <28.051929, 36.804111, 38.647602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.074175, 36.773163, 38.884556>,  <28.111252, 36.721584, 39.279480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074175, 36.773163, 38.884556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103743, 0.987433, 0.119224,
		0.990276, -0.091375, -0.104903,
		-0.092690, 0.128947, -0.987310,
		28.046368, 36.811848, 38.588364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797615, 36.657185, 39.047512>,  <28.111252, 36.721584, 39.279480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797615, 36.657185, 39.047512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.531796, 36.397926, 39.196255>,  <28.372305, 36.242371, 39.285500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.531796, 36.397926, 39.196255>,  <28.797615, 36.657185, 39.047512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531796, 36.397926, 39.196255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583533, -0.139289, 0.800055,
		-0.466760, 0.748665, 0.470781,
		-0.664548, -0.648150, 0.371857,
		28.332432, 36.203480, 39.307812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741268, 36.960442, 39.716900>,  <28.797615, 36.657185, 39.047512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741268, 36.960442, 39.716900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.689041, 36.564213, 39.700310>,  <28.657705, 36.326477, 39.690357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.689041, 36.564213, 39.700310>,  <28.741268, 36.960442, 39.716900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689041, 36.564213, 39.700310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635068, -0.115684, 0.763745,
		-0.761342, 0.073382, 0.644185,
		-0.130567, -0.990572, -0.041472,
		28.649872, 36.267040, 39.687866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615973, 36.634102, 40.389294>,  <28.741268, 36.960442, 39.716900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615973, 36.634102, 40.389294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.776142, 36.353104, 40.153954>,  <28.872244, 36.184505, 40.012749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.776142, 36.353104, 40.153954>,  <28.615973, 36.634102, 40.389294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776142, 36.353104, 40.153954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708402, -0.169944, 0.685044,
		-0.581230, -0.691095, 0.429603,
		0.400422, -0.702500, -0.588350,
		28.896269, 36.142353, 39.977448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927399, 36.125008, 40.836872>,  <28.615973, 36.634102, 40.389294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927399, 36.125008, 40.836872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.087872, 36.075195, 40.473873>,  <29.184155, 36.045307, 40.256073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.087872, 36.075195, 40.473873>,  <28.927399, 36.125008, 40.836872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087872, 36.075195, 40.473873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845065, -0.331948, 0.419136,
		-0.353436, -0.935041, -0.027934,
		0.401183, -0.124532, -0.907493,
		29.208227, 36.037834, 40.201626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043985, 35.440540, 40.723248>,  <28.927399, 36.125008, 40.836872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043985, 35.440540, 40.723248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.290197, 35.622787, 40.466019>,  <29.437925, 35.732136, 40.311684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.290197, 35.622787, 40.466019>,  <29.043985, 35.440540, 40.723248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290197, 35.622787, 40.466019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776388, -0.210325, 0.594126,
		0.135439, -0.864974, -0.483195,
		0.615532, 0.455614, -0.643068,
		29.474857, 35.759472, 40.273098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534315, 35.006603, 40.438229>,  <29.043985, 35.440540, 40.723248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534315, 35.006603, 40.438229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.712130, 35.364712, 40.450073>,  <29.818819, 35.579578, 40.457180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.712130, 35.364712, 40.450073>,  <29.534315, 35.006603, 40.438229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712130, 35.364712, 40.450073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746911, -0.388712, 0.539469,
		0.494481, -0.217698, -0.841485,
		0.444537, 0.895271, 0.029610,
		29.845491, 35.633293, 40.458958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154961, 35.103851, 39.943043>,  <29.534315, 35.006603, 40.438229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154961, 35.103851, 39.943043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.197529, 35.313511, 40.281025>,  <30.223070, 35.439304, 40.483814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.197529, 35.313511, 40.281025>,  <30.154961, 35.103851, 39.943043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197529, 35.313511, 40.281025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710003, -0.634977, 0.304467,
		0.696111, 0.567517, -0.439720,
		0.106422, 0.524145, 0.844953,
		30.229456, 35.470753, 40.534512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895746, 35.396107, 40.018127>,  <30.154961, 35.103851, 39.943043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895746, 35.396107, 40.018127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.700485, 35.301643, 40.354206>,  <30.583328, 35.244965, 40.555855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.700485, 35.301643, 40.354206>,  <30.895746, 35.396107, 40.018127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700485, 35.301643, 40.354206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630637, -0.760945, 0.152512,
		0.603328, 0.604311, 0.520388,
		-0.488151, -0.236161, 0.840200,
		30.554039, 35.230797, 40.606266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369226, 35.556099, 40.555389>,  <30.895746, 35.396107, 40.018127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369226, 35.556099, 40.555389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.129425, 35.241058, 40.612358>,  <30.985544, 35.052036, 40.646542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.129425, 35.241058, 40.612358>,  <31.369226, 35.556099, 40.555389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129425, 35.241058, 40.612358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799687, -0.596794, 0.065857,
		0.033130, 0.153378, 0.987612,
		-0.599502, -0.787599, 0.142426,
		30.949574, 35.004780, 40.655087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587910, 35.210487, 41.213615>,  <31.369226, 35.556099, 40.555389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587910, 35.210487, 41.213615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.432703, 34.962448, 40.940872>,  <31.339579, 34.813625, 40.777225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.432703, 34.962448, 40.940872>,  <31.587910, 35.210487, 41.213615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432703, 34.962448, 40.940872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904343, -0.398865, -0.151887,
		-0.177785, -0.675567, 0.715544,
		-0.388015, -0.620094, -0.681856,
		31.316299, 34.776421, 40.736317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316319, 35.339378, 41.532101>,  <31.587910, 35.210487, 41.213615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316319, 35.339378, 41.532101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.045788, 35.442223, 41.808208>,  <31.883469, 35.503929, 41.973873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.045788, 35.442223, 41.808208>,  <32.316319, 35.339378, 41.532101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045788, 35.442223, 41.808208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660797, -0.202272, 0.722795,
		0.325458, 0.944977, -0.033093,
		-0.676331, 0.257107, 0.690270,
		31.842888, 35.519356, 42.015289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477898, 35.892353, 41.946320>,  <32.316319, 35.339378, 41.532101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477898, 35.892353, 41.946320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304241, 35.574051, 42.115219>,  <32.200047, 35.383068, 42.216557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304241, 35.574051, 42.115219>,  <32.477898, 35.892353, 41.946320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304241, 35.574051, 42.115219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651083, 0.046766, 0.757564,
		-0.622584, 0.603808, 0.497801,
		-0.434143, -0.795757, 0.422245,
		32.174000, 35.335323, 42.241894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099712, 35.996658, 42.646030>,  <32.477898, 35.892353, 41.946320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099712, 35.996658, 42.646030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.241611, 35.622799, 42.636253>,  <32.326752, 35.398483, 42.630386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.241611, 35.622799, 42.636253>,  <32.099712, 35.996658, 42.646030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241611, 35.622799, 42.636253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470711, 0.155945, 0.868397,
		-0.807829, -0.319565, 0.495267,
		0.354744, -0.934644, -0.024446,
		32.348034, 35.342407, 42.628918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223923, 35.896893, 43.275707>,  <32.099712, 35.996658, 42.646030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223923, 35.896893, 43.275707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.433678, 35.598694, 43.111145>,  <32.559532, 35.419773, 43.012409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.433678, 35.598694, 43.111145>,  <32.223923, 35.896893, 43.275707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433678, 35.598694, 43.111145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712581, 0.119742, 0.691296,
		-0.466095, -0.655666, 0.594017,
		0.524388, -0.745496, -0.411404,
		32.590996, 35.375046, 42.987724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284187, 35.240479, 43.703159>,  <32.223923, 35.896893, 43.275707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284187, 35.240479, 43.703159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.623646, 35.243820, 43.491604>,  <32.827320, 35.245827, 43.364670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.623646, 35.243820, 43.491604>,  <32.284187, 35.240479, 43.703159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623646, 35.243820, 43.491604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528904, -0.027592, 0.848233,
		-0.007510, -0.999585, -0.027832,
		0.848649, 0.008350, -0.528891,
		32.878239, 35.246326, 43.332935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820358, 34.722706, 43.936737>,  <32.284187, 35.240479, 43.703159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820358, 34.722706, 43.936737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.990261, 35.052277, 43.786686>,  <33.092205, 35.250019, 43.696655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.990261, 35.052277, 43.786686>,  <32.820358, 34.722706, 43.936737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990261, 35.052277, 43.786686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631621, 0.027143, 0.774802,
		0.648562, -0.566046, -0.508880,
		0.424762, 0.823927, -0.375130,
		33.117691, 35.299454, 43.674149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434811, 34.687981, 44.258499>,  <32.820358, 34.722706, 43.936737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434811, 34.687981, 44.258499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.501705, 35.042957, 44.086689>,  <33.541840, 35.255943, 43.983604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.501705, 35.042957, 44.086689>,  <33.434811, 34.687981, 44.258499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501705, 35.042957, 44.086689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739325, 0.175336, 0.650120,
		0.652251, -0.426278, -0.626782,
		0.167235, 0.887437, -0.429521,
		33.551876, 35.309189, 43.957832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282207, 34.869560, 45.119469>,  <33.434811, 34.687981, 44.258499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282207, 34.869560, 45.119469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.069115, 34.738659, 45.431648>,  <32.941257, 34.660118, 45.618958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.069115, 34.738659, 45.431648>,  <33.282207, 34.869560, 45.119469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069115, 34.738659, 45.431648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702058, -0.685850, 0.191637,
		0.472558, 0.650012, 0.595124,
		-0.532732, -0.327252, 0.780450,
		32.909294, 34.640484, 45.665783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754799, 34.700974, 45.685188>,  <33.282207, 34.869560, 45.119469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754799, 34.700974, 45.685188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.415199, 34.502674, 45.758327>,  <33.211437, 34.383694, 45.802212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.415199, 34.502674, 45.758327>,  <33.754799, 34.700974, 45.685188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415199, 34.502674, 45.758327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511534, -0.684426, 0.519513,
		-0.132402, 0.534599, 0.834670,
		-0.849001, -0.495746, 0.182846,
		33.160500, 34.353951, 45.813183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520287, 34.701721, 46.388248>,  <33.754799, 34.700974, 45.685188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520287, 34.701721, 46.388248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.380421, 34.361877, 46.230312>,  <33.296501, 34.157970, 46.135551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.380421, 34.361877, 46.230312>,  <33.520287, 34.701721, 46.388248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380421, 34.361877, 46.230312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544165, -0.527240, 0.652612,
		-0.762640, 0.013339, 0.646685,
		-0.349663, -0.849612, -0.394836,
		33.275520, 34.106995, 46.111862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193726, 34.648323, 47.083462>,  <33.520287, 34.701721, 46.388248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193726, 34.648323, 47.083462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.184063, 34.690166, 47.481152>,  <33.178265, 34.715271, 47.719765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.184063, 34.690166, 47.481152>,  <33.193726, 34.648323, 47.083462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184063, 34.690166, 47.481152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990551, 0.136803, 0.009678,
		-0.135000, 0.985060, -0.106921,
		-0.024160, 0.104604, 0.994220,
		33.176815, 34.721546, 47.779419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577206, 35.263313, 47.335880>,  <33.193726, 34.648323, 47.083462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577206, 35.263313, 47.335880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.563282, 35.000004, 47.636669>,  <33.554928, 34.842018, 47.817142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.563282, 35.000004, 47.636669>,  <33.577206, 35.263313, 47.335880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563282, 35.000004, 47.636669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978807, 0.129481, 0.158654,
		-0.201804, 0.741560, 0.639816,
		-0.034807, -0.658273, 0.751974,
		33.552841, 34.802521, 47.862263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069729, 35.517036, 47.735691>,  <33.577206, 35.263313, 47.335880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069729, 35.517036, 47.735691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.998421, 35.150803, 47.879871>,  <33.955635, 34.931061, 47.966381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.998421, 35.150803, 47.879871>,  <34.069729, 35.517036, 47.735691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998421, 35.150803, 47.879871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953220, -0.069819, 0.294102,
		-0.244109, 0.396019, 0.885200,
		-0.178274, -0.915584, 0.360450,
		33.944939, 34.876129, 47.988007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431923, 35.519753, 48.399403>,  <34.069729, 35.517036, 47.735691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431923, 35.519753, 48.399403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.379036, 35.143478, 48.274422>,  <34.347305, 34.917713, 48.199432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.379036, 35.143478, 48.274422>,  <34.431923, 35.519753, 48.399403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379036, 35.143478, 48.274422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963334, -0.196191, 0.183021,
		-0.233465, -0.276797, 0.932136,
		-0.132217, -0.940687, -0.312452,
		34.339371, 34.861271, 48.180687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732681, 35.090275, 49.033844>,  <34.431923, 35.519753, 48.399403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732681, 35.090275, 49.033844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.710030, 34.884720, 48.691448>,  <34.696438, 34.761387, 48.486012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.710030, 34.884720, 48.691448>,  <34.732681, 35.090275, 49.033844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710030, 34.884720, 48.691448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794401, -0.542515, 0.273137,
		-0.604747, -0.664528, 0.438957,
		-0.056634, -0.513887, -0.855987,
		34.693039, 34.730553, 48.434650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151539, 34.561878, 49.096832>,  <34.732681, 35.090275, 49.033844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151539, 34.561878, 49.096832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.099987, 34.472221, 48.710434>,  <35.069054, 34.418427, 48.478596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.099987, 34.472221, 48.710434>,  <35.151539, 34.561878, 49.096832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099987, 34.472221, 48.710434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781992, -0.622004, 0.039995,
		-0.609818, -0.750247, 0.255444,
		-0.128882, -0.224145, -0.965996,
		35.061321, 34.404980, 48.420635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237934, 33.823063, 49.050175>,  <35.151539, 34.561878, 49.096832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237934, 33.823063, 49.050175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294807, 33.987190, 48.689857>,  <35.328930, 34.085667, 48.473667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294807, 33.987190, 48.689857>,  <35.237934, 33.823063, 49.050175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294807, 33.987190, 48.689857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910795, -0.410587, -0.043267,
		-0.387607, -0.814284, -0.432091,
		0.142179, 0.410316, -0.900792,
		35.337460, 34.110287, 48.419621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468849, 33.282509, 48.582134>,  <35.237934, 33.823063, 49.050175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468849, 33.282509, 48.582134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.563419, 33.619724, 48.388893>,  <35.620163, 33.822052, 48.272949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.563419, 33.619724, 48.388893>,  <35.468849, 33.282509, 48.582134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563419, 33.619724, 48.388893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810713, -0.445216, -0.380168,
		-0.535581, -0.301775, -0.788724,
		0.236428, 0.843039, -0.483102,
		35.634346, 33.872635, 48.243961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686676, 33.027641, 48.009178>,  <35.468849, 33.282509, 48.582134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686676, 33.027641, 48.009178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.835899, 33.398552, 48.021778>,  <35.925434, 33.621098, 48.029339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.835899, 33.398552, 48.021778>,  <35.686676, 33.027641, 48.009178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835899, 33.398552, 48.021778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881605, -0.343695, -0.323490,
		-0.289138, 0.148450, -0.945707,
		0.373057, 0.927273, 0.031499,
		35.947815, 33.676735, 48.031227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036816, 33.205116, 47.310040>,  <35.686676, 33.027641, 48.009178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036816, 33.205116, 47.310040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.193192, 33.440891, 47.592804>,  <36.287018, 33.582355, 47.762463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.193192, 33.440891, 47.592804>,  <36.036816, 33.205116, 47.310040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193192, 33.440891, 47.592804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920415, -0.250661, -0.300009,
		0.000358, 0.767938, -0.640524,
		0.390943, 0.589440, 0.706911,
		36.310474, 33.617722, 47.804878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441845, 33.618832, 46.977711>,  <36.036816, 33.205116, 47.310040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441845, 33.618832, 46.977711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.560028, 33.607101, 47.359673>,  <36.630939, 33.600063, 47.588848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.560028, 33.607101, 47.359673>,  <36.441845, 33.618832, 46.977711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560028, 33.607101, 47.359673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909269, -0.298066, -0.290494,
		0.293144, 0.954095, -0.061399,
		0.295460, -0.029328, 0.954905,
		36.648666, 33.598305, 47.646145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129520, 33.916508, 47.035671>,  <36.441845, 33.618832, 46.977711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129520, 33.916508, 47.035671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.113434, 33.691666, 47.366108>,  <37.103783, 33.556763, 47.564369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.113434, 33.691666, 47.366108>,  <37.129520, 33.916508, 47.035671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113434, 33.691666, 47.366108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815183, -0.496549, -0.298187,
		0.577806, 0.661424, 0.478183,
		-0.040213, -0.562101, 0.826091,
		37.101372, 33.523037, 47.613934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817551, 33.854836, 47.255981>,  <37.129520, 33.916508, 47.035671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817551, 33.854836, 47.255981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.596409, 33.546623, 47.382874>,  <37.463726, 33.361694, 47.459007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.596409, 33.546623, 47.382874>,  <37.817551, 33.854836, 47.255981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596409, 33.546623, 47.382874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730179, -0.631394, -0.261113,
		0.401491, 0.087275, 0.911695,
		-0.552850, -0.770535, 0.317226,
		37.430553, 33.315464, 47.478043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389130, 33.507820, 47.089188>,  <37.817551, 33.854836, 47.255981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389130, 33.507820, 47.089188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.126488, 33.283974, 47.291458>,  <37.968903, 33.149666, 47.412819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.126488, 33.283974, 47.291458>,  <38.389130, 33.507820, 47.089188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126488, 33.283974, 47.291458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500530, -0.824837, -0.262896,
		0.564221, 0.080488, 0.821691,
		-0.656601, -0.559613, 0.505677,
		37.929508, 33.116089, 47.443161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863155, 32.976368, 47.424194>,  <38.389130, 33.507820, 47.089188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863155, 32.976368, 47.424194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.487503, 32.876366, 47.329929>,  <38.262112, 32.816364, 47.273369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.487503, 32.876366, 47.329929>,  <38.863155, 32.976368, 47.424194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487503, 32.876366, 47.329929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339246, -0.783221, -0.521035,
		-0.054318, -0.569267, 0.820357,
		-0.939128, -0.250002, -0.235664,
		38.205765, 32.801365, 47.259232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721684, 32.276264, 47.620384>,  <38.863155, 32.976368, 47.424194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721684, 32.276264, 47.620384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.526745, 32.383648, 47.288017>,  <38.409782, 32.448078, 47.088596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.526745, 32.383648, 47.288017>,  <38.721684, 32.276264, 47.620384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526745, 32.383648, 47.288017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491949, -0.701774, -0.515267,
		-0.721444, -0.659882, 0.209938,
		-0.487344, 0.268457, -0.830919,
		38.380543, 32.464184, 47.038742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155838, 32.092094, 48.277618>,  <38.721684, 32.276264, 47.620384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155838, 32.092094, 48.277618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.454308, 31.886942, 48.107830>,  <39.633389, 31.763849, 48.005955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.454308, 31.886942, 48.107830>,  <39.155838, 32.092094, 48.277618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454308, 31.886942, 48.107830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061369, 0.581881, -0.810955,
		0.662920, 0.631161, 0.402708,
		0.746171, -0.512885, -0.424474,
		39.678158, 31.733076, 47.980488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778847, 31.783453, 48.851055>,  <39.155838, 32.092094, 48.277618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778847, 31.783453, 48.851055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.128235, 31.773289, 49.045540>,  <39.337868, 31.767189, 49.162231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.128235, 31.773289, 49.045540>,  <38.778847, 31.783453, 48.851055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128235, 31.773289, 49.045540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473782, 0.185633, 0.860855,
		-0.112132, -0.982290, 0.150106,
		0.873474, -0.025412, 0.486207,
		39.390278, 31.765665, 49.191402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516365, 31.558651, 49.525154>,  <38.778847, 31.783453, 48.851055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516365, 31.558651, 49.525154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.848015, 31.782106, 49.533932>,  <39.047005, 31.916180, 49.539200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.848015, 31.782106, 49.533932>,  <38.516365, 31.558651, 49.525154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848015, 31.782106, 49.533932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313817, 0.432561, 0.845228,
		0.462689, -0.707679, 0.533956,
		0.829119, 0.558643, 0.021941,
		39.096752, 31.949697, 49.540516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958382, 31.497292, 50.136604>,  <38.516365, 31.558651, 49.525154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958382, 31.497292, 50.136604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.960403, 31.859039, 49.965916>,  <38.961617, 32.076088, 49.863503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.960403, 31.859039, 49.965916>,  <38.958382, 31.497292, 50.136604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960403, 31.859039, 49.965916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450708, 0.382984, 0.806341,
		0.892657, 0.188249, 0.409543,
		0.005055, 0.904370, -0.426719,
		38.961922, 32.130352, 49.837898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130188, 32.030991, 50.660778>,  <38.958382, 31.497292, 50.136604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130188, 32.030991, 50.660778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.927090, 32.209137, 50.365795>,  <38.805229, 32.316025, 50.188805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.927090, 32.209137, 50.365795>,  <39.130188, 32.030991, 50.660778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927090, 32.209137, 50.365795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477125, 0.567370, 0.671150,
		0.717319, 0.692633, -0.075584,
		-0.507745, 0.445365, -0.737458,
		38.774765, 32.342747, 50.144558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134586, 32.794910, 50.751923>,  <39.130188, 32.030991, 50.660778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134586, 32.794910, 50.751923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.817570, 32.654636, 50.552364>,  <38.627357, 32.570473, 50.432629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.817570, 32.654636, 50.552364>,  <39.134586, 32.794910, 50.751923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817570, 32.654636, 50.552364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589024, 0.652029, 0.477398,
		0.157875, 0.672218, -0.723324,
		-0.792544, -0.350686, -0.498892,
		38.579807, 32.549431, 50.402699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849525, 33.343197, 50.492386>,  <39.134586, 32.794910, 50.751923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849525, 33.343197, 50.492386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.560265, 33.067532, 50.474075>,  <38.386707, 32.902130, 50.463089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.560265, 33.067532, 50.474075>,  <38.849525, 33.343197, 50.492386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560265, 33.067532, 50.474075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586456, 0.577669, 0.567774,
		-0.364848, 0.437434, -0.821911,
		-0.723156, -0.689166, -0.045775,
		38.343319, 32.860783, 50.460342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323269, 33.658768, 50.576794>,  <38.849525, 33.343197, 50.492386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323269, 33.658768, 50.576794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.153946, 33.301670, 50.638523>,  <38.052353, 33.087410, 50.675560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.153946, 33.301670, 50.638523>,  <38.323269, 33.658768, 50.576794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153946, 33.301670, 50.638523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683933, 0.426599, 0.591818,
		-0.594180, 0.144968, -0.791160,
		-0.423303, -0.892747, 0.154328,
		38.026955, 33.033844, 50.684822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600754, 33.710064, 50.430939>,  <38.323269, 33.658768, 50.576794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600754, 33.710064, 50.430939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.652824, 33.389488, 50.664433>,  <37.684067, 33.197144, 50.804531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.652824, 33.389488, 50.664433>,  <37.600754, 33.710064, 50.430939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652824, 33.389488, 50.664433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692350, 0.347960, 0.632120,
		-0.709723, -0.486436, -0.509581,
		0.130172, -0.801439, 0.583739,
		37.691875, 33.149055, 50.839554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923470, 33.490807, 50.713692>,  <37.600754, 33.710064, 50.430939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923470, 33.490807, 50.713692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.186737, 33.335953, 50.971977>,  <37.344696, 33.243042, 51.126949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.186737, 33.335953, 50.971977>,  <36.923470, 33.490807, 50.713692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186737, 33.335953, 50.971977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506878, 0.406312, 0.760254,
		-0.556679, -0.827672, 0.071193,
		0.658167, -0.387131, 0.645713,
		37.384186, 33.219814, 51.165691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526020, 33.080967, 51.182987>,  <36.923470, 33.490807, 50.713692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526020, 33.080967, 51.182987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864464, 33.166489, 51.378288>,  <37.067528, 33.217804, 51.495468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864464, 33.166489, 51.378288>,  <36.526020, 33.080967, 51.182987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864464, 33.166489, 51.378288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531068, 0.416393, 0.737959,
		-0.045523, -0.883687, 0.465859,
		0.846106, 0.213809, 0.488253,
		37.118294, 33.230633, 51.524765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326832, 33.197033, 51.922829>,  <36.526020, 33.080967, 51.182987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326832, 33.197033, 51.922829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691338, 33.361477, 51.932514>,  <36.910042, 33.460144, 51.938328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691338, 33.361477, 51.932514>,  <36.326832, 33.197033, 51.922829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691338, 33.361477, 51.932514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345042, 0.730076, 0.589860,
		0.224815, -0.545875, 0.807142,
		0.911265, 0.411107, 0.024218,
		36.964718, 33.484810, 51.939781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379421, 33.470810, 52.634750>,  <36.326832, 33.197033, 51.922829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379421, 33.470810, 52.634750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.673145, 33.642712, 52.424572>,  <36.849380, 33.745853, 52.298466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.673145, 33.642712, 52.424572>,  <36.379421, 33.470810, 52.634750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673145, 33.642712, 52.424572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193155, 0.874360, 0.445180,
		0.650749, -0.225408, 0.725064,
		0.734314, 0.429750, -0.525450,
		36.893440, 33.771637, 52.266937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618839, 33.964615, 53.181656>,  <36.379421, 33.470810, 52.634750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618839, 33.964615, 53.181656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.708778, 34.090870, 52.812912>,  <36.762741, 34.166622, 52.591667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.708778, 34.090870, 52.812912>,  <36.618839, 33.964615, 53.181656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708778, 34.090870, 52.812912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374833, 0.901298, 0.217169,
		0.899411, 0.296709, 0.320973,
		0.224856, 0.315635, -0.921854,
		36.776234, 34.185558, 52.536354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014442, 34.522057, 53.211800>,  <36.618839, 33.964615, 53.181656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014442, 34.522057, 53.211800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.874725, 34.548401, 52.837921>,  <36.790897, 34.564209, 52.613594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.874725, 34.548401, 52.837921>,  <37.014442, 34.522057, 53.211800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874725, 34.548401, 52.837921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392730, 0.895391, 0.209850,
		0.850741, 0.440383, -0.286886,
		-0.349290, 0.065859, -0.934697,
		36.769939, 34.568157, 52.557510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304451, 35.116512, 53.025192>,  <37.014442, 34.522057, 53.211800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304451, 35.116512, 53.025192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.994041, 35.085369, 52.774837>,  <36.807796, 35.066685, 52.624626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.994041, 35.085369, 52.774837>,  <37.304451, 35.116512, 53.025192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994041, 35.085369, 52.774837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349841, 0.878836, 0.324437,
		0.524791, 0.470729, -0.709231,
		-0.776020, -0.077856, -0.625885,
		36.761234, 35.062012, 52.587070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125645, 35.763836, 52.943932>,  <37.304451, 35.116512, 53.025192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125645, 35.763836, 52.943932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.799759, 35.571522, 52.814262>,  <36.604229, 35.456135, 52.736462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.799759, 35.571522, 52.814262>,  <37.125645, 35.763836, 52.943932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799759, 35.571522, 52.814262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553848, 0.810772, 0.189475,
		0.171732, 0.333910, -0.926829,
		-0.814715, -0.480783, -0.324171,
		36.555344, 35.427288, 52.717010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843853, 36.224838, 52.431728>,  <37.125645, 35.763836, 52.943932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843853, 36.224838, 52.431728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.556644, 35.983482, 52.570496>,  <36.384319, 35.838669, 52.653755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.556644, 35.983482, 52.570496>,  <36.843853, 36.224838, 52.431728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556644, 35.983482, 52.570496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614794, 0.783503, 0.090287,
		-0.326293, -0.148457, -0.933538,
		-0.718026, -0.603394, 0.346922,
		36.341236, 35.802464, 52.674572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272099, 36.452736, 52.093010>,  <36.843853, 36.224838, 52.431728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272099, 36.452736, 52.093010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135983, 36.245590, 52.406956>,  <36.054314, 36.121304, 52.595325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135983, 36.245590, 52.406956>,  <36.272099, 36.452736, 52.093010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135983, 36.245590, 52.406956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698227, 0.698229, 0.157974,
		-0.629826, -0.494258, -0.599189,
		-0.340291, -0.517866, 0.784868,
		36.033894, 36.090229, 52.642414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526119, 36.395844, 52.035686>,  <36.272099, 36.452736, 52.093010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526119, 36.395844, 52.035686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.608913, 36.327271, 52.420967>,  <35.658588, 36.286125, 52.652138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.608913, 36.327271, 52.420967>,  <35.526119, 36.395844, 52.035686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608913, 36.327271, 52.420967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779371, 0.566229, 0.268262,
		-0.591385, -0.806222, -0.016411,
		0.206986, -0.171436, 0.963206,
		35.671009, 36.275841, 52.709930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807724, 36.511723, 52.414516>,  <35.526119, 36.395844, 52.035686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807724, 36.511723, 52.414516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.066280, 36.462303, 52.715691>,  <35.221413, 36.432652, 52.896397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.066280, 36.462303, 52.715691>,  <34.807724, 36.511723, 52.414516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066280, 36.462303, 52.715691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537573, 0.626553, 0.564311,
		-0.541474, -0.769524, 0.338583,
		0.646391, -0.123547, 0.752937,
		35.260197, 36.425240, 52.941570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421501, 36.462109, 52.929665>,  <34.807724, 36.511723, 52.414516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421501, 36.462109, 52.929665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.765160, 36.589676, 53.089741>,  <34.971355, 36.666214, 53.185787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.765160, 36.589676, 53.089741>,  <34.421501, 36.462109, 52.929665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765160, 36.589676, 53.089741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508501, 0.619692, 0.597837,
		-0.057335, -0.717129, 0.694578,
		0.859151, 0.318916, 0.400191,
		35.022903, 36.685352, 53.209797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448956, 36.348179, 53.643730>,  <34.421501, 36.462109, 52.929665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448956, 36.348179, 53.643730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.702522, 36.651970, 53.585289>,  <34.854660, 36.834244, 53.550224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.702522, 36.651970, 53.585289>,  <34.448956, 36.348179, 53.643730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702522, 36.651970, 53.585289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466299, 0.526024, 0.711241,
		0.617025, -0.382738, 0.687598,
		0.633912, 0.759480, -0.146100,
		34.892696, 36.879814, 53.541458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612595, 36.482853, 54.328362>,  <34.448956, 36.348179, 53.643730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612595, 36.482853, 54.328362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.740894, 36.808147, 54.134136>,  <34.817875, 37.003323, 54.017601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.740894, 36.808147, 54.134136>,  <34.612595, 36.482853, 54.328362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740894, 36.808147, 54.134136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023095, 0.519209, 0.854335,
		0.946883, -0.262812, 0.185316,
		0.320747, 0.813236, -0.485560,
		34.837120, 37.052116, 53.988468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286716, 36.674419, 54.475166>,  <34.612595, 36.482853, 54.328362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286716, 36.674419, 54.475166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.089027, 37.004971, 54.367210>,  <34.970413, 37.203300, 54.302437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.089027, 37.004971, 54.367210>,  <35.286716, 36.674419, 54.475166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089027, 37.004971, 54.367210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133268, 0.234768, 0.962873,
		0.859057, 0.511845, -0.005899,
		-0.494227, 0.826377, -0.269892,
		34.940758, 37.252884, 54.286243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543262, 37.225704, 54.881863>,  <35.286716, 36.674419, 54.475166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543262, 37.225704, 54.881863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.192734, 37.362370, 54.746029>,  <34.982414, 37.444370, 54.664528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.192734, 37.362370, 54.746029>,  <35.543262, 37.225704, 54.881863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192734, 37.362370, 54.746029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192515, 0.397801, 0.897046,
		0.441579, 0.851479, -0.282827,
		-0.876326, 0.341668, -0.339583,
		34.929836, 37.464870, 54.644154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448311, 37.902390, 55.150444>,  <35.543262, 37.225704, 54.881863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448311, 37.902390, 55.150444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.070965, 37.821083, 55.045570>,  <34.844555, 37.772297, 54.982647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.070965, 37.821083, 55.045570>,  <35.448311, 37.902390, 55.150444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070965, 37.821083, 55.045570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318912, 0.337927, 0.885494,
		-0.091394, 0.918960, -0.383614,
		-0.943367, -0.203268, -0.262183,
		34.787956, 37.760101, 54.966915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092583, 38.554115, 55.298908>,  <35.448311, 37.902390, 55.150444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092583, 38.554115, 55.298908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.798512, 38.283699, 55.278984>,  <34.622070, 38.121449, 55.267029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.798512, 38.283699, 55.278984>,  <35.092583, 38.554115, 55.298908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798512, 38.283699, 55.278984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428822, 0.406898, 0.806564,
		-0.525005, 0.614327, -0.589044,
		-0.735175, -0.676045, -0.049813,
		34.577957, 38.080887, 55.264042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480732, 38.921444, 55.466850>,  <35.092583, 38.554115, 55.298908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480732, 38.921444, 55.466850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.381474, 38.539742, 55.533558>,  <34.321918, 38.310719, 55.573582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.381474, 38.539742, 55.533558>,  <34.480732, 38.921444, 55.466850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381474, 38.539742, 55.533558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532744, 0.278218, 0.799236,
		-0.809077, 0.109484, -0.577415,
		-0.248150, -0.954258, 0.166773,
		34.307030, 38.253464, 55.583591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798168, 38.976746, 55.716740>,  <34.480732, 38.921444, 55.466850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798168, 38.976746, 55.716740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902851, 38.616318, 55.855064>,  <33.965660, 38.400063, 55.938061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902851, 38.616318, 55.855064>,  <33.798168, 38.976746, 55.716740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902851, 38.616318, 55.855064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628411, 0.112861, 0.769651,
		-0.732536, -0.418734, -0.536705,
		0.261706, -0.901069, 0.345812,
		33.981361, 38.345997, 55.958809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153725, 38.696869, 55.908672>,  <33.798168, 38.976746, 55.716740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153725, 38.696869, 55.908672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.429050, 38.484768, 56.106686>,  <33.594246, 38.357506, 56.225494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.429050, 38.484768, 56.106686>,  <33.153725, 38.696869, 55.908672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429050, 38.484768, 56.106686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539580, 0.081864, 0.837945,
		-0.484849, -0.843877, -0.229767,
		0.688313, -0.530255, 0.495031,
		33.635544, 38.325691, 56.255196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806244, 38.187412, 56.330082>,  <33.153725, 38.696869, 55.908672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806244, 38.187412, 56.330082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.153263, 38.244637, 56.520615>,  <33.361473, 38.278973, 56.634933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.153263, 38.244637, 56.520615>,  <32.806244, 38.187412, 56.330082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153263, 38.244637, 56.520615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494580, 0.147124, 0.856589,
		0.052465, -0.978717, 0.198393,
		0.867547, 0.143062, 0.476335,
		33.413528, 38.287556, 56.663513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629128, 38.002533, 56.969334>,  <32.806244, 38.187412, 56.330082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629128, 38.002533, 56.969334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.953819, 38.231888, 57.013729>,  <33.148636, 38.369499, 57.040367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.953819, 38.231888, 57.013729>,  <32.629128, 38.002533, 56.969334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953819, 38.231888, 57.013729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384639, 0.381851, 0.840382,
		0.439484, -0.724856, 0.530508,
		0.811731, 0.573388, 0.110990,
		33.197338, 38.403904, 57.047028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739838, 38.067471, 57.773594>,  <32.629128, 38.002533, 56.969334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739838, 38.067471, 57.773594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.981731, 38.348419, 57.623409>,  <33.126865, 38.516987, 57.533298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.981731, 38.348419, 57.623409>,  <32.739838, 38.067471, 57.773594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981731, 38.348419, 57.623409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311842, 0.642611, 0.699861,
		0.732839, -0.306144, 0.607637,
		0.604733, 0.702372, -0.375462,
		33.163151, 38.559132, 57.510769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027653, 38.440319, 58.333950>,  <32.739838, 38.067471, 57.773594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027653, 38.440319, 58.333950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.063221, 38.704967, 58.036133>,  <33.084560, 38.863758, 57.857441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.063221, 38.704967, 58.036133>,  <33.027653, 38.440319, 58.333950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063221, 38.704967, 58.036133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250034, 0.738397, 0.626301,
		0.964145, 0.130470, 0.231087,
		0.088920, 0.661625, -0.744544,
		33.089897, 38.903454, 57.812771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283264, 39.063110, 58.643040>,  <33.027653, 38.440319, 58.333950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283264, 39.063110, 58.643040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.150204, 39.198029, 58.290771>,  <33.070366, 39.278980, 58.079411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.150204, 39.198029, 58.290771>,  <33.283264, 39.063110, 58.643040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150204, 39.198029, 58.290771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232324, 0.875759, 0.423170,
		0.913985, 0.345368, -0.212959,
		-0.332650, 0.337295, -0.880668,
		33.050407, 39.299217, 58.026569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678127, 39.610207, 58.463589>,  <33.283264, 39.063110, 58.643040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678127, 39.610207, 58.463589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.323730, 39.644814, 58.281368>,  <33.111092, 39.665577, 58.172035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.323730, 39.644814, 58.281368>,  <33.678127, 39.610207, 58.463589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323730, 39.644814, 58.281368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059498, 0.953104, 0.296736,
		0.459861, 0.290011, -0.839299,
		-0.885996, 0.086521, -0.455550,
		33.057930, 39.670769, 58.144703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673977, 40.248692, 58.237125>,  <33.678127, 39.610207, 58.463589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673977, 40.248692, 58.237125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.285141, 40.162235, 58.200623>,  <33.051838, 40.110363, 58.178722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.285141, 40.162235, 58.200623>,  <33.673977, 40.248692, 58.237125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285141, 40.162235, 58.200623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232972, 0.935215, 0.266641,
		0.027714, 0.280459, -0.959466,
		-0.972089, -0.216139, -0.091258,
		32.993515, 40.097393, 58.173244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373463, 40.856243, 57.882660>,  <33.673977, 40.248692, 58.237125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373463, 40.856243, 57.882660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.106419, 40.667923, 58.113361>,  <32.946194, 40.554932, 58.251781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.106419, 40.667923, 58.113361>,  <33.373463, 40.856243, 57.882660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106419, 40.667923, 58.113361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317839, 0.880763, 0.351048,
		-0.673256, 0.051049, -0.737645,
		-0.667611, -0.470798, 0.576754,
		32.906136, 40.526684, 58.286388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760292, 41.327423, 57.897877>,  <33.373463, 40.856243, 57.882660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760292, 41.327423, 57.897877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.714157, 41.072140, 58.202347>,  <32.686474, 40.918968, 58.385029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.714157, 41.072140, 58.202347>,  <32.760292, 41.327423, 57.897877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714157, 41.072140, 58.202347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406934, 0.729392, 0.549902,
		-0.906146, -0.246320, -0.343839,
		-0.115341, -0.638211, 0.761172,
		32.679554, 40.880676, 58.430698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044899, 41.478642, 58.230003>,  <32.760292, 41.327423, 57.897877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044899, 41.478642, 58.230003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.245621, 41.289650, 58.519817>,  <32.366055, 41.176254, 58.693707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.245621, 41.289650, 58.519817>,  <32.044899, 41.478642, 58.230003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245621, 41.289650, 58.519817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151839, 0.776514, 0.611532,
		-0.851550, -0.416883, 0.317918,
		0.501805, -0.472477, 0.724539,
		32.396164, 41.147907, 58.737179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690586, 41.539482, 58.840946>,  <32.044899, 41.478642, 58.230003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690586, 41.539482, 58.840946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.033291, 41.429501, 59.015465>,  <32.238914, 41.363510, 59.120174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.033291, 41.429501, 59.015465>,  <31.690586, 41.539482, 58.840946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033291, 41.429501, 59.015465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106447, 0.733508, 0.671293,
		-0.504605, -0.621582, 0.599174,
		0.856763, -0.274958, 0.436298,
		32.290321, 41.347012, 59.146355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541132, 41.422432, 59.614521>,  <31.690586, 41.539482, 58.840946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541132, 41.422432, 59.614521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.929874, 41.502113, 59.564220>,  <32.163120, 41.549923, 59.534039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.929874, 41.502113, 59.564220>,  <31.541132, 41.422432, 59.614521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929874, 41.502113, 59.564220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016322, 0.589478, 0.807619,
		0.235010, -0.782837, 0.576140,
		0.971856, 0.199202, -0.125756,
		32.221432, 41.561874, 59.526493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778528, 41.476322, 60.242832>,  <31.541132, 41.422432, 59.614521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778528, 41.476322, 60.242832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.078293, 41.665527, 60.057518>,  <32.258152, 41.779049, 59.946327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.078293, 41.665527, 60.057518>,  <31.778528, 41.476322, 60.242832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078293, 41.665527, 60.057518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187027, 0.519996, 0.833442,
		0.635140, -0.711239, 0.301225,
		0.749412, 0.473016, -0.463291,
		32.303116, 41.807430, 59.918530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419731, 41.279980, 60.496723>,  <31.778528, 41.476322, 60.242832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419731, 41.279980, 60.496723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.397358, 41.652985, 60.354015>,  <32.383934, 41.876789, 60.268391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.397358, 41.652985, 60.354015>,  <32.419731, 41.279980, 60.496723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397358, 41.652985, 60.354015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271731, 0.358062, 0.893283,
		0.960746, -0.046978, -0.273422,
		-0.055937, 0.932515, -0.356772,
		32.380577, 41.932739, 60.246983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049049, 41.749802, 60.647667>,  <32.419731, 41.279980, 60.496723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049049, 41.749802, 60.647667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.740028, 42.002640, 60.623589>,  <32.554615, 42.154343, 60.609142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.740028, 42.002640, 60.623589>,  <33.049049, 41.749802, 60.647667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740028, 42.002640, 60.623589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123537, 0.242624, 0.962222,
		0.622821, 0.735928, -0.265526,
		-0.772550, 0.632095, -0.060198,
		32.508263, 42.192268, 60.605530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150845, 42.474827, 60.889122>,  <33.049049, 41.749802, 60.647667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150845, 42.474827, 60.889122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.769917, 42.370846, 60.953018>,  <32.541359, 42.308456, 60.991356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.769917, 42.370846, 60.953018>,  <33.150845, 42.474827, 60.889122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769917, 42.370846, 60.953018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048704, 0.387327, 0.920655,
		-0.301202, 0.884534, -0.356197,
		-0.952316, -0.259955, 0.159744,
		32.484222, 42.292858, 61.000942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558151, 42.921162, 60.967178>,  <33.150845, 42.474827, 60.889122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558151, 42.921162, 60.967178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.542873, 42.599541, 61.204510>,  <32.533707, 42.406567, 61.346909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.542873, 42.599541, 61.204510>,  <32.558151, 42.921162, 60.967178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542873, 42.599541, 61.204510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202872, 0.575157, 0.792489,
		-0.978460, 0.150640, 0.141150,
		-0.038197, -0.804054, 0.593328,
		32.531414, 42.358326, 61.382507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143970, 43.171028, 61.553131>,  <32.558151, 42.921162, 60.967178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143970, 43.171028, 61.553131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.392532, 42.871429, 61.645100>,  <32.541668, 42.691669, 61.700279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.392532, 42.871429, 61.645100>,  <32.143970, 43.171028, 61.553131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392532, 42.871429, 61.645100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225746, 0.452169, 0.862892,
		-0.750266, -0.484298, 0.450061,
		0.621401, -0.748998, 0.229919,
		32.578953, 42.646729, 61.714077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399746, 43.889477, 61.421528>,  <32.143970, 43.171028, 61.553131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399746, 43.889477, 61.421528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.725578, 43.657665, 61.411705>,  <32.921078, 43.518578, 61.405811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.725578, 43.657665, 61.411705>,  <32.399746, 43.889477, 61.421528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725578, 43.657665, 61.411705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566087, 0.785036, 0.251524,
		-0.126485, -0.218790, 0.967539,
		0.814584, -0.579526, -0.024559,
		32.969952, 43.483807, 61.404339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746067, 43.884663, 60.870918>,  <32.399746, 43.889477, 61.421528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746067, 43.884663, 60.870918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.374870, 43.802547, 60.746540>,  <31.152153, 43.753277, 60.671913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.374870, 43.802547, 60.746540>,  <31.746067, 43.884663, 60.870918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374870, 43.802547, 60.746540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155960, 0.543896, -0.824532,
		0.338387, -0.813655, -0.472715,
		-0.927993, -0.205287, -0.310945,
		31.096472, 43.740963, 60.653255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535271, 43.353672, 60.241543>,  <31.746067, 43.884663, 60.870918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535271, 43.353672, 60.241543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.307903, 43.680634, 60.278954>,  <31.171484, 43.876812, 60.301399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.307903, 43.680634, 60.278954>,  <31.535271, 43.353672, 60.241543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307903, 43.680634, 60.278954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445035, 0.401084, -0.800672,
		-0.691987, -0.413494, -0.591758,
		-0.568417, 0.817407, 0.093526,
		31.137379, 43.925858, 60.307011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047607, 43.486454, 59.777897>,  <31.535271, 43.353672, 60.241543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047607, 43.486454, 59.777897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.188311, 43.839073, 59.903843>,  <31.272734, 44.050644, 59.979408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.188311, 43.839073, 59.903843>,  <31.047607, 43.486454, 59.777897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188311, 43.839073, 59.903843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523604, 0.093525, -0.846812,
		-0.775953, 0.462738, -0.428684,
		0.351759, 0.881548, 0.314863,
		31.293839, 44.103539, 59.998302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855518, 44.159325, 59.407143>,  <31.047607, 43.486454, 59.777897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855518, 44.159325, 59.407143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.230463, 44.183609, 59.544350>,  <31.455431, 44.198181, 59.626675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.230463, 44.183609, 59.544350>,  <30.855518, 44.159325, 59.407143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230463, 44.183609, 59.544350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339087, 0.066578, -0.938396,
		-0.079811, 0.995932, 0.041821,
		0.937363, 0.060714, 0.343021,
		31.511673, 44.201824, 59.647255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231831, 44.745747, 59.015430>,  <30.855518, 44.159325, 59.407143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231831, 44.745747, 59.015430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.463774, 44.442051, 59.133633>,  <31.602940, 44.259834, 59.204552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.463774, 44.442051, 59.133633>,  <31.231831, 44.745747, 59.015430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463774, 44.442051, 59.133633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419996, -0.032226, -0.906953,
		0.698116, 0.650016, 0.300190,
		0.579860, -0.759237, 0.295502,
		31.637732, 44.214279, 59.222282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935051, 44.923470, 58.827385>,  <31.231831, 44.745747, 59.015430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935051, 44.923470, 58.827385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.898193, 44.525291, 58.837177>,  <31.876080, 44.286385, 58.843052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.898193, 44.525291, 58.837177>,  <31.935051, 44.923470, 58.827385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898193, 44.525291, 58.837177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513646, -0.068578, -0.855257,
		0.853040, -0.066231, 0.517625,
		-0.092142, -0.995445, 0.024480,
		31.870550, 44.226658, 58.844521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512169, 44.723400, 58.536713>,  <31.935051, 44.923470, 58.827385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512169, 44.723400, 58.536713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.306950, 44.380127, 58.529785>,  <32.183819, 44.174164, 58.525631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.306950, 44.380127, 58.529785>,  <32.512169, 44.723400, 58.536713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306950, 44.380127, 58.529785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553235, -0.315181, -0.771098,
		0.656288, -0.405189, 0.636481,
		-0.513047, -0.858186, -0.017315,
		32.153034, 44.122673, 58.524590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037895, 44.269238, 58.427887>,  <32.512169, 44.723400, 58.536713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037895, 44.269238, 58.427887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.700218, 44.091240, 58.308338>,  <32.497612, 43.984440, 58.236610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.700218, 44.091240, 58.308338>,  <33.037895, 44.269238, 58.427887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700218, 44.091240, 58.308338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435235, -0.243541, -0.866752,
		0.312913, -0.861781, 0.399272,
		-0.844190, -0.444995, -0.298870,
		32.446960, 43.957741, 58.218678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193230, 43.523018, 58.285313>,  <33.037895, 44.269238, 58.427887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193230, 43.523018, 58.285313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.845867, 43.597507, 58.101490>,  <32.637451, 43.642200, 57.991196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.845867, 43.597507, 58.101490>,  <33.193230, 43.523018, 58.285313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845867, 43.597507, 58.101490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339700, -0.451714, -0.824960,
		-0.361216, -0.872511, 0.329010,
		-0.868405, 0.186224, -0.459558,
		32.585346, 43.653374, 57.963623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881947, 42.924110, 57.948360>,  <33.193230, 43.523018, 58.285313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881947, 42.924110, 57.948360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.682987, 43.201797, 57.740261>,  <32.563610, 43.368412, 57.615402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.682987, 43.201797, 57.740261>,  <32.881947, 42.924110, 57.948360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682987, 43.201797, 57.740261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401541, -0.347350, -0.847416,
		-0.769000, -0.630402, -0.105986,
		-0.497398, 0.694220, -0.520244,
		32.533768, 43.410065, 57.584187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598873, 42.600677, 57.288136>,  <32.881947, 42.924110, 57.948360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598873, 42.600677, 57.288136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.642433, 42.991543, 57.215149>,  <32.668571, 43.226063, 57.171356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.642433, 42.991543, 57.215149>,  <32.598873, 42.600677, 57.288136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642433, 42.991543, 57.215149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370063, -0.210218, -0.904910,
		-0.922602, 0.031024, -0.384505,
		0.108904, 0.977162, -0.182466,
		32.675106, 43.284691, 57.160408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074394, 42.730267, 56.821770>,  <32.598873, 42.600677, 57.288136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074394, 42.730267, 56.821770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.352184, 43.016514, 56.791859>,  <32.518860, 43.188263, 56.773911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.352184, 43.016514, 56.791859>,  <32.074394, 42.730267, 56.821770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352184, 43.016514, 56.791859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195417, -0.287617, -0.937598,
		-0.692472, 0.636525, -0.339587,
		0.694475, 0.715621, -0.074779,
		32.560528, 43.231201, 56.769424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779419, 43.060589, 56.207966>,  <32.074394, 42.730267, 56.821770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779419, 43.060589, 56.207966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.152397, 43.194515, 56.262291>,  <32.376183, 43.274872, 56.294884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.152397, 43.194515, 56.262291>,  <31.779419, 43.060589, 56.207966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152397, 43.194515, 56.262291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218811, -0.224169, -0.949668,
		-0.287519, 0.915231, -0.282287,
		0.932446, 0.334815, 0.135809,
		32.432129, 43.294960, 56.303032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989344, 43.567387, 55.686653>,  <31.779419, 43.060589, 56.207966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989344, 43.567387, 55.686653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.330158, 43.423492, 55.838768>,  <32.534649, 43.337154, 55.930038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.330158, 43.423492, 55.838768>,  <31.989344, 43.567387, 55.686653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330158, 43.423492, 55.838768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351726, -0.144638, -0.924862,
		0.387713, 0.921774, 0.003292,
		0.852037, -0.359739, 0.380290,
		32.585770, 43.315571, 55.952854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522148, 43.800583, 55.202194>,  <31.989344, 43.567387, 55.686653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522148, 43.800583, 55.202194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.702763, 43.500298, 55.395084>,  <32.811131, 43.320126, 55.510818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.702763, 43.500298, 55.395084>,  <32.522148, 43.800583, 55.202194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702763, 43.500298, 55.395084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323402, -0.366007, -0.872611,
		0.831578, 0.549972, 0.077515,
		0.451540, -0.750713, 0.482226,
		32.838226, 43.275085, 55.539753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203407, 43.830738, 54.941246>,  <32.522148, 43.800583, 55.202194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203407, 43.830738, 54.941246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154083, 43.462925, 55.090511>,  <33.124489, 43.242237, 55.180073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154083, 43.462925, 55.090511>,  <33.203407, 43.830738, 54.941246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154083, 43.462925, 55.090511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510277, -0.381269, -0.770877,
		0.851124, 0.095360, 0.516232,
		-0.123313, -0.919533, 0.373167,
		33.117088, 43.187065, 55.202461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908535, 43.633247, 54.946209>,  <33.203407, 43.830738, 54.941246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908535, 43.633247, 54.946209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.699741, 43.292347, 54.960079>,  <33.574467, 43.087807, 54.968403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.699741, 43.292347, 54.960079>,  <33.908535, 43.633247, 54.946209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699741, 43.292347, 54.960079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376662, -0.266792, -0.887101,
		0.765286, -0.449986, 0.460271,
		-0.521980, -0.852253, 0.034680,
		33.543148, 43.036671, 54.970482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395134, 43.099209, 54.795616>,  <33.908535, 43.633247, 54.946209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395134, 43.099209, 54.795616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.043079, 42.926800, 54.716042>,  <33.831844, 42.823357, 54.668297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.043079, 42.926800, 54.716042>,  <34.395134, 43.099209, 54.795616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043079, 42.926800, 54.716042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389972, -0.417504, -0.820739,
		0.270696, -0.799945, 0.535547,
		-0.880139, -0.431019, -0.198940,
		33.779037, 42.797493, 54.656361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427498, 42.325863, 54.764057>,  <34.395134, 43.099209, 54.795616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427498, 42.325863, 54.764057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.126369, 42.447437, 54.530518>,  <33.945690, 42.520382, 54.390392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.126369, 42.447437, 54.530518>,  <34.427498, 42.325863, 54.764057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126369, 42.447437, 54.530518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389560, -0.509251, -0.767403,
		-0.530572, -0.805160, 0.264970,
		-0.752819, 0.303941, -0.583852,
		33.900524, 42.538616, 54.355362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079617, 41.725822, 54.453110>,  <34.427498, 42.325863, 54.764057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079617, 41.725822, 54.453110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.045959, 42.052547, 54.224815>,  <34.025764, 42.248581, 54.087837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.045959, 42.052547, 54.224815>,  <34.079617, 41.725822, 54.453110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045959, 42.052547, 54.224815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366022, -0.507389, -0.780118,
		-0.926794, -0.274546, -0.256276,
		-0.084147, 0.816812, -0.570735,
		34.020714, 42.297592, 54.053596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704414, 41.504868, 53.719116>,  <34.079617, 41.725822, 54.453110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704414, 41.504868, 53.719116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.931259, 41.829697, 53.664101>,  <34.067368, 42.024593, 53.631092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.931259, 41.829697, 53.664101>,  <33.704414, 41.504868, 53.719116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931259, 41.829697, 53.664101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314974, -0.368130, -0.874798,
		-0.761034, 0.452788, -0.464554,
		0.567115, 0.812073, -0.137543,
		34.101395, 42.073318, 53.622837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699581, 41.679863, 52.953110>,  <33.704414, 41.504868, 53.719116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699581, 41.679863, 52.953110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015087, 41.891060, 53.079018>,  <34.204391, 42.017780, 53.154560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015087, 41.891060, 53.079018>,  <33.699581, 41.679863, 52.953110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015087, 41.891060, 53.079018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499198, -0.251401, -0.829216,
		-0.358689, 0.811183, -0.461870,
		0.788760, 0.527995, 0.314767,
		34.251717, 42.049458, 53.173447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038559, 41.775108, 52.356197>,  <33.699581, 41.679863, 52.953110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038559, 41.775108, 52.356197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.346024, 41.887100, 52.586250>,  <34.530502, 41.954296, 52.724281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.346024, 41.887100, 52.586250>,  <34.038559, 41.775108, 52.356197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346024, 41.887100, 52.586250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637849, -0.403114, -0.656237,
		0.048110, 0.871269, -0.488442,
		0.768657, 0.279981, 0.575132,
		34.576622, 41.971096, 52.758789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525116, 42.314194, 52.040211>,  <34.038559, 41.775108, 52.356197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525116, 42.314194, 52.040211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.748344, 42.107922, 52.300251>,  <34.882282, 41.984158, 52.456276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.748344, 42.107922, 52.300251>,  <34.525116, 42.314194, 52.040211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748344, 42.107922, 52.300251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511859, -0.402705, -0.758834,
		0.653117, 0.756241, 0.039220,
		0.558067, -0.515682, 0.650103,
		34.915764, 41.953217, 52.495281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257225, 42.251019, 51.851788>,  <34.525116, 42.314194, 52.040211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257225, 42.251019, 51.851788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.204330, 41.946522, 52.105724>,  <35.172592, 41.763824, 52.258087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.204330, 41.946522, 52.105724>,  <35.257225, 42.251019, 51.851788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204330, 41.946522, 52.105724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487898, -0.607493, -0.626823,
		0.862826, 0.226847, 0.451743,
		-0.132238, -0.761244, 0.634839,
		35.164658, 41.718147, 52.296177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978374, 42.085190, 52.071102>,  <35.257225, 42.251019, 51.851788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978374, 42.085190, 52.071102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732456, 41.774239, 52.124340>,  <35.584904, 41.587669, 52.156284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732456, 41.774239, 52.124340>,  <35.978374, 42.085190, 52.071102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732456, 41.774239, 52.124340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648952, -0.594519, -0.474773,
		0.448206, -0.205514, 0.869986,
		-0.614795, -0.777375, 0.133098,
		35.548019, 41.541027, 52.164268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442394, 41.484348, 52.189991>,  <35.978374, 42.085190, 52.071102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442394, 41.484348, 52.189991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.082256, 41.335697, 52.099426>,  <35.866173, 41.246506, 52.045090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.082256, 41.335697, 52.099426>,  <36.442394, 41.484348, 52.189991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082256, 41.335697, 52.099426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434200, -0.801869, -0.410460,
		-0.029011, -0.467864, 0.883324,
		-0.900349, -0.371631, -0.226409,
		35.812153, 41.224209, 52.031502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632607, 40.797382, 52.085915>,  <36.442394, 41.484348, 52.189991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632607, 40.797382, 52.085915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.261059, 40.750702, 51.945297>,  <36.038132, 40.722694, 51.860928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.261059, 40.750702, 51.945297>,  <36.632607, 40.797382, 52.085915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261059, 40.750702, 51.945297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265561, -0.871447, -0.412380,
		-0.258224, -0.476403, 0.840452,
		-0.928869, -0.116705, -0.351542,
		35.982399, 40.715691, 51.839836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328247, 40.185669, 52.317421>,  <36.632607, 40.797382, 52.085915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328247, 40.185669, 52.317421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.132751, 40.271141, 51.979076>,  <36.015453, 40.322426, 51.776070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.132751, 40.271141, 51.979076>,  <36.328247, 40.185669, 52.317421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132751, 40.271141, 51.979076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219582, -0.908201, -0.356308,
		-0.844344, -0.359876, 0.396954,
		-0.488740, 0.213683, -0.845856,
		35.986130, 40.335247, 51.725319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880657, 39.541664, 52.093967>,  <36.328247, 40.185669, 52.317421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880657, 39.541664, 52.093967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.928276, 39.752918, 51.757656>,  <35.956848, 39.879669, 51.555870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.928276, 39.752918, 51.757656>,  <35.880657, 39.541664, 52.093967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928276, 39.752918, 51.757656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195993, -0.842634, -0.501552,
		-0.973352, -0.105077, -0.203825,
		0.119048, 0.528134, -0.840774,
		35.963989, 39.911358, 51.505424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579754, 39.110905, 51.508450>,  <35.880657, 39.541664, 52.093967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579754, 39.110905, 51.508450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.838612, 39.363300, 51.337311>,  <35.993927, 39.514736, 51.234627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.838612, 39.363300, 51.337311>,  <35.579754, 39.110905, 51.508450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838612, 39.363300, 51.337311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338647, -0.740730, -0.580204,
		-0.683023, 0.230588, -0.693043,
		0.647146, 0.630990, -0.427848,
		36.032757, 39.552597, 51.208958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475536, 38.988571, 50.874115>,  <35.579754, 39.110905, 51.508450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475536, 38.988571, 50.874115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839115, 39.155334, 50.873421>,  <36.057262, 39.255394, 50.873005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839115, 39.155334, 50.873421>,  <35.475536, 38.988571, 50.874115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839115, 39.155334, 50.873421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292221, -0.640062, -0.710583,
		-0.297358, 0.645375, -0.703611,
		0.908947, 0.416908, -0.001735,
		36.111801, 39.280407, 50.872902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660103, 39.074867, 50.200401>,  <35.475536, 38.988571, 50.874115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660103, 39.074867, 50.200401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.013973, 39.063347, 50.386528>,  <36.226295, 39.056435, 50.498203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.013973, 39.063347, 50.386528>,  <35.660103, 39.074867, 50.200401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013973, 39.063347, 50.386528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358275, -0.596648, -0.718088,
		0.298314, 0.801986, -0.517520,
		0.884674, -0.028802, 0.465320,
		36.279377, 39.054707, 50.526123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061741, 38.966026, 49.663502>,  <35.660103, 39.074867, 50.200401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061741, 38.966026, 49.663502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.307945, 38.903751, 49.972542>,  <36.455666, 38.866386, 50.157967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.307945, 38.903751, 49.972542>,  <36.061741, 38.966026, 49.663502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307945, 38.903751, 49.972542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592302, -0.555326, -0.583774,
		0.519930, 0.816930, -0.249594,
		0.615509, -0.155687, 0.772600,
		36.492599, 38.857044, 50.204323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776363, 38.959412, 49.387306>,  <36.061741, 38.966026, 49.663502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776363, 38.959412, 49.387306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.787704, 38.766209, 49.737370>,  <36.794510, 38.650288, 49.947407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.787704, 38.766209, 49.737370>,  <36.776363, 38.959412, 49.387306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787704, 38.766209, 49.737370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536486, -0.731378, -0.421033,
		0.843433, 0.481449, 0.238386,
		0.028355, -0.483004, 0.875159,
		36.796211, 38.621307, 49.999916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490795, 38.870041, 49.520660>,  <36.776363, 38.959412, 49.387306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490795, 38.870041, 49.520660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.301899, 38.575066, 49.713814>,  <37.188560, 38.398079, 49.829704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.301899, 38.575066, 49.713814>,  <37.490795, 38.870041, 49.520660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301899, 38.575066, 49.713814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602442, -0.669915, -0.433910,
		0.643472, 0.086000, 0.760624,
		-0.472237, -0.737440, 0.482881,
		37.160229, 38.353832, 49.858677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024685, 38.426910, 49.655247>,  <37.490795, 38.870041, 49.520660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024685, 38.426910, 49.655247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.698563, 38.201511, 49.708527>,  <37.502888, 38.066273, 49.740494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.698563, 38.201511, 49.708527>,  <38.024685, 38.426910, 49.655247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698563, 38.201511, 49.708527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450067, -0.761459, -0.466497,
		0.364298, -0.320390, 0.874436,
		-0.815308, -0.563499, 0.133201,
		37.453972, 38.032463, 49.748486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285526, 37.784691, 49.757751>,  <38.024685, 38.426910, 49.655247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285526, 37.784691, 49.757751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906315, 37.673500, 49.695824>,  <37.678787, 37.606785, 49.658669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906315, 37.673500, 49.695824>,  <38.285526, 37.784691, 49.757751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906315, 37.673500, 49.695824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318020, -0.843268, -0.433316,
		-0.010098, -0.460031, 0.887846,
		-0.948030, -0.277977, -0.154815,
		37.621906, 37.590107, 49.649380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239212, 36.962719, 49.967072>,  <38.285526, 37.784691, 49.757751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239212, 36.962719, 49.967072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.951862, 37.069550, 49.710133>,  <37.779453, 37.133648, 49.555969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.951862, 37.069550, 49.710133>,  <38.239212, 36.962719, 49.967072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951862, 37.069550, 49.710133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217075, -0.791204, -0.571729,
		-0.660922, -0.550153, 0.510406,
		-0.718374, 0.267072, -0.642348,
		37.736351, 37.149670, 49.517429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761921, 36.445469, 49.997929>,  <38.239212, 36.962719, 49.967072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761921, 36.445469, 49.997929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.734875, 36.632088, 49.645164>,  <37.718647, 36.744061, 49.433506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.734875, 36.632088, 49.645164>,  <37.761921, 36.445469, 49.997929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734875, 36.632088, 49.645164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388644, -0.801793, -0.453965,
		-0.918904, -0.373443, -0.127107,
		-0.067616, 0.466550, -0.881907,
		37.714588, 36.772053, 49.380592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385918, 35.985058, 49.622189>,  <37.761921, 36.445469, 49.997929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385918, 35.985058, 49.622189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.544880, 36.220802, 49.340843>,  <37.640259, 36.362247, 49.172035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.544880, 36.220802, 49.340843>,  <37.385918, 35.985058, 49.622189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544880, 36.220802, 49.340843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154277, -0.798492, -0.581901,
		-0.904580, 0.122739, -0.408252,
		0.397408, 0.589360, -0.703365,
		37.664101, 36.397610, 49.129833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045383, 35.738861, 49.064953>,  <37.385918, 35.985058, 49.622189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045383, 35.738861, 49.064953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372974, 35.915089, 48.917892>,  <37.569530, 36.020824, 48.829655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372974, 35.915089, 48.917892>,  <37.045383, 35.738861, 49.064953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372974, 35.915089, 48.917892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177308, -0.803653, -0.568071,
		-0.545739, 0.400052, -0.736293,
		0.818982, 0.440569, -0.367652,
		37.618668, 36.047260, 48.807598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962807, 35.672310, 48.393898>,  <37.045383, 35.738861, 49.064953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962807, 35.672310, 48.393898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349163, 35.765785, 48.438511>,  <37.580978, 35.821873, 48.465279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349163, 35.765785, 48.438511>,  <36.962807, 35.672310, 48.393898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349163, 35.765785, 48.438511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246843, -0.700837, -0.669250,
		-0.078231, 0.673955, -0.734618,
		0.965892, 0.233692, 0.111534,
		37.638931, 35.835892, 48.471970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283638, 35.739025, 47.750645>,  <36.962807, 35.672310, 48.393898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283638, 35.739025, 47.750645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.558929, 35.622707, 48.016514>,  <37.724102, 35.552917, 48.176033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.558929, 35.622707, 48.016514>,  <37.283638, 35.739025, 47.750645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558929, 35.622707, 48.016514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278658, -0.739932, -0.612250,
		0.669848, 0.606582, -0.428208,
		0.688225, -0.290791, 0.664671,
		37.765396, 35.535469, 48.215916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090771, 36.457779, 48.008839>,  <37.283638, 35.739025, 47.750645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090771, 36.457779, 48.008839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.041573, 36.297562, 47.645645>,  <37.012054, 36.201431, 47.427731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.041573, 36.297562, 47.645645>,  <37.090771, 36.457779, 48.008839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041573, 36.297562, 47.645645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867448, 0.487842, -0.097698,
		0.482085, 0.775611, -0.407458,
		-0.122999, -0.400547, -0.907982,
		37.004673, 36.177399, 47.373249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744030, 37.004135, 47.610828>,  <37.090771, 36.457779, 48.008839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744030, 37.004135, 47.610828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691967, 36.675274, 47.389156>,  <36.660728, 36.477955, 47.256153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691967, 36.675274, 47.389156>,  <36.744030, 37.004135, 47.610828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691967, 36.675274, 47.389156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824849, 0.399935, -0.399595,
		0.550167, 0.405108, -0.730208,
		-0.130157, -0.822155, -0.554184,
		36.652920, 36.428627, 47.222900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697304, 37.283478, 46.924305>,  <36.744030, 37.004135, 47.610828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697304, 37.283478, 46.924305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.499878, 36.940151, 46.980431>,  <36.381420, 36.734158, 47.014107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.499878, 36.940151, 46.980431>,  <36.697304, 37.283478, 46.924305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499878, 36.940151, 46.980431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868844, 0.479434, -0.123506,
		0.038736, -0.182869, -0.982374,
		-0.493569, -0.858314, 0.140313,
		36.351807, 36.682655, 47.022526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166843, 37.166111, 46.362045>,  <36.697304, 37.283478, 46.924305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166843, 37.166111, 46.362045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.060467, 36.935478, 46.671066>,  <35.996643, 36.797100, 46.856480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.060467, 36.935478, 46.671066>,  <36.166843, 37.166111, 46.362045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060467, 36.935478, 46.671066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925184, 0.377755, -0.036549,
		-0.270761, -0.724472, -0.633900,
		-0.265937, -0.576578, 0.772551,
		35.980686, 36.762505, 46.902832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413692, 37.197063, 46.457699>,  <36.166843, 37.166111, 46.362045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413692, 37.197063, 46.457699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.462669, 36.994705, 46.799244>,  <35.492058, 36.873291, 47.004169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.462669, 36.994705, 46.799244>,  <35.413692, 37.197063, 46.457699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462669, 36.994705, 46.799244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932293, 0.236406, 0.273757,
		-0.340350, -0.829568, -0.442694,
		0.122444, -0.505894, 0.853861,
		35.499401, 36.842937, 47.055401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736584, 36.794117, 46.504536>,  <35.413692, 37.197063, 46.457699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736584, 36.794117, 46.504536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909214, 36.844131, 46.861885>,  <35.012791, 36.874138, 47.076294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909214, 36.844131, 46.861885>,  <34.736584, 36.794117, 46.504536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909214, 36.844131, 46.861885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761433, 0.581519, 0.286451,
		-0.483697, -0.803867, 0.346172,
		0.431575, 0.125032, 0.893370,
		35.038685, 36.881641, 47.129894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229733, 36.658031, 46.895203>,  <34.736584, 36.794117, 46.504536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229733, 36.658031, 46.895203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.491955, 36.858307, 47.121319>,  <34.649288, 36.978474, 47.256989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.491955, 36.858307, 47.121319>,  <34.229733, 36.658031, 46.895203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491955, 36.858307, 47.121319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754645, 0.407141, 0.514535,
		0.027468, -0.763902, 0.644747,
		0.655557, 0.500689, 0.565292,
		34.688622, 37.008514, 47.290905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753151, 36.871365, 47.420704>,  <34.229733, 36.658031, 46.895203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753151, 36.871365, 47.420704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.089794, 37.069912, 47.505856>,  <34.291779, 37.189041, 47.556946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.089794, 37.069912, 47.505856>,  <33.753151, 36.871365, 47.420704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089794, 37.069912, 47.505856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536864, 0.725809, 0.430091,
		0.058976, -0.476253, 0.877328,
		0.841605, 0.496371, 0.212878,
		34.342274, 37.218822, 47.569717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805630, 37.070515, 48.259880>,  <33.753151, 36.871365, 47.420704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805630, 37.070515, 48.259880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.036270, 37.339283, 48.073952>,  <34.174656, 37.500542, 47.962395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.036270, 37.339283, 48.073952>,  <33.805630, 37.070515, 48.259880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036270, 37.339283, 48.073952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614775, 0.731522, 0.294833,
		0.538129, 0.115758, 0.834875,
		0.576601, 0.671919, -0.464819,
		34.209251, 37.540859, 47.934505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060715, 37.527679, 48.762852>,  <33.805630, 37.070515, 48.259880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060715, 37.527679, 48.762852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.074615, 37.711975, 48.408112>,  <34.082958, 37.822552, 48.195267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.074615, 37.711975, 48.408112>,  <34.060715, 37.527679, 48.762852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074615, 37.711975, 48.408112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451089, 0.799087, 0.397465,
		0.891802, 0.386237, 0.235607,
		0.034755, 0.460740, -0.886854,
		34.085041, 37.850197, 48.142056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385010, 38.153210, 48.890919>,  <34.060715, 37.527679, 48.762852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385010, 38.153210, 48.890919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.182697, 38.195698, 48.548481>,  <34.061310, 38.221191, 48.343018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.182697, 38.195698, 48.548481>,  <34.385010, 38.153210, 48.890919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182697, 38.195698, 48.548481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445871, 0.817369, 0.364837,
		0.738501, 0.566237, -0.366050,
		-0.505782, 0.106222, -0.856097,
		34.030964, 38.227566, 48.291653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655079, 38.764774, 48.697132>,  <34.385010, 38.153210, 48.890919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655079, 38.764774, 48.697132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.323750, 38.690842, 48.485577>,  <34.124950, 38.646484, 48.358643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.323750, 38.690842, 48.485577>,  <34.655079, 38.764774, 48.697132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323750, 38.690842, 48.485577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405089, 0.849707, 0.337493,
		0.387019, 0.493799, -0.778703,
		-0.828323, -0.184828, -0.528886,
		34.075253, 38.635391, 48.326912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515720, 39.331280, 48.359867>,  <34.655079, 38.764774, 48.697132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515720, 39.331280, 48.359867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.164368, 39.140194, 48.353756>,  <33.953556, 39.025543, 48.350090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.164368, 39.140194, 48.353756>,  <34.515720, 39.331280, 48.359867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164368, 39.140194, 48.353756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424654, 0.765348, 0.483644,
		-0.219356, 0.431309, -0.875132,
		-0.878380, -0.477719, -0.015273,
		33.900852, 38.996880, 48.349174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047596, 39.829273, 48.147564>,  <34.515720, 39.331280, 48.359867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047596, 39.829273, 48.147564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.816963, 39.550255, 48.317730>,  <33.678581, 39.382843, 48.419830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.816963, 39.550255, 48.317730>,  <34.047596, 39.829273, 48.147564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816963, 39.550255, 48.317730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414856, 0.698515, 0.583071,
		-0.703877, 0.159705, -0.692136,
		-0.576586, -0.697547, 0.425414,
		33.643986, 39.340992, 48.445354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388718, 40.084637, 48.190292>,  <34.047596, 39.829273, 48.147564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388718, 40.084637, 48.190292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356636, 39.786434, 48.454952>,  <33.337387, 39.607513, 48.613750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356636, 39.786434, 48.454952>,  <33.388718, 40.084637, 48.190292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356636, 39.786434, 48.454952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298453, 0.651299, 0.697664,
		-0.951049, -0.141516, -0.274736,
		-0.080204, -0.745508, 0.661653,
		33.332573, 39.562782, 48.653450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700153, 40.058750, 48.484203>,  <33.388718, 40.084637, 48.190292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700153, 40.058750, 48.484203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.954220, 39.887833, 48.741566>,  <33.106659, 39.785282, 48.895985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.954220, 39.887833, 48.741566>,  <32.700153, 40.058750, 48.484203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954220, 39.887833, 48.741566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370609, 0.562259, 0.739266,
		-0.677648, -0.708013, 0.198771,
		0.635171, -0.427296, 0.643410,
		33.144772, 39.759644, 48.934589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291077, 39.962132, 49.094193>,  <32.700153, 40.058750, 48.484203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291077, 39.962132, 49.094193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.666031, 39.920521, 49.227146>,  <32.891003, 39.895554, 49.306919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.666031, 39.920521, 49.227146>,  <32.291077, 39.962132, 49.094193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666031, 39.920521, 49.227146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218480, 0.567591, 0.793792,
		-0.271240, -0.816712, 0.509324,
		0.937387, -0.104031, 0.332389,
		32.947247, 39.889313, 49.326862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144829, 40.063267, 49.695141>,  <32.291077, 39.962132, 49.094193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144829, 40.063267, 49.695141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.541451, 40.113644, 49.707550>,  <32.779423, 40.143871, 49.714996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.541451, 40.113644, 49.707550>,  <32.144829, 40.063267, 49.695141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541451, 40.113644, 49.707550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098272, 0.573362, 0.813387,
		0.084655, -0.809564, 0.580895,
		0.991552, 0.125943, 0.031020,
		32.838917, 40.151428, 49.716854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345795, 39.974899, 50.388515>,  <32.144829, 40.063267, 49.695141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345795, 39.974899, 50.388515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.647335, 40.188473, 50.235352>,  <32.828259, 40.316616, 50.143456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.647335, 40.188473, 50.235352>,  <32.345795, 39.974899, 50.388515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647335, 40.188473, 50.235352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118863, 0.683985, 0.719747,
		0.646198, -0.497073, 0.579092,
		0.753857, 0.533931, -0.382906,
		32.873493, 40.348652, 50.120480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869438, 40.071526, 50.925594>,  <32.345795, 39.974899, 50.388515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869438, 40.071526, 50.925594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.897247, 40.359127, 50.648987>,  <32.913933, 40.531689, 50.483025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.897247, 40.359127, 50.648987>,  <32.869438, 40.071526, 50.925594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897247, 40.359127, 50.648987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330106, 0.670722, 0.664200,
		0.941380, 0.182099, 0.283977,
		0.069520, 0.719007, -0.691517,
		32.918102, 40.574829, 50.441532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295143, 40.640491, 51.258793>,  <32.869438, 40.071526, 50.925594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295143, 40.640491, 51.258793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.075382, 40.798573, 50.964317>,  <32.943527, 40.893421, 50.787632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.075382, 40.798573, 50.964317>,  <33.295143, 40.640491, 51.258793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075382, 40.798573, 50.964317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315553, 0.717692, 0.620761,
		0.773685, 0.573352, -0.269592,
		-0.549399, 0.395203, -0.736190,
		32.910564, 40.917133, 50.743462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524033, 41.264763, 51.196522>,  <33.295143, 40.640491, 51.258793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524033, 41.264763, 51.196522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.157661, 41.248203, 51.036842>,  <32.937840, 41.238266, 50.941036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.157661, 41.248203, 51.036842>,  <33.524033, 41.264763, 51.196522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157661, 41.248203, 51.036842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275778, 0.787566, 0.551077,
		0.291579, 0.614838, -0.732773,
		-0.915930, -0.041400, -0.399196,
		32.882881, 41.235783, 50.917084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344814, 41.962708, 51.257771>,  <33.524033, 41.264763, 51.196522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344814, 41.962708, 51.257771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.006191, 41.761440, 51.188316>,  <32.803017, 41.640678, 51.146645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.006191, 41.761440, 51.188316>,  <33.344814, 41.962708, 51.257771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006191, 41.761440, 51.188316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508181, 0.666947, 0.544916,
		-0.158381, 0.549544, -0.820315,
		-0.846562, -0.503173, -0.173636,
		32.752224, 41.610489, 51.136227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807911, 42.474396, 50.936775>,  <33.344814, 41.962708, 51.257771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807911, 42.474396, 50.936775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.634480, 42.156357, 51.106400>,  <32.530418, 41.965534, 51.208172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.634480, 42.156357, 51.106400>,  <32.807911, 42.474396, 50.936775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634480, 42.156357, 51.106400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517558, 0.604962, 0.605107,
		-0.737658, 0.042890, -0.673811,
		-0.433583, -0.795098, 0.424057,
		32.504406, 41.917828, 51.233616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118599, 42.507462, 50.921223>,  <32.807911, 42.474396, 50.936775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118599, 42.507462, 50.921223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.159546, 42.260433, 51.233150>,  <32.184113, 42.112217, 51.420307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.159546, 42.260433, 51.233150>,  <32.118599, 42.507462, 50.921223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159546, 42.260433, 51.233150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576642, 0.601944, 0.552402,
		-0.810558, -0.506226, -0.294500,
		0.102368, -0.617575, 0.779822,
		32.190258, 42.075161, 51.467098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684179, 42.891659, 51.347698>,  <32.118599, 42.507462, 50.921223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684179, 42.891659, 51.347698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.842905, 42.603165, 51.574806>,  <31.938141, 42.430069, 51.711071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.842905, 42.603165, 51.574806>,  <31.684179, 42.891659, 51.347698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842905, 42.603165, 51.574806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429567, 0.400718, 0.809257,
		-0.811178, -0.565019, -0.150807,
		0.396815, -0.721233, 0.567767,
		31.961950, 42.386795, 51.745136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233150, 42.711781, 51.800072>,  <31.684179, 42.891659, 51.347698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233150, 42.711781, 51.800072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.540304, 42.576077, 52.017422>,  <31.724596, 42.494656, 52.147831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.540304, 42.576077, 52.017422>,  <31.233150, 42.711781, 51.800072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540304, 42.576077, 52.017422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475323, 0.266894, 0.838353,
		-0.429440, -0.902038, 0.043688,
		0.767886, -0.339257, 0.543374,
		31.770670, 42.474300, 52.180435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977951, 42.205280, 52.253223>,  <31.233150, 42.711781, 51.800072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977951, 42.205280, 52.253223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.329857, 42.332687, 52.394398>,  <31.541000, 42.409130, 52.479103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.329857, 42.332687, 52.394398>,  <30.977951, 42.205280, 52.253223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329857, 42.332687, 52.394398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414708, 0.151174, 0.897309,
		0.232455, -0.935784, 0.265090,
		0.879763, 0.318519, 0.352936,
		31.593786, 42.428242, 52.500278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996895, 42.061554, 53.008984>,  <30.977951, 42.205280, 52.253223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996895, 42.061554, 53.008984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.269772, 42.343018, 52.929508>,  <31.433496, 42.511898, 52.881824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.269772, 42.343018, 52.929508>,  <30.996895, 42.061554, 53.008984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269772, 42.343018, 52.929508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320123, 0.531747, 0.784070,
		0.657374, -0.471279, 0.588010,
		0.682188, 0.703663, -0.198690,
		31.474428, 42.554115, 52.869904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142157, 42.161022, 53.620060>,  <30.996895, 42.061554, 53.008984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142157, 42.161022, 53.620060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.252916, 42.486980, 53.416382>,  <31.319372, 42.682556, 53.294174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.252916, 42.486980, 53.416382>,  <31.142157, 42.161022, 53.620060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252916, 42.486980, 53.416382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365246, 0.579397, 0.728625,
		0.888775, -0.015777, 0.458072,
		0.276901, 0.814893, -0.509191,
		31.335987, 42.731449, 53.263626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396065, 42.683945, 54.141724>,  <31.142157, 42.161022, 53.620060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396065, 42.683945, 54.141724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.344652, 42.916130, 53.820091>,  <31.313805, 43.055439, 53.627113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.344652, 42.916130, 53.820091>,  <31.396065, 42.683945, 54.141724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344652, 42.916130, 53.820091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349473, 0.732283, 0.584492,
		0.928089, 0.356129, 0.108735,
		-0.128530, 0.580460, -0.804081,
		31.306093, 43.090267, 53.578865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589342, 43.333504, 54.336075>,  <31.396065, 42.683945, 54.141724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589342, 43.333504, 54.336075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.361975, 43.373299, 54.009392>,  <31.225555, 43.397175, 53.813381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.361975, 43.373299, 54.009392>,  <31.589342, 43.333504, 54.336075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361975, 43.373299, 54.009392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645629, 0.561352, 0.517732,
		0.509965, 0.821576, -0.254852,
		-0.568418, 0.099486, -0.816703,
		31.191450, 43.403145, 53.764381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501387, 44.049511, 54.349213>,  <31.589342, 43.333504, 54.336075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501387, 44.049511, 54.349213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.195673, 43.885578, 54.150051>,  <31.012245, 43.787220, 54.030556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.195673, 43.885578, 54.150051>,  <31.501387, 44.049511, 54.349213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195673, 43.885578, 54.150051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624384, 0.663388, 0.412385,
		0.161295, 0.626063, -0.762909,
		-0.764284, -0.409832, -0.497904,
		30.966389, 43.762627, 54.000679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101183, 44.505531, 54.001984>,  <31.501387, 44.049511, 54.349213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101183, 44.505531, 54.001984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.844458, 44.200832, 54.037350>,  <30.690422, 44.018013, 54.058571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.844458, 44.200832, 54.037350>,  <31.101183, 44.505531, 54.001984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844458, 44.200832, 54.037350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665719, 0.610678, 0.428825,
		-0.380650, 0.216365, -0.899051,
		-0.641814, -0.761747, 0.088416,
		30.651913, 43.972309, 54.063873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423933, 44.856087, 53.784500>,  <31.101183, 44.505531, 54.001984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423933, 44.856087, 53.784500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.308929, 44.516872, 53.962566>,  <30.239927, 44.313343, 54.069408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.308929, 44.516872, 53.962566>,  <30.423933, 44.856087, 53.784500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308929, 44.516872, 53.962566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763625, 0.483513, 0.427892,
		-0.578112, -0.216920, -0.786595,
		-0.287511, -0.848033, 0.445170,
		30.222675, 44.262463, 54.096119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657503, 44.865665, 53.931683>,  <30.423933, 44.856087, 53.784500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657503, 44.865665, 53.931683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.774830, 44.572418, 54.177124>,  <29.845226, 44.396469, 54.324387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.774830, 44.572418, 54.177124>,  <29.657503, 44.865665, 53.931683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774830, 44.572418, 54.177124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642146, 0.324407, 0.694556,
		-0.708246, -0.597748, -0.375613,
		0.293318, -0.733115, 0.613601,
		29.862825, 44.352482, 54.361206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001188, 44.512852, 54.227634>,  <29.657503, 44.865665, 53.931683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001188, 44.512852, 54.227634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.314249, 44.476269, 54.473915>,  <29.502085, 44.454319, 54.621685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.314249, 44.476269, 54.473915>,  <29.001188, 44.512852, 54.227634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314249, 44.476269, 54.473915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576673, 0.265811, 0.772523,
		-0.234315, -0.959677, 0.155296,
		0.782652, -0.091459, 0.615703,
		29.549046, 44.448830, 54.658627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713863, 44.203377, 54.907028>,  <29.001188, 44.512852, 54.227634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713863, 44.203377, 54.907028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.081993, 44.339542, 54.984100>,  <29.302872, 44.421242, 55.030342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.081993, 44.339542, 54.984100>,  <28.713863, 44.203377, 54.907028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081993, 44.339542, 54.984100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288019, 0.256443, 0.922649,
		0.264713, -0.904615, 0.334065,
		0.920311, 0.340454, 0.192662,
		29.358089, 44.441666, 55.041904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849306, 43.977139, 55.630745>,  <28.713863, 44.203377, 54.907028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849306, 43.977139, 55.630745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.069136, 44.298218, 55.538109>,  <29.201035, 44.490868, 55.482525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.069136, 44.298218, 55.538109>,  <28.849306, 43.977139, 55.630745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069136, 44.298218, 55.538109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186479, 0.388078, 0.902564,
		0.814366, -0.452840, 0.362965,
		0.549576, 0.802703, -0.231592,
		29.234009, 44.539028, 55.468632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770128, 43.894001, 56.340042>,  <28.849306, 43.977139, 55.630745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770128, 43.894001, 56.340042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.505768, 43.668613, 56.538322>,  <28.347153, 43.533382, 56.657291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.505768, 43.668613, 56.538322>,  <28.770128, 43.894001, 56.340042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505768, 43.668613, 56.538322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365588, -0.818567, -0.443051,
		0.655407, -0.111590, 0.746987,
		-0.660899, -0.563468, 0.495698,
		28.307499, 43.499573, 56.687031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115332, 43.381268, 56.715725>,  <28.770128, 43.894001, 56.340042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115332, 43.381268, 56.715725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.756796, 43.213646, 56.657803>,  <28.541674, 43.113071, 56.623051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.756796, 43.213646, 56.657803>,  <29.115332, 43.381268, 56.715725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756796, 43.213646, 56.657803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441535, -0.814010, -0.377404,
		0.040283, -0.402217, 0.914657,
		-0.896339, -0.419056, -0.144802,
		28.487894, 43.087929, 56.614361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217978, 42.624596, 56.882801>,  <29.115332, 43.381268, 56.715725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217978, 42.624596, 56.882801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.879026, 42.656342, 56.672791>,  <28.675655, 42.675388, 56.546783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.879026, 42.656342, 56.672791>,  <29.217978, 42.624596, 56.882801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879026, 42.656342, 56.672791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239820, -0.824975, -0.511764,
		-0.473748, -0.559569, 0.680033,
		-0.847377, 0.079362, -0.525026,
		28.624813, 42.680149, 56.515282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811596, 41.943218, 56.929333>,  <29.217978, 42.624596, 56.882801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811596, 41.943218, 56.929333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.721561, 42.150906, 56.599545>,  <28.667542, 42.275517, 56.401672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.721561, 42.150906, 56.599545>,  <28.811596, 41.943218, 56.929333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721561, 42.150906, 56.599545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415308, -0.714338, -0.563241,
		-0.881394, -0.469186, -0.054848,
		-0.225085, 0.519216, -0.824470,
		28.654036, 42.306671, 56.352203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480597, 41.499138, 56.467693>,  <28.811596, 41.943218, 56.929333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480597, 41.499138, 56.467693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.580511, 41.784019, 56.205284>,  <28.640461, 41.954948, 56.047840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.580511, 41.784019, 56.205284>,  <28.480597, 41.499138, 56.467693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580511, 41.784019, 56.205284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330543, -0.699519, -0.633573,
		-0.910136, -0.058585, -0.410147,
		0.249788, 0.712208, -0.656022,
		28.655447, 41.997681, 56.008476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352327, 41.373940, 55.739807>,  <28.480597, 41.499138, 56.467693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352327, 41.373940, 55.739807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.614559, 41.666523, 55.664783>,  <28.771898, 41.842072, 55.619770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.614559, 41.666523, 55.664783>,  <28.352327, 41.373940, 55.739807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614559, 41.666523, 55.664783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412207, -0.554764, -0.722719,
		-0.632691, 0.396488, -0.665206,
		0.655582, 0.731460, -0.187559,
		28.811234, 41.885960, 55.608517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340467, 41.544434, 54.949329>,  <28.352327, 41.373940, 55.739807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340467, 41.544434, 54.949329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.688858, 41.698048, 55.071911>,  <28.897892, 41.790218, 55.145458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.688858, 41.698048, 55.071911>,  <28.340467, 41.544434, 54.949329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688858, 41.698048, 55.071911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483089, -0.555668, -0.676652,
		-0.089573, 0.737393, -0.669498,
		0.870977, 0.384038, 0.306454,
		28.950151, 41.813259, 55.163849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717524, 41.679455, 54.348618>,  <28.340467, 41.544434, 54.949329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717524, 41.679455, 54.348618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.007696, 41.641323, 54.621281>,  <29.181799, 41.618446, 54.784878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.007696, 41.641323, 54.621281>,  <28.717524, 41.679455, 54.348618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007696, 41.641323, 54.621281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561835, -0.490090, -0.666448,
		0.397606, 0.866444, -0.301968,
		0.725432, -0.095327, 0.681661,
		29.225327, 41.612724, 54.825779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317478, 41.912968, 53.979435>,  <28.717524, 41.679455, 54.348618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317478, 41.912968, 53.979435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.465918, 41.727451, 54.301228>,  <29.554981, 41.616142, 54.494301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.465918, 41.727451, 54.301228>,  <29.317478, 41.912968, 53.979435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465918, 41.727451, 54.301228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592549, -0.548758, -0.589703,
		0.714962, 0.695531, 0.071175,
		0.371099, -0.463790, 0.804478,
		29.577248, 41.588314, 54.542572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044842, 41.976109, 54.089352>,  <29.317478, 41.912968, 53.979435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044842, 41.976109, 54.089352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.924871, 41.629040, 54.247940>,  <29.852888, 41.420799, 54.343094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.924871, 41.629040, 54.247940>,  <30.044842, 41.976109, 54.089352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924871, 41.629040, 54.247940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662754, -0.488451, -0.567603,
		0.686149, 0.092521, 0.721553,
		-0.299928, -0.867673, 0.396469,
		29.834892, 41.368736, 54.366882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546591, 41.586479, 53.827465>,  <30.044842, 41.976109, 54.089352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546591, 41.586479, 53.827465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.329096, 41.301643, 54.005131>,  <30.198599, 41.130741, 54.111729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.329096, 41.301643, 54.005131>,  <30.546591, 41.586479, 53.827465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329096, 41.301643, 54.005131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338109, -0.670248, -0.660644,
		0.768136, -0.209042, 0.605202,
		-0.543738, -0.712088, 0.444163,
		30.165974, 41.088017, 54.138378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991604, 41.074242, 53.885014>,  <30.546591, 41.586479, 53.827465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991604, 41.074242, 53.885014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.644329, 40.878681, 53.919033>,  <30.435965, 40.761345, 53.939445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.644329, 40.878681, 53.919033>,  <30.991604, 41.074242, 53.885014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644329, 40.878681, 53.919033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314425, -0.674542, -0.667930,
		0.383916, -0.553147, 0.739349,
		-0.868185, -0.488899, 0.085044,
		30.383873, 40.732010, 53.944546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281300, 40.411381, 53.897785>,  <30.991604, 41.074242, 53.885014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281300, 40.411381, 53.897785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.891468, 40.421398, 53.808723>,  <30.657570, 40.427406, 53.755287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.891468, 40.421398, 53.808723>,  <31.281300, 40.411381, 53.897785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891468, 40.421398, 53.808723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147678, -0.675538, -0.722384,
		-0.168497, -0.736899, 0.654666,
		-0.974577, 0.025040, -0.222650,
		30.599094, 40.428909, 53.741928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009417, 39.723721, 53.876217>,  <31.281300, 40.411381, 53.897785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009417, 39.723721, 53.876217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.789227, 39.938187, 53.620247>,  <30.657112, 40.066868, 53.466667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.789227, 39.938187, 53.620247>,  <31.009417, 39.723721, 53.876217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789227, 39.938187, 53.620247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217279, -0.648084, -0.729916,
		-0.806081, -0.540843, 0.240257,
		-0.550476, 0.536169, -0.639921,
		30.624083, 40.099037, 53.428272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616579, 39.219498, 53.516720>,  <31.009417, 39.723721, 53.876217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616579, 39.219498, 53.516720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.556343, 39.535236, 53.278645>,  <30.520201, 39.724678, 53.135799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.556343, 39.535236, 53.278645>,  <30.616579, 39.219498, 53.516720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556343, 39.535236, 53.278645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298773, -0.537567, -0.788515,
		-0.942368, -0.296571, -0.154884,
		-0.150590, 0.789347, -0.595193,
		30.511166, 39.772041, 53.100086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113981, 39.052589, 53.010113>,  <30.616579, 39.219498, 53.516720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113981, 39.052589, 53.010113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.338902, 39.354561, 52.875118>,  <30.473854, 39.535744, 52.794121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.338902, 39.354561, 52.875118>,  <30.113981, 39.052589, 53.010113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338902, 39.354561, 52.875118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147963, -0.493390, -0.857131,
		-0.813586, 0.432031, -0.389136,
		0.562303, 0.754928, -0.337490,
		30.507593, 39.581039, 52.773872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959837, 39.032429, 52.350651>,  <30.113981, 39.052589, 53.010113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959837, 39.032429, 52.350651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.298965, 39.244244, 52.361870>,  <30.502443, 39.371334, 52.368603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.298965, 39.244244, 52.361870>,  <29.959837, 39.032429, 52.350651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298965, 39.244244, 52.361870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281557, -0.404705, -0.870023,
		-0.449357, 0.745523, -0.492213,
		0.847823, 0.529536, 0.028050,
		30.553312, 39.403103, 52.370285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101801, 39.238342, 51.707840>,  <29.959837, 39.032429, 52.350651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101801, 39.238342, 51.707840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.460676, 39.308651, 51.869907>,  <30.676001, 39.350838, 51.967148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.460676, 39.308651, 51.869907>,  <30.101801, 39.238342, 51.707840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460676, 39.308651, 51.869907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439387, -0.448019, -0.778600,
		0.044665, 0.876575, -0.479189,
		0.897187, 0.175773, 0.405166,
		30.729832, 39.361382, 51.991459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543663, 39.457886, 51.171932>,  <30.101801, 39.238342, 51.707840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543663, 39.457886, 51.171932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.797874, 39.324566, 51.450504>,  <30.950401, 39.244572, 51.617649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.797874, 39.324566, 51.450504>,  <30.543663, 39.457886, 51.171932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797874, 39.324566, 51.450504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540572, -0.451948, -0.709595,
		0.551261, 0.827437, -0.107051,
		0.635526, -0.333303, 0.696430,
		30.988533, 39.224575, 51.659435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253740, 39.675972, 50.931530>,  <30.543663, 39.457886, 51.171932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253740, 39.675972, 50.931530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.280268, 39.363556, 51.179909>,  <31.296185, 39.176105, 51.328938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.280268, 39.363556, 51.179909>,  <31.253740, 39.675972, 50.931530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280268, 39.363556, 51.179909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535703, -0.497151, -0.682542,
		0.841798, 0.377908, 0.385436,
		0.066318, -0.781042, 0.620947,
		31.300163, 39.129242, 51.366192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939928, 39.518528, 50.911499>,  <31.253740, 39.675972, 50.931530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939928, 39.518528, 50.911499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.758526, 39.198578, 51.068745>,  <31.649685, 39.006607, 51.163090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.758526, 39.198578, 51.068745>,  <31.939928, 39.518528, 50.911499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758526, 39.198578, 51.068745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390184, -0.574749, -0.719319,
		0.801303, -0.172831, 0.572750,
		-0.453508, -0.799871, 0.393112,
		31.622473, 38.958618, 51.186680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470612, 38.957787, 51.047028>,  <31.939928, 39.518528, 50.911499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470612, 38.957787, 51.047028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.116997, 38.773067, 51.018112>,  <31.904829, 38.662235, 51.000763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.116997, 38.773067, 51.018112>,  <32.470612, 38.957787, 51.047028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116997, 38.773067, 51.018112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378729, -0.617018, -0.689822,
		0.273955, -0.637204, 0.720361,
		-0.884033, -0.461801, -0.072293,
		31.851788, 38.634529, 50.996426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613335, 38.208469, 50.969360>,  <32.470612, 38.957787, 51.047028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613335, 38.208469, 50.969360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.234901, 38.221668, 50.840462>,  <32.007843, 38.229588, 50.763123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.234901, 38.221668, 50.840462>,  <32.613335, 38.208469, 50.969360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234901, 38.221668, 50.840462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236521, -0.609355, -0.756798,
		-0.221334, -0.792210, 0.568695,
		-0.946081, 0.032997, -0.322246,
		31.951077, 38.231567, 50.743790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574371, 37.567596, 50.717731>,  <32.613335, 38.208469, 50.969360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574371, 37.567596, 50.717731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.232925, 37.732677, 50.590599>,  <32.028057, 37.831726, 50.514320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.232925, 37.732677, 50.590599>,  <32.574371, 37.567596, 50.717731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232925, 37.732677, 50.590599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002804, -0.606509, -0.795072,
		-0.520893, -0.679579, 0.516569,
		-0.853618, 0.412699, -0.317832,
		31.976841, 37.856487, 50.495251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089592, 37.038757, 50.544746>,  <32.574371, 37.567596, 50.717731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089592, 37.038757, 50.544746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.997871, 37.364601, 50.331646>,  <31.942839, 37.560108, 50.203785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.997871, 37.364601, 50.331646>,  <32.089592, 37.038757, 50.544746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997871, 37.364601, 50.331646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097364, -0.563788, -0.820160,
		-0.968473, -0.136196, 0.208593,
		-0.229305, 0.814612, -0.532753,
		31.929079, 37.608986, 50.171822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498692, 36.801926, 50.114983>,  <32.089592, 37.038757, 50.544746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498692, 36.801926, 50.114983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.651043, 37.104946, 49.902927>,  <31.742455, 37.286758, 49.775696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.651043, 37.104946, 49.902927>,  <31.498692, 36.801926, 50.114983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651043, 37.104946, 49.902927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237688, -0.473865, -0.847913,
		-0.893552, 0.448960, -0.000425,
		0.380881, 0.757553, -0.530136,
		31.765306, 37.332211, 49.743885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087502, 36.902122, 49.571636>,  <31.498692, 36.801926, 50.114983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087502, 36.902122, 49.571636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.423637, 37.078213, 49.445122>,  <31.625319, 37.183865, 49.369213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.423637, 37.078213, 49.445122>,  <31.087502, 36.902122, 49.571636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423637, 37.078213, 49.445122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104940, -0.440325, -0.891685,
		-0.531809, 0.782507, -0.323825,
		0.840337, 0.440224, -0.316285,
		31.675739, 37.210281, 49.350235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871124, 37.036545, 48.956940>,  <31.087502, 36.902122, 49.571636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871124, 37.036545, 48.956940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.270721, 37.054222, 48.960083>,  <31.510479, 37.064831, 48.961967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.270721, 37.054222, 48.960083>,  <30.871124, 37.036545, 48.956940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270721, 37.054222, 48.960083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029920, -0.525058, -0.850540,
		-0.033464, 0.849918, -0.525851,
		0.998992, 0.044196, 0.007859,
		31.570419, 37.067482, 48.962440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032988, 37.313175, 48.266163>,  <30.871124, 37.036545, 48.956940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032988, 37.313175, 48.266163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.354631, 37.113701, 48.395607>,  <31.547617, 36.994019, 48.473274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.354631, 37.113701, 48.395607>,  <31.032988, 37.313175, 48.266163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354631, 37.113701, 48.395607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044750, -0.492041, -0.869421,
		0.592797, 0.713590, -0.373338,
		0.804107, -0.498683, 0.323614,
		31.595863, 36.964096, 48.492691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431290, 37.315437, 47.644855>,  <31.032988, 37.313175, 48.266163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431290, 37.315437, 47.644855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.553068, 37.014732, 47.878834>,  <31.626135, 36.834309, 48.019222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.553068, 37.014732, 47.878834>,  <31.431290, 37.315437, 47.644855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553068, 37.014732, 47.878834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089835, -0.588702, -0.803343,
		0.948284, 0.297124, -0.111694,
		0.304447, -0.751763, 0.584949,
		31.644402, 36.789204, 48.054317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898981, 36.826817, 47.218994>,  <31.431290, 37.315437, 47.644855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898981, 36.826817, 47.218994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.803549, 36.599689, 47.534122>,  <31.746288, 36.463413, 47.723198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.803549, 36.599689, 47.534122>,  <31.898981, 36.826817, 47.218994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803549, 36.599689, 47.534122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012153, -0.812931, -0.582233,
		0.971046, -0.129336, 0.200851,
		-0.238582, -0.567816, 0.787822,
		31.731974, 36.429344, 47.770470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056412, 36.181576, 46.917034>,  <31.898981, 36.826817, 47.218994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056412, 36.181576, 46.917034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.884241, 36.051517, 47.253845>,  <31.780939, 35.973484, 47.455933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.884241, 36.051517, 47.253845>,  <32.056412, 36.181576, 46.917034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884241, 36.051517, 47.253845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090619, -0.943720, -0.318089,
		0.898066, -0.060609, 0.435665,
		-0.430425, -0.325145, 0.842030,
		31.755114, 35.953976, 47.506454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460892, 35.642807, 47.368473>,  <32.056412, 36.181576, 46.917034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460892, 35.642807, 47.368473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.069275, 35.609711, 47.442913>,  <31.834305, 35.589855, 47.487579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.069275, 35.609711, 47.442913>,  <32.460892, 35.642807, 47.368473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069275, 35.609711, 47.442913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032748, -0.965827, -0.257110,
		0.201015, -0.245626, 0.948294,
		-0.979041, -0.082738, 0.186102,
		31.775562, 35.584888, 47.498745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411724, 35.166756, 47.876945>,  <32.460892, 35.642807, 47.368473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411724, 35.166756, 47.876945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.054234, 35.153397, 47.697998>,  <31.839739, 35.145382, 47.590630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.054234, 35.153397, 47.697998>,  <32.411724, 35.166756, 47.876945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054234, 35.153397, 47.697998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095021, -0.988693, -0.116008,
		-0.438432, -0.146189, 0.886796,
		-0.893727, -0.033402, -0.447365,
		31.786116, 35.143375, 47.563789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985287, 34.590755, 48.139313>,  <32.411724, 35.166756, 47.876945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985287, 34.590755, 48.139313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.798552, 34.682617, 47.797710>,  <31.686510, 34.737736, 47.592751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.798552, 34.682617, 47.797710>,  <31.985287, 34.590755, 48.139313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798552, 34.682617, 47.797710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279199, -0.954576, -0.104076,
		-0.839114, 0.189851, 0.509749,
		-0.466836, 0.229653, -0.854005,
		31.658501, 34.751514, 47.541508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315445, 34.401684, 48.326080>,  <31.985287, 34.590755, 48.139313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315445, 34.401684, 48.326080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.389320, 34.388706, 47.933174>,  <31.433645, 34.380920, 47.697430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.389320, 34.388706, 47.933174>,  <31.315445, 34.401684, 48.326080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389320, 34.388706, 47.933174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253632, -0.967173, -0.015739,
		-0.949505, 0.252039, -0.186857,
		0.184690, -0.032449, -0.982261,
		31.444727, 34.378971, 47.638496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752169, 33.900921, 48.030678>,  <31.315445, 34.401684, 48.326080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752169, 33.900921, 48.030678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.037416, 33.946106, 47.753925>,  <31.208565, 33.973217, 47.587875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.037416, 33.946106, 47.753925>,  <30.752169, 33.900921, 48.030678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037416, 33.946106, 47.753925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011303, -0.988657, -0.149767,
		-0.700949, 0.098982, -0.706309,
		0.713122, 0.112963, -0.691879,
		31.251352, 33.979996, 47.546360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657110, 33.366211, 47.489555>,  <30.752169, 33.900921, 48.030678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657110, 33.366211, 47.489555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.025234, 33.460587, 47.364746>,  <31.246109, 33.517212, 47.289860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.025234, 33.460587, 47.364746>,  <30.657110, 33.366211, 47.489555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025234, 33.460587, 47.364746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115245, -0.925764, -0.360111,
		-0.373827, 0.295455, -0.879182,
		0.920311, 0.235940, -0.312025,
		31.301327, 33.531368, 47.271137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677311, 33.112347, 46.808952>,  <30.657110, 33.366211, 47.489555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677311, 33.112347, 46.808952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.047346, 33.135868, 46.959019>,  <31.269367, 33.149982, 47.049057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.047346, 33.135868, 46.959019>,  <30.677311, 33.112347, 46.808952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047346, 33.135868, 46.959019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194297, -0.922127, -0.334559,
		0.326278, 0.382391, -0.864477,
		0.925090, 0.058806, 0.375167,
		31.324873, 33.153511, 47.071568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168722, 32.945805, 46.226749>,  <30.677311, 33.112347, 46.808952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168722, 32.945805, 46.226749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.341503, 32.881569, 46.581741>,  <31.445171, 32.843029, 46.794739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.341503, 32.881569, 46.581741>,  <31.168722, 32.945805, 46.226749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341503, 32.881569, 46.581741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235421, -0.929829, -0.282835,
		0.870629, 0.331103, -0.363835,
		0.431952, -0.160589, 0.887484,
		31.471088, 32.833393, 46.847988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780756, 32.611992, 46.046574>,  <31.168722, 32.945805, 46.226749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780756, 32.611992, 46.046574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.686043, 32.556862, 46.431267>,  <31.629215, 32.523785, 46.662083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.686043, 32.556862, 46.431267>,  <31.780756, 32.611992, 46.046574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686043, 32.556862, 46.431267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253968, -0.964249, -0.075661,
		0.937782, 0.226336, 0.263320,
		-0.236782, -0.137828, 0.961737,
		31.615007, 32.515514, 46.719788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384563, 32.425114, 46.463570>,  <31.780756, 32.611992, 46.046574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384563, 32.425114, 46.463570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.046837, 32.295513, 46.634289>,  <31.844202, 32.217754, 46.736721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.046837, 32.295513, 46.634289>,  <32.384563, 32.425114, 46.463570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046837, 32.295513, 46.634289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347180, -0.937469, -0.024857,
		0.408165, 0.127188, 0.904005,
		-0.844315, -0.323998, 0.426799,
		31.793543, 32.198315, 46.762329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595779, 32.105995, 47.110840>,  <32.384563, 32.425114, 46.463570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595779, 32.105995, 47.110840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.244831, 31.979731, 46.966297>,  <32.034264, 31.903971, 46.879574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.244831, 31.979731, 46.966297>,  <32.595779, 32.105995, 47.110840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244831, 31.979731, 46.966297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373169, -0.922320, -0.100353,
		-0.301604, -0.222893, 0.927014,
		-0.877371, -0.315666, -0.361352,
		31.981619, 31.885031, 46.857891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840271, 31.549587, 47.639942>,  <32.595779, 32.105995, 47.110840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840271, 31.549587, 47.639942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.876217, 31.336182, 47.303539>,  <32.897785, 31.208139, 47.101700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.876217, 31.336182, 47.303539>,  <32.840271, 31.549587, 47.639942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876217, 31.336182, 47.303539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957039, -0.187483, 0.221194,
		-0.275684, -0.824751, 0.493744,
		0.089861, -0.533512, -0.841005,
		32.903175, 31.176128, 47.051239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259083, 31.014090, 47.810848>,  <32.840271, 31.549587, 47.639942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259083, 31.014090, 47.810848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.293892, 31.063524, 47.415443>,  <33.314777, 31.093185, 47.178200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.293892, 31.063524, 47.415443>,  <33.259083, 31.014090, 47.810848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293892, 31.063524, 47.415443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995647, 0.022440, 0.090461,
		0.033362, -0.992080, -0.121095,
		0.087027, 0.123586, -0.988510,
		33.320000, 31.100599, 47.118889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609966, 30.486109, 47.486546>,  <33.259083, 31.014090, 47.810848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609966, 30.486109, 47.486546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.661423, 30.800131, 47.244179>,  <33.692299, 30.988544, 47.098759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.661423, 30.800131, 47.244179>,  <33.609966, 30.486109, 47.486546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661423, 30.800131, 47.244179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988171, -0.050046, 0.144961,
		0.083479, -0.617400, -0.782207,
		0.128645, 0.785056, -0.605919,
		33.700016, 31.035648, 47.062405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148228, 30.296631, 46.981762>,  <33.609966, 30.486109, 47.486546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148228, 30.296631, 46.981762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130020, 30.696209, 46.979321>,  <34.119095, 30.935955, 46.977856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130020, 30.696209, 46.979321>,  <34.148228, 30.296631, 46.981762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130020, 30.696209, 46.979321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997023, 0.045814, 0.062028,
		0.062243, -0.003263, -0.998056,
		-0.045523, 0.998945, -0.006105,
		34.116364, 30.995892, 46.977489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506401, 30.631523, 46.366501>,  <34.148228, 30.296631, 46.981762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506401, 30.631523, 46.366501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.515907, 30.861166, 46.693874>,  <34.521610, 30.998951, 46.890301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.515907, 30.861166, 46.693874>,  <34.506401, 30.631523, 46.366501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515907, 30.861166, 46.693874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997400, -0.069326, 0.019669,
		0.068031, 0.815841, -0.574261,
		0.023764, 0.574106, 0.818436,
		34.523037, 31.033398, 46.939404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052856, 31.115046, 46.263412>,  <34.506401, 30.631523, 46.366501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052856, 31.115046, 46.263412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.012314, 31.117146, 46.661346>,  <34.987988, 31.118404, 46.900108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.012314, 31.117146, 46.661346>,  <35.052856, 31.115046, 46.263412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012314, 31.117146, 46.661346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994836, 0.005844, 0.101326,
		-0.005283, 0.999969, -0.005813,
		-0.101357, 0.005248, 0.994836,
		34.981907, 31.118719, 46.959797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477322, 31.574085, 46.425205>,  <35.052856, 31.115046, 46.263412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477322, 31.574085, 46.425205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.419285, 31.371412, 46.765141>,  <35.384464, 31.249807, 46.969101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.419285, 31.371412, 46.765141>,  <35.477322, 31.574085, 46.425205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419285, 31.371412, 46.765141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923482, 0.238957, 0.300136,
		-0.355148, 0.828355, 0.433242,
		-0.145092, -0.506683, 0.849835,
		35.375755, 31.219408, 47.020092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717194, 32.060207, 46.960678>,  <35.477322, 31.574085, 46.425205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717194, 32.060207, 46.960678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.712517, 31.696144, 47.126312>,  <35.709709, 31.477705, 47.225693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.712517, 31.696144, 47.126312>,  <35.717194, 32.060207, 46.960678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712517, 31.696144, 47.126312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875899, 0.190439, 0.443322,
		-0.482353, 0.367885, 0.794982,
		-0.011696, -0.910161, 0.414089,
		35.709007, 31.423096, 47.250538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875336, 32.215519, 47.634007>,  <35.717194, 32.060207, 46.960678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875336, 32.215519, 47.634007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.943264, 31.825817, 47.574696>,  <35.984020, 31.591995, 47.539108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.943264, 31.825817, 47.574696>,  <35.875336, 32.215519, 47.634007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943264, 31.825817, 47.574696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960328, 0.129829, 0.246809,
		-0.221204, -0.184312, 0.957652,
		0.169821, -0.974255, -0.148282,
		35.994209, 31.533541, 47.530212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069675, 31.920317, 48.268772>,  <35.875336, 32.215519, 47.634007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069675, 31.920317, 48.268772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.232136, 31.682337, 47.991333>,  <36.329613, 31.539549, 47.824871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.232136, 31.682337, 47.991333>,  <36.069675, 31.920317, 48.268772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232136, 31.682337, 47.991333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913468, 0.243647, 0.325903,
		-0.024903, -0.765945, 0.642423,
		0.406148, -0.594949, -0.693599,
		36.353981, 31.503853, 47.783253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584896, 31.553572, 48.588909>,  <36.069675, 31.920317, 48.268772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584896, 31.553572, 48.588909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.699821, 31.506147, 48.208721>,  <36.768776, 31.477692, 47.980610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.699821, 31.506147, 48.208721>,  <36.584896, 31.553572, 48.588909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699821, 31.506147, 48.208721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953660, 0.127977, 0.272312,
		0.089352, -0.984665, 0.149838,
		0.287312, -0.118563, -0.950471,
		36.786015, 31.470579, 47.923580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201050, 31.168280, 48.578758>,  <36.584896, 31.553572, 48.588909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201050, 31.168280, 48.578758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.233978, 31.307573, 48.205242>,  <37.253735, 31.391150, 47.981133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.233978, 31.307573, 48.205242>,  <37.201050, 31.168280, 48.578758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233978, 31.307573, 48.205242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995103, -0.080160, 0.057834,
		-0.054712, -0.933974, -0.353127,
		0.082322, 0.348233, -0.933786,
		37.258675, 31.412043, 47.925106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779102, 30.796810, 48.312347>,  <37.201050, 31.168280, 48.578758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779102, 30.796810, 48.312347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.749878, 31.110405, 48.065762>,  <37.732346, 31.298563, 47.917812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.749878, 31.110405, 48.065762>,  <37.779102, 30.796810, 48.312347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749878, 31.110405, 48.065762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995080, 0.015826, -0.097802,
		-0.066919, -0.620574, -0.781287,
		-0.073058, 0.783988, -0.616462,
		37.727959, 31.345602, 47.880821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285255, 30.554247, 47.804771>,  <37.779102, 30.796810, 48.312347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285255, 30.554247, 47.804771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214989, 30.947363, 47.781910>,  <38.172829, 31.183233, 47.768192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214989, 30.947363, 47.781910>,  <38.285255, 30.554247, 47.804771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214989, 30.947363, 47.781910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984356, 0.176155, 0.003623,
		0.013629, -0.055627, -0.998358,
		-0.175665, 0.982789, -0.057158,
		38.162289, 31.242199, 47.764763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541889, 30.795000, 47.198219>,  <38.285255, 30.554247, 47.804771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541889, 30.795000, 47.198219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.535717, 31.088217, 47.470222>,  <38.532013, 31.264147, 47.633423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.535717, 31.088217, 47.470222>,  <38.541889, 30.795000, 47.198219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535717, 31.088217, 47.470222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997971, 0.053305, -0.034820,
		-0.061773, 0.678090, -0.732378,
		-0.015429, 0.733043, 0.680007,
		38.531090, 31.308130, 47.674225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147621, 31.235014, 47.218559>,  <38.541889, 30.795000, 47.198219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147621, 31.235014, 47.218559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.021034, 31.490387, 47.499203>,  <38.945084, 31.643612, 47.667587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.021034, 31.490387, 47.499203>,  <39.147621, 31.235014, 47.218559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021034, 31.490387, 47.499203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819398, 0.556633, -0.136918,
		-0.477950, 0.531565, -0.699287,
		-0.316466, 0.638434, 0.701606,
		38.926094, 31.681917, 47.709686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122105, 31.998739, 46.969231>,  <39.147621, 31.235014, 47.218559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122105, 31.998739, 46.969231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.200745, 31.952154, 47.358646>,  <39.247929, 31.924202, 47.592297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.200745, 31.952154, 47.358646>,  <39.122105, 31.998739, 46.969231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200745, 31.952154, 47.358646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841207, 0.530130, -0.106459,
		-0.503705, 0.839880, 0.202195,
		0.196602, -0.116464, 0.973542,
		39.259724, 31.917215, 47.650707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588497, 32.295364, 46.426449>,  <39.122105, 31.998739, 46.969231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588497, 32.295364, 46.426449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.417923, 32.654739, 46.384556>,  <39.315578, 32.870365, 46.359421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.417923, 32.654739, 46.384556>,  <39.588497, 32.295364, 46.426449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417923, 32.654739, 46.384556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793143, 0.427078, 0.434199,
		0.434830, 0.102087, -0.894707,
		-0.426436, 0.898434, -0.104737,
		39.289993, 32.924271, 46.353134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131752, 32.761211, 46.359035>,  <39.588497, 32.295364, 46.426449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131752, 32.761211, 46.359035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.817635, 32.967396, 46.496212>,  <39.629162, 33.091106, 46.578518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.817635, 32.967396, 46.496212>,  <40.131752, 32.761211, 46.359035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817635, 32.967396, 46.496212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612258, 0.564341, 0.553768,
		0.091906, 0.644844, -0.758769,
		-0.785298, 0.515457, 0.342945,
		39.582047, 33.122032, 46.599094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635345, 32.525658, 45.768620>,  <40.131752, 32.761211, 46.359035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635345, 32.525658, 45.768620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.502445, 32.405704, 45.410919>,  <40.422703, 32.333733, 45.196301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.502445, 32.405704, 45.410919>,  <40.635345, 32.525658, 45.768620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502445, 32.405704, 45.410919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752032, -0.656456, -0.059275,
		-0.569258, -0.692196, 0.443632,
		-0.332255, -0.299883, -0.894247,
		40.402767, 32.315739, 45.142647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596298, 31.673620, 45.635632>,  <40.635345, 32.525658, 45.768620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596298, 31.673620, 45.635632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.628479, 31.846100, 45.276165>,  <40.647789, 31.949587, 45.060486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.628479, 31.846100, 45.276165>,  <40.596298, 31.673620, 45.635632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628479, 31.846100, 45.276165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716615, -0.651686, -0.248535,
		-0.692814, -0.623999, -0.361433,
		0.080455, 0.431197, -0.898664,
		40.652615, 31.975458, 45.006565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031906, 31.165516, 45.284325>,  <40.596298, 31.673620, 45.635632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031906, 31.165516, 45.284325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.978661, 31.427937, 44.987171>,  <40.946712, 31.585388, 44.808880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.978661, 31.427937, 44.987171>,  <41.031906, 31.165516, 45.284325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978661, 31.427937, 44.987171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613892, -0.533875, -0.581475,
		-0.778085, -0.533454, -0.331678,
		-0.133116, 0.656052, -0.742884,
		40.938725, 31.624752, 44.764305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956638, 30.819096, 44.541363>,  <41.031906, 31.165516, 45.284325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956638, 30.819096, 44.541363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.101318, 31.189463, 44.497822>,  <41.188126, 31.411682, 44.471695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.101318, 31.189463, 44.497822>,  <40.956638, 30.819096, 44.541363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101318, 31.189463, 44.497822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752307, -0.358835, -0.552514,
		-0.550643, 0.117951, -0.826365,
		0.361699, 0.925918, -0.108855,
		41.209827, 31.467237, 44.465164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976692, 30.847244, 43.797539>,  <40.956638, 30.819096, 44.541363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976692, 30.847244, 43.797539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.239868, 31.059593, 44.011189>,  <41.397774, 31.187002, 44.139378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.239868, 31.059593, 44.011189>,  <40.976692, 30.847244, 43.797539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239868, 31.059593, 44.011189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745685, -0.360150, -0.560576,
		-0.105229, 0.767115, -0.632820,
		0.657936, 0.530873, 0.534129,
		41.437248, 31.218855, 44.171429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346767, 31.423292, 43.380203>,  <40.976692, 30.847244, 43.797539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346767, 31.423292, 43.380203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.588989, 31.306219, 43.676212>,  <41.734322, 31.235975, 43.853817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.588989, 31.306219, 43.676212>,  <41.346767, 31.423292, 43.380203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588989, 31.306219, 43.676212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735795, -0.148332, -0.660760,
		0.303161, 0.944635, 0.125530,
		0.605557, -0.292681, 0.740026,
		41.770657, 31.218414, 43.898220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846207, 31.982546, 43.493000>,  <41.346767, 31.423292, 43.380203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846207, 31.982546, 43.493000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.955513, 31.610563, 43.591393>,  <42.021099, 31.387373, 43.650429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.955513, 31.610563, 43.591393>,  <41.846207, 31.982546, 43.493000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955513, 31.610563, 43.591393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707108, 0.020833, -0.706799,
		0.652167, 0.367080, 0.663273,
		0.273270, -0.929956, 0.245978,
		42.037495, 31.331577, 43.665184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562172, 31.998596, 43.742867>,  <41.846207, 31.982546, 43.493000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562172, 31.998596, 43.742867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.422047, 31.697817, 43.519489>,  <42.337971, 31.517349, 43.385464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.422047, 31.697817, 43.519489>,  <42.562172, 31.998596, 43.742867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422047, 31.697817, 43.519489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625439, 0.256020, -0.737075,
		0.697213, -0.607478, 0.380610,
		-0.350313, -0.751947, -0.558441,
		42.316952, 31.472233, 43.351955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108585, 31.656658, 43.541565>,  <42.562172, 31.998596, 43.742867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108585, 31.656658, 43.541565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.809639, 31.588213, 43.284763>,  <42.630272, 31.547146, 43.130684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.809639, 31.588213, 43.284763>,  <43.108585, 31.656658, 43.541565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809639, 31.588213, 43.284763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539474, 0.407746, -0.736689,
		0.387831, -0.896919, -0.212424,
		-0.747365, -0.171113, -0.642001,
		42.585430, 31.536880, 43.092163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318691, 31.282417, 42.915703>,  <43.108585, 31.656658, 43.541565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318691, 31.282417, 42.915703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.018250, 31.537128, 42.846012>,  <42.837986, 31.689955, 42.804199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.018250, 31.537128, 42.846012>,  <43.318691, 31.282417, 42.915703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018250, 31.537128, 42.846012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519482, 0.407215, -0.751209,
		-0.407408, -0.654743, -0.636656,
		-0.751105, 0.636780, -0.174225,
		42.792919, 31.728163, 42.793743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131458, 31.239035, 42.237087>,  <43.318691, 31.282417, 42.915703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131458, 31.239035, 42.237087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.092533, 31.609665, 42.382408>,  <43.069180, 31.832043, 42.469601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.092533, 31.609665, 42.382408>,  <43.131458, 31.239035, 42.237087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.092533, 31.609665, 42.382408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543611, 0.355260, -0.760446,
		-0.833677, 0.123497, -0.538266,
		-0.097311, 0.926574, 0.363306,
		43.063339, 31.887636, 42.491402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846283, 31.714598, 41.724648>,  <43.131458, 31.239035, 42.237087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846283, 31.714598, 41.724648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.084213, 31.897705, 41.988960>,  <43.226971, 32.007568, 42.147549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.084213, 31.897705, 41.988960>,  <42.846283, 31.714598, 41.724648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084213, 31.897705, 41.988960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550533, 0.366990, -0.749821,
		-0.585744, 0.809794, -0.033722,
		0.594825, 0.457769, 0.660780,
		43.262661, 32.035034, 42.187195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785110, 32.437401, 41.742653>,  <42.846283, 31.714598, 41.724648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785110, 32.437401, 41.742653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.162098, 32.314968, 41.796417>,  <43.388290, 32.241508, 41.828678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.162098, 32.314968, 41.796417>,  <42.785110, 32.437401, 41.742653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162098, 32.314968, 41.796417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283635, 0.519342, -0.806124,
		0.176933, 0.797871, 0.576279,
		0.942468, -0.306083, 0.134415,
		43.444839, 32.223145, 41.836742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122585, 33.120708, 41.511036>,  <42.785110, 32.437401, 41.742653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122585, 33.120708, 41.511036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.344986, 32.790798, 41.469826>,  <43.478428, 32.592854, 41.445099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.344986, 32.790798, 41.469826>,  <43.122585, 33.120708, 41.511036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344986, 32.790798, 41.469826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374037, 0.358967, -0.855125,
		0.742266, 0.436916, 0.508081,
		0.556002, -0.824771, -0.103026,
		43.511787, 32.543365, 41.438919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925823, 33.268677, 41.478870>,  <43.122585, 33.120708, 41.511036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925823, 33.268677, 41.478870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.756725, 32.968685, 41.275375>,  <43.655266, 32.788689, 41.153278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.756725, 32.968685, 41.275375>,  <43.925823, 33.268677, 41.478870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756725, 32.968685, 41.275375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232917, 0.452592, -0.860761,
		0.875804, -0.482379, -0.016650,
		-0.422749, -0.749980, -0.508736,
		43.629902, 32.743690, 41.122753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419262, 32.776489, 40.980930>,  <43.925823, 33.268677, 41.478870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419262, 32.776489, 40.980930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.040363, 32.870796, 40.894077>,  <43.813026, 32.927380, 40.841965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.040363, 32.870796, 40.894077>,  <44.419262, 32.776489, 40.980930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040363, 32.870796, 40.894077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309073, 0.492466, -0.813604,
		-0.084887, -0.837791, -0.539352,
		-0.947242, 0.235763, -0.217134,
		43.756191, 32.941525, 40.828938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.223034, 32.542976, 40.291012>,  <44.419262, 32.776489, 40.980930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.223034, 32.542976, 40.291012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.045300, 32.886612, 40.392628>,  <43.938660, 33.092793, 40.453598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.045300, 32.886612, 40.392628>,  <44.223034, 32.542976, 40.291012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.045300, 32.886612, 40.392628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224783, 0.381410, -0.896660,
		-0.867203, -0.341312, -0.362581,
		-0.444333, 0.859089, 0.254039,
		43.911999, 33.144337, 40.468838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779675, 32.618576, 39.823116>,  <44.223034, 32.542976, 40.291012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779675, 32.618576, 39.823116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.875736, 32.982567, 39.958336>,  <43.933372, 33.200962, 40.039467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.875736, 32.982567, 39.958336>,  <43.779675, 32.618576, 39.823116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875736, 32.982567, 39.958336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166086, 0.304586, -0.937892,
		-0.956422, 0.281382, -0.077987,
		0.240152, 0.909973, 0.338046,
		43.947781, 33.255558, 40.059750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391277, 33.132278, 39.459114>,  <43.779675, 32.618576, 39.823116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391277, 33.132278, 39.459114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.742119, 33.256607, 39.605579>,  <43.952625, 33.331203, 39.693459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.742119, 33.256607, 39.605579>,  <43.391277, 33.132278, 39.459114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742119, 33.256607, 39.605579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268978, 0.313732, -0.910617,
		-0.397918, 0.897197, 0.191571,
		0.877105, 0.310822, 0.366165,
		44.005249, 33.349854, 39.715427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450119, 33.171719, 38.650581>,  <43.391277, 33.132278, 39.459114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450119, 33.171719, 38.650581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.654484, 33.258507, 38.317860>,  <43.777103, 33.310581, 38.118229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.654484, 33.258507, 38.317860>,  <43.450119, 33.171719, 38.650581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654484, 33.258507, 38.317860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831948, 0.118797, 0.541987,
		0.216413, -0.968921, -0.119817,
		0.510909, 0.216975, -0.831802,
		43.807758, 33.323601, 38.068317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030727, 32.639641, 38.466499>,  <43.450119, 33.171719, 38.650581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030727, 32.639641, 38.466499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.099529, 33.015820, 38.349213>,  <44.140812, 33.241528, 38.278839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.099529, 33.015820, 38.349213>,  <44.030727, 32.639641, 38.466499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.099529, 33.015820, 38.349213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891093, -0.021643, 0.453304,
		0.419961, -0.339256, -0.841747,
		0.172004, 0.940445, -0.293220,
		44.151131, 33.297955, 38.261246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.607967, 32.663666, 37.941547>,  <44.030727, 32.639641, 38.466499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.607967, 32.663666, 37.941547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.569061, 33.001884, 38.151531>,  <44.545719, 33.204815, 38.277523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.569061, 33.001884, 38.151531>,  <44.607967, 32.663666, 37.941547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569061, 33.001884, 38.151531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938435, -0.097763, 0.331333,
		0.331480, 0.524870, -0.783985,
		-0.097262, 0.845550, 0.524963,
		44.539883, 33.255550, 38.309021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.162052, 33.175373, 37.815125>,  <44.607967, 32.663666, 37.941547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.162052, 33.175373, 37.815125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.014271, 33.211643, 38.185051>,  <44.925602, 33.233406, 38.407005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.014271, 33.211643, 38.185051>,  <45.162052, 33.175373, 37.815125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014271, 33.211643, 38.185051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928410, -0.006225, 0.371504,
		0.039444, 0.995861, -0.081887,
		-0.369457, 0.090679, 0.924813,
		44.903435, 33.238846, 38.462494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.631893, 33.597244, 38.261471>,  <45.162052, 33.175373, 37.815125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.631893, 33.597244, 38.261471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.415524, 33.363510, 38.503448>,  <45.285702, 33.223270, 38.648636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.415524, 33.363510, 38.503448>,  <45.631893, 33.597244, 38.261471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.415524, 33.363510, 38.503448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787012, -0.097946, 0.609113,
		-0.296676, 0.805577, 0.512863,
		-0.540921, -0.584338, 0.604941,
		45.253246, 33.188210, 38.684929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248653, 34.224033, 38.127602>,  <45.631893, 33.597244, 38.261471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248653, 34.224033, 38.127602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.937206, 34.368332, 37.922226>,  <44.750336, 34.454910, 37.799000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.937206, 34.368332, 37.922226>,  <45.248653, 34.224033, 38.127602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937206, 34.368332, 37.922226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459245, 0.885180, -0.074509,
		0.427603, -0.293806, -0.854888,
		-0.778620, 0.360743, -0.513435,
		44.703621, 34.476555, 37.768196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.449959, 34.511883, 37.471653>,  <45.248653, 34.224033, 38.127602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.449959, 34.511883, 37.471653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.150154, 34.681641, 37.674877>,  <44.970272, 34.783497, 37.796810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.150154, 34.681641, 37.674877>,  <45.449959, 34.511883, 37.471653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.150154, 34.681641, 37.674877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442862, 0.891889, -0.091689,
		-0.492047, 0.156280, -0.856426,
		-0.749509, 0.424394, 0.508062,
		44.925301, 34.808960, 37.827297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.057575, 35.121288, 37.167809>,  <45.449959, 34.511883, 37.471653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.057575, 35.121288, 37.167809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.141266, 35.197681, 37.551422>,  <45.191479, 35.243519, 37.781590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.141266, 35.197681, 37.551422>,  <45.057575, 35.121288, 37.167809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141266, 35.197681, 37.551422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462247, 0.844932, -0.269105,
		-0.861714, 0.499616, 0.088500,
		0.209226, 0.190983, 0.959036,
		45.204033, 35.254978, 37.839134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849030, 35.816162, 37.282848>,  <45.057575, 35.121288, 37.167809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849030, 35.816162, 37.282848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.162533, 35.681011, 37.491291>,  <45.350636, 35.599918, 37.616356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.162533, 35.681011, 37.491291>,  <44.849030, 35.816162, 37.282848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162533, 35.681011, 37.491291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529862, 0.801484, -0.277253,
		-0.323982, 0.493416, 0.807203,
		0.783761, -0.337882, 0.521109,
		45.397659, 35.579647, 37.647625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251266, 36.382675, 37.576603>,  <44.849030, 35.816162, 37.282848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.251266, 36.382675, 37.576603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.484985, 36.060001, 37.541153>,  <45.625217, 35.866398, 37.519882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.484985, 36.060001, 37.541153>,  <45.251266, 36.382675, 37.576603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484985, 36.060001, 37.541153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734337, 0.572035, -0.365411,
		0.345466, 0.148431, 0.926618,
		0.584296, -0.806687, -0.088620,
		45.660275, 35.817997, 37.514568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.831585, 36.659889, 37.795631>,  <45.251266, 36.382675, 37.576603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.831585, 36.659889, 37.795631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.920017, 36.336830, 37.576969>,  <45.973076, 36.142994, 37.445770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.920017, 36.336830, 37.576969>,  <45.831585, 36.659889, 37.795631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920017, 36.336830, 37.576969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851836, 0.432846, -0.294990,
		0.474865, -0.400446, 0.783675,
		0.221083, -0.807643, -0.546658,
		45.986343, 36.094536, 37.412971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.490768, 36.274731, 37.930080>,  <45.831585, 36.659889, 37.795631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.490768, 36.274731, 37.930080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.407658, 36.230255, 37.541348>,  <46.357792, 36.203568, 37.308105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.407658, 36.230255, 37.541348>,  <46.490768, 36.274731, 37.930080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.407658, 36.230255, 37.541348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838598, 0.491220, -0.235491,
		0.503570, -0.863909, -0.008819,
		-0.207775, -0.111191, -0.971837,
		46.345325, 36.196899, 37.249798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.116650, 36.178867, 37.553120>,  <46.490768, 36.274731, 37.930080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.116650, 36.178867, 37.553120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.844948, 36.313557, 37.292278>,  <46.681927, 36.394371, 37.135773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.844948, 36.313557, 37.292278>,  <47.116650, 36.178867, 37.553120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.844948, 36.313557, 37.292278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693607, 0.584911, -0.420462,
		0.239841, -0.737900, -0.630856,
		-0.679254, 0.336722, -0.652099,
		46.641171, 36.414574, 37.096649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.337807, 36.203941, 36.852493>,  <47.116650, 36.178867, 37.553120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.337807, 36.203941, 36.852493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.068779, 36.498299, 36.883785>,  <46.907364, 36.674911, 36.902561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.068779, 36.498299, 36.883785>,  <47.337807, 36.203941, 36.852493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.068779, 36.498299, 36.883785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645565, 0.635103, -0.424134,
		-0.361803, -0.234753, -0.902214,
		-0.672565, 0.735891, 0.078234,
		46.867008, 36.719067, 36.907257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.403576, 36.606022, 36.290340>,  <47.337807, 36.203941, 36.852493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.403576, 36.606022, 36.290340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.235527, 36.853577, 36.555813>,  <47.134697, 37.002110, 36.715096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.235527, 36.853577, 36.555813>,  <47.403576, 36.606022, 36.290340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.235527, 36.853577, 36.555813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572248, 0.748292, -0.335548,
		-0.704297, 0.238822, -0.668529,
		-0.420118, 0.618889, 0.663685,
		47.109493, 37.039242, 36.754917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.078339, 36.369133, 35.627907>,  <47.403576, 36.606022, 36.290340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.078339, 36.369133, 35.627907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.233810, 36.416676, 35.262436>,  <47.327095, 36.445202, 35.043156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.233810, 36.416676, 35.262436>,  <47.078339, 36.369133, 35.627907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.233810, 36.416676, 35.262436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307316, -0.951582, 0.006943,
		-0.868610, -0.283485, -0.406391,
		0.388683, 0.118860, -0.913673,
		47.350414, 36.452332, 34.988335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719460, 35.835056, 35.093521>,  <47.078339, 36.369133, 35.627907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719460, 35.835056, 35.093521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.102795, 35.941719, 35.134491>,  <47.332794, 36.005718, 35.159073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.102795, 35.941719, 35.134491>,  <46.719460, 35.835056, 35.093521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.102795, 35.941719, 35.134491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229782, -0.932650, 0.278145,
		0.169692, -0.243021, -0.955063,
		0.958334, 0.266656, 0.102422,
		47.390293, 36.021717, 35.165218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.179707, 35.331882, 34.637722>,  <46.719460, 35.835056, 35.093521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.179707, 35.331882, 34.637722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.378021, 35.493561, 34.945183>,  <47.497009, 35.590569, 35.129658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.378021, 35.493561, 34.945183>,  <47.179707, 35.331882, 34.637722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.378021, 35.493561, 34.945183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409828, -0.889229, 0.203254,
		0.765660, 0.214244, -0.606519,
		0.495788, 0.404192, 0.768650,
		47.526756, 35.614819, 35.175777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.905430, 35.217712, 34.638138>,  <47.179707, 35.331882, 34.637722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.905430, 35.217712, 34.638138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.790516, 35.251076, 35.019821>,  <47.721569, 35.271095, 35.248829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.790516, 35.251076, 35.019821>,  <47.905430, 35.217712, 34.638138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.790516, 35.251076, 35.019821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344601, -0.920497, 0.184216,
		0.893710, 0.381743, 0.235700,
		-0.287285, 0.083413, 0.954206,
		47.704330, 35.276100, 35.306084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.333418, 35.929295, 55.240292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.645403, 35.992504, 55.482510>,  <31.832594, 36.030430, 55.627842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.645403, 35.992504, 55.482510>,  <31.333418, 35.929295, 55.240292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645403, 35.992504, 55.482510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623759, -0.117768, -0.772694,
		-0.050792, 0.980387, -0.190424,
		0.779965, 0.158025, 0.605543,
		31.879393, 36.039913, 55.664173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741341, 36.203255, 54.775322>,  <31.333418, 35.929295, 55.240292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741341, 36.203255, 54.775322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.991339, 36.163403, 55.085018>,  <32.141338, 36.139492, 55.270836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.991339, 36.163403, 55.085018>,  <31.741341, 36.203255, 54.775322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991339, 36.163403, 55.085018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757274, -0.163413, -0.632323,
		0.189520, 0.981514, -0.026685,
		0.624995, -0.099630, 0.774245,
		32.178837, 36.133514, 55.317291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326679, 36.702133, 54.698223>,  <31.741341, 36.203255, 54.775322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326679, 36.702133, 54.698223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.471718, 36.414696, 54.935593>,  <32.558739, 36.242233, 55.078014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.471718, 36.414696, 54.935593>,  <32.326679, 36.702133, 54.698223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471718, 36.414696, 54.935593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782104, -0.111642, -0.613065,
		0.506794, 0.686415, 0.521531,
		0.362592, -0.718590, 0.593428,
		32.580494, 36.199120, 55.113621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130459, 36.766083, 54.727863>,  <32.326679, 36.702133, 54.698223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130459, 36.766083, 54.727863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.032108, 36.397415, 54.847904>,  <32.973099, 36.176212, 54.919930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.032108, 36.397415, 54.847904>,  <33.130459, 36.766083, 54.727863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032108, 36.397415, 54.847904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731338, -0.379597, -0.566614,
		0.636151, 0.080157, 0.767390,
		-0.245881, -0.921673, 0.300103,
		32.958344, 36.120914, 54.937935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711716, 36.415264, 54.909172>,  <33.130459, 36.766083, 54.727863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711716, 36.415264, 54.909172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.459785, 36.124176, 54.800556>,  <33.308628, 35.949524, 54.735386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.459785, 36.124176, 54.800556>,  <33.711716, 36.415264, 54.909172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459785, 36.124176, 54.800556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701334, -0.382558, -0.601481,
		0.333834, -0.569268, 0.751325,
		-0.629829, -0.727725, -0.271536,
		33.270836, 35.905857, 54.719097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147976, 35.851292, 54.771198>,  <33.711716, 36.415264, 54.909172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147976, 35.851292, 54.771198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.801010, 35.779194, 54.585682>,  <33.592831, 35.735935, 54.474373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.801010, 35.779194, 54.585682>,  <34.147976, 35.851292, 54.771198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801010, 35.779194, 54.585682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497207, -0.350036, -0.793890,
		-0.019251, -0.919232, 0.393244,
		-0.867419, -0.180240, -0.463787,
		33.540783, 35.725121, 54.446545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334717, 35.231613, 54.445522>,  <34.147976, 35.851292, 54.771198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334717, 35.231613, 54.445522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.998734, 35.290943, 54.236725>,  <33.797146, 35.326542, 54.111446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.998734, 35.290943, 54.236725>,  <34.334717, 35.231613, 54.445522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998734, 35.290943, 54.236725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319047, -0.643120, -0.696136,
		-0.438960, -0.751263, 0.492868,
		-0.839954, 0.148328, -0.521991,
		33.746746, 35.335442, 54.080128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045460, 34.627258, 54.355686>,  <34.334717, 35.231613, 54.445522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045460, 34.627258, 54.355686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.890980, 34.830814, 54.047951>,  <33.798290, 34.952946, 53.863308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.890980, 34.830814, 54.047951>,  <34.045460, 34.627258, 54.355686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890980, 34.830814, 54.047951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309875, -0.714002, -0.627836,
		-0.868808, -0.480869, 0.118057,
		-0.386200, 0.508887, -0.769340,
		33.775120, 34.983479, 53.817150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554195, 34.136227, 53.965897>,  <34.045460, 34.627258, 54.355686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554195, 34.136227, 53.965897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.667271, 34.413479, 53.700668>,  <33.735115, 34.579830, 53.541531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.667271, 34.413479, 53.700668>,  <33.554195, 34.136227, 53.965897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667271, 34.413479, 53.700668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170106, -0.716534, -0.676493,
		-0.944008, 0.078444, -0.320461,
		0.282688, 0.693127, -0.663070,
		33.752079, 34.621418, 53.501747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093849, 34.070053, 53.316914>,  <33.554195, 34.136227, 53.965897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093849, 34.070053, 53.316914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.422527, 34.258274, 53.188293>,  <33.619736, 34.371204, 53.111122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.422527, 34.258274, 53.188293>,  <33.093849, 34.070053, 53.316914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422527, 34.258274, 53.188293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149363, -0.722278, -0.675281,
		-0.550001, 0.506851, -0.663778,
		0.821699, 0.470549, -0.321549,
		33.669037, 34.399441, 53.091827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993507, 34.033669, 52.634083>,  <33.093849, 34.070053, 53.316914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993507, 34.033669, 52.634083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.384964, 34.098289, 52.684940>,  <33.619839, 34.137062, 52.715454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.384964, 34.098289, 52.684940>,  <32.993507, 34.033669, 52.634083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384964, 34.098289, 52.684940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205121, -0.725684, -0.656741,
		-0.013834, 0.668792, -0.743321,
		0.978639, 0.161556, 0.127144,
		33.678555, 34.146755, 52.723083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265038, 34.099674, 51.950024>,  <32.993507, 34.033669, 52.634083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265038, 34.099674, 51.950024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.574200, 34.020912, 52.191303>,  <33.759697, 33.973656, 52.336071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.574200, 34.020912, 52.191303>,  <33.265038, 34.099674, 51.950024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574200, 34.020912, 52.191303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259365, -0.769554, -0.583538,
		0.579096, 0.607467, -0.543720,
		0.772902, -0.196903, 0.603202,
		33.806068, 33.961842, 52.372265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797794, 33.948322, 51.484589>,  <33.265038, 34.099674, 51.950024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797794, 33.948322, 51.484589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.924648, 33.794956, 51.831558>,  <34.000759, 33.702938, 52.039738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.924648, 33.794956, 51.831558>,  <33.797794, 33.948322, 51.484589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924648, 33.794956, 51.831558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193953, -0.869083, -0.455058,
		0.928336, 0.312553, -0.201251,
		0.317133, -0.383413, 0.867422,
		34.019787, 33.679932, 52.091785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292969, 33.610970, 51.363422>,  <33.797794, 33.948322, 51.484589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292969, 33.610970, 51.363422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.256676, 33.429722, 51.718151>,  <34.234898, 33.320972, 51.930988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.256676, 33.429722, 51.718151>,  <34.292969, 33.610970, 51.363422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256676, 33.429722, 51.718151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071274, -0.891165, -0.448046,
		0.993321, 0.022553, 0.113157,
		-0.090737, -0.453118, 0.886821,
		34.229454, 33.293785, 51.984196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829453, 33.095154, 51.368076>,  <34.292969, 33.610970, 51.363422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829453, 33.095154, 51.368076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.572235, 32.987728, 51.654957>,  <34.417904, 32.923275, 51.827084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.572235, 32.987728, 51.654957>,  <34.829453, 33.095154, 51.368076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572235, 32.987728, 51.654957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026750, -0.928048, -0.371499,
		0.765365, -0.258074, 0.589588,
		-0.643040, -0.268561, 0.717199,
		34.379322, 32.907162, 51.870117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119545, 32.481148, 51.641788>,  <34.829453, 33.095154, 51.368076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119545, 32.481148, 51.641788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.733009, 32.479404, 51.744690>,  <34.501087, 32.478359, 51.806431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.733009, 32.479404, 51.744690>,  <35.119545, 32.481148, 51.641788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733009, 32.479404, 51.744690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091977, -0.927936, -0.361213,
		0.240287, -0.372714, 0.896296,
		-0.966335, -0.004357, 0.257252,
		34.443108, 32.478096, 51.821865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068626, 31.852064, 52.021526>,  <35.119545, 32.481148, 51.641788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068626, 31.852064, 52.021526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.691906, 31.937246, 51.917484>,  <34.465874, 31.988356, 51.855061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.691906, 31.937246, 51.917484>,  <35.068626, 31.852064, 52.021526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691906, 31.937246, 51.917484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155844, -0.962172, -0.223470,
		-0.297850, -0.169930, 0.939366,
		-0.941806, 0.212955, -0.260101,
		34.409363, 32.001133, 51.839455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652302, 31.371843, 52.273613>,  <35.068626, 31.852064, 52.021526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652302, 31.371843, 52.273613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.429264, 31.525799, 51.979416>,  <34.295441, 31.618172, 51.802898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.429264, 31.525799, 51.979416>,  <34.652302, 31.371843, 52.273613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429264, 31.525799, 51.979416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066995, -0.903990, -0.422272,
		-0.827407, -0.186181, 0.529844,
		-0.557592, 0.384888, -0.735495,
		34.261986, 31.641266, 51.758766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230362, 30.833397, 52.182354>,  <34.652302, 31.371843, 52.273613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230362, 30.833397, 52.182354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.164555, 31.055498, 51.856255>,  <34.125072, 31.188759, 51.660595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.164555, 31.055498, 51.856255>,  <34.230362, 30.833397, 52.182354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164555, 31.055498, 51.856255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050241, -0.830155, -0.555265,
		-0.985094, -0.050391, 0.164470,
		-0.164516, 0.555251, -0.815249,
		34.115200, 31.222073, 51.611679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874325, 30.333860, 51.724514>,  <34.230362, 30.833397, 52.182354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874325, 30.333860, 51.724514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.001667, 30.617661, 51.473034>,  <34.078072, 30.787941, 51.322147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.001667, 30.617661, 51.473034>,  <33.874325, 30.333860, 51.724514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001667, 30.617661, 51.473034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190369, -0.697543, -0.690792,
		-0.928661, 0.100232, -0.357132,
		0.318354, 0.709498, -0.628699,
		34.097172, 30.830509, 51.284424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396851, 30.367994, 51.153702>,  <33.874325, 30.333860, 51.724514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396851, 30.367994, 51.153702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.753044, 30.511766, 51.042103>,  <33.966763, 30.598030, 50.975143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.753044, 30.511766, 51.042103>,  <33.396851, 30.367994, 51.153702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753044, 30.511766, 51.042103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015508, -0.588846, -0.808096,
		-0.454743, 0.723927, -0.518786,
		0.890488, 0.359431, -0.279000,
		34.020191, 30.619596, 50.958405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355728, 30.627525, 50.435181>,  <33.396851, 30.367994, 51.153702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355728, 30.627525, 50.435181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.743164, 30.556086, 50.504391>,  <33.975624, 30.513222, 50.545918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.743164, 30.556086, 50.504391>,  <33.355728, 30.627525, 50.435181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743164, 30.556086, 50.504391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053087, -0.531245, -0.845553,
		0.242932, 0.828180, -0.505077,
		0.968589, -0.178599, 0.173022,
		34.033741, 30.502506, 50.556297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912773, 30.834276, 49.860771>,  <33.355728, 30.627525, 50.435181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912773, 30.834276, 49.860771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.640343, 30.966995, 49.599682>,  <32.476887, 31.046627, 49.443027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.640343, 30.966995, 49.599682>,  <32.912773, 30.834276, 49.860771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640343, 30.966995, 49.599682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552741, 0.351676, 0.755514,
		0.480226, 0.875348, -0.056117,
		-0.681073, 0.331799, -0.652725,
		32.436020, 31.066534, 49.403866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790047, 31.611935, 50.029190>,  <32.912773, 30.834276, 49.860771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790047, 31.611935, 50.029190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.476288, 31.452211, 49.839336>,  <32.288033, 31.356377, 49.725422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.476288, 31.452211, 49.839336>,  <32.790047, 31.611935, 50.029190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476288, 31.452211, 49.839336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620228, 0.496789, 0.607057,
		-0.006608, 0.770554, -0.637340,
		-0.784394, -0.399308, -0.474636,
		32.240971, 31.332418, 49.696945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373333, 32.168091, 49.972347>,  <32.790047, 31.611935, 50.029190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373333, 32.168091, 49.972347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.165985, 31.826380, 49.956799>,  <32.041576, 31.621353, 49.947472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.165985, 31.826380, 49.956799>,  <32.373333, 32.168091, 49.972347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165985, 31.826380, 49.956799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680499, 0.384540, 0.623738,
		-0.517897, 0.349775, -0.780666,
		-0.518366, -0.854275, -0.038870,
		32.010475, 31.570097, 49.945137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683197, 32.360367, 49.627567>,  <32.373333, 32.168091, 49.972347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683197, 32.360367, 49.627567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.659250, 32.020744, 49.837528>,  <31.644882, 31.816971, 49.963505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.659250, 32.020744, 49.837528>,  <31.683197, 32.360367, 49.627567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659250, 32.020744, 49.837528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606000, 0.448772, 0.656786,
		-0.793209, -0.278772, -0.541393,
		-0.059869, -0.849053, 0.524905,
		31.641291, 31.766029, 49.994999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001659, 32.260632, 49.872261>,  <31.683197, 32.360367, 49.627567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001659, 32.260632, 49.872261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.190943, 32.005081, 50.114883>,  <31.304512, 31.851749, 50.260456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.190943, 32.005081, 50.114883>,  <31.001659, 32.260632, 49.872261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190943, 32.005081, 50.114883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575228, 0.297395, 0.762016,
		-0.667223, -0.709499, -0.226771,
		0.473209, -0.638880, 0.606552,
		31.332905, 31.813417, 50.296848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525389, 31.772223, 50.168114>,  <31.001659, 32.260632, 49.872261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525389, 31.772223, 50.168114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.826706, 31.835659, 50.423424>,  <31.007496, 31.873722, 50.576611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.826706, 31.835659, 50.423424>,  <30.525389, 31.772223, 50.168114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826706, 31.835659, 50.423424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657566, 0.200221, 0.726305,
		-0.012610, -0.966830, 0.255110,
		0.753292, 0.158592, 0.638279,
		31.052694, 31.883238, 50.614906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100170, 31.786640, 50.729340>,  <30.525389, 31.772223, 50.168114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100170, 31.786640, 50.729340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.470354, 31.859325, 50.862309>,  <30.692465, 31.902937, 50.942089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.470354, 31.859325, 50.862309>,  <30.100170, 31.786640, 50.729340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470354, 31.859325, 50.862309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377550, 0.369757, 0.848962,
		0.031351, -0.911186, 0.410801,
		0.925458, 0.181714, 0.332426,
		30.747992, 31.913839, 50.962036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262178, 31.464808, 51.485699>,  <30.100170, 31.786640, 50.729340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262178, 31.464808, 51.485699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.506432, 31.776739, 51.430569>,  <30.652983, 31.963898, 51.397491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.506432, 31.776739, 51.430569>,  <30.262178, 31.464808, 51.485699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506432, 31.776739, 51.430569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241916, 0.349415, 0.905199,
		0.754059, -0.519401, 0.402017,
		0.610633, 0.779828, -0.137828,
		30.689621, 32.010689, 51.389221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543394, 31.500473, 52.084278>,  <30.262178, 31.464808, 51.485699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543394, 31.500473, 52.084278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.616182, 31.863930, 51.933945>,  <30.659855, 32.082005, 51.843742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.616182, 31.863930, 51.933945>,  <30.543394, 31.500473, 52.084278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616182, 31.863930, 51.933945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316862, 0.416017, 0.852366,
		0.930852, -0.036017, 0.363618,
		0.181971, 0.908643, -0.375838,
		30.670774, 32.136524, 51.821194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870195, 31.859177, 52.589138>,  <30.543394, 31.500473, 52.084278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870195, 31.859177, 52.589138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.764423, 32.151649, 52.337597>,  <30.700960, 32.327133, 52.186672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.764423, 32.151649, 52.337597>,  <30.870195, 31.859177, 52.589138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764423, 32.151649, 52.337597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105133, 0.626319, 0.772445,
		0.958658, 0.270370, -0.088745,
		-0.264429, 0.731180, -0.628850,
		30.685095, 32.371002, 52.148941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254225, 32.463348, 52.706593>,  <30.870195, 31.859177, 52.589138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254225, 32.463348, 52.706593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.933395, 32.617126, 52.523781>,  <30.740898, 32.709393, 52.414093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.933395, 32.617126, 52.523781>,  <31.254225, 32.463348, 52.706593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933395, 32.617126, 52.523781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109521, 0.657599, 0.745365,
		0.587098, 0.647892, -0.485337,
		-0.802073, 0.384448, -0.457033,
		30.692774, 32.732460, 52.386669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402122, 33.243298, 52.728405>,  <31.254225, 32.463348, 52.706593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402122, 33.243298, 52.728405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.013758, 33.189224, 52.649353>,  <30.780739, 33.156780, 52.601921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.013758, 33.189224, 52.649353>,  <31.402122, 33.243298, 52.728405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013758, 33.189224, 52.649353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233185, 0.721279, 0.652213,
		0.054382, 0.679325, -0.731819,
		-0.970911, -0.135181, -0.197633,
		30.722485, 33.148670, 52.590065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164450, 33.947704, 52.587162>,  <31.402122, 33.243298, 52.728405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164450, 33.947704, 52.587162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.843096, 33.726353, 52.675114>,  <30.650284, 33.593544, 52.727886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.843096, 33.726353, 52.675114>,  <31.164450, 33.947704, 52.587162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843096, 33.726353, 52.675114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280036, 0.676993, 0.680632,
		-0.525502, 0.485236, -0.698852,
		-0.803385, -0.553377, 0.219878,
		30.602079, 33.560341, 52.741077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598776, 34.308262, 52.549530>,  <31.164450, 33.947704, 52.587162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598776, 34.308262, 52.549530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.459204, 34.022594, 52.792252>,  <30.375460, 33.851192, 52.937885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.459204, 34.022594, 52.792252>,  <30.598776, 34.308262, 52.549530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459204, 34.022594, 52.792252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396719, 0.699184, 0.594774,
		-0.849035, -0.033193, -0.527293,
		-0.348932, -0.714171, 0.606800,
		30.354525, 33.808342, 52.974293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901867, 34.445824, 52.650196>,  <30.598776, 34.308262, 52.549530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901867, 34.445824, 52.650196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.039797, 34.224720, 52.953659>,  <30.122555, 34.092060, 53.135735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.039797, 34.224720, 52.953659>,  <29.901867, 34.445824, 52.650196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039797, 34.224720, 52.953659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287558, 0.707160, 0.645938,
		-0.893537, -0.440891, 0.084895,
		0.344823, -0.552757, 0.758655,
		30.143244, 34.058891, 53.181255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418163, 34.584755, 53.096893>,  <29.901867, 34.445824, 52.650196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418163, 34.584755, 53.096893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.702993, 34.426407, 53.328838>,  <29.873892, 34.331398, 53.468006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.702993, 34.426407, 53.328838>,  <29.418163, 34.584755, 53.096893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702993, 34.426407, 53.328838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360541, 0.502506, 0.785810,
		-0.602461, -0.768619, 0.215095,
		0.712075, -0.395869, 0.579859,
		29.916616, 34.307648, 53.502796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071005, 34.299965, 53.679134>,  <29.418163, 34.584755, 53.096893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071005, 34.299965, 53.679134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.451090, 34.374172, 53.779282>,  <29.679140, 34.418697, 53.839371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.451090, 34.374172, 53.779282>,  <29.071005, 34.299965, 53.679134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451090, 34.374172, 53.779282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311460, 0.590165, 0.744780,
		-0.009589, -0.785677, 0.618562,
		0.950211, 0.185516, 0.250366,
		29.736153, 34.429829, 53.854393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153742, 34.193916, 54.343277>,  <29.071005, 34.299965, 53.679134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153742, 34.193916, 54.343277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.467854, 34.429741, 54.267639>,  <29.656321, 34.571236, 54.222256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.467854, 34.429741, 54.267639>,  <29.153742, 34.193916, 54.343277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467854, 34.429741, 54.267639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182570, 0.512329, 0.839158,
		0.591611, -0.624451, 0.509958,
		0.785279, 0.589559, -0.189093,
		29.703438, 34.606609, 54.210911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.401495, 34.380791, 55.136101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575537, 34.623619, 54.870121>,  <29.679962, 34.769314, 54.710533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575537, 34.623619, 54.870121>,  <29.401495, 34.380791, 55.136101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575537, 34.623619, 54.870121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206997, 0.786181, 0.582300,
		0.876263, -0.115719, 0.467730,
		0.435103, 0.607066, -0.664948,
		29.706068, 34.805740, 54.670635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908787, 34.708603, 55.481781>,  <29.401495, 34.380791, 55.136101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908787, 34.708603, 55.481781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834801, 34.947662, 55.169727>,  <29.790409, 35.091099, 54.982494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834801, 34.947662, 55.169727>,  <29.908787, 34.708603, 55.481781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834801, 34.947662, 55.169727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164742, 0.763739, 0.624150,
		0.968838, 0.243966, -0.042808,
		-0.184966, 0.597648, -0.780131,
		29.779310, 35.126957, 54.935688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337116, 35.268589, 55.609825>,  <29.908787, 34.708603, 55.481781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337116, 35.268589, 55.609825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057600, 35.410503, 55.361370>,  <29.889891, 35.495651, 55.212296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057600, 35.410503, 55.361370>,  <30.337116, 35.268589, 55.609825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057600, 35.410503, 55.361370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106313, 0.807179, 0.580654,
		0.707381, 0.471791, -0.526331,
		-0.698791, 0.354788, -0.621141,
		29.847963, 35.516941, 55.175026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529205, 35.873787, 55.302357>,  <30.337116, 35.268589, 55.609825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529205, 35.873787, 55.302357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132324, 35.893250, 55.256466>,  <29.894196, 35.904926, 55.228931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132324, 35.893250, 55.256466>,  <30.529205, 35.873787, 55.302357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132324, 35.893250, 55.256466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016582, 0.963984, 0.265445,
		0.123510, 0.261473, -0.957276,
		-0.992205, 0.048659, -0.114726,
		29.834663, 35.907848, 55.222050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460810, 36.601219, 55.249058>,  <30.529205, 35.873787, 55.302357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460810, 36.601219, 55.249058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081583, 36.488152, 55.307392>,  <29.854048, 36.420311, 55.342392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081583, 36.488152, 55.307392>,  <30.460810, 36.601219, 55.249058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081583, 36.488152, 55.307392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194283, 0.877670, 0.438120,
		-0.251838, 0.387034, -0.887007,
		-0.948067, -0.282666, 0.145837,
		29.797163, 36.403351, 55.351143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119808, 37.112896, 54.939312>,  <30.460810, 36.601219, 55.249058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119808, 37.112896, 54.939312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908745, 36.926388, 55.223331>,  <29.782106, 36.814484, 55.393742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908745, 36.926388, 55.223331>,  <30.119808, 37.112896, 54.939312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908745, 36.926388, 55.223331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251086, 0.884146, 0.394007,
		-0.811501, 0.029618, -0.583601,
		-0.527658, -0.466271, 0.710049,
		29.750448, 36.786507, 55.436344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649668, 37.567863, 55.055378>,  <30.119808, 37.112896, 54.939312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649668, 37.567863, 55.055378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545288, 37.341461, 55.368183>,  <29.482660, 37.205620, 55.555866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545288, 37.341461, 55.368183>,  <29.649668, 37.567863, 55.055378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545288, 37.341461, 55.368183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183403, 0.824392, 0.535483,
		-0.947770, -0.003689, -0.318932,
		-0.260950, -0.566008, 0.782010,
		29.467003, 37.171658, 55.602787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140480, 37.888054, 55.317997>,  <29.649668, 37.567863, 55.055378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140480, 37.888054, 55.317997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248901, 37.653831, 55.623589>,  <29.313955, 37.513298, 55.806942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248901, 37.653831, 55.623589>,  <29.140480, 37.888054, 55.317997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248901, 37.653831, 55.623589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090572, 0.774651, 0.625869,
		-0.958293, -0.238840, 0.156939,
		0.271055, -0.585552, 0.763975,
		29.330217, 37.478165, 55.852779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616571, 37.734924, 55.834740>,  <29.140480, 37.888054, 55.317997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616571, 37.734924, 55.834740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954268, 37.701881, 56.046562>,  <29.156885, 37.682056, 56.173656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954268, 37.701881, 56.046562>,  <28.616571, 37.734924, 55.834740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954268, 37.701881, 56.046562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388109, 0.587197, 0.710332,
		-0.369633, -0.805218, 0.463675,
		0.844240, -0.082606, 0.529560,
		29.207541, 37.677101, 56.205429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381865, 37.764458, 56.517651>,  <28.616571, 37.734924, 55.834740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381865, 37.764458, 56.517651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778877, 37.798908, 56.552208>,  <29.017084, 37.819576, 56.572941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778877, 37.798908, 56.552208>,  <28.381865, 37.764458, 56.517651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778877, 37.798908, 56.552208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121646, 0.751581, 0.648327,
		-0.009093, -0.653994, 0.756445,
		0.992532, 0.086123, 0.086390,
		29.076637, 37.824745, 56.578125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505285, 37.944958, 57.245266>,  <28.381865, 37.764458, 56.517651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505285, 37.944958, 57.245266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850550, 38.053982, 57.075249>,  <29.057709, 38.119396, 56.973236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850550, 38.053982, 57.075249>,  <28.505285, 37.944958, 57.245266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850550, 38.053982, 57.075249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091143, 0.743857, 0.662095,
		0.496636, -0.610234, 0.617225,
		0.863160, 0.272564, -0.425045,
		29.109497, 38.135750, 56.947735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998289, 38.046638, 57.789494>,  <28.505285, 37.944958, 57.245266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998289, 38.046638, 57.789494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134039, 38.258831, 57.478775>,  <29.215488, 38.386147, 57.292343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134039, 38.258831, 57.478775>,  <28.998289, 38.046638, 57.789494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134039, 38.258831, 57.478775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100274, 0.800699, 0.590616,
		0.935291, -0.278333, 0.218544,
		0.339376, 0.530483, -0.776796,
		29.235851, 38.417976, 57.245735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610550, 38.456978, 58.045116>,  <28.998289, 38.046638, 57.789494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610550, 38.456978, 58.045116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486403, 38.638657, 57.711079>,  <29.411915, 38.747665, 57.510658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486403, 38.638657, 57.711079>,  <29.610550, 38.456978, 58.045116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486403, 38.638657, 57.711079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144851, 0.890811, 0.430666,
		0.939516, 0.012701, -0.342269,
		-0.310367, 0.454196, -0.835092,
		29.393293, 38.774914, 57.460552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052399, 38.929699, 57.942295>,  <29.610550, 38.456978, 58.045116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052399, 38.929699, 57.942295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731228, 39.055779, 57.739925>,  <29.538527, 39.131428, 57.618504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731228, 39.055779, 57.739925>,  <30.052399, 38.929699, 57.942295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731228, 39.055779, 57.739925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075052, 0.895458, 0.438773,
		0.591335, 0.314332, -0.742643,
		-0.802926, 0.315199, -0.505924,
		29.490351, 39.150337, 57.588146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282427, 39.536015, 57.754345>,  <30.052399, 38.929699, 57.942295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282427, 39.536015, 57.754345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887703, 39.561256, 57.694714>,  <29.650869, 39.576401, 57.658936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887703, 39.561256, 57.694714>,  <30.282427, 39.536015, 57.754345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887703, 39.561256, 57.694714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024081, 0.967871, 0.250291,
		0.160081, 0.243400, -0.956624,
		-0.986810, 0.063103, -0.149077,
		29.591660, 39.580189, 57.649990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179579, 40.198696, 57.396103>,  <30.282427, 39.536015, 57.754345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179579, 40.198696, 57.396103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834373, 40.090462, 57.566746>,  <29.627251, 40.025520, 57.669132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834373, 40.090462, 57.566746>,  <30.179579, 40.198696, 57.396103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834373, 40.090462, 57.566746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213830, 0.960738, 0.176800,
		-0.457695, 0.061360, -0.886990,
		-0.863013, -0.270586, 0.426604,
		29.575470, 40.009285, 57.694729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699181, 40.701107, 57.156048>,  <30.179579, 40.198696, 57.396103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699181, 40.701107, 57.156048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545134, 40.544827, 57.490482>,  <29.452705, 40.451057, 57.691143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545134, 40.544827, 57.490482>,  <29.699181, 40.701107, 57.156048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545134, 40.544827, 57.490482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216754, 0.918913, 0.329571,
		-0.897052, -0.054301, -0.438575,
		-0.385116, -0.390706, 0.836083,
		29.429598, 40.427616, 57.741306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063036, 40.992039, 57.170464>,  <29.699181, 40.701107, 57.156048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063036, 40.992039, 57.170464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137066, 40.909275, 57.554741>,  <29.181484, 40.859619, 57.785309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137066, 40.909275, 57.554741>,  <29.063036, 40.992039, 57.170464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137066, 40.909275, 57.554741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261804, 0.931875, 0.251133,
		-0.947209, -0.297993, 0.118299,
		0.185076, -0.206905, 0.960696,
		29.192589, 40.847202, 57.842949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556618, 41.343754, 57.601036>,  <29.063036, 40.992039, 57.170464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556618, 41.343754, 57.601036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841906, 41.265667, 57.870319>,  <29.013079, 41.218815, 58.031891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841906, 41.265667, 57.870319>,  <28.556618, 41.343754, 57.601036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841906, 41.265667, 57.870319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257020, 0.820703, 0.510281,
		-0.652119, -0.536970, 0.535167,
		0.713220, -0.195215, 0.673208,
		29.055872, 41.207104, 58.072281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199186, 41.503239, 58.227234>,  <28.556618, 41.343754, 57.601036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199186, 41.503239, 58.227234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585321, 41.500454, 58.331596>,  <28.817003, 41.498783, 58.394215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585321, 41.500454, 58.331596>,  <28.199186, 41.503239, 58.227234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585321, 41.500454, 58.331596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135779, 0.840338, 0.524782,
		-0.222904, -0.542018, 0.810265,
		0.965338, -0.006959, 0.260910,
		28.874924, 41.498367, 58.409870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208494, 41.594311, 58.988506>,  <28.199186, 41.503239, 58.227234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208494, 41.594311, 58.988506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563086, 41.713615, 58.846977>,  <28.775841, 41.785198, 58.762058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563086, 41.713615, 58.846977>,  <28.208494, 41.594311, 58.988506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563086, 41.713615, 58.846977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101383, 0.871186, 0.480370,
		0.451525, -0.389966, 0.802528,
		0.886480, 0.298262, -0.353826,
		28.829029, 41.803093, 58.740829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526302, 41.948559, 59.536583>,  <28.208494, 41.594311, 58.988506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526302, 41.948559, 59.536583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722252, 42.060051, 59.206169>,  <28.839821, 42.126945, 59.007919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722252, 42.060051, 59.206169>,  <28.526302, 41.948559, 59.536583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722252, 42.060051, 59.206169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063632, 0.933553, 0.352747,
		0.869469, -0.225363, 0.439586,
		0.489872, 0.278731, -0.826035,
		28.869213, 42.143669, 58.958359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689577, 41.316662, 59.715134>,  <28.526302, 41.948559, 59.536583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689577, 41.316662, 59.715134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937160, 41.531792, 59.486176>,  <29.085711, 41.660870, 59.348801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937160, 41.531792, 59.486176>,  <28.689577, 41.316662, 59.715134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937160, 41.531792, 59.486176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250106, -0.825798, -0.505474,
		-0.744539, 0.169707, -0.645647,
		0.618957, 0.537825, -0.572395,
		29.122849, 41.693138, 59.314457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860489, 41.713837, 60.157421>,  <28.689577, 41.316662, 59.715134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860489, 41.713837, 60.157421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719995, 41.972206, 60.428543>,  <28.635700, 42.127228, 60.591217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719995, 41.972206, 60.428543>,  <28.860489, 41.713837, 60.157421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719995, 41.972206, 60.428543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640458, -0.693815, 0.329294,
		0.682971, -0.318448, 0.657374,
		-0.351233, 0.645919, 0.677808,
		28.614626, 42.165981, 60.631886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300179, 41.430042, 60.796440>,  <28.860489, 41.713837, 60.157421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300179, 41.430042, 60.796440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672831, 41.571480, 60.829987>,  <29.896421, 41.656342, 60.850117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672831, 41.571480, 60.829987>,  <29.300179, 41.430042, 60.796440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672831, 41.571480, 60.829987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310736, -0.655435, -0.688366,
		-0.188434, 0.667364, -0.720499,
		0.931631, 0.353596, 0.083868,
		29.952320, 41.677559, 60.855148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570143, 41.474106, 60.119099>,  <29.300179, 41.430042, 60.796440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570143, 41.474106, 60.119099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876848, 41.439064, 60.373466>,  <30.060871, 41.418037, 60.526089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876848, 41.439064, 60.373466>,  <29.570143, 41.474106, 60.119099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876848, 41.439064, 60.373466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430355, -0.664892, -0.610502,
		0.476304, 0.741784, -0.472114,
		0.766765, -0.087608, 0.635921,
		30.106878, 41.412781, 60.564243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222275, 41.545467, 59.700787>,  <29.570143, 41.474106, 60.119099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222275, 41.545467, 59.700787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314453, 41.344364, 60.034042>,  <30.369761, 41.223701, 60.233997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314453, 41.344364, 60.034042>,  <30.222275, 41.545467, 59.700787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314453, 41.344364, 60.034042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322858, -0.768182, -0.552864,
		0.917964, 0.396391, -0.014702,
		0.230444, -0.502763, 0.833142,
		30.383587, 41.193535, 60.283985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812820, 41.170776, 59.606262>,  <30.222275, 41.545467, 59.700787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812820, 41.170776, 59.606262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675562, 40.972633, 59.925480>,  <30.593206, 40.853748, 60.117008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675562, 40.972633, 59.925480>,  <30.812820, 41.170776, 59.606262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675562, 40.972633, 59.925480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443834, -0.834304, -0.327029,
		0.827805, 0.241979, 0.506147,
		-0.343147, -0.495362, 0.798040,
		30.572618, 40.824024, 60.164890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375473, 40.732616, 59.849503>,  <30.812820, 41.170776, 59.606262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375473, 40.732616, 59.849503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059820, 40.554020, 60.018223>,  <30.870428, 40.446861, 60.119453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059820, 40.554020, 60.018223>,  <31.375473, 40.732616, 59.849503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059820, 40.554020, 60.018223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326430, -0.886572, -0.327770,
		0.520302, -0.120966, 0.845372,
		-0.789132, -0.446494, 0.421798,
		30.823080, 40.420071, 60.144764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663885, 40.246292, 60.261570>,  <31.375473, 40.732616, 59.849503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663885, 40.246292, 60.261570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286720, 40.132744, 60.191902>,  <31.060421, 40.064613, 60.150101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286720, 40.132744, 60.191902>,  <31.663885, 40.246292, 60.261570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286720, 40.132744, 60.191902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328317, -0.880081, -0.343024,
		-0.055912, -0.380625, 0.923038,
		-0.942911, -0.283870, -0.174173,
		31.003847, 40.047585, 60.139648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678602, 39.550655, 60.364429>,  <31.663885, 40.246292, 60.261570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678602, 39.550655, 60.364429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314608, 39.588654, 60.202984>,  <31.096210, 39.611450, 60.106117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314608, 39.588654, 60.202984>,  <31.678602, 39.550655, 60.364429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314608, 39.588654, 60.202984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113170, -0.879545, -0.462162,
		-0.398894, -0.466237, 0.789624,
		-0.909987, 0.094992, -0.403609,
		31.041611, 39.617149, 60.081902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329504, 38.931641, 60.572323>,  <31.678602, 39.550655, 60.364429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329504, 38.931641, 60.572323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190262, 39.112968, 60.244099>,  <31.106716, 39.221764, 60.047165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190262, 39.112968, 60.244099>,  <31.329504, 38.931641, 60.572323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190262, 39.112968, 60.244099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090306, -0.855023, -0.510666,
		-0.933095, -0.251868, 0.256702,
		-0.348106, 0.453319, -0.820563,
		31.085831, 39.248962, 59.997929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918615, 38.377659, 60.197849>,  <31.329504, 38.931641, 60.572323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918615, 38.377659, 60.197849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990143, 38.643780, 59.907909>,  <31.033060, 38.803452, 59.733948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990143, 38.643780, 59.907909>,  <30.918615, 38.377659, 60.197849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990143, 38.643780, 59.907909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067991, -0.726603, -0.683685,
		-0.981530, 0.171539, -0.084696,
		0.178819, 0.665299, -0.724846,
		31.043789, 38.843369, 59.690456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396206, 38.182777, 59.608585>,  <30.918615, 38.377659, 60.197849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396206, 38.182777, 59.608585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700665, 38.390518, 59.453190>,  <30.883339, 38.515163, 59.359951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700665, 38.390518, 59.453190>,  <30.396206, 38.182777, 59.608585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700665, 38.390518, 59.453190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052596, -0.646443, -0.761147,
		-0.646443, 0.558912, -0.519354,
		0.761147, 0.519354, -0.388492,
		30.929008, 38.546326, 59.336643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225746, 38.195873, 58.875721>,  <30.396206, 38.182777, 59.608585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225746, 38.195873, 58.875721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615166, 38.287079, 58.881618>,  <30.848818, 38.341801, 58.885155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615166, 38.287079, 58.881618>,  <30.225746, 38.195873, 58.875721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615166, 38.287079, 58.881618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120680, -0.458353, -0.880539,
		-0.194016, 0.859025, -0.473744,
		0.973547, 0.228010, 0.014739,
		30.907230, 38.355480, 58.886040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293894, 38.311146, 58.209530>,  <30.225746, 38.195873, 58.875721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293894, 38.311146, 58.209530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648571, 38.230576, 58.376003>,  <30.861378, 38.182236, 58.475887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648571, 38.230576, 58.376003>,  <30.293894, 38.311146, 58.209530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648571, 38.230576, 58.376003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235748, -0.577370, -0.781708,
		0.397743, 0.791248, -0.464464,
		0.886693, -0.201422, 0.416180,
		30.914579, 38.170151, 58.500858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864462, 38.406559, 57.635773>,  <30.293894, 38.311146, 58.209530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864462, 38.406559, 57.635773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028173, 38.184422, 57.925346>,  <31.126400, 38.051140, 58.099091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028173, 38.184422, 57.925346>,  <30.864462, 38.406559, 57.635773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028173, 38.184422, 57.925346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389108, -0.611426, -0.689024,
		0.825279, 0.563691, -0.034154,
		0.409279, -0.555348, 0.723933,
		31.150957, 38.017818, 58.142525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588026, 38.400963, 57.483570>,  <30.864462, 38.406559, 57.635773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588026, 38.400963, 57.483570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522646, 38.080093, 57.713284>,  <31.483418, 37.887573, 57.851112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522646, 38.080093, 57.713284>,  <31.588026, 38.400963, 57.483570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522646, 38.080093, 57.713284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467640, -0.575556, -0.670856,
		0.868675, 0.158905, 0.469205,
		-0.163451, -0.802175, 0.574281,
		31.473610, 37.839439, 57.885567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090603, 37.907101, 57.429966>,  <31.588026, 38.400963, 57.483570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090603, 37.907101, 57.429966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829891, 37.650017, 57.591022>,  <31.673466, 37.495766, 57.687656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829891, 37.650017, 57.591022>,  <32.090603, 37.907101, 57.429966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829891, 37.650017, 57.591022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350406, -0.726029, -0.591691,
		0.672611, -0.244562, 0.698416,
		-0.651775, -0.642707, 0.402639,
		31.634359, 37.457203, 57.711815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419319, 37.296455, 57.502140>,  <32.090603, 37.907101, 57.429966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419319, 37.296455, 57.502140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045170, 37.165337, 57.555233>,  <31.820679, 37.086666, 57.587090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045170, 37.165337, 57.555233>,  <32.419319, 37.296455, 57.502140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045170, 37.165337, 57.555233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213201, -0.822121, -0.527885,
		0.282163, -0.465472, 0.838880,
		-0.935377, -0.327800, 0.132733,
		31.764557, 37.066998, 57.595055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487514, 36.586529, 57.746670>,  <32.419319, 37.296455, 57.502140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487514, 36.586529, 57.746670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132702, 36.642460, 57.570656>,  <31.919815, 36.676018, 57.465046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132702, 36.642460, 57.570656>,  <32.487514, 36.586529, 57.746670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132702, 36.642460, 57.570656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237556, -0.679003, -0.694638,
		-0.395916, -0.720696, 0.569076,
		-0.887028, 0.139832, -0.440034,
		31.866594, 36.684410, 57.438644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359737, 35.970394, 57.585945>,  <32.487514, 36.586529, 57.746670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359737, 35.970394, 57.585945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096500, 36.175625, 57.365520>,  <31.938559, 36.298763, 57.233265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096500, 36.175625, 57.365520>,  <32.359737, 35.970394, 57.585945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096500, 36.175625, 57.365520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235623, -0.554786, -0.797931,
		-0.715122, -0.654954, 0.244207,
		-0.658091, 0.513077, -0.551062,
		31.899073, 36.329548, 57.200203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896402, 35.438393, 57.254982>,  <32.359737, 35.970394, 57.585945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896402, 35.438393, 57.254982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887726, 35.768280, 57.028931>,  <31.882521, 35.966213, 56.893299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887726, 35.768280, 57.028931>,  <31.896402, 35.438393, 57.254982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887726, 35.768280, 57.028931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260954, -0.540996, -0.799517,
		-0.965108, -0.164815, -0.203478,
		-0.021692, 0.824718, -0.565129,
		31.881218, 36.015694, 56.859390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596874, 35.262581, 56.624592>,  <31.896402, 35.438393, 57.254982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596874, 35.262581, 56.624592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785490, 35.597939, 56.515240>,  <31.898659, 35.799152, 56.449627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785490, 35.597939, 56.515240>,  <31.596874, 35.262581, 56.624592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785490, 35.597939, 56.515240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241695, -0.421014, -0.874260,
		-0.848077, 0.346172, -0.401161,
		0.471539, 0.838398, -0.273384,
		31.926952, 35.849457, 56.433224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<46.981960, 36.188568, 52.452225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.176449, 35.861584, 52.328712>,  <47.293140, 35.665394, 52.254604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.176449, 35.861584, 52.328712>,  <46.981960, 36.188568, 52.452225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.176449, 35.861584, 52.328712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847625, -0.355307, -0.394067,
		0.212423, 0.453334, -0.865659,
		0.486218, -0.817463, -0.308782,
		47.322315, 35.616344, 52.236076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.930256, 36.168968, 51.730953>,  <46.981960, 36.188568, 52.452225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.930256, 36.168968, 51.730953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.985249, 35.792377, 51.854061>,  <47.018246, 35.566425, 51.927925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.985249, 35.792377, 51.854061>,  <46.930256, 36.168968, 51.730953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.985249, 35.792377, 51.854061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811058, -0.285367, -0.510637,
		0.568580, -0.179417, -0.802824,
		0.137482, -0.941475, 0.307772,
		47.026493, 35.509933, 51.946392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.976982, 35.788822, 51.116474>,  <46.930256, 36.168968, 51.730953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.976982, 35.788822, 51.116474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.889030, 35.528568, 51.407219>,  <46.836258, 35.372417, 51.581665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.889030, 35.528568, 51.407219>,  <46.976982, 35.788822, 51.116474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.889030, 35.528568, 51.407219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806048, -0.298521, -0.511050,
		0.549490, -0.698254, -0.458805,
		-0.219880, -0.650635, 0.726860,
		46.823067, 35.333378, 51.625278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.911392, 35.113842, 50.765598>,  <46.976982, 35.788822, 51.116474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.911392, 35.113842, 50.765598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.711166, 35.087212, 51.110851>,  <46.591030, 35.071236, 51.318005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.711166, 35.087212, 51.110851>,  <46.911392, 35.113842, 50.765598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.711166, 35.087212, 51.110851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736713, -0.490845, -0.465108,
		0.454629, -0.868700, 0.196655,
		-0.500566, -0.066573, 0.863135,
		46.560997, 35.067238, 51.369793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.543457, 34.352730, 50.720116>,  <46.911392, 35.113842, 50.765598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.543457, 34.352730, 50.720116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.345470, 34.542297, 51.011433>,  <46.226677, 34.656036, 51.186222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.345470, 34.542297, 51.011433>,  <46.543457, 34.352730, 50.720116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.345470, 34.542297, 51.011433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863884, -0.358442, -0.353869,
		0.093348, -0.804316, 0.586824,
		-0.494965, 0.473915, 0.728295,
		46.196980, 34.684471, 51.229919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.046986, 33.851402, 50.979618>,  <46.543457, 34.352730, 50.720116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.046986, 33.851402, 50.979618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.908657, 34.206036, 51.102505>,  <45.825661, 34.418816, 51.176235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.908657, 34.206036, 51.102505>,  <46.046986, 33.851402, 50.979618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.908657, 34.206036, 51.102505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935698, -0.301478, -0.183250,
		-0.069848, -0.350830, 0.933831,
		-0.345819, 0.886582, 0.307213,
		45.804913, 34.472012, 51.194668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.517448, 33.623623, 51.291950>,  <46.046986, 33.851402, 50.979618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.517448, 33.623623, 51.291950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.449402, 34.014912, 51.244370>,  <45.408573, 34.249683, 51.215820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.449402, 34.014912, 51.244370>,  <45.517448, 33.623623, 51.291950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.449402, 34.014912, 51.244370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956935, -0.192807, -0.217027,
		-0.235235, 0.076910, 0.968891,
		-0.170118, 0.978218, -0.118953,
		45.398365, 34.308376, 51.208683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.969955, 33.781960, 51.686245>,  <45.517448, 33.623623, 51.291950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.969955, 33.781960, 51.686245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.951561, 34.079742, 51.419811>,  <44.940525, 34.258411, 51.259953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.951561, 34.079742, 51.419811>,  <44.969955, 33.781960, 51.686245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951561, 34.079742, 51.419811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952385, -0.233862, -0.195628,
		-0.301408, 0.625372, 0.719765,
		-0.045985, 0.744458, -0.666084,
		44.937767, 34.303082, 51.219986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301872, 34.156380, 51.679287>,  <44.969955, 33.781960, 51.686245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301872, 34.156380, 51.679287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.445419, 34.254658, 51.319099>,  <44.531548, 34.313625, 51.102985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.445419, 34.254658, 51.319099>,  <44.301872, 34.156380, 51.679287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.445419, 34.254658, 51.319099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911922, -0.113418, -0.394379,
		-0.199028, 0.962689, 0.183355,
		0.358869, 0.245698, -0.900470,
		44.553082, 34.328365, 51.048958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783676, 34.673267, 51.383678>,  <44.301872, 34.156380, 51.679287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783676, 34.673267, 51.383678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.000504, 34.524319, 51.082348>,  <44.130600, 34.434952, 50.901550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.000504, 34.524319, 51.082348>,  <43.783676, 34.673267, 51.383678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000504, 34.524319, 51.082348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834799, -0.135898, -0.533518,
		0.096290, 0.918081, -0.384520,
		0.542069, -0.372369, -0.753328,
		44.163124, 34.412609, 50.856350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746582, 35.078327, 50.739922>,  <43.783676, 34.673267, 51.383678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746582, 35.078327, 50.739922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.826054, 34.701313, 50.632481>,  <43.873737, 34.475105, 50.568016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.826054, 34.701313, 50.632481>,  <43.746582, 35.078327, 50.739922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826054, 34.701313, 50.632481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832572, -0.017727, -0.553634,
		0.517060, 0.333627, -0.788253,
		0.198680, -0.942538, -0.268602,
		43.885658, 34.418552, 50.551899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492413, 35.044804, 49.989872>,  <43.746582, 35.078327, 50.739922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492413, 35.044804, 49.989872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.567253, 34.659885, 50.068848>,  <43.612160, 34.428936, 50.116234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.567253, 34.659885, 50.068848>,  <43.492413, 35.044804, 49.989872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567253, 34.659885, 50.068848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742319, -0.270145, -0.613176,
		0.643393, -0.031838, -0.764874,
		0.187104, -0.962293, 0.197444,
		43.623383, 34.371197, 50.128082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545666, 34.548004, 49.279282>,  <43.492413, 35.044804, 49.989872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545666, 34.548004, 49.279282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.430843, 34.340496, 49.601395>,  <43.361950, 34.215992, 49.794662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.430843, 34.340496, 49.601395>,  <43.545666, 34.548004, 49.279282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.430843, 34.340496, 49.601395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827909, -0.288496, -0.480974,
		0.481834, -0.804767, -0.346679,
		-0.287056, -0.518768, 0.805282,
		43.344727, 34.184864, 49.842979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214245, 34.000790, 49.003166>,  <43.545666, 34.548004, 49.279282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214245, 34.000790, 49.003166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.083168, 33.951782, 49.377888>,  <43.004520, 33.922379, 49.602722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.083168, 33.951782, 49.377888>,  <43.214245, 34.000790, 49.003166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083168, 33.951782, 49.377888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843051, -0.409668, -0.348477,
		0.426475, -0.903970, 0.030955,
		-0.327694, -0.122520, 0.936806,
		42.984859, 33.915028, 49.658928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018688, 33.379021, 49.086018>,  <43.214245, 34.000790, 49.003166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018688, 33.379021, 49.086018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.810944, 33.546318, 49.384102>,  <42.686298, 33.646694, 49.562954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.810944, 33.546318, 49.384102>,  <43.018688, 33.379021, 49.086018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810944, 33.546318, 49.384102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798324, -0.548566, -0.248503,
		0.304862, -0.723982, 0.618796,
		-0.519362, 0.418241, 0.745210,
		42.655136, 33.671791, 49.607666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622368, 32.787693, 49.477524>,  <43.018688, 33.379021, 49.086018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622368, 32.787693, 49.477524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.435715, 33.131947, 49.559071>,  <42.323723, 33.338501, 49.607998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.435715, 33.131947, 49.559071>,  <42.622368, 32.787693, 49.477524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435715, 33.131947, 49.559071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881895, -0.435237, -0.181191,
		-0.067210, -0.264336, 0.962086,
		-0.466630, 0.860636, 0.203864,
		42.295727, 33.390137, 49.620232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124680, 32.585232, 49.921101>,  <42.622368, 32.787693, 49.477524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124680, 32.585232, 49.921101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.978638, 32.935326, 49.794193>,  <41.891010, 33.145382, 49.718048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.978638, 32.935326, 49.794193>,  <42.124680, 32.585232, 49.921101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978638, 32.935326, 49.794193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869391, -0.442432, -0.220032,
		-0.332949, 0.195494, 0.922457,
		-0.365110, 0.875235, -0.317269,
		41.869106, 33.197895, 49.699013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436726, 32.555981, 50.033394>,  <42.124680, 32.585232, 49.921101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436726, 32.555981, 50.033394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.414169, 32.882408, 49.803314>,  <41.400635, 33.078266, 49.665268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.414169, 32.882408, 49.803314>,  <41.436726, 32.555981, 50.033394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414169, 32.882408, 49.803314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950556, -0.220105, -0.219082,
		-0.305389, 0.534401, 0.788133,
		-0.056395, 0.816070, -0.575195,
		41.397251, 33.127228, 49.630756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896595, 33.099667, 50.211983>,  <41.436726, 32.555981, 50.033394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896595, 33.099667, 50.211983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.959103, 33.202927, 49.830627>,  <40.996605, 33.264881, 49.601814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.959103, 33.202927, 49.830627>,  <40.896595, 33.099667, 50.211983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959103, 33.202927, 49.830627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962688, -0.176103, -0.205473,
		-0.220936, 0.949920, 0.220997,
		0.156264, 0.258147, -0.953384,
		41.005981, 33.280373, 49.544613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385406, 33.636402, 50.071739>,  <40.896595, 33.099667, 50.211983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385406, 33.636402, 50.071739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.507458, 33.486279, 49.721645>,  <40.580688, 33.396206, 49.511589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.507458, 33.486279, 49.721645>,  <40.385406, 33.636402, 50.071739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507458, 33.486279, 49.721645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952215, -0.107273, -0.285970,
		0.013437, 0.920673, -0.390103,
		0.305133, -0.375305, -0.875237,
		40.598999, 33.373688, 49.459076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042320, 33.996567, 49.627865>,  <40.385406, 33.636402, 50.071739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042320, 33.996567, 49.627865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.123173, 33.646366, 49.452297>,  <40.171684, 33.436245, 49.346958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.123173, 33.646366, 49.452297>,  <40.042320, 33.996567, 49.627865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123173, 33.646366, 49.452297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949990, -0.066344, -0.305152,
		0.238041, 0.478645, -0.845125,
		0.202128, -0.875498, -0.438915,
		40.183811, 33.383717, 49.320621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046329, 33.902138, 48.811726>,  <40.042320, 33.996567, 49.627865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046329, 33.902138, 48.811726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.933468, 33.605549, 49.055233>,  <39.865749, 33.427593, 49.201336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.933468, 33.605549, 49.055233>,  <40.046329, 33.902138, 48.811726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933468, 33.605549, 49.055233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954729, 0.154688, -0.254097,
		0.094237, -0.652906, -0.751554,
		-0.282158, -0.741476, 0.608771,
		39.848820, 33.383106, 49.237865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535168, 33.531616, 48.412773>,  <40.046329, 33.902138, 48.811726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535168, 33.531616, 48.412773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.491432, 33.506092, 48.809555>,  <39.465191, 33.490776, 49.047623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.491432, 33.506092, 48.809555>,  <39.535168, 33.531616, 48.412773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491432, 33.506092, 48.809555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967696, 0.234908, -0.091557,
		-0.227176, -0.969921, -0.087433,
		-0.109342, -0.063809, 0.991954,
		39.458630, 33.486946, 49.107140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988873, 33.036983, 48.507793>,  <39.535168, 33.531616, 48.412773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988873, 33.036983, 48.507793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.057232, 33.309170, 48.792824>,  <39.098248, 33.472481, 48.963840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.057232, 33.309170, 48.792824>,  <38.988873, 33.036983, 48.507793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057232, 33.309170, 48.792824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941907, 0.325065, -0.084522,
		-0.289148, -0.656736, 0.696484,
		0.170894, 0.680463, 0.712577,
		39.108501, 33.513309, 49.006596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472557, 32.461170, 48.355995>,  <38.988873, 33.036983, 48.507793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472557, 32.461170, 48.355995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493816, 32.123402, 48.142780>,  <38.506573, 31.920740, 48.014851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493816, 32.123402, 48.142780>,  <38.472557, 32.461170, 48.355995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493816, 32.123402, 48.142780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984934, 0.043640, -0.167336,
		0.164564, 0.533899, -0.829380,
		0.053146, -0.844421, -0.533037,
		38.509762, 31.870075, 47.982868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018726, 32.546112, 47.766216>,  <38.472557, 32.461170, 48.355995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018726, 32.546112, 47.766216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059879, 32.148697, 47.785358>,  <38.084572, 31.910248, 47.796844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059879, 32.148697, 47.785358>,  <38.018726, 32.546112, 47.766216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059879, 32.148697, 47.785358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931067, -0.113120, -0.346871,
		0.350044, -0.008869, -0.936692,
		0.102882, -0.993542, 0.047854,
		38.090744, 31.850634, 47.799713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730927, 32.382072, 47.160458>,  <38.018726, 32.546112, 47.766216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730927, 32.382072, 47.160458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.717461, 32.055557, 47.391125>,  <37.709381, 31.859650, 47.529526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.717461, 32.055557, 47.391125>,  <37.730927, 32.382072, 47.160458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717461, 32.055557, 47.391125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922799, -0.196194, -0.331588,
		0.383809, -0.543311, -0.746662,
		-0.033665, -0.816285, 0.576667,
		37.707359, 31.810671, 47.564125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514202, 31.822138, 46.715775>,  <37.730927, 32.382072, 47.160458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514202, 31.822138, 46.715775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.398369, 31.728188, 47.086929>,  <37.328869, 31.671818, 47.309624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.398369, 31.728188, 47.086929>,  <37.514202, 31.822138, 46.715775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398369, 31.728188, 47.086929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946062, -0.076909, -0.314724,
		0.145285, -0.968977, -0.199938,
		-0.289583, -0.234878, 0.927887,
		37.311493, 31.657724, 47.365295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223785, 31.170467, 46.678341>,  <37.514202, 31.822138, 46.715775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223785, 31.170467, 46.678341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091503, 31.298412, 47.033489>,  <37.012135, 31.375179, 47.246578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091503, 31.298412, 47.033489>,  <37.223785, 31.170467, 46.678341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091503, 31.298412, 47.033489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871657, -0.464136, -0.157456,
		0.361731, -0.825994, 0.432303,
		-0.330705, 0.319863, 0.887875,
		36.992290, 31.394371, 47.299850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710873, 30.655249, 46.845398>,  <37.223785, 31.170467, 46.678341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710873, 30.655249, 46.845398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.626400, 30.930347, 47.123219>,  <36.575714, 31.095406, 47.289913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.626400, 30.930347, 47.123219>,  <36.710873, 30.655249, 46.845398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626400, 30.930347, 47.123219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964482, -0.261970, -0.033859,
		0.158667, -0.677037, 0.718642,
		-0.211186, 0.687745, 0.694556,
		36.563046, 31.136671, 47.331585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262478, 30.285027, 47.388462>,  <36.710873, 30.655249, 46.845398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262478, 30.285027, 47.388462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.172691, 30.673344, 47.422352>,  <36.118820, 30.906334, 47.442684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.172691, 30.673344, 47.422352>,  <36.262478, 30.285027, 47.388462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172691, 30.673344, 47.422352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974309, -0.225215, -0.000781,
		0.018322, -0.082720, 0.996404,
		-0.224470, 0.970791, 0.084721,
		36.105350, 30.964581, 47.447769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727272, 30.226870, 47.807507>,  <36.262478, 30.285027, 47.388462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727272, 30.226870, 47.807507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.723011, 30.598740, 47.660217>,  <35.720455, 30.821861, 47.571842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.723011, 30.598740, 47.660217>,  <35.727272, 30.226870, 47.807507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723011, 30.598740, 47.660217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997019, 0.018266, 0.074959,
		0.076413, 0.367925, 0.926710,
		-0.010652, 0.929676, -0.368224,
		35.719814, 30.877642, 47.549751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208652, 30.493162, 48.082134>,  <35.727272, 30.226870, 47.807507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208652, 30.493162, 48.082134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.259644, 30.749443, 47.779282>,  <35.290237, 30.903212, 47.597569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.259644, 30.749443, 47.779282>,  <35.208652, 30.493162, 48.082134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259644, 30.749443, 47.779282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991486, 0.102750, -0.079987,
		0.026548, 0.760884, 0.648345,
		0.127478, 0.640701, -0.757133,
		35.297886, 30.941654, 47.552143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817661, 31.181810, 48.245060>,  <35.208652, 30.493162, 48.082134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817661, 31.181810, 48.245060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.850819, 31.149578, 47.847740>,  <34.870712, 31.130239, 47.609348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.850819, 31.149578, 47.847740>,  <34.817661, 31.181810, 48.245060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850819, 31.149578, 47.847740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960229, 0.260210, -0.101244,
		0.266623, 0.962184, -0.055804,
		0.082894, -0.080579, -0.993295,
		34.875687, 31.125404, 47.549751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512581, 31.796656, 48.045006>,  <34.817661, 31.181810, 48.245060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512581, 31.796656, 48.045006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.519573, 31.519693, 47.756489>,  <34.523769, 31.353516, 47.583378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.519573, 31.519693, 47.756489>,  <34.512581, 31.796656, 48.045006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519573, 31.519693, 47.756489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991653, 0.080161, -0.100983,
		0.127741, 0.717041, -0.685225,
		0.017480, -0.692406, -0.721297,
		34.524818, 31.311972, 47.540100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.432619, 33.019054, 52.542076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.832056, 33.039722, 52.537296>,  <30.071718, 33.052124, 52.534428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.832056, 33.039722, 52.537296>,  <29.432619, 33.019054, 52.542076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832056, 33.039722, 52.537296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019534, -0.567825, -0.822918,
		-0.049309, 0.821526, -0.568035,
		0.998593, 0.051674, -0.011951,
		30.131634, 33.055225, 52.533710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654966, 33.179890, 51.807240>,  <29.432619, 33.019054, 52.542076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654966, 33.179890, 51.807240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.980585, 33.052319, 52.001396>,  <30.175957, 32.975777, 52.117889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.980585, 33.052319, 52.001396>,  <29.654966, 33.179890, 51.807240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980585, 33.052319, 52.001396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351589, -0.394603, -0.848925,
		0.462287, 0.861725, -0.209094,
		0.814049, -0.318932, 0.485393,
		30.224800, 32.956638, 52.147015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283770, 33.357697, 51.395443>,  <29.654966, 33.179890, 51.807240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283770, 33.357697, 51.395443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.386766, 33.054337, 51.634953>,  <30.448565, 32.872322, 51.778656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.386766, 33.054337, 51.634953>,  <30.283770, 33.357697, 51.395443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386766, 33.054337, 51.634953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486442, -0.433681, -0.758482,
		0.834909, 0.486569, 0.257249,
		0.257490, -0.758400, 0.598772,
		30.464014, 32.826817, 51.814583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932537, 33.259617, 51.183544>,  <30.283770, 33.357697, 51.395443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932537, 33.259617, 51.183544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.854342, 32.917355, 51.375221>,  <30.807425, 32.711998, 51.490227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.854342, 32.917355, 51.375221>,  <30.932537, 33.259617, 51.183544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854342, 32.917355, 51.375221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402276, -0.515589, -0.756532,
		0.894403, 0.044876, 0.445004,
		-0.195490, -0.855660, 0.479197,
		30.795694, 32.660656, 51.518982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567375, 32.960205, 51.255318>,  <30.932537, 33.259617, 51.183544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567375, 32.960205, 51.255318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.280830, 32.682426, 51.282383>,  <31.108904, 32.515759, 51.298622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.280830, 32.682426, 51.282383>,  <31.567375, 32.960205, 51.255318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280830, 32.682426, 51.282383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484262, -0.564667, -0.668312,
		0.502314, -0.445983, 0.740797,
		-0.716359, -0.694442, 0.067668,
		31.065922, 32.474094, 51.302685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919271, 32.396999, 51.272236>,  <31.567375, 32.960205, 51.255318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919271, 32.396999, 51.272236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.554577, 32.261192, 51.179749>,  <31.335760, 32.179707, 51.124256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.554577, 32.261192, 51.179749>,  <31.919271, 32.396999, 51.272236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554577, 32.261192, 51.179749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403328, -0.633227, -0.660568,
		0.077865, -0.695520, 0.714275,
		-0.911736, -0.339522, -0.231217,
		31.281055, 32.159336, 51.110382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047386, 31.674870, 51.333736>,  <31.919271, 32.396999, 51.272236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047386, 31.674870, 51.333736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.717358, 31.751455, 51.121098>,  <31.519341, 31.797407, 50.993515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.717358, 31.751455, 51.121098>,  <32.047386, 31.674870, 51.333736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717358, 31.751455, 51.121098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343350, -0.577310, -0.740826,
		-0.448741, -0.793759, 0.410583,
		-0.825071, 0.191465, -0.531600,
		31.469835, 31.808895, 50.961617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886784, 30.967674, 51.063923>,  <32.047386, 31.674870, 51.333736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886784, 30.967674, 51.063923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.714960, 31.233780, 50.819660>,  <31.611866, 31.393444, 50.673103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.714960, 31.233780, 50.819660>,  <31.886784, 30.967674, 51.063923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714960, 31.233780, 50.819660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213662, -0.582152, -0.784505,
		-0.877398, -0.467465, 0.107926,
		-0.429558, 0.665264, -0.610659,
		31.586092, 31.433359, 50.636463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485476, 30.587843, 50.652081>,  <31.886784, 30.967674, 51.063923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485476, 30.587843, 50.652081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.531523, 30.935465, 50.459625>,  <31.559151, 31.144037, 50.344154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.531523, 30.935465, 50.459625>,  <31.485476, 30.587843, 50.652081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531523, 30.935465, 50.459625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148729, -0.493974, -0.856662,
		-0.982155, 0.027058, -0.186119,
		0.115117, 0.869056, -0.481135,
		31.566057, 31.196182, 50.315285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213936, 30.596586, 49.990673>,  <31.485476, 30.587843, 50.652081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213936, 30.596586, 49.990673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.480427, 30.894646, 49.978699>,  <31.640322, 31.073481, 49.971512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.480427, 30.894646, 49.978699>,  <31.213936, 30.596586, 49.990673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480427, 30.894646, 49.978699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425945, -0.413173, -0.804896,
		-0.612137, 0.523491, -0.592660,
		0.666227, 0.745147, -0.029940,
		31.680296, 31.118191, 49.969715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176523, 30.823996, 49.252220>,  <31.213936, 30.596586, 49.990673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176523, 30.823996, 49.252220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518650, 31.002342, 49.357773>,  <31.723927, 31.109350, 49.421104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518650, 31.002342, 49.357773>,  <31.176523, 30.823996, 49.252220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518650, 31.002342, 49.357773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414814, -0.284159, -0.864398,
		-0.310423, 0.848796, -0.427998,
		0.855317, 0.445869, 0.263883,
		31.775246, 31.136103, 49.436939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483032, 31.284380, 48.594677>,  <31.176523, 30.823996, 49.252220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483032, 31.284380, 48.594677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.773399, 31.196058, 48.855228>,  <31.947618, 31.143064, 49.011559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.773399, 31.196058, 48.855228>,  <31.483032, 31.284380, 48.594677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773399, 31.196058, 48.855228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536679, -0.410448, -0.737230,
		0.430140, 0.884747, -0.179449,
		0.725917, -0.220806, 0.651375,
		31.991175, 31.129816, 49.050640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205894, 31.542284, 48.326641>,  <31.483032, 31.284380, 48.594677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205894, 31.542284, 48.326641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.236057, 31.230480, 48.575375>,  <32.254154, 31.043398, 48.724613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.236057, 31.230480, 48.575375>,  <32.205894, 31.542284, 48.326641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236057, 31.230480, 48.575375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633305, -0.444247, -0.633695,
		0.770219, 0.441596, 0.460169,
		0.075408, -0.779511, 0.621833,
		32.258678, 30.996626, 48.761925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815243, 32.188473, 48.004951>,  <32.205894, 31.542284, 48.326641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815243, 32.188473, 48.004951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.749483, 32.263008, 47.617496>,  <31.710028, 32.307728, 47.385025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.749483, 32.263008, 47.617496>,  <31.815243, 32.188473, 48.004951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749483, 32.263008, 47.617496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036549, 0.982472, 0.182793,
		0.985717, -0.005351, -0.168328,
		-0.164399, 0.186335, -0.968634,
		31.700163, 32.318909, 47.326908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293156, 32.652607, 47.882351>,  <31.815243, 32.188473, 48.004951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293156, 32.652607, 47.882351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.035313, 32.712383, 47.582443>,  <31.880606, 32.748249, 47.402500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.035313, 32.712383, 47.582443>,  <32.293156, 32.652607, 47.882351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035313, 32.712383, 47.582443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066150, 0.987934, 0.140036,
		0.761646, 0.040671, -0.646716,
		-0.644608, 0.149438, -0.749765,
		31.841930, 32.757214, 47.357513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490738, 33.296520, 47.571999>,  <32.293156, 32.652607, 47.882351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490738, 33.296520, 47.571999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.129997, 33.243053, 47.407654>,  <31.913553, 33.210972, 47.309048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.129997, 33.243053, 47.407654>,  <32.490738, 33.296520, 47.571999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129997, 33.243053, 47.407654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142465, 0.989756, -0.009285,
		0.407891, 0.050159, -0.911652,
		-0.901848, -0.133666, -0.410859,
		31.859444, 33.202953, 47.284397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492805, 33.696598, 47.016083>,  <32.490738, 33.296520, 47.571999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492805, 33.696598, 47.016083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.098743, 33.669266, 47.079082>,  <31.862307, 33.652866, 47.116882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.098743, 33.669266, 47.079082>,  <32.492805, 33.696598, 47.016083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098743, 33.669266, 47.079082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107217, 0.961371, -0.253517,
		-0.134096, -0.266640, -0.954422,
		-0.985151, -0.068334, 0.157504,
		31.803198, 33.648766, 47.126335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159607, 34.076782, 46.546806>,  <32.492805, 33.696598, 47.016083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159607, 34.076782, 46.546806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.885885, 34.054214, 46.837612>,  <31.721653, 34.040672, 47.012096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.885885, 34.054214, 46.837612>,  <32.159607, 34.076782, 46.546806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885885, 34.054214, 46.837612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189674, 0.976456, -0.102749,
		-0.704098, -0.208207, -0.678893,
		-0.684302, -0.056423, 0.727012,
		31.680595, 34.037289, 47.055717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543797, 34.436356, 46.347038>,  <32.159607, 34.076782, 46.546806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543797, 34.436356, 46.347038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.529984, 34.421288, 46.746517>,  <31.521696, 34.412247, 46.986202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.529984, 34.421288, 46.746517>,  <31.543797, 34.436356, 46.347038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529984, 34.421288, 46.746517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308968, 0.950739, 0.025175,
		-0.950445, -0.307695, -0.044468,
		-0.034531, -0.037666, 0.998693,
		31.519625, 34.409988, 47.046124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951630, 34.923965, 46.538383>,  <31.543797, 34.436356, 46.347038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951630, 34.923965, 46.538383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.177498, 34.871853, 46.864372>,  <31.313019, 34.840588, 47.059967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.177498, 34.871853, 46.864372>,  <30.951630, 34.923965, 46.538383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177498, 34.871853, 46.864372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225315, 0.925617, 0.304081,
		-0.793966, -0.355330, 0.493313,
		0.564668, -0.130279, 0.814970,
		31.346899, 34.832767, 47.108864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533857, 35.213821, 47.130894>,  <30.951630, 34.923965, 46.538383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533857, 35.213821, 47.130894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.915304, 35.169281, 47.242764>,  <31.144173, 35.142559, 47.309883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.915304, 35.169281, 47.242764>,  <30.533857, 35.213821, 47.130894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915304, 35.169281, 47.242764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012090, 0.942491, 0.334013,
		-0.300779, -0.315139, 0.900122,
		0.953617, -0.111347, 0.279671,
		31.201389, 35.135876, 47.326664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498543, 35.536526, 47.768162>,  <30.533857, 35.213821, 47.130894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498543, 35.536526, 47.768162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.893791, 35.530216, 47.707012>,  <31.130939, 35.526428, 47.670322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.893791, 35.530216, 47.707012>,  <30.498543, 35.536526, 47.768162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893791, 35.530216, 47.707012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086011, 0.881114, 0.465017,
		0.127360, -0.472641, 0.872003,
		0.988120, -0.015777, -0.152871,
		31.190228, 35.525482, 47.661152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883341, 35.657078, 48.389332>,  <30.498543, 35.536526, 47.768162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883341, 35.657078, 48.389332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.170933, 35.730251, 48.121120>,  <31.343487, 35.774155, 47.960194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.170933, 35.730251, 48.121120>,  <30.883341, 35.657078, 48.389332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170933, 35.730251, 48.121120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286879, 0.800617, 0.526035,
		0.633063, -0.570567, 0.523147,
		0.718979, 0.182934, -0.670525,
		31.386627, 35.785133, 47.919964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481464, 35.634571, 48.737041>,  <30.883341, 35.657078, 48.389332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481464, 35.634571, 48.737041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.564573, 35.893040, 48.443295>,  <31.614439, 36.048122, 48.267048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.564573, 35.893040, 48.443295>,  <31.481464, 35.634571, 48.737041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564573, 35.893040, 48.443295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395205, 0.631292, 0.667296,
		0.894787, -0.428870, -0.124206,
		0.207773, 0.646174, -0.734363,
		31.626905, 36.086891, 48.222984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068199, 35.848507, 48.877243>,  <31.481464, 35.634571, 48.737041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068199, 35.848507, 48.877243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.931570, 36.135994, 48.634995>,  <31.849592, 36.308487, 48.489647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.931570, 36.135994, 48.634995>,  <32.068199, 35.848507, 48.877243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931570, 36.135994, 48.634995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321258, 0.694849, 0.643411,
		0.883245, 0.025211, -0.468234,
		-0.341573, 0.718714, -0.605623,
		31.829098, 36.351608, 48.453308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619419, 36.274002, 48.949055>,  <32.068199, 35.848507, 48.877243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619419, 36.274002, 48.949055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.298389, 36.470322, 48.813412>,  <32.105774, 36.588112, 48.732025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.298389, 36.470322, 48.813412>,  <32.619419, 36.274002, 48.949055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298389, 36.470322, 48.813412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190211, 0.749308, 0.634316,
		0.565420, 0.444582, -0.694728,
		-0.802571, 0.490800, -0.339109,
		32.057617, 36.617561, 48.711678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857582, 36.980556, 48.994179>,  <32.619419, 36.274002, 48.949055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857582, 36.980556, 48.994179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.458965, 37.010780, 48.980316>,  <32.219795, 37.028915, 48.972000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.458965, 37.010780, 48.980316>,  <32.857582, 36.980556, 48.994179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458965, 37.010780, 48.980316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026280, 0.681868, 0.731003,
		0.078868, 0.727562, -0.681493,
		-0.996539, 0.075562, -0.034658,
		32.160004, 37.033447, 48.969917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771297, 37.701447, 48.890884>,  <32.857582, 36.980556, 48.994179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771297, 37.701447, 48.890884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.426113, 37.562126, 49.037296>,  <32.219002, 37.478535, 49.125141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.426113, 37.562126, 49.037296>,  <32.771297, 37.701447, 48.890884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426113, 37.562126, 49.037296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025254, 0.693790, 0.719734,
		-0.504632, 0.630349, -0.589921,
		-0.862965, -0.348303, 0.366027,
		32.167225, 37.457634, 49.147106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866680, 38.230629, 48.294708>,  <32.771297, 37.701447, 48.890884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866680, 38.230629, 48.294708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176498, 38.481560, 48.327072>,  <33.362389, 38.632118, 48.346493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176498, 38.481560, 48.327072>,  <32.866680, 38.230629, 48.294708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176498, 38.481560, 48.327072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461277, -0.472684, -0.750862,
		-0.432787, 0.618899, -0.655484,
		0.774544, 0.627323, 0.080912,
		33.408863, 38.669758, 48.351345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044365, 38.386429, 47.594009>,  <32.866680, 38.230629, 48.294708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044365, 38.386429, 47.594009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.358284, 38.460552, 47.830570>,  <33.546635, 38.505028, 47.972504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.358284, 38.460552, 47.830570>,  <33.044365, 38.386429, 47.594009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358284, 38.460552, 47.830570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574392, -0.575831, -0.581800,
		0.232731, 0.796290, -0.558352,
		0.784799, 0.185310, 0.591397,
		33.593723, 38.516144, 48.007988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512707, 38.535522, 47.143791>,  <33.044365, 38.386429, 47.594009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512707, 38.535522, 47.143791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.686085, 38.427799, 47.487789>,  <33.790112, 38.363167, 47.694187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.686085, 38.427799, 47.487789>,  <33.512707, 38.535522, 47.143791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686085, 38.427799, 47.487789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617093, -0.606766, -0.501030,
		0.656749, 0.747869, -0.096814,
		0.433448, -0.269307, 0.859998,
		33.816120, 38.347008, 47.745789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128315, 38.422405, 46.961742>,  <33.512707, 38.535522, 47.143791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128315, 38.422405, 46.961742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.125263, 38.254906, 47.324970>,  <34.123432, 38.154404, 47.542908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.125263, 38.254906, 47.324970>,  <34.128315, 38.422405, 46.961742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125263, 38.254906, 47.324970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624244, -0.711412, -0.322821,
		0.781192, 0.564393, 0.266831,
		-0.007629, -0.418752, 0.908068,
		34.122974, 38.129280, 47.597389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831112, 38.380981, 47.219280>,  <34.128315, 38.422405, 46.961742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831112, 38.380981, 47.219280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.642311, 38.108356, 47.442955>,  <34.529030, 37.944782, 47.577160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.642311, 38.108356, 47.442955>,  <34.831112, 38.380981, 47.219280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642311, 38.108356, 47.442955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745896, -0.646853, -0.158810,
		0.469951, 0.342138, 0.813688,
		-0.472001, -0.681559, 0.559188,
		34.500710, 37.903889, 47.610710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353844, 38.043056, 47.661041>,  <34.831112, 38.380981, 47.219280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353844, 38.043056, 47.661041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.058617, 37.773716, 47.643795>,  <34.881481, 37.612110, 47.633446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.058617, 37.773716, 47.643795>,  <35.353844, 38.043056, 47.661041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058617, 37.773716, 47.643795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672736, -0.739289, 0.029654,
		-0.051843, -0.007119, 0.998630,
		-0.738065, -0.673351, -0.043116,
		34.837196, 37.571712, 47.630859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457478, 37.600471, 48.139397>,  <35.353844, 38.043056, 47.661041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457478, 37.600471, 48.139397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.221516, 37.411106, 47.877743>,  <35.079941, 37.297485, 47.720749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.221516, 37.411106, 47.877743>,  <35.457478, 37.600471, 48.139397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221516, 37.411106, 47.877743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776919, -0.553510, -0.300039,
		-0.220027, -0.685204, 0.694322,
		-0.589902, -0.473415, -0.654136,
		35.044544, 37.269081, 47.681503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692055, 36.921604, 48.222446>,  <35.457478, 37.600471, 48.139397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692055, 36.921604, 48.222446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.453320, 36.869003, 47.905842>,  <35.310078, 36.837440, 47.715881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.453320, 36.869003, 47.905842>,  <35.692055, 36.921604, 48.222446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453320, 36.869003, 47.905842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671624, -0.621594, -0.403166,
		-0.438978, -0.772222, 0.459316,
		-0.596842, -0.131507, -0.791508,
		35.274265, 36.829552, 47.668388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554520, 36.196697, 48.135105>,  <35.692055, 36.921604, 48.222446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554520, 36.196697, 48.135105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531475, 36.402744, 47.793034>,  <35.517647, 36.526375, 47.587791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531475, 36.402744, 47.793034>,  <35.554520, 36.196697, 48.135105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531475, 36.402744, 47.793034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681085, -0.606022, -0.410926,
		-0.729934, -0.606124, -0.315927,
		-0.057614, 0.515122, -0.855178,
		35.514191, 36.557281, 47.536480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532574, 35.738922, 47.627686>,  <35.554520, 36.196697, 48.135105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532574, 35.738922, 47.627686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.686035, 36.055279, 47.436985>,  <35.778114, 36.245094, 47.322563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.686035, 36.055279, 47.436985>,  <35.532574, 35.738922, 47.627686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686035, 36.055279, 47.436985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708213, -0.583303, -0.397734,
		-0.592657, -0.185048, -0.783910,
		0.383657, 0.790895, -0.476752,
		35.801132, 36.292549, 47.293961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775280, 35.510849, 47.026047>,  <35.532574, 35.738922, 47.627686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775280, 35.510849, 47.026047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.952686, 35.866322, 47.072598>,  <36.059132, 36.079605, 47.100529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.952686, 35.866322, 47.072598>,  <35.775280, 35.510849, 47.026047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952686, 35.866322, 47.072598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851367, -0.377151, -0.364597,
		-0.280117, 0.260786, -0.923864,
		0.443518, 0.888677, 0.116378,
		36.085743, 36.132923, 47.107510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248650, 35.386211, 46.647114>,  <35.775280, 35.510849, 47.026047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248650, 35.386211, 46.647114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.384205, 35.714054, 46.831894>,  <36.465538, 35.910759, 46.942760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.384205, 35.714054, 46.831894>,  <36.248650, 35.386211, 46.647114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384205, 35.714054, 46.831894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940326, -0.279076, -0.194690,
		-0.030650, 0.500363, -0.865273,
		0.338893, 0.819606, 0.461951,
		36.485874, 35.959934, 46.970478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.933697, 42.176395, 52.703407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.572838, 42.274883, 52.561699>,  <32.356323, 42.333977, 52.476673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.572838, 42.274883, 52.561699>,  <32.933697, 42.176395, 52.703407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572838, 42.274883, 52.561699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148686, -0.593408, -0.791050,
		-0.404993, -0.766319, 0.498734,
		-0.902149, 0.246215, -0.354266,
		32.302193, 42.348747, 52.455418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531292, 41.605770, 52.593548>,  <32.933697, 42.176395, 52.703407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531292, 41.605770, 52.593548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.352364, 41.852535, 52.334530>,  <32.245007, 42.000595, 52.179119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.352364, 41.852535, 52.334530>,  <32.531292, 41.605770, 52.593548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352364, 41.852535, 52.334530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103998, -0.683233, -0.722757,
		-0.888304, -0.390651, 0.241470,
		-0.447326, 0.616915, -0.647545,
		32.218166, 42.037609, 52.140266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939171, 41.221455, 52.354126>,  <32.531292, 41.605770, 52.593548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939171, 41.221455, 52.354126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.088539, 41.493561, 52.101841>,  <32.178162, 41.656822, 51.950470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.088539, 41.493561, 52.101841>,  <31.939171, 41.221455, 52.354126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088539, 41.493561, 52.101841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035851, -0.668807, -0.742571,
		-0.926968, 0.299904, -0.225360,
		0.373422, 0.680261, -0.630715,
		32.200565, 41.697639, 51.912628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803164, 40.910324, 51.718288>,  <31.939171, 41.221455, 52.354126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803164, 40.910324, 51.718288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.030193, 41.214916, 51.593067>,  <32.166412, 41.397671, 51.517937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.030193, 41.214916, 51.593067>,  <31.803164, 40.910324, 51.718288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030193, 41.214916, 51.593067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172075, -0.481546, -0.859362,
		-0.805140, 0.433883, -0.404345,
		0.567574, 0.761485, -0.313051,
		32.200466, 41.443363, 51.499153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628502, 40.976971, 51.001144>,  <31.803164, 40.910324, 51.718288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628502, 40.976971, 51.001144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.975349, 41.172421, 51.039818>,  <32.183456, 41.289692, 51.063023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.975349, 41.172421, 51.039818>,  <31.628502, 40.976971, 51.001144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975349, 41.172421, 51.039818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302819, -0.363016, -0.881204,
		-0.395479, 0.793388, -0.462743,
		0.867120, 0.488625, 0.096688,
		32.235485, 41.319008, 51.068825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768063, 41.333015, 50.256603>,  <31.628502, 40.976971, 51.001144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768063, 41.333015, 50.256603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.111385, 41.318031, 50.461311>,  <32.317379, 41.309040, 50.584137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.111385, 41.318031, 50.461311>,  <31.768063, 41.333015, 50.256603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111385, 41.318031, 50.461311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454564, -0.407213, -0.792180,
		0.238073, 0.912565, -0.332486,
		0.858308, -0.037460, 0.511766,
		32.368877, 41.306793, 50.614841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293976, 41.460110, 49.684048>,  <31.768063, 41.333015, 50.256603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293976, 41.460110, 49.684048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.474152, 41.310326, 50.008240>,  <32.582256, 41.220455, 50.202755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.474152, 41.310326, 50.008240>,  <32.293976, 41.460110, 49.684048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474152, 41.310326, 50.008240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642987, -0.493748, -0.585475,
		0.619410, 0.784853, 0.018366,
		0.450443, -0.374458, 0.810482,
		32.609283, 41.197987, 50.251385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068581, 41.517380, 49.609226>,  <32.293976, 41.460110, 49.684048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068581, 41.517380, 49.609226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.019299, 41.212059, 49.862896>,  <32.989727, 41.028866, 50.015099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.019299, 41.212059, 49.862896>,  <33.068581, 41.517380, 49.609226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019299, 41.212059, 49.862896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566809, -0.578683, -0.586390,
		0.814584, 0.287210, 0.503948,
		-0.123209, -0.763307, 0.634179,
		32.982334, 40.983067, 50.053150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702049, 41.157719, 49.578907>,  <33.068581, 41.517380, 49.609226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702049, 41.157719, 49.578907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.456638, 40.896461, 49.756439>,  <33.309391, 40.739708, 49.862957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.456638, 40.896461, 49.756439>,  <33.702049, 41.157719, 49.578907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456638, 40.896461, 49.756439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298230, -0.712064, -0.635628,
		0.731195, -0.257610, 0.631657,
		-0.613525, -0.653147, 0.443831,
		33.272579, 40.700516, 49.889587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055443, 40.552143, 49.548851>,  <33.702049, 41.157719, 49.578907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055443, 40.552143, 49.548851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.695107, 40.392197, 49.616478>,  <33.478905, 40.296227, 49.657055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.695107, 40.392197, 49.616478>,  <34.055443, 40.552143, 49.548851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695107, 40.392197, 49.616478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282024, -0.835070, -0.472355,
		0.330063, -0.377838, 0.865041,
		-0.900844, -0.399870, 0.169066,
		33.424854, 40.272236, 49.667198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167889, 39.844440, 49.797672>,  <34.055443, 40.552143, 49.548851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167889, 39.844440, 49.797672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.794491, 39.857296, 49.654812>,  <33.570454, 39.865009, 49.569096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.794491, 39.857296, 49.654812>,  <34.167889, 39.844440, 49.797672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794491, 39.857296, 49.654812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135635, -0.890335, -0.434634,
		-0.331950, -0.454170, 0.826764,
		-0.933495, 0.032139, -0.357148,
		33.514442, 39.866940, 49.547668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846024, 39.165703, 49.863518>,  <34.167889, 39.844440, 49.797672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846024, 39.165703, 49.863518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.629314, 39.352772, 49.584156>,  <33.499287, 39.465012, 49.416538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.629314, 39.352772, 49.584156>,  <33.846024, 39.165703, 49.863518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629314, 39.352772, 49.584156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113992, -0.782353, -0.612315,
		-0.832757, -0.411350, 0.370549,
		-0.541776, 0.467670, -0.698401,
		33.466782, 39.493073, 49.374638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427700, 38.635857, 49.555325>,  <33.846024, 39.165703, 49.863518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427700, 38.635857, 49.555325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.392757, 38.927822, 49.284149>,  <33.371792, 39.103001, 49.121445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.392757, 38.927822, 49.284149>,  <33.427700, 38.635857, 49.555325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392757, 38.927822, 49.284149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145648, -0.663868, -0.733530,
		-0.985473, -0.162817, -0.048318,
		-0.087355, 0.729911, -0.677938,
		33.366550, 39.146797, 49.080769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005177, 38.352028, 49.092880>,  <33.427700, 38.635857, 49.555325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005177, 38.352028, 49.092880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.190815, 38.646145, 48.895309>,  <33.302197, 38.822617, 48.776768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.190815, 38.646145, 48.895309>,  <33.005177, 38.352028, 49.092880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190815, 38.646145, 48.895309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125133, -0.606444, -0.785218,
		-0.876903, 0.302608, -0.373456,
		0.464093, 0.735292, -0.493927,
		33.330044, 38.866734, 48.747131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239220, 38.340954, 49.048786>,  <33.005177, 38.352028, 49.092880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239220, 38.340954, 49.048786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.088589, 38.044624, 49.271271>,  <31.998211, 37.866825, 49.404762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.088589, 38.044624, 49.271271>,  <32.239220, 38.340954, 49.048786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088589, 38.044624, 49.271271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203605, 0.651913, 0.730449,
		-0.903736, 0.161821, -0.396329,
		-0.376573, -0.740827, 0.556209,
		31.975616, 37.822376, 49.438133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627039, 38.560120, 49.408878>,  <32.239220, 38.340954, 49.048786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627039, 38.560120, 49.408878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.722269, 38.260120, 49.655720>,  <31.779408, 38.080120, 49.803825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.722269, 38.260120, 49.655720>,  <31.627039, 38.560120, 49.408878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722269, 38.260120, 49.655720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380544, 0.512543, 0.769731,
		-0.893592, -0.418090, -0.163385,
		0.238075, -0.750000, 0.617106,
		31.793692, 38.035122, 49.840851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147423, 38.599361, 49.824791>,  <31.627039, 38.560120, 49.408878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147423, 38.599361, 49.824791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.398457, 38.369171, 50.034538>,  <31.549076, 38.231056, 50.160385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.398457, 38.369171, 50.034538>,  <31.147423, 38.599361, 49.824791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398457, 38.369171, 50.034538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426798, 0.308992, 0.849922,
		-0.651138, -0.757196, -0.051696,
		0.627584, -0.575480, 0.524366,
		31.586731, 38.196526, 50.191849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729523, 38.393463, 50.326778>,  <31.147423, 38.599361, 49.824791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729523, 38.393463, 50.326778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.097237, 38.333870, 50.472500>,  <31.317865, 38.298115, 50.559933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.097237, 38.333870, 50.472500>,  <30.729523, 38.393463, 50.326778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097237, 38.333870, 50.472500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300984, 0.330321, 0.894593,
		-0.253617, -0.932036, 0.258818,
		0.919286, -0.148984, 0.364303,
		31.373022, 38.289173, 50.581791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711573, 38.046017, 50.962967>,  <30.729523, 38.393463, 50.326778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711573, 38.046017, 50.962967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.067459, 38.227577, 50.982491>,  <31.280991, 38.336514, 50.994205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.067459, 38.227577, 50.982491>,  <30.711573, 38.046017, 50.962967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067459, 38.227577, 50.982491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177178, 0.244798, 0.953248,
		0.420730, -0.856767, 0.298221,
		0.889716, 0.453898, 0.048806,
		31.334373, 38.363747, 50.997131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986095, 37.908772, 51.666985>,  <30.711573, 38.046017, 50.962967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986095, 37.908772, 51.666985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.205238, 38.211262, 51.523888>,  <31.336723, 38.392757, 51.438030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.205238, 38.211262, 51.523888>,  <30.986095, 37.908772, 51.666985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205238, 38.211262, 51.523888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201420, 0.534285, 0.820956,
		0.811964, -0.377708, 0.445029,
		0.547854, 0.756225, -0.357743,
		31.369595, 38.438129, 51.416565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578733, 38.167484, 52.145000>,  <30.986095, 37.908772, 51.666985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578733, 38.167484, 52.145000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.471968, 38.483040, 51.923584>,  <31.407907, 38.672375, 51.790733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.471968, 38.483040, 51.923584>,  <31.578733, 38.167484, 52.145000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471968, 38.483040, 51.923584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135770, 0.537867, 0.832025,
		0.954109, 0.297233, -0.036456,
		-0.266914, 0.788892, -0.553540,
		31.391893, 38.719707, 51.757523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652826, 38.729183, 52.625916>,  <31.578733, 38.167484, 52.145000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652826, 38.729183, 52.625916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.464058, 38.889099, 52.311600>,  <31.350798, 38.985050, 52.123013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.464058, 38.889099, 52.311600>,  <31.652826, 38.729183, 52.625916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464058, 38.889099, 52.311600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386272, 0.707421, 0.591904,
		0.792518, 0.582859, -0.179419,
		-0.471921, 0.399790, -0.785785,
		31.322481, 39.009037, 52.075863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881161, 39.441200, 52.635632>,  <31.652826, 38.729183, 52.625916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881161, 39.441200, 52.635632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.540012, 39.416809, 52.428211>,  <31.335323, 39.402176, 52.303761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.540012, 39.416809, 52.428211>,  <31.881161, 39.441200, 52.635632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540012, 39.416809, 52.428211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394396, 0.726050, 0.563296,
		0.342143, 0.684932, -0.643278,
		-0.852872, -0.060979, -0.518548,
		31.284151, 39.398514, 52.272648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640833, 40.128647, 52.313919>,  <31.881161, 39.441200, 52.635632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640833, 40.128647, 52.313919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.317917, 39.894005, 52.339794>,  <31.124168, 39.753220, 52.355320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.317917, 39.894005, 52.339794>,  <31.640833, 40.128647, 52.313919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317917, 39.894005, 52.339794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452651, 0.685791, 0.569911,
		-0.378672, 0.430802, -0.819156,
		-0.807289, -0.586601, 0.064687,
		31.075729, 39.718025, 52.359200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042130, 40.648144, 52.287403>,  <31.640833, 40.128647, 52.313919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042130, 40.648144, 52.287403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.898699, 40.314701, 52.455463>,  <30.812639, 40.114635, 52.556297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.898699, 40.314701, 52.455463>,  <31.042130, 40.648144, 52.287403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898699, 40.314701, 52.455463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533092, 0.552330, 0.640893,
		-0.766312, 0.005833, -0.642442,
		-0.358579, -0.833605, 0.420148,
		30.791124, 40.064621, 52.581509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335190, 40.842625, 52.394150>,  <31.042130, 40.648144, 52.287403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335190, 40.842625, 52.394150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.373726, 40.501015, 52.598644>,  <30.396847, 40.296047, 52.721340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.373726, 40.501015, 52.598644>,  <30.335190, 40.842625, 52.394150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373726, 40.501015, 52.598644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482836, 0.409044, 0.774307,
		-0.870395, -0.321438, -0.372948,
		0.096339, -0.854026, 0.511232,
		30.402628, 40.244808, 52.752014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743397, 40.836334, 52.818836>,  <30.335190, 40.842625, 52.394150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743397, 40.836334, 52.818836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.995899, 40.577366, 52.989647>,  <30.147402, 40.421986, 53.092133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.995899, 40.577366, 52.989647>,  <29.743397, 40.836334, 52.818836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995899, 40.577366, 52.989647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331401, 0.272636, 0.903240,
		-0.701204, -0.711695, -0.042454,
		0.631257, -0.647425, 0.427030,
		30.185276, 40.383137, 53.117756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357115, 40.324303, 53.240559>,  <29.743397, 40.836334, 52.818836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357115, 40.324303, 53.240559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.726307, 40.339966, 53.393700>,  <29.947823, 40.349365, 53.485584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.726307, 40.339966, 53.393700>,  <29.357115, 40.324303, 53.240559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726307, 40.339966, 53.393700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377851, 0.281059, 0.882176,
		-0.073057, -0.958891, 0.274209,
		0.922980, 0.039161, 0.382851,
		30.003201, 40.351715, 53.508556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.573608, 37.717716, 56.859947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.272747, 37.898335, 56.667957>,  <34.092232, 38.006706, 56.552765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.272747, 37.898335, 56.667957>,  <34.573608, 37.717716, 56.859947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272747, 37.898335, 56.667957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226707, -0.506588, -0.831849,
		-0.618763, -0.734492, 0.278664,
		-0.752154, 0.451543, -0.479972,
		34.047100, 38.033798, 56.523964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390347, 37.194080, 56.404999>,  <34.573608, 37.717716, 56.859947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390347, 37.194080, 56.404999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269871, 37.544132, 56.253510>,  <34.197586, 37.754162, 56.162617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269871, 37.544132, 56.253510>,  <34.390347, 37.194080, 56.404999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269871, 37.544132, 56.253510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271622, -0.301977, -0.913800,
		-0.914059, -0.378101, -0.146751,
		-0.301194, 0.875128, -0.378725,
		34.179512, 37.806671, 56.139893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033985, 36.988052, 55.791515>,  <34.390347, 37.194080, 56.404999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033985, 36.988052, 55.791515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.096256, 37.376148, 55.717331>,  <34.133617, 37.609005, 55.672821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.096256, 37.376148, 55.717331>,  <34.033985, 36.988052, 55.791515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096256, 37.376148, 55.717331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202079, -0.215060, -0.955465,
		-0.966917, 0.111267, -0.229546,
		0.155677, 0.970242, -0.185461,
		34.142960, 37.667221, 55.661694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606125, 37.168758, 55.217220>,  <34.033985, 36.988052, 55.791515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606125, 37.168758, 55.217220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.915283, 37.422363, 55.227455>,  <34.100777, 37.574528, 55.233597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.915283, 37.422363, 55.227455>,  <33.606125, 37.168758, 55.217220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915283, 37.422363, 55.227455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222653, -0.233217, -0.946591,
		-0.594186, 0.737315, -0.321418,
		0.772897, 0.634016, 0.025591,
		34.147152, 37.612568, 55.235134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586586, 37.431988, 54.587276>,  <33.606125, 37.168758, 55.217220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586586, 37.431988, 54.587276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.956013, 37.540791, 54.695374>,  <34.177670, 37.606071, 54.760231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.956013, 37.540791, 54.695374>,  <33.586586, 37.431988, 54.587276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956013, 37.540791, 54.695374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348797, -0.303249, -0.886781,
		-0.159261, 0.913264, -0.374947,
		0.923568, 0.272010, 0.270247,
		34.233082, 37.622395, 54.776447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857983, 37.966831, 54.085365>,  <33.586586, 37.431988, 54.587276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857983, 37.966831, 54.085365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.181812, 37.797771, 54.248322>,  <34.376110, 37.696335, 54.346096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.181812, 37.797771, 54.248322>,  <33.857983, 37.966831, 54.085365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181812, 37.797771, 54.248322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389093, -0.133292, -0.911504,
		0.439548, 0.896438, 0.056541,
		0.809570, -0.422649, 0.407386,
		34.424683, 37.670979, 54.370537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342812, 38.166008, 53.645405>,  <33.857983, 37.966831, 54.085365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342812, 38.166008, 53.645405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.535458, 37.879158, 53.846909>,  <34.651047, 37.707047, 53.967812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.535458, 37.879158, 53.846909>,  <34.342812, 38.166008, 53.645405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535458, 37.879158, 53.846909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469042, -0.274641, -0.839388,
		0.740299, 0.640550, 0.204090,
		0.481619, -0.717125, 0.503761,
		34.679943, 37.664021, 53.998035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160503, 38.129658, 53.414593>,  <34.342812, 38.166008, 53.645405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160503, 38.129658, 53.414593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.077778, 37.786663, 53.603035>,  <35.028145, 37.580868, 53.716103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.077778, 37.786663, 53.603035>,  <35.160503, 38.129658, 53.414593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077778, 37.786663, 53.603035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607735, -0.489947, -0.624988,
		0.766738, 0.157055, 0.622452,
		-0.206811, -0.857488, 0.471109,
		35.015736, 37.529415, 53.744366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793461, 37.815971, 53.327461>,  <35.160503, 38.129658, 53.414593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793461, 37.815971, 53.327461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.522030, 37.533138, 53.407028>,  <35.359173, 37.363438, 53.454769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.522030, 37.533138, 53.407028>,  <35.793461, 37.815971, 53.327461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522030, 37.533138, 53.407028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511977, -0.649488, -0.562178,
		0.526704, -0.279637, 0.802737,
		-0.678574, -0.707085, 0.198920,
		35.318459, 37.321014, 53.466705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094616, 37.274220, 53.643063>,  <35.793461, 37.815971, 53.327461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094616, 37.274220, 53.643063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.767090, 37.069363, 53.539326>,  <35.570576, 36.946449, 53.477085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.767090, 37.069363, 53.539326>,  <36.094616, 37.274220, 53.643063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767090, 37.069363, 53.539326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566351, -0.646885, -0.510673,
		0.093776, -0.565021, 0.819730,
		-0.818812, -0.512144, -0.259338,
		35.521446, 36.915718, 53.461525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039543, 36.668781, 53.960533>,  <36.094616, 37.274220, 53.643063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039543, 36.668781, 53.960533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825542, 36.593117, 53.631172>,  <35.697140, 36.547718, 53.433556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825542, 36.593117, 53.631172>,  <36.039543, 36.668781, 53.960533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825542, 36.593117, 53.631172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620444, -0.749472, -0.230957,
		-0.573427, -0.634437, 0.518335,
		-0.535005, -0.189161, -0.823400,
		35.665039, 36.536369, 53.384151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951431, 35.999405, 53.944660>,  <36.039543, 36.668781, 53.960533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951431, 35.999405, 53.944660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844402, 36.084595, 53.568779>,  <35.780186, 36.135708, 53.343250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844402, 36.084595, 53.568779>,  <35.951431, 35.999405, 53.944660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844402, 36.084595, 53.568779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494311, -0.806806, -0.323605,
		-0.827081, -0.551094, 0.110601,
		-0.267571, 0.212976, -0.939706,
		35.764130, 36.148487, 53.286869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656322, 35.444324, 53.718853>,  <35.951431, 35.999405, 53.944660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656322, 35.444324, 53.718853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.766094, 35.637039, 53.385971>,  <35.831959, 35.752666, 53.186241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.766094, 35.637039, 53.385971>,  <35.656322, 35.444324, 53.718853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766094, 35.637039, 53.385971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417700, -0.839249, -0.348122,
		-0.866149, -0.252076, -0.431560,
		0.274433, 0.481788, -0.832206,
		35.848423, 35.781574, 53.136311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274441, 35.225555, 52.974983>,  <35.656322, 35.444324, 53.718853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274441, 35.225555, 52.974983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633087, 35.387497, 52.903244>,  <35.848274, 35.484661, 52.860199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633087, 35.387497, 52.903244>,  <35.274441, 35.225555, 52.974983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633087, 35.387497, 52.903244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258262, -0.807139, -0.530874,
		-0.359684, 0.429674, -0.828256,
		0.896621, 0.404854, -0.179347,
		35.902073, 35.508953, 52.849442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617844, 35.194458, 52.744698>,  <35.274441, 35.225555, 52.974983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617844, 35.194458, 52.744698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.338440, 34.929375, 52.852703>,  <34.170799, 34.770325, 52.917507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.338440, 34.929375, 52.852703>,  <34.617844, 35.194458, 52.744698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338440, 34.929375, 52.852703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436241, 0.693446, 0.573434,
		-0.567259, 0.282756, -0.773477,
		-0.698506, -0.662708, 0.270014,
		34.128887, 34.730564, 52.933708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028591, 35.587646, 52.702042>,  <34.617844, 35.194458, 52.744698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028591, 35.587646, 52.702042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.961765, 35.286480, 52.956665>,  <33.921669, 35.105782, 53.109440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.961765, 35.286480, 52.956665>,  <34.028591, 35.587646, 52.702042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961765, 35.286480, 52.956665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418187, 0.638797, 0.645801,
		-0.892865, -0.158308, -0.421581,
		-0.167069, -0.752913, 0.636562,
		33.911644, 35.060608, 53.147633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309364, 35.715084, 52.866226>,  <34.028591, 35.587646, 52.702042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309364, 35.715084, 52.866226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.460716, 35.495754, 53.164532>,  <33.551529, 35.364155, 53.343517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.460716, 35.495754, 53.164532>,  <33.309364, 35.715084, 52.866226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460716, 35.495754, 53.164532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513597, 0.545912, 0.661965,
		-0.770094, -0.633500, -0.075054,
		0.378382, -0.548323, 0.745767,
		33.574230, 35.331257, 53.388264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776073, 35.791328, 53.305286>,  <33.309364, 35.715084, 52.866226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776073, 35.791328, 53.305286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068352, 35.656513, 53.542767>,  <33.243721, 35.575623, 53.685257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068352, 35.656513, 53.542767>,  <32.776073, 35.791328, 53.305286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068352, 35.656513, 53.542767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454682, 0.408453, 0.791474,
		-0.509259, -0.848274, 0.145209,
		0.730698, -0.337041, 0.593704,
		33.287560, 35.555401, 53.720879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409184, 35.403172, 53.831966>,  <32.776073, 35.791328, 53.305286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409184, 35.403172, 53.831966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753822, 35.482960, 54.018669>,  <32.960606, 35.530834, 54.130692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753822, 35.482960, 54.018669>,  <32.409184, 35.403172, 53.831966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753822, 35.482960, 54.018669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503738, 0.222839, 0.834620,
		0.062471, -0.954229, 0.292479,
		0.861595, 0.199473, 0.466761,
		33.012302, 35.542801, 54.158699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415867, 34.993927, 54.398869>,  <32.409184, 35.403172, 53.831966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415867, 34.993927, 54.398869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.676094, 35.281231, 54.497547>,  <32.832230, 35.453613, 54.556755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.676094, 35.281231, 54.497547>,  <32.415867, 34.993927, 54.398869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676094, 35.281231, 54.497547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493076, 0.152425, 0.856529,
		0.577609, -0.678872, 0.453321,
		0.650571, 0.718261, 0.246694,
		32.871265, 35.496708, 54.571556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607494, 34.901768, 55.005943>,  <32.415867, 34.993927, 54.398869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607494, 34.901768, 55.005943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.705338, 35.289333, 54.991093>,  <32.764046, 35.521873, 54.982182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.705338, 35.289333, 54.991093>,  <32.607494, 34.901768, 55.005943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705338, 35.289333, 54.991093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393812, 0.134264, 0.909332,
		0.886046, -0.207813, 0.414411,
		0.244612, 0.968910, -0.037125,
		32.778721, 35.580006, 54.979954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671558, 35.074577, 55.731339>,  <32.607494, 34.901768, 55.005943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671558, 35.074577, 55.731339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.663090, 35.420490, 55.530655>,  <32.658009, 35.628036, 55.410244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.663090, 35.420490, 55.530655>,  <32.671558, 35.074577, 55.731339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663090, 35.420490, 55.530655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574582, 0.400142, 0.713963,
		0.818174, 0.303385, 0.488415,
		-0.021170, 0.864780, -0.501705,
		32.656738, 35.679924, 55.380142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008911, 35.616116, 56.161953>,  <32.671558, 35.074577, 55.731339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008911, 35.616116, 56.161953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757519, 35.785923, 55.901249>,  <32.606682, 35.887810, 55.744827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757519, 35.785923, 55.901249>,  <33.008911, 35.616116, 56.161953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757519, 35.785923, 55.901249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490239, 0.434355, 0.755647,
		0.603884, 0.794428, -0.064867,
		-0.628482, 0.424523, -0.651760,
		32.568974, 35.913280, 55.705723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941864, 36.233669, 56.453278>,  <33.008911, 35.616116, 56.161953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941864, 36.233669, 56.453278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.624744, 36.161304, 56.220474>,  <32.434471, 36.117886, 56.080791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.624744, 36.161304, 56.220474>,  <32.941864, 36.233669, 56.453278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624744, 36.161304, 56.220474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604346, 0.357002, 0.712261,
		0.078924, 0.916417, -0.392364,
		-0.792804, -0.180909, -0.582009,
		32.386902, 36.107033, 56.045872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638474, 36.904915, 56.191170>,  <32.941864, 36.233669, 56.453278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638474, 36.904915, 56.191170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.385368, 36.599106, 56.240353>,  <32.233505, 36.415623, 56.269863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.385368, 36.599106, 56.240353>,  <32.638474, 36.904915, 56.191170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385368, 36.599106, 56.240353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410120, 0.465569, 0.784250,
		-0.656819, 0.445820, -0.608140,
		-0.632765, -0.764520, 0.122955,
		32.195538, 36.369751, 56.277241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913303, 37.050789, 56.071785>,  <32.638474, 36.904915, 56.191170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913303, 37.050789, 56.071785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.917091, 36.743103, 56.327354>,  <31.919365, 36.558491, 56.480698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.917091, 36.743103, 56.327354>,  <31.913303, 37.050789, 56.071785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917091, 36.743103, 56.327354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509768, 0.545975, 0.664867,
		-0.860260, -0.331999, -0.386949,
		0.009471, -0.769212, 0.638923,
		31.919933, 36.512341, 56.519032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263021, 37.194588, 56.417767>,  <31.913303, 37.050789, 56.071785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263021, 37.194588, 56.417767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.435574, 36.910709, 56.640564>,  <31.539104, 36.740383, 56.774242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.435574, 36.910709, 56.640564>,  <31.263021, 37.194588, 56.417767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435574, 36.910709, 56.640564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449763, 0.366025, 0.814702,
		-0.782065, -0.601962, -0.161299,
		0.431380, -0.709696, 0.556995,
		31.564987, 36.697800, 56.807663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756689, 36.860023, 56.800854>,  <31.263021, 37.194588, 56.417767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756689, 36.860023, 56.800854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093969, 36.817276, 57.011600>,  <31.296337, 36.791626, 57.138050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093969, 36.817276, 57.011600>,  <30.756689, 36.860023, 56.800854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093969, 36.817276, 57.011600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453779, 0.384015, 0.804125,
		-0.288260, -0.917121, 0.275308,
		0.843203, -0.106868, 0.526867,
		31.346930, 36.785217, 57.169659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963074, 36.687447, 56.757816>,  <30.756689, 36.860023, 56.800854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963074, 36.687447, 56.757816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.776978, 36.923252, 56.493690>,  <29.665319, 37.064735, 56.335213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.776978, 36.923252, 56.493690>,  <29.963074, 36.687447, 56.757816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776978, 36.923252, 56.493690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167932, -0.791201, -0.588047,
		-0.869108, -0.162696, 0.467099,
		-0.465242, 0.589517, -0.660318,
		29.637405, 37.100109, 56.295597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159901, 36.488468, 56.650539>,  <29.963074, 36.687447, 56.757816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159901, 36.488468, 56.650539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.273489, 36.677395, 56.316765>,  <29.341642, 36.790752, 56.116501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.273489, 36.677395, 56.316765>,  <29.159901, 36.488468, 56.650539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273489, 36.677395, 56.316765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197320, -0.822845, -0.532907,
		-0.938310, 0.315980, -0.140466,
		0.283970, 0.472315, -0.834433,
		29.358681, 36.819088, 56.066433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896263, 36.079754, 56.177700>,  <29.159901, 36.488468, 56.650539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896263, 36.079754, 56.177700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.131817, 36.310474, 55.951244>,  <29.273149, 36.448906, 55.815369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.131817, 36.310474, 55.951244>,  <28.896263, 36.079754, 56.177700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131817, 36.310474, 55.951244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065961, -0.732446, -0.677622,
		-0.805520, 0.361699, -0.469373,
		0.588885, 0.576799, -0.566142,
		29.308483, 36.483513, 55.781403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615084, 35.946884, 55.542309>,  <28.896263, 36.079754, 56.177700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615084, 35.946884, 55.542309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.975666, 36.105972, 55.473965>,  <29.192017, 36.201424, 55.432957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.975666, 36.105972, 55.473965>,  <28.615084, 35.946884, 55.542309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975666, 36.105972, 55.473965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182477, -0.707094, -0.683170,
		-0.392526, 0.584670, -0.709989,
		0.901458, 0.397718, -0.170864,
		29.246103, 36.225288, 55.422707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603502, 35.992805, 54.845200>,  <28.615084, 35.946884, 55.542309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603502, 35.992805, 54.845200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.984110, 36.005512, 54.967575>,  <29.212475, 36.013138, 55.041000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.984110, 36.005512, 54.967575>,  <28.603502, 35.992805, 54.845200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984110, 36.005512, 54.967575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241895, -0.691661, -0.680509,
		0.189990, 0.721523, -0.665814,
		0.951520, 0.031767, 0.305941,
		29.269566, 36.015041, 55.059357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048162, 36.051918, 54.253189>,  <28.603502, 35.992805, 54.845200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048162, 36.051918, 54.253189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.277414, 35.881130, 54.532967>,  <29.414965, 35.778660, 54.700832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.277414, 35.881130, 54.532967>,  <29.048162, 36.051918, 54.253189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277414, 35.881130, 54.532967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374828, -0.622425, -0.687089,
		0.728716, 0.655962, -0.196690,
		0.573129, -0.426968, 0.699444,
		29.449352, 35.753040, 54.742798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567547, 35.872692, 53.890644>,  <29.048162, 36.051918, 54.253189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567547, 35.872692, 53.890644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.636845, 35.647682, 54.214016>,  <29.678423, 35.512676, 54.408039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.636845, 35.647682, 54.214016>,  <29.567547, 35.872692, 53.890644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636845, 35.647682, 54.214016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405064, -0.707505, -0.579103,
		0.897724, 0.427792, 0.105286,
		0.173245, -0.562523, 0.808427,
		29.688818, 35.478924, 54.456543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255110, 35.700775, 53.916512>,  <29.567547, 35.872692, 53.890644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255110, 35.700775, 53.916512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.082975, 35.417873, 54.140869>,  <29.979694, 35.248135, 54.275486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.082975, 35.417873, 54.140869>,  <30.255110, 35.700775, 53.916512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082975, 35.417873, 54.140869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444189, -0.706857, -0.550500,
		0.785816, 0.012245, 0.618339,
		-0.430336, -0.707251, 0.560899,
		29.953875, 35.205700, 54.309139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740141, 35.269657, 53.925163>,  <30.255110, 35.700775, 53.916512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740141, 35.269657, 53.925163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.433662, 35.046265, 54.052311>,  <30.249775, 34.912228, 54.128601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.433662, 35.046265, 54.052311>,  <30.740141, 35.269657, 53.925163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433662, 35.046265, 54.052311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351368, -0.778262, -0.520431,
		0.538040, -0.287062, 0.792533,
		-0.766194, -0.558483, 0.317872,
		30.203804, 34.878719, 54.147671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961231, 34.561642, 54.235012>,  <30.740141, 35.269657, 53.925163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961231, 34.561642, 54.235012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.578684, 34.526104, 54.123680>,  <30.349155, 34.504780, 54.056881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.578684, 34.526104, 54.123680>,  <30.961231, 34.561642, 54.235012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578684, 34.526104, 54.123680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227599, -0.823883, -0.519052,
		-0.183199, -0.559752, 0.808156,
		-0.956366, -0.088846, -0.278334,
		30.291775, 34.499451, 54.040180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903906, 33.920326, 54.206562>,  <30.961231, 34.561642, 54.235012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903906, 33.920326, 54.206562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.575079, 34.038010, 54.011566>,  <30.377783, 34.108620, 53.894569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.575079, 34.038010, 54.011566>,  <30.903906, 33.920326, 54.206562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575079, 34.038010, 54.011566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095370, -0.772920, -0.627295,
		-0.561350, -0.562170, 0.607332,
		-0.822065, 0.294210, -0.487493,
		30.328459, 34.126274, 53.865318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474949, 33.285557, 54.169777>,  <30.903906, 33.920326, 54.206562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474949, 33.285557, 54.169777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.370485, 33.531235, 53.871902>,  <30.307808, 33.678642, 53.693176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.370485, 33.531235, 53.871902>,  <30.474949, 33.285557, 54.169777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370485, 33.531235, 53.871902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228697, -0.710126, -0.665897,
		-0.937813, -0.344212, 0.044991,
		-0.261159, 0.614198, -0.744686,
		30.292137, 33.715496, 53.648499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075247, 32.852077, 53.795246>,  <30.474949, 33.285557, 54.169777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075247, 32.852077, 53.795246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.177505, 33.149181, 53.547714>,  <30.238861, 33.327442, 53.399197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.177505, 33.149181, 53.547714>,  <30.075247, 32.852077, 53.795246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177505, 33.149181, 53.547714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037556, -0.631988, -0.774068,
		-0.966040, 0.221130, -0.133671,
		0.255648, 0.742761, -0.618831,
		30.254200, 33.372009, 53.362064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704035, 32.737129, 53.211601>,  <30.075247, 32.852077, 53.795246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704035, 32.737129, 53.211601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.964048, 32.994766, 53.050304>,  <30.120056, 33.149349, 52.953526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.964048, 32.994766, 53.050304>,  <29.704035, 32.737129, 53.211601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964048, 32.994766, 53.050304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163349, -0.636680, -0.753628,
		-0.742141, 0.424014, -0.519074,
		0.650034, 0.644089, -0.403244,
		30.159058, 33.187992, 52.929333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.282940, 40.098930, 53.931885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.627010, 40.299160, 53.970928>,  <29.833452, 40.419296, 53.994354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.627010, 40.299160, 53.970928>,  <29.282940, 40.098930, 53.931885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627010, 40.299160, 53.970928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302006, 0.345733, 0.888404,
		0.410970, -0.793657, 0.448567,
		0.860172, 0.500577, 0.097604,
		29.885063, 40.449333, 54.000210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368402, 40.148167, 54.676056>,  <29.282940, 40.098930, 53.931885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368402, 40.148167, 54.676056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.614700, 40.421711, 54.519497>,  <29.762480, 40.585838, 54.425560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.614700, 40.421711, 54.519497>,  <29.368402, 40.148167, 54.676056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614700, 40.421711, 54.519497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122516, 0.573788, 0.809788,
		0.778362, -0.450670, 0.437091,
		0.615745, 0.683860, -0.391400,
		29.799423, 40.626869, 54.402077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729784, 40.367805, 55.167900>,  <29.368402, 40.148167, 54.676056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729784, 40.367805, 55.167900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.723051, 40.670433, 54.906422>,  <29.719011, 40.852009, 54.749535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.723051, 40.670433, 54.906422>,  <29.729784, 40.367805, 55.167900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723051, 40.670433, 54.906422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260704, 0.627855, 0.733370,
		0.965272, 0.182766, 0.186672,
		-0.016832, 0.756567, -0.653699,
		29.718002, 40.897404, 54.710312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055435, 40.841301, 55.529831>,  <29.729784, 40.367805, 55.167900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055435, 40.841301, 55.529831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.889130, 41.056248, 55.236336>,  <29.789347, 41.185215, 55.060238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.889130, 41.056248, 55.236336>,  <30.055435, 40.841301, 55.529831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889130, 41.056248, 55.236336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362816, 0.641801, 0.675615,
		0.833969, 0.547110, -0.071874,
		-0.415765, 0.537365, -0.733743,
		29.764400, 41.217457, 55.016212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167803, 41.562881, 55.707809>,  <30.055435, 40.841301, 55.529831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167803, 41.562881, 55.707809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.855835, 41.568432, 55.457520>,  <29.668653, 41.571762, 55.307346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.855835, 41.568432, 55.457520>,  <30.167803, 41.562881, 55.707809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855835, 41.568432, 55.457520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510890, 0.563413, 0.649275,
		0.361549, 0.826059, -0.432329,
		-0.779919, 0.013872, -0.625726,
		29.621859, 41.572594, 55.269802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056990, 42.363327, 55.536957>,  <30.167803, 41.562881, 55.707809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056990, 42.363327, 55.536957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.719255, 42.170670, 55.443047>,  <29.516615, 42.055077, 55.386700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.719255, 42.170670, 55.443047>,  <30.056990, 42.363327, 55.536957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719255, 42.170670, 55.443047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527579, 0.670767, 0.521280,
		-0.093595, 0.563994, -0.820457,
		-0.844334, -0.481645, -0.234771,
		29.465956, 42.026176, 55.372616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630980, 42.892117, 55.367424>,  <30.056990, 42.363327, 55.536957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630980, 42.892117, 55.367424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.402481, 42.577347, 55.460739>,  <29.265383, 42.388485, 55.516727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.402481, 42.577347, 55.460739>,  <29.630980, 42.892117, 55.367424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402481, 42.577347, 55.460739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547868, 0.577219, 0.605524,
		-0.611163, 0.218089, -0.760866,
		-0.571244, -0.786928, 0.233291,
		29.231108, 42.341267, 55.530727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881409, 43.104828, 55.295853>,  <29.630980, 42.892117, 55.367424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881409, 43.104828, 55.295853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.847757, 42.762749, 55.500423>,  <28.827566, 42.557503, 55.623165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.847757, 42.762749, 55.500423>,  <28.881409, 43.104828, 55.295853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847757, 42.762749, 55.500423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797071, 0.365766, 0.480512,
		-0.597996, -0.367220, -0.712425,
		-0.084127, -0.855199, 0.511427,
		28.822519, 42.506187, 55.653851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118429, 42.887104, 55.280014>,  <28.881409, 43.104828, 55.295853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118429, 42.887104, 55.280014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.290401, 42.734001, 55.607098>,  <28.393585, 42.642139, 55.803349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.290401, 42.734001, 55.607098>,  <28.118429, 42.887104, 55.280014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290401, 42.734001, 55.607098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754286, 0.345481, 0.558297,
		-0.496196, -0.856820, -0.140175,
		0.429933, -0.382757, 0.817714,
		28.419382, 42.619175, 55.852413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528105, 42.696064, 55.689491>,  <28.118429, 42.887104, 55.280014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528105, 42.696064, 55.689491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.855156, 42.692799, 55.919765>,  <28.051388, 42.690838, 56.057930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.855156, 42.692799, 55.919765>,  <27.528105, 42.696064, 55.689491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855156, 42.692799, 55.919765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492320, 0.508493, 0.706439,
		-0.298503, -0.861028, 0.411737,
		0.817629, -0.008168, 0.575688,
		28.100445, 42.690350, 56.092472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.293386, 42.653862, 56.406452>,  <27.528105, 42.696064, 55.689491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.293386, 42.653862, 56.406452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.667814, 42.774994, 56.478085>,  <27.892471, 42.847672, 56.521065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.667814, 42.774994, 56.478085>,  <27.293386, 42.653862, 56.406452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667814, 42.774994, 56.478085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314047, 0.489764, 0.813330,
		0.158594, -0.817572, 0.553555,
		0.936068, 0.302831, 0.179083,
		27.948635, 42.865845, 56.531811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389986, 42.693802, 57.113029>,  <27.293386, 42.653862, 56.406452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389986, 42.693802, 57.113029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.669041, 42.949463, 56.983547>,  <27.836473, 43.102859, 56.905857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.669041, 42.949463, 56.983547>,  <27.389986, 42.693802, 57.113029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669041, 42.949463, 56.983547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152835, 0.574180, 0.804338,
		0.699960, -0.511662, 0.498254,
		0.697637, 0.639155, -0.323703,
		27.878332, 43.141209, 56.886436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079960, 42.778141, 57.552471>,  <27.389986, 42.693802, 57.113029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079960, 42.778141, 57.552471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.959663, 43.111340, 57.366707>,  <27.887486, 43.311260, 57.255249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.959663, 43.111340, 57.366707>,  <28.079960, 42.778141, 57.552471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959663, 43.111340, 57.366707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017917, 0.481930, 0.876027,
		0.953538, 0.271778, -0.130010,
		-0.300740, 0.832995, -0.464408,
		27.869442, 43.361237, 57.227386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747705, 42.966473, 57.905437>,  <28.079960, 42.778141, 57.552471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747705, 42.966473, 57.905437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.819448, 42.818710, 58.270157>,  <28.862494, 42.730053, 58.488987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.819448, 42.818710, 58.270157>,  <28.747705, 42.966473, 57.905437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819448, 42.818710, 58.270157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375601, -0.830905, -0.410513,
		0.909261, 0.416100, -0.010279,
		0.179356, -0.369403, 0.911797,
		28.873255, 42.707890, 58.543697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518347, 42.714993, 57.998764>,  <28.747705, 42.966473, 57.905437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518347, 42.714993, 57.998764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.291229, 42.530033, 58.271175>,  <29.154959, 42.419060, 58.434624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.291229, 42.530033, 58.271175>,  <29.518347, 42.714993, 57.998764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291229, 42.530033, 58.271175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361106, -0.883385, -0.298721,
		0.739737, 0.076311, 0.668555,
		-0.567796, -0.462394, 0.681028,
		29.120890, 42.391315, 58.475483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920420, 42.243889, 58.216057>,  <29.518347, 42.714993, 57.998764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920420, 42.243889, 58.216057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.575016, 42.120552, 58.375694>,  <29.367773, 42.046551, 58.471478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.575016, 42.120552, 58.375694>,  <29.920420, 42.243889, 58.216057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575016, 42.120552, 58.375694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245315, -0.948206, -0.201806,
		0.440647, -0.076358, 0.894427,
		-0.863511, -0.308341, 0.399093,
		29.315964, 42.028049, 58.495422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126711, 41.589409, 58.668034>,  <29.920420, 42.243889, 58.216057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126711, 41.589409, 58.668034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.733528, 41.550842, 58.605427>,  <29.497618, 41.527702, 58.567863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.733528, 41.550842, 58.605427>,  <30.126711, 41.589409, 58.668034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733528, 41.550842, 58.605427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144242, -0.932365, -0.331495,
		-0.113968, -0.348422, 0.930384,
		-0.982958, -0.096421, -0.156517,
		29.438641, 41.521915, 58.558472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977463, 40.901562, 58.922386>,  <30.126711, 41.589409, 58.668034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977463, 40.901562, 58.922386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.683121, 40.997604, 58.669128>,  <29.506516, 41.055229, 58.517174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.683121, 40.997604, 58.669128>,  <29.977463, 40.901562, 58.922386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683121, 40.997604, 58.669128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026841, -0.944630, -0.327037,
		-0.676609, -0.223657, 0.701554,
		-0.735853, 0.240107, -0.633142,
		29.462364, 41.069637, 58.479187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487087, 40.333187, 58.976452>,  <29.977463, 40.901562, 58.922386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487087, 40.333187, 58.976452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.387047, 40.498497, 58.626217>,  <29.327023, 40.597683, 58.416077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.387047, 40.498497, 58.626217>,  <29.487087, 40.333187, 58.976452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387047, 40.498497, 58.626217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067416, -0.909567, -0.410052,
		-0.965871, -0.043525, 0.255342,
		-0.250098, 0.413271, -0.875590,
		29.312017, 40.622478, 58.363541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790607, 40.025974, 58.759823>,  <29.487087, 40.333187, 58.976452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790607, 40.025974, 58.759823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.030468, 40.131496, 58.457611>,  <29.174385, 40.194809, 58.276283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.030468, 40.131496, 58.457611>,  <28.790607, 40.025974, 58.759823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030468, 40.131496, 58.457611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269380, -0.822468, -0.500980,
		-0.753561, 0.503937, -0.422130,
		0.599650, 0.263806, -0.755530,
		29.210363, 40.210640, 58.230953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417904, 39.691875, 58.178635>,  <28.790607, 40.025974, 58.759823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417904, 39.691875, 58.178635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.775818, 39.786629, 58.027245>,  <28.990566, 39.843483, 57.936413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.775818, 39.786629, 58.027245>,  <28.417904, 39.691875, 58.178635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775818, 39.786629, 58.027245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087073, -0.738804, -0.668272,
		-0.437921, 0.630916, -0.640445,
		0.894787, 0.236885, -0.378473,
		29.044254, 39.857693, 57.913704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331987, 39.708576, 57.426849>,  <28.417904, 39.691875, 58.178635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331987, 39.708576, 57.426849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.712887, 39.655342, 57.536770>,  <28.941425, 39.623402, 57.602722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.712887, 39.655342, 57.536770>,  <28.331987, 39.708576, 57.426849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712887, 39.655342, 57.536770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089326, -0.739205, -0.667531,
		0.291971, 0.660201, -0.692017,
		0.952247, -0.133084, 0.274799,
		28.998560, 39.615417, 57.619209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593504, 39.614025, 56.769295>,  <28.331987, 39.708576, 57.426849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593504, 39.614025, 56.769295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.858330, 39.480507, 57.037697>,  <29.017225, 39.400394, 57.198738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.858330, 39.480507, 57.037697>,  <28.593504, 39.614025, 56.769295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858330, 39.480507, 57.037697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216438, -0.772026, -0.597604,
		0.717513, 0.540884, -0.438885,
		0.662065, -0.333797, 0.671006,
		29.056950, 39.380367, 57.238998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073324, 39.261589, 56.305786>,  <28.593504, 39.614025, 56.769295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073324, 39.261589, 56.305786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.156548, 39.116497, 56.669136>,  <29.206482, 39.029442, 56.887146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.156548, 39.116497, 56.669136>,  <29.073324, 39.261589, 56.305786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156548, 39.116497, 56.669136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429991, -0.800223, -0.418033,
		0.878533, 0.477567, -0.010522,
		0.208058, -0.362731, 0.908371,
		29.218966, 39.007679, 56.941647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872490, 39.083549, 56.321163>,  <29.073324, 39.261589, 56.305786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872490, 39.083549, 56.321163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.650753, 38.884773, 56.588223>,  <29.517712, 38.765507, 56.748459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.650753, 38.884773, 56.588223>,  <29.872490, 39.083549, 56.321163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650753, 38.884773, 56.588223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281516, -0.866857, -0.411471,
		0.783233, -0.040141, 0.620431,
		-0.554342, -0.496939, 0.667651,
		29.484451, 38.735691, 56.788517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261217, 38.570171, 56.519836>,  <29.872490, 39.083549, 56.321163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261217, 38.570171, 56.519836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.905954, 38.434082, 56.643398>,  <29.692797, 38.352428, 56.717537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.905954, 38.434082, 56.643398>,  <30.261217, 38.570171, 56.519836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905954, 38.434082, 56.643398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191349, -0.884963, -0.424530,
		0.417804, -0.317942, 0.851089,
		-0.888158, -0.340226, 0.308903,
		29.639507, 38.332016, 56.736069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345242, 37.943127, 56.849628>,  <30.261217, 38.570171, 56.519836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345242, 37.943127, 56.849628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.959433, 37.905293, 56.751041>,  <29.727947, 37.882591, 56.691887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.959433, 37.905293, 56.751041>,  <30.345242, 37.943127, 56.849628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959433, 37.905293, 56.751041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196917, -0.879600, -0.433045,
		-0.175836, -0.466217, 0.867020,
		-0.964523, -0.094586, -0.246471,
		29.670076, 37.876915, 56.677101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208237, 37.348751, 56.934948>,  <30.345242, 37.943127, 56.849628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208237, 37.348751, 56.934948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.905737, 37.438709, 56.689182>,  <29.724237, 37.492683, 56.541721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.905737, 37.438709, 56.689182>,  <30.208237, 37.348751, 56.934948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905737, 37.438709, 56.689182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053987, -0.914416, -0.401159,
		-0.652053, -0.336546, 0.679385,
		-0.756249, 0.224899, -0.614417,
		29.678862, 37.506180, 56.504856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433249, 36.921566, 57.597355>,  <30.208237, 37.348751, 56.934948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433249, 36.921566, 57.597355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.832779, 36.939098, 57.589108>,  <31.072496, 36.949619, 57.584160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.832779, 36.939098, 57.589108>,  <30.433249, 36.921566, 57.597355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832779, 36.939098, 57.589108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012137, 0.638545, 0.769489,
		0.046897, -0.768335, 0.638327,
		0.998826, 0.043834, -0.020621,
		31.132427, 36.952248, 57.582920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663996, 36.784775, 58.253258>,  <30.433249, 36.921566, 57.597355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663996, 36.784775, 58.253258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.982286, 36.972084, 58.099613>,  <31.173260, 37.084469, 58.007427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.982286, 36.972084, 58.099613>,  <30.663996, 36.784775, 58.253258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982286, 36.972084, 58.099613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001355, 0.635586, 0.772029,
		0.605653, -0.613804, 0.506388,
		0.795728, 0.468268, -0.384113,
		31.221004, 37.112564, 57.984379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160322, 36.897362, 58.765553>,  <30.663996, 36.784775, 58.253258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160322, 36.897362, 58.765553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.273987, 37.182327, 58.508888>,  <31.342186, 37.353306, 58.354889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.273987, 37.182327, 58.508888>,  <31.160322, 36.897362, 58.765553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273987, 37.182327, 58.508888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068017, 0.652580, 0.754661,
		0.956360, -0.258090, 0.136983,
		0.284163, 0.712411, -0.641656,
		31.359236, 37.396049, 58.316391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747059, 37.247887, 58.988338>,  <31.160322, 36.897362, 58.765553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747059, 37.247887, 58.988338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.533920, 37.497147, 58.759335>,  <31.406036, 37.646702, 58.621933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.533920, 37.497147, 58.759335>,  <31.747059, 37.247887, 58.988338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533920, 37.497147, 58.759335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037956, 0.658272, 0.751822,
		0.845361, 0.422336, -0.327106,
		-0.532846, 0.623145, -0.572508,
		31.374067, 37.684090, 58.587582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090485, 37.900093, 58.999142>,  <31.747059, 37.247887, 58.988338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090485, 37.900093, 58.999142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.723154, 37.988731, 58.867954>,  <31.502754, 38.041916, 58.789242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.723154, 37.988731, 58.867954>,  <32.090485, 37.900093, 58.999142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723154, 37.988731, 58.867954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019760, 0.801897, 0.597136,
		0.395323, 0.554848, -0.732027,
		-0.918330, 0.221596, -0.327972,
		31.447655, 38.055210, 58.769562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179684, 38.617249, 58.945087>,  <32.090485, 37.900093, 58.999142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179684, 38.617249, 58.945087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.788393, 38.541615, 58.910870>,  <31.553617, 38.496235, 58.890339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.788393, 38.541615, 58.910870>,  <32.179684, 38.617249, 58.945087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788393, 38.541615, 58.910870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203833, 0.797854, 0.567346,
		-0.039022, 0.572431, -0.819024,
		-0.978228, -0.189083, -0.085547,
		31.494925, 38.484890, 58.885204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815973, 39.205574, 58.638462>,  <32.179684, 38.617249, 58.945087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815973, 39.205574, 58.638462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.558231, 39.009094, 58.872906>,  <31.403585, 38.891205, 59.013573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.558231, 39.009094, 58.872906>,  <31.815973, 39.205574, 58.638462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558231, 39.009094, 58.872906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268959, 0.863032, 0.427593,
		-0.715868, 0.117882, -0.688213,
		-0.644355, -0.491201, 0.586112,
		31.364925, 38.861732, 59.048740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762373, 39.821339, 58.160500>,  <31.815973, 39.205574, 58.638462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762373, 39.821339, 58.160500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.154594, 39.899826, 58.161873>,  <32.389927, 39.946918, 58.162697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.154594, 39.899826, 58.161873>,  <31.762373, 39.821339, 58.160500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154594, 39.899826, 58.161873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163405, -0.806645, -0.567999,
		-0.108682, 0.557515, -0.823022,
		0.980555, 0.196217, 0.003433,
		32.448761, 39.958691, 58.162903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930544, 39.774448, 57.469570>,  <31.762373, 39.821339, 58.160500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930544, 39.774448, 57.469570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.282780, 39.766094, 57.658936>,  <32.494122, 39.761082, 57.772556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.282780, 39.766094, 57.658936>,  <31.930544, 39.774448, 57.469570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282780, 39.766094, 57.658936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305236, -0.739175, -0.600376,
		0.362478, 0.673189, -0.644535,
		0.880591, -0.020887, 0.473416,
		32.546959, 39.759827, 57.800961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374207, 39.560955, 56.946529>,  <31.930544, 39.774448, 57.469570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374207, 39.560955, 56.946529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.587669, 39.502678, 57.279751>,  <32.715748, 39.467712, 57.479683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.587669, 39.502678, 57.279751>,  <32.374207, 39.560955, 56.946529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587669, 39.502678, 57.279751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501395, -0.738748, -0.450394,
		0.681041, 0.658046, -0.321184,
		0.533654, -0.145697, 0.833058,
		32.747765, 39.458969, 57.529667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065624, 39.546608, 56.772663>,  <32.374207, 39.560955, 56.946529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065624, 39.546608, 56.772663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.107067, 39.370674, 57.129494>,  <33.131935, 39.265114, 57.343594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.107067, 39.370674, 57.129494>,  <33.065624, 39.546608, 56.772663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107067, 39.370674, 57.129494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527017, -0.736372, -0.424276,
		0.843515, 0.514101, 0.155505,
		0.103611, -0.439837, 0.892081,
		33.138149, 39.238724, 57.397118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792023, 39.525612, 56.907795>,  <33.065624, 39.546608, 56.772663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792023, 39.525612, 56.907795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.602261, 39.233360, 57.104210>,  <33.488403, 39.058010, 57.222057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.602261, 39.233360, 57.104210>,  <33.792023, 39.525612, 56.907795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602261, 39.233360, 57.104210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456073, -0.681098, -0.572802,
		0.752951, -0.047792, 0.656338,
		-0.474406, -0.730631, 0.491037,
		33.459938, 39.014172, 57.251522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293884, 39.088879, 57.225414>,  <33.792023, 39.525612, 56.907795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293884, 39.088879, 57.225414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.972279, 38.861557, 57.155460>,  <33.779316, 38.725163, 57.113487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.972279, 38.861557, 57.155460>,  <34.293884, 39.088879, 57.225414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972279, 38.861557, 57.155460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555831, -0.613864, -0.560557,
		0.211210, -0.547905, 0.809439,
		-0.804017, -0.568306, -0.174888,
		33.731075, 38.691067, 57.102993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539516, 38.369968, 57.193226>,  <34.293884, 39.088879, 57.225414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539516, 38.369968, 57.193226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.179504, 38.353210, 57.019699>,  <33.963497, 38.343155, 56.915585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.179504, 38.353210, 57.019699>,  <34.539516, 38.369968, 57.193226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179504, 38.353210, 57.019699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330700, -0.713988, -0.617137,
		-0.283882, -0.698902, 0.656465,
		-0.900027, -0.041899, -0.433815,
		33.909496, 38.340641, 56.889553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.085398, 45.504765, 55.223862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829769, 45.205257, 55.294216>,  <29.676392, 45.025555, 55.336430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829769, 45.205257, 55.294216>,  <30.085398, 45.504765, 55.223862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829769, 45.205257, 55.294216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451352, -0.550247, -0.702502,
		0.622790, -0.369564, 0.689605,
		-0.639073, -0.748766, 0.175885,
		29.638048, 44.980629, 55.346981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501749, 44.898251, 55.451797>,  <30.085398, 45.504765, 55.223862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501749, 44.898251, 55.451797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153652, 44.757397, 55.313999>,  <29.944794, 44.672886, 55.231319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153652, 44.757397, 55.313999>,  <30.501749, 44.898251, 55.451797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153652, 44.757397, 55.313999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489709, -0.542435, -0.682604,
		0.053498, -0.762736, 0.644493,
		-0.870243, -0.352132, -0.344500,
		29.892580, 44.651756, 55.210648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657249, 44.159252, 55.306339>,  <30.501749, 44.898251, 55.451797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657249, 44.159252, 55.306339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304354, 44.231888, 55.132591>,  <30.092617, 44.275471, 55.028343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304354, 44.231888, 55.132591>,  <30.657249, 44.159252, 55.306339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304354, 44.231888, 55.132591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233105, -0.633109, -0.738130,
		-0.409045, -0.752461, 0.516222,
		-0.882238, 0.181594, -0.434372,
		30.039682, 44.286366, 55.002281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247131, 43.470062, 55.213707>,  <30.657249, 44.159252, 55.306339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247131, 43.470062, 55.213707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127455, 43.742294, 54.946186>,  <30.055649, 43.905632, 54.785675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127455, 43.742294, 54.946186>,  <30.247131, 43.470062, 55.213707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127455, 43.742294, 54.946186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259402, -0.616499, -0.743398,
		-0.918256, -0.395907, 0.007909,
		-0.299192, 0.680578, -0.668803,
		30.037697, 43.946468, 54.745544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012131, 43.027355, 54.660992>,  <30.247131, 43.470062, 55.213707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012131, 43.027355, 54.660992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077219, 43.389679, 54.504509>,  <30.116272, 43.607071, 54.410622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077219, 43.389679, 54.504509>,  <30.012131, 43.027355, 54.660992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077219, 43.389679, 54.504509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196090, -0.418266, -0.886906,
		-0.966990, 0.067608, -0.245680,
		0.162722, 0.905805, -0.391202,
		30.126036, 43.661419, 54.387150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706047, 43.102249, 53.940746>,  <30.012131, 43.027355, 54.660992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706047, 43.102249, 53.940746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001186, 43.370274, 53.973236>,  <30.178270, 43.531090, 53.992729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001186, 43.370274, 53.973236>,  <29.706047, 43.102249, 53.940746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001186, 43.370274, 53.973236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518306, -0.485386, -0.704102,
		-0.432366, 0.561620, -0.705438,
		0.737847, 0.670062, 0.081227,
		30.222540, 43.571293, 53.997604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040648, 43.162720, 53.228291>,  <29.706047, 43.102249, 53.940746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040648, 43.162720, 53.228291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295414, 43.367126, 53.459183>,  <30.448275, 43.489773, 53.597717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295414, 43.367126, 53.459183>,  <30.040648, 43.162720, 53.228291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295414, 43.367126, 53.459183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758799, -0.283229, -0.586520,
		-0.136236, 0.811566, -0.568155,
		0.636918, 0.511020, 0.577229,
		30.486490, 43.520432, 53.632351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395771, 43.627293, 52.772690>,  <30.040648, 43.162720, 53.228291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395771, 43.627293, 52.772690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637348, 43.549232, 53.081795>,  <30.782293, 43.502396, 53.267258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637348, 43.549232, 53.081795>,  <30.395771, 43.627293, 52.772690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637348, 43.549232, 53.081795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681246, -0.376874, -0.627591,
		0.413713, 0.905473, -0.094661,
		0.603942, -0.195155, 0.772767,
		30.818531, 43.490685, 53.313625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015936, 43.826500, 52.548550>,  <30.395771, 43.627293, 52.772690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015936, 43.826500, 52.548550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092596, 43.575096, 52.850079>,  <31.138592, 43.424255, 53.030994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092596, 43.575096, 52.850079>,  <31.015936, 43.826500, 52.548550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092596, 43.575096, 52.850079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641046, -0.501433, -0.581055,
		0.743189, 0.594596, 0.306801,
		0.191653, -0.628507, 0.753822,
		31.150091, 43.386543, 53.076225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736843, 43.740887, 52.540840>,  <31.015936, 43.826500, 52.548550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736843, 43.740887, 52.540840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597275, 43.428303, 52.747753>,  <31.513533, 43.240753, 52.871899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597275, 43.428303, 52.747753>,  <31.736843, 43.740887, 52.540840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597275, 43.428303, 52.747753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582726, -0.613204, -0.533301,
		0.733950, 0.115352, 0.669336,
		-0.348922, -0.781456, 0.517280,
		31.492598, 43.193867, 52.902939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317455, 43.537720, 52.808449>,  <31.736843, 43.740887, 52.540840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317455, 43.537720, 52.808449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044559, 43.245411, 52.799282>,  <31.880821, 43.070026, 52.793781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044559, 43.245411, 52.799282>,  <32.317455, 43.537720, 52.808449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044559, 43.245411, 52.799282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644691, -0.586506, -0.490290,
		0.344850, -0.349268, 0.871258,
		-0.682241, -0.730768, -0.022913,
		31.839888, 43.026180, 52.792408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625027, 42.970829, 53.123955>,  <32.317455, 43.537720, 52.808449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625027, 42.970829, 53.123955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319889, 42.840870, 52.900345>,  <32.136806, 42.762894, 52.766178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319889, 42.840870, 52.900345>,  <32.625027, 42.970829, 53.123955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319889, 42.840870, 52.900345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630852, -0.563533, -0.533345,
		-0.141744, -0.759521, 0.634851,
		-0.762846, -0.324898, -0.559022,
		32.091034, 42.743401, 52.732639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864918, 42.885288, 53.876530>,  <32.625027, 42.970829, 53.123955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864918, 42.885288, 53.876530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175499, 42.684399, 54.028782>,  <33.361847, 42.563866, 54.120132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175499, 42.684399, 54.028782>,  <32.864918, 42.885288, 53.876530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175499, 42.684399, 54.028782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334878, 0.182831, 0.924353,
		-0.533829, -0.845186, -0.026225,
		0.776456, -0.502229, 0.380635,
		33.408436, 42.533730, 54.142971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641411, 42.328987, 54.340054>,  <32.864918, 42.885288, 53.876530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641411, 42.328987, 54.340054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012394, 42.429585, 54.450741>,  <33.234985, 42.489941, 54.517155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012394, 42.429585, 54.450741>,  <32.641411, 42.328987, 54.340054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012394, 42.429585, 54.450741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320799, 0.154934, 0.934389,
		0.192122, -0.955377, 0.224374,
		0.927457, 0.251495, 0.276718,
		33.290630, 42.505032, 54.533756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706974, 42.038380, 54.944202>,  <32.641411, 42.328987, 54.340054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706974, 42.038380, 54.944202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975037, 42.334881, 54.959370>,  <33.135876, 42.512779, 54.968472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975037, 42.334881, 54.959370>,  <32.706974, 42.038380, 54.944202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975037, 42.334881, 54.959370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281420, 0.206495, 0.937103,
		0.686797, -0.638678, 0.346987,
		0.670158, 0.741249, 0.037917,
		33.176083, 42.557255, 54.970745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077187, 41.998589, 55.639050>,  <32.706974, 42.038380, 54.944202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077187, 41.998589, 55.639050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090271, 42.375858, 55.506779>,  <33.098122, 42.602222, 55.427418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090271, 42.375858, 55.506779>,  <33.077187, 41.998589, 55.639050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090271, 42.375858, 55.506779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345950, 0.321088, 0.881601,
		0.937683, 0.085558, 0.336796,
		0.032713, 0.943177, -0.330678,
		33.100086, 42.658810, 55.407574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432407, 42.331791, 56.151310>,  <33.077187, 41.998589, 55.639050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432407, 42.331791, 56.151310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224815, 42.621227, 55.969288>,  <33.100258, 42.794888, 55.860073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224815, 42.621227, 55.969288>,  <33.432407, 42.331791, 56.151310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224815, 42.621227, 55.969288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324170, 0.325986, 0.888058,
		0.790930, 0.608403, 0.065384,
		-0.518983, 0.723587, -0.455058,
		33.069122, 42.838303, 55.832771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772049, 43.002209, 56.323013>,  <33.432407, 42.331791, 56.151310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772049, 43.002209, 56.323013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401802, 43.101997, 56.209175>,  <33.179653, 43.161869, 56.140873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401802, 43.101997, 56.209175>,  <33.772049, 43.002209, 56.323013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401802, 43.101997, 56.209175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197599, 0.322776, 0.925619,
		0.322776, 0.913006, -0.249472,
		-0.925619, 0.249472, -0.284594,
		33.124115, 43.176838, 56.123798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736961, 43.630028, 56.632454>,  <33.772049, 43.002209, 56.323013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736961, 43.630028, 56.632454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354546, 43.555595, 56.541809>,  <33.125095, 43.510937, 56.487423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354546, 43.555595, 56.541809>,  <33.736961, 43.630028, 56.632454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354546, 43.555595, 56.541809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286671, 0.430671, 0.855770,
		-0.061644, 0.883118, -0.465084,
		-0.956044, -0.186079, -0.226616,
		33.067734, 43.499771, 56.473824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427628, 44.251839, 56.755009>,  <33.736961, 43.630028, 56.632454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427628, 44.251839, 56.755009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170757, 43.945427, 56.766361>,  <33.016636, 43.761581, 56.773174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170757, 43.945427, 56.766361>,  <33.427628, 44.251839, 56.755009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170757, 43.945427, 56.766361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416421, 0.379702, 0.826087,
		-0.643584, 0.518676, -0.562828,
		-0.642178, -0.766030, 0.028382,
		32.978104, 43.715618, 56.774876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767738, 44.507927, 56.909286>,  <33.427628, 44.251839, 56.755009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767738, 44.507927, 56.909286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730965, 44.118141, 56.991226>,  <32.708900, 43.884270, 57.040390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730965, 44.118141, 56.991226>,  <32.767738, 44.507927, 56.909286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730965, 44.118141, 56.991226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647534, 0.214789, 0.731140,
		-0.756471, -0.065434, -0.650746,
		-0.091932, -0.974466, 0.204852,
		32.703384, 43.825802, 57.052681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997171, 44.415184, 57.090050>,  <32.767738, 44.507927, 56.909286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997171, 44.415184, 57.090050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193378, 44.093327, 57.223877>,  <32.311104, 43.900211, 57.304173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193378, 44.093327, 57.223877>,  <31.997171, 44.415184, 57.090050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193378, 44.093327, 57.223877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507527, 0.048312, 0.860281,
		-0.708385, -0.591786, -0.384681,
		0.490517, -0.804646, 0.334570,
		32.340534, 43.851933, 57.324249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476336, 43.970692, 57.392586>,  <31.997171, 44.415184, 57.090050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476336, 43.970692, 57.392586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826694, 43.897308, 57.571087>,  <32.036911, 43.853279, 57.678188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826694, 43.897308, 57.571087>,  <31.476336, 43.970692, 57.392586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826694, 43.897308, 57.571087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453878, 0.000504, 0.891064,
		-0.163697, -0.983028, -0.082826,
		0.875898, -0.183457, 0.446257,
		32.089462, 43.842270, 57.704964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325401, 43.390900, 57.758118>,  <31.476336, 43.970692, 57.392586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325401, 43.390900, 57.758118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662809, 43.557301, 57.894009>,  <31.865255, 43.657143, 57.975544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662809, 43.557301, 57.894009>,  <31.325401, 43.390900, 57.758118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662809, 43.557301, 57.894009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337733, -0.080990, 0.937751,
		0.417623, -0.905749, 0.072182,
		0.843521, 0.416004, 0.339725,
		31.915865, 43.682102, 57.995926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572447, 42.954620, 58.340832>,  <31.325401, 43.390900, 57.758118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572447, 42.954620, 58.340832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739895, 43.314407, 58.390980>,  <31.840364, 43.530281, 58.421066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739895, 43.314407, 58.390980>,  <31.572447, 42.954620, 58.340832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739895, 43.314407, 58.390980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234213, -0.026448, 0.971825,
		0.877440, -0.436189, 0.199595,
		0.418621, 0.899466, 0.125368,
		31.865480, 43.584248, 58.428589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937822, 42.953709, 58.885235>,  <31.572447, 42.954620, 58.340832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937822, 42.953709, 58.885235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861933, 43.346184, 58.870953>,  <31.816399, 43.581669, 58.862385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861933, 43.346184, 58.870953>,  <31.937822, 42.953709, 58.885235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861933, 43.346184, 58.870953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481177, -0.061218, 0.874484,
		0.855847, 0.183089, 0.483739,
		-0.189722, 0.981189, -0.035705,
		31.805016, 43.640541, 58.860241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709370, 42.647331, 58.923878>,  <31.937822, 42.953709, 58.885235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709370, 42.647331, 58.923878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736382, 42.562191, 59.313778>,  <32.752590, 42.511105, 59.547718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736382, 42.562191, 59.313778>,  <32.709370, 42.647331, 58.923878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736382, 42.562191, 59.313778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150313, -0.963656, -0.220844,
		0.986329, 0.161431, -0.033082,
		0.067531, -0.212852, 0.974748,
		32.756641, 42.498337, 59.606201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332077, 42.324249, 59.200596>,  <32.709370, 42.647331, 58.923878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332077, 42.324249, 59.200596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030602, 42.183838, 59.422848>,  <32.849716, 42.099590, 59.556198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030602, 42.183838, 59.422848>,  <33.332077, 42.324249, 59.200596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030602, 42.183838, 59.422848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172722, -0.921492, -0.347878,
		0.634125, -0.166224, 0.755152,
		-0.753693, -0.351029, 0.555631,
		32.804493, 42.078529, 59.589539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526783, 41.680740, 59.491158>,  <33.332077, 42.324249, 59.200596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526783, 41.680740, 59.491158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127140, 41.672798, 59.476280>,  <32.887352, 41.668034, 59.467354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127140, 41.672798, 59.476280>,  <33.526783, 41.680740, 59.491158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127140, 41.672798, 59.476280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036244, -0.855086, -0.517218,
		-0.021536, -0.518107, 0.855045,
		-0.999111, -0.019851, -0.037194,
		32.827408, 41.666843, 59.465122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400295, 40.956909, 59.651806>,  <33.526783, 41.680740, 59.491158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400295, 40.956909, 59.651806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071354, 41.106186, 59.480011>,  <32.873989, 41.195751, 59.376934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071354, 41.106186, 59.480011>,  <33.400295, 40.956909, 59.651806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071354, 41.106186, 59.480011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030679, -0.782831, -0.621477,
		-0.568149, -0.497898, 0.655214,
		-0.822354, 0.373193, -0.429489,
		32.824646, 41.218143, 59.351166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998890, 40.416000, 59.648136>,  <33.400295, 40.956909, 59.651806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998890, 40.416000, 59.648136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818626, 40.637821, 59.368313>,  <32.710468, 40.770912, 59.200420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818626, 40.637821, 59.368313>,  <32.998890, 40.416000, 59.648136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818626, 40.637821, 59.368313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010199, -0.780394, -0.625205,
		-0.892638, -0.288889, 0.346035,
		-0.450659, 0.554552, -0.699555,
		32.683430, 40.804188, 59.158447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423267, 40.111027, 59.417114>,  <32.998890, 40.416000, 59.648136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423267, 40.111027, 59.417114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505142, 40.355347, 59.111168>,  <32.554268, 40.501938, 58.927601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505142, 40.355347, 59.111168>,  <32.423267, 40.111027, 59.417114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505142, 40.355347, 59.111168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101575, -0.763940, -0.637243,
		-0.973542, 0.208129, -0.094329,
		0.204690, 0.610802, -0.764868,
		32.566547, 40.538586, 58.881706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884604, 39.918224, 58.889549>,  <32.423267, 40.111027, 59.417114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884604, 39.918224, 58.889549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190308, 40.100010, 58.706520>,  <32.373730, 40.209080, 58.596703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190308, 40.100010, 58.706520>,  <31.884604, 39.918224, 58.889549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190308, 40.100010, 58.706520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076094, -0.768104, -0.635788,
		-0.640401, 0.451090, -0.621614,
		0.764262, 0.454460, -0.457569,
		32.419586, 40.236347, 58.569248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262369, 39.639187, 58.680634>,  <31.884604, 39.918224, 58.889549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262369, 39.639187, 58.680634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188696, 39.400284, 58.992878>,  <31.144493, 39.256943, 59.180225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188696, 39.400284, 58.992878>,  <31.262369, 39.639187, 58.680634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188696, 39.400284, 58.992878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388809, 0.773694, 0.500225,
		-0.902721, -0.211379, -0.374719,
		-0.184181, -0.597258, 0.780615,
		31.133442, 39.221107, 59.227062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524994, 39.594635, 58.822964>,  <31.262369, 39.639187, 58.680634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524994, 39.594635, 58.822964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709934, 39.526291, 59.170998>,  <30.820898, 39.485287, 59.379818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709934, 39.526291, 59.170998>,  <30.524994, 39.594635, 58.822964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709934, 39.526291, 59.170998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455914, 0.795808, 0.398539,
		-0.760510, -0.580946, 0.290045,
		0.462349, -0.170858, 0.870081,
		30.848639, 39.475033, 59.432022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003546, 39.721085, 59.304695>,  <30.524994, 39.594635, 58.822964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003546, 39.721085, 59.304695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327982, 39.709007, 59.538353>,  <30.522644, 39.701763, 59.678547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327982, 39.709007, 59.538353>,  <30.003546, 39.721085, 59.304695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327982, 39.709007, 59.538353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415385, 0.673381, 0.611566,
		-0.411815, -0.738679, 0.533631,
		0.811088, -0.030189, 0.584144,
		30.571308, 39.699951, 59.713596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748220, 39.856339, 59.941250>,  <30.003546, 39.721085, 59.304695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748220, 39.856339, 59.941250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136244, 39.895000, 60.030376>,  <30.369059, 39.918198, 60.083851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136244, 39.895000, 60.030376>,  <29.748220, 39.856339, 59.941250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136244, 39.895000, 60.030376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212541, 0.781772, 0.586224,
		-0.117529, -0.616029, 0.778907,
		0.970058, 0.096651, 0.222812,
		30.427261, 39.923996, 60.097221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755476, 39.940250, 60.652805>,  <29.748220, 39.856339, 59.941250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755476, 39.940250, 60.652805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087757, 40.092026, 60.489853>,  <30.287127, 40.183090, 60.392082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087757, 40.092026, 60.489853>,  <29.755476, 39.940250, 60.652805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087757, 40.092026, 60.489853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053618, 0.782891, 0.619844,
		0.554128, -0.493064, 0.670694,
		0.830703, 0.379434, -0.407385,
		30.336967, 40.205856, 60.367638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028021, 40.366806, 61.191433>,  <29.755476, 39.940250, 60.652805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028021, 40.366806, 61.191433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256916, 40.480862, 60.883865>,  <30.394253, 40.549297, 60.699326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256916, 40.480862, 60.883865>,  <30.028021, 40.366806, 61.191433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256916, 40.480862, 60.883865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057835, 0.921241, 0.384669,
		0.818046, -0.264592, 0.510678,
		0.572238, 0.285142, -0.768920,
		30.428587, 40.566402, 60.653191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794119, 40.662552, 61.350464>,  <30.028021, 40.366806, 61.191433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794119, 40.662552, 61.350464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639664, 40.826565, 61.019947>,  <30.546989, 40.924973, 60.821636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639664, 40.826565, 61.019947>,  <30.794119, 40.662552, 61.350464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639664, 40.826565, 61.019947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115135, 0.910191, 0.397864,
		0.915227, 0.058496, -0.398671,
		-0.386140, 0.410037, -0.826296,
		30.523821, 40.949577, 60.772057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126329, 41.312748, 61.371235>,  <30.794119, 40.662552, 61.350464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126329, 41.312748, 61.371235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816446, 41.357071, 61.122223>,  <30.630516, 41.383667, 60.972816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816446, 41.357071, 61.122223>,  <31.126329, 41.312748, 61.371235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816446, 41.357071, 61.122223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130302, 0.935418, 0.328656,
		0.618747, 0.335730, -0.710237,
		-0.774708, 0.110809, -0.622534,
		30.584034, 41.390312, 60.935463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169333, 41.994289, 61.155300>,  <31.126329, 41.312748, 61.371235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169333, 41.994289, 61.155300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793526, 41.878899, 61.081451>,  <30.568041, 41.809666, 61.037140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793526, 41.878899, 61.081451>,  <31.169333, 41.994289, 61.155300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793526, 41.878899, 61.081451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339752, 0.853111, 0.395943,
		0.043285, 0.434722, -0.899523,
		-0.939518, -0.288476, -0.184625,
		30.511671, 41.792355, 61.026066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.100277, 32.959438, 48.800415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.108078, 33.164551, 48.457096>,  <37.112759, 33.287617, 48.251102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.108078, 33.164551, 48.457096>,  <37.100277, 32.959438, 48.800415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108078, 33.164551, 48.457096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844698, 0.467721, 0.260235,
		0.534887, 0.719927, 0.442267,
		0.019507, 0.512779, -0.858299,
		37.113930, 33.318386, 48.199608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950840, 33.602177, 48.953068>,  <37.100277, 32.959438, 48.800415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950840, 33.602177, 48.953068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884483, 33.614178, 48.558792>,  <36.844669, 33.621380, 48.322227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884483, 33.614178, 48.558792>,  <36.950840, 33.602177, 48.953068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884483, 33.614178, 48.558792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672771, 0.727361, 0.135370,
		0.721012, 0.685599, -0.100479,
		-0.165894, 0.030004, -0.985687,
		36.834717, 33.623180, 48.263084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951992, 34.332634, 48.604073>,  <36.950840, 33.602177, 48.953068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951992, 34.332634, 48.604073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.726517, 34.104595, 48.364994>,  <36.591232, 33.967773, 48.221546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.726517, 34.104595, 48.364994>,  <36.951992, 34.332634, 48.604073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726517, 34.104595, 48.364994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687446, 0.724953, -0.043148,
		0.457903, 0.386565, -0.800557,
		-0.563687, -0.570098, -0.597701,
		36.557411, 33.933567, 48.185684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540455, 34.827160, 48.212154>,  <36.951992, 34.332634, 48.604073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540455, 34.827160, 48.212154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.354271, 34.476170, 48.165886>,  <36.242561, 34.265575, 48.138123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.354271, 34.476170, 48.165886>,  <36.540455, 34.827160, 48.212154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354271, 34.476170, 48.165886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880293, 0.472537, -0.042349,
		0.091821, 0.082115, -0.992384,
		-0.465460, -0.877477, -0.115674,
		36.214634, 34.212925, 48.131184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035255, 35.029831, 47.736698>,  <36.540455, 34.827160, 48.212154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035255, 35.029831, 47.736698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.912792, 34.676479, 47.878635>,  <35.839314, 34.464470, 47.963799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.912792, 34.676479, 47.878635>,  <36.035255, 35.029831, 47.736698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912792, 34.676479, 47.878635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948225, 0.316050, -0.031327,
		-0.084476, -0.346066, -0.934399,
		-0.306158, -0.883374, 0.354848,
		35.820946, 34.411469, 47.985088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497303, 34.842896, 47.379719>,  <36.035255, 35.029831, 47.736698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497303, 34.842896, 47.379719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.442902, 34.604679, 47.696407>,  <35.410259, 34.461750, 47.886421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.442902, 34.604679, 47.696407>,  <35.497303, 34.842896, 47.379719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442902, 34.604679, 47.696407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989598, 0.119485, -0.080117,
		-0.046886, -0.794387, -0.605600,
		-0.136004, -0.595544, 0.791726,
		35.402100, 34.426014, 47.933926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022446, 34.454842, 47.177555>,  <35.497303, 34.842896, 47.379719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022446, 34.454842, 47.177555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.033131, 34.428936, 47.576572>,  <35.039543, 34.413391, 47.815983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.033131, 34.428936, 47.576572>,  <35.022446, 34.454842, 47.177555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033131, 34.428936, 47.576572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994527, 0.099105, 0.033067,
		-0.101003, -0.992967, -0.061761,
		0.026713, -0.064763, 0.997543,
		35.041145, 34.409508, 47.875835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632030, 33.919907, 47.381065>,  <35.022446, 34.454842, 47.177555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632030, 33.919907, 47.381065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.640324, 34.157730, 47.702579>,  <34.645298, 34.300423, 47.895489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.640324, 34.157730, 47.702579>,  <34.632030, 33.919907, 47.381065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640324, 34.157730, 47.702579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999235, 0.038994, -0.003074,
		-0.033171, -0.803108, 0.594909,
		0.020730, 0.594556, 0.803787,
		34.646542, 34.336098, 47.943714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153496, 33.625694, 47.902657>,  <34.632030, 33.919907, 47.381065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153496, 33.625694, 47.902657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.209602, 34.009335, 48.001003>,  <34.243267, 34.239517, 48.060013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.209602, 34.009335, 48.001003>,  <34.153496, 33.625694, 47.902657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209602, 34.009335, 48.001003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985029, 0.110041, 0.132696,
		0.100213, -0.260802, 0.960177,
		0.140266, 0.959100, 0.245870,
		34.251682, 34.297066, 48.074764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731823, 33.677128, 48.471581>,  <34.153496, 33.625694, 47.902657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731823, 33.677128, 48.471581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.781116, 34.040707, 48.312267>,  <33.810692, 34.258854, 48.216679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.781116, 34.040707, 48.312267>,  <33.731823, 33.677128, 48.471581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781116, 34.040707, 48.312267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983439, 0.165601, 0.073651,
		0.132901, 0.382615, 0.914299,
		0.123230, 0.908946, -0.398287,
		33.818085, 34.313389, 48.192780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293167, 33.936424, 48.873043>,  <33.731823, 33.677128, 48.471581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293167, 33.936424, 48.873043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.372196, 34.170414, 48.558395>,  <33.419613, 34.310810, 48.369606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.372196, 34.170414, 48.558395>,  <33.293167, 33.936424, 48.873043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372196, 34.170414, 48.558395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964200, 0.260744, -0.048271,
		0.176867, 0.767993, 0.615553,
		0.197574, 0.584978, -0.786616,
		33.431469, 34.345909, 48.322411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978767, 34.623138, 49.035984>,  <33.293167, 33.936424, 48.873043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978767, 34.623138, 49.035984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.056450, 34.633240, 48.643730>,  <33.103062, 34.639301, 48.408379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.056450, 34.633240, 48.643730>,  <32.978767, 34.623138, 49.035984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056450, 34.633240, 48.643730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969463, -0.147659, -0.195801,
		-0.149745, 0.988716, -0.004192,
		0.194211, 0.025256, -0.980635,
		33.114712, 34.640816, 48.349541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630859, 35.203411, 48.772549>,  <32.978767, 34.623138, 49.035984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630859, 35.203411, 48.772549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.641914, 34.898392, 48.514011>,  <32.648548, 34.715382, 48.358891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.641914, 34.898392, 48.514011>,  <32.630859, 35.203411, 48.772549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641914, 34.898392, 48.514011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965220, 0.147803, -0.215652,
		0.259976, 0.629822, -0.731941,
		0.027639, -0.762548, -0.646341,
		32.650208, 34.669628, 48.320110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129696, 34.795338, 49.179577>,  <32.630859, 35.203411, 48.772549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129696, 34.795338, 49.179577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.020981, 34.410950, 49.200230>,  <31.955751, 34.180317, 49.212620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.020981, 34.410950, 49.200230>,  <32.129696, 34.795338, 49.179577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020981, 34.410950, 49.200230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831926, 0.261587, 0.489359,
		-0.483766, 0.090048, -0.870553,
		-0.271791, -0.960970, 0.051633,
		31.939444, 34.122658, 49.215721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470051, 34.733467, 48.982929>,  <32.129696, 34.795338, 49.179577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470051, 34.733467, 48.982929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.533882, 34.412819, 49.213387>,  <31.572182, 34.220428, 49.351662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.533882, 34.412819, 49.213387>,  <31.470051, 34.733467, 48.982929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533882, 34.412819, 49.213387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814908, 0.222439, 0.535206,
		-0.557188, -0.554911, -0.617750,
		0.159580, -0.801620, 0.576142,
		31.581757, 34.172333, 49.386230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851366, 34.392666, 48.967621>,  <31.470051, 34.733467, 48.982929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851366, 34.392666, 48.967621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.032681, 34.268742, 49.301937>,  <31.141470, 34.194386, 49.502525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.032681, 34.268742, 49.301937>,  <30.851366, 34.392666, 48.967621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032681, 34.268742, 49.301937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847042, 0.142281, 0.512129,
		-0.277582, -0.940091, -0.197931,
		0.453287, -0.309813, 0.835791,
		31.168667, 34.175797, 49.552673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333666, 33.930080, 49.373898>,  <30.851366, 34.392666, 48.967621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333666, 33.930080, 49.373898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.600876, 34.080940, 49.630489>,  <30.761202, 34.171455, 49.784447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.600876, 34.080940, 49.630489>,  <30.333666, 33.930080, 49.373898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600876, 34.080940, 49.630489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735417, 0.203016, 0.646488,
		0.113591, -0.903628, 0.412982,
		0.668027, 0.377149, 0.641482,
		30.801285, 34.194084, 49.822933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103313, 33.692921, 50.001732>,  <30.333666, 33.930080, 49.373898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103313, 33.692921, 50.001732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.332882, 33.997765, 50.121593>,  <30.470623, 34.180672, 50.193512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.332882, 33.997765, 50.121593>,  <30.103313, 33.692921, 50.001732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332882, 33.997765, 50.121593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717111, 0.291031, 0.633287,
		0.395429, -0.578344, 0.713551,
		0.573923, 0.762116, 0.299655,
		30.505058, 34.226398, 50.211491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955173, 33.752449, 50.675171>,  <30.103313, 33.692921, 50.001732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955173, 33.752449, 50.675171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.141768, 34.103424, 50.630459>,  <30.253723, 34.314011, 50.603630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.141768, 34.103424, 50.630459>,  <29.955173, 33.752449, 50.675171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141768, 34.103424, 50.630459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704206, 0.444880, 0.553332,
		0.535244, -0.179404, 0.825426,
		0.466485, 0.877437, -0.111782,
		30.281713, 34.366653, 50.596924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002279, 34.060139, 51.449921>,  <29.955173, 33.752449, 50.675171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002279, 34.060139, 51.449921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.021776, 34.344471, 51.169254>,  <30.033474, 34.515072, 51.000854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.021776, 34.344471, 51.169254>,  <30.002279, 34.060139, 51.449921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021776, 34.344471, 51.169254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671141, 0.543587, 0.504065,
		0.739725, 0.446349, 0.503567,
		0.048744, 0.710835, -0.701669,
		30.036400, 34.557720, 50.958755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951941, 34.702290, 51.756836>,  <30.002279, 34.060139, 51.449921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951941, 34.702290, 51.756836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.843914, 34.822346, 51.390888>,  <29.779099, 34.894379, 51.171322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.843914, 34.822346, 51.390888>,  <29.951941, 34.702290, 51.756836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843914, 34.822346, 51.390888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735164, 0.549312, 0.397228,
		0.621771, 0.779855, 0.072302,
		-0.270064, 0.300139, -0.914867,
		29.762896, 34.912388, 51.116428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743488, 35.396778, 51.847988>,  <29.951941, 34.702290, 51.756836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743488, 35.396778, 51.847988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.570318, 35.327755, 51.494083>,  <29.466415, 35.286343, 51.281742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.570318, 35.327755, 51.494083>,  <29.743488, 35.396778, 51.847988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570318, 35.327755, 51.494083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756470, 0.603329, 0.252485,
		0.490233, 0.778601, -0.391730,
		-0.432927, -0.172556, -0.884759,
		29.440441, 35.275990, 51.228657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574900, 36.082638, 51.661720>,  <29.743488, 35.396778, 51.847988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574900, 36.082638, 51.661720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.371290, 35.817436, 51.442150>,  <29.249125, 35.658314, 51.310410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.371290, 35.817436, 51.442150>,  <29.574900, 36.082638, 51.661720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371290, 35.817436, 51.442150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857114, 0.448997, 0.252501,
		0.079057, 0.599021, -0.796821,
		-0.509024, -0.663004, -0.548926,
		29.218582, 35.618534, 51.277473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931980, 36.527020, 51.577709>,  <29.574900, 36.082638, 51.661720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931980, 36.527020, 51.577709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.833212, 36.148327, 51.495033>,  <28.773951, 35.921112, 51.445427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.833212, 36.148327, 51.495033>,  <28.931980, 36.527020, 51.577709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833212, 36.148327, 51.495033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942190, 0.184698, 0.279581,
		-0.226514, 0.263778, -0.937610,
		-0.246922, -0.946735, -0.206693,
		28.759136, 35.864307, 51.433025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391010, 36.505455, 51.004791>,  <28.931980, 36.527020, 51.577709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391010, 36.505455, 51.004791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.374918, 36.145756, 51.179024>,  <28.365263, 35.929935, 51.283562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.374918, 36.145756, 51.179024>,  <28.391010, 36.505455, 51.004791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374918, 36.145756, 51.179024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997797, 0.059170, 0.029997,
		-0.052748, -0.433417, -0.899649,
		-0.040231, -0.899249, 0.435583,
		28.362848, 35.875980, 51.309700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939489, 36.202614, 50.647030>,  <28.391010, 36.505455, 51.004791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939489, 36.202614, 50.647030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.930481, 36.028439, 51.007004>,  <27.925076, 35.923935, 51.222988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.930481, 36.028439, 51.007004>,  <27.939489, 36.202614, 50.647030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930481, 36.028439, 51.007004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984685, 0.165321, 0.055350,
		-0.172880, -0.884909, -0.432491,
		-0.022520, -0.435436, 0.899938,
		27.923725, 35.897808, 51.276985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444628, 35.626053, 50.660488>,  <27.939489, 36.202614, 50.647030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444628, 35.626053, 50.660488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.490749, 35.712200, 51.048370>,  <27.518423, 35.763889, 51.281097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.490749, 35.712200, 51.048370>,  <27.444628, 35.626053, 50.660488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490749, 35.712200, 51.048370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989509, 0.110451, 0.093131,
		-0.087047, -0.970267, 0.225842,
		0.115306, 0.215366, 0.969702,
		27.525341, 35.776810, 51.339279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014578, 35.043739, 51.072792>,  <27.444628, 35.626053, 50.660488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014578, 35.043739, 51.072792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.053602, 35.343002, 51.335316>,  <27.077017, 35.522560, 51.492832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.053602, 35.343002, 51.335316>,  <27.014578, 35.043739, 51.072792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053602, 35.343002, 51.335316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991031, 0.012514, 0.133048,
		0.091328, -0.663406, 0.742665,
		0.097559, 0.748155, 0.656313,
		27.082870, 35.567448, 51.532211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651533, 34.889137, 51.587605>,  <27.014578, 35.043739, 51.072792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651533, 34.889137, 51.587605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.664122, 35.286392, 51.632656>,  <26.671675, 35.524746, 51.659687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.664122, 35.286392, 51.632656>,  <26.651533, 34.889137, 51.587605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664122, 35.286392, 51.632656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948600, -0.005822, 0.316424,
		0.314908, -0.116797, 0.941908,
		0.031473, 0.993139, 0.112627,
		26.673563, 35.584335, 51.666443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271156, 34.908375, 52.100494>,  <26.651533, 34.889137, 51.587605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271156, 34.908375, 52.100494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.289993, 35.279701, 51.952972>,  <26.301294, 35.502495, 51.864460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.289993, 35.279701, 51.952972>,  <26.271156, 34.908375, 52.100494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289993, 35.279701, 51.952972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967762, 0.133856, 0.213355,
		0.247427, 0.346868, 0.904689,
		0.047092, 0.928313, -0.368805,
		26.304121, 35.558197, 51.842331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058594, 35.440838, 52.589741>,  <26.271156, 34.908375, 52.100494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058594, 35.440838, 52.589741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.008945, 35.599445, 52.225903>,  <25.979156, 35.694611, 52.007599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.008945, 35.599445, 52.225903>,  <26.058594, 35.440838, 52.589741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.008945, 35.599445, 52.225903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976274, 0.115121, 0.183402,
		0.177436, 0.910780, 0.372822,
		-0.124119, 0.396519, -0.909598,
		25.971710, 35.718403, 51.953022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498678, 35.870983, 52.688457>,  <26.058594, 35.440838, 52.589741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498678, 35.870983, 52.688457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.512873, 35.883377, 52.288902>,  <25.521389, 35.890812, 52.049168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.512873, 35.883377, 52.288902>,  <25.498678, 35.870983, 52.688457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.512873, 35.883377, 52.288902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999349, 0.007643, -0.035267,
		0.006542, 0.999491, 0.031232,
		0.035487, 0.030981, -0.998890,
		25.523520, 35.892670, 51.989235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073895, 36.383404, 52.560253>,  <25.498678, 35.870983, 52.688457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073895, 36.383404, 52.560253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.100655, 36.150715, 52.236000>,  <25.116711, 36.011101, 52.041447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.100655, 36.150715, 52.236000>,  <25.073895, 36.383404, 52.560253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.100655, 36.150715, 52.236000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938549, 0.239025, -0.248982,
		0.338599, 0.777476, -0.529983,
		0.066899, -0.581720, -0.810634,
		25.120724, 35.976200, 51.992809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.858532, 36.755795, 52.059483>,  <25.073895, 36.383404, 52.560253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.858532, 36.755795, 52.059483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.796131, 36.379429, 51.939255>,  <24.758690, 36.153610, 51.867119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.796131, 36.379429, 51.939255>,  <24.858532, 36.755795, 52.059483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.796131, 36.379429, 51.939255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951018, 0.225297, -0.211677,
		0.266887, 0.252822, -0.929975,
		-0.156004, -0.940916, -0.300566,
		24.749331, 36.097153, 51.849087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.448135, 36.877617, 51.443298>,  <24.858532, 36.755795, 52.059483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.448135, 36.877617, 51.443298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.401289, 36.519054, 51.614292>,  <24.373180, 36.303917, 51.716888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.401289, 36.519054, 51.614292>,  <24.448135, 36.877617, 51.443298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.401289, 36.519054, 51.614292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968805, 0.197784, 0.149324,
		-0.218404, -0.396658, -0.891607,
		-0.117116, -0.896406, 0.427481,
		24.366154, 36.250134, 51.742535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.374969, 30.506474, 50.777763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.984570, 30.516193, 50.691200>,  <34.750328, 30.522026, 50.639263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.984570, 30.516193, 50.691200>,  <35.374969, 30.506474, 50.777763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984570, 30.516193, 50.691200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127126, 0.743267, 0.656805,
		0.176806, 0.668553, -0.722341,
		-0.976001, 0.024299, -0.216405,
		34.691769, 30.523483, 50.626278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114254, 31.214491, 50.532654>,  <35.374969, 30.506474, 50.777763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114254, 31.214491, 50.532654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.785812, 31.020981, 50.653812>,  <34.588745, 30.904875, 50.726509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.785812, 31.020981, 50.653812>,  <35.114254, 31.214491, 50.532654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785812, 31.020981, 50.653812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217923, 0.756192, 0.616996,
		-0.527537, 0.440610, -0.726339,
		-0.821106, -0.483774, 0.302900,
		34.539482, 30.875849, 50.744682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581219, 31.639662, 50.420494>,  <35.114254, 31.214491, 50.532654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581219, 31.639662, 50.420494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.439762, 31.389435, 50.698658>,  <34.354889, 31.239298, 50.865559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.439762, 31.389435, 50.698658>,  <34.581219, 31.639662, 50.420494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439762, 31.389435, 50.698658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270493, 0.780085, 0.564182,
		-0.895416, 0.011414, -0.445083,
		-0.353642, -0.625569, 0.695414,
		34.333668, 31.201763, 50.907284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914181, 31.941017, 50.556122>,  <34.581219, 31.639662, 50.420494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914181, 31.941017, 50.556122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.989151, 31.713192, 50.876240>,  <34.034134, 31.576496, 51.068310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.989151, 31.713192, 50.876240>,  <33.914181, 31.941017, 50.556122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989151, 31.713192, 50.876240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303520, 0.741281, 0.598647,
		-0.934209, -0.355108, -0.033938,
		0.187427, -0.569562, 0.800294,
		34.045380, 31.542324, 51.116329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379379, 32.027744, 50.884865>,  <33.914181, 31.941017, 50.556122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379379, 32.027744, 50.884865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.662167, 31.917458, 51.145382>,  <33.831837, 31.851284, 51.301693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.662167, 31.917458, 51.145382>,  <33.379379, 32.027744, 50.884865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662167, 31.917458, 51.145382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153259, 0.839273, 0.521663,
		-0.690444, -0.468614, 0.551080,
		0.706965, -0.275721, 0.651290,
		33.874256, 31.834742, 51.340771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216274, 32.344059, 51.475231>,  <33.379379, 32.027744, 50.884865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216274, 32.344059, 51.475231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.582462, 32.237392, 51.595772>,  <33.802174, 32.173393, 51.668095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.582462, 32.237392, 51.595772>,  <33.216274, 32.344059, 51.475231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582462, 32.237392, 51.595772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072497, 0.845935, 0.528335,
		-0.395810, -0.461826, 0.793758,
		0.915466, -0.266666, 0.301348,
		33.857101, 32.157394, 51.686176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180378, 32.426434, 52.097408>,  <33.216274, 32.344059, 51.475231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180378, 32.426434, 52.097408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.575413, 32.432461, 52.034859>,  <33.812431, 32.436077, 51.997330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.575413, 32.432461, 52.034859>,  <33.180378, 32.426434, 52.097408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575413, 32.432461, 52.034859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093233, 0.744913, 0.660615,
		0.126436, -0.666991, 0.734260,
		0.987584, 0.015068, -0.156370,
		33.871689, 32.436981, 51.987949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523071, 32.334316, 52.738659>,  <33.180378, 32.426434, 52.097408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523071, 32.334316, 52.738659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.769882, 32.542946, 52.502953>,  <33.917969, 32.668125, 52.361530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.769882, 32.542946, 52.502953>,  <33.523071, 32.334316, 52.738659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769882, 32.542946, 52.502953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083754, 0.788076, 0.609854,
		0.782459, -0.326955, 0.529961,
		0.617044, 0.521572, -0.589253,
		33.954990, 32.699421, 52.326176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005016, 32.647499, 53.131634>,  <33.523071, 32.334316, 52.738659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005016, 32.647499, 53.131634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.054199, 32.858948, 52.795673>,  <34.083710, 32.985817, 52.594097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.054199, 32.858948, 52.795673>,  <34.005016, 32.647499, 53.131634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054199, 32.858948, 52.795673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189684, 0.843241, 0.502956,
		0.974116, 0.097477, 0.203950,
		0.122953, 0.528624, -0.839904,
		34.091084, 33.017536, 52.543701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458649, 33.237270, 53.263329>,  <34.005016, 32.647499, 53.131634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458649, 33.237270, 53.263329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.321136, 33.359367, 52.908108>,  <34.238628, 33.432625, 52.694973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.321136, 33.359367, 52.908108>,  <34.458649, 33.237270, 53.263329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321136, 33.359367, 52.908108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042568, 0.949789, 0.309983,
		0.938084, 0.068764, -0.339513,
		-0.343781, 0.305243, -0.888055,
		34.218002, 33.450939, 52.641693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880398, 33.749866, 53.051567>,  <34.458649, 33.237270, 53.263329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880398, 33.749866, 53.051567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.526852, 33.802021, 52.871887>,  <34.314724, 33.833313, 52.764080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.526852, 33.802021, 52.871887>,  <34.880398, 33.749866, 53.051567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526852, 33.802021, 52.871887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065684, 0.916249, 0.395189,
		0.463109, 0.378799, -0.801275,
		-0.883864, 0.130385, -0.449204,
		34.261692, 33.841137, 52.737125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973969, 34.395641, 52.803596>,  <34.880398, 33.749866, 53.051567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973969, 34.395641, 52.803596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583759, 34.307907, 52.797226>,  <34.349636, 34.255268, 52.793404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583759, 34.307907, 52.797226>,  <34.973969, 34.395641, 52.803596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583759, 34.307907, 52.797226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213408, 0.926718, 0.309275,
		-0.053079, 0.305101, -0.950840,
		-0.975520, -0.219333, -0.015922,
		34.291103, 34.242107, 52.792450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523209, 34.760712, 52.489815>,  <34.973969, 34.395641, 52.803596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523209, 34.760712, 52.489815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848228, 34.981228, 52.565533>,  <36.043240, 35.113537, 52.610966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848228, 34.981228, 52.565533>,  <35.523209, 34.760712, 52.489815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848228, 34.981228, 52.565533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542363, -0.596105, -0.592031,
		-0.213540, 0.583725, -0.783368,
		0.812553, 0.551292, 0.189299,
		36.091995, 35.146614, 52.622322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790009, 34.862793, 51.781185>,  <35.523209, 34.760712, 52.489815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790009, 34.862793, 51.781185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.086250, 34.917286, 52.044380>,  <36.263996, 34.949982, 52.202297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.086250, 34.917286, 52.044380>,  <35.790009, 34.862793, 51.781185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086250, 34.917286, 52.044380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510385, -0.750975, -0.418979,
		0.437053, 0.646124, -0.625707,
		0.740603, 0.136236, 0.657987,
		36.308430, 34.958157, 52.241776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185581, 34.582512, 51.419281>,  <35.790009, 34.862793, 51.781185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185581, 34.582512, 51.419281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.365017, 34.587967, 51.776733>,  <36.472679, 34.591240, 51.991207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.365017, 34.587967, 51.776733>,  <36.185581, 34.582512, 51.419281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365017, 34.587967, 51.776733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671619, -0.664832, -0.326995,
		0.589659, 0.746868, -0.307393,
		0.448587, 0.013636, 0.893635,
		36.499592, 34.592056, 52.044823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999985, 34.575775, 51.286480>,  <36.185581, 34.582512, 51.419281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999985, 34.575775, 51.286480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928368, 34.453018, 51.660381>,  <36.885399, 34.379364, 51.884724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928368, 34.453018, 51.660381>,  <36.999985, 34.575775, 51.286480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928368, 34.453018, 51.660381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655982, -0.745327, -0.119057,
		0.733234, 0.591865, 0.334758,
		-0.179039, -0.306892, 0.934753,
		36.874657, 34.360950, 51.940807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634998, 34.569393, 51.566101>,  <36.999985, 34.575775, 51.286480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634998, 34.569393, 51.566101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421070, 34.309502, 51.782185>,  <37.292713, 34.153568, 51.911835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421070, 34.309502, 51.782185>,  <37.634998, 34.569393, 51.566101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421070, 34.309502, 51.782185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610114, -0.739245, -0.285093,
		0.584579, 0.177116, 0.791769,
		-0.534816, -0.649729, 0.540208,
		37.260624, 34.114582, 51.944248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144753, 34.101444, 52.010017>,  <37.634998, 34.569393, 51.566101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144753, 34.101444, 52.010017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.791965, 33.917946, 51.966789>,  <37.580292, 33.807846, 51.940853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.791965, 33.917946, 51.966789>,  <38.144753, 34.101444, 52.010017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791965, 33.917946, 51.966789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470296, -0.841676, -0.265337,
		0.030763, -0.284844, 0.958080,
		-0.881972, -0.458744, -0.108069,
		37.527374, 33.780323, 51.934368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267494, 33.378864, 52.189621>,  <38.144753, 34.101444, 52.010017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267494, 33.378864, 52.189621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.932983, 33.352997, 51.971832>,  <37.732277, 33.337479, 51.841160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.932983, 33.352997, 51.971832>,  <38.267494, 33.378864, 52.189621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932983, 33.352997, 51.971832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354315, -0.821573, -0.446631,
		-0.418445, -0.566425, 0.709977,
		-0.836280, -0.064665, -0.544476,
		37.682098, 33.333599, 51.808491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996437, 32.655521, 52.177525>,  <38.267494, 33.378864, 52.189621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996437, 32.655521, 52.177525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.887478, 32.846733, 51.843510>,  <37.822102, 32.961460, 51.643101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.887478, 32.846733, 51.843510>,  <37.996437, 32.655521, 52.177525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887478, 32.846733, 51.843510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217369, -0.814845, -0.537380,
		-0.937310, -0.327893, 0.118054,
		-0.272399, 0.478031, -0.835036,
		37.805759, 32.990143, 51.592999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948624, 32.107071, 51.687683>,  <37.996437, 32.655521, 52.177525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948624, 32.107071, 51.687683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.862789, 32.409885, 51.440830>,  <37.811287, 32.591572, 51.292717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.862789, 32.409885, 51.440830>,  <37.948624, 32.107071, 51.687683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862789, 32.409885, 51.440830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364285, -0.524223, -0.769731,
		-0.906227, -0.389989, -0.163283,
		-0.214590, 0.757033, -0.617132,
		37.798412, 32.636993, 51.255692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678127, 31.832386, 51.037090>,  <37.948624, 32.107071, 51.687683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678127, 31.832386, 51.037090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751579, 32.200901, 50.899971>,  <37.795650, 32.422009, 50.817699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751579, 32.200901, 50.899971>,  <37.678127, 31.832386, 51.037090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751579, 32.200901, 50.899971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448085, -0.388843, -0.804998,
		-0.874928, -0.005778, -0.484219,
		0.183634, 0.921286, -0.342798,
		37.806671, 32.477287, 50.797131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453232, 31.852163, 50.302544>,  <37.678127, 31.832386, 51.037090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453232, 31.852163, 50.302544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.711666, 32.149986, 50.369720>,  <37.866726, 32.328682, 50.410027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.711666, 32.149986, 50.369720>,  <37.453232, 31.852163, 50.302544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711666, 32.149986, 50.369720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591027, -0.348800, -0.727341,
		-0.482970, 0.569183, -0.665410,
		0.646085, 0.744560, 0.167943,
		37.905491, 32.373356, 50.420105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532951, 32.248680, 49.632244>,  <37.453232, 31.852163, 50.302544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532951, 32.248680, 49.632244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.847851, 32.345123, 49.859264>,  <38.036789, 32.402988, 49.995476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.847851, 32.345123, 49.859264>,  <37.532951, 32.248680, 49.632244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847851, 32.345123, 49.859264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599514, -0.083873, -0.795958,
		-0.144309, 0.966868, -0.210575,
		0.787247, 0.241107, 0.567547,
		38.084026, 32.417454, 50.029530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958614, 32.796986, 49.294323>,  <37.532951, 32.248680, 49.632244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958614, 32.796986, 49.294323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.216072, 32.621460, 49.545135>,  <38.370548, 32.516144, 49.695621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.216072, 32.621460, 49.545135>,  <37.958614, 32.796986, 49.294323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216072, 32.621460, 49.545135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681143, -0.045102, -0.730760,
		0.348945, 0.897447, 0.269862,
		0.643648, -0.438809, 0.627028,
		38.409168, 32.489819, 49.733242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646564, 33.153477, 49.338543>,  <37.958614, 32.796986, 49.294323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646564, 33.153477, 49.338543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.695145, 32.763386, 49.412502>,  <38.724293, 32.529331, 49.456879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.695145, 32.763386, 49.412502>,  <38.646564, 33.153477, 49.338543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695145, 32.763386, 49.412502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866370, 0.013246, -0.499226,
		0.484409, 0.220818, 0.846515,
		0.121451, -0.975225, 0.184894,
		38.731579, 32.470818, 49.467972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617718, 33.870903, 49.178158>,  <38.646564, 33.153477, 49.338543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617718, 33.870903, 49.178158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.500771, 34.181019, 49.402100>,  <38.430603, 34.367088, 49.536465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.500771, 34.181019, 49.402100>,  <38.617718, 33.870903, 49.178158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500771, 34.181019, 49.402100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948067, 0.158306, 0.275878,
		0.125257, 0.611442, -0.781312,
		-0.292370, 0.775292, 0.559859,
		38.413059, 34.413605, 49.570057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940315, 34.655975, 49.004318>,  <38.617718, 33.870903, 49.178158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940315, 34.655975, 49.004318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.854919, 34.521137, 49.371098>,  <38.803684, 34.440235, 49.591164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.854919, 34.521137, 49.371098>,  <38.940315, 34.655975, 49.004318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854919, 34.521137, 49.371098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961165, 0.095547, 0.258906,
		-0.174888, 0.936610, 0.303606,
		-0.213485, -0.337095, 0.916947,
		38.790874, 34.420010, 49.646183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280544, 35.216740, 49.461834>,  <38.940315, 34.655975, 49.004318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280544, 35.216740, 49.461834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.253513, 34.862446, 49.645535>,  <39.237293, 34.649872, 49.755756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.253513, 34.862446, 49.645535>,  <39.280544, 35.216740, 49.461834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253513, 34.862446, 49.645535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934299, 0.105307, 0.340582,
		-0.350027, 0.452096, 0.820421,
		-0.067580, -0.885731, 0.459253,
		39.233238, 34.596725, 49.783310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860069, 35.493900, 48.884670>,  <39.280544, 35.216740, 49.461834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860069, 35.493900, 48.884670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.528557, 35.512718, 48.661633>,  <38.329651, 35.524010, 48.527809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.528557, 35.512718, 48.661633>,  <38.860069, 35.493900, 48.884670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528557, 35.512718, 48.661633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035699, 0.989984, 0.136592,
		0.558440, 0.133110, -0.818796,
		-0.828777, 0.047048, -0.557598,
		38.279922, 35.526833, 48.494354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971561, 36.152279, 48.597832>,  <38.860069, 35.493900, 48.884670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971561, 36.152279, 48.597832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.583633, 36.070999, 48.543934>,  <38.350876, 36.022232, 48.511593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.583633, 36.070999, 48.543934>,  <38.971561, 36.152279, 48.597832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583633, 36.070999, 48.543934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241635, 0.874844, 0.419835,
		0.032571, 0.439724, -0.897542,
		-0.969820, -0.203203, -0.134748,
		38.292686, 36.010036, 48.503510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663509, 36.724216, 48.336845>,  <38.971561, 36.152279, 48.597832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663509, 36.724216, 48.336845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.353073, 36.513863, 48.476055>,  <38.166809, 36.387650, 48.559582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.353073, 36.513863, 48.476055>,  <38.663509, 36.724216, 48.336845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353073, 36.513863, 48.476055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431691, 0.845344, 0.314701,
		-0.459695, 0.094000, -0.883088,
		-0.776095, -0.525888, 0.348022,
		38.120243, 36.356098, 48.580463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138290, 37.169613, 48.223751>,  <38.663509, 36.724216, 48.336845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138290, 37.169613, 48.223751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.009819, 36.922779, 48.511097>,  <37.932735, 36.774681, 48.683506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.009819, 36.922779, 48.511097>,  <38.138290, 37.169613, 48.223751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009819, 36.922779, 48.511097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434764, 0.769975, 0.467032,
		-0.841322, -0.162319, -0.515586,
		-0.321181, -0.617083, 0.718368,
		37.913464, 36.737656, 48.726608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455326, 37.359795, 48.218071>,  <38.138290, 37.169613, 48.223751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455326, 37.359795, 48.218071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.554806, 37.190853, 48.566730>,  <37.614494, 37.089489, 48.775925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.554806, 37.190853, 48.566730>,  <37.455326, 37.359795, 48.218071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554806, 37.190853, 48.566730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605260, 0.634807, 0.480292,
		-0.756179, -0.647022, -0.097755,
		0.248704, -0.422354, 0.871644,
		37.629417, 37.064148, 48.828224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835087, 37.431835, 48.615665>,  <37.455326, 37.359795, 48.218071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835087, 37.431835, 48.615665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.118977, 37.367928, 48.890118>,  <37.289310, 37.329582, 49.054787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.118977, 37.367928, 48.890118>,  <36.835087, 37.431835, 48.615665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118977, 37.367928, 48.890118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428227, 0.675518, 0.600247,
		-0.559392, -0.719826, 0.411012,
		0.709720, -0.159766, 0.686128,
		37.331894, 37.319996, 49.095955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463947, 37.205910, 49.292286>,  <36.835087, 37.431835, 48.615665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463947, 37.205910, 49.292286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822998, 37.349968, 49.393921>,  <37.038429, 37.436401, 49.454903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822998, 37.349968, 49.393921>,  <36.463947, 37.205910, 49.292286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822998, 37.349968, 49.393921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432218, 0.606358, 0.667471,
		0.086318, -0.708962, 0.699945,
		0.897629, 0.360143, 0.254086,
		37.092285, 37.458012, 49.470146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394958, 37.298798, 49.941917>,  <36.463947, 37.205910, 49.292286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394958, 37.298798, 49.941917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.722580, 37.519047, 49.877464>,  <36.919151, 37.651196, 49.838791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.722580, 37.519047, 49.877464>,  <36.394958, 37.298798, 49.941917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722580, 37.519047, 49.877464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263799, 0.610861, 0.746498,
		0.509470, -0.568915, 0.645582,
		0.819055, 0.550622, -0.161136,
		36.968296, 37.684235, 49.829124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764145, 37.429928, 50.608044>,  <36.394958, 37.298798, 49.941917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764145, 37.429928, 50.608044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.850544, 37.722164, 50.348942>,  <36.902386, 37.897507, 50.193481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.850544, 37.722164, 50.348942>,  <36.764145, 37.429928, 50.608044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850544, 37.722164, 50.348942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226243, 0.682808, 0.694685,
		0.949820, -0.003503, 0.312778,
		0.216001, 0.730589, -0.647752,
		36.915344, 37.941341, 50.154617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945652, 37.997307, 51.127518>,  <36.764145, 37.429928, 50.608044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945652, 37.997307, 51.127518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904770, 38.189651, 50.779190>,  <36.880241, 38.305058, 50.570194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904770, 38.189651, 50.779190>,  <36.945652, 37.997307, 51.127518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904770, 38.189651, 50.779190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151002, 0.857759, 0.491373,
		0.983236, 0.181715, -0.015055,
		-0.102203, 0.480862, -0.870819,
		36.874107, 38.333912, 50.517944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204235, 38.703876, 51.274555>,  <36.945652, 37.997307, 51.127518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204235, 38.703876, 51.274555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.020386, 38.767517, 50.925056>,  <36.910076, 38.805702, 50.715355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.020386, 38.767517, 50.925056>,  <37.204235, 38.703876, 51.274555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020386, 38.767517, 50.925056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291286, 0.902396, 0.317544,
		0.838989, 0.400460, -0.368415,
		-0.459620, 0.159102, -0.873748,
		36.882500, 38.815247, 50.662933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453568, 39.316544, 50.945656>,  <37.204235, 38.703876, 51.274555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453568, 39.316544, 50.945656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.075104, 39.250492, 50.834293>,  <36.848026, 39.210861, 50.767475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.075104, 39.250492, 50.834293>,  <37.453568, 39.316544, 50.945656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075104, 39.250492, 50.834293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280281, 0.848191, 0.449459,
		0.161921, 0.503293, -0.848809,
		-0.946163, -0.165128, -0.278404,
		36.791256, 39.200954, 50.750771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259438, 39.936569, 50.968151>,  <37.453568, 39.316544, 50.945656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259438, 39.936569, 50.968151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.911407, 39.741394, 50.940193>,  <36.702591, 39.624287, 50.923416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.911407, 39.741394, 50.940193>,  <37.259438, 39.936569, 50.968151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911407, 39.741394, 50.940193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486822, 0.828388, 0.277086,
		-0.077298, 0.275113, -0.958299,
		-0.870074, -0.487940, -0.069898,
		36.650387, 39.595013, 50.919224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703594, 40.373672, 50.472916>,  <37.259438, 39.936569, 50.968151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703594, 40.373672, 50.472916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.516933, 40.116936, 50.716316>,  <36.404938, 39.962894, 50.862354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.516933, 40.116936, 50.716316>,  <36.703594, 40.373672, 50.472916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516933, 40.116936, 50.716316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520169, 0.755605, 0.398101,
		-0.715305, -0.130748, -0.686472,
		-0.466651, -0.641846, 0.608499,
		36.376938, 39.924381, 50.898865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065514, 40.642815, 50.389015>,  <36.703594, 40.373672, 50.472916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065514, 40.642815, 50.389015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.060688, 40.439667, 50.733555>,  <36.057793, 40.317780, 50.940281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.060688, 40.439667, 50.733555>,  <36.065514, 40.642815, 50.389015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060688, 40.439667, 50.733555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511104, 0.743516, 0.431227,
		-0.859434, -0.435036, -0.268545,
		-0.012068, -0.507865, 0.861352,
		36.057068, 40.287308, 50.991959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474957, 40.842560, 50.621994>,  <36.065514, 40.642815, 50.389015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474957, 40.842560, 50.621994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645546, 40.683861, 50.947132>,  <35.747902, 40.588642, 51.142216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645546, 40.683861, 50.947132>,  <35.474957, 40.842560, 50.621994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645546, 40.683861, 50.947132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416451, 0.711616, 0.565836,
		-0.802923, -0.579826, 0.138264,
		0.426477, -0.396743, 0.812842,
		35.773491, 40.564838, 51.190987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894650, 40.657970, 51.170719>,  <35.474957, 40.842560, 50.621994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894650, 40.657970, 51.170719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.228592, 40.682262, 51.389565>,  <35.428959, 40.696838, 51.520870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.228592, 40.682262, 51.389565>,  <34.894650, 40.657970, 51.170719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228592, 40.682262, 51.389565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444466, 0.660723, 0.604892,
		-0.324755, -0.748169, 0.578599,
		0.834856, 0.060726, 0.547109,
		35.479050, 40.700481, 51.553696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797012, 40.508389, 51.898407>,  <34.894650, 40.657970, 51.170719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797012, 40.508389, 51.898407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.107609, 40.760273, 51.889206>,  <35.293964, 40.911404, 51.883686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.107609, 40.760273, 51.889206>,  <34.797012, 40.508389, 51.898407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107609, 40.760273, 51.889206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386983, 0.505351, 0.771275,
		0.497306, -0.589984, 0.636087,
		0.776487, 0.629714, -0.023000,
		35.340553, 40.949188, 51.882305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887985, 40.411430, 52.567265>,  <34.797012, 40.508389, 51.898407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887985, 40.411430, 52.567265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.078690, 40.743103, 52.450542>,  <35.193111, 40.942108, 52.380508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.078690, 40.743103, 52.450542>,  <34.887985, 40.411430, 52.567265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078690, 40.743103, 52.450542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389471, 0.496861, 0.775526,
		0.788042, -0.256091, 0.559828,
		0.476762, 0.829184, -0.291807,
		35.221718, 40.991859, 52.362999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116531, 40.677689, 53.134338>,  <34.887985, 40.411430, 52.567265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116531, 40.677689, 53.134338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124905, 40.992035, 52.887119>,  <35.129929, 41.180641, 52.738789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124905, 40.992035, 52.887119>,  <35.116531, 40.677689, 53.134338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124905, 40.992035, 52.887119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311485, 0.592542, 0.742880,
		0.950020, 0.176959, 0.257191,
		0.020937, 0.785863, -0.618047,
		35.131187, 41.227795, 52.701706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368988, 41.180431, 53.485531>,  <35.116531, 40.677689, 53.134338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368988, 41.180431, 53.485531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.245598, 41.408916, 53.181278>,  <35.171566, 41.546005, 52.998726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.245598, 41.408916, 53.181278>,  <35.368988, 41.180431, 53.485531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245598, 41.408916, 53.181278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387798, 0.654646, 0.648885,
		0.868595, 0.495136, 0.019573,
		-0.308473, 0.571209, -0.760634,
		35.153057, 41.580280, 52.953087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498848, 41.948326, 53.700500>,  <35.368988, 41.180431, 53.485531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498848, 41.948326, 53.700500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.222065, 41.973408, 53.412815>,  <35.055996, 41.988457, 53.240204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.222065, 41.973408, 53.412815>,  <35.498848, 41.948326, 53.700500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222065, 41.973408, 53.412815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509416, 0.663504, 0.547958,
		0.511558, 0.745541, -0.427174,
		-0.691956, 0.062704, -0.719211,
		35.014477, 41.992218, 53.197052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237633, 42.644932, 53.728699>,  <35.498848, 41.948326, 53.700500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237633, 42.644932, 53.728699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.939770, 42.468250, 53.528545>,  <34.761051, 42.362240, 53.408455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.939770, 42.468250, 53.528545>,  <35.237633, 42.644932, 53.728699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939770, 42.468250, 53.528545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661583, 0.587629, 0.465833,
		0.088279, 0.677931, -0.729806,
		-0.744657, -0.441704, -0.500383,
		34.716373, 42.335739, 53.378429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816086, 43.135365, 53.381138>,  <35.237633, 42.644932, 53.728699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816086, 43.135365, 53.381138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.589279, 42.813942, 53.453568>,  <34.453194, 42.621090, 53.497025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.589279, 42.813942, 53.453568>,  <34.816086, 43.135365, 53.381138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589279, 42.813942, 53.453568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620252, 0.561174, 0.548062,
		-0.542015, 0.198446, -0.816602,
		-0.567016, -0.803557, 0.181079,
		34.419174, 42.572876, 53.507893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148113, 43.384014, 53.338058>,  <34.816086, 43.135365, 53.381138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148113, 43.384014, 53.338058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.107311, 43.052032, 53.557426>,  <34.082832, 42.852844, 53.689049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.107311, 43.052032, 53.557426>,  <34.148113, 43.384014, 53.338058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107311, 43.052032, 53.557426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639463, 0.477012, 0.602949,
		-0.762025, -0.289194, -0.579383,
		-0.102003, -0.829956, 0.548424,
		34.076710, 42.803047, 53.721954>
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
