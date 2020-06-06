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
	<41.126034, 34.467838, 47.415752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968452, 34.359409, 47.767052>,  <40.873901, 34.294353, 47.977833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968452, 34.359409, 47.767052>,  <41.126034, 34.467838, 47.415752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968452, 34.359409, 47.767052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762770, 0.436699, 0.476945,
		-0.512816, 0.857796, 0.034725,
		-0.393957, -0.271072, 0.878247,
		40.850266, 34.278088, 48.030525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147938, 35.047119, 47.795456>,  <41.126034, 34.467838, 47.415752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147938, 35.047119, 47.795456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142120, 34.752964, 48.066452>,  <41.138630, 34.576469, 48.229050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142120, 34.752964, 48.066452>,  <41.147938, 35.047119, 47.795456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142120, 34.752964, 48.066452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748150, 0.441518, 0.495311,
		-0.663370, 0.514062, 0.543764,
		-0.014539, -0.735392, 0.677486,
		41.137760, 34.532345, 48.269699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064068, 35.334175, 48.505383>,  <41.147938, 35.047119, 47.795456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064068, 35.334175, 48.505383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202312, 34.961384, 48.549141>,  <41.285259, 34.737709, 48.575394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202312, 34.961384, 48.549141>,  <41.064068, 35.334175, 48.505383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202312, 34.961384, 48.549141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812199, 0.355485, 0.462561,
		-0.469986, -0.071016, 0.879812,
		0.345610, -0.931980, 0.109394,
		41.305996, 34.681789, 48.581959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268749, 35.387531, 49.182095>,  <41.064068, 35.334175, 48.505383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268749, 35.387531, 49.182095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460026, 35.091110, 48.993553>,  <41.574791, 34.913258, 48.880428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460026, 35.091110, 48.993553>,  <41.268749, 35.387531, 49.182095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460026, 35.091110, 48.993553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863880, 0.300163, 0.404492,
		-0.158267, -0.600618, 0.783715,
		0.478187, -0.741054, -0.471356,
		41.603481, 34.868793, 48.852146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764114, 35.230442, 49.669796>,  <41.268749, 35.387531, 49.182095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764114, 35.230442, 49.669796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901203, 35.045654, 49.342594>,  <41.983456, 34.934784, 49.146275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901203, 35.045654, 49.342594>,  <41.764114, 35.230442, 49.669796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901203, 35.045654, 49.342594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929228, 0.294725, 0.222874,
		0.138125, -0.836495, 0.530282,
		0.342720, -0.461968, -0.818003,
		42.004021, 34.907063, 49.097195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273228, 34.745373, 49.858852>,  <41.764114, 35.230442, 49.669796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273228, 34.745373, 49.858852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370731, 34.818607, 49.477894>,  <42.429234, 34.862549, 49.249317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370731, 34.818607, 49.477894>,  <42.273228, 34.745373, 49.858852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370731, 34.818607, 49.477894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903236, 0.314775, 0.291686,
		0.353196, -0.931341, -0.088643,
		0.243756, 0.183087, -0.952398,
		42.443859, 34.873535, 49.192173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799427, 34.264297, 49.593754>,  <42.273228, 34.745373, 49.858852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799427, 34.264297, 49.593754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.839542, 34.566799, 49.335136>,  <42.863609, 34.748299, 49.179966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.839542, 34.566799, 49.335136>,  <42.799427, 34.264297, 49.593754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.839542, 34.566799, 49.335136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879688, 0.236210, 0.412739,
		0.464857, -0.610151, -0.641579,
		0.100286, 0.756254, -0.646547,
		42.869629, 34.793674, 49.141171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339333, 34.041183, 49.192547>,  <42.799427, 34.264297, 49.593754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339333, 34.041183, 49.192547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293045, 34.437065, 49.158836>,  <43.265274, 34.674595, 49.138611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293045, 34.437065, 49.158836>,  <43.339333, 34.041183, 49.192547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293045, 34.437065, 49.158836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829028, 0.142968, 0.540623,
		0.547104, -0.007308, -0.837033,
		-0.115718, 0.989700, -0.084277,
		43.258331, 34.733974, 49.133553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085705, 34.318630, 48.933945>,  <43.339333, 34.041183, 49.192547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085705, 34.318630, 48.933945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890568, 34.630238, 49.091496>,  <43.773487, 34.817204, 49.186028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890568, 34.630238, 49.091496>,  <44.085705, 34.318630, 48.933945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890568, 34.630238, 49.091496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822548, 0.259154, 0.506214,
		0.292275, 0.570937, -0.767207,
		-0.487842, 0.779018, 0.393879,
		43.744217, 34.863945, 49.209660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528461, 34.841545, 48.808426>,  <44.085705, 34.318630, 48.933945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528461, 34.841545, 48.808426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279823, 34.947590, 49.103271>,  <44.130642, 35.011215, 49.280178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279823, 34.947590, 49.103271>,  <44.528461, 34.841545, 48.808426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279823, 34.947590, 49.103271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773583, 0.355806, 0.524377,
		-0.123253, 0.896169, -0.426250,
		-0.621593, 0.265109, 0.737116,
		44.093346, 35.027122, 49.324406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705154, 35.410034, 49.068027>,  <44.528461, 34.841545, 48.808426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705154, 35.410034, 49.068027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.493366, 35.314362, 49.393593>,  <44.366291, 35.256958, 49.588932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.493366, 35.314362, 49.393593>,  <44.705154, 35.410034, 49.068027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493366, 35.314362, 49.393593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786477, 0.221229, 0.576638,
		-0.317982, 0.945436, 0.070978,
		-0.529472, -0.239183, 0.813911,
		44.334526, 35.242607, 49.637768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745716, 35.944778, 49.554302>,  <44.705154, 35.410034, 49.068027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745716, 35.944778, 49.554302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.648289, 35.621780, 49.769199>,  <44.589832, 35.427982, 49.898136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.648289, 35.621780, 49.769199>,  <44.745716, 35.944778, 49.554302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.648289, 35.621780, 49.769199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753367, 0.191344, 0.629146,
		-0.610829, 0.557982, 0.561732,
		-0.243568, -0.807492, 0.537244,
		44.575218, 35.379532, 49.930374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688709, 36.255390, 50.244976>,  <44.745716, 35.944778, 49.554302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688709, 36.255390, 50.244976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764740, 35.863384, 50.268471>,  <44.810356, 35.628181, 50.282570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764740, 35.863384, 50.268471>,  <44.688709, 36.255390, 50.244976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764740, 35.863384, 50.268471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821604, 0.191532, 0.536919,
		-0.537437, -0.053792, 0.841586,
		0.190073, -0.980011, 0.058740,
		44.821762, 35.569382, 50.286095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811958, 36.167091, 50.928234>,  <44.688709, 36.255390, 50.244976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811958, 36.167091, 50.928234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.983219, 35.841915, 50.770344>,  <45.085976, 35.646809, 50.675610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.983219, 35.841915, 50.770344>,  <44.811958, 36.167091, 50.928234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.983219, 35.841915, 50.770344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746992, 0.072541, 0.660863,
		-0.508610, -0.577808, 0.638321,
		0.428157, -0.812942, -0.394723,
		45.111668, 35.598034, 50.651928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727016, 35.686749, 51.421539>,  <44.811958, 36.167091, 50.928234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727016, 35.686749, 51.421539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031139, 35.577606, 51.185749>,  <45.213615, 35.512119, 51.044277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031139, 35.577606, 51.185749>,  <44.727016, 35.686749, 51.421539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031139, 35.577606, 51.185749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623121, 0.050106, 0.780519,
		-0.183435, -0.960748, 0.208121,
		0.760310, -0.272859, -0.589472,
		45.259232, 35.495747, 51.008907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.070141, 35.372490, 51.913467>,  <44.727016, 35.686749, 51.421539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.070141, 35.372490, 51.913467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.343266, 35.420830, 51.625256>,  <45.507141, 35.449833, 51.452328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.343266, 35.420830, 51.625256>,  <45.070141, 35.372490, 51.913467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343266, 35.420830, 51.625256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723608, 0.024195, 0.689786,
		0.100792, -0.992376, -0.070926,
		0.682811, 0.120848, -0.720531,
		45.548107, 35.457085, 51.409096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593102, 34.941483, 52.085316>,  <45.070141, 35.372490, 51.913467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593102, 34.941483, 52.085316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779980, 35.194096, 51.837803>,  <45.892105, 35.345665, 51.689297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779980, 35.194096, 51.837803>,  <45.593102, 34.941483, 52.085316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779980, 35.194096, 51.837803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802436, -0.008997, 0.596670,
		0.371252, -0.775293, -0.510972,
		0.467192, 0.631537, -0.618783,
		45.920135, 35.383556, 51.652168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.126656, 34.576260, 51.760376>,  <45.593102, 34.941483, 52.085316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.126656, 34.576260, 51.760376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221607, 34.964725, 51.751492>,  <46.278580, 35.197803, 51.746159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221607, 34.964725, 51.751492>,  <46.126656, 34.576260, 51.760376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221607, 34.964725, 51.751492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870503, -0.202518, 0.448566,
		0.431131, -0.125821, -0.893474,
		0.237383, 0.971162, -0.022216,
		46.292824, 35.256073, 51.744827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.839180, 34.529694, 51.727459>,  <46.126656, 34.576260, 51.760376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.839180, 34.529694, 51.727459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.794888, 34.919926, 51.803337>,  <46.768311, 35.154064, 51.848862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.794888, 34.919926, 51.803337>,  <46.839180, 34.529694, 51.727459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.794888, 34.919926, 51.803337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893542, 0.014164, 0.448756,
		0.435111, 0.219189, -0.873290,
		-0.110732, 0.975580, 0.189691,
		46.761669, 35.212601, 51.860245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.442146, 34.804131, 51.494953>,  <46.839180, 34.529694, 51.727459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.442146, 34.804131, 51.494953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.292706, 35.026863, 51.791698>,  <47.203041, 35.160503, 51.969746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.292706, 35.026863, 51.791698>,  <47.442146, 34.804131, 51.494953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.292706, 35.026863, 51.791698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872655, -0.060156, 0.484618,
		0.314480, 0.828442, -0.463451,
		-0.373598, 0.556835, 0.741862,
		47.180626, 35.193913, 52.014256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.066185, 35.062012, 51.732880>,  <47.442146, 34.804131, 51.494953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.066185, 35.062012, 51.732880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.811028, 35.165119, 52.023163>,  <47.657932, 35.226986, 52.197330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.811028, 35.165119, 52.023163>,  <48.066185, 35.062012, 51.732880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.811028, 35.165119, 52.023163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757286, 0.038599, 0.651941,
		0.140041, 0.965435, -0.219829,
		-0.637892, 0.257772, 0.725705,
		47.619659, 35.242451, 52.240875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.119871, 34.552200, 52.318104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.208139, 34.905994, 52.153675>,  <24.261101, 35.118271, 52.055016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.208139, 34.905994, 52.153675>,  <24.119871, 34.552200, 52.318104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.208139, 34.905994, 52.153675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716717, -0.432908, -0.546724,
		-0.661529, -0.173978, -0.729459,
		0.220671, 0.884490, -0.411074,
		24.274340, 35.171341, 52.030354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.443813, 34.498959, 51.696564>,  <24.119871, 34.552200, 52.318104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.443813, 34.498959, 51.696564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.562635, 34.866962, 51.798809>,  <24.633928, 35.087765, 51.860157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.562635, 34.866962, 51.798809>,  <24.443813, 34.498959, 51.696564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.562635, 34.866962, 51.798809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823219, -0.111119, -0.556743,
		-0.483806, 0.375810, -0.790379,
		0.297056, 0.920010, 0.255614,
		24.651752, 35.142967, 51.875492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.590504, 34.696362, 51.076477>,  <24.443813, 34.498959, 51.696564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.590504, 34.696362, 51.076477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.763329, 34.966518, 51.315529>,  <24.867023, 35.128613, 51.458961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.763329, 34.966518, 51.315529>,  <24.590504, 34.696362, 51.076477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.763329, 34.966518, 51.315529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804260, 0.011261, -0.594170,
		-0.408028, 0.737372, -0.538326,
		0.432063, 0.675393, 0.597634,
		24.892948, 35.169136, 51.494820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.841837, 35.178341, 50.604465>,  <24.590504, 34.696362, 51.076477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.841837, 35.178341, 50.604465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.069523, 35.198013, 50.932751>,  <25.206135, 35.209816, 51.129723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.069523, 35.198013, 50.932751>,  <24.841837, 35.178341, 50.604465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.069523, 35.198013, 50.932751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810356, -0.202296, -0.549908,
		0.138982, 0.978089, -0.155004,
		0.569216, 0.049182, 0.820716,
		25.240288, 35.212769, 51.178967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.462250, 35.554886, 50.369694>,  <24.841837, 35.178341, 50.604465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.462250, 35.554886, 50.369694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.560402, 35.396599, 50.723686>,  <25.619293, 35.301628, 50.936081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.560402, 35.396599, 50.723686>,  <25.462250, 35.554886, 50.369694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.560402, 35.396599, 50.723686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945147, -0.105378, -0.309179,
		0.215606, 0.912307, 0.348152,
		0.245379, -0.395716, 0.884985,
		25.634016, 35.277885, 50.989182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125725, 35.860931, 50.503483>,  <25.462250, 35.554886, 50.369694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125725, 35.860931, 50.503483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.109842, 35.512516, 50.699326>,  <26.100313, 35.303467, 50.816830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.109842, 35.512516, 50.699326>,  <26.125725, 35.860931, 50.503483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109842, 35.512516, 50.699326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929138, -0.212448, -0.302603,
		0.367595, 0.442897, 0.817751,
		-0.039707, -0.871039, 0.489607,
		26.097931, 35.251205, 50.846207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762165, 35.809341, 50.878719>,  <26.125725, 35.860931, 50.503483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762165, 35.809341, 50.878719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.638685, 35.431744, 50.925343>,  <26.564598, 35.205185, 50.953316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.638685, 35.431744, 50.925343>,  <26.762165, 35.809341, 50.878719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638685, 35.431744, 50.925343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871863, -0.329816, -0.362046,
		0.380211, -0.010139, 0.924844,
		-0.308699, -0.943991, 0.116560,
		26.546076, 35.148548, 50.960312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277317, 35.421867, 51.197041>,  <26.762165, 35.809341, 50.878719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277317, 35.421867, 51.197041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.060699, 35.152676, 50.995518>,  <26.930729, 34.991161, 50.874603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.060699, 35.152676, 50.995518>,  <27.277317, 35.421867, 51.197041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060699, 35.152676, 50.995518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840667, -0.431629, -0.327070,
		0.002653, -0.600660, 0.799500,
		-0.541545, -0.672981, -0.503810,
		26.898235, 34.950783, 50.844376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676950, 34.707981, 51.200958>,  <27.277317, 35.421867, 51.197041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676950, 34.707981, 51.200958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.418724, 34.671150, 50.897705>,  <27.263788, 34.649052, 50.715752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.418724, 34.671150, 50.897705>,  <27.676950, 34.707981, 51.200958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418724, 34.671150, 50.897705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641647, -0.603751, -0.473047,
		-0.414169, -0.791837, 0.448841,
		-0.645564, -0.092076, -0.758135,
		27.225056, 34.643528, 50.670265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650061, 33.936760, 50.991352>,  <27.676950, 34.707981, 51.200958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650061, 33.936760, 50.991352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.533901, 34.161953, 50.681843>,  <27.464205, 34.297070, 50.496136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.533901, 34.161953, 50.681843>,  <27.650061, 33.936760, 50.991352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533901, 34.161953, 50.681843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657550, -0.470062, -0.588787,
		-0.695195, -0.679777, -0.233680,
		-0.290399, 0.562978, -0.773772,
		27.446781, 34.330845, 50.449711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810505, 33.543262, 50.360416>,  <27.650061, 33.936760, 50.991352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810505, 33.543262, 50.360416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.745392, 33.901707, 50.195255>,  <27.706324, 34.116772, 50.096161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.745392, 33.901707, 50.195255>,  <27.810505, 33.543262, 50.360416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745392, 33.901707, 50.195255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794806, -0.128866, -0.593024,
		-0.584624, -0.424711, -0.691257,
		-0.162784, 0.896111, -0.412901,
		27.696556, 34.170540, 50.071384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884253, 33.425468, 49.616970>,  <27.810505, 33.543262, 50.360416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884253, 33.425468, 49.616970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.960737, 33.808125, 49.704853>,  <28.006628, 34.037720, 49.757584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.960737, 33.808125, 49.704853>,  <27.884253, 33.425468, 49.616970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960737, 33.808125, 49.704853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873409, -0.063690, -0.482804,
		-0.447878, 0.284215, -0.847719,
		0.191212, 0.956643, 0.219710,
		28.018101, 34.095116, 49.770767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192522, 33.726788, 49.035595>,  <27.884253, 33.425468, 49.616970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192522, 33.726788, 49.035595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.321360, 33.981075, 49.316200>,  <28.398663, 34.133648, 49.484562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.321360, 33.981075, 49.316200>,  <28.192522, 33.726788, 49.035595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321360, 33.981075, 49.316200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899368, 0.025917, -0.436423,
		-0.295623, 0.771487, -0.563396,
		0.322093, 0.635717, 0.701512,
		28.417988, 34.171791, 49.526653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574371, 34.201710, 48.661644>,  <28.192522, 33.726788, 49.035595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574371, 34.201710, 48.661644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.697285, 34.249275, 49.039307>,  <28.771032, 34.277817, 49.265903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.697285, 34.249275, 49.039307>,  <28.574371, 34.201710, 48.661644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697285, 34.249275, 49.039307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927700, 0.183614, -0.325051,
		-0.212015, 0.975779, -0.053899,
		0.307281, 0.118918, 0.944159,
		28.789469, 34.284950, 49.322556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154705, 34.590405, 48.627468>,  <28.574371, 34.201710, 48.661644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154705, 34.590405, 48.627468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.219145, 34.464798, 49.001728>,  <29.257809, 34.389435, 49.226284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.219145, 34.464798, 49.001728>,  <29.154705, 34.590405, 48.627468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219145, 34.464798, 49.001728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984997, 0.110588, -0.132483,
		-0.061871, 0.942957, 0.327116,
		0.161101, -0.314012, 0.935651,
		29.267475, 34.370594, 49.282425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580017, 35.100479, 48.901253>,  <29.154705, 34.590405, 48.627468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580017, 35.100479, 48.901253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.620674, 34.773911, 49.128628>,  <29.645069, 34.577969, 49.265053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.620674, 34.773911, 49.128628>,  <29.580017, 35.100479, 48.901253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620674, 34.773911, 49.128628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994165, 0.104112, -0.028237,
		-0.036127, 0.567987, 0.822244,
		0.101644, -0.816426, 0.568434,
		29.651167, 34.528984, 49.299156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299814, 35.170212, 49.344315>,  <29.580017, 35.100479, 48.901253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299814, 35.170212, 49.344315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.251472, 34.779560, 49.415398>,  <30.222467, 34.545170, 49.458050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.251472, 34.779560, 49.415398>,  <30.299814, 35.170212, 49.344315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251472, 34.779560, 49.415398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987041, -0.137266, -0.083110,
		0.105561, 0.165363, 0.980567,
		-0.120856, -0.976634, 0.177710,
		30.215216, 34.486568, 49.468712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790730, 34.979649, 49.916985>,  <30.299814, 35.170212, 49.344315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790730, 34.979649, 49.916985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.683739, 34.672611, 49.684002>,  <30.619545, 34.488388, 49.544212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.683739, 34.672611, 49.684002>,  <30.790730, 34.979649, 49.916985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683739, 34.672611, 49.684002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963564, -0.213328, -0.161355,
		-0.000399, -0.604391, 0.796687,
		-0.267477, -0.767595, -0.582455,
		30.603495, 34.442333, 49.509266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084257, 34.405121, 50.134777>,  <30.790730, 34.979649, 49.916985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084257, 34.405121, 50.134777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.017687, 34.343616, 49.745182>,  <30.977745, 34.306713, 49.511425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.017687, 34.343616, 49.745182>,  <31.084257, 34.405121, 50.134777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017687, 34.343616, 49.745182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909711, -0.405035, -0.091501,
		-0.380431, -0.901279, 0.207288,
		-0.166427, -0.153763, -0.973991,
		30.967758, 34.297489, 49.452984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440334, 33.855927, 50.058910>,  <31.084257, 34.405121, 50.134777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440334, 33.855927, 50.058910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.366985, 33.955208, 49.678432>,  <31.322975, 34.014778, 49.450146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.366985, 33.955208, 49.678432>,  <31.440334, 33.855927, 50.058910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366985, 33.955208, 49.678432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933002, -0.260843, -0.247930,
		-0.309649, -0.932929, -0.183744,
		-0.183373, 0.248205, -0.951193,
		31.311974, 34.029671, 49.393074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813530, 33.353027, 49.554966>,  <31.440334, 33.855927, 50.058910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813530, 33.353027, 49.554966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.738375, 33.672897, 49.326855>,  <31.693281, 33.864819, 49.189987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.738375, 33.672897, 49.326855>,  <31.813530, 33.353027, 49.554966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738375, 33.672897, 49.326855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766349, -0.243805, -0.594363,
		-0.614334, -0.548705, -0.567023,
		-0.187887, 0.799676, -0.570278,
		31.682009, 33.912800, 49.155773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.640242, 34.934303, 34.975075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.508907, 35.185150, 35.257614>,  <24.430107, 35.335659, 35.427135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.508907, 35.185150, 35.257614>,  <24.640242, 34.934303, 34.975075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.508907, 35.185150, 35.257614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876192, -0.077113, 0.475753,
		0.352820, 0.775100, -0.524154,
		-0.328337, 0.627115, 0.706344,
		24.410406, 35.373283, 35.469517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.178535, 35.213161, 35.140106>,  <24.640242, 34.934303, 34.975075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.178535, 35.213161, 35.140106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.954359, 35.292175, 35.461823>,  <24.819853, 35.339584, 35.654854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.954359, 35.292175, 35.461823>,  <25.178535, 35.213161, 35.140106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.954359, 35.292175, 35.461823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826143, 0.201634, 0.526148,
		-0.058240, 0.959335, -0.276196,
		-0.560443, 0.197535, 0.804291,
		24.786226, 35.351437, 35.703110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.198978, 35.994900, 35.479038>,  <25.178535, 35.213161, 35.140106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.198978, 35.994900, 35.479038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.122517, 35.746071, 35.782745>,  <25.076639, 35.596771, 35.964970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.122517, 35.746071, 35.782745>,  <25.198978, 35.994900, 35.479038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.122517, 35.746071, 35.782745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644637, 0.503762, 0.575036,
		-0.740205, 0.599370, 0.304718,
		-0.191154, -0.622077, 0.759263,
		25.065170, 35.559448, 36.010525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.258638, 36.297974, 36.123116>,  <25.198978, 35.994900, 35.479038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.258638, 36.297974, 36.123116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.290686, 35.934235, 36.286411>,  <25.309914, 35.715992, 36.384388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.290686, 35.934235, 36.286411>,  <25.258638, 36.297974, 36.123116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290686, 35.934235, 36.286411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586059, 0.374266, 0.718651,
		-0.806297, 0.181678, 0.562919,
		0.080119, -0.909350, 0.408244,
		25.314722, 35.661430, 36.408886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.050686, 36.302532, 36.830162>,  <25.258638, 36.297974, 36.123116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.050686, 36.302532, 36.830162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.314363, 36.004444, 36.789932>,  <25.472570, 35.825592, 36.765793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.314363, 36.004444, 36.789932>,  <25.050686, 36.302532, 36.830162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.314363, 36.004444, 36.789932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599589, 0.440167, 0.668390,
		-0.453825, -0.500904, 0.736979,
		0.659193, -0.745217, -0.100578,
		25.512121, 35.780880, 36.759758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187057, 36.176632, 37.471474>,  <25.050686, 36.302532, 36.830162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187057, 36.176632, 37.471474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.476805, 36.003254, 37.257030>,  <25.650654, 35.899227, 37.128365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.476805, 36.003254, 37.257030>,  <25.187057, 36.176632, 37.471474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476805, 36.003254, 37.257030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689084, 0.431188, 0.582444,
		-0.021295, -0.791328, 0.611021,
		0.724369, -0.433448, -0.536109,
		25.694115, 35.873219, 37.096199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593401, 35.762264, 37.938507>,  <25.187057, 36.176632, 37.471474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593401, 35.762264, 37.938507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.774349, 35.923817, 37.620453>,  <25.882919, 36.020748, 37.429619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.774349, 35.923817, 37.620453>,  <25.593401, 35.762264, 37.938507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.774349, 35.923817, 37.620453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597950, 0.524132, 0.606417,
		0.661676, -0.749777, -0.004398,
		0.452373, 0.403881, -0.795135,
		25.910061, 36.044979, 37.381912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.290283, 35.539883, 37.784222>,  <25.593401, 35.762264, 37.938507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.290283, 35.539883, 37.784222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.212275, 35.919472, 37.685085>,  <26.165468, 36.147224, 37.625603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.212275, 35.919472, 37.685085>,  <26.290283, 35.539883, 37.784222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212275, 35.919472, 37.685085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728960, 0.309304, 0.610695,
		0.656188, -0.061567, -0.752081,
		-0.195023, 0.948968, -0.247842,
		26.153767, 36.204163, 37.610733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011446, 35.885365, 37.571423>,  <26.290283, 35.539883, 37.784222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.011446, 35.885365, 37.571423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.735935, 36.129536, 37.727863>,  <26.570629, 36.276039, 37.821728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.735935, 36.129536, 37.727863>,  <27.011446, 35.885365, 37.571423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735935, 36.129536, 37.727863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700482, 0.421329, 0.576026,
		0.186843, 0.670712, -0.717799,
		-0.688777, 0.610432, 0.391099,
		26.529303, 36.312664, 37.845192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141928, 36.584610, 37.378853>,  <27.011446, 35.885365, 37.571423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141928, 36.584610, 37.378853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.958456, 36.532391, 37.730438>,  <26.848373, 36.501060, 37.941387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.958456, 36.532391, 37.730438>,  <27.141928, 36.584610, 37.378853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958456, 36.532391, 37.730438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734305, 0.501348, 0.457653,
		-0.500411, 0.855340, -0.134095,
		-0.458677, -0.130548, 0.878961,
		26.820852, 36.493225, 37.994125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085112, 37.155430, 37.812138>,  <27.141928, 36.584610, 37.378853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085112, 37.155430, 37.812138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.167522, 36.836338, 38.038830>,  <27.216969, 36.644882, 38.174843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.167522, 36.836338, 38.038830>,  <27.085112, 37.155430, 37.812138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167522, 36.836338, 38.038830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836273, 0.444275, 0.321351,
		-0.508134, 0.407732, 0.758653,
		0.206025, -0.797731, 0.566727,
		27.229330, 36.597019, 38.208847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037769, 37.332691, 38.487812>,  <27.085112, 37.155430, 37.812138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037769, 37.332691, 38.487812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.321144, 37.083714, 38.354740>,  <27.491169, 36.934326, 38.274899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.321144, 37.083714, 38.354740>,  <27.037769, 37.332691, 38.487812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321144, 37.083714, 38.354740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705083, 0.645031, 0.294606,
		0.031210, -0.443276, 0.895842,
		0.708438, -0.622448, -0.332678,
		27.533676, 36.896980, 38.254936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473585, 37.231174, 39.060551>,  <27.037769, 37.332691, 38.487812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473585, 37.231174, 39.060551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.648064, 37.162914, 38.707142>,  <27.752750, 37.121956, 38.495098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.648064, 37.162914, 38.707142>,  <27.473585, 37.231174, 39.060551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648064, 37.162914, 38.707142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759541, 0.596321, 0.259805,
		0.482526, -0.784396, 0.389732,
		0.436196, -0.170655, -0.883521,
		27.778923, 37.111717, 38.442085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127014, 36.869537, 39.158596>,  <27.473585, 37.231174, 39.060551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127014, 36.869537, 39.158596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.094557, 37.166981, 38.893127>,  <28.075083, 37.345448, 38.733845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.094557, 37.166981, 38.893127>,  <28.127014, 36.869537, 39.158596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094557, 37.166981, 38.893127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829672, 0.419383, 0.368459,
		0.552323, -0.520733, -0.650981,
		-0.081142, 0.743609, -0.663673,
		28.070215, 37.390064, 38.694027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776768, 36.853893, 38.672230>,  <28.127014, 36.869537, 39.158596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776768, 36.853893, 38.672230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.612356, 37.197102, 38.795422>,  <28.513710, 37.403027, 38.869335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.612356, 37.197102, 38.795422>,  <28.776768, 36.853893, 38.672230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612356, 37.197102, 38.795422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866302, 0.262436, 0.425026,
		0.283857, 0.441502, -0.851176,
		-0.411029, 0.858023, 0.307980,
		28.489048, 37.454510, 38.887817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199444, 37.021664, 39.216457>,  <28.776768, 36.853893, 38.672230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199444, 37.021664, 39.216457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.078566, 37.391045, 39.121876>,  <29.006039, 37.612675, 39.065128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.078566, 37.391045, 39.121876>,  <29.199444, 37.021664, 39.216457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078566, 37.391045, 39.121876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744748, 0.383551, 0.546113,
		0.595002, -0.011066, -0.803648,
		-0.302197, 0.923453, -0.236455,
		28.987907, 37.668079, 39.050938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796858, 37.467556, 39.006798>,  <29.199444, 37.021664, 39.216457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796858, 37.467556, 39.006798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.501993, 37.688103, 39.163052>,  <29.325075, 37.820431, 39.256802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.501993, 37.688103, 39.163052>,  <29.796858, 37.467556, 39.006798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501993, 37.688103, 39.163052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663331, 0.480299, 0.573851,
		0.128781, 0.682138, -0.719794,
		-0.737162, 0.551363, 0.390630,
		29.280844, 37.853512, 39.280239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868528, 38.197891, 38.873104>,  <29.796858, 37.467556, 39.006798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868528, 38.197891, 38.873104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.693672, 38.115612, 39.223328>,  <29.588758, 38.066246, 39.433460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.693672, 38.115612, 39.223328>,  <29.868528, 38.197891, 38.873104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693672, 38.115612, 39.223328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801445, 0.352702, 0.482998,
		-0.408160, 0.912848, 0.010672,
		-0.437140, -0.205693, 0.875556,
		29.562531, 38.053905, 39.485996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822577, 38.869919, 39.230400>,  <29.868528, 38.197891, 38.873104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822577, 38.869919, 39.230400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.004992, 38.575970, 39.431198>,  <30.114441, 38.399601, 39.551678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.004992, 38.575970, 39.431198>,  <29.822577, 38.869919, 39.230400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004992, 38.575970, 39.431198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515029, 0.677932, 0.524551,
		-0.725792, 0.019325, 0.687643,
		0.456038, -0.734871, 0.501990,
		30.141804, 38.355507, 39.581795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751701, 38.900906, 40.040077>,  <29.822577, 38.869919, 39.230400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751701, 38.900906, 40.040077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.095430, 38.726048, 39.933895>,  <30.301668, 38.621132, 39.870186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.095430, 38.726048, 39.933895>,  <29.751701, 38.900906, 40.040077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095430, 38.726048, 39.933895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510413, 0.765856, 0.391080,
		0.032344, -0.471558, 0.881242,
		0.859321, -0.437148, -0.265460,
		30.353226, 38.594902, 39.854256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128586, 39.011513, 40.605740>,  <29.751701, 38.900906, 40.040077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128586, 39.011513, 40.605740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.332962, 39.010918, 40.261894>,  <30.455587, 39.010559, 40.055588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.332962, 39.010918, 40.261894>,  <30.128586, 39.011513, 40.605740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332962, 39.010918, 40.261894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435363, 0.862710, 0.257274,
		0.741215, -0.505696, 0.441442,
		0.510939, -0.001492, -0.859616,
		30.486244, 39.010471, 40.004009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939070, 38.911205, 40.601994>,  <30.128586, 39.011513, 40.605740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939070, 38.911205, 40.601994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.816074, 39.125443, 40.287392>,  <30.742277, 39.253983, 40.098629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.816074, 39.125443, 40.287392>,  <30.939070, 38.911205, 40.601994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816074, 39.125443, 40.287392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557134, 0.771397, 0.307486,
		0.771397, -0.343643, -0.535589,
		-0.307486, 0.535589, -0.786509,
		30.723829, 39.286118, 40.051437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575037, 39.380196, 40.401623>,  <30.939070, 38.911205, 40.601994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575037, 39.380196, 40.401623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.252256, 39.543823, 40.231213>,  <31.058588, 39.642002, 40.128967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.252256, 39.543823, 40.231213>,  <31.575037, 39.380196, 40.401623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252256, 39.543823, 40.231213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368754, 0.912399, 0.177620,
		0.461360, -0.013767, -0.887106,
		-0.806949, 0.409071, -0.426021,
		31.010172, 39.666546, 40.103405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811390, 38.949390, 39.784298>,  <31.575037, 39.380196, 40.401623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811390, 38.949390, 39.784298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104980, 38.730595, 39.623257>,  <32.281136, 38.599319, 39.526634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104980, 38.730595, 39.623257>,  <31.811390, 38.949390, 39.784298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104980, 38.730595, 39.623257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137452, -0.460881, 0.876753,
		-0.665122, -0.698853, -0.263091,
		0.733975, -0.546985, -0.402601,
		32.325172, 38.566498, 39.502476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774651, 38.443176, 40.181801>,  <31.811390, 38.949390, 39.784298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774651, 38.443176, 40.181801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.136768, 38.386818, 40.021507>,  <32.354038, 38.353004, 39.925331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.136768, 38.386818, 40.021507>,  <31.774651, 38.443176, 40.181801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136768, 38.386818, 40.021507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291160, -0.481100, 0.826903,
		-0.309298, -0.865270, -0.394516,
		0.905296, -0.140892, -0.400735,
		32.408356, 38.344551, 39.901287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893103, 37.722992, 40.266808>,  <31.774651, 38.443176, 40.181801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893103, 37.722992, 40.266808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.236080, 37.917683, 40.200016>,  <32.441868, 38.034496, 40.159943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.236080, 37.917683, 40.200016>,  <31.893103, 37.722992, 40.266808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236080, 37.917683, 40.200016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425089, -0.487141, 0.762885,
		0.289978, -0.725112, -0.624600,
		0.857445, 0.486731, -0.166977,
		32.493313, 38.063702, 40.149921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609283, 37.341766, 40.121101>,  <31.893103, 37.722992, 40.266808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609283, 37.341766, 40.121101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.649456, 37.685478, 40.321720>,  <32.673557, 37.891705, 40.442093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.649456, 37.685478, 40.321720>,  <32.609283, 37.341766, 40.121101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649456, 37.685478, 40.321720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529274, -0.472992, 0.704378,
		0.842487, 0.194717, -0.502297,
		0.100428, 0.859281, 0.501548,
		32.679585, 37.943264, 40.472183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279408, 37.448524, 40.154587>,  <32.609283, 37.341766, 40.121101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279408, 37.448524, 40.154587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.093601, 37.589031, 40.479752>,  <32.982117, 37.673336, 40.674850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.093601, 37.589031, 40.479752>,  <33.279408, 37.448524, 40.154587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093601, 37.589031, 40.479752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505160, -0.648854, 0.569036,
		0.727349, 0.674981, 0.123957,
		-0.464518, 0.351269, 0.812916,
		32.954247, 37.694412, 40.723625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717892, 37.305393, 40.784294>,  <33.279408, 37.448524, 40.154587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717892, 37.305393, 40.784294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.415787, 37.400135, 41.028744>,  <33.234524, 37.456982, 41.175415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.415787, 37.400135, 41.028744>,  <33.717892, 37.305393, 40.784294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415787, 37.400135, 41.028744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437197, -0.512609, 0.738980,
		0.488300, 0.825308, 0.283603,
		-0.755263, 0.236853, 0.611129,
		33.189209, 37.471191, 41.212082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987103, 37.487453, 41.445534>,  <33.717892, 37.305393, 40.784294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987103, 37.487453, 41.445534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.613285, 37.398800, 41.556889>,  <33.388992, 37.345608, 41.623699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.613285, 37.398800, 41.556889>,  <33.987103, 37.487453, 41.445534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613285, 37.398800, 41.556889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319882, -0.180569, 0.930092,
		-0.155876, 0.958265, 0.239648,
		-0.934547, -0.221638, 0.278385,
		33.332920, 37.332310, 41.640404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880337, 37.887417, 41.985622>,  <33.987103, 37.487453, 41.445534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880337, 37.887417, 41.985622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.677185, 37.543278, 41.968380>,  <33.555294, 37.336796, 41.958035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.677185, 37.543278, 41.968380>,  <33.880337, 37.887417, 41.985622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677185, 37.543278, 41.968380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357479, -0.256031, 0.898141,
		-0.783751, 0.440737, 0.437589,
		-0.507881, -0.860348, -0.043110,
		33.524822, 37.285172, 41.955448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325779, 37.789734, 42.648163>,  <33.880337, 37.887417, 41.985622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325779, 37.789734, 42.648163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.478989, 37.468483, 42.465611>,  <33.570915, 37.275734, 42.356079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.478989, 37.468483, 42.465611>,  <33.325779, 37.789734, 42.648163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478989, 37.468483, 42.465611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384679, -0.310501, 0.869259,
		-0.839831, -0.508504, 0.190018,
		0.383020, -0.803127, -0.456379,
		33.593895, 37.227547, 42.328697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064957, 37.148510, 42.984718>,  <33.325779, 37.789734, 42.648163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064957, 37.148510, 42.984718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.433277, 37.107574, 42.834167>,  <33.654270, 37.083012, 42.743835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.433277, 37.107574, 42.834167>,  <33.064957, 37.148510, 42.984718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433277, 37.107574, 42.834167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306324, -0.407603, 0.860247,
		-0.241451, -0.907406, -0.343970,
		0.920797, -0.102341, -0.376377,
		33.709515, 37.076874, 42.721256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351192, 36.373158, 42.966076>,  <33.064957, 37.148510, 42.984718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351192, 36.373158, 42.966076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604759, 36.679241, 43.011002>,  <33.756897, 36.862892, 43.037956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604759, 36.679241, 43.011002>,  <33.351192, 36.373158, 42.966076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604759, 36.679241, 43.011002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248981, -0.339401, 0.907092,
		0.732231, -0.547054, -0.405672,
		0.633913, 0.765206, 0.112314,
		33.794933, 36.908802, 43.044697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063347, 36.279968, 42.959202>,  <33.351192, 36.373158, 42.966076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063347, 36.279968, 42.959202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.947865, 36.577160, 43.200741>,  <33.878574, 36.755474, 43.345665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.947865, 36.577160, 43.200741>,  <34.063347, 36.279968, 42.959202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947865, 36.577160, 43.200741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204439, -0.568314, 0.797010,
		0.935337, 0.353547, 0.012179,
		-0.288702, 0.742983, 0.603844,
		33.861256, 36.800056, 43.381893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563576, 36.255211, 43.479382>,  <34.063347, 36.279968, 42.959202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563576, 36.255211, 43.479382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.243626, 36.440063, 43.632553>,  <34.051655, 36.550976, 43.724457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.243626, 36.440063, 43.632553>,  <34.563576, 36.255211, 43.479382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243626, 36.440063, 43.632553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062382, -0.570555, 0.818886,
		0.596916, 0.678894, 0.427544,
		-0.799875, 0.462135, 0.382924,
		34.003662, 36.578705, 43.747429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710953, 36.515701, 44.103848>,  <34.563576, 36.255211, 43.479382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710953, 36.515701, 44.103848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.313057, 36.486267, 44.132362>,  <34.074322, 36.468605, 44.149471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.313057, 36.486267, 44.132362>,  <34.710953, 36.515701, 44.103848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313057, 36.486267, 44.132362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101474, -0.611534, 0.784684,
		-0.014146, 0.787789, 0.615783,
		-0.994738, -0.073587, 0.071289,
		34.014637, 36.464191, 44.153748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372696, 36.878204, 44.727055>,  <34.710953, 36.515701, 44.103848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372696, 36.878204, 44.727055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.186920, 36.545143, 44.606400>,  <34.075455, 36.345306, 44.534004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.186920, 36.545143, 44.606400>,  <34.372696, 36.878204, 44.727055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186920, 36.545143, 44.606400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165229, -0.416094, 0.894184,
		-0.870053, 0.365457, 0.330830,
		-0.464442, -0.832650, -0.301640,
		34.047588, 36.295349, 44.515907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795757, 36.648243, 45.162354>,  <34.372696, 36.878204, 44.727055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795757, 36.648243, 45.162354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.956551, 36.324497, 44.991077>,  <34.053024, 36.130249, 44.888313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.956551, 36.324497, 44.991077>,  <33.795757, 36.648243, 45.162354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956551, 36.324497, 44.991077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050831, -0.447188, 0.892995,
		-0.914237, -0.380731, -0.138620,
		0.401980, -0.809362, -0.428189,
		34.077145, 36.081688, 44.862621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455574, 36.063408, 45.417183>,  <33.795757, 36.648243, 45.162354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455574, 36.063408, 45.417183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.816231, 35.901741, 45.355614>,  <34.032623, 35.804741, 45.318672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.816231, 35.901741, 45.355614>,  <33.455574, 36.063408, 45.417183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816231, 35.901741, 45.355614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102133, -0.544821, 0.832309,
		-0.420250, -0.734725, -0.532512,
		0.901642, -0.404164, -0.153921,
		34.086723, 35.780491, 45.309437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376240, 35.320335, 45.629005>,  <33.455574, 36.063408, 45.417183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376240, 35.320335, 45.629005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.759678, 35.424519, 45.675064>,  <33.989738, 35.487030, 45.702702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.759678, 35.424519, 45.675064>,  <33.376240, 35.320335, 45.629005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759678, 35.424519, 45.675064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030489, -0.308160, 0.950846,
		0.283143, -0.914985, -0.287459,
		0.958593, 0.260460, 0.115151,
		34.047256, 35.502655, 45.709610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438225, 35.875179, 46.107746>,  <33.376240, 35.320335, 45.629005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438225, 35.875179, 46.107746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.217415, 35.685921, 46.382381>,  <33.084927, 35.572365, 46.547161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.217415, 35.685921, 46.382381>,  <33.438225, 35.875179, 46.107746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217415, 35.685921, 46.382381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813215, -0.487448, 0.317926,
		0.184248, 0.733844, 0.653854,
		-0.552028, -0.473147, 0.686584,
		33.051807, 35.543976, 46.588356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758343, 36.034924, 46.767220>,  <33.438225, 35.875179, 46.107746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758343, 36.034924, 46.767220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.535442, 35.703976, 46.795307>,  <33.401703, 35.505409, 46.812160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.535442, 35.703976, 46.795307>,  <33.758343, 36.034924, 46.767220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535442, 35.703976, 46.795307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787004, -0.499315, 0.362367,
		-0.264748, 0.257195, 0.929386,
		-0.557255, -0.827367, 0.070221,
		33.368267, 35.455765, 46.816372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724506, 35.797302, 47.469696>,  <33.758343, 36.034924, 46.767220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724506, 35.797302, 47.469696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.664982, 35.491909, 47.218315>,  <33.629269, 35.308674, 47.067486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.664982, 35.491909, 47.218315>,  <33.724506, 35.797302, 47.469696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664982, 35.491909, 47.218315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809454, -0.459099, 0.366078,
		-0.568015, -0.454224, 0.686323,
		-0.148809, -0.763484, -0.628448,
		33.620338, 35.262863, 47.029781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927872, 35.175308, 47.857849>,  <33.724506, 35.797302, 47.469696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927872, 35.175308, 47.857849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.938843, 35.060349, 47.474880>,  <33.945423, 34.991375, 47.245098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.938843, 35.060349, 47.474880>,  <33.927872, 35.175308, 47.857849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938843, 35.060349, 47.474880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844619, -0.505622, 0.175970,
		-0.534665, -0.813480, 0.228875,
		0.027423, -0.287397, -0.957419,
		33.947071, 34.974129, 47.187656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364422, 34.581310, 47.933975>,  <33.927872, 35.175308, 47.857849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364422, 34.581310, 47.933975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.358894, 34.702984, 47.552971>,  <34.355579, 34.775986, 47.324368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.358894, 34.702984, 47.552971>,  <34.364422, 34.581310, 47.933975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358894, 34.702984, 47.552971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990020, -0.129453, -0.055698,
		-0.140248, -0.943778, -0.299357,
		-0.013814, 0.304181, -0.952514,
		34.354752, 34.794239, 47.267216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889175, 34.111248, 47.608418>,  <34.364422, 34.581310, 47.933975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889175, 34.111248, 47.608418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.847694, 34.419575, 47.356995>,  <34.822803, 34.604572, 47.206139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.847694, 34.419575, 47.356995>,  <34.889175, 34.111248, 47.608418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847694, 34.419575, 47.356995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989120, 0.013636, -0.146474,
		-0.104334, -0.636912, -0.763844,
		-0.103707, 0.770816, -0.628560,
		34.816582, 34.650818, 47.168427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276127, 33.963467, 47.062943>,  <34.889175, 34.111248, 47.608418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276127, 33.963467, 47.062943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.246178, 34.359924, 47.019062>,  <35.228207, 34.597797, 46.992733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.246178, 34.359924, 47.019062>,  <35.276127, 33.963467, 47.062943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246178, 34.359924, 47.019062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991626, 0.062395, -0.113068,
		-0.105221, -0.117245, -0.987513,
		-0.074872, 0.991141, -0.109698,
		35.223717, 34.657265, 46.986153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640747, 34.187183, 46.396576>,  <35.276127, 33.963467, 47.062943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640747, 34.187183, 46.396576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.617088, 34.507339, 46.635201>,  <35.602894, 34.699432, 46.778374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.617088, 34.507339, 46.635201>,  <35.640747, 34.187183, 46.396576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617088, 34.507339, 46.635201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984502, 0.145609, -0.097746,
		-0.165099, 0.581532, -0.796595,
		-0.059149, 0.800387, 0.596559,
		35.599342, 34.747456, 46.814167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920162, 34.696308, 45.954777>,  <35.640747, 34.187183, 46.396576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920162, 34.696308, 45.954777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.935467, 34.838032, 46.328514>,  <35.944649, 34.923065, 46.552757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.935467, 34.838032, 46.328514>,  <35.920162, 34.696308, 45.954777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935467, 34.838032, 46.328514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945239, 0.290456, -0.148856,
		-0.324127, 0.888875, -0.323795,
		0.038266, 0.354312, 0.934344,
		35.946945, 34.944324, 46.608818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434319, 35.077312, 45.902164>,  <35.920162, 34.696308, 45.954777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434319, 35.077312, 45.902164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.413822, 35.077095, 46.301640>,  <36.401524, 35.076965, 46.541325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.413822, 35.077095, 46.301640>,  <36.434319, 35.077312, 45.902164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413822, 35.077095, 46.301640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962527, 0.266626, 0.049528,
		-0.266303, 0.963800, -0.013140,
		-0.051239, -0.000542, 0.998686,
		36.398449, 35.076931, 46.601246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937031, 35.573601, 45.997978>,  <36.434319, 35.077312, 45.902164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937031, 35.573601, 45.997978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.893391, 35.350620, 46.327183>,  <36.867207, 35.216831, 46.524704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.893391, 35.350620, 46.327183>,  <36.937031, 35.573601, 45.997978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893391, 35.350620, 46.327183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983430, 0.060066, 0.171050,
		-0.144788, 0.828034, 0.541661,
		-0.109100, -0.557452, 0.823009,
		36.860661, 35.183384, 46.574085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298290, 35.937920, 46.543819>,  <36.937031, 35.573601, 45.997978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298290, 35.937920, 46.543819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.269226, 35.546921, 46.623035>,  <37.251789, 35.312321, 46.670567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.269226, 35.546921, 46.623035>,  <37.298290, 35.937920, 46.543819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269226, 35.546921, 46.623035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970157, -0.023214, 0.241364,
		-0.231335, 0.209670, 0.950012,
		-0.072660, -0.977497, 0.198042,
		37.247429, 35.253674, 46.682449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541836, 35.843498, 47.136044>,  <37.298290, 35.937920, 46.543819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541836, 35.843498, 47.136044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.588226, 35.504177, 46.929382>,  <37.616062, 35.300583, 46.805386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.588226, 35.504177, 46.929382>,  <37.541836, 35.843498, 47.136044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588226, 35.504177, 46.929382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993236, 0.096201, 0.065013,
		-0.005449, -0.520698, 0.853723,
		0.115981, -0.848303, -0.516652,
		37.623020, 35.249687, 46.774387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029736, 35.447319, 47.475792>,  <37.541836, 35.843498, 47.136044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029736, 35.447319, 47.475792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043671, 35.324539, 47.095356>,  <38.052032, 35.250870, 46.867096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043671, 35.324539, 47.095356>,  <38.029736, 35.447319, 47.475792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043671, 35.324539, 47.095356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997190, -0.052481, 0.053467,
		-0.066326, -0.950276, 0.304262,
		0.034841, -0.306954, -0.951087,
		38.054123, 35.232452, 46.810028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658699, 35.250046, 47.412796>,  <38.029736, 35.447319, 47.475792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658699, 35.250046, 47.412796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564034, 35.213261, 47.025906>,  <38.507233, 35.191189, 46.793770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564034, 35.213261, 47.025906>,  <38.658699, 35.250046, 47.412796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564034, 35.213261, 47.025906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971193, 0.006122, -0.238215,
		0.027829, -0.995744, 0.087865,
		-0.236663, -0.091963, -0.967230,
		38.493034, 35.185673, 46.735737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083614, 34.688122, 47.030796>,  <38.658699, 35.250046, 47.412796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083614, 34.688122, 47.030796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.956532, 34.955276, 46.761578>,  <38.880283, 35.115570, 46.600048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.956532, 34.955276, 46.761578>,  <39.083614, 34.688122, 47.030796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956532, 34.955276, 46.761578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946017, 0.175239, -0.272661,
		-0.064162, -0.723339, -0.687505,
		-0.317704, 0.667886, -0.673047,
		38.861221, 35.155643, 46.559662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735691, 34.258171, 47.012280>,  <39.083614, 34.688122, 47.030796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735691, 34.258171, 47.012280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.017010, 34.134045, 47.268116>,  <40.185799, 34.059566, 47.421619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.017010, 34.134045, 47.268116>,  <39.735691, 34.258171, 47.012280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017010, 34.134045, 47.268116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649062, -0.647303, 0.399648,
		0.289993, -0.696205, -0.656660,
		0.703295, -0.310318, 0.639593,
		40.227997, 34.040951, 47.459995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524021, 33.598289, 47.004086>,  <39.735691, 34.258171, 47.012280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524021, 33.598289, 47.004086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.765507, 33.597149, 47.322964>,  <39.910397, 33.596466, 47.514290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.765507, 33.597149, 47.322964>,  <39.524021, 33.598289, 47.004086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765507, 33.597149, 47.322964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667512, -0.548521, 0.503541,
		0.435843, -0.836132, -0.333053,
		0.603713, -0.002852, 0.797197,
		39.946621, 33.596294, 47.562122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490334, 32.815121, 47.269348>,  <39.524021, 33.598289, 47.004086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490334, 32.815121, 47.269348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.570751, 33.111641, 47.525490>,  <39.619003, 33.289555, 47.679173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.570751, 33.111641, 47.525490>,  <39.490334, 32.815121, 47.269348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570751, 33.111641, 47.525490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514031, -0.476632, 0.713158,
		0.833878, -0.472539, 0.285228,
		0.201046, 0.741303, 0.640352,
		39.631065, 33.334030, 47.717594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764992, 32.458103, 47.947437>,  <39.490334, 32.815121, 47.269348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764992, 32.458103, 47.947437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.602364, 32.818748, 48.006500>,  <39.504787, 33.035133, 48.041939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.602364, 32.818748, 48.006500>,  <39.764992, 32.458103, 47.947437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602364, 32.818748, 48.006500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531735, -0.364938, 0.764250,
		0.742940, 0.232208, 0.627790,
		-0.406569, 0.901610, 0.147654,
		39.480392, 33.089230, 48.050797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757469, 32.690861, 48.701828>,  <39.764992, 32.458103, 47.947437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757469, 32.690861, 48.701828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.449730, 32.879436, 48.529392>,  <39.265087, 32.992584, 48.425930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.449730, 32.879436, 48.529392>,  <39.757469, 32.690861, 48.701828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449730, 32.879436, 48.529392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618825, -0.382456, 0.686136,
		0.158598, 0.794651, 0.585982,
		-0.769351, 0.471441, -0.431094,
		39.218925, 33.020870, 48.400063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439220, 32.910168, 49.339462>,  <39.757469, 32.690861, 48.701828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439220, 32.910168, 49.339462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.172863, 32.939125, 49.042454>,  <39.013050, 32.956501, 48.864246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.172863, 32.939125, 49.042454>,  <39.439220, 32.910168, 49.339462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172863, 32.939125, 49.042454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716356, -0.340028, 0.609275,
		-0.208372, 0.937625, 0.278282,
		-0.665895, 0.072393, -0.742525,
		38.973095, 32.960842, 48.819695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921467, 33.293415, 49.572479>,  <39.439220, 32.910168, 49.339462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921467, 33.293415, 49.572479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.790573, 33.055904, 49.278446>,  <38.712036, 32.913399, 49.102024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.790573, 33.055904, 49.278446>,  <38.921467, 33.293415, 49.572479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790573, 33.055904, 49.278446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760107, -0.296754, 0.578079,
		-0.561386, 0.747912, -0.354222,
		-0.327235, -0.593772, -0.735086,
		38.692402, 32.877773, 49.057919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206848, 33.295670, 49.617752>,  <38.921467, 33.293415, 49.572479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206848, 33.295670, 49.617752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.222656, 32.999557, 49.349297>,  <38.232140, 32.821892, 49.188225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.222656, 32.999557, 49.349297>,  <38.206848, 33.295670, 49.617752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222656, 32.999557, 49.349297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877425, -0.347070, 0.331162,
		-0.478084, 0.575784, -0.663256,
		0.039519, -0.740280, -0.671135,
		38.234512, 32.777473, 49.147957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624229, 33.238335, 49.131905>,  <38.206848, 33.295670, 49.617752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624229, 33.238335, 49.131905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.764103, 32.864395, 49.156509>,  <37.848026, 32.640030, 49.171272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.764103, 32.864395, 49.156509>,  <37.624229, 33.238335, 49.131905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764103, 32.864395, 49.156509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851623, -0.289814, 0.436744,
		-0.390463, -0.205105, -0.897480,
		0.349681, -0.934847, 0.061510,
		37.869007, 32.583942, 49.174961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140965, 32.705639, 48.871765>,  <37.624229, 33.238335, 49.131905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140965, 32.705639, 48.871765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.367756, 32.477150, 49.109161>,  <37.503830, 32.340057, 49.251598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.367756, 32.477150, 49.109161>,  <37.140965, 32.705639, 48.871765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367756, 32.477150, 49.109161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814278, -0.497504, 0.299068,
		0.124432, -0.652836, -0.747210,
		0.566982, -0.571223, 0.593495,
		37.537849, 32.305782, 49.287209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773594, 31.981417, 48.983624>,  <37.140965, 32.705639, 48.871765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773594, 31.981417, 48.983624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.049686, 31.962431, 49.272438>,  <37.215340, 31.951038, 49.445724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.049686, 31.962431, 49.272438>,  <36.773594, 31.981417, 48.983624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049686, 31.962431, 49.272438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663373, -0.440045, 0.605225,
		0.288999, -0.896720, -0.335219,
		0.690229, -0.047466, 0.722033,
		37.256756, 31.948191, 49.489048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694721, 31.259235, 49.354004>,  <36.773594, 31.981417, 48.983624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694721, 31.259235, 49.354004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.903767, 31.497849, 49.597652>,  <37.029194, 31.641016, 49.743843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.903767, 31.497849, 49.597652>,  <36.694721, 31.259235, 49.354004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903767, 31.497849, 49.597652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494007, -0.370417, 0.786606,
		0.694864, -0.711998, 0.101108,
		0.522609, 0.596532, 0.609121,
		37.060551, 31.676807, 49.780388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683983, 30.890778, 49.911366>,  <36.694721, 31.259235, 49.354004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683983, 30.890778, 49.911366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822109, 31.232420, 50.066933>,  <36.904984, 31.437407, 50.160275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822109, 31.232420, 50.066933>,  <36.683983, 30.890778, 49.911366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822109, 31.232420, 50.066933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421716, -0.228994, 0.877335,
		0.838399, -0.466971, 0.281116,
		0.345316, 0.854108, 0.388918,
		36.925705, 31.488653, 50.183609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923618, 30.717415, 50.680946>,  <36.683983, 30.890778, 49.911366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923618, 30.717415, 50.680946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.819199, 31.100870, 50.635578>,  <36.756546, 31.330944, 50.608356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.819199, 31.100870, 50.635578>,  <36.923618, 30.717415, 50.680946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819199, 31.100870, 50.635578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615732, -0.074865, 0.784391,
		0.743457, 0.274601, 0.609808,
		-0.261047, 0.958640, -0.113422,
		36.740883, 31.388462, 50.601551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965847, 30.985140, 51.362190>,  <36.923618, 30.717415, 50.680946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965847, 30.985140, 51.362190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.720783, 31.230436, 51.162758>,  <36.573746, 31.377615, 51.043098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.720783, 31.230436, 51.162758>,  <36.965847, 30.985140, 51.362190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720783, 31.230436, 51.162758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546290, 0.127300, 0.827866,
		0.571151, 0.779570, 0.257017,
		-0.612661, 0.613242, -0.498579,
		36.536983, 31.414410, 51.013184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941586, 31.617449, 51.726734>,  <36.965847, 30.985140, 51.362190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941586, 31.617449, 51.726734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.607243, 31.591881, 51.508648>,  <36.406635, 31.576540, 51.377796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.607243, 31.591881, 51.508648>,  <36.941586, 31.617449, 51.726734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607243, 31.591881, 51.508648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537779, 0.294661, 0.789917,
		0.110161, 0.953462, -0.280670,
		-0.835858, -0.063920, -0.545211,
		36.356483, 31.572704, 51.345085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551834, 32.328362, 51.735313>,  <36.941586, 31.617449, 51.726734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551834, 32.328362, 51.735313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.259937, 32.070522, 51.644131>,  <36.084801, 31.915819, 51.589420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.259937, 32.070522, 51.644131>,  <36.551834, 32.328362, 51.735313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259937, 32.070522, 51.644131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610797, 0.464781, 0.641019,
		-0.307250, 0.607016, -0.732891,
		-0.729743, -0.644600, -0.227960,
		36.041016, 31.877142, 51.575745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992142, 32.720543, 51.818466>,  <36.551834, 32.328362, 51.735313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992142, 32.720543, 51.818466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.822632, 32.358234, 51.818127>,  <35.720928, 32.140850, 51.817924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.822632, 32.358234, 51.818127>,  <35.992142, 32.720543, 51.818466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822632, 32.358234, 51.818127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716404, 0.334604, 0.612213,
		-0.554241, 0.260043, -0.790692,
		-0.423771, -0.905769, -0.000844,
		35.695499, 32.086502, 51.817875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330158, 32.935169, 51.797707>,  <35.992142, 32.720543, 51.818466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330158, 32.935169, 51.797707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322399, 32.551579, 51.910828>,  <35.317745, 32.321423, 51.978703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322399, 32.551579, 51.910828>,  <35.330158, 32.935169, 51.797707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322399, 32.551579, 51.910828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664834, 0.223633, 0.712730,
		-0.746739, -0.174194, -0.641901,
		-0.019397, -0.958981, 0.282805,
		35.316582, 32.263885, 51.995670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604439, 32.747967, 51.818745>,  <35.330158, 32.935169, 51.797707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604439, 32.747967, 51.818745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.756676, 32.455566, 52.045296>,  <34.848019, 32.280125, 52.181229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.756676, 32.455566, 52.045296>,  <34.604439, 32.747967, 51.818745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756676, 32.455566, 52.045296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801976, 0.044031, 0.595732,
		-0.460420, -0.680952, -0.569489,
		0.380589, -0.731003, 0.566380,
		34.870853, 32.236267, 52.215210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959072, 32.292461, 52.005981>,  <34.604439, 32.747967, 51.818745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959072, 32.292461, 52.005981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.229168, 32.200508, 52.286327>,  <34.391224, 32.145336, 52.454533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.229168, 32.200508, 52.286327>,  <33.959072, 32.292461, 52.005981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229168, 32.200508, 52.286327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717545, 0.015341, 0.696343,
		-0.170830, -0.973097, -0.154594,
		0.675238, -0.229884, 0.700862,
		34.431740, 32.131542, 52.496586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662838, 31.800287, 52.413139>,  <33.959072, 32.292461, 52.005981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662838, 31.800287, 52.413139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.944855, 31.972940, 52.638210>,  <34.114063, 32.076530, 52.773254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.944855, 31.972940, 52.638210>,  <33.662838, 31.800287, 52.413139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944855, 31.972940, 52.638210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646728, 0.065804, 0.759877,
		0.290960, -0.899647, 0.325543,
		0.705043, 0.431632, 0.562680,
		34.156368, 32.102428, 52.807014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505177, 31.596684, 53.077564>,  <33.662838, 31.800287, 52.413139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505177, 31.596684, 53.077564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.784431, 31.871038, 53.159695>,  <33.951984, 32.035652, 53.208973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.784431, 31.871038, 53.159695>,  <33.505177, 31.596684, 53.077564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784431, 31.871038, 53.159695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395725, 0.130675, 0.909025,
		0.596658, -0.715879, 0.362652,
		0.698141, 0.685887, 0.205323,
		33.993874, 32.076805, 53.221291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822113, 31.446205, 53.777683>,  <33.505177, 31.596684, 53.077564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822113, 31.446205, 53.777683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.892845, 31.833158, 53.705128>,  <33.935284, 32.065331, 53.661594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.892845, 31.833158, 53.705128>,  <33.822113, 31.446205, 53.777683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892845, 31.833158, 53.705128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290580, 0.227388, 0.929440,
		0.940369, -0.111645, 0.321311,
		0.176830, 0.967383, -0.181387,
		33.945892, 32.123375, 53.650711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216766, 31.697250, 54.339703>,  <33.822113, 31.446205, 53.777683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216766, 31.697250, 54.339703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.038342, 32.021687, 54.188358>,  <33.931286, 32.216347, 54.097549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.038342, 32.021687, 54.188358>,  <34.216766, 31.697250, 54.339703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038342, 32.021687, 54.188358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244123, 0.296459, 0.923318,
		0.861063, 0.504227, 0.065766,
		-0.446065, 0.811090, -0.378363,
		33.904522, 32.265015, 54.074848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549187, 32.260784, 54.736816>,  <34.216766, 31.697250, 54.339703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549187, 32.260784, 54.736816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.198193, 32.334999, 54.559910>,  <33.987598, 32.379528, 54.453766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.198193, 32.334999, 54.559910>,  <34.549187, 32.260784, 54.736816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198193, 32.334999, 54.559910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404889, 0.207726, 0.890458,
		0.257081, 0.960431, -0.107155,
		-0.877482, 0.185534, -0.442270,
		33.934948, 32.390659, 54.427227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432316, 32.935726, 54.859470>,  <34.549187, 32.260784, 54.736816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432316, 32.935726, 54.859470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.069126, 32.801678, 54.758846>,  <33.851212, 32.721249, 54.698471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.069126, 32.801678, 54.758846>,  <34.432316, 32.935726, 54.859470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069126, 32.801678, 54.758846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380880, 0.409756, 0.828873,
		-0.174696, 0.848407, -0.499687,
		-0.907971, -0.335122, -0.251558,
		33.796734, 32.701141, 54.683380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082222, 33.447937, 55.135120>,  <34.432316, 32.935726, 54.859470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082222, 33.447937, 55.135120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.794521, 33.185211, 55.044548>,  <33.621902, 33.027576, 54.990204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.794521, 33.185211, 55.044548>,  <34.082222, 33.447937, 55.135120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794521, 33.185211, 55.044548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569898, 0.371375, 0.733005,
		-0.397361, 0.656255, -0.641431,
		-0.719250, -0.656818, -0.226429,
		33.578747, 32.988167, 54.976620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357574, 33.796169, 55.139221>,  <34.082222, 33.447937, 55.135120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357574, 33.796169, 55.139221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.278049, 33.405739, 55.174419>,  <33.230335, 33.171478, 55.195538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.278049, 33.405739, 55.174419>,  <33.357574, 33.796169, 55.139221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278049, 33.405739, 55.174419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635518, 0.196748, 0.746597,
		-0.746051, 0.092511, -0.659431,
		-0.198810, -0.976080, 0.087991,
		33.218407, 33.112915, 55.200817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655685, 33.695259, 55.124294>,  <33.357574, 33.796169, 55.139221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655685, 33.695259, 55.124294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.796314, 33.371700, 55.312801>,  <32.880692, 33.177567, 55.425903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.796314, 33.371700, 55.312801>,  <32.655685, 33.695259, 55.124294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796314, 33.371700, 55.312801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532853, 0.240992, 0.811166,
		-0.769718, -0.536295, -0.346297,
		0.351570, -0.808895, 0.471263,
		32.901787, 33.129032, 55.454182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155849, 33.296055, 55.345657>,  <32.655685, 33.695259, 55.124294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155849, 33.296055, 55.345657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.446247, 33.158981, 55.584152>,  <32.620487, 33.076736, 55.727249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.446247, 33.158981, 55.584152>,  <32.155849, 33.296055, 55.345657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446247, 33.158981, 55.584152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577299, 0.167454, 0.799178,
		-0.373711, -0.924405, -0.076263,
		0.725994, -0.342688, 0.596237,
		32.664043, 33.056175, 55.763023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759386, 32.979729, 55.873306>,  <32.155849, 33.296055, 55.345657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759386, 32.979729, 55.873306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.123245, 33.071972, 56.011501>,  <32.341560, 33.127319, 56.094418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.123245, 33.071972, 56.011501>,  <31.759386, 32.979729, 55.873306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123245, 33.071972, 56.011501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383435, 0.146314, 0.911905,
		0.159750, -0.961982, 0.221520,
		0.909647, 0.230615, 0.345484,
		32.396141, 33.141155, 56.115147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763222, 32.540897, 56.450562>,  <31.759386, 32.979729, 55.873306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763222, 32.540897, 56.450562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.033176, 32.834682, 56.479118>,  <32.195148, 33.010952, 56.496254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.033176, 32.834682, 56.479118>,  <31.763222, 32.540897, 56.450562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033176, 32.834682, 56.479118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401246, 0.284054, 0.870813,
		0.619298, -0.616346, 0.486403,
		0.674887, 0.734460, 0.071392,
		32.235641, 33.055019, 56.500538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028183, 32.565952, 57.151009>,  <31.763222, 32.540897, 56.450562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028183, 32.565952, 57.151009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.121277, 32.931953, 57.019184>,  <32.177135, 33.151554, 56.940090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.121277, 32.931953, 57.019184>,  <32.028183, 32.565952, 57.151009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121277, 32.931953, 57.019184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413293, 0.399800, 0.818137,
		0.880354, -0.054204, 0.471211,
		0.232736, 0.914998, -0.329564,
		32.191097, 33.206451, 56.920315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146397, 32.732002, 57.753738>,  <32.028183, 32.565952, 57.151009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146397, 32.732002, 57.753738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079395, 33.071587, 57.553257>,  <32.039196, 33.275337, 57.432968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079395, 33.071587, 57.553257>,  <32.146397, 32.732002, 57.753738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079395, 33.071587, 57.553257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596884, 0.317290, 0.736923,
		0.784648, 0.422598, 0.453585,
		-0.167504, 0.848963, -0.501203,
		32.029144, 33.326275, 57.402897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353783, 33.234776, 58.210754>,  <32.146397, 32.732002, 57.753738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353783, 33.234776, 58.210754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.099247, 33.377270, 57.937061>,  <31.946526, 33.462765, 57.772846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.099247, 33.377270, 57.937061>,  <32.353783, 33.234776, 58.210754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099247, 33.377270, 57.937061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458040, 0.539216, 0.706714,
		0.620701, 0.763115, -0.179957,
		-0.636340, 0.356231, -0.684230,
		31.908344, 33.484138, 57.731792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197617, 33.842323, 58.542240>,  <32.353783, 33.234776, 58.210754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197617, 33.842323, 58.542240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.919109, 33.820660, 58.255943>,  <31.752007, 33.807659, 58.084167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.919109, 33.820660, 58.255943>,  <32.197617, 33.842323, 58.542240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919109, 33.820660, 58.255943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665485, 0.422364, 0.615417,
		0.268969, 0.904807, -0.330122,
		-0.696265, -0.054163, -0.715738,
		31.710230, 33.804409, 58.041222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871878, 34.585793, 58.310009>,  <32.197617, 33.842323, 58.542240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871878, 34.585793, 58.310009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.630260, 34.270168, 58.265266>,  <31.485291, 34.080791, 58.238422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.630260, 34.270168, 58.265266>,  <31.871878, 34.585793, 58.310009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630260, 34.270168, 58.265266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706102, 0.464810, 0.534203,
		-0.369530, 0.401660, -0.837924,
		-0.604043, -0.789063, -0.111852,
		31.449047, 34.033451, 58.231712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192408, 34.818230, 58.094631>,  <31.871878, 34.585793, 58.310009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192408, 34.818230, 58.094631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.123026, 34.444881, 58.220322>,  <31.081396, 34.220875, 58.295734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.123026, 34.444881, 58.220322>,  <31.192408, 34.818230, 58.094631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123026, 34.444881, 58.220322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648937, 0.348321, 0.676427,
		-0.740807, -0.086582, -0.666115,
		-0.173456, -0.933368, 0.314225,
		31.070990, 34.164871, 58.314590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590477, 34.898869, 58.403706>,  <31.192408, 34.818230, 58.094631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590477, 34.898869, 58.403706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.629456, 34.509174, 58.485065>,  <30.652843, 34.275356, 58.533882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.629456, 34.509174, 58.485065>,  <30.590477, 34.898869, 58.403706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629456, 34.509174, 58.485065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609924, 0.103037, 0.785733,
		-0.786445, -0.200625, -0.584169,
		0.097447, -0.974234, 0.203399,
		30.658689, 34.216904, 58.546085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941746, 34.527130, 58.376534>,  <30.590477, 34.898869, 58.403706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941746, 34.527130, 58.376534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.187408, 34.346684, 58.635548>,  <30.334806, 34.238415, 58.790958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.187408, 34.346684, 58.635548>,  <29.941746, 34.527130, 58.376534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187408, 34.346684, 58.635548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651028, 0.174165, 0.738802,
		-0.446066, -0.875305, -0.186727,
		0.614156, -0.451119, 0.647537,
		30.371655, 34.211349, 58.829807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446421, 34.298378, 58.893665>,  <29.941746, 34.527130, 58.376534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446421, 34.298378, 58.893665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.805756, 34.245754, 59.061325>,  <30.021357, 34.214180, 59.161919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.805756, 34.245754, 59.061325>,  <29.446421, 34.298378, 58.893665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805756, 34.245754, 59.061325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404345, 0.125381, 0.905971,
		-0.171743, -0.983347, 0.059439,
		0.898337, -0.131560, 0.419145,
		30.075256, 34.206287, 59.187069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402388, 33.687565, 59.315071>,  <29.446421, 34.298378, 58.893665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402388, 33.687565, 59.315071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.682896, 33.934402, 59.457848>,  <29.851200, 34.082504, 59.543514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.682896, 33.934402, 59.457848>,  <29.402388, 33.687565, 59.315071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682896, 33.934402, 59.457848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385926, -0.092368, 0.917894,
		0.599401, -0.781446, 0.173379,
		0.701270, 0.617098, 0.356946,
		29.893276, 34.119534, 59.564930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714104, 33.265190, 59.885548>,  <29.402388, 33.687565, 59.315071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714104, 33.265190, 59.885548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.831169, 33.642479, 59.948387>,  <29.901407, 33.868851, 59.986092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.831169, 33.642479, 59.948387>,  <29.714104, 33.265190, 59.885548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831169, 33.642479, 59.948387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359947, -0.043537, 0.931957,
		0.885882, -0.329294, 0.326769,
		0.292661, 0.943223, 0.157097,
		29.918968, 33.925446, 59.995518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981775, 33.310501, 60.573425>,  <29.714104, 33.265190, 59.885548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981775, 33.310501, 60.573425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.874544, 33.676926, 60.454121>,  <29.810205, 33.896782, 60.382538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.874544, 33.676926, 60.454121>,  <29.981775, 33.310501, 60.573425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874544, 33.676926, 60.454121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448190, 0.155465, 0.880316,
		0.852796, 0.369669, 0.368895,
		-0.268076, 0.916065, -0.298262,
		29.794121, 33.951744, 60.364643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027229, 33.625687, 61.142872>,  <29.981775, 33.310501, 60.573425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027229, 33.625687, 61.142872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.794939, 33.840549, 60.898178>,  <29.655565, 33.969467, 60.751362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.794939, 33.840549, 60.898178>,  <30.027229, 33.625687, 61.142872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794939, 33.840549, 60.898178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483142, 0.377392, 0.790031,
		0.655233, 0.754347, 0.040360,
		-0.580726, 0.537154, -0.611737,
		29.620722, 34.001698, 60.714657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083344, 34.374641, 61.154572>,  <30.027229, 33.625687, 61.142872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083344, 34.374641, 61.154572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.708673, 34.282581, 61.048992>,  <29.483871, 34.227345, 60.985645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.708673, 34.282581, 61.048992>,  <30.083344, 34.374641, 61.154572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708673, 34.282581, 61.048992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346682, 0.502890, 0.791779,
		-0.049492, 0.833146, -0.550834,
		-0.936676, -0.230151, -0.263948,
		29.427671, 34.213535, 60.969807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906162, 35.009544, 61.385872>,  <30.083344, 34.374641, 61.154572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906162, 35.009544, 61.385872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.923677, 34.874683, 61.762043>,  <29.934187, 34.793766, 61.987747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.923677, 34.874683, 61.762043>,  <29.906162, 35.009544, 61.385872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923677, 34.874683, 61.762043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457271, 0.843704, 0.281187,
		-0.888248, 0.417718, 0.191117,
		0.043790, -0.337157, 0.940430,
		29.936815, 34.773537, 62.044170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658810, 35.575092, 61.890247>,  <29.906162, 35.009544, 61.385872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658810, 35.575092, 61.890247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.853197, 35.292805, 62.096470>,  <29.969830, 35.123432, 62.220203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.853197, 35.292805, 62.096470>,  <29.658810, 35.575092, 61.890247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853197, 35.292805, 62.096470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297614, 0.688271, 0.661596,
		-0.821743, -0.168077, 0.544508,
		0.485968, -0.705715, 0.515559,
		29.998987, 35.081089, 62.251137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262798, 34.984428, 62.365742>,  <29.658810, 35.575092, 61.890247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262798, 34.984428, 62.365742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.170406, 34.635368, 62.537846>,  <29.114971, 34.425930, 62.641109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.170406, 34.635368, 62.537846>,  <29.262798, 34.984428, 62.365742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170406, 34.635368, 62.537846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805523, -0.419539, -0.418473,
		0.545694, 0.249930, 0.799846,
		-0.230978, -0.872652, 0.430264,
		29.101112, 34.373573, 62.666924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807705, 35.459427, 62.211990>,  <29.262798, 34.984428, 62.365742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807705, 35.459427, 62.211990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.511225, 35.715141, 62.293900>,  <28.333336, 35.868568, 62.343044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.511225, 35.715141, 62.293900>,  <28.807705, 35.459427, 62.211990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511225, 35.715141, 62.293900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225309, 0.524274, -0.821202,
		-0.632342, -0.562538, -0.532630,
		-0.741202, 0.639287, 0.204776,
		28.288864, 35.906929, 62.355331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280212, 35.499199, 61.614853>,  <28.807705, 35.459427, 62.211990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280212, 35.499199, 61.614853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.335211, 35.836037, 61.823456>,  <28.368210, 36.038139, 61.948620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.335211, 35.836037, 61.823456>,  <28.280212, 35.499199, 61.614853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335211, 35.836037, 61.823456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314248, 0.462225, -0.829214,
		-0.939331, 0.277899, -0.201071,
		0.137498, 0.842093, 0.521511,
		28.376461, 36.088665, 61.979908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027756, 36.088326, 61.223076>,  <28.280212, 35.499199, 61.614853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027756, 36.088326, 61.223076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.275818, 36.247139, 61.493710>,  <28.424656, 36.342426, 61.656090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.275818, 36.247139, 61.493710>,  <28.027756, 36.088326, 61.223076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275818, 36.247139, 61.493710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459119, 0.515639, -0.723413,
		-0.636095, 0.759263, 0.137490,
		0.620156, 0.397035, 0.676587,
		28.461864, 36.366249, 61.696686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010880, 36.859501, 61.151058>,  <28.027756, 36.088326, 61.223076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010880, 36.859501, 61.151058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.349571, 36.670017, 61.247932>,  <28.552786, 36.556328, 61.306057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.349571, 36.670017, 61.247932>,  <28.010880, 36.859501, 61.151058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349571, 36.670017, 61.247932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466346, 0.441746, -0.766408,
		0.256068, 0.761882, 0.594950,
		0.846729, -0.473705, 0.242184,
		28.603590, 36.527905, 61.320587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563618, 37.356586, 61.056931>,  <28.010880, 36.859501, 61.151058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563618, 37.356586, 61.056931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.748688, 37.002022, 61.051323>,  <28.859730, 36.789284, 61.047958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.748688, 37.002022, 61.051323>,  <28.563618, 37.356586, 61.056931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748688, 37.002022, 61.051323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496268, 0.272069, -0.824437,
		0.734608, 0.374492, 0.565780,
		0.462677, -0.886416, -0.014016,
		28.887491, 36.736095, 61.047119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229790, 37.630783, 60.788147>,  <28.563618, 37.356586, 61.056931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229790, 37.630783, 60.788147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.196445, 37.233257, 60.758778>,  <29.176439, 36.994743, 60.741158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.196445, 37.233257, 60.758778>,  <29.229790, 37.630783, 60.788147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196445, 37.233257, 60.758778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567032, 0.013286, -0.823589,
		0.819467, -0.110287, 0.562415,
		-0.083359, -0.993811, -0.073424,
		29.171438, 36.935116, 60.736752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886980, 37.463795, 60.647606>,  <29.229790, 37.630783, 60.788147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886980, 37.463795, 60.647606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.668526, 37.158981, 60.508442>,  <29.537453, 36.976093, 60.424942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.668526, 37.158981, 60.508442>,  <29.886980, 37.463795, 60.647606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668526, 37.158981, 60.508442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647898, -0.120981, -0.752058,
		0.531004, -0.636134, 0.559793,
		-0.546134, -0.762035, -0.347909,
		29.504686, 36.930370, 60.404068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315495, 36.902237, 60.522160>,  <29.886980, 37.463795, 60.647606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315495, 36.902237, 60.522160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.012821, 36.848118, 60.266308>,  <29.831217, 36.815647, 60.112797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.012821, 36.848118, 60.266308>,  <30.315495, 36.902237, 60.522160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012821, 36.848118, 60.266308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653626, -0.135277, -0.744630,
		0.014224, -0.981526, 0.190799,
		-0.756685, -0.135303, -0.639626,
		29.785816, 36.807526, 60.074421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388056, 36.237339, 60.129246>,  <30.315495, 36.902237, 60.522160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388056, 36.237339, 60.129246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.149630, 36.491692, 59.933144>,  <30.006573, 36.644302, 59.815483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.149630, 36.491692, 59.933144>,  <30.388056, 36.237339, 60.129246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149630, 36.491692, 59.933144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501001, -0.182598, -0.845965,
		-0.627457, -0.749872, -0.209738,
		-0.596067, 0.635885, -0.490259,
		29.970810, 36.682457, 59.786064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582235, 36.096371, 59.501595>,  <30.388056, 36.237339, 60.129246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582235, 36.096371, 59.501595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.335924, 36.400417, 59.418613>,  <30.188137, 36.582848, 59.368824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.335924, 36.400417, 59.418613>,  <30.582235, 36.096371, 59.501595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335924, 36.400417, 59.418613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344887, 0.023294, -0.938355,
		-0.708430, -0.649365, -0.276499,
		-0.615776, 0.760120, -0.207456,
		30.151192, 36.628452, 59.356377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220610, 35.901516, 58.909157>,  <30.582235, 36.096371, 59.501595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220610, 35.901516, 58.909157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.221697, 36.299740, 58.946800>,  <30.222349, 36.538673, 58.969387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.221697, 36.299740, 58.946800>,  <30.220610, 35.901516, 58.909157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221697, 36.299740, 58.946800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229315, 0.090986, -0.969091,
		-0.973348, 0.024214, -0.228049,
		0.002716, 0.995558, 0.094113,
		30.222511, 36.598408, 58.975033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739983, 36.127201, 58.415283>,  <30.220610, 35.901516, 58.909157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739983, 36.127201, 58.415283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.971361, 36.447308, 58.478485>,  <30.110189, 36.639374, 58.516407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.971361, 36.447308, 58.478485>,  <29.739983, 36.127201, 58.415283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971361, 36.447308, 58.478485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226657, 0.028389, -0.973561,
		-0.783597, 0.598968, -0.164965,
		0.578449, 0.800269, 0.158006,
		30.144896, 36.687389, 58.525887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541927, 36.627396, 57.919693>,  <29.739983, 36.127201, 58.415283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541927, 36.627396, 57.919693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.887476, 36.790779, 58.037601>,  <30.094805, 36.888809, 58.108349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.887476, 36.790779, 58.037601>,  <29.541927, 36.627396, 57.919693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887476, 36.790779, 58.037601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150206, 0.349687, -0.924747,
		-0.480797, 0.843138, 0.240732,
		0.863871, 0.408456, 0.294773,
		30.146637, 36.913315, 58.126034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597694, 37.338139, 57.650841>,  <29.541927, 36.627396, 57.919693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597694, 37.338139, 57.650841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.979664, 37.272415, 57.749733>,  <30.208845, 37.232983, 57.809071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.979664, 37.272415, 57.749733>,  <29.597694, 37.338139, 57.650841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979664, 37.272415, 57.749733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288445, 0.316759, -0.903583,
		0.070151, 0.934166, 0.349874,
		0.954923, -0.164306, 0.247234,
		30.266140, 37.223122, 57.823902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884062, 37.929817, 57.427933>,  <29.597694, 37.338139, 57.650841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884062, 37.929817, 57.427933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.199867, 37.687458, 57.467026>,  <30.389351, 37.542042, 57.490482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.199867, 37.687458, 57.467026>,  <29.884062, 37.929817, 57.427933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199867, 37.687458, 57.467026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429631, 0.431920, -0.793009,
		0.438273, 0.668080, 0.601320,
		0.789515, -0.605900, 0.097729,
		30.436722, 37.505688, 57.496346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507359, 38.376396, 57.485077>,  <29.884062, 37.929817, 57.427933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507359, 38.376396, 57.485077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.610722, 38.006733, 57.372540>,  <30.672739, 37.784935, 57.305019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.610722, 38.006733, 57.372540>,  <30.507359, 38.376396, 57.485077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610722, 38.006733, 57.372540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392632, 0.366568, -0.843486,
		0.882646, 0.107501, 0.457579,
		0.258409, -0.924160, -0.281341,
		30.688244, 37.729485, 57.288136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221792, 38.402435, 57.314453>,  <30.507359, 38.376396, 57.485077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221792, 38.402435, 57.314453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.078545, 38.078243, 57.129036>,  <30.992596, 37.883728, 57.017788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.078545, 38.078243, 57.129036>,  <31.221792, 38.402435, 57.314453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078545, 38.078243, 57.129036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512800, 0.244148, -0.823060,
		0.780248, -0.532457, 0.328181,
		-0.358120, -0.810482, -0.463540,
		30.971109, 37.835098, 56.989975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834215, 38.075897, 57.019966>,  <31.221792, 38.402435, 57.314453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834215, 38.075897, 57.019966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.513649, 37.977383, 56.801949>,  <31.321310, 37.918274, 56.671139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.513649, 37.977383, 56.801949>,  <31.834215, 38.075897, 57.019966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513649, 37.977383, 56.801949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468677, 0.307558, -0.828100,
		0.371588, -0.919102, -0.131050,
		-0.801414, -0.246293, -0.545046,
		31.273224, 37.903496, 56.638435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061569, 37.634308, 56.556004>,  <31.834215, 38.075897, 57.019966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061569, 37.634308, 56.556004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.717163, 37.774624, 56.408710>,  <31.510519, 37.858814, 56.320335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.717163, 37.774624, 56.408710>,  <32.061569, 37.634308, 56.556004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717163, 37.774624, 56.408710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447095, 0.176982, -0.876803,
		-0.242406, -0.919576, -0.309223,
		-0.861014, 0.350794, -0.368237,
		31.458858, 37.879864, 56.298241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794008, 37.238171, 55.827793>,  <32.061569, 37.634308, 56.556004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794008, 37.238171, 55.827793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.697277, 37.619663, 55.899250>,  <31.639238, 37.848560, 55.942123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.697277, 37.619663, 55.899250>,  <31.794008, 37.238171, 55.827793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697277, 37.619663, 55.899250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265695, 0.242161, -0.933147,
		-0.933233, -0.178197, -0.311963,
		-0.241830, 0.953732, 0.178647,
		31.624727, 37.905785, 55.952843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465216, 37.510078, 55.293606>,  <31.794008, 37.238171, 55.827793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465216, 37.510078, 55.293606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.625629, 37.832890, 55.466984>,  <31.721878, 38.026577, 55.571011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.625629, 37.832890, 55.466984>,  <31.465216, 37.510078, 55.293606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625629, 37.832890, 55.466984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384587, 0.281116, -0.879242,
		-0.831424, 0.519301, -0.197637,
		0.401033, 0.807032, 0.433443,
		31.745939, 38.075001, 55.597015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383589, 37.958893, 54.746033>,  <31.465216, 37.510078, 55.293606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383589, 37.958893, 54.746033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.656313, 38.109112, 54.997143>,  <31.819946, 38.199242, 55.147808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.656313, 38.109112, 54.997143>,  <31.383589, 37.958893, 54.746033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656313, 38.109112, 54.997143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614013, 0.172694, -0.770172,
		-0.397648, 0.910572, -0.112846,
		0.681809, 0.375546, 0.627775,
		31.860855, 38.221775, 55.185474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607494, 38.511189, 54.423214>,  <31.383589, 37.958893, 54.746033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607494, 38.511189, 54.423214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.897234, 38.463333, 54.694801>,  <32.071079, 38.434620, 54.857754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.897234, 38.463333, 54.694801>,  <31.607494, 38.511189, 54.423214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897234, 38.463333, 54.694801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689017, 0.159755, -0.706919,
		-0.023897, 0.979881, 0.198149,
		0.724351, -0.119634, 0.678972,
		32.114540, 38.427444, 54.898495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071724, 39.124268, 54.386494>,  <31.607494, 38.511189, 54.423214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071724, 39.124268, 54.386494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276398, 38.811703, 54.529366>,  <32.399204, 38.624165, 54.615089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276398, 38.811703, 54.529366>,  <32.071724, 39.124268, 54.386494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276398, 38.811703, 54.529366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703953, 0.142961, -0.695710,
		0.492572, 0.607421, 0.623227,
		0.511686, -0.781410, 0.357177,
		32.429905, 38.577278, 54.636520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794979, 39.351963, 54.431313>,  <32.071724, 39.124268, 54.386494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794979, 39.351963, 54.431313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.807678, 38.952168, 54.432457>,  <32.815296, 38.712288, 54.433144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.807678, 38.952168, 54.432457>,  <32.794979, 39.351963, 54.431313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807678, 38.952168, 54.432457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734847, 0.021399, -0.677895,
		0.677490, 0.023621, 0.735153,
		0.031744, -0.999492, 0.002860,
		32.817200, 38.652321, 54.433315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442108, 39.327251, 54.263027>,  <32.794979, 39.351963, 54.431313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442108, 39.327251, 54.263027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.315498, 38.948639, 54.238049>,  <33.239532, 38.721474, 54.223061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.315498, 38.948639, 54.238049>,  <33.442108, 39.327251, 54.263027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315498, 38.948639, 54.238049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716143, -0.195276, -0.670079,
		0.622054, -0.256814, 0.739659,
		-0.316524, -0.946527, -0.062443,
		33.220543, 38.664680, 54.219315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065075, 38.886639, 54.152691>,  <33.442108, 39.327251, 54.263027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065075, 38.886639, 54.152691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.762424, 38.680435, 53.991814>,  <33.580833, 38.556713, 53.895287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.762424, 38.680435, 53.991814>,  <34.065075, 38.886639, 54.152691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762424, 38.680435, 53.991814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540478, -0.146952, -0.828426,
		0.367959, -0.844188, 0.389811,
		-0.756630, -0.515511, -0.402193,
		33.535435, 38.525784, 53.871155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414841, 38.290016, 53.769539>,  <34.065075, 38.886639, 54.152691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414841, 38.290016, 53.769539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.048611, 38.319431, 53.611393>,  <33.828873, 38.337082, 53.516506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.048611, 38.319431, 53.611393>,  <34.414841, 38.290016, 53.769539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048611, 38.319431, 53.611393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395329, -0.015637, -0.918406,
		-0.073724, -0.997169, -0.014756,
		-0.915576, 0.073543, -0.395363,
		33.773937, 38.341496, 53.492783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440746, 37.699829, 53.388618>,  <34.414841, 38.290016, 53.769539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440746, 37.699829, 53.388618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153175, 37.933998, 53.238724>,  <33.980633, 38.074501, 53.148785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153175, 37.933998, 53.238724>,  <34.440746, 37.699829, 53.388618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153175, 37.933998, 53.238724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398725, -0.094272, -0.912212,
		-0.569357, -0.805228, -0.165648,
		-0.718923, 0.585423, -0.374739,
		33.937500, 38.109627, 53.126301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294182, 37.362392, 52.828796>,  <34.440746, 37.699829, 53.388618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294182, 37.362392, 52.828796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.176552, 37.740578, 52.772770>,  <34.105972, 37.967487, 52.739155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.176552, 37.740578, 52.772770>,  <34.294182, 37.362392, 52.828796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176552, 37.740578, 52.772770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325729, -0.038630, -0.944674,
		-0.898565, -0.323429, -0.296605,
		-0.294077, 0.945464, -0.140062,
		34.088329, 38.024216, 52.730751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991127, 37.354557, 52.274639>,  <34.294182, 37.362392, 52.828796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991127, 37.354557, 52.274639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092598, 37.740108, 52.307087>,  <34.153481, 37.971439, 52.326557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092598, 37.740108, 52.307087>,  <33.991127, 37.354557, 52.274639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092598, 37.740108, 52.307087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377434, -0.021417, -0.925789,
		-0.890614, 0.265468, -0.369235,
		0.253675, 0.963882, 0.081122,
		34.168701, 38.029274, 52.331425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667259, 37.613571, 51.781948>,  <33.991127, 37.354557, 52.274639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667259, 37.613571, 51.781948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.985626, 37.845154, 51.852749>,  <34.176647, 37.984104, 51.895229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.985626, 37.845154, 51.852749>,  <33.667259, 37.613571, 51.781948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985626, 37.845154, 51.852749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225020, -0.011479, -0.974286,
		-0.562040, 0.815276, -0.139414,
		0.795913, 0.578959, 0.177002,
		34.224400, 38.018841, 51.905849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896145, 37.904953, 51.190647>,  <33.667259, 37.613571, 51.781948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896145, 37.904953, 51.190647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.201546, 38.073830, 51.386127>,  <34.384785, 38.175156, 51.503414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.201546, 38.073830, 51.386127>,  <33.896145, 37.904953, 51.190647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201546, 38.073830, 51.386127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551320, -0.032010, -0.833680,
		-0.336326, 0.905943, -0.257200,
		0.763499, 0.422188, 0.488698,
		34.430595, 38.200485, 51.532738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016148, 38.535297, 50.767044>,  <33.896145, 37.904953, 51.190647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016148, 38.535297, 50.767044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.310215, 38.337624, 50.952652>,  <34.486656, 38.219021, 51.064018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.310215, 38.337624, 50.952652>,  <34.016148, 38.535297, 50.767044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310215, 38.337624, 50.952652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510499, -0.046761, -0.858606,
		0.446006, 0.868099, 0.217904,
		0.735166, -0.494183, 0.464020,
		34.530766, 38.189369, 51.091858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661686, 38.914165, 50.514938>,  <34.016148, 38.535297, 50.767044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661686, 38.914165, 50.514938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791599, 38.577248, 50.687012>,  <34.869549, 38.375099, 50.790257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791599, 38.577248, 50.687012>,  <34.661686, 38.914165, 50.514938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791599, 38.577248, 50.687012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502898, -0.231417, -0.832791,
		0.801005, 0.486816, 0.348427,
		0.324784, -0.842293, 0.430185,
		34.889034, 38.324558, 50.816067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367851, 38.883732, 50.326302>,  <34.661686, 38.914165, 50.514938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367851, 38.883732, 50.326302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267059, 38.511299, 50.431828>,  <35.206585, 38.287842, 50.495144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267059, 38.511299, 50.431828>,  <35.367851, 38.883732, 50.326302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267059, 38.511299, 50.431828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593212, -0.363998, -0.718057,
		0.764595, -0.024438, 0.644048,
		-0.251980, -0.931079, 0.263814,
		35.191467, 38.231976, 50.510971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927269, 38.476410, 50.185764>,  <35.367851, 38.883732, 50.326302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927269, 38.476410, 50.185764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652527, 38.190998, 50.241047>,  <35.487682, 38.019749, 50.274216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652527, 38.190998, 50.241047>,  <35.927269, 38.476410, 50.185764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652527, 38.190998, 50.241047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573984, -0.649195, -0.499088,
		0.445836, -0.263474, 0.855460,
		-0.686857, -0.713532, 0.138204,
		35.446468, 37.976940, 50.282509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244537, 37.906055, 50.502342>,  <35.927269, 38.476410, 50.185764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244537, 37.906055, 50.502342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.920979, 37.770271, 50.310322>,  <35.726845, 37.688801, 50.195110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.920979, 37.770271, 50.310322>,  <36.244537, 37.906055, 50.502342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920979, 37.770271, 50.310322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546130, -0.736245, -0.399608,
		-0.217787, -0.585413, 0.780936,
		-0.808895, -0.339463, -0.480056,
		35.678310, 37.668434, 50.166306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193001, 37.112724, 50.573624>,  <36.244537, 37.906055, 50.502342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193001, 37.112724, 50.573624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.966534, 37.211384, 50.259014>,  <35.830654, 37.270580, 50.070248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.966534, 37.211384, 50.259014>,  <36.193001, 37.112724, 50.573624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966534, 37.211384, 50.259014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375098, -0.772575, -0.512278,
		-0.734000, -0.585059, 0.344891,
		-0.566167, 0.246644, -0.786525,
		35.796684, 37.285378, 50.023056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914391, 36.448151, 50.290462>,  <36.193001, 37.112724, 50.573624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914391, 36.448151, 50.290462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.868492, 36.722649, 50.003159>,  <35.840954, 36.887348, 49.830776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.868492, 36.722649, 50.003159>,  <35.914391, 36.448151, 50.290462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868492, 36.722649, 50.003159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270299, -0.674186, -0.687322,
		-0.955914, -0.273014, -0.108130,
		-0.114749, 0.686248, -0.718259,
		35.834068, 36.928524, 49.787682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661469, 36.035980, 49.711353>,  <35.914391, 36.448151, 50.290462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661469, 36.035980, 49.711353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.770206, 36.379154, 49.536976>,  <35.835449, 36.585060, 49.432350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.770206, 36.379154, 49.536976>,  <35.661469, 36.035980, 49.711353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770206, 36.379154, 49.536976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466570, -0.513701, -0.720016,
		-0.841674, -0.007670, -0.539932,
		0.271841, 0.857935, -0.435947,
		35.851757, 36.636536, 49.406193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450741, 35.903637, 49.002785>,  <35.661469, 36.035980, 49.711353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450741, 35.903637, 49.002785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.715603, 36.203289, 49.010239>,  <35.874519, 36.383080, 49.014713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.715603, 36.203289, 49.010239>,  <35.450741, 35.903637, 49.002785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715603, 36.203289, 49.010239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403975, -0.335906, -0.850865,
		-0.631149, 0.570937, -0.525054,
		0.662159, 0.749131, 0.018638,
		35.914249, 36.428028, 49.015831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384777, 36.187572, 48.440052>,  <35.450741, 35.903637, 49.002785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384777, 36.187572, 48.440052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763371, 36.254879, 48.550220>,  <35.990524, 36.295261, 48.616322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763371, 36.254879, 48.550220>,  <35.384777, 36.187572, 48.440052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763371, 36.254879, 48.550220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321148, -0.405881, -0.855643,
		-0.032188, 0.898302, -0.438198,
		0.946482, 0.168268, 0.275424,
		36.047314, 36.305359, 48.632847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674969, 36.445869, 47.916489>,  <35.384777, 36.187572, 48.440052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674969, 36.445869, 47.916489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.973171, 36.287754, 48.131138>,  <36.152092, 36.192883, 48.259926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.973171, 36.287754, 48.131138>,  <35.674969, 36.445869, 47.916489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973171, 36.287754, 48.131138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313082, -0.503076, -0.805540,
		0.588383, 0.768544, -0.251289,
		0.745510, -0.395291, 0.536619,
		36.196823, 36.169167, 48.292122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443138, 36.799992, 47.324928>,  <35.674969, 36.445869, 47.916489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443138, 36.799992, 47.324928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839478, 36.809361, 47.271755>,  <36.077282, 36.814980, 47.239849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839478, 36.809361, 47.271755>,  <35.443138, 36.799992, 47.324928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839478, 36.809361, 47.271755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016632, 0.998512, 0.051936,
		0.133955, -0.049249, 0.989763,
		0.990848, 0.023419, -0.132937,
		36.136730, 36.816387, 47.231873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725113, 36.722885, 47.269005>,  <35.443138, 36.799992, 47.324928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725113, 36.722885, 47.269005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.751980, 36.956169, 46.945190>,  <34.768101, 37.096138, 46.750900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.751980, 36.956169, 46.945190>,  <34.725113, 36.722885, 47.269005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751980, 36.956169, 46.945190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747356, 0.566958, 0.346437,
		0.661020, 0.581744, 0.473948,
		0.067171, 0.583209, -0.809540,
		34.772133, 37.131130, 46.702328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830070, 37.454937, 47.460613>,  <34.725113, 36.722885, 47.269005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830070, 37.454937, 47.460613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624695, 37.399281, 47.121906>,  <34.501469, 37.365887, 46.918682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624695, 37.399281, 47.121906>,  <34.830070, 37.454937, 47.460613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624695, 37.399281, 47.121906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816538, 0.382692, 0.432218,
		0.263912, 0.913337, -0.310105,
		-0.513435, -0.139145, -0.846772,
		34.470665, 37.357536, 46.867874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571060, 38.069157, 47.179073>,  <34.830070, 37.454937, 47.460613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571060, 38.069157, 47.179073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.309959, 37.786850, 47.068943>,  <34.153301, 37.617466, 47.002865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.309959, 37.786850, 47.068943>,  <34.571060, 38.069157, 47.179073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309959, 37.786850, 47.068943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700892, 0.424685, 0.573056,
		-0.287519, 0.567036, -0.771883,
		-0.652750, -0.705771, -0.275326,
		34.114136, 37.575119, 46.986343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903507, 38.360821, 47.185795>,  <34.571060, 38.069157, 47.179073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903507, 38.360821, 47.185795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.837696, 37.967651, 47.218754>,  <33.798210, 37.731750, 47.238529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.837696, 37.967651, 47.218754>,  <33.903507, 38.360821, 47.185795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837696, 37.967651, 47.218754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799227, 0.181802, 0.572873,
		-0.578072, 0.028397, -0.815492,
		-0.164525, -0.982925, 0.082399,
		33.788338, 37.672775, 47.243473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132008, 38.340366, 47.039185>,  <33.903507, 38.360821, 47.185795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132008, 38.340366, 47.039185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.237579, 38.000214, 47.221256>,  <33.300922, 37.796120, 47.330502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.237579, 38.000214, 47.221256>,  <33.132008, 38.340366, 47.039185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237579, 38.000214, 47.221256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824077, 0.046435, 0.564571,
		-0.501238, -0.524109, -0.688527,
		0.263925, -0.850384, 0.455182,
		33.316757, 37.745098, 47.357811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496254, 38.068489, 47.076160>,  <33.132008, 38.340366, 47.039185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496254, 38.068489, 47.076160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.720001, 37.840034, 47.316463>,  <32.854248, 37.702961, 47.460644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.720001, 37.840034, 47.316463>,  <32.496254, 38.068489, 47.076160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720001, 37.840034, 47.316463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728582, 0.006872, 0.684924,
		-0.395316, -0.820824, -0.412278,
		0.559370, -0.571140, 0.600755,
		32.887814, 37.668694, 47.496689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062538, 37.680660, 47.462055>,  <32.496254, 38.068489, 47.076160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062538, 37.680660, 47.462055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.390633, 37.620388, 47.682785>,  <32.587490, 37.584225, 47.815224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.390633, 37.620388, 47.682785>,  <32.062538, 37.680660, 47.462055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390633, 37.620388, 47.682785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562489, -0.036998, 0.825976,
		-0.104045, -0.987889, -0.115106,
		0.820232, -0.150684, 0.551828,
		32.636703, 37.575184, 47.848331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919666, 37.051338, 47.818031>,  <32.062538, 37.680660, 47.462055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919666, 37.051338, 47.818031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.207527, 37.242683, 48.019337>,  <32.380241, 37.357491, 48.140121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.207527, 37.242683, 48.019337>,  <31.919666, 37.051338, 47.818031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207527, 37.242683, 48.019337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525245, -0.098987, 0.845174,
		0.454116, -0.872565, 0.180022,
		0.719650, 0.478363, 0.503262,
		32.423424, 37.386192, 48.170315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183777, 36.581989, 48.327198>,  <31.919666, 37.051338, 47.818031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183777, 36.581989, 48.327198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.245564, 36.959442, 48.444294>,  <32.282635, 37.185913, 48.514553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.245564, 36.959442, 48.444294>,  <32.183777, 36.581989, 48.327198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245564, 36.959442, 48.444294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450930, -0.196302, 0.870705,
		0.879092, -0.266499, 0.395191,
		0.154465, 0.943634, 0.292740,
		32.291904, 37.242531, 48.532116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271378, 36.533405, 49.146725>,  <32.183777, 36.581989, 48.327198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271378, 36.533405, 49.146725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183609, 36.913979, 49.060349>,  <32.130947, 37.142323, 49.008522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183609, 36.913979, 49.060349>,  <32.271378, 36.533405, 49.146725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183609, 36.913979, 49.060349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374315, 0.122299, 0.919202,
		0.900967, 0.282524, 0.329300,
		-0.219423, 0.951432, -0.215940,
		32.117783, 37.199409, 48.995567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598717, 36.910980, 49.667603>,  <32.271378, 36.533405, 49.146725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598717, 36.910980, 49.667603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304585, 37.133045, 49.512127>,  <32.128105, 37.266285, 49.418842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304585, 37.133045, 49.512127>,  <32.598717, 36.910980, 49.667603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304585, 37.133045, 49.512127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410291, 0.091796, 0.907323,
		0.539394, 0.826659, 0.160279,
		-0.735334, 0.555165, -0.388684,
		32.083984, 37.299595, 49.395523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502918, 37.306751, 50.155563>,  <32.598717, 36.910980, 49.667603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502918, 37.306751, 50.155563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.173515, 37.338840, 49.930923>,  <31.975872, 37.358093, 49.796139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.173515, 37.338840, 49.930923>,  <32.502918, 37.306751, 50.155563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173515, 37.338840, 49.930923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549420, 0.133802, 0.824763,
		0.141308, 0.987756, -0.066112,
		-0.823511, 0.080222, -0.561600,
		31.926462, 37.362907, 49.762444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169964, 37.960110, 50.287926>,  <32.502918, 37.306751, 50.155563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169964, 37.960110, 50.287926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.874756, 37.745876, 50.123745>,  <31.697630, 37.617336, 50.025238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.874756, 37.745876, 50.123745>,  <32.169964, 37.960110, 50.287926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874756, 37.745876, 50.123745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628188, 0.323242, 0.707739,
		-0.246378, 0.780170, -0.575007,
		-0.738023, -0.535584, -0.410453,
		31.653349, 37.585201, 50.000610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575251, 38.383060, 50.293148>,  <32.169964, 37.960110, 50.287926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575251, 38.383060, 50.293148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.453005, 38.003147, 50.266293>,  <31.379658, 37.775200, 50.250179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.453005, 38.003147, 50.266293>,  <31.575251, 38.383060, 50.293148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453005, 38.003147, 50.266293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626145, 0.147357, 0.765655,
		-0.717315, 0.276033, -0.639738,
		-0.305616, -0.949785, -0.067135,
		31.361320, 37.718212, 50.246151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866388, 38.449528, 50.174721>,  <31.575251, 38.383060, 50.293148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866388, 38.449528, 50.174721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.931467, 38.079834, 50.312893>,  <30.970514, 37.858017, 50.395794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.931467, 38.079834, 50.312893>,  <30.866388, 38.449528, 50.174721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931467, 38.079834, 50.312893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739070, 0.117785, 0.663252,
		-0.653687, -0.363202, -0.663911,
		0.162695, -0.924235, 0.345426,
		30.980276, 37.802563, 50.416519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222084, 38.229706, 50.392612>,  <30.866388, 38.449528, 50.174721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222084, 38.229706, 50.392612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.444990, 37.957169, 50.582443>,  <30.578733, 37.793644, 50.696342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.444990, 37.957169, 50.582443>,  <30.222084, 38.229706, 50.392612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444990, 37.957169, 50.582443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584373, 0.084221, 0.807103,
		-0.589886, -0.727099, -0.351228,
		0.557263, -0.681347, 0.474578,
		30.612169, 37.752766, 50.724815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700579, 37.727562, 50.731987>,  <30.222084, 38.229706, 50.392612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700579, 37.727562, 50.731987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.040026, 37.665962, 50.934425>,  <30.243694, 37.629002, 51.055889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.040026, 37.665962, 50.934425>,  <29.700579, 37.727562, 50.731987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040026, 37.665962, 50.934425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527437, -0.172712, 0.831854,
		-0.040698, -0.972859, -0.227793,
		0.848619, -0.154001, 0.506093,
		30.294611, 37.619762, 51.086254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585346, 37.197304, 51.117378>,  <29.700579, 37.727562, 50.731987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585346, 37.197304, 51.117378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.893911, 37.368416, 51.305817>,  <30.079050, 37.471085, 51.418880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.893911, 37.368416, 51.305817>,  <29.585346, 37.197304, 51.117378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893911, 37.368416, 51.305817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553389, 0.085517, 0.828521,
		0.314139, -0.899828, 0.302698,
		0.771412, 0.427781, 0.471091,
		30.125336, 37.496750, 51.447144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564131, 36.895206, 51.735283>,  <29.585346, 37.197304, 51.117378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564131, 36.895206, 51.735283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.790291, 37.221554, 51.783745>,  <29.925987, 37.417362, 51.812820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.790291, 37.221554, 51.783745>,  <29.564131, 36.895206, 51.735283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790291, 37.221554, 51.783745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427851, 0.164525, 0.888749,
		0.705172, -0.554334, 0.442093,
		0.565399, 0.815871, 0.121154,
		29.959911, 37.466316, 51.820091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881342, 36.713131, 52.304710>,  <29.564131, 36.895206, 51.735283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881342, 36.713131, 52.304710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.946499, 37.107208, 52.326103>,  <29.985594, 37.343655, 52.338940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.946499, 37.107208, 52.326103>,  <29.881342, 36.713131, 52.304710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946499, 37.107208, 52.326103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364775, 0.009772, 0.931044,
		0.916736, -0.171169, 0.360966,
		0.162893, 0.985193, 0.053480,
		29.995367, 37.402767, 52.342148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224001, 36.800110, 52.876610>,  <29.881342, 36.713131, 52.304710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224001, 36.800110, 52.876610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.050993, 37.152554, 52.800114>,  <29.947187, 37.364021, 52.754215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.050993, 37.152554, 52.800114>,  <30.224001, 36.800110, 52.876610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050993, 37.152554, 52.800114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387568, 0.009818, 0.921789,
		0.814074, 0.472812, 0.337243,
		-0.432522, 0.881109, -0.191239,
		29.921236, 37.416885, 52.742741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461845, 37.271343, 53.365330>,  <30.224001, 36.800110, 52.876610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461845, 37.271343, 53.365330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.135216, 37.459438, 53.231419>,  <29.939238, 37.572296, 53.151070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.135216, 37.459438, 53.231419>,  <30.461845, 37.271343, 53.365330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135216, 37.459438, 53.231419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389071, -0.019934, 0.920992,
		0.426415, 0.882313, 0.199236,
		-0.816575, 0.470241, -0.334782,
		29.890244, 37.600510, 53.130985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432032, 37.956158, 53.740677>,  <30.461845, 37.271343, 53.365330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432032, 37.956158, 53.740677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.063410, 37.857315, 53.620892>,  <29.842237, 37.798012, 53.549019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.063410, 37.857315, 53.620892>,  <30.432032, 37.956158, 53.740677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063410, 37.857315, 53.620892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343059, 0.157100, 0.926083,
		-0.181793, 0.956169, -0.229548,
		-0.921554, -0.247104, -0.299463,
		29.786943, 37.783184, 53.531052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965326, 38.561798, 53.939606>,  <30.432032, 37.956158, 53.740677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965326, 38.561798, 53.939606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.726250, 38.245476, 53.886852>,  <29.582804, 38.055683, 53.855198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.726250, 38.245476, 53.886852>,  <29.965326, 38.561798, 53.939606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726250, 38.245476, 53.886852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574010, 0.307251, 0.759019,
		-0.559712, 0.529364, -0.637571,
		-0.597691, -0.790804, -0.131888,
		29.546942, 38.008236, 53.847286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244595, 38.808132, 53.877197>,  <29.965326, 38.561798, 53.939606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244595, 38.808132, 53.877197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.268574, 38.434975, 54.019245>,  <29.282961, 38.211079, 54.104473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.268574, 38.434975, 54.019245>,  <29.244595, 38.808132, 53.877197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268574, 38.434975, 54.019245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635546, 0.238664, 0.734249,
		-0.769732, -0.269714, -0.578590,
		0.059949, -0.932896, 0.355123,
		29.286558, 38.155106, 54.125782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595781, 38.580589, 53.938194>,  <29.244595, 38.808132, 53.877197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595781, 38.580589, 53.938194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.814392, 38.340450, 54.171738>,  <28.945559, 38.196365, 54.311863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.814392, 38.340450, 54.171738>,  <28.595781, 38.580589, 53.938194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814392, 38.340450, 54.171738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714378, 0.029595, 0.699133,
		-0.437004, -0.799190, -0.412703,
		0.546526, -0.600350, 0.583857,
		28.978350, 38.160347, 54.346893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130577, 38.112076, 54.178108>,  <28.595781, 38.580589, 53.938194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.130577, 38.112076, 54.178108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.437746, 38.155331, 54.430649>,  <28.622047, 38.181282, 54.582172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.437746, 38.155331, 54.430649>,  <28.130577, 38.112076, 54.178108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437746, 38.155331, 54.430649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612291, -0.165585, 0.773099,
		0.188143, -0.980249, -0.060944,
		0.767921, 0.108138, 0.631351,
		28.668121, 38.187771, 54.620052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269802, 37.441429, 54.480335>,  <28.130577, 38.112076, 54.178108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269802, 37.441429, 54.480335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.436123, 37.715286, 54.719791>,  <28.535915, 37.879601, 54.863464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.436123, 37.715286, 54.719791>,  <28.269802, 37.441429, 54.480335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436123, 37.715286, 54.719791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430435, -0.431701, 0.792692,
		0.801147, -0.587276, 0.115195,
		0.415800, 0.684646, 0.598640,
		28.560863, 37.920681, 54.899384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336891, 37.047897, 55.134094>,  <28.269802, 37.441429, 54.480335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336891, 37.047897, 55.134094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.368343, 37.437340, 55.219791>,  <28.387215, 37.671005, 55.271210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.368343, 37.437340, 55.219791>,  <28.336891, 37.047897, 55.134094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368343, 37.437340, 55.219791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422583, -0.162093, 0.891712,
		0.902907, -0.160653, 0.398685,
		0.078632, 0.973610, 0.214244,
		28.391933, 37.729424, 55.284065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634563, 36.975353, 55.752621>,  <28.336891, 37.047897, 55.134094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634563, 36.975353, 55.752621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.480425, 37.342190, 55.711735>,  <28.387941, 37.562294, 55.687202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.480425, 37.342190, 55.711735>,  <28.634563, 36.975353, 55.752621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480425, 37.342190, 55.711735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321407, -0.029563, 0.946479,
		0.864989, 0.397574, 0.306153,
		-0.385346, 0.917094, -0.102212,
		28.364820, 37.617317, 55.681072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777342, 37.205311, 56.372902>,  <28.634563, 36.975353, 55.752621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777342, 37.205311, 56.372902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.509619, 37.481419, 56.262951>,  <28.348986, 37.647083, 56.196980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.509619, 37.481419, 56.262951>,  <28.777342, 37.205311, 56.372902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509619, 37.481419, 56.262951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228427, 0.160866, 0.960179,
		0.707000, 0.705444, 0.050007,
		-0.669308, 0.690269, -0.274875,
		28.308826, 37.688499, 56.180489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933352, 37.887253, 56.724495>,  <28.777342, 37.205311, 56.372902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933352, 37.887253, 56.724495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.549906, 37.870892, 56.611794>,  <28.319838, 37.861076, 56.544170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.549906, 37.870892, 56.611794>,  <28.933352, 37.887253, 56.724495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549906, 37.870892, 56.611794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283638, 0.223006, 0.932640,
		0.024688, 0.973959, -0.225377,
		-0.958614, -0.040900, -0.281757,
		28.262321, 37.858620, 56.527267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631783, 38.352768, 57.136410>,  <28.933352, 37.887253, 56.724495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631783, 38.352768, 57.136410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.341202, 38.116337, 56.996185>,  <28.166853, 37.974476, 56.912052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.341202, 38.116337, 56.996185>,  <28.631783, 38.352768, 57.136410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341202, 38.116337, 56.996185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448515, 0.021306, 0.893521,
		-0.520674, 0.806331, -0.280587,
		-0.726452, -0.591081, -0.350558,
		28.123266, 37.939011, 56.891018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017014, 38.677689, 57.345276>,  <28.631783, 38.352768, 57.136410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017014, 38.677689, 57.345276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.940996, 38.290535, 57.279438>,  <27.895386, 38.058243, 57.239933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.940996, 38.290535, 57.279438>,  <28.017014, 38.677689, 57.345276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940996, 38.290535, 57.279438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716887, 0.022255, 0.696834,
		-0.670788, 0.250426, -0.698090,
		-0.190042, -0.967880, -0.164599,
		27.883984, 38.000172, 57.230057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324972, 38.716755, 57.538643>,  <28.017014, 38.677689, 57.345276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324972, 38.716755, 57.538643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.440306, 38.334064, 57.554314>,  <27.509506, 38.104450, 57.563717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.440306, 38.334064, 57.554314>,  <27.324972, 38.716755, 57.538643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440306, 38.334064, 57.554314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579706, -0.141849, 0.802384,
		-0.762106, -0.254066, -0.595521,
		0.288332, -0.956729, 0.039180,
		27.526806, 38.047047, 57.566067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647112, 38.250305, 57.609856>,  <27.324972, 38.716755, 57.538643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647112, 38.250305, 57.609856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.936556, 38.004963, 57.736462>,  <27.110222, 37.857758, 57.812424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.936556, 38.004963, 57.736462>,  <26.647112, 38.250305, 57.609856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936556, 38.004963, 57.736462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593190, -0.318206, 0.739507,
		-0.352877, -0.722859, -0.594099,
		0.723605, -0.613368, 0.316505,
		27.153639, 37.820953, 57.831413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361746, 37.681038, 57.640675>,  <26.647112, 38.250305, 57.609856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.361746, 37.681038, 57.640675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.669924, 37.670311, 57.895451>,  <26.854832, 37.663876, 58.048317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.669924, 37.670311, 57.895451>,  <26.361746, 37.681038, 57.640675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669924, 37.670311, 57.895451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587255, -0.418648, 0.692724,
		0.248080, -0.907753, -0.338291,
		0.770447, -0.026812, 0.636940,
		26.901058, 37.662266, 58.086533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637251, 36.900520, 57.798740>,  <26.361746, 37.681038, 57.640675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637251, 36.900520, 57.798740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.641321, 37.175037, 58.089642>,  <26.643763, 37.339748, 58.264183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.641321, 37.175037, 58.089642>,  <26.637251, 36.900520, 57.798740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641321, 37.175037, 58.089642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524111, -0.615727, 0.588377,
		0.851589, -0.387150, 0.353428,
		0.010174, 0.686291, 0.727256,
		26.644373, 37.380924, 58.307819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779337, 36.137569, 57.921886>,  <26.637251, 36.900520, 57.798740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779337, 36.137569, 57.921886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.509605, 35.882900, 57.772263>,  <26.347767, 35.730099, 57.682487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.509605, 35.882900, 57.772263>,  <26.779337, 36.137569, 57.921886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509605, 35.882900, 57.772263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059167, 0.551522, -0.832059,
		0.736056, -0.538950, -0.409578,
		-0.674330, -0.636676, -0.374063,
		26.307306, 35.691898, 57.660046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020508, 35.889622, 57.271740>,  <26.779337, 36.137569, 57.921886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020508, 35.889622, 57.271740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.621735, 35.871197, 57.246422>,  <26.382471, 35.860142, 57.231232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.621735, 35.871197, 57.246422>,  <27.020508, 35.889622, 57.271740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621735, 35.871197, 57.246422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045368, 0.318962, -0.946681,
		0.063792, -0.946648, -0.315893,
		-0.996931, -0.046060, -0.063295,
		26.322655, 35.857380, 57.227432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931398, 35.502602, 56.699074>,  <27.020508, 35.889622, 57.271740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931398, 35.502602, 56.699074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.588259, 35.698284, 56.762028>,  <26.382376, 35.815697, 56.799801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.588259, 35.698284, 56.762028>,  <26.931398, 35.502602, 56.699074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588259, 35.698284, 56.762028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102350, 0.137474, -0.985203,
		-0.503609, -0.861263, -0.067861,
		-0.857848, 0.489211, 0.157384,
		26.330904, 35.845047, 56.809242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529915, 35.188408, 56.126846>,  <26.931398, 35.502602, 56.699074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529915, 35.188408, 56.126846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.341297, 35.516483, 56.256420>,  <26.228127, 35.713329, 56.334164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.341297, 35.516483, 56.256420>,  <26.529915, 35.188408, 56.126846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341297, 35.516483, 56.256420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226644, 0.242274, -0.943364,
		-0.852220, -0.518254, 0.071649,
		-0.471544, 0.820193, 0.323930,
		26.199835, 35.762543, 56.353600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835297, 35.166203, 55.754433>,  <26.529915, 35.188408, 56.126846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835297, 35.166203, 55.754433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.900450, 35.544430, 55.867123>,  <25.939541, 35.771366, 55.934738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.900450, 35.544430, 55.867123>,  <25.835297, 35.166203, 55.754433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.900450, 35.544430, 55.867123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262873, 0.316806, -0.911335,
		-0.950982, 0.074381, 0.300167,
		0.162881, 0.945569, 0.281724,
		25.949314, 35.828102, 55.951641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.274126, 35.544167, 55.481865>,  <25.835297, 35.166203, 55.754433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.274126, 35.544167, 55.481865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.580841, 35.795113, 55.536201>,  <25.764870, 35.945679, 55.568802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.580841, 35.795113, 55.536201>,  <25.274126, 35.544167, 55.481865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580841, 35.795113, 55.536201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061561, 0.282519, -0.957284,
		-0.638942, 0.725671, 0.255253,
		0.766788, 0.627363, 0.135840,
		25.810877, 35.983322, 55.576954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080168, 36.195583, 55.094032>,  <25.274126, 35.544167, 55.481865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080168, 36.195583, 55.094032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.475451, 36.246628, 55.127895>,  <25.712620, 36.277252, 55.148212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.475451, 36.246628, 55.127895>,  <25.080168, 36.195583, 55.094032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.475451, 36.246628, 55.127895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029434, 0.384254, -0.922758,
		-0.150281, 0.914366, 0.375965,
		0.988205, 0.127607, 0.084660,
		25.771912, 36.284908, 55.153294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.115423, 36.808136, 54.685219>,  <25.080168, 36.195583, 55.094032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.115423, 36.808136, 54.685219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.496012, 36.689651, 54.718586>,  <25.724365, 36.618561, 54.738605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.496012, 36.689651, 54.718586>,  <25.115423, 36.808136, 54.685219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496012, 36.689651, 54.718586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214160, 0.442704, -0.870718,
		0.220989, 0.846328, 0.484657,
		0.951472, -0.296214, 0.083417,
		25.781454, 36.600788, 54.743610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.528435, 37.365257, 54.488167>,  <25.115423, 36.808136, 54.685219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.528435, 37.365257, 54.488167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.757824, 37.037937, 54.472580>,  <25.895458, 36.841545, 54.463226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.757824, 37.037937, 54.472580>,  <25.528435, 37.365257, 54.488167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.757824, 37.037937, 54.472580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516234, 0.397898, -0.758406,
		0.636106, 0.414810, 0.650616,
		0.573473, -0.818297, -0.038967,
		25.929867, 36.792446, 54.460892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214754, 37.620220, 54.311611>,  <25.528435, 37.365257, 54.488167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214754, 37.620220, 54.311611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.228704, 37.230457, 54.222790>,  <26.237076, 36.996597, 54.169498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.228704, 37.230457, 54.222790>,  <26.214754, 37.620220, 54.311611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228704, 37.230457, 54.222790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494887, 0.209874, -0.843232,
		0.868257, -0.080482, 0.489543,
		0.034877, -0.974410, -0.222054,
		26.239168, 36.938133, 54.156174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.909510, 37.338612, 54.037212>,  <26.214754, 37.620220, 54.311611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.909510, 37.338612, 54.037212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.664368, 37.056236, 53.895195>,  <26.517282, 36.886810, 53.809986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.664368, 37.056236, 53.895195>,  <26.909510, 37.338612, 54.037212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664368, 37.056236, 53.895195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504085, -0.003255, -0.863647,
		0.608530, -0.708262, 0.357850,
		-0.612854, -0.705942, -0.355043,
		26.480511, 36.844452, 53.788681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302702, 36.684776, 53.812866>,  <26.909510, 37.338612, 54.037212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302702, 36.684776, 53.812866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.946346, 36.678970, 53.631271>,  <26.732533, 36.675488, 53.522316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.946346, 36.678970, 53.631271>,  <27.302702, 36.684776, 53.812866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946346, 36.678970, 53.631271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454181, -0.015872, -0.890768,
		0.005728, -0.999769, 0.020735,
		-0.890891, -0.014519, -0.453985,
		26.679079, 36.674618, 53.495075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451361, 36.216671, 53.318691>,  <27.302702, 36.684776, 53.812866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451361, 36.216671, 53.318691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.137020, 36.432060, 53.197052>,  <26.948416, 36.561295, 53.124069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.137020, 36.432060, 53.197052>,  <27.451361, 36.216671, 53.318691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.137020, 36.432060, 53.197052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354972, -0.009889, -0.934824,
		-0.506389, -0.842582, -0.183373,
		-0.785853, 0.538477, -0.304101,
		26.901264, 36.593605, 53.105824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251215, 35.869881, 52.590416>,  <27.451361, 36.216671, 53.318691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251215, 35.869881, 52.590416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.087524, 36.233707, 52.619301>,  <26.989311, 36.452003, 52.636631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.087524, 36.233707, 52.619301>,  <27.251215, 35.869881, 52.590416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087524, 36.233707, 52.619301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340649, 0.225723, -0.912693,
		-0.846459, -0.348898, -0.402216,
		-0.409225, 0.909571, 0.072213,
		26.964756, 36.506580, 52.640965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053089, 36.041996, 51.933964>,  <27.251215, 35.869881, 52.590416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053089, 36.041996, 51.933964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.054476, 36.408161, 52.094967>,  <27.055307, 36.627861, 52.191570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.054476, 36.408161, 52.094967>,  <27.053089, 36.041996, 51.933964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054476, 36.408161, 52.094967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248217, 0.389126, -0.887113,
		-0.968698, 0.102984, -0.225872,
		0.003466, 0.915410, 0.402508,
		27.055515, 36.682785, 52.215717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646467, 36.336441, 51.411366>,  <27.053089, 36.041996, 51.933964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646467, 36.336441, 51.411366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.880699, 36.601204, 51.598541>,  <27.021238, 36.760063, 51.710846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.880699, 36.601204, 51.598541>,  <26.646467, 36.336441, 51.411366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880699, 36.601204, 51.598541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452097, 0.212472, -0.866293,
		-0.672833, 0.718840, -0.174828,
		0.585580, 0.661910, 0.467943,
		27.056374, 36.799778, 51.738926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718178, 36.842098, 50.940010>,  <26.646467, 36.336441, 51.411366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718178, 36.842098, 50.940010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.024555, 36.900940, 51.190350>,  <27.208382, 36.936245, 51.340553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.024555, 36.900940, 51.190350>,  <26.718178, 36.842098, 50.940010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024555, 36.900940, 51.190350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590696, 0.223250, -0.775395,
		-0.253787, 0.963597, 0.084102,
		0.765944, 0.147107, 0.625851,
		27.254339, 36.945072, 51.378105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022312, 37.513256, 50.716267>,  <26.718178, 36.842098, 50.940010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022312, 37.513256, 50.716267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.287464, 37.280956, 50.905293>,  <27.446556, 37.141575, 51.018707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.287464, 37.280956, 50.905293>,  <27.022312, 37.513256, 50.716267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287464, 37.280956, 50.905293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640226, 0.112409, -0.759917,
		0.388201, 0.806284, 0.446325,
		0.662880, -0.580749, 0.472567,
		27.486328, 37.106731, 51.047062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641808, 37.907436, 50.661263>,  <27.022312, 37.513256, 50.716267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641808, 37.907436, 50.661263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.742521, 37.530979, 50.751465>,  <27.802950, 37.305103, 50.805588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.742521, 37.530979, 50.751465>,  <27.641808, 37.907436, 50.661263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742521, 37.530979, 50.751465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623186, -0.020609, -0.781802,
		0.740435, 0.337380, 0.581318,
		0.251784, -0.941143, 0.225510,
		27.818056, 37.248634, 50.819118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308540, 37.841976, 50.484764>,  <27.641808, 37.907436, 50.661263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308540, 37.841976, 50.484764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.231672, 37.451839, 50.528172>,  <28.185551, 37.217758, 50.554214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.231672, 37.451839, 50.528172>,  <28.308540, 37.841976, 50.484764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231672, 37.451839, 50.528172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675298, -0.211661, -0.706521,
		0.712070, -0.062490, 0.699322,
		-0.192170, -0.975343, 0.108519,
		28.174021, 37.159237, 50.560726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996136, 37.546932, 50.554565>,  <28.308540, 37.841976, 50.484764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996136, 37.546932, 50.554565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.743269, 37.270638, 50.414135>,  <28.591549, 37.104862, 50.329876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.743269, 37.270638, 50.414135>,  <28.996136, 37.546932, 50.554565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743269, 37.270638, 50.414135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676980, -0.271970, -0.683908,
		0.376914, -0.670016, 0.639542,
		-0.632166, -0.690732, -0.351078,
		28.553619, 37.063419, 50.308811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375158, 36.874603, 50.440403>,  <28.996136, 37.546932, 50.554565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375158, 36.874603, 50.440403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.046560, 36.810001, 50.221657>,  <28.849401, 36.771240, 50.090408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.046560, 36.810001, 50.221657>,  <29.375158, 36.874603, 50.440403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046560, 36.810001, 50.221657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568667, -0.302708, -0.764844,
		-0.042016, -0.939300, 0.340514,
		-0.821494, -0.161504, -0.546867,
		28.800112, 36.761551, 50.057598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450962, 36.176891, 50.156910>,  <29.375158, 36.874603, 50.440403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450962, 36.176891, 50.156910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.188379, 36.361553, 49.918270>,  <29.030830, 36.472351, 49.775085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.188379, 36.361553, 49.918270>,  <29.450962, 36.176891, 50.156910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188379, 36.361553, 49.918270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428084, -0.423217, -0.798519,
		-0.621136, -0.779589, 0.080194,
		-0.656456, 0.461659, -0.596604,
		28.991442, 36.500050, 49.739288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197838, 35.730743, 49.534534>,  <29.450962, 36.176891, 50.156910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197838, 35.730743, 49.534534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.152058, 36.110855, 49.418690>,  <29.124590, 36.338921, 49.349182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.152058, 36.110855, 49.418690>,  <29.197838, 35.730743, 49.534534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152058, 36.110855, 49.418690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457946, -0.208237, -0.864247,
		-0.881582, -0.231539, -0.411343,
		-0.114450, 0.950277, -0.289610,
		29.117722, 36.395939, 49.331806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119690, 35.630997, 48.818817>,  <29.197838, 35.730743, 49.534534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119690, 35.630997, 48.818817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.196133, 36.020000, 48.872044>,  <29.241999, 36.253403, 48.903980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.196133, 36.020000, 48.872044>,  <29.119690, 35.630997, 48.818817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196133, 36.020000, 48.872044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513865, 0.016385, -0.857715,
		-0.836314, 0.232295, -0.496606,
		0.191106, 0.972507, 0.133071,
		29.253464, 36.311752, 48.911964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122507, 35.862629, 48.151394>,  <29.119690, 35.630997, 48.818817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122507, 35.862629, 48.151394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.319902, 36.170612, 48.313198>,  <29.438339, 36.355404, 48.410282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.319902, 36.170612, 48.313198>,  <29.122507, 35.862629, 48.151394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319902, 36.170612, 48.313198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450095, 0.171888, -0.876281,
		-0.744232, 0.614504, -0.261730,
		0.493491, 0.769960, 0.404509,
		29.467949, 36.401600, 48.434551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923752, 36.523678, 47.750580>,  <29.122507, 35.862629, 48.151394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923752, 36.523678, 47.750580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.275902, 36.540806, 47.939518>,  <29.487192, 36.551083, 48.052879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.275902, 36.540806, 47.939518>,  <28.923752, 36.523678, 47.750580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275902, 36.540806, 47.939518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472247, 0.012997, -0.881370,
		-0.043878, 0.998998, -0.008778,
		0.880373, 0.042818, 0.472344,
		29.540014, 36.553650, 48.081223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357437, 36.983990, 47.377087>,  <28.923752, 36.523678, 47.750580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357437, 36.983990, 47.377087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.657141, 36.823521, 47.587864>,  <29.836964, 36.727242, 47.714333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.657141, 36.823521, 47.587864>,  <29.357437, 36.983990, 47.377087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657141, 36.823521, 47.587864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541911, -0.086018, -0.836022,
		0.380714, 0.911956, 0.152949,
		0.749259, -0.401170, 0.526947,
		29.881918, 36.703171, 47.745949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881878, 37.303951, 47.106674>,  <29.357437, 36.983990, 47.377087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881878, 37.303951, 47.106674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.027462, 36.975487, 47.282505>,  <30.114813, 36.778408, 47.388004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.027462, 36.975487, 47.282505>,  <29.881878, 37.303951, 47.106674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027462, 36.975487, 47.282505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620264, -0.138386, -0.772089,
		0.694841, 0.553663, 0.458970,
		0.363962, -0.821161, 0.439574,
		30.136650, 36.729137, 47.414379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627396, 37.387344, 47.122284>,  <29.881878, 37.303951, 47.106674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627396, 37.387344, 47.122284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.546961, 36.996536, 47.150566>,  <30.498701, 36.762051, 47.167534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.546961, 36.996536, 47.150566>,  <30.627396, 37.387344, 47.122284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546961, 36.996536, 47.150566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643364, -0.186153, -0.742584,
		0.738680, -0.103835, 0.666011,
		-0.201086, -0.977019, 0.070704,
		30.486635, 36.703430, 47.171776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307873, 36.986076, 47.156528>,  <30.627396, 37.387344, 47.122284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307873, 36.986076, 47.156528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.043919, 36.701351, 47.060299>,  <30.885546, 36.530518, 47.002560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.043919, 36.701351, 47.060299>,  <31.307873, 36.986076, 47.156528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043919, 36.701351, 47.060299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654341, -0.387046, -0.649641,
		0.369307, -0.586108, 0.721173,
		-0.659887, -0.711810, -0.240575,
		30.845953, 36.487808, 46.988125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662916, 36.395447, 47.149670>,  <31.307873, 36.986076, 47.156528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662916, 36.395447, 47.149670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.357655, 36.252712, 46.934166>,  <31.174498, 36.167072, 46.804863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.357655, 36.252712, 46.934166>,  <31.662916, 36.395447, 47.149670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357655, 36.252712, 46.934166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641193, -0.521893, -0.562583,
		-0.080423, -0.774786, 0.627087,
		-0.763154, -0.356840, -0.538759,
		31.128708, 36.145660, 46.772537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731472, 35.626637, 47.009769>,  <31.662916, 36.395447, 47.149670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731472, 35.626637, 47.009769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.478559, 35.749046, 46.725075>,  <31.326811, 35.822495, 46.554260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.478559, 35.749046, 46.725075>,  <31.731472, 35.626637, 47.009769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478559, 35.749046, 46.725075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613426, -0.363373, -0.701191,
		-0.473210, -0.879946, 0.042028,
		-0.632282, 0.306030, -0.711734,
		31.288876, 35.840855, 46.511555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575588, 35.107208, 46.615753>,  <31.731472, 35.626637, 47.009769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575588, 35.107208, 46.615753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.462994, 35.411873, 46.382298>,  <31.395437, 35.594673, 46.242222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.462994, 35.411873, 46.382298>,  <31.575588, 35.107208, 46.615753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462994, 35.411873, 46.382298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409090, -0.454934, -0.790999,
		-0.867992, -0.461418, -0.183529,
		-0.281487, 0.761661, -0.583641,
		31.378548, 35.640369, 46.207207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219704, 34.751446, 46.114456>,  <31.575588, 35.107208, 46.615753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219704, 34.751446, 46.114456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.322044, 35.107277, 45.963093>,  <31.383448, 35.320774, 45.872272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.322044, 35.107277, 45.963093>,  <31.219704, 34.751446, 46.114456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322044, 35.107277, 45.963093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389069, -0.453093, -0.802080,
		-0.884967, 0.057984, -0.462030,
		0.255850, 0.889576, -0.378412,
		31.398800, 35.374149, 45.849567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973520, 34.772247, 45.350761>,  <31.219704, 34.751446, 46.114456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973520, 34.772247, 45.350761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.269896, 35.034111, 45.410664>,  <31.447721, 35.191231, 45.446606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.269896, 35.034111, 45.410664>,  <30.973520, 34.772247, 45.350761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269896, 35.034111, 45.410664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518180, -0.415457, -0.747586,
		-0.427199, 0.631516, -0.647061,
		0.740939, 0.654663, 0.149756,
		31.492178, 35.230511, 45.455589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238300, 34.827454, 44.661903>,  <30.973520, 34.772247, 45.350761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238300, 34.827454, 44.661903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.536692, 34.975037, 44.883675>,  <31.715727, 35.063587, 45.016735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.536692, 34.975037, 44.883675>,  <31.238300, 34.827454, 44.661903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536692, 34.975037, 44.883675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651659, -0.232744, -0.721922,
		-0.137321, 0.899833, -0.414057,
		0.745978, 0.368959, 0.554424,
		31.760485, 35.085724, 45.050003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642218, 35.212460, 44.208668>,  <31.238300, 34.827454, 44.661903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642218, 35.212460, 44.208668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.884569, 35.117481, 44.512386>,  <32.029980, 35.060493, 44.694618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.884569, 35.117481, 44.512386>,  <31.642218, 35.212460, 44.208668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884569, 35.117481, 44.512386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685678, -0.328133, -0.649749,
		0.403428, 0.914303, -0.036001,
		0.605881, -0.237442, 0.759296,
		32.066334, 35.046249, 44.740173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388222, 35.375042, 44.036137>,  <31.642218, 35.212460, 44.208668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388222, 35.375042, 44.036137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.442432, 35.102291, 44.323658>,  <32.474957, 34.938641, 44.496170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.442432, 35.102291, 44.323658>,  <32.388222, 35.375042, 44.036137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442432, 35.102291, 44.323658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801608, -0.350919, -0.484026,
		0.582287, 0.641795, 0.499040,
		0.135523, -0.681876, 0.718804,
		32.483089, 34.897728, 44.539299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098770, 35.480156, 44.209621>,  <32.388222, 35.375042, 44.036137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098770, 35.480156, 44.209621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.978737, 35.111874, 44.309425>,  <32.906719, 34.890903, 44.369308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.978737, 35.111874, 44.309425>,  <33.098770, 35.480156, 44.209621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978737, 35.111874, 44.309425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868576, -0.371857, -0.327564,
		0.394371, 0.118420, 0.911289,
		-0.300079, -0.920706, 0.249507,
		32.888714, 34.835663, 44.384277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773777, 35.247948, 44.634460>,  <33.098770, 35.480156, 44.209621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773777, 35.247948, 44.634460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.579639, 34.902309, 44.581135>,  <33.463158, 34.694927, 44.549141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.579639, 34.902309, 44.581135>,  <33.773777, 35.247948, 44.634460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579639, 34.902309, 44.581135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871606, -0.466171, -0.151619,
		0.068867, -0.189783, 0.979408,
		-0.485346, -0.864099, -0.133312,
		33.434036, 34.643078, 44.541142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288769, 34.840355, 44.678570>,  <33.773777, 35.247948, 44.634460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288769, 34.840355, 44.678570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.018188, 34.580738, 44.539333>,  <33.855843, 34.424969, 44.455791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.018188, 34.580738, 44.539333>,  <34.288769, 34.840355, 44.678570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018188, 34.580738, 44.539333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736297, -0.585099, -0.339891,
		0.016934, -0.486218, 0.873674,
		-0.676447, -0.649038, -0.348093,
		33.815254, 34.386028, 44.434906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368408, 34.151321, 45.040173>,  <34.288769, 34.840355, 44.678570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368408, 34.151321, 45.040173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.248680, 34.184200, 44.659931>,  <34.176842, 34.203926, 44.431786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.248680, 34.184200, 44.659931>,  <34.368408, 34.151321, 45.040173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248680, 34.184200, 44.659931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824130, -0.479809, -0.300988,
		-0.480848, -0.873515, 0.075880,
		-0.299325, 0.082194, -0.950604,
		34.158882, 34.208858, 44.374748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335270, 33.447601, 44.608200>,  <34.368408, 34.151321, 45.040173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335270, 33.447601, 44.608200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.394882, 33.773079, 44.383453>,  <34.430649, 33.968365, 44.248608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.394882, 33.773079, 44.383453>,  <34.335270, 33.447601, 44.608200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394882, 33.773079, 44.383453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831369, -0.410740, -0.374323,
		-0.535365, -0.411332, -0.737693,
		0.149029, 0.813694, -0.561865,
		34.439590, 34.017189, 44.214893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361519, 33.242691, 43.873943>,  <34.335270, 33.447601, 44.608200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361519, 33.242691, 43.873943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.562347, 33.567909, 43.991844>,  <34.682846, 33.763039, 44.062584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.562347, 33.567909, 43.991844>,  <34.361519, 33.242691, 43.873943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562347, 33.567909, 43.991844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864010, -0.456766, -0.211781,
		-0.037553, 0.361001, -0.931809,
		0.502072, 0.813046, 0.294755,
		34.712971, 33.811825, 44.080273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000965, 33.335022, 43.446545>,  <34.361519, 33.242691, 43.873943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000965, 33.335022, 43.446545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.062920, 33.499317, 43.805946>,  <35.100094, 33.597893, 44.021587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.062920, 33.499317, 43.805946>,  <35.000965, 33.335022, 43.446545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062920, 33.499317, 43.805946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899950, -0.433849, 0.043190,
		0.407554, 0.801916, -0.436841,
		0.154888, 0.410737, 0.898501,
		35.109386, 33.622540, 44.075497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620468, 33.110008, 43.515358>,  <35.000965, 33.335022, 43.446545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620468, 33.110008, 43.515358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556217, 33.330719, 43.842709>,  <35.517666, 33.463146, 44.039120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556217, 33.330719, 43.842709>,  <35.620468, 33.110008, 43.515358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556217, 33.330719, 43.842709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985537, 0.044287, 0.163574,
		0.054013, 0.832815, -0.550910,
		-0.160625, 0.551777, 0.818378,
		35.508030, 33.496250, 44.088223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055477, 33.756004, 43.537472>,  <35.620468, 33.110008, 43.515358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055477, 33.756004, 43.537472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.974606, 33.639133, 43.911373>,  <35.926083, 33.569012, 44.135712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.974606, 33.639133, 43.911373>,  <36.055477, 33.756004, 43.537472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974606, 33.639133, 43.911373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974184, 0.037892, 0.222551,
		-0.100444, 0.955614, 0.276973,
		-0.202178, -0.292176, 0.934750,
		35.913952, 33.551479, 44.191799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399204, 34.169891, 43.945938>,  <36.055477, 33.756004, 43.537472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399204, 34.169891, 43.945938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.327587, 33.878113, 44.210014>,  <36.284618, 33.703045, 44.368462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.327587, 33.878113, 44.210014>,  <36.399204, 34.169891, 43.945938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327587, 33.878113, 44.210014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947632, 0.052513, 0.315017,
		-0.264457, 0.682018, 0.681846,
		-0.179041, -0.729447, 0.660190,
		36.273876, 33.659279, 44.408070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473766, 34.416588, 44.591640>,  <36.399204, 34.169891, 43.945938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473766, 34.416588, 44.591640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.525558, 34.024170, 44.649311>,  <36.556633, 33.788719, 44.683914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.525558, 34.024170, 44.649311>,  <36.473766, 34.416588, 44.591640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525558, 34.024170, 44.649311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837590, 0.186031, 0.513649,
		-0.530734, 0.054256, 0.845800,
		0.129477, -0.981045, 0.144177,
		36.564400, 33.729858, 44.692566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499153, 34.397282, 45.334175>,  <36.473766, 34.416588, 44.591640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499153, 34.397282, 45.334175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.653828, 34.043137, 45.230938>,  <36.746632, 33.830650, 45.168995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.653828, 34.043137, 45.230938>,  <36.499153, 34.397282, 45.334175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653828, 34.043137, 45.230938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697034, 0.097340, 0.710400,
		-0.603837, -0.454602, 0.654765,
		0.386685, -0.885360, -0.258096,
		36.769833, 33.777527, 45.153511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626297, 34.025116, 46.038124>,  <36.499153, 34.397282, 45.334175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626297, 34.025116, 46.038124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.843143, 33.854530, 45.748508>,  <36.973251, 33.752178, 45.574738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.843143, 33.854530, 45.748508>,  <36.626297, 34.025116, 46.038124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843143, 33.854530, 45.748508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782577, -0.057624, 0.619881,
		-0.306080, -0.902667, 0.302503,
		0.542114, -0.426465, -0.724044,
		37.005779, 33.726589, 45.531296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017124, 33.522419, 46.311726>,  <36.626297, 34.025116, 46.038124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017124, 33.522419, 46.311726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.214413, 33.537815, 45.964108>,  <37.332787, 33.547054, 45.755535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.214413, 33.537815, 45.964108>,  <37.017124, 33.522419, 46.311726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214413, 33.537815, 45.964108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868740, 0.029824, 0.494370,
		0.044951, -0.998814, -0.018735,
		0.493224, 0.038498, -0.869050,
		37.362381, 33.549362, 45.703392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428288, 32.994122, 46.357384>,  <37.017124, 33.522419, 46.311726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428288, 32.994122, 46.357384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.604584, 33.254345, 46.109993>,  <37.710361, 33.410480, 45.961559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.604584, 33.254345, 46.109993>,  <37.428288, 32.994122, 46.357384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604584, 33.254345, 46.109993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800315, 0.027230, 0.598961,
		0.406503, -0.758964, -0.508654,
		0.440739, 0.650563, -0.618480,
		37.736805, 33.449512, 45.924450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226280, 32.796188, 46.240723>,  <37.428288, 32.994122, 46.357384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226280, 32.796188, 46.240723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.191730, 33.173763, 46.113277>,  <38.171001, 33.400311, 46.036808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.191730, 33.173763, 46.113277>,  <38.226280, 32.796188, 46.240723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191730, 33.173763, 46.113277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884674, 0.219741, 0.411175,
		0.458138, -0.246356, -0.854060,
		-0.086377, 0.943940, -0.318617,
		38.165817, 33.456944, 46.017693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826111, 32.959721, 45.755043>,  <38.226280, 32.796188, 46.240723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826111, 32.959721, 45.755043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.689171, 33.296253, 45.922352>,  <38.607006, 33.498173, 46.022736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.689171, 33.296253, 45.922352>,  <38.826111, 32.959721, 45.755043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689171, 33.296253, 45.922352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900574, 0.166914, 0.401380,
		0.267881, 0.514095, -0.814829,
		-0.342353, 0.841336, 0.418267,
		38.586464, 33.548653, 46.047832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359001, 33.539894, 45.713108>,  <38.826111, 32.959721, 45.755043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359001, 33.539894, 45.713108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.117191, 33.688721, 45.994850>,  <38.972103, 33.778019, 46.163895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.117191, 33.688721, 45.994850>,  <39.359001, 33.539894, 45.713108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117191, 33.688721, 45.994850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762015, 0.012453, 0.647440,
		0.232121, 0.928122, -0.291050,
		-0.604527, 0.372069, 0.704352,
		38.935833, 33.800343, 46.206154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724453, 34.072113, 45.996391>,  <39.359001, 33.539894, 45.713108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724453, 34.072113, 45.996391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.460915, 33.947811, 46.270432>,  <39.302792, 33.873230, 46.434856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.460915, 33.947811, 46.270432>,  <39.724453, 34.072113, 45.996391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460915, 33.947811, 46.270432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727972, -0.033732, 0.684777,
		-0.189686, 0.949892, 0.248443,
		-0.658845, -0.310752, 0.685096,
		39.263260, 33.854584, 46.475960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345745, 33.652771, 45.739811>,  <39.724453, 34.072113, 45.996391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345745, 33.652771, 45.739811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.674992, 33.426113, 45.724880>,  <40.872540, 33.290119, 45.715923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.674992, 33.426113, 45.724880>,  <40.345745, 33.652771, 45.739811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674992, 33.426113, 45.724880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501008, -0.693676, -0.517498,
		0.267348, 0.444661, -0.854870,
		0.823114, -0.566649, -0.037326,
		40.921925, 33.256119, 45.713684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307522, 33.291130, 45.107044>,  <40.345745, 33.652771, 45.739811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307522, 33.291130, 45.107044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.574505, 33.080990, 45.318138>,  <40.734695, 32.954906, 45.444794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.574505, 33.080990, 45.318138>,  <40.307522, 33.291130, 45.107044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574505, 33.080990, 45.318138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195450, -0.807455, -0.556611,
		0.718540, 0.268368, -0.641622,
		0.667457, -0.525352, 0.527736,
		40.774742, 32.923386, 45.476460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886063, 32.883678, 44.656956>,  <40.307522, 33.291130, 45.107044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886063, 32.883678, 44.656956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.814915, 32.674328, 44.990288>,  <40.772224, 32.548717, 45.190285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.814915, 32.674328, 44.990288>,  <40.886063, 32.883678, 44.656956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814915, 32.674328, 44.990288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218843, -0.804587, -0.552039,
		0.959411, -0.280559, 0.028574,
		-0.177870, -0.523380, 0.833328,
		40.761555, 32.517315, 45.240288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349709, 32.185783, 44.738522>,  <40.886063, 32.883678, 44.656956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349709, 32.185783, 44.738522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.988377, 32.147049, 44.905674>,  <40.771580, 32.123806, 45.005966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.988377, 32.147049, 44.905674>,  <41.349709, 32.185783, 44.738522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988377, 32.147049, 44.905674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167028, -0.817887, -0.550602,
		0.395097, -0.567172, 0.722644,
		-0.903327, -0.096839, 0.417879,
		40.717377, 32.117996, 45.031036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361748, 31.541422, 45.060032>,  <41.349709, 32.185783, 44.738522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361748, 31.541422, 45.060032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.971054, 31.614290, 45.014786>,  <40.736637, 31.658010, 44.987637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.971054, 31.614290, 45.014786>,  <41.361748, 31.541422, 45.060032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971054, 31.614290, 45.014786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117832, -0.896707, -0.426652,
		-0.179156, -0.403399, 0.897314,
		-0.976739, 0.182169, -0.113118,
		40.678032, 31.668941, 44.980850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955368, 31.000957, 45.510155>,  <41.361748, 31.541422, 45.060032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955368, 31.000957, 45.510155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.818600, 31.129808, 45.157036>,  <40.736538, 31.207119, 44.945164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.818600, 31.129808, 45.157036>,  <40.955368, 31.000957, 45.510155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818600, 31.129808, 45.157036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178648, -0.944563, -0.275471,
		-0.922591, 0.063520, 0.380514,
		-0.341921, 0.322125, -0.882794,
		40.716022, 31.226446, 44.892197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333183, 30.673374, 45.459259>,  <40.955368, 31.000957, 45.510155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333183, 30.673374, 45.459259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.424965, 30.799761, 45.091015>,  <40.480034, 30.875593, 44.870068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.424965, 30.799761, 45.091015>,  <40.333183, 30.673374, 45.459259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424965, 30.799761, 45.091015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201964, -0.909799, -0.362595,
		-0.952134, 0.269129, -0.144946,
		0.229456, 0.315965, -0.920606,
		40.493801, 30.894550, 44.814835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223373, 30.123363, 45.070591>,  <40.333183, 30.673374, 45.459259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223373, 30.123363, 45.070591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.403652, 30.354324, 44.798275>,  <40.511822, 30.492901, 44.634884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.403652, 30.354324, 44.798275>,  <40.223373, 30.123363, 45.070591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403652, 30.354324, 44.798275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015208, -0.767499, -0.640870,
		-0.892547, 0.278486, -0.354692,
		0.450699, 0.577400, -0.680793,
		40.538860, 30.527544, 44.594036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874298, 30.143082, 44.452766>,  <40.223373, 30.123363, 45.070591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874298, 30.143082, 44.452766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.258778, 30.192831, 44.354271>,  <40.489464, 30.222681, 44.295174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.258778, 30.192831, 44.354271>,  <39.874298, 30.143082, 44.452766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258778, 30.192831, 44.354271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053931, -0.790664, -0.609870,
		-0.270548, 0.599484, -0.753275,
		0.961195, 0.124374, -0.246243,
		40.547134, 30.230143, 44.280399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065773, 30.374329, 43.816376>,  <39.874298, 30.143082, 44.452766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065773, 30.374329, 43.816376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.351471, 30.114834, 43.921444>,  <40.522888, 29.959137, 43.984486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.351471, 30.114834, 43.921444>,  <40.065773, 30.374329, 43.816376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351471, 30.114834, 43.921444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135686, -0.496525, -0.857352,
		0.686617, 0.576719, -0.442665,
		0.714245, -0.648736, 0.262670,
		40.565746, 29.920214, 44.000244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345364, 30.753973, 43.452183>,  <40.065773, 30.374329, 43.816376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345364, 30.753973, 43.452183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.475864, 31.130774, 43.420715>,  <40.554165, 31.356853, 43.401833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.475864, 31.130774, 43.420715>,  <40.345364, 30.753973, 43.452183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475864, 31.130774, 43.420715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101248, -0.047923, -0.993706,
		-0.939844, 0.332167, 0.079741,
		0.326254, 0.942003, -0.078672,
		40.573742, 31.413374, 43.397114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779995, 31.077585, 43.151371>,  <40.345364, 30.753973, 43.452183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779995, 31.077585, 43.151371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.145847, 31.219900, 43.074570>,  <40.365360, 31.305288, 43.028488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.145847, 31.219900, 43.074570>,  <39.779995, 31.077585, 43.151371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145847, 31.219900, 43.074570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259881, 0.153602, -0.953346,
		-0.309697, 0.921858, 0.232952,
		0.914631, 0.355788, -0.192003,
		40.420238, 31.326637, 43.016968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663033, 31.733408, 42.876968>,  <39.779995, 31.077585, 43.151371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663033, 31.733408, 42.876968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.975807, 31.528387, 42.735062>,  <40.163471, 31.405375, 42.649918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.975807, 31.528387, 42.735062>,  <39.663033, 31.733408, 42.876968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975807, 31.528387, 42.735062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472133, -0.115367, -0.873946,
		0.407015, 0.850870, -0.332203,
		0.781939, -0.512553, -0.354768,
		40.210388, 31.374620, 42.628632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047359, 32.087772, 42.249428>,  <39.663033, 31.733408, 42.876968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047359, 32.087772, 42.249428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.103271, 31.691843, 42.238720>,  <40.136818, 31.454287, 42.232296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.103271, 31.691843, 42.238720>,  <40.047359, 32.087772, 42.249428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103271, 31.691843, 42.238720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264399, -0.011258, -0.964348,
		0.954230, 0.141875, -0.263281,
		0.139781, -0.989821, -0.026769,
		40.145206, 31.394897, 42.230690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591614, 31.907373, 41.674664>,  <40.047359, 32.087772, 42.249428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591614, 31.907373, 41.674664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.314304, 31.630089, 41.753487>,  <40.147919, 31.463718, 41.800781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.314304, 31.630089, 41.753487>,  <40.591614, 31.907373, 41.674664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314304, 31.630089, 41.753487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193621, -0.084223, -0.977455,
		0.694182, -0.715794, -0.075831,
		-0.693269, -0.693213, 0.197059,
		40.106323, 31.422125, 41.812603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228748, 32.198235, 41.641731>,  <40.591614, 31.907373, 41.674664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228748, 32.198235, 41.641731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.185570, 32.405659, 41.302452>,  <41.159664, 32.530113, 41.098885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.185570, 32.405659, 41.302452>,  <41.228748, 32.198235, 41.641731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185570, 32.405659, 41.302452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866125, -0.467884, -0.175817,
		-0.488031, 0.715671, 0.499641,
		-0.107947, 0.518556, -0.848202,
		41.153187, 32.561226, 41.047993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867863, 32.133186, 41.432152>,  <41.228748, 32.198235, 41.641731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867863, 32.133186, 41.432152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.856621, 32.397110, 41.131786>,  <41.849876, 32.555462, 40.951569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.856621, 32.397110, 41.131786>,  <41.867863, 32.133186, 41.432152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856621, 32.397110, 41.131786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942639, -0.232482, -0.239552,
		-0.332630, -0.714569, -0.615425,
		-0.028101, 0.659806, -0.750911,
		41.848190, 32.595051, 40.906513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990871, 31.836653, 40.822620>,  <41.867863, 32.133186, 41.432152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990871, 31.836653, 40.822620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.113777, 32.216034, 40.853657>,  <42.187523, 32.443665, 40.872276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.113777, 32.216034, 40.853657>,  <41.990871, 31.836653, 40.822620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113777, 32.216034, 40.853657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942140, -0.291709, -0.165160,
		-0.134013, 0.123848, -0.983210,
		0.307266, 0.948455, 0.077589,
		42.205956, 32.500572, 40.876934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685707, 31.714041, 40.524086>,  <41.990871, 31.836653, 40.822620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685707, 31.714041, 40.524086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.675190, 32.084393, 40.674847>,  <42.668880, 32.306602, 40.765301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.675190, 32.084393, 40.674847>,  <42.685707, 31.714041, 40.524086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675190, 32.084393, 40.674847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994287, 0.063240, -0.085985,
		-0.103447, 0.372486, -0.922254,
		-0.026295, 0.925881, 0.376900,
		42.667301, 32.362156, 40.787918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119839, 32.254227, 40.216209>,  <42.685707, 31.714041, 40.524086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119839, 32.254227, 40.216209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.108276, 32.360283, 40.601719>,  <43.101337, 32.423916, 40.833027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.108276, 32.360283, 40.601719>,  <43.119839, 32.254227, 40.216209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108276, 32.360283, 40.601719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972101, 0.231987, -0.034662,
		-0.232774, 0.935886, -0.264450,
		-0.028909, 0.265141, 0.963776,
		43.099602, 32.439827, 40.890850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276054, 33.019623, 40.309814>,  <43.119839, 32.254227, 40.216209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.276054, 33.019623, 40.309814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.395863, 32.751163, 40.581062>,  <43.467747, 32.590088, 40.743813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.395863, 32.751163, 40.581062>,  <43.276054, 33.019623, 40.309814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395863, 32.751163, 40.581062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953810, 0.227795, -0.195844,
		-0.023033, 0.705458, 0.708377,
		0.299525, -0.671147, 0.678120,
		43.485722, 32.549820, 40.784500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588783, 33.417553, 40.985306>,  <43.276054, 33.019623, 40.309814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.588783, 33.417553, 40.985306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.735092, 33.088734, 40.810745>,  <43.822880, 32.891441, 40.706009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.735092, 33.088734, 40.810745>,  <43.588783, 33.417553, 40.985306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735092, 33.088734, 40.810745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887422, 0.449375, -0.102681,
		0.280518, -0.349718, 0.893872,
		0.365774, -0.822046, -0.436406,
		43.844826, 32.842121, 40.679825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227047, 33.374722, 41.185822>,  <43.588783, 33.417553, 40.985306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227047, 33.374722, 41.185822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.174690, 33.206371, 40.826771>,  <44.143276, 33.105362, 40.611340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.174690, 33.206371, 40.826771>,  <44.227047, 33.374722, 41.185822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174690, 33.206371, 40.826771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840890, 0.432462, -0.325393,
		0.525139, -0.797396, 0.297303,
		-0.130895, -0.420876, -0.897625,
		44.135422, 33.080109, 40.557484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.789207, 32.946072, 40.913067>,  <44.227047, 33.374722, 41.185822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.789207, 32.946072, 40.913067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.608269, 33.129547, 40.607128>,  <44.499706, 33.239632, 40.423565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.608269, 33.129547, 40.607128>,  <44.789207, 32.946072, 40.913067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.608269, 33.129547, 40.607128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884341, 0.341690, -0.318102,
		0.115429, -0.820275, -0.560201,
		-0.452346, 0.458690, -0.764844,
		44.472565, 33.267155, 40.377674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148659, 32.685272, 40.265720>,  <44.789207, 32.946072, 40.913067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.148659, 32.685272, 40.265720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.959740, 33.034546, 40.217587>,  <44.846390, 33.244110, 40.188705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.959740, 33.034546, 40.217587>,  <45.148659, 32.685272, 40.265720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959740, 33.034546, 40.217587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825386, 0.390209, -0.408014,
		-0.309317, -0.292024, -0.905011,
		-0.472293, 0.873189, -0.120334,
		44.818050, 33.296501, 40.181488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.211105, 32.890915, 39.534130>,  <45.148659, 32.685272, 40.265720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.211105, 32.890915, 39.534130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.171429, 33.203831, 39.780117>,  <45.147625, 33.391582, 39.927708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.171429, 33.203831, 39.780117>,  <45.211105, 32.890915, 39.534130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171429, 33.203831, 39.780117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865549, 0.372717, -0.334524,
		-0.490903, 0.499102, -0.714081,
		-0.099188, 0.782291, 0.614965,
		45.141674, 33.438519, 39.964607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.375458, 33.448944, 39.119850>,  <45.211105, 32.890915, 39.534130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.375458, 33.448944, 39.119850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.440048, 33.500469, 39.511223>,  <45.478802, 33.531384, 39.746048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.440048, 33.500469, 39.511223>,  <45.375458, 33.448944, 39.119850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.440048, 33.500469, 39.511223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926377, 0.322012, -0.195279,
		-0.340222, 0.937931, -0.067336,
		0.161476, 0.128816, 0.978433,
		45.488491, 33.539116, 39.804752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503246, 34.231358, 39.342640>,  <45.375458, 33.448944, 39.119850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503246, 34.231358, 39.342640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.696808, 33.911194, 39.484169>,  <45.812946, 33.719097, 39.569084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.696808, 33.911194, 39.484169>,  <45.503246, 34.231358, 39.342640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.696808, 33.911194, 39.484169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867712, 0.386338, -0.312761,
		0.113642, 0.458358, 0.881472,
		0.483902, -0.800407, 0.353819,
		45.841980, 33.671070, 39.590313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.120018, 34.407478, 39.017864>,  <45.503246, 34.231358, 39.342640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.120018, 34.407478, 39.017864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.205509, 34.092342, 39.248905>,  <46.256805, 33.903259, 39.387531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.205509, 34.092342, 39.248905>,  <46.120018, 34.407478, 39.017864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.205509, 34.092342, 39.248905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962825, 0.069908, -0.260922,
		0.165186, 0.611896, 0.773496,
		0.213731, -0.787842, 0.577602,
		46.269627, 33.855991, 39.422184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.650444, 34.557858, 39.496826>,  <46.120018, 34.407478, 39.017864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.650444, 34.557858, 39.496826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.659660, 34.178471, 39.370411>,  <46.665192, 33.950840, 39.294563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.659660, 34.178471, 39.370411>,  <46.650444, 34.557858, 39.496826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.659660, 34.178471, 39.370411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882956, 0.167574, -0.438528,
		0.468889, -0.268940, 0.841317,
		0.023045, -0.948467, -0.316036,
		46.666573, 33.893929, 39.275600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.274757, 34.272038, 39.617325>,  <46.650444, 34.557858, 39.496826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.274757, 34.272038, 39.617325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.125851, 34.045647, 39.323090>,  <47.036507, 33.909813, 39.146549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.125851, 34.045647, 39.323090>,  <47.274757, 34.272038, 39.617325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.125851, 34.045647, 39.323090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822813, 0.165434, -0.543700,
		0.429411, -0.807655, 0.404104,
		-0.372270, -0.565973, -0.735588,
		47.014168, 33.875854, 39.102413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.882164, 33.856224, 39.580673>,  <47.274757, 34.272038, 39.617325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.882164, 33.856224, 39.580673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.656239, 33.868855, 39.250828>,  <47.520683, 33.876431, 39.052921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.656239, 33.868855, 39.250828>,  <47.882164, 33.856224, 39.580673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.656239, 33.868855, 39.250828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819898, 0.134787, -0.556416,
		0.093579, -0.990371, -0.102017,
		-0.564809, 0.031575, -0.824617,
		47.486797, 33.878326, 39.003441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.209663, 33.502319, 39.081619>,  <47.882164, 33.856224, 39.580673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.209663, 33.502319, 39.081619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.946163, 33.714630, 38.868328>,  <47.788063, 33.842018, 38.740353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.946163, 33.714630, 38.868328>,  <48.209663, 33.502319, 39.081619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.946163, 33.714630, 38.868328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708917, 0.200535, -0.676182,
		-0.251972, -0.823444, -0.508379,
		-0.658746, 0.530778, -0.533225,
		47.748539, 33.873863, 38.708363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.255398, 33.143902, 38.495522>,  <48.209663, 33.502319, 39.081619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.255398, 33.143902, 38.495522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.152699, 33.529469, 38.467388>,  <48.091080, 33.760807, 38.450508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.152699, 33.529469, 38.467388>,  <48.255398, 33.143902, 38.495522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.152699, 33.529469, 38.467388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631446, 0.112205, -0.767258,
		-0.731680, -0.241406, -0.637469,
		-0.256748, 0.963916, -0.070337,
		48.075676, 33.818642, 38.446289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.896767, 33.389828, 37.845081>,  <48.255398, 33.143902, 38.495522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.896767, 33.389828, 37.845081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.088833, 33.699100, 38.010796>,  <48.204075, 33.884663, 38.110226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.088833, 33.699100, 38.010796>,  <47.896767, 33.389828, 37.845081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.088833, 33.699100, 38.010796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751625, -0.119174, -0.648735,
		-0.452216, 0.622890, -0.638364,
		0.480167, 0.773179, 0.414288,
		48.232883, 33.931053, 38.135082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.264133, 33.639011, 37.317516>,  <47.896767, 33.389828, 37.845081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.264133, 33.639011, 37.317516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.445190, 33.672733, 37.672596>,  <48.553825, 33.692966, 37.885643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.445190, 33.672733, 37.672596>,  <48.264133, 33.639011, 37.317516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.445190, 33.672733, 37.672596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889128, 0.032807, -0.456482,
		-0.067607, 0.995900, -0.060109,
		0.452638, 0.084306, 0.887700,
		48.580982, 33.698025, 37.938908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.873219, 33.604874, 36.716194>,  <48.264133, 33.639011, 37.317516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.873219, 33.604874, 36.716194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.125996, 33.502697, 36.423508>,  <48.277660, 33.441391, 36.247898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.125996, 33.502697, 36.423508>,  <47.873219, 33.604874, 36.716194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.125996, 33.502697, 36.423508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122390, 0.899386, -0.419673,
		0.765292, 0.354763, 0.537095,
		0.631940, -0.255438, -0.731713,
		48.315578, 33.426067, 36.203995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.320621, 34.159870, 36.661640>,  <47.873219, 33.604874, 36.716194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.320621, 34.159870, 36.661640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.296215, 33.977482, 36.306480>,  <48.281570, 33.868050, 36.093384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.296215, 33.977482, 36.306480>,  <48.320621, 34.159870, 36.661640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.296215, 33.977482, 36.306480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040412, 0.887700, -0.458645,
		0.997318, -0.063868, -0.035740,
		-0.061019, -0.455971, -0.887900,
		48.277908, 33.840691, 36.040112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.652222, 34.636696, 36.189823>,  <48.320621, 34.159870, 36.661640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.652222, 34.636696, 36.189823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.415215, 34.409233, 35.961594>,  <48.273010, 34.272755, 35.824657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.415215, 34.409233, 35.961594>,  <48.652222, 34.636696, 36.189823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.415215, 34.409233, 35.961594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122758, 0.763762, -0.633718,
		0.796148, -0.305448, -0.522350,
		-0.592519, -0.568656, -0.570571,
		48.237461, 34.238636, 35.790421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.781269, 34.466412, 35.465340>,  <48.652222, 34.636696, 36.189823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.781269, 34.466412, 35.465340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.384441, 34.473190, 35.515167>,  <48.146347, 34.477257, 35.545063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.384441, 34.473190, 35.515167>,  <48.781269, 34.466412, 35.465340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.384441, 34.473190, 35.515167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073323, 0.726893, -0.682825,
		-0.102124, -0.686541, -0.719883,
		-0.992066, 0.016949, 0.124573,
		48.086823, 34.478275, 35.552540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.355377, 34.428761, 34.741741>,  <48.781269, 34.466412, 35.465340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.355377, 34.428761, 34.741741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.182602, 34.606514, 35.055672>,  <48.078938, 34.713165, 35.244030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.182602, 34.606514, 35.055672>,  <48.355377, 34.428761, 34.741741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.182602, 34.606514, 35.055672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229142, 0.787563, -0.572048,
		-0.872309, -0.426925, -0.238350,
		-0.431938, 0.444386, 0.784825,
		48.053020, 34.739830, 35.291119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.040741, 34.892551, 34.408859>,  <48.355377, 34.428761, 34.741741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.040741, 34.892551, 34.408859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.945461, 34.975204, 34.788452>,  <47.888294, 35.024796, 35.016209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.945461, 34.975204, 34.788452>,  <48.040741, 34.892551, 34.408859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.945461, 34.975204, 34.788452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445210, 0.845164, -0.295779,
		-0.863161, -0.492951, -0.109327,
		-0.238204, 0.206632, 0.948979,
		47.874001, 35.037193, 35.073147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.825224, 31.564474, 53.344639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.110453, 31.391630, 53.565479>,  <31.281590, 31.287924, 53.697983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.110453, 31.391630, 53.565479>,  <30.825224, 31.564474, 53.344639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110453, 31.391630, 53.565479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486558, -0.261963, -0.833449,
		0.504769, 0.862936, 0.023447,
		0.713070, -0.432108, 0.552099,
		31.324373, 31.261997, 53.731110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501543, 31.746462, 53.110428>,  <30.825224, 31.564474, 53.344639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501543, 31.746462, 53.110428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.603695, 31.420700, 53.318863>,  <31.664986, 31.225243, 53.443924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.603695, 31.420700, 53.318863>,  <31.501543, 31.746462, 53.110428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603695, 31.420700, 53.318863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613455, -0.280085, -0.738394,
		0.747299, 0.508230, 0.428072,
		0.255377, -0.814404, 0.521084,
		31.680307, 31.176378, 53.475189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225739, 31.661016, 53.044022>,  <31.501543, 31.746462, 53.110428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225739, 31.661016, 53.044022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.119633, 31.285023, 53.129868>,  <32.055969, 31.059427, 53.181377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.119633, 31.285023, 53.129868>,  <32.225739, 31.661016, 53.044022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119633, 31.285023, 53.129868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710178, -0.341040, -0.615905,
		0.652134, -0.010963, 0.758024,
		-0.265269, -0.939985, 0.214618,
		32.040051, 31.003027, 53.194252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793377, 31.348318, 53.051682>,  <32.225739, 31.661016, 53.044022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793377, 31.348318, 53.051682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.564430, 31.022989, 53.009918>,  <32.427063, 30.827791, 52.984859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.564430, 31.022989, 53.009918>,  <32.793377, 31.348318, 53.051682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564430, 31.022989, 53.009918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659995, -0.381376, -0.647271,
		0.486622, -0.439385, 0.755076,
		-0.572368, -0.813323, -0.104406,
		32.392719, 30.778992, 52.978596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161091, 30.824591, 53.211044>,  <32.793377, 31.348318, 53.051682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161091, 30.824591, 53.211044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.863518, 30.648798, 53.009686>,  <32.684975, 30.543322, 52.888870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.863518, 30.648798, 53.009686>,  <33.161091, 30.824591, 53.211044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863518, 30.648798, 53.009686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652604, -0.315753, -0.688773,
		0.143754, -0.840925, 0.521709,
		-0.743937, -0.439483, -0.503401,
		32.640335, 30.516953, 52.858665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530281, 30.306124, 52.928860>,  <33.161091, 30.824591, 53.211044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530281, 30.306124, 52.928860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.194958, 30.326921, 52.711777>,  <32.993763, 30.339399, 52.581528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.194958, 30.326921, 52.711777>,  <33.530281, 30.306124, 52.928860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194958, 30.326921, 52.711777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532416, -0.136142, -0.835463,
		-0.117318, -0.989325, 0.086451,
		-0.838314, 0.051987, -0.542704,
		32.943462, 30.342520, 52.548965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620434, 29.755554, 52.544022>,  <33.530281, 30.306124, 52.928860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620434, 29.755554, 52.544022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.388760, 30.036499, 52.378502>,  <33.249756, 30.205067, 52.279190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.388760, 30.036499, 52.378502>,  <33.620434, 29.755554, 52.544022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388760, 30.036499, 52.378502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577020, -0.005348, -0.816712,
		-0.575842, -0.711798, -0.402181,
		-0.579183, 0.702364, -0.413801,
		33.215004, 30.247208, 52.254360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470470, 29.443705, 51.893841>,  <33.620434, 29.755554, 52.544022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470470, 29.443705, 51.893841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.426727, 29.840675, 51.871475>,  <33.400482, 30.078857, 51.858055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.426727, 29.840675, 51.871475>,  <33.470470, 29.443705, 51.893841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426727, 29.840675, 51.871475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279085, -0.023334, -0.959983,
		-0.954019, -0.120587, -0.274420,
		-0.109358, 0.992429, -0.055915,
		33.393921, 30.138405, 51.854702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348885, 29.501047, 51.253780>,  <33.470470, 29.443705, 51.893841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348885, 29.501047, 51.253780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.447800, 29.872337, 51.364952>,  <33.507149, 30.095112, 51.431656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.447800, 29.872337, 51.364952>,  <33.348885, 29.501047, 51.253780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447800, 29.872337, 51.364952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353693, 0.180573, -0.917766,
		-0.902080, 0.325259, -0.283653,
		0.247291, 0.928224, 0.277933,
		33.521988, 30.150805, 51.448334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131104, 29.898550, 50.655224>,  <33.348885, 29.501047, 51.253780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131104, 29.898550, 50.655224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.392361, 30.132980, 50.847027>,  <33.549114, 30.273638, 50.962109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.392361, 30.132980, 50.847027>,  <33.131104, 29.898550, 50.655224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392361, 30.132980, 50.847027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305954, 0.374999, -0.875082,
		-0.692678, 0.718257, 0.065615,
		0.653139, 0.586074, 0.479507,
		33.588303, 30.308804, 50.990879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042431, 30.576450, 50.370522>,  <33.131104, 29.898550, 50.655224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042431, 30.576450, 50.370522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.408096, 30.553738, 50.531063>,  <33.627495, 30.540110, 50.627388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.408096, 30.553738, 50.531063>,  <33.042431, 30.576450, 50.370522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408096, 30.553738, 50.531063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388132, 0.408160, -0.826292,
		-0.116900, 0.911143, 0.395162,
		0.914160, -0.056781, 0.401358,
		33.682343, 30.536703, 50.651470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283073, 31.239294, 50.324986>,  <33.042431, 30.576450, 50.370522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283073, 31.239294, 50.324986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.602898, 31.009157, 50.393906>,  <33.794792, 30.871075, 50.435257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.602898, 31.009157, 50.393906>,  <33.283073, 31.239294, 50.324986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602898, 31.009157, 50.393906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476418, 0.432917, -0.765251,
		0.365690, 0.693950, 0.620246,
		0.799561, -0.575341, 0.172296,
		33.842766, 30.836555, 50.445595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801182, 31.727070, 50.466637>,  <33.283073, 31.239294, 50.324986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801182, 31.727070, 50.466637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.949200, 31.384663, 50.322250>,  <34.038010, 31.179218, 50.235619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.949200, 31.384663, 50.322250>,  <33.801182, 31.727070, 50.466637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949200, 31.384663, 50.322250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478463, 0.508666, -0.715774,
		0.796327, 0.092161, 0.597803,
		0.370048, -0.856017, -0.360969,
		34.060215, 31.127857, 50.213959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305435, 31.923712, 49.997852>,  <33.801182, 31.727070, 50.466637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305435, 31.923712, 49.997852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.318821, 31.544058, 49.872620>,  <34.326851, 31.316265, 49.797478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.318821, 31.544058, 49.872620>,  <34.305435, 31.923712, 49.997852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318821, 31.544058, 49.872620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362267, 0.303478, -0.881285,
		0.931473, -0.083929, 0.353996,
		0.033465, -0.949135, -0.313086,
		34.328861, 31.259317, 49.778694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861588, 31.986698, 49.617455>,  <34.305435, 31.923712, 49.997852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861588, 31.986698, 49.617455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.654293, 31.659937, 49.516186>,  <34.529915, 31.463881, 49.455425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.654293, 31.659937, 49.516186>,  <34.861588, 31.986698, 49.617455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654293, 31.659937, 49.516186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326338, 0.084747, -0.941447,
		0.790526, -0.570516, 0.222667,
		-0.518240, -0.816903, -0.253176,
		34.498821, 31.414865, 49.440231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309597, 31.622084, 49.191196>,  <34.861588, 31.986698, 49.617455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309597, 31.622084, 49.191196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.947975, 31.470512, 49.112106>,  <34.731003, 31.379570, 49.064651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.947975, 31.470512, 49.112106>,  <35.309597, 31.622084, 49.191196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947975, 31.470512, 49.112106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248136, -0.088649, -0.964660,
		0.348009, -0.921170, 0.174169,
		-0.904057, -0.378929, -0.197725,
		34.676758, 31.356834, 49.052788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508205, 31.105494, 48.730362>,  <35.309597, 31.622084, 49.191196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508205, 31.105494, 48.730362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.117825, 31.174364, 48.676888>,  <34.883595, 31.215687, 48.644802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.117825, 31.174364, 48.676888>,  <35.508205, 31.105494, 48.730362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117825, 31.174364, 48.676888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098013, -0.201173, -0.974640,
		-0.194673, -0.964311, 0.179464,
		-0.975959, 0.172146, -0.133678,
		34.825039, 31.226017, 48.636784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304504, 30.562508, 48.378288>,  <35.508205, 31.105494, 48.730362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304504, 30.562508, 48.378288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.041180, 30.852493, 48.297241>,  <34.883186, 31.026485, 48.248615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.041180, 30.852493, 48.297241>,  <35.304504, 30.562508, 48.378288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041180, 30.852493, 48.297241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016158, -0.282713, -0.959068,
		-0.752574, -0.628090, 0.197826,
		-0.658309, 0.724967, -0.202614,
		34.843685, 31.069983, 48.236458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841122, 30.214844, 48.059074>,  <35.304504, 30.562508, 48.378288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841122, 30.214844, 48.059074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.782219, 30.593683, 47.945007>,  <34.746876, 30.820988, 47.876568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.782219, 30.593683, 47.945007>,  <34.841122, 30.214844, 48.059074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782219, 30.593683, 47.945007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011688, -0.289954, -0.956969,
		-0.989029, -0.137591, 0.053768,
		-0.147261, 0.947098, -0.285165,
		34.738041, 30.877813, 47.859459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357006, 30.204762, 47.597954>,  <34.841122, 30.214844, 48.059074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357006, 30.204762, 47.597954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.532745, 30.557503, 47.529472>,  <34.638187, 30.769148, 47.488384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.532745, 30.557503, 47.529472>,  <34.357006, 30.204762, 47.597954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532745, 30.557503, 47.529472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108239, -0.241158, -0.964431,
		-0.891773, 0.405189, -0.201403,
		0.439347, 0.881853, -0.171201,
		34.664551, 30.822060, 47.478111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246040, 30.295919, 46.916870>,  <34.357006, 30.204762, 47.597954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246040, 30.295919, 46.916870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.517307, 30.585365, 46.968216>,  <34.680065, 30.759033, 46.999023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.517307, 30.585365, 46.968216>,  <34.246040, 30.295919, 46.916870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517307, 30.585365, 46.968216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296400, -0.109483, -0.948768,
		-0.672489, 0.681466, -0.288727,
		0.678164, 0.723614, 0.128361,
		34.720757, 30.802450, 47.006725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152950, 30.797508, 46.336243>,  <34.246040, 30.295919, 46.916870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152950, 30.797508, 46.336243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.530804, 30.786592, 46.467041>,  <34.757515, 30.780043, 46.545521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.530804, 30.786592, 46.467041>,  <34.152950, 30.797508, 46.336243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530804, 30.786592, 46.467041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298696, -0.341020, -0.891339,
		0.135835, 0.939660, -0.313988,
		0.944632, -0.027288, 0.326995,
		34.814194, 30.778406, 46.565140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791603, 31.202246, 45.717510>,  <34.152950, 30.797508, 46.336243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791603, 31.202246, 45.717510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.521790, 31.461319, 45.575798>,  <33.359901, 31.616764, 45.490772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.521790, 31.461319, 45.575798>,  <33.791603, 31.202246, 45.717510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521790, 31.461319, 45.575798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476271, -0.015109, 0.879169,
		0.564071, 0.761759, 0.318665,
		-0.674529, 0.647684, -0.354281,
		33.319431, 31.655624, 45.469513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652287, 31.732605, 46.224678>,  <33.791603, 31.202246, 45.717510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652287, 31.732605, 46.224678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.331608, 31.731222, 45.985588>,  <33.139202, 31.730392, 45.842136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.331608, 31.731222, 45.985588>,  <33.652287, 31.732605, 46.224678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331608, 31.731222, 45.985588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596035, -0.070675, 0.799842,
		-0.045007, 0.997493, 0.054600,
		-0.801696, -0.003455, -0.597722,
		33.091099, 31.730186, 45.806271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186897, 32.245659, 46.438168>,  <33.652287, 31.732605, 46.224678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186897, 32.245659, 46.438168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.967796, 31.978348, 46.236824>,  <32.836334, 31.817961, 46.116016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.967796, 31.978348, 46.236824>,  <33.186897, 32.245659, 46.438168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967796, 31.978348, 46.236824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685842, 0.014098, 0.727614,
		-0.479153, 0.743777, -0.466056,
		-0.547754, -0.668279, -0.503358,
		32.803471, 31.777864, 46.085815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609661, 32.307800, 46.836384>,  <33.186897, 32.245659, 46.438168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609661, 32.307800, 46.836384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.531746, 32.002819, 46.589569>,  <32.484997, 31.819832, 46.441483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.531746, 32.002819, 46.589569>,  <32.609661, 32.307800, 46.836384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531746, 32.002819, 46.589569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834478, -0.201782, 0.512768,
		-0.515465, 0.614782, -0.596941,
		-0.194788, -0.762448, -0.617033,
		32.473309, 31.774084, 46.404461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891504, 32.355755, 46.619606>,  <32.609661, 32.307800, 46.836384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891504, 32.355755, 46.619606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.033707, 31.984278, 46.577358>,  <32.119026, 31.761393, 46.552010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.033707, 31.984278, 46.577358>,  <31.891504, 32.355755, 46.619606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033707, 31.984278, 46.577358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809055, -0.362336, 0.462755,
		-0.468024, -0.079060, -0.880172,
		0.355504, -0.928689, -0.105618,
		32.140358, 31.705671, 46.545673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273230, 31.985664, 46.282635>,  <31.891504, 32.355755, 46.619606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273230, 31.985664, 46.282635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.536137, 31.763941, 46.486885>,  <31.693880, 31.630907, 46.609436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.536137, 31.763941, 46.486885>,  <31.273230, 31.985664, 46.282635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536137, 31.763941, 46.486885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741888, -0.356592, 0.567842,
		-0.132674, -0.752053, -0.645612,
		0.657267, -0.554309, 0.510628,
		31.733316, 31.597649, 46.640072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868862, 31.422405, 46.555168>,  <31.273230, 31.985664, 46.282635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868862, 31.422405, 46.555168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.202353, 31.402342, 46.775127>,  <31.402447, 31.390303, 46.907104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.202353, 31.402342, 46.775127>,  <30.868862, 31.422405, 46.555168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202353, 31.402342, 46.775127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537887, -0.298887, 0.788253,
		0.124819, -0.952969, -0.276170,
		0.833725, -0.050159, 0.549897,
		31.452471, 31.387293, 46.940098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868593, 30.749979, 46.900768>,  <30.868862, 31.422405, 46.555168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868593, 30.749979, 46.900768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.100214, 31.008677, 47.099331>,  <31.239187, 31.163895, 47.218468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.100214, 31.008677, 47.099331>,  <30.868593, 30.749979, 46.900768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100214, 31.008677, 47.099331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483201, -0.218169, 0.847891,
		0.656669, -0.730839, 0.186175,
		0.579054, 0.646744, 0.496407,
		31.273930, 31.202700, 47.248253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838808, 30.577705, 47.698956>,  <30.868593, 30.749979, 46.900768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838808, 30.577705, 47.698956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.047325, 30.918921, 47.689350>,  <31.172436, 31.123650, 47.683586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.047325, 30.918921, 47.689350>,  <30.838808, 30.577705, 47.698956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047325, 30.918921, 47.689350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129012, 0.106589, 0.985898,
		0.843569, -0.510845, 0.165617,
		0.521294, 0.853039, -0.024010,
		31.203714, 31.174831, 47.682148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407101, 30.502935, 48.242577>,  <30.838808, 30.577705, 47.698956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407101, 30.502935, 48.242577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.382746, 30.900326, 48.204002>,  <31.368134, 31.138760, 48.180859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.382746, 30.900326, 48.204002>,  <31.407101, 30.502935, 48.242577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382746, 30.900326, 48.204002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071422, 0.092032, 0.993191,
		0.995586, 0.067359, 0.065352,
		-0.060886, 0.993475, -0.096437,
		31.364481, 31.198368, 48.175072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891050, 30.910593, 48.847622>,  <31.407101, 30.502935, 48.242577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891050, 30.910593, 48.847622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.594517, 31.150803, 48.727760>,  <31.416595, 31.294928, 48.655842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.594517, 31.150803, 48.727760>,  <31.891050, 30.910593, 48.847622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594517, 31.150803, 48.727760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203543, 0.224282, 0.953031,
		0.639524, 0.767509, -0.044036,
		-0.741336, 0.600523, -0.299655,
		31.372116, 31.330959, 48.637863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011486, 31.450817, 49.201443>,  <31.891050, 30.910593, 48.847622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011486, 31.450817, 49.201443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.626560, 31.455086, 49.092747>,  <31.395605, 31.457647, 49.027531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.626560, 31.455086, 49.092747>,  <32.011486, 31.450817, 49.201443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626560, 31.455086, 49.092747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266786, 0.156729, 0.950927,
		0.052739, 0.987584, -0.147975,
		-0.962312, 0.010674, -0.271739,
		31.337866, 31.458288, 49.011227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605940, 32.115280, 49.501083>,  <32.011486, 31.450817, 49.201443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605940, 32.115280, 49.501083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.374680, 31.796419, 49.431465>,  <31.235924, 31.605103, 49.389694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.374680, 31.796419, 49.431465>,  <31.605940, 32.115280, 49.501083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374680, 31.796419, 49.431465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441889, 0.126584, 0.888093,
		-0.685913, 0.590361, -0.425437,
		-0.578150, -0.797151, -0.174049,
		31.201235, 31.557274, 49.379250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066416, 32.394962, 49.770210>,  <31.605940, 32.115280, 49.501083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066416, 32.394962, 49.770210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.028326, 32.001236, 49.710796>,  <31.005472, 31.765001, 49.675148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.028326, 32.001236, 49.710796>,  <31.066416, 32.394962, 49.770210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028326, 32.001236, 49.710796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510480, -0.079813, 0.856177,
		-0.854600, 0.157355, -0.494871,
		-0.095227, -0.984312, -0.148535,
		30.999758, 31.705942, 49.666237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307669, 32.333637, 49.820061>,  <31.066416, 32.394962, 49.770210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307669, 32.333637, 49.820061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.500538, 31.990709, 49.892193>,  <30.616259, 31.784954, 49.935471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.500538, 31.990709, 49.892193>,  <30.307669, 32.333637, 49.820061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500538, 31.990709, 49.892193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450963, -0.066414, 0.890068,
		-0.751094, -0.510487, -0.418641,
		0.482172, -0.857317, 0.180328,
		30.645189, 31.733515, 49.946293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767864, 31.986122, 50.033485>,  <30.307669, 32.333637, 49.820061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767864, 31.986122, 50.033485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.099842, 31.810743, 50.171444>,  <30.299028, 31.705517, 50.254219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.099842, 31.810743, 50.171444>,  <29.767864, 31.986122, 50.033485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099842, 31.810743, 50.171444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462707, -0.195717, 0.864637,
		-0.311597, -0.877187, -0.365308,
		0.829945, -0.438449, 0.344896,
		30.348825, 31.679209, 50.274914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596249, 31.285952, 50.278980>,  <29.767864, 31.986122, 50.033485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596249, 31.285952, 50.278980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.934147, 31.393799, 50.463898>,  <30.136885, 31.458508, 50.574848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.934147, 31.393799, 50.463898>,  <29.596249, 31.285952, 50.278980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934147, 31.393799, 50.463898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450809, -0.107030, 0.886180,
		0.288408, -0.957001, 0.031132,
		0.844744, 0.269616, 0.462293,
		30.187571, 31.474684, 50.602585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466808, 30.961138, 50.951866>,  <29.596249, 31.285952, 50.278980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466808, 30.961138, 50.951866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.805037, 31.170795, 50.992432>,  <30.007973, 31.296591, 51.016769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.805037, 31.170795, 50.992432>,  <29.466808, 30.961138, 50.951866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805037, 31.170795, 50.992432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109318, -0.015947, 0.993879,
		0.522555, -0.851479, 0.043814,
		0.845568, 0.524145, 0.101415,
		30.058708, 31.328039, 51.022858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.950888, 30.627186, 51.569794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997971, 31.020082, 51.511353>,  <30.026220, 31.255821, 51.476288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997971, 31.020082, 51.511353>,  <29.950888, 30.627186, 51.569794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997971, 31.020082, 51.511353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422926, 0.182700, 0.887555,
		0.898486, -0.042683, 0.436921,
		0.117709, 0.982242, -0.146101,
		30.033283, 31.314754, 51.467522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270781, 30.802546, 52.132389>,  <29.950888, 30.627186, 51.569794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270781, 30.802546, 52.132389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121374, 31.137087, 51.971893>,  <30.031731, 31.337812, 51.875595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121374, 31.137087, 51.971893>,  <30.270781, 30.802546, 52.132389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121374, 31.137087, 51.971893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481227, 0.195087, 0.854612,
		0.793037, 0.512300, 0.329608,
		-0.373516, 0.836355, -0.401243,
		30.009319, 31.387993, 51.851521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391888, 31.358131, 52.647408>,  <30.270781, 30.802546, 52.132389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391888, 31.358131, 52.647408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129908, 31.521132, 52.392857>,  <29.972719, 31.618933, 52.240124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129908, 31.521132, 52.392857>,  <30.391888, 31.358131, 52.647408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129908, 31.521132, 52.392857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485588, 0.418300, 0.767613,
		0.579002, 0.811768, -0.076088,
		-0.654951, 0.407502, -0.636382,
		29.933422, 31.643381, 52.201942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268118, 32.121590, 52.814648>,  <30.391888, 31.358131, 52.647408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268118, 32.121590, 52.814648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929270, 31.989922, 52.647778>,  <29.725960, 31.910921, 52.547657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929270, 31.989922, 52.647778>,  <30.268118, 32.121590, 52.814648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929270, 31.989922, 52.647778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521932, 0.367876, 0.769580,
		-0.099854, 0.869664, -0.483440,
		-0.847122, -0.329168, -0.417172,
		29.675133, 31.891171, 52.522625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863005, 32.603218, 52.909985>,  <30.268118, 32.121590, 52.814648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863005, 32.603218, 52.909985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595789, 32.322994, 52.809631>,  <29.435459, 32.154861, 52.749420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595789, 32.322994, 52.809631>,  <29.863005, 32.603218, 52.909985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595789, 32.322994, 52.809631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627149, 0.348599, 0.696536,
		-0.400505, 0.622656, -0.672232,
		-0.668041, -0.700556, -0.250883,
		29.395376, 32.112827, 52.734367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104042, 32.898064, 52.953571>,  <29.863005, 32.603218, 52.909985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104042, 32.898064, 52.953571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084795, 32.504295, 53.021214>,  <29.073246, 32.268032, 53.061798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084795, 32.504295, 53.021214>,  <29.104042, 32.898064, 52.953571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084795, 32.504295, 53.021214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600492, 0.163801, 0.782674,
		-0.798182, -0.063886, -0.599020,
		-0.048119, -0.984422, 0.169106,
		29.070360, 32.208969, 53.071945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401842, 32.818207, 53.095772>,  <29.104042, 32.898064, 52.953571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401842, 32.818207, 53.095772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581198, 32.486351, 53.228828>,  <28.688812, 32.287239, 53.308662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581198, 32.486351, 53.228828>,  <28.401842, 32.818207, 53.095772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581198, 32.486351, 53.228828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328877, 0.192910, 0.924460,
		-0.831136, -0.523916, -0.186350,
		0.448390, -0.829637, 0.332638,
		28.715715, 32.237461, 53.328621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875410, 32.362118, 53.402004>,  <28.401842, 32.818207, 53.095772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875410, 32.362118, 53.402004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222233, 32.260456, 53.573406>,  <28.430326, 32.199459, 53.676247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222233, 32.260456, 53.573406>,  <27.875410, 32.362118, 53.402004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.222233, 32.260456, 53.573406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464051, -0.098999, 0.880259,
		-0.181299, -0.962084, -0.203777,
		0.867057, -0.254153, 0.428507,
		28.482349, 32.184212, 53.701958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658258, 31.785364, 53.876892>,  <27.875410, 32.362118, 53.402004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658258, 31.785364, 53.876892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014860, 31.917866, 54.000496>,  <28.228821, 31.997368, 54.074657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014860, 31.917866, 54.000496>,  <27.658258, 31.785364, 53.876892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014860, 31.917866, 54.000496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383586, 0.189120, 0.903933,
		0.241001, -0.924390, 0.295670,
		0.891504, 0.331264, 0.309005,
		28.282312, 32.017242, 54.093197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827049, 31.439875, 54.588192>,  <27.658258, 31.785364, 53.876892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827049, 31.439875, 54.588192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077248, 31.751764, 54.576973>,  <28.227367, 31.938898, 54.570240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077248, 31.751764, 54.576973>,  <27.827049, 31.439875, 54.588192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077248, 31.751764, 54.576973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288410, 0.264472, 0.920258,
		0.724965, -0.567527, 0.390306,
		0.625496, 0.779723, -0.028052,
		28.264896, 31.985682, 54.568558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163879, 31.443491, 55.294479>,  <27.827049, 31.439875, 54.588192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163879, 31.443491, 55.294479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177944, 31.814884, 55.146599>,  <28.186382, 32.037720, 55.057869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177944, 31.814884, 55.146599>,  <28.163879, 31.443491, 55.294479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177944, 31.814884, 55.146599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203804, 0.368819, 0.906883,
		0.978380, 0.043461, 0.202196,
		0.035160, 0.928485, -0.369703,
		28.188492, 32.093430, 55.035686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220272, 31.933043, 55.873302>,  <28.163879, 31.443491, 55.294479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220272, 31.933043, 55.873302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105207, 32.188969, 55.588238>,  <28.036169, 32.342525, 55.417198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105207, 32.188969, 55.588238>,  <28.220272, 31.933043, 55.873302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105207, 32.188969, 55.588238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217071, 0.681192, 0.699183,
		0.932807, 0.355828, -0.057069,
		-0.287664, 0.639815, -0.712662,
		28.018908, 32.380913, 55.374439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494442, 32.514740, 56.146790>,  <28.220272, 31.933043, 55.873302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494442, 32.514740, 56.146790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204077, 32.620602, 55.892860>,  <28.029858, 32.684120, 55.740501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204077, 32.620602, 55.892860>,  <28.494442, 32.514740, 56.146790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204077, 32.620602, 55.892860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358398, 0.642228, 0.677565,
		0.587027, 0.719374, -0.371349,
		-0.725913, 0.264658, -0.634828,
		27.986303, 32.700001, 55.702412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453381, 33.299950, 56.097839>,  <28.494442, 32.514740, 56.146790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453381, 33.299950, 56.097839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108774, 33.122952, 55.998245>,  <27.902010, 33.016754, 55.938488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108774, 33.122952, 55.998245>,  <28.453381, 33.299950, 56.097839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108774, 33.122952, 55.998245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415801, 0.333441, 0.846124,
		-0.291380, 0.832478, -0.471253,
		-0.861515, -0.442491, -0.248987,
		27.850319, 32.990204, 55.923550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972527, 33.770611, 56.432198>,  <28.453381, 33.299950, 56.097839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972527, 33.770611, 56.432198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745358, 33.462364, 56.316536>,  <27.609056, 33.277416, 56.247139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745358, 33.462364, 56.316536>,  <27.972527, 33.770611, 56.432198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745358, 33.462364, 56.316536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602866, 0.150286, 0.783560,
		-0.560372, 0.619320, -0.549932,
		-0.567922, -0.770621, -0.289151,
		27.574982, 33.231178, 56.229790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.290585, 34.049118, 56.535614>,  <27.972527, 33.770611, 56.432198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.290585, 34.049118, 56.535614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244923, 33.652546, 56.510197>,  <27.217525, 33.414604, 56.494946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244923, 33.652546, 56.510197>,  <27.290585, 34.049118, 56.535614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244923, 33.652546, 56.510197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463866, -0.003364, 0.885899,
		-0.878519, 0.130605, -0.459506,
		-0.114157, -0.991429, -0.063539,
		27.210676, 33.355118, 56.491135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543516, 33.901825, 56.476780>,  <27.290585, 34.049118, 56.535614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543516, 33.901825, 56.476780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731476, 33.581303, 56.624889>,  <26.844252, 33.388988, 56.713753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731476, 33.581303, 56.624889>,  <26.543516, 33.901825, 56.476780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731476, 33.581303, 56.624889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713956, -0.098332, 0.693252,
		-0.519099, -0.590114, -0.618305,
		0.469897, -0.801309, 0.370271,
		26.872444, 33.340912, 56.735970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051825, 33.632320, 56.821209>,  <26.543516, 33.901825, 56.476780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051825, 33.632320, 56.821209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379414, 33.458870, 56.971542>,  <26.575968, 33.354801, 57.061741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379414, 33.458870, 56.971542>,  <26.051825, 33.632320, 56.821209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379414, 33.458870, 56.971542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515267, -0.267458, 0.814227,
		-0.252537, -0.860492, -0.442468,
		0.818978, -0.433612, 0.375840,
		26.625107, 33.328781, 57.084293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.804899, 33.300133, 57.510593>,  <26.051825, 33.632320, 56.821209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.804899, 33.300133, 57.510593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.195234, 33.221180, 57.548077>,  <26.429436, 33.173809, 57.570568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.195234, 33.221180, 57.548077>,  <25.804899, 33.300133, 57.510593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.195234, 33.221180, 57.548077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115952, -0.104321, 0.987761,
		-0.185189, -0.974761, -0.124687,
		0.975838, -0.197381, 0.093706,
		26.487986, 33.161968, 57.576187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009768, 32.562130, 57.858387>,  <25.804899, 33.300133, 57.510593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009768, 32.562130, 57.858387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282263, 32.846752, 57.927204>,  <26.445761, 33.017525, 57.968494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282263, 32.846752, 57.927204>,  <26.009768, 32.562130, 57.858387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282263, 32.846752, 57.927204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095940, -0.146201, 0.984592,
		0.725747, -0.687248, -0.031331,
		0.681240, 0.711558, 0.172040,
		26.486635, 33.060219, 57.978817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518505, 32.323505, 58.409653>,  <26.009768, 32.562130, 57.858387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518505, 32.323505, 58.409653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583189, 32.718147, 58.400978>,  <26.622000, 32.954933, 58.395775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583189, 32.718147, 58.400978>,  <26.518505, 32.323505, 58.409653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583189, 32.718147, 58.400978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011924, 0.023925, 0.999643,
		0.986766, -0.161393, 0.015633,
		0.161709, 0.986600, -0.021684,
		26.631702, 33.014126, 58.394474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055361, 32.456486, 58.865051>,  <26.518505, 32.323505, 58.409653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055361, 32.456486, 58.865051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891994, 32.820663, 58.838860>,  <26.793974, 33.039169, 58.823147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891994, 32.820663, 58.838860>,  <27.055361, 32.456486, 58.865051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.891994, 32.820663, 58.838860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001435, 0.071089, 0.997469,
		0.912795, 0.407476, -0.027727,
		-0.408415, 0.910445, -0.065475,
		26.769470, 33.093796, 58.819218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692030, 32.143757, 59.363560>,  <27.055361, 32.456486, 58.865051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692030, 32.143757, 59.363560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070681, 32.238495, 59.451012>,  <27.297871, 32.295338, 59.503483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070681, 32.238495, 59.451012>,  <26.692030, 32.143757, 59.363560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070681, 32.238495, 59.451012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321012, 0.631549, 0.705761,
		0.029086, -0.738274, 0.673873,
		0.946629, 0.236849, 0.218626,
		27.354670, 32.309551, 59.516598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.899416, 32.277977, 60.113838>,  <26.692030, 32.143757, 59.363560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.899416, 32.277977, 60.113838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181967, 32.514748, 59.958580>,  <27.351498, 32.656811, 59.865425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181967, 32.514748, 59.958580>,  <26.899416, 32.277977, 60.113838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181967, 32.514748, 59.958580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044914, 0.584731, 0.809983,
		0.706410, -0.554719, 0.439626,
		0.706376, 0.591926, -0.388145,
		27.393879, 32.692326, 59.842136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218063, 31.648714, 59.987503>,  <26.899416, 32.277977, 60.113838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218063, 31.648714, 59.987503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486221, 31.480629, 60.232121>,  <27.647116, 31.379778, 60.378891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486221, 31.480629, 60.232121>,  <27.218063, 31.648714, 59.987503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486221, 31.480629, 60.232121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673877, -0.000178, -0.738844,
		0.310581, 0.907425, 0.283053,
		0.670395, -0.420213, 0.611548,
		27.687340, 31.354565, 60.415585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788509, 32.100662, 60.044937>,  <27.218063, 31.648714, 59.987503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788509, 32.100662, 60.044937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908384, 31.722565, 60.096642>,  <27.980310, 31.495707, 60.127663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908384, 31.722565, 60.096642>,  <27.788509, 32.100662, 60.044937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908384, 31.722565, 60.096642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731941, 0.140903, -0.666639,
		0.611922, 0.294393, 0.734088,
		0.299689, -0.945240, 0.129257,
		27.998291, 31.438993, 60.135418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468643, 32.174534, 60.088428>,  <27.788509, 32.100662, 60.044937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468643, 32.174534, 60.088428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436537, 31.784216, 60.007057>,  <28.417273, 31.550026, 59.958237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436537, 31.784216, 60.007057>,  <28.468643, 32.174534, 60.088428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436537, 31.784216, 60.007057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808109, 0.055772, -0.586387,
		0.583539, -0.211458, 0.784072,
		-0.080268, -0.975794, -0.203426,
		28.412457, 31.491478, 59.946030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144049, 31.905994, 60.222866>,  <28.468643, 32.174534, 60.088428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144049, 31.905994, 60.222866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959370, 31.651644, 59.975479>,  <28.848562, 31.499033, 59.827049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959370, 31.651644, 59.975479>,  <29.144049, 31.905994, 60.222866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959370, 31.651644, 59.975479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803801, -0.005036, -0.594876,
		0.375153, -0.771775, 0.513443,
		-0.461697, -0.635876, -0.618464,
		28.820860, 31.460880, 59.789940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591946, 31.393454, 60.057381>,  <29.144049, 31.905994, 60.222866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591946, 31.393454, 60.057381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315022, 31.371157, 59.769604>,  <29.148867, 31.357779, 59.596939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315022, 31.371157, 59.769604>,  <29.591946, 31.393454, 60.057381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315022, 31.371157, 59.769604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716690, 0.062965, -0.694544,
		0.084016, -0.996458, -0.003642,
		-0.692313, -0.055743, -0.719441,
		29.107328, 31.354433, 59.553772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853966, 30.903975, 59.534645>,  <29.591946, 31.393454, 60.057381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853966, 30.903975, 59.534645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582239, 31.129955, 59.347301>,  <29.419203, 31.265543, 59.234894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582239, 31.129955, 59.347301>,  <29.853966, 30.903975, 59.534645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582239, 31.129955, 59.347301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678864, 0.241408, -0.693444,
		-0.278698, -0.789019, -0.547518,
		-0.679316, 0.564952, -0.468357,
		29.378445, 31.299440, 59.206795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966166, 30.718904, 58.870468>,  <29.853966, 30.903975, 59.534645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966166, 30.718904, 58.870468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722443, 31.033484, 58.829983>,  <29.576208, 31.222231, 58.805691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722443, 31.033484, 58.829983>,  <29.966166, 30.718904, 58.870468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722443, 31.033484, 58.829983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460695, 0.247222, -0.852433,
		-0.645371, -0.566023, -0.512946,
		-0.609308, 0.786447, -0.101215,
		29.539650, 31.269417, 58.799618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628706, 30.642996, 58.202347>,  <29.966166, 30.718904, 58.870468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628706, 30.642996, 58.202347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591696, 31.033136, 58.282478>,  <29.569490, 31.267220, 58.330559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591696, 31.033136, 58.282478>,  <29.628706, 30.642996, 58.202347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591696, 31.033136, 58.282478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326693, 0.219791, -0.919219,
		-0.940591, -0.019603, -0.338976,
		-0.092523, 0.975350, 0.200329,
		29.563938, 31.325741, 58.342579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151949, 30.883518, 57.784813>,  <29.628706, 30.642996, 58.202347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151949, 30.883518, 57.784813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327135, 31.223396, 57.902252>,  <29.432247, 31.427324, 57.972717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327135, 31.223396, 57.902252>,  <29.151949, 30.883518, 57.784813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327135, 31.223396, 57.902252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247239, 0.200151, -0.948057,
		-0.864325, 0.487807, -0.122419,
		0.437967, 0.849696, 0.293600,
		29.458525, 31.478306, 57.990334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938229, 31.398539, 57.411240>,  <29.151949, 30.883518, 57.784813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938229, 31.398539, 57.411240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279476, 31.571302, 57.528301>,  <29.484224, 31.674961, 57.598537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279476, 31.571302, 57.528301>,  <28.938229, 31.398539, 57.411240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279476, 31.571302, 57.528301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286792, 0.080351, -0.954617,
		-0.435821, 0.898332, -0.055318,
		0.853118, 0.431907, 0.292653,
		29.535412, 31.700874, 57.616096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954351, 32.016106, 56.947819>,  <28.938229, 31.398539, 57.411240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954351, 32.016106, 56.947819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318325, 31.955479, 57.102242>,  <29.536709, 31.919102, 57.194897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318325, 31.955479, 57.102242>,  <28.954351, 32.016106, 56.947819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318325, 31.955479, 57.102242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406761, 0.144326, -0.902062,
		0.081008, 0.977853, 0.192980,
		0.909936, -0.151571, 0.386061,
		29.591307, 31.910007, 57.218060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364094, 32.543743, 56.665112>,  <28.954351, 32.016106, 56.947819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364094, 32.543743, 56.665112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621613, 32.256443, 56.770668>,  <29.776123, 32.084064, 56.834003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621613, 32.256443, 56.770668>,  <29.364094, 32.543743, 56.665112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621613, 32.256443, 56.770668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527119, 0.166289, -0.833363,
		0.554680, 0.675621, 0.485660,
		0.643798, -0.718250, 0.263896,
		29.814753, 32.040966, 56.849838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041302, 32.783810, 56.444607>,  <29.364094, 32.543743, 56.665112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041302, 32.783810, 56.444607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079445, 32.391254, 56.511272>,  <30.102331, 32.155720, 56.551273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079445, 32.391254, 56.511272>,  <30.041302, 32.783810, 56.444607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079445, 32.391254, 56.511272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537801, -0.090101, -0.838243,
		0.837662, 0.169565, 0.519202,
		0.095356, -0.981392, 0.166666,
		30.108051, 32.096836, 56.561272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792898, 32.629791, 56.288280>,  <30.041302, 32.783810, 56.444607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792898, 32.629791, 56.288280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581184, 32.291523, 56.260860>,  <30.454155, 32.088562, 56.244408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581184, 32.291523, 56.260860>,  <30.792898, 32.629791, 56.288280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581184, 32.291523, 56.260860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496637, -0.243301, -0.833161,
		0.687901, -0.475023, 0.548767,
		-0.529286, -0.845670, -0.068546,
		30.422398, 32.037823, 56.240295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231909, 32.175926, 56.058029>,  <30.792898, 32.629791, 56.288280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231909, 32.175926, 56.058029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881016, 32.001125, 55.978539>,  <30.670481, 31.896246, 55.930843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881016, 32.001125, 55.978539>,  <31.231909, 32.175926, 56.058029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881016, 32.001125, 55.978539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389219, -0.405099, -0.827287,
		0.281018, -0.803073, 0.525454,
		-0.877233, -0.436999, -0.198731,
		30.617846, 31.870026, 55.918919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349409, 31.480202, 55.996849>,  <31.231909, 32.175926, 56.058029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349409, 31.480202, 55.996849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993635, 31.503506, 55.815514>,  <30.780170, 31.517488, 55.706711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993635, 31.503506, 55.815514>,  <31.349409, 31.480202, 55.996849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993635, 31.503506, 55.815514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372296, -0.483039, -0.792508,
		-0.265151, -0.873659, 0.407941,
		-0.889433, 0.058259, -0.453338,
		30.726805, 31.520983, 55.679512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982679, 30.799080, 55.926968>,  <31.349409, 31.480202, 55.996849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982679, 30.799080, 55.926968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839264, 31.048561, 55.649136>,  <30.753216, 31.198250, 55.482437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839264, 31.048561, 55.649136>,  <30.982679, 30.799080, 55.926968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839264, 31.048561, 55.649136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330804, -0.610882, -0.719299,
		-0.872938, -0.487666, 0.012700,
		-0.358536, 0.623702, -0.694584,
		30.731703, 31.235672, 55.440762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786989, 30.349300, 55.317760>,  <30.982679, 30.799080, 55.926968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786989, 30.349300, 55.317760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792316, 30.717218, 55.160889>,  <30.795513, 30.937969, 55.066765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792316, 30.717218, 55.160889>,  <30.786989, 30.349300, 55.317760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792316, 30.717218, 55.160889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224469, -0.384953, -0.895224,
		-0.974390, -0.076107, -0.211592,
		0.013320, 0.919793, -0.392178,
		30.796312, 30.993156, 55.043236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506742, 30.322798, 54.657349>,  <30.786989, 30.349300, 55.317760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506742, 30.322798, 54.657349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730661, 30.654108, 54.647682>,  <30.865013, 30.852894, 54.641884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730661, 30.654108, 54.647682>,  <30.506742, 30.322798, 54.657349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730661, 30.654108, 54.647682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363355, -0.271578, -0.891189,
		-0.744713, 0.490107, -0.452987,
		0.559799, 0.828276, -0.024165,
		30.898602, 30.902592, 54.640434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450588, 30.614693, 53.893860>,  <30.506742, 30.322798, 54.657349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450588, 30.614693, 53.893860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778625, 30.736998, 54.087337>,  <30.975447, 30.810381, 54.203423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778625, 30.736998, 54.087337>,  <30.450588, 30.614693, 53.893860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778625, 30.736998, 54.087337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543854, -0.153580, -0.825007,
		-0.177970, 0.939640, -0.292239,
		0.820091, 0.305761, 0.483695,
		31.024652, 30.828726, 54.232445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<46.826900, 35.537670, 53.225658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.076374, 35.471466, 52.920078>,  <47.226059, 35.431744, 52.736729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.076374, 35.471466, 52.920078>,  <46.826900, 35.537670, 53.225658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.076374, 35.471466, 52.920078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716177, 0.270623, -0.643314,
		0.313221, 0.948350, 0.050246,
		0.623685, -0.165515, -0.763952,
		47.263481, 35.421810, 52.690891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.779682, 36.121365, 52.822594>,  <46.826900, 35.537670, 53.225658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.779682, 36.121365, 52.822594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.910496, 35.851177, 52.558235>,  <46.988983, 35.689064, 52.399620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.910496, 35.851177, 52.558235>,  <46.779682, 36.121365, 52.822594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.910496, 35.851177, 52.558235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741160, 0.250546, -0.622823,
		0.586283, 0.693519, -0.418692,
		0.327038, -0.675469, -0.660900,
		47.008606, 35.648537, 52.359966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.650494, 36.449303, 52.116817>,  <46.779682, 36.121365, 52.822594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.650494, 36.449303, 52.116817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.675072, 36.052929, 52.069035>,  <46.689819, 35.815105, 52.040367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.675072, 36.052929, 52.069035>,  <46.650494, 36.449303, 52.116817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.675072, 36.052929, 52.069035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746901, 0.033737, -0.664079,
		0.662090, 0.130027, -0.738058,
		0.061448, -0.990936, -0.119454,
		46.693504, 35.755650, 52.033199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.799175, 36.396984, 51.478500>,  <46.650494, 36.449303, 52.116817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.799175, 36.396984, 51.478500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.602371, 36.070362, 51.599274>,  <46.484287, 35.874390, 51.671738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.602371, 36.070362, 51.599274>,  <46.799175, 36.396984, 51.478500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.602371, 36.070362, 51.599274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725756, 0.193151, -0.660281,
		0.480838, -0.543994, -0.687652,
		-0.492009, -0.816555, 0.301933,
		46.454769, 35.825394, 51.689854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.394749, 36.299206, 50.851280>,  <46.799175, 36.396984, 51.478500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.394749, 36.299206, 50.851280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.271568, 36.001381, 51.088188>,  <46.197659, 35.822685, 51.230335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.271568, 36.001381, 51.088188>,  <46.394749, 36.299206, 50.851280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.271568, 36.001381, 51.088188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719178, -0.225373, -0.657259,
		0.622855, -0.628353, -0.466072,
		-0.307950, -0.744566, 0.592273,
		46.179184, 35.778011, 51.265869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.435677, 35.606594, 50.435051>,  <46.394749, 36.299206, 50.851280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.435677, 35.606594, 50.435051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.149143, 35.575161, 50.712376>,  <45.977222, 35.556301, 50.878773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.149143, 35.575161, 50.712376>,  <46.435677, 35.606594, 50.435051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.149143, 35.575161, 50.712376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587266, -0.468682, -0.659891,
		0.376802, -0.879865, 0.289584,
		-0.716337, -0.078585, 0.693315,
		45.934242, 35.551586, 50.920372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.169914, 34.979836, 50.299816>,  <46.435677, 35.606594, 50.435051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.169914, 34.979836, 50.299816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.881279, 35.131264, 50.531677>,  <45.708099, 35.222118, 50.670792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.881279, 35.131264, 50.531677>,  <46.169914, 34.979836, 50.299816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.881279, 35.131264, 50.531677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691732, -0.428789, -0.581074,
		0.028573, -0.820260, 0.571277,
		-0.721589, 0.378568, 0.579651,
		45.664803, 35.244835, 50.705574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589539, 34.474354, 50.318810>,  <46.169914, 34.979836, 50.299816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589539, 34.474354, 50.318810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.425709, 34.823277, 50.425644>,  <45.327412, 35.032631, 50.489746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.425709, 34.823277, 50.425644>,  <45.589539, 34.474354, 50.318810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425709, 34.823277, 50.425644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839064, -0.245279, -0.485603,
		-0.358083, -0.422992, 0.832379,
		-0.409571, 0.872305, 0.267087,
		45.302837, 35.084969, 50.505772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845661, 34.347027, 50.588631>,  <45.589539, 34.474354, 50.318810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.845661, 34.347027, 50.588631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.851879, 34.733437, 50.485439>,  <44.855610, 34.965282, 50.423527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.851879, 34.733437, 50.485439>,  <44.845661, 34.347027, 50.588631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.851879, 34.733437, 50.485439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859265, -0.119029, -0.497489,
		-0.511294, 0.229401, 0.828223,
		0.015542, 0.966026, -0.257975,
		44.856541, 35.023243, 50.408047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.240665, 34.364647, 50.658463>,  <44.845661, 34.347027, 50.588631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.240665, 34.364647, 50.658463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.342773, 34.704342, 50.473583>,  <44.404037, 34.908157, 50.362656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.342773, 34.704342, 50.473583>,  <44.240665, 34.364647, 50.658463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342773, 34.704342, 50.473583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936719, 0.098775, -0.335858,
		-0.239570, 0.518688, 0.820712,
		0.255272, 0.849238, -0.462202,
		44.419353, 34.959114, 50.334923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609695, 34.811855, 50.615791>,  <44.240665, 34.364647, 50.658463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609695, 34.811855, 50.615791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.822372, 34.980858, 50.322182>,  <43.949978, 35.082260, 50.146015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.822372, 34.980858, 50.322182>,  <43.609695, 34.811855, 50.615791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822372, 34.980858, 50.322182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833303, 0.106109, -0.542537,
		-0.151340, 0.900126, 0.408495,
		0.531697, 0.422508, -0.734020,
		43.981880, 35.107609, 50.101974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308090, 35.434193, 50.350868>,  <43.609695, 34.811855, 50.615791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308090, 35.434193, 50.350868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.535839, 35.315659, 50.044144>,  <43.672489, 35.244537, 49.860107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.535839, 35.315659, 50.044144>,  <43.308090, 35.434193, 50.350868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535839, 35.315659, 50.044144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801286, 0.008414, -0.598223,
		0.183725, 0.955048, -0.232657,
		0.569374, -0.296333, -0.766812,
		43.706650, 35.226757, 49.814098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078548, 35.872982, 49.739239>,  <43.308090, 35.434193, 50.350868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078548, 35.872982, 49.739239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.277885, 35.563972, 49.581829>,  <43.397488, 35.378567, 49.487385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.277885, 35.563972, 49.581829>,  <43.078548, 35.872982, 49.739239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277885, 35.563972, 49.581829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668218, -0.053043, -0.742073,
		0.552395, 0.632767, -0.542647,
		0.498342, -0.772524, -0.393525,
		43.427387, 35.332214, 49.463772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275146, 36.079998, 49.024944>,  <43.078548, 35.872982, 49.739239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275146, 36.079998, 49.024944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.256195, 35.681038, 49.046638>,  <43.244823, 35.441662, 49.059654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.256195, 35.681038, 49.046638>,  <43.275146, 36.079998, 49.024944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256195, 35.681038, 49.046638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752322, -0.000090, -0.658795,
		0.657089, -0.072015, -0.750365,
		-0.047376, -0.997404, 0.054238,
		43.241982, 35.381817, 49.062908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.054928, 35.771294, 48.375889>,  <43.275146, 36.079998, 49.024944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.054928, 35.771294, 48.375889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.982685, 35.452206, 48.606026>,  <42.939339, 35.260754, 48.744110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.982685, 35.452206, 48.606026>,  <43.054928, 35.771294, 48.375889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982685, 35.452206, 48.606026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745732, -0.270346, -0.608930,
		0.641299, -0.539029, -0.546061,
		-0.180606, -0.797722, 0.575344,
		42.928505, 35.212891, 48.778629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767078, 35.175636, 47.971127>,  <43.054928, 35.771294, 48.375889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767078, 35.175636, 47.971127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.664806, 35.078781, 48.345505>,  <42.603443, 35.020668, 48.570133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.664806, 35.078781, 48.345505>,  <42.767078, 35.175636, 47.971127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664806, 35.078781, 48.345505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779032, -0.521691, -0.347775,
		0.572485, -0.818052, -0.055249,
		-0.255675, -0.242136, 0.935949,
		42.588104, 35.006142, 48.626289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492100, 34.465168, 47.982239>,  <42.767078, 35.175636, 47.971127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492100, 34.465168, 47.982239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.333462, 34.588474, 48.328114>,  <42.238277, 34.662457, 48.535637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.333462, 34.588474, 48.328114>,  <42.492100, 34.465168, 47.982239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333462, 34.588474, 48.328114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841155, -0.499272, -0.207811,
		0.367653, -0.809753, 0.457309,
		-0.396597, 0.308265, 0.864686,
		42.214481, 34.680954, 48.587521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235050, 33.803810, 48.393597>,  <42.492100, 34.465168, 47.982239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235050, 33.803810, 48.393597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.046181, 34.137936, 48.506241>,  <41.932858, 34.338409, 48.573826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.046181, 34.137936, 48.506241>,  <42.235050, 33.803810, 48.393597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046181, 34.137936, 48.506241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858353, -0.508418, 0.068865,
		0.200700, -0.209205, 0.957054,
		-0.472176, 0.835311, 0.281611,
		41.904530, 34.388531, 48.590725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778282, 33.491882, 48.746376>,  <42.235050, 33.803810, 48.393597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778282, 33.491882, 48.746376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.640968, 33.864716, 48.700108>,  <41.558578, 34.088413, 48.672344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.640968, 33.864716, 48.700108>,  <41.778282, 33.491882, 48.746376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640968, 33.864716, 48.700108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926489, -0.356270, -0.121206,
		-0.154185, 0.065563, 0.985864,
		-0.343287, 0.932080, -0.115674,
		41.537983, 34.144341, 48.665405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209232, 33.513817, 49.120522>,  <41.778282, 33.491882, 48.746376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209232, 33.513817, 49.120522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.159542, 33.829399, 48.879814>,  <41.129726, 34.018749, 48.735390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.159542, 33.829399, 48.879814>,  <41.209232, 33.513817, 49.120522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159542, 33.829399, 48.879814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895146, -0.350769, -0.275089,
		-0.428113, 0.504494, 0.749803,
		-0.124227, 0.788952, -0.601765,
		41.122272, 34.066086, 48.699284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574860, 33.792850, 49.216949>,  <41.209232, 33.513817, 49.120522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574860, 33.792850, 49.216949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.662308, 33.920532, 48.848099>,  <40.714775, 33.997143, 48.626789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.662308, 33.920532, 48.848099>,  <40.574860, 33.792850, 49.216949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662308, 33.920532, 48.848099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903738, -0.290196, -0.314712,
		-0.368055, 0.902160, 0.225039,
		0.218616, 0.319208, -0.922124,
		40.727894, 34.016296, 48.571461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070480, 34.253872, 48.939812>,  <40.574860, 33.792850, 49.216949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070480, 34.253872, 48.939812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.229076, 34.050228, 48.634235>,  <40.324234, 33.928043, 48.450890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.229076, 34.050228, 48.634235>,  <40.070480, 34.253872, 48.939812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229076, 34.050228, 48.634235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903710, -0.362891, -0.227196,
		-0.161560, 0.780461, -0.603969,
		0.396492, -0.509108, -0.763939,
		40.348022, 33.897495, 48.405052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734203, 34.334518, 48.287045>,  <40.070480, 34.253872, 48.939812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734203, 34.334518, 48.287045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.897575, 33.969608, 48.299294>,  <39.995598, 33.750664, 48.306644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.897575, 33.969608, 48.299294>,  <39.734203, 34.334518, 48.287045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897575, 33.969608, 48.299294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826312, -0.383782, -0.412213,
		0.387806, 0.143052, -0.910572,
		0.408429, -0.912276, 0.030627,
		40.020103, 33.695927, 48.308483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354557, 34.133194, 47.725124>,  <39.734203, 34.334518, 48.287045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354557, 34.133194, 47.725124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.498127, 33.818649, 47.926243>,  <39.584270, 33.629921, 48.046913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.498127, 33.818649, 47.926243>,  <39.354557, 34.133194, 47.725124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498127, 33.818649, 47.926243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751889, -0.562779, -0.343429,
		0.553025, -0.254784, -0.793252,
		0.358925, -0.786362, 0.502800,
		39.605804, 33.582741, 48.077084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788864, 33.787960, 47.341446>,  <39.354557, 34.133194, 47.725124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788864, 33.787960, 47.341446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.908554, 33.995483, 47.021118>,  <38.980370, 34.119995, 46.828922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.908554, 33.995483, 47.021118>,  <38.788864, 33.787960, 47.341446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908554, 33.995483, 47.021118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778313, -0.352807, -0.519381,
		-0.551991, 0.778696, 0.298225,
		0.299224, 0.518806, -0.800816,
		38.998322, 34.151127, 46.780872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254562, 34.239147, 47.134830>,  <38.788864, 33.787960, 47.341446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254562, 34.239147, 47.134830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478558, 34.153381, 46.814720>,  <38.612957, 34.101921, 46.622654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478558, 34.153381, 46.814720>,  <38.254562, 34.239147, 47.134830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478558, 34.153381, 46.814720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822894, -0.256107, -0.507203,
		-0.096202, 0.942568, -0.319860,
		0.559992, -0.214417, -0.800272,
		38.646557, 34.089058, 46.574638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066219, 34.699039, 46.463104>,  <38.254562, 34.239147, 47.134830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066219, 34.699039, 46.463104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.233612, 34.358749, 46.335892>,  <38.334045, 34.154575, 46.259563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.233612, 34.358749, 46.335892>,  <38.066219, 34.699039, 46.463104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233612, 34.358749, 46.335892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751620, -0.127825, -0.647092,
		0.509846, 0.509831, -0.692914,
		0.418479, -0.850725, -0.318028,
		38.359158, 34.103531, 46.240482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079098, 34.731747, 45.735138>,  <38.066219, 34.699039, 46.463104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079098, 34.731747, 45.735138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.090443, 34.342453, 45.826370>,  <38.097248, 34.108879, 45.881107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.090443, 34.342453, 45.826370>,  <38.079098, 34.731747, 45.735138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090443, 34.342453, 45.826370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684451, -0.185198, -0.705145,
		0.728508, -0.136110, -0.671380,
		0.028360, -0.973229, 0.228079,
		38.098949, 34.050484, 45.894794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057312, 34.381905, 44.996880>,  <38.079098, 34.731747, 45.735138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057312, 34.381905, 44.996880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.987518, 34.095940, 45.267719>,  <37.945641, 33.924362, 45.430222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.987518, 34.095940, 45.267719>,  <38.057312, 34.381905, 44.996880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987518, 34.095940, 45.267719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767873, -0.331665, -0.548060,
		0.616382, -0.615553, -0.491088,
		-0.174483, -0.714908, 0.677098,
		37.935173, 33.881466, 45.470848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017414, 33.786846, 44.640236>,  <38.057312, 34.381905, 44.996880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017414, 33.786846, 44.640236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.833828, 33.702637, 44.985497>,  <37.723675, 33.652111, 45.192654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.833828, 33.702637, 44.985497>,  <38.017414, 33.786846, 44.640236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833828, 33.702637, 44.985497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770872, -0.388640, -0.504693,
		0.441706, -0.897016, 0.016084,
		-0.458968, -0.210527, 0.863149,
		37.696136, 33.639477, 45.244442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784271, 33.136246, 44.595978>,  <38.017414, 33.786846, 44.640236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784271, 33.136246, 44.595978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.543922, 33.294865, 44.873596>,  <37.399712, 33.390038, 45.040165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.543922, 33.294865, 44.873596>,  <37.784271, 33.136246, 44.595978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543922, 33.294865, 44.873596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790836, -0.421253, -0.443988,
		0.116305, -0.815656, 0.566726,
		-0.600876, 0.396549, 0.694044,
		37.363659, 33.413830, 45.081810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272991, 32.610878, 44.737553>,  <37.784271, 33.136246, 44.595978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272991, 32.610878, 44.737553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.118805, 32.958084, 44.862759>,  <37.026295, 33.166409, 44.937881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.118805, 32.958084, 44.862759>,  <37.272991, 32.610878, 44.737553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118805, 32.958084, 44.862759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848724, -0.200420, -0.489387,
		-0.362059, -0.454300, 0.813956,
		-0.385461, 0.868011, 0.313012,
		37.003166, 33.218487, 44.956661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599556, 32.460114, 44.946960>,  <37.272991, 32.610878, 44.737553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599556, 32.460114, 44.946960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.588024, 32.856693, 44.896053>,  <36.581104, 33.094643, 44.865509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.588024, 32.856693, 44.896053>,  <36.599556, 32.460114, 44.946960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588024, 32.856693, 44.896053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977410, -0.054632, -0.204170,
		-0.209377, 0.118508, 0.970627,
		-0.028832, 0.991449, -0.127269,
		36.579376, 33.154129, 44.857872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001568, 32.741421, 45.300022>,  <36.599556, 32.460114, 44.946960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001568, 32.741421, 45.300022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.079723, 33.004642, 45.009151>,  <36.126617, 33.162575, 44.834629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.079723, 33.004642, 45.009151>,  <36.001568, 32.741421, 45.300022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079723, 33.004642, 45.009151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969457, 0.017516, -0.244635,
		-0.148246, 0.752765, 0.641380,
		0.195387, 0.658057, -0.727176,
		36.138340, 33.202061, 44.791000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435459, 33.139534, 45.308487>,  <36.001568, 32.741421, 45.300022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435459, 33.139534, 45.308487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.595222, 33.247440, 44.958012>,  <35.691082, 33.312183, 44.747726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.595222, 33.247440, 44.958012>,  <35.435459, 33.139534, 45.308487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595222, 33.247440, 44.958012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911946, 0.214845, -0.349564,
		0.093945, 0.938653, 0.331820,
		0.399410, 0.269763, -0.876185,
		35.715046, 33.328369, 44.695156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.131531, 31.368446, 48.549976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.502647, 31.394108, 48.696991>,  <30.725317, 31.409504, 48.785202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.502647, 31.394108, 48.696991>,  <30.131531, 31.368446, 48.549976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502647, 31.394108, 48.696991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347061, 0.213148, -0.913300,
		-0.136932, 0.974911, 0.175491,
		0.927792, 0.064154, 0.367541,
		30.780985, 31.413355, 48.807255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346430, 31.993229, 48.341240>,  <30.131531, 31.368446, 48.549976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346430, 31.993229, 48.341240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.679131, 31.783627, 48.414570>,  <30.878752, 31.657866, 48.458569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.679131, 31.783627, 48.414570>,  <30.346430, 31.993229, 48.341240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679131, 31.783627, 48.414570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266907, 0.087905, -0.959705,
		0.486776, 0.847166, 0.212976,
		0.831751, -0.524006, 0.183325,
		30.928656, 31.626425, 48.469566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904881, 32.373589, 48.075615>,  <30.346430, 31.993229, 48.341240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904881, 32.373589, 48.075615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.044519, 31.999008, 48.089462>,  <31.128304, 31.774261, 48.097771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.044519, 31.999008, 48.089462>,  <30.904881, 32.373589, 48.075615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044519, 31.999008, 48.089462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367601, 0.102872, -0.924277,
		0.861975, 0.335386, 0.380151,
		0.349097, -0.936447, 0.034615,
		31.149248, 31.718075, 48.099846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633789, 32.358879, 47.909637>,  <30.904881, 32.373589, 48.075615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633789, 32.358879, 47.909637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.541092, 31.976751, 47.836246>,  <31.485474, 31.747475, 47.792210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.541092, 31.976751, 47.836246>,  <31.633789, 32.358879, 47.909637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541092, 31.976751, 47.836246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633286, -0.004985, -0.773902,
		0.738407, -0.295542, 0.606144,
		-0.231742, -0.955317, -0.183482,
		31.471569, 31.690157, 47.781200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224133, 31.937824, 47.746414>,  <31.633789, 32.358879, 47.909637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224133, 31.937824, 47.746414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.945242, 31.694462, 47.594772>,  <31.777908, 31.548445, 47.503788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.945242, 31.694462, 47.594772>,  <32.224133, 31.937824, 47.746414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945242, 31.694462, 47.594772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573972, -0.156972, -0.803689,
		0.429459, -0.777948, 0.458652,
		-0.697224, -0.608405, -0.379107,
		31.736074, 31.511940, 47.481041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554390, 31.244236, 47.733280>,  <32.224133, 31.937824, 47.746414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554390, 31.244236, 47.733280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.240067, 31.267519, 47.486988>,  <32.051472, 31.281488, 47.339214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.240067, 31.267519, 47.486988>,  <32.554390, 31.244236, 47.733280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240067, 31.267519, 47.486988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574352, -0.300607, -0.761417,
		-0.229410, -0.951971, 0.202788,
		-0.785806, 0.058205, -0.615728,
		32.004326, 31.284981, 47.302269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535526, 30.741911, 47.265987>,  <32.554390, 31.244236, 47.733280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535526, 30.741911, 47.265987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.320889, 31.022373, 47.078178>,  <32.192108, 31.190651, 46.965492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.320889, 31.022373, 47.078178>,  <32.535526, 30.741911, 47.265987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320889, 31.022373, 47.078178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634760, -0.031236, -0.772077,
		-0.556013, -0.712323, -0.428306,
		-0.536590, 0.701157, -0.469522,
		32.159912, 31.232719, 46.937321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507748, 30.461132, 46.554150>,  <32.535526, 30.741911, 47.265987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507748, 30.461132, 46.554150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.401981, 30.846811, 46.546116>,  <32.338520, 31.078218, 46.541298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.401981, 30.846811, 46.546116>,  <32.507748, 30.461132, 46.554150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401981, 30.846811, 46.546116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498496, 0.118823, -0.858710,
		-0.825581, -0.237069, -0.512068,
		-0.264419, 0.964199, -0.020080,
		32.322655, 31.136070, 46.540092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384300, 30.677029, 45.886364>,  <32.507748, 30.461132, 46.554150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384300, 30.677029, 45.886364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.452995, 31.028931, 46.063698>,  <32.494213, 31.240072, 46.170097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.452995, 31.028931, 46.063698>,  <32.384300, 30.677029, 45.886364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452995, 31.028931, 46.063698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401860, 0.348313, -0.846869,
		-0.899453, 0.323593, -0.293721,
		0.171734, 0.879753, 0.443330,
		32.504517, 31.292856, 46.196697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060036, 31.018415, 45.407707>,  <32.384300, 30.677029, 45.886364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060036, 31.018415, 45.407707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.322617, 31.231819, 45.621037>,  <32.480167, 31.359861, 45.749035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.322617, 31.231819, 45.621037>,  <32.060036, 31.018415, 45.407707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322617, 31.231819, 45.621037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393530, 0.360970, -0.845479,
		-0.643586, 0.764897, 0.027008,
		0.656454, 0.533509, 0.533325,
		32.519554, 31.391872, 45.781033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924065, 31.578472, 45.095238>,  <32.060036, 31.018415, 45.407707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924065, 31.578472, 45.095238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.273499, 31.602247, 45.288448>,  <32.483158, 31.616512, 45.404377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.273499, 31.602247, 45.288448>,  <31.924065, 31.578472, 45.095238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273499, 31.602247, 45.288448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376886, 0.545321, -0.748720,
		-0.307908, 0.836117, 0.453983,
		0.873584, 0.059437, 0.483030,
		32.535572, 31.620079, 45.433357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292782, 32.184902, 44.910549>,  <31.924065, 31.578472, 45.095238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292782, 32.184902, 44.910549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.594830, 31.986555, 45.082088>,  <32.776058, 31.867546, 45.185013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.594830, 31.986555, 45.082088>,  <32.292782, 32.184902, 44.910549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594830, 31.986555, 45.082088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614754, 0.308325, -0.725957,
		0.227757, 0.811818, 0.537660,
		0.755119, -0.495870, 0.428845,
		32.821365, 31.837793, 45.210743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607265, 32.780537, 44.602283>,  <32.292782, 32.184902, 44.910549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607265, 32.780537, 44.602283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.780949, 32.525383, 44.856705>,  <32.885159, 32.372292, 45.009357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.780949, 32.525383, 44.856705>,  <32.607265, 32.780537, 44.602283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780949, 32.525383, 44.856705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380903, 0.509847, 0.771342,
		-0.816318, -0.577199, -0.021592,
		0.434209, -0.637885, 0.636054,
		32.911213, 32.334019, 45.047520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734779, 33.490883, 44.402611>,  <32.607265, 32.780537, 44.602283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734779, 33.490883, 44.402611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.948929, 33.827309, 44.433563>,  <33.077419, 34.029163, 44.452133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.948929, 33.827309, 44.433563>,  <32.734779, 33.490883, 44.402611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948929, 33.827309, 44.433563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782362, 0.459299, 0.420659,
		0.318261, -0.285748, 0.903912,
		0.535369, 0.841066, 0.077381,
		33.109539, 34.079628, 44.456779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501884, 33.738911, 44.927830>,  <32.734779, 33.490883, 44.402611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501884, 33.738911, 44.927830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.656307, 34.074486, 44.774391>,  <32.748962, 34.275829, 44.682327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.656307, 34.074486, 44.774391>,  <32.501884, 33.738911, 44.927830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656307, 34.074486, 44.774391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553727, 0.543333, 0.631012,
		0.737799, -0.031200, 0.674299,
		0.386057, 0.838938, -0.383594,
		32.772125, 34.326168, 44.659313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632366, 34.046314, 45.520084>,  <32.501884, 33.738911, 44.927830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632366, 34.046314, 45.520084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.608505, 34.315769, 45.225426>,  <32.594189, 34.477444, 45.048630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.608505, 34.315769, 45.225426>,  <32.632366, 34.046314, 45.520084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608505, 34.315769, 45.225426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575252, 0.579905, 0.576884,
		0.815798, 0.458173, 0.352919,
		-0.059653, 0.673638, -0.736650,
		32.590611, 34.517860, 45.004429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714966, 34.729404, 45.806389>,  <32.632366, 34.046314, 45.520084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714966, 34.729404, 45.806389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.522087, 34.819393, 45.467716>,  <32.406361, 34.873386, 45.264511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.522087, 34.819393, 45.467716>,  <32.714966, 34.729404, 45.806389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522087, 34.819393, 45.467716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650100, 0.555955, 0.517962,
		0.587246, 0.800188, -0.121824,
		-0.482196, 0.224973, -0.846684,
		32.377430, 34.886887, 45.213711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658310, 35.481819, 45.887691>,  <32.714966, 34.729404, 45.806389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658310, 35.481819, 45.887691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.389793, 35.386356, 45.607006>,  <32.228683, 35.329079, 45.438595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.389793, 35.386356, 45.607006>,  <32.658310, 35.481819, 45.887691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389793, 35.386356, 45.607006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648235, 0.648096, 0.399704,
		0.359387, 0.723196, -0.589770,
		-0.671292, -0.238661, -0.701718,
		32.188404, 35.314758, 45.396492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375629, 36.096752, 45.726559>,  <32.658310, 35.481819, 45.887691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375629, 36.096752, 45.726559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.115292, 35.812946, 45.618492>,  <31.959089, 35.642662, 45.553654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.115292, 35.812946, 45.618492>,  <32.375629, 36.096752, 45.726559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115292, 35.812946, 45.618492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758361, 0.624410, 0.187085,
		0.035952, 0.326644, -0.944463,
		-0.650843, -0.709519, -0.270163,
		31.920038, 35.600090, 45.537445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782099, 36.499825, 45.436832>,  <32.375629, 36.096752, 45.726559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782099, 36.499825, 45.436832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.626684, 36.147614, 45.545433>,  <31.533436, 35.936287, 45.610596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.626684, 36.147614, 45.545433>,  <31.782099, 36.499825, 45.436832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626684, 36.147614, 45.545433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779612, 0.471205, 0.412518,
		-0.491167, -0.051391, -0.869548,
		-0.388535, -0.880525, 0.271505,
		31.510124, 35.883457, 45.626884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015862, 36.519314, 45.361946>,  <31.782099, 36.499825, 45.436832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015862, 36.519314, 45.361946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.108223, 36.238289, 45.631195>,  <31.163639, 36.069675, 45.792744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.108223, 36.238289, 45.631195>,  <31.015862, 36.519314, 45.361946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108223, 36.238289, 45.631195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613324, 0.431961, 0.661244,
		-0.755326, -0.565523, -0.331158,
		0.230901, -0.702562, 0.673120,
		31.177494, 36.027519, 45.833130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402451, 36.399197, 45.682896>,  <31.015862, 36.519314, 45.361946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402451, 36.399197, 45.682896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.669567, 36.223579, 45.923328>,  <30.829836, 36.118210, 46.067589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.669567, 36.223579, 45.923328>,  <30.402451, 36.399197, 45.682896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669567, 36.223579, 45.923328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603366, 0.153614, 0.782529,
		-0.435896, -0.885238, -0.162320,
		0.667790, -0.439040, 0.601083,
		30.869904, 36.091869, 46.103653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045158, 35.912590, 46.040577>,  <30.402451, 36.399197, 45.682896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045158, 35.912590, 46.040577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.376040, 35.995647, 46.249428>,  <30.574568, 36.045483, 46.374737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.376040, 35.995647, 46.249428>,  <30.045158, 35.912590, 46.040577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376040, 35.995647, 46.249428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536591, 0.016175, 0.843688,
		0.166745, -0.978070, 0.124802,
		0.827204, 0.207648, 0.522126,
		30.624201, 36.057941, 46.406067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023926, 35.577488, 46.665001>,  <30.045158, 35.912590, 46.040577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023926, 35.577488, 46.665001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.290485, 35.860943, 46.757736>,  <30.450420, 36.031017, 46.813377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.290485, 35.860943, 46.757736>,  <30.023926, 35.577488, 46.665001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290485, 35.860943, 46.757736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484710, 0.175476, 0.856892,
		0.566543, -0.683404, 0.460420,
		0.666397, 0.708637, 0.231838,
		30.490404, 36.073532, 46.827290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251150, 35.450432, 47.302017>,  <30.023926, 35.577488, 46.665001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251150, 35.450432, 47.302017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.327766, 35.840855, 47.260799>,  <30.373737, 36.075108, 47.236069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.327766, 35.840855, 47.260799>,  <30.251150, 35.450432, 47.302017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327766, 35.840855, 47.260799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433785, 0.178366, 0.883185,
		0.880421, -0.124467, 0.457565,
		0.191542, 0.976060, -0.103046,
		30.385229, 36.133675, 47.229885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480148, 35.556759, 47.988155>,  <30.251150, 35.450432, 47.302017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480148, 35.556759, 47.988155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.385984, 35.904442, 47.814232>,  <30.329487, 36.113052, 47.709877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.385984, 35.904442, 47.814232>,  <30.480148, 35.556759, 47.988155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385984, 35.904442, 47.814232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465565, 0.291860, 0.835504,
		0.853130, 0.399119, 0.335966,
		-0.235410, 0.869208, -0.434811,
		30.315361, 36.165203, 47.683788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670938, 36.001579, 48.517910>,  <30.480148, 35.556759, 47.988155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670938, 36.001579, 48.517910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.432222, 36.205917, 48.270401>,  <30.288992, 36.328518, 48.121895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.432222, 36.205917, 48.270401>,  <30.670938, 36.001579, 48.517910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432222, 36.205917, 48.270401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424598, 0.453289, 0.783738,
		0.680850, 0.730458, -0.053617,
		-0.596792, 0.510842, -0.618773,
		30.253185, 36.359169, 48.084770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582655, 36.655746, 48.830639>,  <30.670938, 36.001579, 48.517910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582655, 36.655746, 48.830639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.262190, 36.621223, 48.593761>,  <30.069910, 36.600510, 48.451637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.262190, 36.621223, 48.593761>,  <30.582655, 36.655746, 48.830639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262190, 36.621223, 48.593761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592569, 0.252752, 0.764839,
		0.083668, 0.963674, -0.253637,
		-0.801163, -0.086305, -0.592191,
		30.021841, 36.595333, 48.416103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851807, 37.367382, 48.998985>,  <30.582655, 36.655746, 48.830639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851807, 37.367382, 48.998985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.175129, 37.369209, 49.234482>,  <31.369122, 37.370308, 49.375782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.175129, 37.369209, 49.234482>,  <30.851807, 37.367382, 48.998985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175129, 37.369209, 49.234482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566679, 0.265262, -0.780071,
		-0.159738, 0.964165, 0.211823,
		0.808306, 0.004572, 0.588744,
		31.417622, 37.370583, 49.411106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154324, 37.990517, 48.887688>,  <30.851807, 37.367382, 48.998985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154324, 37.990517, 48.887688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.452068, 37.766300, 49.032860>,  <31.630714, 37.631771, 49.119965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.452068, 37.766300, 49.032860>,  <31.154324, 37.990517, 48.887688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452068, 37.766300, 49.032860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558047, 0.223655, -0.799101,
		0.366759, 0.797352, 0.479289,
		0.744360, -0.560543, 0.362932,
		31.675377, 37.598137, 49.141739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747271, 38.394913, 48.730278>,  <31.154324, 37.990517, 48.887688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747271, 38.394913, 48.730278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.867693, 38.023067, 48.815308>,  <31.939945, 37.799961, 48.866325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.867693, 38.023067, 48.815308>,  <31.747271, 38.394913, 48.730278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867693, 38.023067, 48.815308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736931, 0.085315, -0.670563,
		0.605227, 0.358530, 0.710744,
		0.301054, -0.929612, 0.212577,
		31.958010, 37.744183, 48.879082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465347, 38.461842, 48.889645>,  <31.747271, 38.394913, 48.730278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465347, 38.461842, 48.889645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.410233, 38.079105, 48.787296>,  <32.377163, 37.849464, 48.725887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.410233, 38.079105, 48.787296>,  <32.465347, 38.461842, 48.889645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410233, 38.079105, 48.787296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840240, 0.023861, -0.541690,
		0.524416, -0.289631, 0.800688,
		-0.137785, -0.956841, -0.255873,
		32.368896, 37.792053, 48.710533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145245, 38.161968, 48.966209>,  <32.465347, 38.461842, 48.889645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145245, 38.161968, 48.966209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.957264, 37.903778, 48.725376>,  <32.844475, 37.748863, 48.580875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.957264, 37.903778, 48.725376>,  <33.145245, 38.161968, 48.966209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957264, 37.903778, 48.725376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801357, -0.026000, -0.597621,
		0.370095, -0.763339, 0.529475,
		-0.469953, -0.645475, -0.602085,
		32.816277, 37.710136, 48.544750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642006, 37.741009, 48.622742>,  <33.145245, 38.161968, 48.966209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642006, 37.741009, 48.622742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.325211, 37.661583, 48.391804>,  <33.135132, 37.613926, 48.253242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.325211, 37.661583, 48.391804>,  <33.642006, 37.741009, 48.622742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325211, 37.661583, 48.391804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567674, 0.108575, -0.816062,
		0.224728, -0.974055, 0.026731,
		-0.791987, -0.198567, -0.577346,
		33.087616, 37.602013, 48.218601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786297, 37.079803, 48.253201>,  <33.642006, 37.741009, 48.622742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786297, 37.079803, 48.253201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.511612, 37.263336, 48.027672>,  <33.346802, 37.373455, 47.892353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.511612, 37.263336, 48.027672>,  <33.786297, 37.079803, 48.253201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511612, 37.263336, 48.027672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542583, -0.192640, -0.817615,
		-0.483765, -0.867387, -0.116668,
		-0.686714, 0.458835, -0.563822,
		33.305599, 37.400986, 47.858524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591446, 36.550461, 47.823612>,  <33.786297, 37.079803, 48.253201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591446, 36.550461, 47.823612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504868, 36.910038, 47.671268>,  <33.452923, 37.125786, 47.579865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504868, 36.910038, 47.671268>,  <33.591446, 36.550461, 47.823612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504868, 36.910038, 47.671268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462802, -0.249014, -0.850768,
		-0.859632, -0.360402, -0.362136,
		-0.216441, 0.898945, -0.380855,
		33.439934, 37.179722, 47.557011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325291, 36.468689, 47.145260>,  <33.591446, 36.550461, 47.823612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325291, 36.468689, 47.145260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.458130, 36.845970, 47.148865>,  <33.537834, 37.072338, 47.151028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.458130, 36.845970, 47.148865>,  <33.325291, 36.468689, 47.145260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458130, 36.845970, 47.148865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543897, -0.183684, -0.818802,
		-0.770640, 0.276826, -0.574005,
		0.332101, 0.943201, 0.009011,
		33.557758, 37.128929, 47.151569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277073, 36.701302, 46.524372>,  <33.325291, 36.468689, 47.145260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277073, 36.701302, 46.524372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.543606, 36.958630, 46.675179>,  <33.703526, 37.113026, 46.765663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.543606, 36.958630, 46.675179>,  <33.277073, 36.701302, 46.524372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543606, 36.958630, 46.675179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603835, -0.168900, -0.779009,
		-0.437471, 0.746737, -0.501001,
		0.666335, 0.643316, 0.377017,
		33.743507, 37.151623, 46.788284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375679, 37.249077, 46.039059>,  <33.277073, 36.701302, 46.524372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375679, 37.249077, 46.039059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.700493, 37.250050, 46.272503>,  <33.895382, 37.250633, 46.412571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.700493, 37.250050, 46.272503>,  <33.375679, 37.249077, 46.039059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700493, 37.250050, 46.272503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583139, -0.043762, -0.811193,
		0.023568, 0.999039, -0.036954,
		0.812031, 0.002431, 0.583610,
		33.944103, 37.250778, 46.447586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956917, 37.798714, 45.831898>,  <33.375679, 37.249077, 46.039059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956917, 37.798714, 45.831898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.128979, 37.478977, 45.999718>,  <34.232216, 37.287136, 46.100410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.128979, 37.478977, 45.999718>,  <33.956917, 37.798714, 45.831898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128979, 37.478977, 45.999718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670122, -0.028675, -0.741697,
		0.604901, 0.600190, 0.523323,
		0.430153, -0.799343, 0.419546,
		34.258026, 37.239174, 46.125580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.335123, 37.021713, 54.903450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.192591, 37.346840, 54.719120>,  <29.107071, 37.541916, 54.608524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.192591, 37.346840, 54.719120>,  <29.335123, 37.021713, 54.903450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192591, 37.346840, 54.719120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429557, -0.295476, -0.853331,
		-0.829765, -0.502016, -0.243866,
		-0.356329, 0.812819, -0.460820,
		29.085691, 37.590687, 54.580875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157818, 36.788082, 54.309246>,  <29.335123, 37.021713, 54.903450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157818, 36.788082, 54.309246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.161879, 37.176022, 54.211845>,  <29.164316, 37.408787, 54.153404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.161879, 37.176022, 54.211845>,  <29.157818, 36.788082, 54.309246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161879, 37.176022, 54.211845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217116, -0.239842, -0.946222,
		-0.976093, -0.043260, -0.213005,
		0.010154, 0.969848, -0.243501,
		29.164925, 37.466976, 54.138794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768745, 37.019463, 53.650383>,  <29.157818, 36.788082, 54.309246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768745, 37.019463, 53.650383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018402, 37.324539, 53.718208>,  <29.168196, 37.507584, 53.758904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018402, 37.324539, 53.718208>,  <28.768745, 37.019463, 53.650383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018402, 37.324539, 53.718208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418852, -0.143416, -0.896657,
		-0.659553, 0.630663, -0.408967,
		0.624141, 0.762690, 0.169564,
		29.205645, 37.553345, 53.769077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606316, 37.489052, 53.106342>,  <28.768745, 37.019463, 53.650383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606316, 37.489052, 53.106342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975788, 37.560837, 53.241756>,  <29.197472, 37.603909, 53.323006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975788, 37.560837, 53.241756>,  <28.606316, 37.489052, 53.106342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975788, 37.560837, 53.241756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337387, 0.037849, -0.940605,
		-0.181615, 0.983037, -0.025587,
		0.923681, 0.179461, 0.338538,
		29.252892, 37.614674, 53.343319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807423, 38.105453, 52.677135>,  <28.606316, 37.489052, 53.106342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807423, 38.105453, 52.677135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.134577, 37.920803, 52.814518>,  <29.330870, 37.810013, 52.896946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.134577, 37.920803, 52.814518>,  <28.807423, 38.105453, 52.677135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134577, 37.920803, 52.814518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439980, 0.117113, -0.890338,
		0.370783, 0.879308, 0.298893,
		0.817886, -0.461629, 0.343455,
		29.379942, 37.782314, 52.917553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289898, 38.589191, 52.439281>,  <28.807423, 38.105453, 52.677135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289898, 38.589191, 52.439281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.481155, 38.248367, 52.524490>,  <29.595909, 38.043873, 52.575615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.481155, 38.248367, 52.524490>,  <29.289898, 38.589191, 52.439281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481155, 38.248367, 52.524490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556969, 0.106629, -0.823660,
		0.679091, 0.512474, 0.525553,
		0.478144, -0.852057, 0.213021,
		29.624599, 37.992752, 52.588398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064518, 38.669270, 52.363853>,  <29.289898, 38.589191, 52.439281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064518, 38.669270, 52.363853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.027908, 38.271782, 52.338078>,  <30.005943, 38.033291, 52.322613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.027908, 38.271782, 52.338078>,  <30.064518, 38.669270, 52.363853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027908, 38.271782, 52.338078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470803, 0.013845, -0.882130,
		0.877478, -0.111075, 0.466577,
		-0.091523, -0.993715, -0.064444,
		30.000452, 37.973667, 52.318745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762430, 38.445171, 52.262810>,  <30.064518, 38.669270, 52.363853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762430, 38.445171, 52.262810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.519239, 38.158615, 52.125900>,  <30.373325, 37.986683, 52.043755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.519239, 38.158615, 52.125900>,  <30.762430, 38.445171, 52.262810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519239, 38.158615, 52.125900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538092, -0.054801, -0.841102,
		0.583797, -0.695548, 0.418800,
		-0.607978, -0.716387, -0.342276,
		30.336845, 37.943699, 52.023216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183838, 38.164227, 51.916836>,  <30.762430, 38.445171, 52.262810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183838, 38.164227, 51.916836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.868128, 37.949585, 51.797436>,  <30.678701, 37.820801, 51.725796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.868128, 37.949585, 51.797436>,  <31.183838, 38.164227, 51.916836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868128, 37.949585, 51.797436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440914, -0.156941, -0.883722,
		0.427361, -0.829112, 0.360466,
		-0.789276, -0.536603, -0.298497,
		30.631346, 37.788605, 51.707886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456350, 37.631039, 51.683376>,  <31.183838, 38.164227, 51.916836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456350, 37.631039, 51.683376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.097511, 37.591797, 51.511055>,  <30.882208, 37.568253, 51.407661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.097511, 37.591797, 51.511055>,  <31.456350, 37.631039, 51.683376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097511, 37.591797, 51.511055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437137, -0.338844, -0.833124,
		-0.064241, -0.935714, 0.346862,
		-0.897098, -0.098105, -0.430803,
		30.828382, 37.562366, 51.381813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436596, 36.934612, 51.280735>,  <31.456350, 37.631039, 51.683376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436596, 36.934612, 51.280735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.177530, 37.190792, 51.115635>,  <31.022091, 37.344498, 51.016575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.177530, 37.190792, 51.115635>,  <31.436596, 36.934612, 51.280735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177530, 37.190792, 51.115635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278336, -0.305402, -0.910637,
		-0.709268, -0.704668, 0.019539,
		-0.647664, 0.640447, -0.412746,
		30.983231, 37.382927, 50.991810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982660, 36.517189, 50.854321>,  <31.436596, 36.934612, 51.280735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982660, 36.517189, 50.854321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.022730, 36.898026, 50.738739>,  <31.046772, 37.126526, 50.669392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.022730, 36.898026, 50.738739>,  <30.982660, 36.517189, 50.854321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022730, 36.898026, 50.738739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353481, -0.305519, -0.884143,
		-0.930063, -0.013572, -0.367150,
		0.100172, 0.952089, -0.288949,
		31.052782, 37.183651, 50.652054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931757, 36.495853, 50.149670>,  <30.982660, 36.517189, 50.854321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931757, 36.495853, 50.149670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.053642, 36.873486, 50.200050>,  <31.126774, 37.100063, 50.230278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.053642, 36.873486, 50.200050>,  <30.931757, 36.495853, 50.149670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053642, 36.873486, 50.200050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316791, 0.024247, -0.948185,
		-0.898217, 0.328822, -0.291688,
		0.304711, 0.944081, 0.125947,
		31.145056, 37.156712, 50.237835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665012, 36.923363, 49.561531>,  <30.931757, 36.495853, 50.149670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665012, 36.923363, 49.561531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.008017, 37.084198, 49.689903>,  <31.213820, 37.180698, 49.766926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.008017, 37.084198, 49.689903>,  <30.665012, 36.923363, 49.561531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008017, 37.084198, 49.689903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335996, 0.034691, -0.941224,
		-0.389592, 0.914942, -0.105353,
		0.857511, 0.402092, 0.320932,
		31.265270, 37.204826, 49.786182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145758, 37.248497, 49.118752>,  <30.665012, 36.923363, 49.561531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145758, 37.248497, 49.118752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.908342, 37.020126, 48.891857>,  <29.765894, 36.883102, 48.755722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.908342, 37.020126, 48.891857>,  <30.145758, 37.248497, 49.118752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908342, 37.020126, 48.891857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729655, 0.084344, 0.678594,
		-0.339585, 0.816656, -0.466642,
		-0.593536, -0.570928, -0.567236,
		29.730282, 36.848846, 48.721687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489937, 37.598011, 49.013100>,  <30.145758, 37.248497, 49.118752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489937, 37.598011, 49.013100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.426685, 37.203609, 48.991985>,  <29.388735, 36.966969, 48.979317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.426685, 37.203609, 48.991985>,  <29.489937, 37.598011, 49.013100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426685, 37.203609, 48.991985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747097, 0.084522, 0.659319,
		-0.645632, 0.143692, -0.750008,
		-0.158131, -0.986006, -0.052782,
		29.379246, 36.907806, 48.976151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723703, 37.466255, 48.786400>,  <29.489937, 37.598011, 49.013100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723703, 37.466255, 48.786400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.867508, 37.148129, 48.981632>,  <28.953791, 36.957253, 49.098770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.867508, 37.148129, 48.981632>,  <28.723703, 37.466255, 48.786400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867508, 37.148129, 48.981632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726788, 0.089401, 0.681019,
		-0.585260, -0.599566, -0.545885,
		0.359514, -0.795316, 0.488080,
		28.975363, 36.909534, 49.128056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105625, 37.236103, 49.077374>,  <28.723703, 37.466255, 48.786400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105625, 37.236103, 49.077374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374517, 37.005470, 49.263130>,  <28.535852, 36.867092, 49.374584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374517, 37.005470, 49.263130>,  <28.105625, 37.236103, 49.077374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374517, 37.005470, 49.263130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647539, -0.153834, 0.746344,
		-0.358888, -0.802427, -0.476770,
		0.672230, -0.576581, 0.464393,
		28.576187, 36.832497, 49.402447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745193, 36.612198, 49.310593>,  <28.105625, 37.236103, 49.077374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745193, 36.612198, 49.310593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.066710, 36.677353, 49.539463>,  <28.259619, 36.716446, 49.676785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.066710, 36.677353, 49.539463>,  <27.745193, 36.612198, 49.310593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066710, 36.677353, 49.539463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561415, -0.110480, 0.820127,
		0.196807, -0.980439, 0.002647,
		0.803792, 0.162893, 0.572176,
		28.307846, 36.726219, 49.711117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795223, 36.132141, 49.870846>,  <27.745193, 36.612198, 49.310593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795223, 36.132141, 49.870846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.030975, 36.421951, 50.013786>,  <28.172426, 36.595837, 50.099552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.030975, 36.421951, 50.013786>,  <27.795223, 36.132141, 49.870846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030975, 36.421951, 50.013786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524119, 0.006314, 0.851622,
		0.614763, -0.689222, 0.383457,
		0.589378, 0.724522, 0.357353,
		28.207788, 36.639309, 50.120991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943571, 35.882534, 50.577904>,  <27.795223, 36.132141, 49.870846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943571, 35.882534, 50.577904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.024132, 36.274181, 50.566895>,  <28.072468, 36.509171, 50.560291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.024132, 36.274181, 50.566895>,  <27.943571, 35.882534, 50.577904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024132, 36.274181, 50.566895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496161, 0.126204, 0.859009,
		0.844548, -0.159352, 0.511220,
		0.201403, 0.979122, -0.027521,
		28.084553, 36.567917, 50.558640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078030, 36.086426, 51.296986>,  <27.943571, 35.882534, 50.577904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078030, 36.086426, 51.296986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001356, 36.434185, 51.114819>,  <27.955353, 36.642841, 51.005520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001356, 36.434185, 51.114819>,  <28.078030, 36.086426, 51.296986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001356, 36.434185, 51.114819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240706, 0.408205, 0.880585,
		0.951482, 0.278415, 0.131023,
		-0.191684, 0.869399, -0.455415,
		27.943851, 36.695004, 50.978195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459991, 36.511578, 51.704113>,  <28.078030, 36.086426, 51.296986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459991, 36.511578, 51.704113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.164534, 36.710770, 51.522377>,  <27.987259, 36.830284, 51.413338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.164534, 36.710770, 51.522377>,  <28.459991, 36.511578, 51.704113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164534, 36.710770, 51.522377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354970, 0.285639, 0.890172,
		0.573064, 0.818796, -0.034217,
		-0.738643, 0.497980, -0.454337,
		27.942940, 36.860165, 51.386074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296291, 37.194817, 52.079144>,  <28.459991, 36.511578, 51.704113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296291, 37.194817, 52.079144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.951086, 37.151482, 51.881775>,  <27.743963, 37.125481, 51.763351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.951086, 37.151482, 51.881775>,  <28.296291, 37.194817, 52.079144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951086, 37.151482, 51.881775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503809, 0.112718, 0.856429,
		-0.037162, 0.987704, -0.151856,
		-0.863015, -0.108333, -0.493425,
		27.692181, 37.118980, 51.733746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.843225, 37.663742, 52.341377>,  <28.296291, 37.194817, 52.079144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.843225, 37.663742, 52.341377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.627182, 37.372467, 52.172607>,  <27.497555, 37.197701, 52.071346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.627182, 37.372467, 52.172607>,  <27.843225, 37.663742, 52.341377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627182, 37.372467, 52.172607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558642, -0.064748, 0.826878,
		-0.629444, 0.682309, -0.371827,
		-0.540111, -0.728191, -0.421921,
		27.465149, 37.154011, 52.046032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.171318, 37.863724, 52.648346>,  <27.843225, 37.663742, 52.341377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.171318, 37.863724, 52.648346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.111883, 37.493191, 52.509876>,  <27.076221, 37.270870, 52.426792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.111883, 37.493191, 52.509876>,  <27.171318, 37.863724, 52.648346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111883, 37.493191, 52.509876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563690, -0.208284, 0.799294,
		-0.812511, 0.313903, -0.491213,
		-0.148588, -0.926328, -0.346177,
		27.067307, 37.215294, 52.406025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463684, 37.702145, 52.631866>,  <27.171318, 37.863724, 52.648346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463684, 37.702145, 52.631866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.606455, 37.328747, 52.645649>,  <26.692118, 37.104706, 52.653919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.606455, 37.328747, 52.645649>,  <26.463684, 37.702145, 52.631866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606455, 37.328747, 52.645649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524376, -0.169698, 0.834406,
		-0.773067, -0.315891, -0.550073,
		0.356927, -0.933496, 0.034458,
		26.713533, 37.048698, 52.655987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.885002, 37.363171, 52.787403>,  <26.463684, 37.702145, 52.631866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.885002, 37.363171, 52.787403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.189932, 37.118370, 52.871613>,  <26.372889, 36.971489, 52.922138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.189932, 37.118370, 52.871613>,  <25.885002, 37.363171, 52.787403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189932, 37.118370, 52.871613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459558, -0.282831, 0.841910,
		-0.455709, -0.738553, -0.496859,
		0.762322, -0.612002, 0.210519,
		26.418629, 36.934769, 52.934769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.708305, 32.664001, 56.445713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379673, 32.783340, 56.251396>,  <33.182495, 32.854942, 56.134808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379673, 32.783340, 56.251396>,  <33.708305, 32.664001, 56.445713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379673, 32.783340, 56.251396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409007, -0.285141, -0.866838,
		-0.397135, -0.910871, 0.112242,
		-0.821582, 0.298344, -0.485792,
		33.133198, 32.872845, 56.105659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468548, 32.028530, 55.957779>,  <33.708305, 32.664001, 56.445713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468548, 32.028530, 55.957779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.305637, 32.366158, 55.818245>,  <33.207893, 32.568733, 55.734524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.305637, 32.366158, 55.818245>,  <33.468548, 32.028530, 55.957779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305637, 32.366158, 55.818245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298798, -0.237784, -0.924218,
		-0.863046, -0.480640, -0.155361,
		-0.407274, 0.844064, -0.348832,
		33.183456, 32.619377, 55.713596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060955, 31.853750, 55.461750>,  <33.468548, 32.028530, 55.957779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060955, 31.853750, 55.461750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.090103, 32.241894, 55.369579>,  <33.107594, 32.474781, 55.314278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.090103, 32.241894, 55.369579>,  <33.060955, 31.853750, 55.461750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090103, 32.241894, 55.369579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279510, -0.241653, -0.929235,
		-0.957374, 0.003305, -0.288833,
		0.072869, 0.970357, -0.230428,
		33.111965, 32.533001, 55.300449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656677, 32.040668, 54.852718>,  <33.060955, 31.853750, 55.461750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656677, 32.040668, 54.852718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948589, 32.312901, 54.878742>,  <33.123737, 32.476238, 54.894356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948589, 32.312901, 54.878742>,  <32.656677, 32.040668, 54.852718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948589, 32.312901, 54.878742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236615, -0.162150, -0.957978,
		-0.641431, 0.714507, -0.279369,
		0.729781, 0.680579, 0.065055,
		33.167522, 32.517075, 54.898258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655380, 32.385700, 54.228378>,  <32.656677, 32.040668, 54.852718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655380, 32.385700, 54.228378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.016296, 32.462009, 54.383030>,  <33.232845, 32.507793, 54.475822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.016296, 32.462009, 54.383030>,  <32.655380, 32.385700, 54.228378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016296, 32.462009, 54.383030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391290, 0.014169, -0.920158,
		-0.181017, 0.981532, -0.061862,
		0.902289, 0.190771, 0.386629,
		33.286983, 32.519241, 54.499020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848717, 32.869896, 53.832664>,  <32.655380, 32.385700, 54.228378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848717, 32.869896, 53.832664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.178722, 32.709511, 53.991955>,  <33.376724, 32.613281, 54.087528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.178722, 32.709511, 53.991955>,  <32.848717, 32.869896, 53.832664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178722, 32.709511, 53.991955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429054, -0.014186, -0.903168,
		0.367786, 0.915984, 0.160331,
		0.825013, -0.400964, 0.398224,
		33.426228, 32.589222, 54.111423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434322, 33.270756, 53.478214>,  <32.848717, 32.869896, 53.832664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434322, 33.270756, 53.478214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593819, 32.957928, 53.669785>,  <33.689518, 32.770229, 53.784729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593819, 32.957928, 53.669785>,  <33.434322, 33.270756, 53.478214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593819, 32.957928, 53.669785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583549, -0.186492, -0.790374,
		0.707444, 0.594633, 0.382014,
		0.398740, -0.782069, 0.478930,
		33.713440, 32.723309, 53.813465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134731, 33.427864, 53.455025>,  <33.434322, 33.270756, 53.478214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134731, 33.427864, 53.455025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.079071, 33.036926, 53.518810>,  <34.045673, 32.802364, 53.557079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.079071, 33.036926, 53.518810>,  <34.134731, 33.427864, 53.455025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079071, 33.036926, 53.518810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595643, -0.211251, -0.774973,
		0.791104, -0.012859, 0.611547,
		-0.139155, -0.977347, 0.159462,
		34.037323, 32.743721, 53.566650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777164, 33.097126, 53.351353>,  <34.134731, 33.427864, 53.455025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777164, 33.097126, 53.351353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.545692, 32.771122, 53.339424>,  <34.406807, 32.575520, 53.332268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.545692, 32.771122, 53.339424>,  <34.777164, 33.097126, 53.351353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545692, 32.771122, 53.339424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513607, -0.335789, -0.789591,
		0.633510, -0.472237, 0.612908,
		-0.578682, -0.815008, -0.029819,
		34.372089, 32.526619, 53.330479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174358, 32.609547, 53.508472>,  <34.777164, 33.097126, 53.351353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174358, 32.609547, 53.508472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.869324, 32.458630, 53.298286>,  <34.686302, 32.368080, 53.172173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.869324, 32.458630, 53.298286>,  <35.174358, 32.609547, 53.508472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869324, 32.458630, 53.298286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646179, -0.482383, -0.591405,
		-0.030341, -0.790541, 0.611657,
		-0.762582, -0.377296, -0.525467,
		34.640549, 32.345440, 53.140648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289886, 31.904036, 53.394886>,  <35.174358, 32.609547, 53.508472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289886, 31.904036, 53.394886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033699, 32.013756, 53.107956>,  <34.879986, 32.079590, 52.935799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033699, 32.013756, 53.107956>,  <35.289886, 31.904036, 53.394886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033699, 32.013756, 53.107956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521612, -0.530167, -0.668464,
		-0.563661, -0.802298, 0.196480,
		-0.640474, 0.274301, -0.717323,
		34.841557, 32.096046, 52.892757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464886, 31.375040, 52.917797>,  <35.289886, 31.904036, 53.394886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464886, 31.375040, 52.917797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.262806, 31.656185, 52.717495>,  <35.141560, 31.824873, 52.597313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.262806, 31.656185, 52.717495>,  <35.464886, 31.375040, 52.917797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262806, 31.656185, 52.717495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492308, -0.241856, -0.836145,
		-0.708808, -0.668944, -0.223841,
		-0.505197, 0.702865, -0.500756,
		35.111248, 31.867044, 52.567268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253315, 30.958595, 52.409397>,  <35.464886, 31.375040, 52.917797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253315, 30.958595, 52.409397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268398, 31.343727, 52.302414>,  <35.277451, 31.574806, 52.238224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268398, 31.343727, 52.302414>,  <35.253315, 30.958595, 52.409397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268398, 31.343727, 52.302414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565468, -0.241236, -0.788702,
		-0.823907, -0.121494, -0.553548,
		0.037713, 0.962831, -0.267457,
		35.279713, 31.632576, 52.222176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166203, 30.917395, 51.724403>,  <35.253315, 30.958595, 52.409397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166203, 30.917395, 51.724403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.312740, 31.289381, 51.736786>,  <35.400661, 31.512573, 51.744217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.312740, 31.289381, 51.736786>,  <35.166203, 30.917395, 51.724403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312740, 31.289381, 51.736786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450527, -0.148172, -0.880381,
		-0.814136, 0.336469, -0.473256,
		0.366344, 0.929964, 0.030957,
		35.422642, 31.568371, 51.746075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447674, 31.088917, 51.554768>,  <35.166203, 30.917395, 51.724403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447674, 31.088917, 51.554768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.158878, 30.862221, 51.396004>,  <33.985603, 30.726202, 51.300743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.158878, 30.862221, 51.396004>,  <34.447674, 31.088917, 51.554768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158878, 30.862221, 51.396004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474308, -0.012259, 0.880274,
		-0.503753, 0.823805, -0.259959,
		-0.721987, -0.566741, -0.396913,
		33.942284, 30.692198, 51.276932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770420, 31.417532, 51.722057>,  <34.447674, 31.088917, 51.554768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770420, 31.417532, 51.722057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685642, 31.036051, 51.636700>,  <33.634777, 30.807163, 51.585487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685642, 31.036051, 51.636700>,  <33.770420, 31.417532, 51.722057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685642, 31.036051, 51.636700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648820, -0.025973, 0.760499,
		-0.730831, 0.299633, -0.613276,
		-0.211942, -0.953701, -0.213390,
		33.622059, 30.749941, 51.572681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112484, 31.380497, 51.700733>,  <33.770420, 31.417532, 51.722057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112484, 31.380497, 51.700733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.186676, 30.988619, 51.731194>,  <33.231190, 30.753492, 51.749470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.186676, 30.988619, 51.731194>,  <33.112484, 31.380497, 51.700733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186676, 30.988619, 51.731194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734989, -0.086880, 0.672490,
		-0.652219, -0.180699, -0.736178,
		0.185478, -0.979693, 0.076147,
		33.242321, 30.694710, 51.754036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457928, 31.123110, 51.604660>,  <33.112484, 31.380497, 51.700733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457928, 31.123110, 51.604660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.680119, 30.847845, 51.791370>,  <32.813431, 30.682686, 51.903397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.680119, 30.847845, 51.791370>,  <32.457928, 31.123110, 51.604660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680119, 30.847845, 51.791370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750076, -0.172366, 0.638495,
		-0.358935, -0.704783, -0.611921,
		0.555475, -0.688165, 0.466772,
		32.846760, 30.641396, 51.931404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970486, 30.555120, 51.747887>,  <32.457928, 31.123110, 51.604660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970486, 30.555120, 51.747887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.275440, 30.507668, 52.002350>,  <32.458412, 30.479197, 52.155025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.275440, 30.507668, 52.002350>,  <31.970486, 30.555120, 51.747887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275440, 30.507668, 52.002350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645932, -0.079963, 0.759195,
		-0.039194, -0.989714, -0.137589,
		0.762388, -0.118629, 0.636154,
		32.504158, 30.472078, 52.193195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689514, 29.993885, 52.189121>,  <31.970486, 30.555120, 51.747887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689514, 29.993885, 52.189121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.979511, 30.183496, 52.388992>,  <32.153511, 30.297264, 52.508915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.979511, 30.183496, 52.388992>,  <31.689514, 29.993885, 52.189121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979511, 30.183496, 52.388992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559959, -0.016763, 0.828350,
		0.401040, -0.880349, 0.253285,
		0.724992, 0.474031, 0.499682,
		32.197010, 30.325706, 52.538898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657639, 29.754160, 52.907795>,  <31.689514, 29.993885, 52.189121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657639, 29.754160, 52.907795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.891121, 30.075346, 52.956020>,  <32.031212, 30.268057, 52.984955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.891121, 30.075346, 52.956020>,  <31.657639, 29.754160, 52.907795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891121, 30.075346, 52.956020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400838, 0.155833, 0.902798,
		0.706129, -0.575293, 0.412820,
		0.583705, 0.802965, 0.120561,
		32.066231, 30.316236, 52.992188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654726, 29.811680, 53.568501>,  <31.657639, 29.754160, 52.907795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654726, 29.811680, 53.568501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.786858, 30.173508, 53.460693>,  <31.866137, 30.390604, 53.396011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.786858, 30.173508, 53.460693>,  <31.654726, 29.811680, 53.568501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786858, 30.173508, 53.460693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417680, 0.396154, 0.817683,
		0.846420, -0.157535, 0.508682,
		0.330329, 0.904569, -0.269513,
		31.885956, 30.444878, 53.379841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981976, 30.101383, 54.130337>,  <31.654726, 29.811680, 53.568501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981976, 30.101383, 54.130337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.878492, 30.433153, 53.932297>,  <31.816402, 30.632215, 53.813473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.878492, 30.433153, 53.932297>,  <31.981976, 30.101383, 54.130337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878492, 30.433153, 53.932297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486259, 0.331046, 0.808678,
		0.834639, 0.449957, 0.317672,
		-0.258706, 0.829426, -0.495100,
		31.800880, 30.681980, 53.783768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177368, 30.633224, 54.558849>,  <31.981976, 30.101383, 54.130337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177368, 30.633224, 54.558849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.914761, 30.787949, 54.299816>,  <31.757196, 30.880783, 54.144398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.914761, 30.787949, 54.299816>,  <32.177368, 30.633224, 54.558849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914761, 30.787949, 54.299816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468371, 0.463918, 0.751936,
		0.591280, 0.796969, -0.123401,
		-0.656518, 0.386808, -0.647583,
		31.717806, 30.903992, 54.105541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067402, 31.340353, 54.670792>,  <32.177368, 30.633224, 54.558849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067402, 31.340353, 54.670792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.719643, 31.223135, 54.511658>,  <31.510986, 31.152803, 54.416180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.719643, 31.223135, 54.511658>,  <32.067402, 31.340353, 54.670792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719643, 31.223135, 54.511658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485458, 0.356571, 0.798240,
		-0.092066, 0.887119, -0.452265,
		-0.869399, -0.293047, -0.397831,
		31.458822, 31.135221, 54.392307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684093, 31.943630, 54.649628>,  <32.067402, 31.340353, 54.670792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684093, 31.943630, 54.649628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.457357, 31.614126, 54.653809>,  <31.321316, 31.416424, 54.656315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.457357, 31.614126, 54.653809>,  <31.684093, 31.943630, 54.649628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457357, 31.614126, 54.653809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665121, 0.465089, 0.584215,
		-0.486112, 0.324208, -0.811532,
		-0.566841, -0.823761, 0.010448,
		31.287306, 31.366999, 54.656944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993256, 32.200279, 54.692665>,  <31.684093, 31.943630, 54.649628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993256, 32.200279, 54.692665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.926075, 31.821905, 54.803658>,  <30.885767, 31.594881, 54.870255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.926075, 31.821905, 54.803658>,  <30.993256, 32.200279, 54.692665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926075, 31.821905, 54.803658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744994, 0.306131, 0.592679,
		-0.645583, -0.107184, -0.756131,
		-0.167949, -0.945936, 0.277484,
		30.875690, 31.538124, 54.886902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222269, 32.065872, 54.585297>,  <30.993256, 32.200279, 54.692665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222269, 32.065872, 54.585297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.372183, 31.808456, 54.852249>,  <30.462132, 31.654007, 55.012421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.372183, 31.808456, 54.852249>,  <30.222269, 32.065872, 54.585297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372183, 31.808456, 54.852249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705247, 0.269365, 0.655797,
		-0.601800, -0.716448, -0.352901,
		0.374785, -0.643541, 0.667376,
		30.484619, 31.615395, 55.052464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591007, 31.738770, 54.269306>,  <30.222269, 32.065872, 54.585297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591007, 31.738770, 54.269306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.252365, 31.861744, 54.095528>,  <29.049181, 31.935530, 53.991261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.252365, 31.861744, 54.095528>,  <29.591007, 31.738770, 54.269306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252365, 31.861744, 54.095528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321706, -0.354679, -0.877900,
		-0.423988, -0.882998, 0.201368,
		-0.846604, 0.307438, -0.434446,
		28.998384, 31.953976, 53.965195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301533, 31.192993, 53.860798>,  <29.591007, 31.738770, 54.269306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301533, 31.192993, 53.860798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.177256, 31.542311, 53.710690>,  <29.102690, 31.751902, 53.620625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.177256, 31.542311, 53.710690>,  <29.301533, 31.192993, 53.860798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177256, 31.542311, 53.710690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327627, -0.272226, -0.904740,
		-0.892261, -0.404046, -0.201536,
		-0.310693, 0.873293, -0.375273,
		29.084047, 31.804298, 53.598106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132034, 30.919901, 53.292404>,  <29.301533, 31.192993, 53.860798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132034, 30.919901, 53.292404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.105274, 31.312519, 53.220749>,  <29.089218, 31.548090, 53.177753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.105274, 31.312519, 53.220749>,  <29.132034, 30.919901, 53.292404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105274, 31.312519, 53.220749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169663, -0.165738, -0.971466,
		-0.983229, -0.095385, -0.155444,
		-0.066901, 0.981546, -0.179142,
		29.085203, 31.606983, 53.167007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679329, 31.151970, 52.623924>,  <29.132034, 30.919901, 53.292404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679329, 31.151970, 52.623924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.944973, 31.439898, 52.704735>,  <29.104361, 31.612654, 52.753220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.944973, 31.439898, 52.704735>,  <28.679329, 31.151970, 52.623924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944973, 31.439898, 52.704735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347643, -0.058089, -0.935826,
		-0.661891, 0.691725, -0.288819,
		0.664111, 0.719821, 0.202025,
		29.144207, 31.655844, 52.765343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602184, 31.516632, 51.919556>,  <28.679329, 31.151970, 52.623924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602184, 31.516632, 51.919556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.941797, 31.623550, 52.101849>,  <29.145565, 31.687702, 52.211224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.941797, 31.623550, 52.101849>,  <28.602184, 31.516632, 51.919556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941797, 31.623550, 52.101849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483133, -0.043680, -0.874457,
		-0.213834, 0.962623, -0.166227,
		0.849033, 0.267298, 0.455735,
		29.196507, 31.703739, 52.238567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936283, 32.128799, 51.554142>,  <28.602184, 31.516632, 51.919556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936283, 32.128799, 51.554142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.258774, 31.993248, 51.748116>,  <29.452269, 31.911917, 51.864498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.258774, 31.993248, 51.748116>,  <28.936283, 32.128799, 51.554142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258774, 31.993248, 51.748116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488963, -0.079730, -0.868653,
		0.333032, 0.937445, 0.101418,
		0.806229, -0.338879, 0.484929,
		29.500643, 31.891584, 51.893593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508991, 32.473152, 51.330719>,  <28.936283, 32.128799, 51.554142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508991, 32.473152, 51.330719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.667227, 32.145348, 51.496567>,  <29.762169, 31.948666, 51.596077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.667227, 32.145348, 51.496567>,  <29.508991, 32.473152, 51.330719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667227, 32.145348, 51.496567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681893, -0.040343, -0.730338,
		0.615248, 0.571640, 0.542861,
		0.395590, -0.819512, 0.414618,
		29.785904, 31.899494, 51.620953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237724, 32.574287, 51.386402>,  <29.508991, 32.473152, 51.330719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237724, 32.574287, 51.386402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.190571, 32.177879, 51.411629>,  <30.162279, 31.940033, 51.426765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.190571, 32.177879, 51.411629>,  <30.237724, 32.574287, 51.386402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190571, 32.177879, 51.411629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705079, -0.128255, -0.697434,
		0.699262, -0.037746, 0.713868,
		-0.117883, -0.991023, 0.063069,
		30.155207, 31.880573, 51.430550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929312, 32.263252, 51.231415>,  <30.237724, 32.574287, 51.386402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929312, 32.263252, 51.231415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.674425, 31.963999, 51.157387>,  <30.521494, 31.784447, 51.112968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.674425, 31.963999, 51.157387>,  <30.929312, 32.263252, 51.231415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674425, 31.963999, 51.157387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469319, -0.186211, -0.863172,
		0.611308, -0.636882, 0.469770,
		-0.637215, -0.748135, -0.185068,
		30.483261, 31.739557, 51.101868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312910, 31.666189, 51.116306>,  <30.929312, 32.263252, 51.231415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312910, 31.666189, 51.116306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.955229, 31.609043, 50.946606>,  <30.740620, 31.574755, 50.844788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.955229, 31.609043, 50.946606>,  <31.312910, 31.666189, 51.116306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955229, 31.609043, 50.946606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447608, -0.271056, -0.852160,
		0.006749, -0.951902, 0.306327,
		-0.894205, -0.142865, -0.424250,
		30.686968, 31.566183, 50.819332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376980, 31.082663, 50.760868>,  <31.312910, 31.666189, 51.116306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376980, 31.082663, 50.760868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.050564, 31.235016, 50.586971>,  <30.854713, 31.326427, 50.482632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.050564, 31.235016, 50.586971>,  <31.376980, 31.082663, 50.760868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050564, 31.235016, 50.586971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389924, -0.192449, -0.900513,
		-0.426657, -0.904373, 0.008530,
		-0.816041, 0.380884, -0.434747,
		30.805752, 31.349281, 50.456547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223871, 30.593317, 50.255505>,  <31.376980, 31.082663, 50.760868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223871, 30.593317, 50.255505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.043495, 30.937254, 50.159733>,  <30.935270, 31.143616, 50.102268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.043495, 30.937254, 50.159733>,  <31.223871, 30.593317, 50.255505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043495, 30.937254, 50.159733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253032, -0.134100, -0.958119,
		-0.855938, -0.492636, -0.157097,
		-0.450938, 0.859841, -0.239434,
		30.908215, 31.195206, 50.087902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787411, 30.421051, 49.581673>,  <31.223871, 30.593317, 50.255505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787411, 30.421051, 49.581673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.861923, 30.813051, 49.609665>,  <30.906630, 31.048252, 49.626461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.861923, 30.813051, 49.609665>,  <30.787411, 30.421051, 49.581673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861923, 30.813051, 49.609665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140561, 0.043912, -0.989098,
		-0.972390, 0.194085, -0.129570,
		0.186279, 0.980001, 0.069981,
		30.917807, 31.107052, 49.630661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264820, 30.739357, 49.066460>,  <30.787411, 30.421051, 49.581673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264820, 30.739357, 49.066460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.561365, 30.990864, 49.160301>,  <30.739292, 31.141768, 49.216606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.561365, 30.990864, 49.160301>,  <30.264820, 30.739357, 49.066460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561365, 30.990864, 49.160301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208047, 0.117022, -0.971093,
		-0.638043, 0.768739, -0.044057,
		0.741362, 0.628765, 0.234599,
		30.783773, 31.179493, 49.230682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.524931, 36.571766, 52.933495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.891857, 36.566143, 53.092663>,  <26.112013, 36.562771, 53.188164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.891857, 36.566143, 53.092663>,  <25.524931, 36.571766, 52.933495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891857, 36.566143, 53.092663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391390, -0.215404, 0.894659,
		0.073137, -0.976424, -0.203095,
		0.917314, -0.014057, 0.397916,
		26.167051, 36.561924, 53.212036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648314, 35.988316, 53.279701>,  <25.524931, 36.571766, 52.933495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648314, 35.988316, 53.279701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.906044, 36.244308, 53.447159>,  <26.060682, 36.397903, 53.547634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.906044, 36.244308, 53.447159>,  <25.648314, 35.988316, 53.279701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906044, 36.244308, 53.447159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354878, -0.234700, 0.904974,
		0.677425, -0.731667, 0.075893,
		0.644327, 0.639984, 0.418644,
		26.099342, 36.436302, 53.572750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050241, 35.594765, 53.801666>,  <25.648314, 35.988316, 53.279701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050241, 35.594765, 53.801666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.120844, 35.976521, 53.897991>,  <26.163204, 36.205574, 53.955784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.120844, 35.976521, 53.897991>,  <26.050241, 35.594765, 53.801666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.120844, 35.976521, 53.897991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076260, -0.230656, 0.970042,
		0.981341, -0.189580, 0.032070,
		0.176504, 0.954388, 0.240809,
		26.173796, 36.262836, 53.970234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646296, 35.706982, 54.312046>,  <26.050241, 35.594765, 53.801666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646296, 35.706982, 54.312046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.426659, 36.038044, 54.358509>,  <26.294876, 36.236679, 54.386387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.426659, 36.038044, 54.358509>,  <26.646296, 35.706982, 54.312046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426659, 36.038044, 54.358509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138394, -0.227110, 0.963986,
		0.824225, 0.513239, 0.239246,
		-0.549090, 0.827651, 0.116160,
		26.261932, 36.286339, 54.393356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952671, 36.002090, 54.880623>,  <26.646296, 35.706982, 54.312046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952671, 36.002090, 54.880623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.603275, 36.191277, 54.834461>,  <26.393639, 36.304790, 54.806767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.603275, 36.191277, 54.834461>,  <26.952671, 36.002090, 54.880623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603275, 36.191277, 54.834461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169843, -0.073900, 0.982696,
		0.456256, 0.877975, 0.144881,
		-0.873490, 0.472968, -0.115400,
		26.341228, 36.333168, 54.799843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.008194, 36.648960, 55.268436>,  <26.952671, 36.002090, 54.880623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.008194, 36.648960, 55.268436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.631453, 36.519157, 55.233551>,  <26.405407, 36.441277, 55.212620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.631453, 36.519157, 55.233551>,  <27.008194, 36.648960, 55.268436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631453, 36.519157, 55.233551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102551, 0.030434, 0.994262,
		-0.319992, 0.945393, -0.061943,
		-0.941854, -0.324508, -0.087212,
		26.348896, 36.421806, 55.207386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709311, 36.965710, 55.759583>,  <27.008194, 36.648960, 55.268436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709311, 36.965710, 55.759583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.439581, 36.678009, 55.692688>,  <26.277742, 36.505390, 55.652554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.439581, 36.678009, 55.692688>,  <26.709311, 36.965710, 55.759583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439581, 36.678009, 55.692688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211563, -0.028798, 0.976940,
		-0.707480, 0.694155, -0.132748,
		-0.674325, -0.719249, -0.167232,
		26.237284, 36.462234, 55.642517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225056, 37.023781, 56.244286>,  <26.709311, 36.965710, 55.759583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225056, 37.023781, 56.244286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.134123, 36.645935, 56.149616>,  <26.079563, 36.419228, 56.092815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.134123, 36.645935, 56.149616>,  <26.225056, 37.023781, 56.244286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134123, 36.645935, 56.149616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107950, -0.217096, 0.970163,
		-0.967816, 0.246098, -0.052619,
		-0.227331, -0.944619, -0.236676,
		26.065924, 36.362549, 56.078613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.586126, 36.887474, 56.594147>,  <26.225056, 37.023781, 56.244286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.586126, 36.887474, 56.594147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.783943, 36.545521, 56.531399>,  <25.902634, 36.340347, 56.493752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.783943, 36.545521, 56.531399>,  <25.586126, 36.887474, 56.594147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.783943, 36.545521, 56.531399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089937, -0.229847, 0.969062,
		-0.864489, -0.465132, -0.190554,
		0.494540, -0.854881, -0.156868,
		25.932304, 36.289055, 56.484337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.170286, 36.357399, 56.866238>,  <25.586126, 36.887474, 56.594147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.170286, 36.357399, 56.866238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.522652, 36.168278, 56.857777>,  <25.734072, 36.054806, 56.852699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.522652, 36.168278, 56.857777>,  <25.170286, 36.357399, 56.866238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522652, 36.168278, 56.857777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212666, -0.435365, 0.874774,
		-0.422790, -0.766110, -0.484069,
		0.880920, -0.472791, -0.021142,
		25.786926, 36.026436, 56.851433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.049061, 35.697128, 57.144257>,  <25.170286, 36.357399, 56.866238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.049061, 35.697128, 57.144257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.439213, 35.772076, 57.190784>,  <25.673304, 35.817043, 57.218700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.439213, 35.772076, 57.190784>,  <25.049061, 35.697128, 57.144257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.439213, 35.772076, 57.190784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000286, -0.528525, 0.848918,
		0.220535, -0.827983, -0.515566,
		0.975379, 0.187364, 0.116321,
		25.731827, 35.828285, 57.225681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.110516, 35.243233, 57.582592>,  <25.049061, 35.697128, 57.144257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.110516, 35.243233, 57.582592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.475225, 35.407234, 57.573093>,  <25.694052, 35.505634, 57.567394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.475225, 35.407234, 57.573093>,  <25.110516, 35.243233, 57.582592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.475225, 35.407234, 57.573093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235878, -0.475454, 0.847529,
		0.336199, -0.778357, -0.530218,
		0.911774, 0.410005, -0.023750,
		25.748758, 35.530235, 57.565968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570354, 34.619286, 57.698490>,  <25.110516, 35.243233, 57.582592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.570354, 34.619286, 57.698490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.725584, 34.968853, 57.815559>,  <25.818722, 35.178596, 57.885799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.725584, 34.968853, 57.815559>,  <25.570354, 34.619286, 57.698490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725584, 34.968853, 57.815559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185393, -0.385091, 0.904065,
		0.902789, -0.296585, -0.311463,
		0.388074, 0.873923, 0.292672,
		25.842007, 35.231030, 57.903362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205843, 34.477413, 57.994045>,  <25.570354, 34.619286, 57.698490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205843, 34.477413, 57.994045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.081917, 34.820122, 58.158947>,  <26.007561, 35.025749, 58.257889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.081917, 34.820122, 58.158947>,  <26.205843, 34.477413, 57.994045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081917, 34.820122, 58.158947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264400, -0.338850, 0.902925,
		0.913295, 0.388740, -0.121550,
		-0.309815, 0.856774, 0.412253,
		25.988972, 35.077152, 58.282623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414618, 34.303482, 58.701992>,  <26.205843, 34.477413, 57.994045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414618, 34.303482, 58.701992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.515781, 33.918373, 58.740147>,  <26.576481, 33.687305, 58.763039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.515781, 33.918373, 58.740147>,  <26.414618, 34.303482, 58.701992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515781, 33.918373, 58.740147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283396, -0.020550, -0.958783,
		0.925053, 0.269520, 0.267649,
		0.252911, -0.962775, 0.095390,
		26.591654, 33.629539, 58.768764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051262, 34.268326, 58.428387>,  <26.414618, 34.303482, 58.701992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051262, 34.268326, 58.428387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.901155, 33.898067, 58.408978>,  <26.811092, 33.675911, 58.397331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.901155, 33.898067, 58.408978>,  <27.051262, 34.268326, 58.428387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901155, 33.898067, 58.408978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275555, -0.061422, -0.959321,
		0.885011, -0.373371, 0.278116,
		-0.375266, -0.925646, -0.048525,
		26.788576, 33.620373, 58.394421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502466, 33.898880, 58.024395>,  <27.051262, 34.268326, 58.428387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502466, 33.898880, 58.024395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.180746, 33.662056, 58.004147>,  <26.987713, 33.519962, 57.991997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.180746, 33.662056, 58.004147>,  <27.502466, 33.898880, 58.024395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180746, 33.662056, 58.004147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174125, -0.153384, -0.972704,
		0.568135, -0.791162, 0.226460,
		-0.804302, -0.592060, -0.050619,
		26.939455, 33.484440, 57.988960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764191, 33.235405, 57.798294>,  <27.502466, 33.898880, 58.024395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764191, 33.235405, 57.798294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.371256, 33.229267, 57.723694>,  <27.135496, 33.225586, 57.678936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.371256, 33.229267, 57.723694>,  <27.764191, 33.235405, 57.798294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371256, 33.229267, 57.723694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184743, -0.238117, -0.953504,
		-0.029776, -0.971116, 0.236746,
		-0.982336, -0.015346, -0.186497,
		27.076555, 33.224663, 57.667744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721695, 32.633644, 57.530468>,  <27.764191, 33.235405, 57.798294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721695, 32.633644, 57.530468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.387991, 32.820805, 57.413795>,  <27.187769, 32.933102, 57.343792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.387991, 32.820805, 57.413795>,  <27.721695, 32.633644, 57.530468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387991, 32.820805, 57.413795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179762, -0.269291, -0.946133,
		-0.521244, -0.841755, 0.140548,
		-0.834260, 0.467902, -0.291682,
		27.137712, 32.961174, 57.326290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328915, 32.229805, 57.211823>,  <27.721695, 32.633644, 57.530468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328915, 32.229805, 57.211823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.209042, 32.576580, 57.052517>,  <27.137117, 32.784645, 56.956936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.209042, 32.576580, 57.052517>,  <27.328915, 32.229805, 57.211823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209042, 32.576580, 57.052517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195591, -0.352751, -0.915047,
		-0.933775, -0.352118, -0.063852,
		-0.299681, 0.866937, -0.398261,
		27.119137, 32.836662, 56.933037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002354, 32.113617, 56.570633>,  <27.328915, 32.229805, 57.211823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002354, 32.113617, 56.570633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.085991, 32.500790, 56.514931>,  <27.136173, 32.733093, 56.481510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.085991, 32.500790, 56.514931>,  <27.002354, 32.113617, 56.570633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085991, 32.500790, 56.514931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173553, -0.176872, -0.968811,
		-0.962372, 0.178402, -0.204970,
		0.209091, 0.967930, -0.139255,
		27.148718, 32.791168, 56.473156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927441, 32.141350, 55.859161>,  <27.002354, 32.113617, 56.570633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927441, 32.141350, 55.859161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.097143, 32.485535, 55.972019>,  <27.198965, 32.692047, 56.039734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.097143, 32.485535, 55.972019>,  <26.927441, 32.141350, 55.859161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097143, 32.485535, 55.972019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374870, 0.116732, -0.919699,
		-0.824304, 0.495956, -0.273038,
		0.424259, 0.860466, 0.282141,
		27.224421, 32.743675, 56.056664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738033, 32.674690, 55.369995>,  <26.927441, 32.141350, 55.859161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738033, 32.674690, 55.369995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.074818, 32.801922, 55.544319>,  <27.276888, 32.878262, 55.648914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.074818, 32.801922, 55.544319>,  <26.738033, 32.674690, 55.369995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.074818, 32.801922, 55.544319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443197, 0.052932, -0.894860,
		-0.307701, 0.946587, -0.096404,
		0.841960, 0.318075, 0.435812,
		27.327406, 32.897343, 55.675064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053146, 33.003792, 54.847164>,  <26.738033, 32.674690, 55.369995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053146, 33.003792, 54.847164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.346766, 32.928905, 55.108276>,  <27.522936, 32.883972, 55.264946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.346766, 32.928905, 55.108276>,  <27.053146, 33.003792, 54.847164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346766, 32.928905, 55.108276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626489, -0.184284, -0.757332,
		0.262083, 0.964878, -0.017984,
		0.734047, -0.187217, 0.652783,
		27.566980, 32.872742, 55.304111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712811, 33.311260, 54.628788>,  <27.053146, 33.003792, 54.847164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712811, 33.311260, 54.628788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.829847, 33.026165, 54.883785>,  <27.900070, 32.855110, 55.036785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.829847, 33.026165, 54.883785>,  <27.712811, 33.311260, 54.628788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829847, 33.026165, 54.883785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672080, -0.320954, -0.667305,
		0.680218, 0.623695, 0.385107,
		0.292594, -0.712736, 0.637492,
		27.917625, 32.812344, 55.075031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401505, 33.308430, 54.487038>,  <27.712811, 33.311260, 54.628788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401505, 33.308430, 54.487038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.329388, 32.951447, 54.652451>,  <28.286118, 32.737255, 54.751698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.329388, 32.951447, 54.652451>,  <28.401505, 33.308430, 54.487038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329388, 32.951447, 54.652451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632835, -0.427101, -0.645836,
		0.753004, 0.145262, 0.641782,
		-0.180291, -0.892459, 0.413536,
		28.275301, 32.683708, 54.776512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083147, 32.993179, 54.641819>,  <28.401505, 33.308430, 54.487038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083147, 32.993179, 54.641819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.828411, 32.685814, 54.616611>,  <28.675570, 32.501392, 54.601486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.828411, 32.685814, 54.616611>,  <29.083147, 32.993179, 54.641819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828411, 32.685814, 54.616611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494803, -0.344656, -0.797736,
		0.591273, -0.539212, 0.599705,
		-0.636841, -0.768416, -0.063018,
		28.637360, 32.455288, 54.597706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459980, 32.421371, 54.530174>,  <29.083147, 32.993179, 54.641819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459980, 32.421371, 54.530174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.101627, 32.302914, 54.397694>,  <28.886616, 32.231838, 54.318207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.101627, 32.302914, 54.397694>,  <29.459980, 32.421371, 54.530174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101627, 32.302914, 54.397694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441750, -0.514120, -0.735213,
		0.047454, -0.804971, 0.591413,
		-0.895883, -0.296145, -0.331199,
		28.832863, 32.214069, 54.298332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573448, 31.844477, 55.153679>,  <29.459980, 32.421371, 54.530174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573448, 31.844477, 55.153679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.919544, 31.704556, 55.297344>,  <30.127201, 31.620604, 55.383545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.919544, 31.704556, 55.297344>,  <29.573448, 31.844477, 55.153679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919544, 31.704556, 55.297344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382931, 0.001319, 0.923776,
		-0.323614, -0.936822, -0.132809,
		0.865238, -0.349804, 0.359165,
		30.179115, 31.599615, 55.405094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405222, 31.322346, 55.663883>,  <29.573448, 31.844477, 55.153679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405222, 31.322346, 55.663883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.774044, 31.454266, 55.744926>,  <29.995337, 31.533417, 55.793552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.774044, 31.454266, 55.744926>,  <29.405222, 31.322346, 55.663883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774044, 31.454266, 55.744926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199838, -0.042661, 0.978900,
		0.331483, -0.943087, 0.026571,
		0.922054, 0.329798, 0.202606,
		30.050661, 31.553205, 55.805710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827374, 30.854610, 56.232048>,  <29.405222, 31.322346, 55.663883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827374, 30.854610, 56.232048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.009048, 31.210896, 56.239494>,  <30.118053, 31.424665, 56.243961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.009048, 31.210896, 56.239494>,  <29.827374, 30.854610, 56.232048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009048, 31.210896, 56.239494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096748, 0.028541, 0.994900,
		0.885637, -0.453672, 0.099137,
		0.454188, 0.890711, 0.018615,
		30.145306, 31.478109, 56.245079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363228, 30.821032, 56.696625>,  <29.827374, 30.854610, 56.232048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363228, 30.821032, 56.696625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.256838, 31.205408, 56.666023>,  <30.193005, 31.436033, 56.647663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.256838, 31.205408, 56.666023>,  <30.363228, 30.821032, 56.696625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256838, 31.205408, 56.666023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227923, 0.014427, 0.973572,
		0.936648, 0.276383, 0.215183,
		-0.265974, 0.960939, -0.076507,
		30.177046, 31.493690, 56.643070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672098, 31.153090, 57.201248>,  <30.363228, 30.821032, 56.696625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672098, 31.153090, 57.201248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.374495, 31.395277, 57.088207>,  <30.195932, 31.540588, 57.020382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.374495, 31.395277, 57.088207>,  <30.672098, 31.153090, 57.201248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374495, 31.395277, 57.088207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315323, 0.054724, 0.947405,
		0.589087, 0.793987, 0.150202,
		-0.744008, 0.605467, -0.282599,
		30.151293, 31.576918, 57.003426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814732, 31.685064, 57.608505>,  <30.672098, 31.153090, 57.201248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814732, 31.685064, 57.608505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.438972, 31.750504, 57.487991>,  <30.213518, 31.789766, 57.415684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.438972, 31.750504, 57.487991>,  <30.814732, 31.685064, 57.608505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438972, 31.750504, 57.487991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291098, 0.083586, 0.953035,
		0.181097, 0.982980, -0.030897,
		-0.939397, 0.163597, -0.301280,
		30.157154, 31.799583, 57.397606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590086, 32.364395, 57.933086>,  <30.814732, 31.685064, 57.608505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590086, 32.364395, 57.933086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.275185, 32.138573, 57.833881>,  <30.086245, 32.003078, 57.774357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.275185, 32.138573, 57.833881>,  <30.590086, 32.364395, 57.933086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275185, 32.138573, 57.833881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330187, 0.046265, 0.942781,
		-0.520779, 0.824096, -0.222831,
		-0.787252, -0.564557, -0.248012,
		30.039009, 31.969206, 57.759480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714199, 33.062687, 57.656387>,  <30.590086, 32.364395, 57.933086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714199, 33.062687, 57.656387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.932396, 33.352497, 57.824909>,  <31.063314, 33.526382, 57.926022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.932396, 33.352497, 57.824909>,  <30.714199, 33.062687, 57.656387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932396, 33.352497, 57.824909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606578, 0.005600, -0.795004,
		-0.578362, 0.689222, -0.436428,
		0.545490, 0.724529, 0.421306,
		31.096043, 33.569855, 57.951302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785889, 33.669350, 57.194790>,  <30.714199, 33.062687, 57.656387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785889, 33.669350, 57.194790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.098257, 33.716915, 57.440075>,  <31.285677, 33.745457, 57.587246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.098257, 33.716915, 57.440075>,  <30.785889, 33.669350, 57.194790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098257, 33.716915, 57.440075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617855, -0.002825, -0.786287,
		-0.091770, 0.992900, -0.075679,
		0.780919, 0.118916, 0.613209,
		31.332533, 33.752590, 57.624039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169127, 34.243790, 56.921001>,  <30.785889, 33.669350, 57.194790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169127, 34.243790, 56.921001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.389725, 34.010944, 57.160000>,  <31.522083, 33.871239, 57.303398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.389725, 34.010944, 57.160000>,  <31.169127, 34.243790, 56.921001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389725, 34.010944, 57.160000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720874, -0.027847, -0.692506,
		0.419754, 0.812633, 0.404271,
		0.551495, -0.582111, 0.597495,
		31.555174, 33.836311, 57.339249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852686, 34.449738, 56.849590>,  <31.169127, 34.243790, 56.921001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852686, 34.449738, 56.849590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.873177, 34.078312, 56.996643>,  <31.885471, 33.855457, 57.084873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.873177, 34.078312, 56.996643>,  <31.852686, 34.449738, 56.849590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873177, 34.078312, 56.996643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746512, -0.208926, -0.631720,
		0.663398, 0.306801, 0.682478,
		0.051225, -0.928560, 0.367631,
		31.888544, 33.799744, 57.106934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560200, 34.364037, 56.676876>,  <31.852686, 34.449738, 56.849590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560200, 34.364037, 56.676876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.417446, 33.996151, 56.742298>,  <32.331795, 33.775417, 56.781551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.417446, 33.996151, 56.742298>,  <32.560200, 34.364037, 56.676876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417446, 33.996151, 56.742298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694314, -0.378296, -0.612225,
		0.624948, -0.104933, 0.773582,
		-0.356885, -0.919718, 0.163559,
		32.310379, 33.720234, 56.791367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204067, 33.965736, 56.671425>,  <32.560200, 34.364037, 56.676876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204067, 33.965736, 56.671425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.902107, 33.708752, 56.618721>,  <32.720932, 33.554562, 56.587097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.902107, 33.708752, 56.618721>,  <33.204067, 33.965736, 56.671425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902107, 33.708752, 56.618721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610480, -0.614946, -0.499156,
		0.239664, -0.457251, 0.856436,
		-0.754901, -0.642466, -0.131762,
		32.675636, 33.516010, 56.579193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449409, 33.328918, 56.865147>,  <33.204067, 33.965736, 56.671425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449409, 33.328918, 56.865147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.156063, 33.285019, 56.596783>,  <32.980053, 33.258678, 56.435764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.156063, 33.285019, 56.596783>,  <33.449409, 33.328918, 56.865147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156063, 33.285019, 56.596783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656595, -0.370149, -0.657171,
		-0.176217, -0.922467, 0.343514,
		-0.733370, -0.109745, -0.670913,
		32.936050, 33.252094, 56.395508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<28.290152, 38.266243, 58.505238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311375, 38.448612, 58.860611>,  <28.324108, 38.558033, 59.073833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311375, 38.448612, 58.860611>,  <28.290152, 38.266243, 58.505238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311375, 38.448612, 58.860611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474918, -0.794151, 0.379180,
		0.878429, 0.401814, -0.258664,
		0.053058, 0.455927, 0.888434,
		28.327291, 38.585392, 59.127140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042883, 37.656574, 58.799568>,  <28.290152, 38.266243, 58.505238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042883, 37.656574, 58.799568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698135, 37.643661, 58.597126>,  <27.491287, 37.635914, 58.475662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698135, 37.643661, 58.597126>,  <28.042883, 37.656574, 58.799568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698135, 37.643661, 58.597126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506303, -0.111740, -0.855086,
		-0.028945, -0.993213, 0.112652,
		-0.861869, -0.032285, -0.506101,
		27.439575, 37.633976, 58.445297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980328, 37.040054, 58.338299>,  <28.042883, 37.656574, 58.799568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980328, 37.040054, 58.338299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760885, 37.335587, 58.181755>,  <27.629219, 37.512905, 58.087830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760885, 37.335587, 58.181755>,  <27.980328, 37.040054, 58.338299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760885, 37.335587, 58.181755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542607, -0.041495, -0.838961,
		-0.636089, -0.672613, -0.378130,
		-0.548606, 0.738830, -0.391359,
		27.596304, 37.557236, 58.064346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830805, 36.788937, 57.757565>,  <27.980328, 37.040054, 58.338299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830805, 36.788937, 57.757565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740957, 37.170689, 57.678879>,  <27.687050, 37.399742, 57.631668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740957, 37.170689, 57.678879>,  <27.830805, 36.788937, 57.757565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740957, 37.170689, 57.678879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433909, -0.082797, -0.897144,
		-0.872508, -0.286870, -0.395519,
		-0.224617, 0.954385, -0.196716,
		27.673573, 37.457005, 57.619865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476072, 36.838158, 57.130241>,  <27.830805, 36.788937, 57.757565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476072, 36.838158, 57.130241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611052, 37.210621, 57.185482>,  <27.692039, 37.434097, 57.218628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611052, 37.210621, 57.185482>,  <27.476072, 36.838158, 57.130241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611052, 37.210621, 57.185482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289504, 0.036942, -0.956464,
		-0.895722, 0.362737, -0.257109,
		0.337446, 0.931159, 0.138104,
		27.712286, 37.489967, 57.226913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103172, 37.139217, 56.485909>,  <27.476072, 36.838158, 57.130241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103172, 37.139217, 56.485909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403275, 37.360237, 56.631126>,  <27.583336, 37.492851, 56.718258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403275, 37.360237, 56.631126>,  <27.103172, 37.139217, 56.485909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403275, 37.360237, 56.631126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370406, 0.103564, -0.923079,
		-0.547649, 0.827018, -0.126970,
		0.750253, 0.552554, 0.363049,
		27.628351, 37.526005, 56.740040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037453, 37.855148, 56.104271>,  <27.103172, 37.139217, 56.485909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037453, 37.855148, 56.104271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416817, 37.841747, 56.230381>,  <27.644434, 37.833706, 56.306046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416817, 37.841747, 56.230381>,  <27.037453, 37.855148, 56.104271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416817, 37.841747, 56.230381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306041, 0.356497, -0.882751,
		-0.082823, 0.933696, 0.348357,
		0.948409, -0.033500, 0.315275,
		27.701340, 37.831696, 56.324963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302935, 38.419891, 55.740040>,  <27.037453, 37.855148, 56.104271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302935, 38.419891, 55.740040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598560, 38.183086, 55.868603>,  <27.775936, 38.041004, 55.945740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598560, 38.183086, 55.868603>,  <27.302935, 38.419891, 55.740040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598560, 38.183086, 55.868603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513288, 0.185913, -0.837838,
		0.436255, 0.784193, 0.441275,
		0.739065, -0.592012, 0.321411,
		27.820280, 38.005482, 55.965027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838634, 38.759270, 55.509869>,  <27.302935, 38.419891, 55.740040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838634, 38.759270, 55.509869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012140, 38.412506, 55.608105>,  <28.116243, 38.204449, 55.667046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012140, 38.412506, 55.608105>,  <27.838634, 38.759270, 55.509869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012140, 38.412506, 55.608105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771260, 0.216317, -0.598636,
		0.465840, 0.449078, 0.762445,
		0.433764, -0.866912, 0.245587,
		28.142269, 38.152431, 55.681782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493757, 39.009823, 55.600845>,  <27.838634, 38.759270, 55.509869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493757, 39.009823, 55.600845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459703, 38.621635, 55.510563>,  <28.439272, 38.388721, 55.456394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459703, 38.621635, 55.510563>,  <28.493757, 39.009823, 55.600845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459703, 38.621635, 55.510563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763304, 0.082076, -0.640804,
		0.640405, -0.226838, 0.733775,
		-0.085133, -0.970468, -0.225708,
		28.434164, 38.330494, 55.442852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175077, 38.696548, 55.727329>,  <28.493757, 39.009823, 55.600845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175077, 38.696548, 55.727329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967075, 38.479290, 55.463638>,  <28.842274, 38.348934, 55.305424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967075, 38.479290, 55.463638>,  <29.175077, 38.696548, 55.727329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967075, 38.479290, 55.463638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763213, 0.051092, -0.644124,
		0.383537, -0.838080, 0.387970,
		-0.520006, -0.543149, -0.659229,
		28.811073, 38.316345, 55.265869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631958, 38.201126, 55.429825>,  <29.175077, 38.696548, 55.727329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631958, 38.201126, 55.429825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322468, 38.242764, 55.179859>,  <29.136774, 38.267746, 55.029881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322468, 38.242764, 55.179859>,  <29.631958, 38.201126, 55.429825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322468, 38.242764, 55.179859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631789, 0.053881, -0.773265,
		-0.046822, -0.993107, -0.107455,
		-0.773725, 0.104095, -0.624911,
		29.090351, 38.273991, 54.992386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295649, 38.114872, 55.746445>,  <29.631958, 38.201126, 55.429825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295649, 38.114872, 55.746445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655844, 38.039444, 55.903194>,  <30.871962, 37.994186, 55.997242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655844, 38.039444, 55.903194>,  <30.295649, 38.114872, 55.746445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655844, 38.039444, 55.903194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433867, -0.451034, 0.779954,
		0.029672, -0.872359, -0.487964,
		0.900488, -0.188568, 0.391871,
		30.925991, 37.982872, 56.020756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322542, 37.393608, 55.931911>,  <30.295649, 38.114872, 55.746445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322542, 37.393608, 55.931911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600504, 37.583649, 56.147831>,  <30.767281, 37.697674, 56.277382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600504, 37.583649, 56.147831>,  <30.322542, 37.393608, 55.931911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600504, 37.583649, 56.147831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465994, -0.274201, 0.841227,
		0.547685, -0.836116, 0.030852,
		0.694904, 0.475104, 0.539801,
		30.808975, 37.726181, 56.309772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556482, 36.812454, 56.348179>,  <30.322542, 37.393608, 55.931911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556482, 36.812454, 56.348179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708462, 37.129032, 56.539703>,  <30.799650, 37.318977, 56.654617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708462, 37.129032, 56.539703>,  <30.556482, 36.812454, 56.348179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708462, 37.129032, 56.539703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311595, -0.377865, 0.871852,
		0.870946, -0.480453, 0.103041,
		0.379949, 0.791443, 0.478807,
		30.822447, 37.366467, 56.683346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052969, 36.592911, 56.853058>,  <30.556482, 36.812454, 56.348179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052969, 36.592911, 56.853058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961355, 36.954971, 56.996307>,  <30.906387, 37.172207, 57.082256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961355, 36.954971, 56.996307>,  <31.052969, 36.592911, 56.853058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961355, 36.954971, 56.996307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142302, -0.395084, 0.907556,
		0.962961, 0.156901, 0.219292,
		-0.229035, 0.905147, 0.358123,
		30.892645, 37.226517, 57.103745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247663, 36.521500, 57.546680>,  <31.052969, 36.592911, 56.853058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247663, 36.521500, 57.546680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012646, 36.845058, 57.537968>,  <30.871635, 37.039196, 57.532742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012646, 36.845058, 57.537968>,  <31.247663, 36.521500, 57.546680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012646, 36.845058, 57.537968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227659, -0.139414, 0.963709,
		0.776508, 0.571179, 0.266065,
		-0.587543, 0.808900, -0.021778,
		30.836382, 37.087727, 57.531433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467234, 36.895859, 58.118416>,  <31.247663, 36.521500, 57.546680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467234, 36.895859, 58.118416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095577, 37.001324, 58.014740>,  <30.872583, 37.064602, 57.952534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095577, 37.001324, 58.014740>,  <31.467234, 36.895859, 58.118416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095577, 37.001324, 58.014740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244067, 0.089170, 0.965650,
		0.277719, 0.960484, -0.018500,
		-0.929141, 0.263665, -0.259187,
		30.816835, 37.080421, 57.936985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255604, 37.359287, 58.645485>,  <31.467234, 36.895859, 58.118416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255604, 37.359287, 58.645485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908976, 37.234573, 58.489616>,  <30.700998, 37.159744, 58.396095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908976, 37.234573, 58.489616>,  <31.255604, 37.359287, 58.645485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908976, 37.234573, 58.489616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427805, 0.062025, 0.901740,
		-0.256979, 0.948126, -0.187132,
		-0.866570, -0.311785, -0.389674,
		30.649004, 37.141037, 58.372715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766254, 37.761292, 58.919788>,  <31.255604, 37.359287, 58.645485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766254, 37.761292, 58.919788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545483, 37.451221, 58.796841>,  <30.413019, 37.265179, 58.723072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545483, 37.451221, 58.796841>,  <30.766254, 37.761292, 58.919788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545483, 37.451221, 58.796841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547568, 0.058903, 0.834685,
		-0.628924, 0.628992, -0.456972,
		-0.551927, -0.775177, -0.307370,
		30.379904, 37.218670, 58.704628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097610, 37.863396, 59.014378>,  <30.766254, 37.761292, 58.919788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097610, 37.863396, 59.014378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099436, 37.463554, 59.003315>,  <30.100531, 37.223648, 58.996677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099436, 37.463554, 59.003315>,  <30.097610, 37.863396, 59.014378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099436, 37.463554, 59.003315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532899, -0.025830, 0.845784,
		-0.846166, 0.010877, -0.532808,
		0.004563, -0.999607, -0.027652,
		30.100805, 37.163673, 58.995018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445997, 37.677925, 59.314888>,  <30.097610, 37.863396, 59.014378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445997, 37.677925, 59.314888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634155, 37.327477, 59.272659>,  <29.747049, 37.117207, 59.247322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634155, 37.327477, 59.272659>,  <29.445997, 37.677925, 59.314888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634155, 37.327477, 59.272659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642619, -0.422080, 0.639444,
		-0.604789, -0.232947, -0.761554,
		0.470394, -0.876119, -0.105574,
		29.775274, 37.064640, 59.240986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034067, 37.125381, 59.079727>,  <29.445997, 37.677925, 59.314888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034067, 37.125381, 59.079727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321711, 36.970943, 59.310833>,  <29.494297, 36.878281, 59.449497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321711, 36.970943, 59.310833>,  <29.034067, 37.125381, 59.079727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321711, 36.970943, 59.310833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692205, -0.324865, 0.644449,
		-0.061122, -0.863361, -0.500870,
		0.719108, -0.386095, 0.577767,
		29.537443, 36.855114, 59.484161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681999, 36.619640, 59.422852>,  <29.034067, 37.125381, 59.079727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681999, 36.619640, 59.422852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033264, 36.641338, 59.612961>,  <29.244022, 36.654358, 59.727028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033264, 36.641338, 59.612961>,  <28.681999, 36.619640, 59.422852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033264, 36.641338, 59.612961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440451, -0.295948, 0.847595,
		0.186639, -0.953662, -0.235996,
		0.878162, 0.054250, 0.475277,
		29.296713, 36.657612, 59.755543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732834, 36.009117, 59.883949>,  <28.681999, 36.619640, 59.422852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732834, 36.009117, 59.883949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958599, 36.298809, 60.042404>,  <29.094059, 36.472626, 60.137478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958599, 36.298809, 60.042404>,  <28.732834, 36.009117, 59.883949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958599, 36.298809, 60.042404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479729, -0.102760, 0.871379,
		0.671787, -0.681857, 0.289435,
		0.564413, 0.724231, 0.396140,
		29.127924, 36.516079, 60.161247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108349, 35.661125, 60.430183>,  <28.732834, 36.009117, 59.883949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108349, 35.661125, 60.430183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065090, 36.056713, 60.470650>,  <29.039135, 36.294067, 60.494930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065090, 36.056713, 60.470650>,  <29.108349, 35.661125, 60.430183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065090, 36.056713, 60.470650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588767, -0.145710, 0.795060,
		0.801035, 0.026424, 0.598034,
		-0.108149, 0.988974, 0.101161,
		29.032646, 36.353405, 60.500999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510368, 35.049301, 60.169140>,  <29.108349, 35.661125, 60.430183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510368, 35.049301, 60.169140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732767, 34.757053, 60.327660>,  <29.866207, 34.581703, 60.422771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732767, 34.757053, 60.327660>,  <29.510368, 35.049301, 60.169140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732767, 34.757053, 60.327660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613904, 0.039539, -0.788390,
		0.560347, 0.681635, 0.470516,
		0.555998, -0.730623, 0.396303,
		29.899567, 34.537865, 60.446552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199600, 35.183826, 60.124775>,  <29.510368, 35.049301, 60.169140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199600, 35.183826, 60.124775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153610, 34.786591, 60.115429>,  <30.126017, 34.548248, 60.109821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153610, 34.786591, 60.115429>,  <30.199600, 35.183826, 60.124775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153610, 34.786591, 60.115429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498484, -0.037333, -0.866095,
		0.859241, -0.111227, 0.499333,
		-0.114975, -0.993094, -0.023367,
		30.119118, 34.488663, 60.108418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860754, 34.876472, 59.984367>,  <30.199600, 35.183826, 60.124775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860754, 34.876472, 59.984367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571476, 34.625217, 59.869526>,  <30.397909, 34.474464, 59.800621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571476, 34.625217, 59.869526>,  <30.860754, 34.876472, 59.984367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571476, 34.625217, 59.869526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497510, -0.185478, -0.847397,
		0.479033, -0.755670, 0.446642,
		-0.723195, -0.628140, -0.287103,
		30.354517, 34.436775, 59.783394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200119, 34.244671, 59.869228>,  <30.860754, 34.876472, 59.984367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200119, 34.244671, 59.869228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862955, 34.212471, 59.656429>,  <30.660658, 34.193150, 59.528748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862955, 34.212471, 59.656429>,  <31.200119, 34.244671, 59.869228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862955, 34.212471, 59.656429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512813, -0.419506, -0.749024,
		-0.162879, -0.904176, 0.394889,
		-0.842908, -0.080504, -0.532002,
		30.610083, 34.188320, 59.496830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241503, 33.575455, 59.566864>,  <31.200119, 34.244671, 59.869228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241503, 33.575455, 59.566864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973200, 33.772526, 59.345108>,  <30.812218, 33.890770, 59.212055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973200, 33.772526, 59.345108>,  <31.241503, 33.575455, 59.566864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973200, 33.772526, 59.345108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345394, -0.453986, -0.821340,
		-0.656346, -0.742402, 0.134345,
		-0.670756, 0.492682, -0.554393,
		30.771973, 33.920330, 59.178791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890644, 33.080471, 59.112686>,  <31.241503, 33.575455, 59.566864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890644, 33.080471, 59.112686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837879, 33.441608, 58.948994>,  <30.806221, 33.658291, 58.850777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837879, 33.441608, 58.948994>,  <30.890644, 33.080471, 59.112686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837879, 33.441608, 58.948994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326727, -0.350167, -0.877857,
		-0.935868, -0.249505, -0.248794,
		-0.131910, 0.902846, -0.409230,
		30.798306, 33.712463, 58.826225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718170, 32.881538, 58.492340>,  <30.890644, 33.080471, 59.112686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718170, 32.881538, 58.492340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822653, 33.266258, 58.459579>,  <30.885342, 33.497089, 58.439922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822653, 33.266258, 58.459579>,  <30.718170, 32.881538, 58.492340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822653, 33.266258, 58.459579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448858, -0.196139, -0.871812,
		-0.854575, 0.190961, -0.482946,
		0.261206, 0.961802, -0.081901,
		30.901014, 33.554798, 58.435009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051298, 32.555313, 58.404247>,  <30.718170, 32.881538, 58.492340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051298, 32.555313, 58.404247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876474, 32.219627, 58.274815>,  <29.771580, 32.018215, 58.197155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876474, 32.219627, 58.274815>,  <30.051298, 32.555313, 58.404247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876474, 32.219627, 58.274815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439029, -0.114937, 0.891091,
		-0.785004, 0.531522, -0.318203,
		-0.437061, -0.839211, -0.323580,
		29.745356, 31.967865, 58.177742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312702, 32.575512, 58.417286>,  <30.051298, 32.555313, 58.404247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312702, 32.575512, 58.417286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396448, 32.184521, 58.427834>,  <29.446695, 31.949924, 58.434162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396448, 32.184521, 58.427834>,  <29.312702, 32.575512, 58.417286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396448, 32.184521, 58.427834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510313, -0.086219, 0.855656,
		-0.834115, -0.192600, -0.516873,
		0.209364, -0.977482, 0.026370,
		29.459257, 31.891275, 58.435745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878359, 32.338196, 58.845966>,  <29.312702, 32.575512, 58.417286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878359, 32.338196, 58.845966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090231, 32.001717, 58.802471>,  <29.217354, 31.799829, 58.776375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090231, 32.001717, 58.802471>,  <28.878359, 32.338196, 58.845966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090231, 32.001717, 58.802471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526095, -0.426380, 0.735815,
		-0.665330, -0.332541, -0.668395,
		0.529679, -0.841200, -0.108736,
		29.249134, 31.749357, 58.769852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444395, 31.906116, 58.553646>,  <28.878359, 32.338196, 58.845966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444395, 31.906116, 58.553646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721840, 31.700191, 58.755188>,  <28.888308, 31.576637, 58.876114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721840, 31.700191, 58.755188>,  <28.444395, 31.906116, 58.553646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721840, 31.700191, 58.755188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683834, -0.250710, 0.685213,
		-0.226434, -0.819826, -0.525941,
		0.693613, -0.514812, 0.503855,
		28.929924, 31.545748, 58.906345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155178, 31.283072, 58.661129>,  <28.444395, 31.906116, 58.553646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155178, 31.283072, 58.661129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.451817, 31.311987, 58.927906>,  <28.629801, 31.329336, 59.087971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.451817, 31.311987, 58.927906>,  <28.155178, 31.283072, 58.661129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451817, 31.311987, 58.927906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624051, -0.290458, 0.725393,
		0.246154, -0.954153, -0.170292,
		0.741598, 0.072288, 0.666938,
		28.674295, 31.333673, 59.127987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153791, 30.644630, 58.990623>,  <28.155178, 31.283072, 58.661129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153791, 30.644630, 58.990623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362129, 30.880877, 59.237167>,  <28.487131, 31.022625, 59.385094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362129, 30.880877, 59.237167>,  <28.153791, 30.644630, 58.990623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362129, 30.880877, 59.237167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670636, -0.163635, 0.723513,
		0.528177, -0.790187, 0.310860,
		0.520843, 0.590617, 0.616356,
		28.518383, 31.058062, 59.422073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259518, 30.279236, 59.617142>,  <28.153791, 30.644630, 58.990623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259518, 30.279236, 59.617142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315645, 30.654976, 59.742317>,  <28.349321, 30.880421, 59.817421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315645, 30.654976, 59.742317>,  <28.259518, 30.279236, 59.617142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315645, 30.654976, 59.742317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637807, -0.155994, 0.754234,
		0.757306, -0.305429, 0.577235,
		0.140320, 0.939350, 0.312940,
		28.357740, 30.936781, 59.836201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.448526, 30.257904, 60.362579>,  <28.259518, 30.279236, 59.617142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.448526, 30.257904, 60.362579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300945, 30.621496, 60.284992>,  <28.212397, 30.839651, 60.238438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300945, 30.621496, 60.284992>,  <28.448526, 30.257904, 60.362579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300945, 30.621496, 60.284992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491387, -0.013623, 0.870835,
		0.788930, 0.416613, 0.451689,
		-0.368955, 0.908982, -0.193971,
		28.190258, 30.894190, 60.226803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242029, 30.372829, 60.955704>,  <28.448526, 30.257904, 60.362579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242029, 30.372829, 60.955704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.077499, 30.678404, 60.756821>,  <27.978781, 30.861748, 60.637493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.077499, 30.678404, 60.756821>,  <28.242029, 30.372829, 60.955704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077499, 30.678404, 60.756821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554621, 0.223113, 0.801633,
		0.723330, 0.605492, 0.331923,
		-0.411326, 0.763937, -0.497204,
		27.954102, 30.907585, 60.607658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.931484, 34.028812, 47.013157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.044048, 34.396835, 46.904129>,  <37.111588, 34.617649, 46.838711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.044048, 34.396835, 46.904129>,  <36.931484, 34.028812, 47.013157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044048, 34.396835, 46.904129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941486, 0.319639, 0.106929,
		0.185507, 0.226533, 0.956175,
		0.281408, 0.920062, -0.272573,
		37.128471, 34.672855, 46.822357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783306, 34.355656, 47.585545>,  <36.931484, 34.028812, 47.013157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783306, 34.355656, 47.585545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.797215, 34.612793, 47.279461>,  <36.805561, 34.767075, 47.095810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.797215, 34.612793, 47.279461>,  <36.783306, 34.355656, 47.585545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797215, 34.612793, 47.279461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956977, 0.242123, 0.159913,
		0.288073, 0.726728, 0.623603,
		0.034776, 0.642841, -0.765211,
		36.807648, 34.805645, 47.049896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411297, 34.887539, 47.891724>,  <36.783306, 34.355656, 47.585545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411297, 34.887539, 47.891724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.388191, 34.964294, 47.499836>,  <36.374329, 35.010349, 47.264706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.388191, 34.964294, 47.499836>,  <36.411297, 34.887539, 47.891724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388191, 34.964294, 47.499836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981891, 0.166438, 0.090490,
		0.180427, 0.967200, 0.178804,
		-0.057761, 0.191893, -0.979714,
		36.370861, 35.021862, 47.205921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053646, 35.528412, 47.761539>,  <36.411297, 34.887539, 47.891724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053646, 35.528412, 47.761539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.019054, 35.334133, 47.413605>,  <35.998299, 35.217567, 47.204842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.019054, 35.334133, 47.413605>,  <36.053646, 35.528412, 47.761539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019054, 35.334133, 47.413605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989889, 0.140424, 0.020009,
		0.112428, 0.862775, -0.492929,
		-0.086483, -0.485695, -0.869839,
		35.993111, 35.188423, 47.152653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606544, 35.916260, 47.349422>,  <36.053646, 35.528412, 47.761539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606544, 35.916260, 47.349422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.580624, 35.549286, 47.192398>,  <35.565071, 35.329102, 47.098183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.580624, 35.549286, 47.192398>,  <35.606544, 35.916260, 47.349422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580624, 35.549286, 47.192398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997898, 0.059911, 0.024719,
		0.000841, 0.393342, -0.919392,
		-0.064805, -0.917438, -0.392565,
		35.561184, 35.274055, 47.074627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040112, 35.913242, 46.860691>,  <35.606544, 35.916260, 47.349422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040112, 35.913242, 46.860691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.094303, 35.517563, 46.883060>,  <35.126816, 35.280155, 46.896484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.094303, 35.517563, 46.883060>,  <35.040112, 35.913242, 46.860691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094303, 35.517563, 46.883060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978497, -0.142444, -0.149177,
		0.155533, -0.034515, -0.987228,
		0.135476, -0.989201, 0.055928,
		35.134945, 35.220802, 46.899837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697994, 35.613029, 46.306343>,  <35.040112, 35.913242, 46.860691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697994, 35.613029, 46.306343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739010, 35.320396, 46.575943>,  <34.763618, 35.144817, 46.737701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739010, 35.320396, 46.575943>,  <34.697994, 35.613029, 46.306343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739010, 35.320396, 46.575943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944902, -0.283395, -0.163850,
		0.310878, -0.620062, -0.720332,
		0.102541, -0.731580, 0.673999,
		34.769772, 35.100922, 46.778141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454723, 34.983746, 46.071869>,  <34.697994, 35.613029, 46.306343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454723, 34.983746, 46.071869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.412411, 34.993774, 46.469498>,  <34.387024, 34.999790, 46.708076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.412411, 34.993774, 46.469498>,  <34.454723, 34.983746, 46.071869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412411, 34.993774, 46.469498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970746, -0.219299, -0.097772,
		0.215549, -0.975336, 0.047529,
		-0.105783, 0.025064, 0.994073,
		34.380676, 35.001297, 46.767719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915924, 34.508579, 45.986172>,  <34.454723, 34.983746, 46.071869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915924, 34.508579, 45.986172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.924400, 34.629101, 46.367489>,  <33.929485, 34.701412, 46.596279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.924400, 34.629101, 46.367489>,  <33.915924, 34.508579, 45.986172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924400, 34.629101, 46.367489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994400, 0.105093, -0.011114,
		-0.103533, -0.947720, 0.301840,
		0.021188, 0.301300, 0.953294,
		33.930756, 34.719490, 46.653477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347778, 34.125828, 46.500591>,  <33.915924, 34.508579, 45.986172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347778, 34.125828, 46.500591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.438904, 34.496254, 46.620930>,  <33.493580, 34.718510, 46.693134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.438904, 34.496254, 46.620930>,  <33.347778, 34.125828, 46.500591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438904, 34.496254, 46.620930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965127, 0.255679, -0.056199,
		-0.128964, -0.277552, 0.952015,
		0.227813, 0.926063, 0.300846,
		33.507248, 34.774075, 46.711182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795078, 34.225693, 47.067116>,  <33.347778, 34.125828, 46.500591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795078, 34.225693, 47.067116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.936909, 34.592403, 46.993587>,  <33.022007, 34.812431, 46.949471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.936909, 34.592403, 46.993587>,  <32.795078, 34.225693, 47.067116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936909, 34.592403, 46.993587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931256, 0.363892, 0.018550,
		0.083898, 0.164609, 0.982784,
		0.354574, 0.916780, -0.183823,
		33.043282, 34.867439, 46.938442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438602, 34.774704, 47.477455>,  <32.795078, 34.225693, 47.067116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438602, 34.774704, 47.477455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.619152, 35.019192, 47.217400>,  <32.727482, 35.165882, 47.061367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.619152, 35.019192, 47.217400>,  <32.438602, 34.774704, 47.477455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619152, 35.019192, 47.217400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867045, 0.472639, -0.157621,
		0.210940, 0.634845, 0.743288,
		0.451372, 0.611215, -0.650138,
		32.754562, 35.202557, 47.022358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284790, 35.492023, 47.648323>,  <32.438602, 34.774704, 47.477455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284790, 35.492023, 47.648323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.375198, 35.485336, 47.258732>,  <32.429443, 35.481323, 47.024979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.375198, 35.485336, 47.258732>,  <32.284790, 35.492023, 47.648323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375198, 35.485336, 47.258732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916191, 0.336011, -0.218381,
		0.330918, 0.941710, 0.060631,
		0.226024, -0.016717, -0.973978,
		32.443005, 35.480320, 46.966537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992674, 35.366940, 48.349751>,  <32.284790, 35.492023, 47.648323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992674, 35.366940, 48.349751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.945656, 35.257397, 48.731575>,  <31.917444, 35.191669, 48.960670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.945656, 35.257397, 48.731575>,  <31.992674, 35.366940, 48.349751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945656, 35.257397, 48.731575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686345, -0.717103, -0.121218,
		0.717714, 0.640908, 0.272256,
		-0.117546, -0.273861, 0.954559,
		31.910393, 35.175240, 49.017944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502888, 34.909359, 48.434731>,  <31.992674, 35.366940, 48.349751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502888, 34.909359, 48.434731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.562965, 34.603321, 48.685192>,  <31.599012, 34.419697, 48.835468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.562965, 34.603321, 48.685192>,  <31.502888, 34.909359, 48.434731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562965, 34.603321, 48.685192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987154, -0.150960, 0.052333,
		0.054485, -0.625971, -0.777941,
		0.150196, -0.765096, 0.626154,
		31.608025, 34.373791, 48.873039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988169, 34.395168, 48.203083>,  <31.502888, 34.909359, 48.434731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988169, 34.395168, 48.203083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.082666, 34.287613, 48.576584>,  <31.139364, 34.223080, 48.800682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.082666, 34.287613, 48.576584>,  <30.988169, 34.395168, 48.203083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082666, 34.287613, 48.576584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952479, -0.254239, 0.167770,
		0.192284, -0.929011, -0.316174,
		0.236244, -0.268890, 0.933749,
		31.153540, 34.206947, 48.856709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539392, 33.847775, 48.329861>,  <30.988169, 34.395168, 48.203083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539392, 33.847775, 48.329861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.676016, 33.954842, 48.690239>,  <30.757990, 34.019081, 48.906464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.676016, 33.954842, 48.690239>,  <30.539392, 33.847775, 48.329861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676016, 33.954842, 48.690239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933554, -0.014243, 0.358152,
		0.108698, -0.963406, 0.245017,
		0.341556, 0.267667, 0.900940,
		30.778482, 34.035141, 48.960522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211536, 33.420399, 48.799400>,  <30.539392, 33.847775, 48.329861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211536, 33.420399, 48.799400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.328693, 33.732059, 49.021076>,  <30.398989, 33.919056, 49.154083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.328693, 33.732059, 49.021076>,  <30.211536, 33.420399, 48.799400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328693, 33.732059, 49.021076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915802, 0.062019, 0.396812,
		0.274809, -0.623754, 0.731718,
		0.292893, 0.779156, 0.554192,
		30.416561, 33.965805, 49.187332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912834, 33.275269, 49.399151>,  <30.211536, 33.420399, 48.799400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912834, 33.275269, 49.399151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.988798, 33.657669, 49.488598>,  <30.034376, 33.887108, 49.542267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.988798, 33.657669, 49.488598>,  <29.912834, 33.275269, 49.399151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988798, 33.657669, 49.488598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919954, 0.093713, 0.380660,
		0.342954, -0.278007, 0.897271,
		0.189912, 0.955997, 0.223614,
		30.045773, 33.944469, 49.555683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682039, 33.446167, 50.072414>,  <29.912834, 33.275269, 49.399151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682039, 33.446167, 50.072414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.701965, 33.788574, 49.866600>,  <29.713921, 33.994019, 49.743111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.701965, 33.788574, 49.866600>,  <29.682039, 33.446167, 50.072414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701965, 33.788574, 49.866600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979811, 0.141758, 0.140975,
		0.193617, 0.497128, 0.845799,
		0.049816, 0.856019, -0.514538,
		29.716909, 34.045380, 49.712238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361042, 33.980347, 50.476765>,  <29.682039, 33.446167, 50.072414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361042, 33.980347, 50.476765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.361664, 34.113781, 50.099678>,  <29.362036, 34.193840, 49.873425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.361664, 34.113781, 50.099678>,  <29.361042, 33.980347, 50.476765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361664, 34.113781, 50.099678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931595, 0.343157, 0.119891,
		0.363495, 0.878047, 0.311295,
		0.001553, 0.333581, -0.942720,
		29.362129, 34.213856, 49.816860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182392, 34.685032, 50.493420>,  <29.361042, 33.980347, 50.476765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182392, 34.685032, 50.493420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.061481, 34.549957, 50.136860>,  <28.988935, 34.468910, 49.922924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.061481, 34.549957, 50.136860>,  <29.182392, 34.685032, 50.493420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061481, 34.549957, 50.136860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944044, 0.235495, 0.230915,
		0.131942, 0.911322, -0.389979,
		-0.302276, -0.337690, -0.891400,
		28.970798, 34.448650, 49.869438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637146, 35.059925, 50.412182>,  <29.182392, 34.685032, 50.493420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637146, 35.059925, 50.412182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.566292, 34.792118, 50.123638>,  <28.523779, 34.631432, 49.950512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.566292, 34.792118, 50.123638>,  <28.637146, 35.059925, 50.412182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566292, 34.792118, 50.123638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983994, 0.134984, 0.116341,
		0.019480, 0.730426, -0.682714,
		-0.177134, -0.669520, -0.721364,
		28.513151, 34.591263, 49.907230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110640, 35.376099, 50.103420>,  <28.637146, 35.059925, 50.412182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110640, 35.376099, 50.103420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.099298, 34.988884, 50.003742>,  <28.092493, 34.756554, 49.943935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.099298, 34.988884, 50.003742>,  <28.110640, 35.376099, 50.103420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099298, 34.988884, 50.003742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962665, -0.040695, 0.267621,
		-0.269208, 0.247475, -0.930743,
		-0.028352, -0.968039, -0.249191,
		28.090794, 34.698471, 49.928986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693214, 35.242653, 49.513771>,  <28.110640, 35.376099, 50.103420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693214, 35.242653, 49.513771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.696857, 34.921238, 49.751846>,  <27.699043, 34.728390, 49.894691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.696857, 34.921238, 49.751846>,  <27.693214, 35.242653, 49.513771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696857, 34.921238, 49.751846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993382, 0.060880, 0.097394,
		-0.114494, -0.592132, -0.797666,
		0.009108, -0.803538, 0.595184,
		27.699591, 34.680176, 49.930401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958179, 34.927933, 49.441273>,  <27.693214, 35.242653, 49.513771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958179, 34.927933, 49.441273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.108749, 34.742527, 49.762138>,  <27.199091, 34.631283, 49.954659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.108749, 34.742527, 49.762138>,  <26.958179, 34.927933, 49.441273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108749, 34.742527, 49.762138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885775, 0.073674, 0.458230,
		-0.271493, -0.883024, -0.382833,
		0.376424, -0.463510, 0.802162,
		27.221676, 34.603474, 50.002789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368311, 34.596867, 49.676552>,  <26.958179, 34.927933, 49.441273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368311, 34.596867, 49.676552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.624216, 34.597385, 49.983978>,  <26.777760, 34.597698, 50.168434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.624216, 34.597385, 49.983978>,  <26.368311, 34.596867, 49.676552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.624216, 34.597385, 49.983978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745993, 0.241658, 0.620561,
		-0.184926, -0.970360, 0.155572,
		0.639763, 0.001297, 0.768571,
		26.816145, 34.597775, 50.214550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181341, 34.066544, 50.189938>,  <26.368311, 34.596867, 49.676552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181341, 34.066544, 50.189938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.393728, 34.335247, 50.396553>,  <26.521160, 34.496471, 50.520523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.393728, 34.335247, 50.396553>,  <26.181341, 34.066544, 50.189938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393728, 34.335247, 50.396553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803165, 0.204598, 0.559522,
		0.270184, -0.711952, 0.648171,
		0.530967, 0.671762, 0.516536,
		26.553019, 34.536774, 50.551514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966843, 33.926769, 50.961475>,  <26.181341, 34.066544, 50.189938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966843, 33.926769, 50.961475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.162096, 34.273865, 50.924046>,  <26.279247, 34.482121, 50.901588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.162096, 34.273865, 50.924046>,  <25.966843, 33.926769, 50.961475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.162096, 34.273865, 50.924046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649926, 0.432966, 0.624609,
		0.582514, -0.244073, 0.775310,
		0.488133, 0.867738, -0.093579,
		26.308537, 34.534187, 50.895973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.945503, 34.167126, 51.574966>,  <25.966843, 33.926769, 50.961475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.945503, 34.167126, 51.574966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.990759, 34.499966, 51.357780>,  <26.017912, 34.699669, 51.227470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.990759, 34.499966, 51.357780>,  <25.945503, 34.167126, 51.574966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.990759, 34.499966, 51.357780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735409, 0.437596, 0.517381,
		0.668112, 0.340767, 0.661442,
		0.113138, 0.832099, -0.542966,
		26.024700, 34.749596, 51.194889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956226, 34.622562, 52.063538>,  <25.945503, 34.167126, 51.574966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956226, 34.622562, 52.063538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.874023, 34.820045, 51.725536>,  <25.824701, 34.938534, 51.522736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.874023, 34.820045, 51.725536>,  <25.956226, 34.622562, 52.063538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.874023, 34.820045, 51.725536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756770, 0.467306, 0.457082,
		0.620536, 0.733404, 0.277585,
		-0.205508, 0.493704, -0.844999,
		25.812370, 34.968155, 51.472038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030228, 35.333115, 52.230125>,  <25.956226, 34.622562, 52.063538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.030228, 35.333115, 52.230125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.787411, 35.295483, 51.914494>,  <25.641722, 35.272903, 51.725113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.787411, 35.295483, 51.914494>,  <26.030228, 35.333115, 52.230125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787411, 35.295483, 51.914494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724495, 0.473504, 0.500900,
		0.326510, 0.875753, -0.355595,
		-0.607041, -0.094078, -0.789082,
		25.605299, 35.267258, 51.677769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645073, 35.950611, 52.181755>,  <26.030228, 35.333115, 52.230125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.645073, 35.950611, 52.181755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.398663, 35.708008, 51.980694>,  <25.250816, 35.562447, 51.860058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.398663, 35.708008, 51.980694>,  <25.645073, 35.950611, 52.181755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.398663, 35.708008, 51.980694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769884, 0.328515, 0.547135,
		-0.166711, 0.724035, -0.669314,
		-0.616024, -0.606507, -0.502656,
		25.213856, 35.526054, 51.829899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.970911, 36.348633, 52.187462>,  <25.645073, 35.950611, 52.181755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.970911, 36.348633, 52.187462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.888479, 35.968319, 52.094913>,  <24.839020, 35.740131, 52.039383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.888479, 35.968319, 52.094913>,  <24.970911, 36.348633, 52.187462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.888479, 35.968319, 52.094913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872840, 0.071719, 0.482708,
		-0.442359, 0.301429, -0.844665,
		-0.206081, -0.950787, -0.231373,
		24.826654, 35.683083, 52.025501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.248276, 36.277992, 51.896896>,  <24.970911, 36.348633, 52.187462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.248276, 36.277992, 51.896896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.372240, 35.948853, 52.087418>,  <24.446619, 35.751369, 52.201733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.372240, 35.948853, 52.087418>,  <24.248276, 36.277992, 51.896896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.372240, 35.948853, 52.087418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845393, -0.009259, 0.534065,
		-0.435046, -0.568181, -0.698502,
		0.309913, -0.822852, 0.476308,
		24.465214, 35.701996, 52.230309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<36.009911, 30.939968, 46.917244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.634556, 30.862293, 46.802898>,  <35.409344, 30.815689, 46.734291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.634556, 30.862293, 46.802898>,  <36.009911, 30.939968, 46.917244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634556, 30.862293, 46.802898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345563, 0.517952, 0.782503,
		-0.003885, 0.833077, -0.553143,
		-0.938388, -0.194185, -0.285868,
		35.353039, 30.804037, 46.717136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742222, 31.574335, 47.175495>,  <36.009911, 30.939968, 46.917244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742222, 31.574335, 47.175495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.423241, 31.338909, 47.122334>,  <35.231853, 31.197653, 47.090435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.423241, 31.338909, 47.122334>,  <35.742222, 31.574335, 47.175495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423241, 31.338909, 47.122334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412137, 0.370433, 0.832420,
		-0.440699, 0.718590, -0.537971,
		-0.797451, -0.588565, -0.132908,
		35.184006, 31.162340, 47.082462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171478, 31.989010, 47.240948>,  <35.742222, 31.574335, 47.175495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171478, 31.989010, 47.240948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.003605, 31.632349, 47.308857>,  <34.902882, 31.418352, 47.349602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.003605, 31.632349, 47.308857>,  <35.171478, 31.989010, 47.240948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003605, 31.632349, 47.308857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417256, 0.355629, 0.836317,
		-0.806080, 0.280149, -0.521298,
		-0.419682, -0.891653, 0.169771,
		34.877701, 31.364853, 47.359787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469440, 32.110435, 47.504650>,  <35.171478, 31.989010, 47.240948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469440, 32.110435, 47.504650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.550072, 31.733685, 47.612152>,  <34.598450, 31.507633, 47.676651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.550072, 31.733685, 47.612152>,  <34.469440, 32.110435, 47.504650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550072, 31.733685, 47.612152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317194, 0.196824, 0.927711,
		-0.926690, -0.272253, -0.259083,
		0.201578, -0.941880, 0.268752,
		34.610546, 31.451120, 47.692780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904774, 31.936096, 47.975685>,  <34.469440, 32.110435, 47.504650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904774, 31.936096, 47.975685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.186493, 31.661209, 48.046902>,  <34.355522, 31.496277, 48.089634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.186493, 31.661209, 48.046902>,  <33.904774, 31.936096, 47.975685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186493, 31.661209, 48.046902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218025, 0.029291, 0.975503,
		-0.675599, -0.725860, -0.129201,
		0.704294, -0.687218, 0.178045,
		34.397781, 31.455044, 48.100315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615791, 31.484997, 48.345444>,  <33.904774, 31.936096, 47.975685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615791, 31.484997, 48.345444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.996227, 31.398539, 48.433727>,  <34.224487, 31.346664, 48.486698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.996227, 31.398539, 48.433727>,  <33.615791, 31.484997, 48.345444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996227, 31.398539, 48.433727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247281, -0.104470, 0.963296,
		-0.185158, -0.970755, -0.152809,
		0.951088, -0.216148, 0.220706,
		34.281555, 31.333694, 48.499939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571949, 30.876348, 48.556232>,  <33.615791, 31.484997, 48.345444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571949, 30.876348, 48.556232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.887272, 31.046923, 48.733650>,  <34.076466, 31.149267, 48.840099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.887272, 31.046923, 48.733650>,  <33.571949, 30.876348, 48.556232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887272, 31.046923, 48.733650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267331, -0.411896, 0.871135,
		0.554174, -0.805293, -0.210700,
		0.788305, 0.426434, 0.443542,
		34.123764, 31.174852, 48.866714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808941, 30.410496, 48.959583>,  <33.571949, 30.876348, 48.556232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808941, 30.410496, 48.959583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.021606, 30.712221, 49.113647>,  <34.149204, 30.893257, 49.206085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.021606, 30.712221, 49.113647>,  <33.808941, 30.410496, 48.959583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021606, 30.712221, 49.113647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024815, -0.440688, 0.897317,
		0.846594, -0.486626, -0.215578,
		0.531660, 0.754314, 0.385159,
		34.181103, 30.938515, 49.229195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254333, 30.013514, 49.397125>,  <33.808941, 30.410496, 48.959583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254333, 30.013514, 49.397125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.286762, 30.394840, 49.513481>,  <34.306217, 30.623636, 49.583294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.286762, 30.394840, 49.513481>,  <34.254333, 30.013514, 49.397125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286762, 30.394840, 49.513481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024492, -0.289860, 0.956756,
		0.996408, -0.084686, -0.000150,
		0.081068, 0.953315, 0.290893,
		34.311081, 30.680836, 49.600750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785805, 30.088257, 49.870319>,  <34.254333, 30.013514, 49.397125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785805, 30.088257, 49.870319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.554150, 30.399921, 49.966240>,  <34.415157, 30.586920, 50.023792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.554150, 30.399921, 49.966240>,  <34.785805, 30.088257, 49.870319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554150, 30.399921, 49.966240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049141, -0.326979, 0.943753,
		0.813745, 0.534782, 0.227656,
		-0.579141, 0.779162, 0.239798,
		34.380409, 30.633671, 50.038177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914093, 30.133501, 50.569939>,  <34.785805, 30.088257, 49.870319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914093, 30.133501, 50.569939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.584064, 30.358385, 50.547363>,  <34.386047, 30.493315, 50.533817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.584064, 30.358385, 50.547363>,  <34.914093, 30.133501, 50.569939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584064, 30.358385, 50.547363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207086, -0.207949, 0.955967,
		0.525717, 0.800424, 0.287998,
		-0.825068, 0.562209, -0.056434,
		34.336544, 30.527048, 50.530434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840012, 30.509022, 51.228214>,  <34.914093, 30.133501, 50.569939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840012, 30.509022, 51.228214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476765, 30.529913, 51.062038>,  <34.258816, 30.542448, 50.962334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476765, 30.529913, 51.062038>,  <34.840012, 30.509022, 51.228214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476765, 30.529913, 51.062038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418254, -0.066976, 0.905857,
		0.019485, 0.996387, 0.082666,
		-0.908121, 0.052226, -0.415438,
		34.204327, 30.545580, 50.937408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042995, 31.219250, 51.053658>,  <34.840012, 30.509022, 51.228214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042995, 31.219250, 51.053658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.352230, 31.404919, 51.226574>,  <35.537769, 31.516319, 51.330326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.352230, 31.404919, 51.226574>,  <35.042995, 31.219250, 51.053658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352230, 31.404919, 51.226574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476909, 0.023985, -0.878625,
		-0.418202, 0.885420, -0.202825,
		0.773088, 0.464172, 0.432295,
		35.584156, 31.544170, 51.356262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290325, 31.619154, 50.523834>,  <35.042995, 31.219250, 51.053658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290325, 31.619154, 50.523834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.594006, 31.586882, 50.782169>,  <35.776215, 31.567518, 50.937168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.594006, 31.586882, 50.782169>,  <35.290325, 31.619154, 50.523834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594006, 31.586882, 50.782169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650726, 0.074255, -0.755673,
		0.013010, 0.993970, 0.108875,
		0.759201, -0.080679, 0.645836,
		35.821766, 31.562677, 50.975922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697094, 32.118301, 50.306999>,  <35.290325, 31.619154, 50.523834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697094, 32.118301, 50.306999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.958549, 31.905752, 50.522549>,  <36.115425, 31.778221, 50.651878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.958549, 31.905752, 50.522549>,  <35.697094, 32.118301, 50.306999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958549, 31.905752, 50.522549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669724, 0.074531, -0.738861,
		0.352450, 0.843851, 0.404592,
		0.653643, -0.531376, 0.538878,
		36.154644, 31.746340, 50.684212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315285, 32.589275, 50.408310>,  <35.697094, 32.118301, 50.306999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315285, 32.589275, 50.408310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.438316, 32.212997, 50.465569>,  <36.512135, 31.987230, 50.499924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.438316, 32.212997, 50.465569>,  <36.315285, 32.589275, 50.408310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438316, 32.212997, 50.465569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806111, 0.177681, -0.564459,
		0.505548, 0.289010, 0.812954,
		0.307581, -0.940692, 0.143148,
		36.530590, 31.930790, 50.508514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006031, 32.728188, 50.430767>,  <36.315285, 32.589275, 50.408310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006031, 32.728188, 50.430767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.980030, 32.331249, 50.388783>,  <36.964428, 32.093086, 50.363590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.980030, 32.331249, 50.388783>,  <37.006031, 32.728188, 50.430767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980030, 32.331249, 50.388783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725393, 0.025239, -0.687872,
		0.685258, -0.120857, 0.718202,
		-0.065007, -0.992349, -0.104964,
		36.960529, 32.033543, 50.357292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633423, 32.536236, 50.605221>,  <37.006031, 32.728188, 50.430767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633423, 32.536236, 50.605221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.467777, 32.267651, 50.359409>,  <37.368389, 32.106499, 50.211922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.467777, 32.267651, 50.359409>,  <37.633423, 32.536236, 50.605221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467777, 32.267651, 50.359409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724394, 0.165682, -0.669181,
		0.551145, -0.722282, 0.417790,
		-0.414117, -0.671460, -0.614531,
		37.343544, 32.066212, 50.175049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128342, 32.063702, 50.429295>,  <37.633423, 32.536236, 50.605221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128342, 32.063702, 50.429295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.860996, 32.009731, 50.136696>,  <37.700588, 31.977348, 49.961136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.860996, 32.009731, 50.136696>,  <38.128342, 32.063702, 50.429295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860996, 32.009731, 50.136696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725869, 0.096517, -0.681027,
		0.162492, -0.986144, 0.033432,
		-0.668364, -0.134929, -0.731495,
		37.660488, 31.969252, 49.917248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386005, 31.577431, 49.891651>,  <38.128342, 32.063702, 50.429295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386005, 31.577431, 49.891651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.111721, 31.813589, 49.721363>,  <37.947151, 31.955284, 49.619190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.111721, 31.813589, 49.721363>,  <38.386005, 31.577431, 49.891651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111721, 31.813589, 49.721363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638759, 0.207666, -0.740852,
		-0.348989, -0.779940, -0.519519,
		-0.685707, 0.590396, -0.425721,
		37.906010, 31.990707, 49.593647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411278, 31.413759, 49.180592>,  <38.386005, 31.577431, 49.891651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411278, 31.413759, 49.180592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.250042, 31.779657, 49.191593>,  <38.153301, 31.999197, 49.198193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.250042, 31.779657, 49.191593>,  <38.411278, 31.413759, 49.180592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250042, 31.779657, 49.191593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530096, 0.257875, -0.807773,
		-0.746001, -0.311026, -0.588851,
		-0.403089, 0.914748, 0.027502,
		38.129116, 32.054081, 49.199844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474895, 31.668222, 48.531960>,  <38.411278, 31.413759, 49.180592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474895, 31.668222, 48.531960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.398785, 32.016220, 48.713909>,  <38.353119, 32.225018, 48.823078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.398785, 32.016220, 48.713909>,  <38.474895, 31.668222, 48.531960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398785, 32.016220, 48.713909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642932, 0.460583, -0.611966,
		-0.741911, 0.176005, -0.646985,
		-0.190281, 0.869992, 0.454871,
		38.341702, 32.277218, 48.850368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240776, 32.232300, 48.010445>,  <38.474895, 31.668222, 48.531960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240776, 32.232300, 48.010445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.377956, 32.418762, 48.336655>,  <38.460266, 32.530640, 48.532379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.377956, 32.418762, 48.336655>,  <38.240776, 32.232300, 48.010445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377956, 32.418762, 48.336655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522071, 0.627152, -0.578033,
		-0.780912, 0.624000, -0.028283,
		0.342955, 0.466159, 0.815523,
		38.480843, 32.558609, 48.581310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133514, 32.969124, 47.842510>,  <38.240776, 32.232300, 48.010445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133514, 32.969124, 47.842510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411209, 32.964062, 48.130367>,  <38.577824, 32.961025, 48.303082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411209, 32.964062, 48.130367>,  <38.133514, 32.969124, 47.842510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411209, 32.964062, 48.130367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491812, 0.738360, -0.461460,
		-0.525511, 0.674288, 0.518820,
		0.694233, -0.012659, 0.719639,
		38.619480, 32.960262, 48.346260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237419, 33.647999, 47.859749>,  <38.133514, 32.969124, 47.842510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237419, 33.647999, 47.859749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.542240, 33.457367, 48.035084>,  <38.725132, 33.342987, 48.140285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.542240, 33.457367, 48.035084>,  <38.237419, 33.647999, 47.859749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542240, 33.457367, 48.035084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647424, 0.572043, -0.503597,
		-0.010742, 0.667559, 0.744479,
		0.762054, -0.476584, 0.438339,
		38.770855, 33.314392, 48.166584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625908, 34.084259, 48.284855>,  <38.237419, 33.647999, 47.859749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625908, 34.084259, 48.284855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.905632, 33.807781, 48.211952>,  <39.073467, 33.641895, 48.168213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.905632, 33.807781, 48.211952>,  <38.625908, 34.084259, 48.284855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905632, 33.807781, 48.211952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658331, 0.722098, -0.212545,
		0.278515, 0.028652, 0.960005,
		0.699307, -0.691197, -0.182252,
		39.115425, 33.600422, 48.157276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404327, 34.819355, 47.967686>,  <38.625908, 34.084259, 48.284855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404327, 34.819355, 47.967686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.050034, 34.702595, 48.112057>,  <37.837456, 34.632538, 48.198677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.050034, 34.702595, 48.112057>,  <38.404327, 34.819355, 47.967686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050034, 34.702595, 48.112057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302596, 0.226535, 0.925806,
		-0.352008, 0.929233, -0.112321,
		-0.885735, -0.291904, 0.360924,
		37.784313, 34.615025, 48.220333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000477, 35.413822, 48.258709>,  <38.404327, 34.819355, 47.967686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000477, 35.413822, 48.258709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969902, 35.051327, 48.425026>,  <37.951557, 34.833828, 48.524818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969902, 35.051327, 48.425026>,  <38.000477, 35.413822, 48.258709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969902, 35.051327, 48.425026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109150, 0.406902, 0.906927,
		-0.991082, 0.114710, 0.067812,
		-0.076441, -0.906241, 0.415794,
		37.946968, 34.779453, 48.549763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347149, 35.290096, 48.723328>,  <38.000477, 35.413822, 48.258709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347149, 35.290096, 48.723328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.695854, 35.121944, 48.823975>,  <37.905075, 35.021053, 48.884365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.695854, 35.121944, 48.823975>,  <37.347149, 35.290096, 48.723328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695854, 35.121944, 48.823975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044539, 0.579459, 0.813784,
		-0.487902, -0.698218, 0.523873,
		0.871761, -0.420380, 0.251621,
		37.957382, 34.995831, 48.899460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340214, 35.929829, 49.050377>,  <37.347149, 35.290096, 48.723328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340214, 35.929829, 49.050377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.114388, 36.134735, 48.791504>,  <36.978893, 36.257679, 48.636181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.114388, 36.134735, 48.791504>,  <37.340214, 35.929829, 49.050377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114388, 36.134735, 48.791504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323997, 0.583622, 0.744588,
		0.759138, 0.630056, -0.163521,
		-0.564567, 0.512265, -0.647185,
		36.945019, 36.288414, 48.597347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229919, 36.772228, 48.970119>,  <37.340214, 35.929829, 49.050377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229919, 36.772228, 48.970119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.866997, 36.640953, 48.864975>,  <36.649242, 36.562187, 48.801888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.866997, 36.640953, 48.864975>,  <37.229919, 36.772228, 48.970119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866997, 36.640953, 48.864975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419851, 0.673066, 0.608858,
		-0.022898, 0.662780, -0.748464,
		-0.907304, -0.328185, -0.262857,
		36.594807, 36.542496, 48.786118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890198, 37.293571, 48.985855>,  <37.229919, 36.772228, 48.970119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890198, 37.293571, 48.985855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573669, 37.050087, 48.962921>,  <36.383751, 36.903996, 48.949162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573669, 37.050087, 48.962921>,  <36.890198, 37.293571, 48.985855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573669, 37.050087, 48.962921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483895, 0.566217, 0.667266,
		-0.373708, 0.555764, -0.742610,
		-0.791320, -0.608708, -0.057331,
		36.336273, 36.867474, 48.945721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303860, 37.681889, 48.839222>,  <36.890198, 37.293571, 48.985855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303860, 37.681889, 48.839222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163483, 37.348644, 49.010231>,  <36.079258, 37.148697, 49.112835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163483, 37.348644, 49.010231>,  <36.303860, 37.681889, 48.839222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163483, 37.348644, 49.010231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542065, 0.553027, 0.632714,
		-0.763548, -0.009698, -0.645678,
		-0.350941, -0.833107, 0.427520,
		36.058201, 37.098713, 49.138489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618824, 37.789997, 48.851704>,  <36.303860, 37.681889, 48.839222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618824, 37.789997, 48.851704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.697666, 37.513817, 49.130108>,  <35.744972, 37.348110, 49.297150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.697666, 37.513817, 49.130108>,  <35.618824, 37.789997, 48.851704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697666, 37.513817, 49.130108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510077, 0.534059, 0.674242,
		-0.837239, -0.487918, -0.246914,
		0.197108, -0.690447, 0.696011,
		35.756798, 37.306683, 49.338913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008499, 37.619648, 49.058514>,  <35.618824, 37.789997, 48.851704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008499, 37.619648, 49.058514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.250950, 37.522354, 49.361416>,  <35.396420, 37.463978, 49.543159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.250950, 37.522354, 49.361416>,  <35.008499, 37.619648, 49.058514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250950, 37.522354, 49.361416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601992, 0.481950, 0.636655,
		-0.519820, -0.841760, 0.145698,
		0.606130, -0.243237, 0.757260,
		35.432789, 37.449383, 49.588593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571789, 37.464489, 49.615120>,  <35.008499, 37.619648, 49.058514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571789, 37.464489, 49.615120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.934132, 37.497253, 49.781353>,  <35.151539, 37.516914, 49.881092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.934132, 37.497253, 49.781353>,  <34.571789, 37.464489, 49.615120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934132, 37.497253, 49.781353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415198, 0.365944, 0.832884,
		-0.083855, -0.927025, 0.365504,
		0.905858, 0.081916, 0.415585,
		35.205891, 37.521828, 49.906029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549442, 37.076843, 50.280415>,  <34.571789, 37.464489, 49.615120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549442, 37.076843, 50.280415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.842930, 37.347771, 50.301952>,  <35.019020, 37.510326, 50.314877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.842930, 37.347771, 50.301952>,  <34.549442, 37.076843, 50.280415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842930, 37.347771, 50.301952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330974, 0.287074, 0.898913,
		0.593393, -0.677369, 0.434806,
		0.733717, 0.677318, 0.053844,
		35.063046, 37.550964, 50.318104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793270, 37.031559, 50.926037>,  <34.549442, 37.076843, 50.280415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793270, 37.031559, 50.926037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.914280, 37.385994, 50.785561>,  <34.986885, 37.598656, 50.701275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.914280, 37.385994, 50.785561>,  <34.793270, 37.031559, 50.926037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914280, 37.385994, 50.785561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210558, 0.421477, 0.882056,
		0.929594, -0.192898, 0.314079,
		0.302525, 0.886085, -0.351186,
		35.005039, 37.651821, 50.680206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236130, 37.241074, 51.464916>,  <34.793270, 37.031559, 50.926037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236130, 37.241074, 51.464916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.111237, 37.562717, 51.262562>,  <35.036301, 37.755703, 51.141148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.111237, 37.562717, 51.262562>,  <35.236130, 37.241074, 51.464916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111237, 37.562717, 51.262562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191676, 0.468235, 0.862564,
		0.930468, 0.366287, 0.007931,
		-0.312232, 0.804108, -0.505886,
		35.017567, 37.803951, 51.110798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448856, 37.720188, 51.836109>,  <35.236130, 37.241074, 51.464916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448856, 37.720188, 51.836109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165844, 37.894386, 51.613487>,  <34.996037, 37.998905, 51.479916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165844, 37.894386, 51.613487>,  <35.448856, 37.720188, 51.836109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165844, 37.894386, 51.613487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389335, 0.417037, 0.821278,
		0.589761, 0.797764, -0.125515,
		-0.707530, 0.435491, -0.556550,
		34.953587, 38.025032, 51.446522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482590, 38.355049, 52.135559>,  <35.448856, 37.720188, 51.836109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482590, 38.355049, 52.135559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.148991, 38.296021, 51.922890>,  <34.948833, 38.260601, 51.795288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.148991, 38.296021, 51.922890>,  <35.482590, 38.355049, 52.135559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148991, 38.296021, 51.922890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546301, 0.356226, 0.758062,
		0.077524, 0.922672, -0.377711,
		-0.833994, -0.147576, -0.531673,
		34.898792, 38.251747, 51.763390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128963, 38.912273, 52.412254>,  <35.482590, 38.355049, 52.135559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128963, 38.912273, 52.412254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.853699, 38.664921, 52.260445>,  <34.688541, 38.516510, 52.169361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.853699, 38.664921, 52.260445>,  <35.128963, 38.912273, 52.412254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853699, 38.664921, 52.260445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627987, 0.245648, 0.738437,
		-0.363409, 0.746498, -0.557382,
		-0.688162, -0.618383, -0.379521,
		34.647251, 38.479404, 52.146587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448166, 39.335331, 52.381935>,  <35.128963, 38.912273, 52.412254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448166, 39.335331, 52.381935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355854, 38.946178, 52.375687>,  <34.300465, 38.712688, 52.371937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355854, 38.946178, 52.375687>,  <34.448166, 39.335331, 52.381935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355854, 38.946178, 52.375687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633109, 0.137953, 0.761671,
		-0.738859, 0.185672, -0.647776,
		-0.230784, -0.972880, -0.015622,
		34.286617, 38.654316, 52.370998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774734, 39.306068, 52.640308>,  <34.448166, 39.335331, 52.381935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774734, 39.306068, 52.640308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.845589, 38.912418, 52.644650>,  <33.888103, 38.676228, 52.647255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.845589, 38.912418, 52.644650>,  <33.774734, 39.306068, 52.640308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845589, 38.912418, 52.644650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808359, -0.139190, 0.571997,
		-0.561406, -0.110099, -0.820184,
		0.177138, -0.984126, 0.010857,
		33.898731, 38.617180, 52.647907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069443, 38.881714, 52.657688>,  <33.774734, 39.306068, 52.640308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069443, 38.881714, 52.657688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.355816, 38.651276, 52.815445>,  <33.527641, 38.513012, 52.910099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.355816, 38.651276, 52.815445>,  <33.069443, 38.881714, 52.657688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355816, 38.651276, 52.815445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632411, -0.295791, 0.715936,
		-0.295791, -0.761983, -0.576099,
		-0.715936, 0.576099, -0.394394,
		33.570595, 38.478447, 52.933762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617619, 38.460930, 52.942917>,  <33.069443, 38.881714, 52.657688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617619, 38.460930, 52.942917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.975445, 38.408722, 53.113899>,  <33.190140, 38.377399, 53.216488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.975445, 38.408722, 53.113899>,  <32.617619, 38.460930, 52.942917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975445, 38.408722, 53.113899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446005, -0.199013, 0.872624,
		-0.028821, -0.971267, -0.236240,
		0.894566, -0.130514, 0.427455,
		33.243816, 38.369568, 53.242134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599670, 37.872948, 53.358570>,  <32.617619, 38.460930, 52.942917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599670, 37.872948, 53.358570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.891518, 38.078106, 53.539501>,  <33.066624, 38.201199, 53.648060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.891518, 38.078106, 53.539501>,  <32.599670, 37.872948, 53.358570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891518, 38.078106, 53.539501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370450, -0.259556, 0.891850,
		0.574829, -0.818273, 0.000626,
		0.729615, 0.512893, 0.452330,
		33.110401, 38.231976, 53.675201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697674, 37.489761, 53.935387>,  <32.599670, 37.872948, 53.358570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697674, 37.489761, 53.935387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.875980, 37.835682, 54.027824>,  <32.982964, 38.043236, 54.083286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.875980, 37.835682, 54.027824>,  <32.697674, 37.489761, 53.935387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875980, 37.835682, 54.027824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439371, -0.013548, 0.898204,
		0.779903, -0.501923, 0.373931,
		0.445763, 0.864806, 0.231097,
		33.009708, 38.095123, 54.097153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983627, 37.376137, 54.527302>,  <32.697674, 37.489761, 53.935387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983627, 37.376137, 54.527302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.952099, 37.774826, 54.519947>,  <32.933182, 38.014038, 54.515533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.952099, 37.774826, 54.519947>,  <32.983627, 37.376137, 54.527302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952099, 37.774826, 54.519947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555708, -0.028621, 0.830885,
		0.827633, 0.075706, 0.556141,
		-0.078820, 0.996719, -0.018383,
		32.928452, 38.073841, 54.514431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125950, 37.652237, 55.228500>,  <32.983627, 37.376137, 54.527302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125950, 37.652237, 55.228500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.917305, 37.944344, 55.052032>,  <32.792118, 38.119606, 54.946152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.917305, 37.944344, 55.052032>,  <33.125950, 37.652237, 55.228500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917305, 37.944344, 55.052032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528701, 0.129167, 0.838922,
		0.669621, 0.670840, 0.318717,
		-0.521615, 0.730266, -0.441168,
		32.760822, 38.163422, 54.919682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106533, 38.263847, 55.698189>,  <33.125950, 37.652237, 55.228500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106533, 38.263847, 55.698189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806465, 38.353733, 55.449432>,  <32.626423, 38.407665, 55.300179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806465, 38.353733, 55.449432>,  <33.106533, 38.263847, 55.698189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806465, 38.353733, 55.449432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608940, 0.131825, 0.782186,
		0.257745, 0.965467, 0.037943,
		-0.750173, 0.224710, -0.621889,
		32.581413, 38.421146, 55.262867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742504, 38.858017, 55.982685>,  <33.106533, 38.263847, 55.698189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742504, 38.858017, 55.982685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.485317, 38.658894, 55.749866>,  <32.331005, 38.539417, 55.610176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.485317, 38.658894, 55.749866>,  <32.742504, 38.858017, 55.982685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485317, 38.658894, 55.749866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691944, 0.051772, 0.720092,
		-0.328337, 0.865739, -0.377746,
		-0.642968, -0.497812, -0.582044,
		32.292427, 38.509548, 55.575253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117195, 39.178535, 56.050499>,  <32.742504, 38.858017, 55.982685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117195, 39.178535, 56.050499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.999687, 38.822987, 55.909866>,  <31.929182, 38.609657, 55.825485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.999687, 38.822987, 55.909866>,  <32.117195, 39.178535, 56.050499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999687, 38.822987, 55.909866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712508, -0.041563, 0.700432,
		-0.637206, 0.456271, -0.621117,
		-0.293771, -0.888870, -0.351581,
		31.911556, 38.556324, 55.804394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322691, 39.177563, 55.921719>,  <32.117195, 39.178535, 56.050499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322691, 39.177563, 55.921719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.449615, 38.802937, 55.981270>,  <31.525770, 38.578163, 56.017002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.449615, 38.802937, 55.981270>,  <31.322691, 39.177563, 55.921719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449615, 38.802937, 55.981270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617242, -0.084781, 0.782192,
		-0.719950, -0.340093, -0.604987,
		0.317309, -0.936562, 0.148881,
		31.544807, 38.521969, 56.025936>
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
