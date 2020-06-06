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
	<24.638063, 35.166084, 35.111515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.530766, 34.879070, 34.854393>,  <24.466387, 34.706863, 34.700119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.530766, 34.879070, 34.854393>,  <24.638063, 35.166084, 35.111515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.530766, 34.879070, 34.854393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941392, 0.053586, 0.333030,
		-0.204515, 0.694462, -0.689852,
		-0.268243, -0.717531, -0.642802,
		24.450293, 34.663811, 34.661552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.929592, 35.213593, 35.860733>,  <24.638063, 35.166084, 35.111515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.929592, 35.213593, 35.860733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310558, 35.096291, 35.893982>,  <25.539137, 35.025909, 35.913929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310558, 35.096291, 35.893982>,  <24.929592, 35.213593, 35.860733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.310558, 35.096291, 35.893982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293642, -0.809628, 0.508209,
		-0.081738, -0.508433, -0.857213,
		0.952414, -0.293253, 0.083120,
		25.596283, 35.008316, 35.918919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.014040, 34.677902, 35.502590>,  <24.929592, 35.213593, 35.860733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.014040, 34.677902, 35.502590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243834, 34.709049, 35.828510>,  <25.381710, 34.727737, 36.024063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243834, 34.709049, 35.828510>,  <25.014040, 34.677902, 35.502590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.243834, 34.709049, 35.828510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405693, -0.837500, 0.366070,
		0.710903, -0.540861, -0.449540,
		0.574483, 0.077865, 0.814805,
		25.416178, 34.732410, 36.072952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.327518, 34.029034, 35.667431>,  <25.014040, 34.677902, 35.502590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.327518, 34.029034, 35.667431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.338627, 34.224770, 36.016090>,  <25.345291, 34.342213, 36.225285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.338627, 34.224770, 36.016090>,  <25.327518, 34.029034, 35.667431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.338627, 34.224770, 36.016090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329010, -0.818927, 0.470225,
		0.943918, -0.299839, 0.138257,
		0.027769, 0.489342, 0.871650,
		25.346958, 34.371571, 36.277584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769541, 33.611141, 36.077141>,  <25.327518, 34.029034, 35.667431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769541, 33.611141, 36.077141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536194, 33.814537, 36.330475>,  <25.396185, 33.936577, 36.482475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536194, 33.814537, 36.330475>,  <25.769541, 33.611141, 36.077141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536194, 33.814537, 36.330475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360576, -0.860859, 0.359036,
		0.727783, -0.018917, 0.685547,
		-0.583367, 0.508492, 0.633339,
		25.361183, 33.967083, 36.520477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985594, 33.492535, 36.775391>,  <25.769541, 33.611141, 36.077141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985594, 33.492535, 36.775391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601837, 33.557804, 36.683353>,  <25.371584, 33.596966, 36.628132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601837, 33.557804, 36.683353>,  <25.985594, 33.492535, 36.775391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601837, 33.557804, 36.683353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244589, -0.887556, 0.390411,
		-0.140521, 0.430836, 0.891423,
		-0.959390, 0.163171, -0.230098,
		25.314020, 33.606754, 36.614323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524473, 33.416424, 37.348827>,  <25.985594, 33.492535, 36.775391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524473, 33.416424, 37.348827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.277483, 33.353611, 37.040524>,  <25.129290, 33.315922, 36.855541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.277483, 33.353611, 37.040524>,  <25.524473, 33.416424, 37.348827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.277483, 33.353611, 37.040524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327205, -0.839790, 0.433232,
		-0.715306, 0.519704, 0.467166,
		-0.617474, -0.157035, -0.770757,
		25.092241, 33.306499, 36.809296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.976551, 33.393383, 37.755962>,  <25.524473, 33.416424, 37.348827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.976551, 33.393383, 37.755962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.956259, 33.181870, 37.417065>,  <24.944084, 33.054962, 37.213726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.956259, 33.181870, 37.417065>,  <24.976551, 33.393383, 37.755962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.956259, 33.181870, 37.417065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372871, -0.776963, 0.507244,
		-0.926496, 0.341645, -0.157751,
		-0.050731, -0.528780, -0.847242,
		24.941040, 33.023235, 37.162891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.320110, 33.107361, 37.736305>,  <24.976551, 33.393383, 37.755962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.320110, 33.107361, 37.736305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.565195, 32.874371, 37.522648>,  <24.712246, 32.734577, 37.394455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.565195, 32.874371, 37.522648>,  <24.320110, 33.107361, 37.736305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.565195, 32.874371, 37.522648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319970, -0.800827, 0.506256,
		-0.722636, -0.139280, -0.677051,
		0.612713, -0.582475, -0.534141,
		24.749008, 32.699627, 37.362404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.909824, 32.515881, 37.600918>,  <24.320110, 33.107361, 37.736305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.909824, 32.515881, 37.600918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293140, 32.414909, 37.547310>,  <24.523130, 32.354324, 37.515144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293140, 32.414909, 37.547310>,  <23.909824, 32.515881, 37.600918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.293140, 32.414909, 37.547310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143208, -0.829913, 0.539199,
		-0.247333, -0.497517, -0.831447,
		0.958289, -0.252432, -0.134016,
		24.580627, 32.339180, 37.507107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.936144, 31.775745, 37.355404>,  <23.909824, 32.515881, 37.600918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.936144, 31.775745, 37.355404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.292171, 31.862406, 37.515823>,  <24.505787, 31.914402, 37.612076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.292171, 31.862406, 37.515823>,  <23.936144, 31.775745, 37.355404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.292171, 31.862406, 37.515823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093845, -0.773884, 0.626336,
		0.446063, -0.595118, -0.668478,
		0.890068, 0.216652, 0.401049,
		24.559193, 31.927401, 37.636139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.165926, 31.151163, 37.603271>,  <23.936144, 31.775745, 37.355404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.165926, 31.151163, 37.603271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.390451, 31.415867, 37.802067>,  <24.525167, 31.574690, 37.921345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.390451, 31.415867, 37.802067>,  <24.165926, 31.151163, 37.603271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.390451, 31.415867, 37.802067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068910, -0.561060, 0.824902,
		0.824729, -0.497277, -0.269329,
		0.561315, 0.661761, 0.496989,
		24.558846, 31.614395, 37.951164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.164433, 30.801840, 38.373425>,  <24.165926, 31.151163, 37.603271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.164433, 30.801840, 38.373425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363976, 30.855373, 38.715939>,  <24.483702, 30.887493, 38.921448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363976, 30.855373, 38.715939>,  <24.164433, 30.801840, 38.373425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.363976, 30.855373, 38.715939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542535, 0.722253, -0.428959,
		-0.675866, 0.678556, 0.287692,
		0.498859, 0.133835, 0.856287,
		24.513634, 30.895523, 38.972824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.995947, 31.491318, 38.676506>,  <24.164433, 30.801840, 38.373425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.995947, 31.491318, 38.676506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361042, 31.345345, 38.749969>,  <24.580099, 31.257761, 38.794048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361042, 31.345345, 38.749969>,  <23.995947, 31.491318, 38.676506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.361042, 31.345345, 38.749969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400118, 0.707655, -0.582349,
		0.082549, 0.605019, 0.791920,
		0.912738, -0.364934, 0.183663,
		24.634863, 31.235865, 38.805069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.469677, 32.078564, 38.892426>,  <23.995947, 31.491318, 38.676506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.469677, 32.078564, 38.892426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.647764, 31.774254, 38.703533>,  <24.754616, 31.591667, 38.590199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.647764, 31.774254, 38.703533>,  <24.469677, 32.078564, 38.892426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.647764, 31.774254, 38.703533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413275, 0.642438, -0.645351,
		0.794346, 0.092159, 0.600433,
		0.445216, -0.760776, -0.472231,
		24.781328, 31.546021, 38.561863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.180471, 32.324764, 38.731300>,  <24.469677, 32.078564, 38.892426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.180471, 32.324764, 38.731300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046371, 32.054104, 38.469078>,  <24.965912, 31.891708, 38.311745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046371, 32.054104, 38.469078>,  <25.180471, 32.324764, 38.731300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.046371, 32.054104, 38.469078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196523, 0.630292, -0.751073,
		0.921404, -0.380630, -0.078329,
		-0.335251, -0.676649, -0.655556,
		24.945797, 31.851109, 38.272411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726871, 32.188011, 38.180794>,  <25.180471, 32.324764, 38.731300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726871, 32.188011, 38.180794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369070, 32.123314, 38.014084>,  <25.154388, 32.084496, 37.914059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369070, 32.123314, 38.014084>,  <25.726871, 32.188011, 38.180794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.369070, 32.123314, 38.014084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336192, 0.371124, -0.865587,
		0.294679, -0.914388, -0.277595,
		-0.894505, -0.161745, -0.416773,
		25.100719, 32.074791, 37.889053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.809795, 31.952486, 37.455269>,  <25.726871, 32.188011, 38.180794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.809795, 31.952486, 37.455269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452202, 32.120491, 37.517735>,  <25.237646, 32.221294, 37.555214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452202, 32.120491, 37.517735>,  <25.809795, 31.952486, 37.455269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452202, 32.120491, 37.517735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174170, 0.646790, -0.742514,
		-0.412868, -0.636595, -0.651372,
		-0.893982, 0.420010, 0.156163,
		25.184008, 32.246494, 37.564583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.662397, 32.086727, 36.759182>,  <25.809795, 31.952486, 37.455269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.662397, 32.086727, 36.759182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.371946, 32.272411, 36.962059>,  <25.197676, 32.383820, 37.083786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.371946, 32.272411, 36.962059>,  <25.662397, 32.086727, 36.759182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.371946, 32.272411, 36.962059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022704, 0.753463, -0.657098,
		-0.687184, -0.465622, -0.557651,
		-0.726129, 0.464208, 0.507196,
		25.154108, 32.411674, 37.114220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.153580, 32.122101, 36.247738>,  <25.662397, 32.086727, 36.759182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.153580, 32.122101, 36.247738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.088686, 32.406597, 36.521328>,  <25.049749, 32.577293, 36.685482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.088686, 32.406597, 36.521328>,  <25.153580, 32.122101, 36.247738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.088686, 32.406597, 36.521328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094471, 0.678778, -0.728242,
		-0.982220, -0.182762, -0.042930,
		-0.162235, 0.711238, 0.683974,
		25.040016, 32.619968, 36.726521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.630020, 32.471153, 35.901134>,  <25.153580, 32.122101, 36.247738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.630020, 32.471153, 35.901134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.554493, 32.662807, 36.244011>,  <24.509176, 32.777798, 36.449738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.554493, 32.662807, 36.244011>,  <24.630020, 32.471153, 35.901134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.554493, 32.662807, 36.244011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320082, 0.855253, -0.407541,
		-0.928384, 0.197421, -0.314847,
		-0.188817, 0.479132, 0.857194,
		24.497849, 32.806545, 36.501167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.250025, 33.133827, 35.810001>,  <24.630020, 32.471153, 35.901134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.250025, 33.133827, 35.810001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.468016, 33.191917, 36.140312>,  <24.598810, 33.226772, 36.338497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.468016, 33.191917, 36.140312>,  <24.250025, 33.133827, 35.810001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.468016, 33.191917, 36.140312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402573, 0.818610, -0.409649,
		-0.735483, 0.555685, 0.387658,
		0.544977, 0.145229, 0.825778,
		24.631508, 33.235485, 36.388046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.167496, 33.875381, 36.100746>,  <24.250025, 33.133827, 35.810001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.167496, 33.875381, 36.100746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.524027, 33.763771, 36.243671>,  <24.737946, 33.696804, 36.329426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.524027, 33.763771, 36.243671>,  <24.167496, 33.875381, 36.100746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.524027, 33.763771, 36.243671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366148, 0.907820, -0.204445,
		-0.267334, 0.313059, 0.911333,
		0.891329, -0.279028, 0.357317,
		24.791426, 33.680061, 36.350868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.247869, 34.112099, 36.756542>,  <24.167496, 33.875381, 36.100746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.247869, 34.112099, 36.756542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.612474, 34.021141, 36.893616>,  <24.831238, 33.966564, 36.975861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.612474, 34.021141, 36.893616>,  <24.247869, 34.112099, 36.756542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.612474, 34.021141, 36.893616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317222, 0.919046, -0.233935,
		-0.261746, 0.321942, 0.909859,
		0.911515, -0.227396, 0.342684,
		24.885929, 33.952923, 36.996422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.608179, 34.673965, 37.223606>,  <24.247869, 34.112099, 36.756542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.608179, 34.673965, 37.223606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.888872, 34.455338, 37.040813>,  <25.057289, 34.324162, 36.931137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.888872, 34.455338, 37.040813>,  <24.608179, 34.673965, 37.223606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.888872, 34.455338, 37.040813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477367, 0.836871, -0.267895,
		0.528857, -0.030156, 0.848175,
		0.701735, -0.546569, -0.456980,
		25.099392, 34.291367, 36.903721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.304111, 34.944878, 37.418678>,  <24.608179, 34.673965, 37.223606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.304111, 34.944878, 37.418678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339918, 34.765617, 37.062893>,  <25.361403, 34.658062, 36.849422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339918, 34.765617, 37.062893>,  <25.304111, 34.944878, 37.418678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339918, 34.765617, 37.062893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582351, 0.748038, -0.318286,
		0.807993, -0.489488, 0.327945,
		0.089518, -0.448153, -0.889464,
		25.366774, 34.631172, 36.796055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064196, 34.818531, 37.233643>,  <25.304111, 34.944878, 37.418678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.064196, 34.818531, 37.233643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837519, 34.836578, 36.904564>,  <25.701513, 34.847404, 36.707119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837519, 34.836578, 36.904564>,  <26.064196, 34.818531, 37.233643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837519, 34.836578, 36.904564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572444, 0.739708, -0.353750,
		0.592594, -0.671414, -0.445012,
		-0.566692, 0.045114, -0.822694,
		25.667511, 34.850113, 36.657757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470568, 35.187866, 36.695198>,  <26.064196, 34.818531, 37.233643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470568, 35.187866, 36.695198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158728, 35.179939, 36.444813>,  <25.971624, 35.175182, 36.294582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158728, 35.179939, 36.444813>,  <26.470568, 35.187866, 36.695198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158728, 35.179939, 36.444813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449768, 0.677814, -0.581616,
		0.435814, -0.734967, -0.519510,
		-0.779599, -0.019817, -0.625965,
		25.924849, 35.173996, 36.257023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073452, 35.606930, 36.683243>,  <26.470568, 35.187866, 36.695198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073452, 35.606930, 36.683243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395052, 35.800148, 36.544537>,  <27.588013, 35.916080, 36.461311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395052, 35.800148, 36.544537>,  <27.073452, 35.606930, 36.683243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395052, 35.800148, 36.544537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261183, -0.237020, -0.935738,
		-0.534197, 0.842903, -0.064400,
		0.804000, 0.483048, -0.346767,
		27.636251, 35.945061, 36.440506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742109, 35.817669, 36.167057>,  <27.073452, 35.606930, 36.683243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.742109, 35.817669, 36.167057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124603, 35.783852, 36.055008>,  <27.354099, 35.763561, 35.987778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124603, 35.783852, 36.055008>,  <26.742109, 35.817669, 36.167057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124603, 35.783852, 36.055008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292594, -0.270428, -0.917201,
		0.001794, 0.959021, -0.283330,
		0.956235, -0.084546, -0.280118,
		27.411474, 35.758488, 35.970974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.848766, 36.157658, 35.497879>,  <26.742109, 35.817669, 36.167057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.848766, 36.157658, 35.497879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099817, 35.850697, 35.550293>,  <27.250448, 35.666519, 35.581741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099817, 35.850697, 35.550293>,  <26.848766, 36.157658, 35.497879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099817, 35.850697, 35.550293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270961, -0.373122, -0.887333,
		0.729839, 0.521408, -0.442119,
		0.627626, -0.767407, 0.131038,
		27.288105, 35.620476, 35.589603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195225, 36.016148, 34.869663>,  <26.848766, 36.157658, 35.497879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195225, 36.016148, 34.869663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259327, 35.667709, 35.055355>,  <27.297789, 35.458645, 35.166771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259327, 35.667709, 35.055355>,  <27.195225, 36.016148, 34.869663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259327, 35.667709, 35.055355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309228, -0.490936, -0.814469,
		0.937388, -0.013029, -0.348043,
		0.160255, -0.871098, 0.464227,
		27.307404, 35.406380, 35.194622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471189, 35.607185, 34.327293>,  <27.195225, 36.016148, 34.869663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471189, 35.607185, 34.327293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.377087, 35.334103, 34.604008>,  <27.320625, 35.170254, 34.770035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.377087, 35.334103, 34.604008>,  <27.471189, 35.607185, 34.327293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377087, 35.334103, 34.604008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207549, -0.660056, -0.721976,
		0.949515, -0.313428, 0.013587,
		-0.235256, -0.682707, 0.691785,
		27.306509, 35.129292, 34.811543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621534, 34.903633, 34.014576>,  <27.471189, 35.607185, 34.327293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621534, 34.903633, 34.014576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360567, 34.819584, 34.305836>,  <27.203987, 34.769154, 34.480591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360567, 34.819584, 34.305836>,  <27.621534, 34.903633, 34.014576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360567, 34.819584, 34.305836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500992, -0.601334, -0.622419,
		0.568644, -0.770873, 0.287051,
		-0.652420, -0.210124, 0.728146,
		27.164841, 34.756546, 34.524281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561300, 34.272217, 33.926159>,  <27.621534, 34.903633, 34.014576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561300, 34.272217, 33.926159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237808, 34.402256, 34.122227>,  <27.043713, 34.480282, 34.239868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237808, 34.402256, 34.122227>,  <27.561300, 34.272217, 33.926159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237808, 34.402256, 34.122227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580914, -0.572061, -0.579039,
		0.092158, -0.753031, 0.651500,
		-0.808731, 0.325102, 0.490166,
		26.995190, 34.499786, 34.269276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123362, 33.594444, 34.011047>,  <27.561300, 34.272217, 33.926159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123362, 33.594444, 34.011047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914202, 33.933022, 34.051258>,  <26.788706, 34.136169, 34.075382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914202, 33.933022, 34.051258>,  <27.123362, 33.594444, 34.011047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914202, 33.933022, 34.051258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745529, -0.396983, -0.535342,
		-0.413239, -0.354863, 0.838633,
		-0.522896, 0.846449, 0.100512,
		26.757332, 34.186954, 34.081413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513756, 33.401737, 33.720409>,  <27.123362, 33.594444, 34.011047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513756, 33.401737, 33.720409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433353, 33.769321, 33.856125>,  <26.385111, 33.989872, 33.937553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433353, 33.769321, 33.856125>,  <26.513756, 33.401737, 33.720409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.433353, 33.769321, 33.856125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944657, -0.090173, -0.315423,
		-0.259266, -0.383910, 0.886225,
		-0.201007, 0.918957, 0.339284,
		26.373051, 34.045010, 33.957909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943695, 33.443405, 34.148151>,  <26.513756, 33.401737, 33.720409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943695, 33.443405, 34.148151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986183, 33.805340, 33.983234>,  <26.011675, 34.022503, 33.884285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986183, 33.805340, 33.983234>,  <25.943695, 33.443405, 34.148151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986183, 33.805340, 33.983234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874258, -0.112545, -0.472236,
		-0.473699, 0.410607, 0.779110,
		0.106218, 0.904840, -0.412289,
		26.018049, 34.076794, 33.859547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.217146, 33.780392, 34.143562>,  <25.943695, 33.443405, 34.148151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.217146, 33.780392, 34.143562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434422, 33.972961, 33.868412>,  <25.564787, 34.088501, 33.703320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434422, 33.972961, 33.868412>,  <25.217146, 33.780392, 34.143562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.434422, 33.972961, 33.868412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823536, 0.145952, -0.548166,
		-0.163501, 0.864253, 0.475746,
		0.543190, 0.481420, -0.687880,
		25.597378, 34.117386, 33.662048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.050579, 34.509590, 34.161942>,  <25.217146, 33.780392, 34.143562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.050579, 34.509590, 34.161942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163137, 34.362930, 33.807228>,  <25.230673, 34.274933, 33.594398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163137, 34.362930, 33.807228>,  <25.050579, 34.509590, 34.161942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163137, 34.362930, 33.807228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828552, 0.373336, -0.417279,
		0.484063, 0.852167, -0.198733,
		0.281397, -0.366650, -0.886783,
		25.247557, 34.252934, 33.541195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.997190, 35.053505, 33.616161>,  <25.050579, 34.509590, 34.161942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.997190, 35.053505, 33.616161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952906, 34.694103, 33.446255>,  <24.926334, 34.478462, 33.344311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952906, 34.694103, 33.446255>,  <24.997190, 35.053505, 33.616161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.952906, 34.694103, 33.446255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772053, 0.346890, -0.532542,
		0.625841, 0.268988, -0.732099,
		-0.110710, -0.898506, -0.424771,
		24.919693, 34.424553, 33.318825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148672, 34.992451, 32.867882>,  <24.997190, 35.053505, 33.616161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148672, 34.992451, 32.867882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.849016, 34.748909, 32.972252>,  <24.669222, 34.602783, 33.034874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.849016, 34.748909, 32.972252>,  <25.148672, 34.992451, 32.867882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.849016, 34.748909, 32.972252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615404, 0.493974, -0.614220,
		0.245084, -0.620710, -0.744750,
		-0.749140, -0.608858, 0.260922,
		24.624273, 34.566250, 33.050529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966833, 35.098728, 32.865303>,  <25.148672, 34.992451, 32.867882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966833, 35.098728, 32.865303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.784924, 34.877678, 33.144672>,  <25.675777, 34.745049, 33.312294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.784924, 34.877678, 33.144672>,  <25.966833, 35.098728, 32.865303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.784924, 34.877678, 33.144672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842455, -0.012570, 0.538620,
		-0.288873, 0.833338, 0.471275,
		-0.454776, -0.552621, 0.698419,
		25.648491, 34.711891, 33.354198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096987, 35.404396, 33.549595>,  <25.966833, 35.098728, 32.865303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.096987, 35.404396, 33.549595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049349, 35.018497, 33.643467>,  <26.020765, 34.786957, 33.699791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049349, 35.018497, 33.643467>,  <26.096987, 35.404396, 33.549595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049349, 35.018497, 33.643467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690846, 0.089243, 0.717474,
		-0.713126, 0.247574, 0.655865,
		-0.119097, -0.964750, 0.234677,
		26.013620, 34.729073, 33.713871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.036879, 35.299969, 34.312645>,  <26.096987, 35.404396, 33.549595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.036879, 35.299969, 34.312645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.159426, 34.933819, 34.208160>,  <26.232954, 34.714130, 34.145470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.159426, 34.933819, 34.208160>,  <26.036879, 35.299969, 34.312645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159426, 34.933819, 34.208160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687995, 0.023285, 0.725342,
		-0.657877, -0.401932, 0.636906,
		0.306368, -0.915374, -0.261208,
		26.251337, 34.659206, 34.129799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882462, 34.872280, 34.907299>,  <26.036879, 35.299969, 34.312645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882462, 34.872280, 34.907299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213921, 34.763863, 34.711391>,  <26.412796, 34.698811, 34.593845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213921, 34.763863, 34.711391>,  <25.882462, 34.872280, 34.907299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213921, 34.763863, 34.711391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529634, 0.096440, 0.842726,
		-0.181186, -0.957722, 0.223471,
		0.828649, -0.271048, -0.489768,
		26.462515, 34.682549, 34.564461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236042, 34.522953, 35.428036>,  <25.882462, 34.872280, 34.907299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236042, 34.522953, 35.428036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512064, 34.614147, 35.153271>,  <26.677677, 34.668865, 34.988411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512064, 34.614147, 35.153271>,  <26.236042, 34.522953, 35.428036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512064, 34.614147, 35.153271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611167, 0.324831, 0.721775,
		0.387683, -0.917882, 0.084816,
		0.690056, 0.227983, -0.686911,
		26.719080, 34.682541, 34.947197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807978, 34.202003, 35.637299>,  <26.236042, 34.522953, 35.428036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807978, 34.202003, 35.637299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946012, 34.490772, 35.397385>,  <27.028833, 34.664032, 35.253437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946012, 34.490772, 35.397385>,  <26.807978, 34.202003, 35.637299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946012, 34.490772, 35.397385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586383, 0.333144, 0.738357,
		0.732851, -0.606503, -0.308358,
		0.345087, 0.721920, -0.599787,
		27.049540, 34.707348, 35.217449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455069, 34.262440, 35.772793>,  <26.807978, 34.202003, 35.637299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.455069, 34.262440, 35.772793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419044, 34.619137, 35.595402>,  <27.397430, 34.833157, 35.488968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419044, 34.619137, 35.595402>,  <27.455069, 34.262440, 35.772793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419044, 34.619137, 35.595402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637812, 0.393640, 0.662000,
		0.764908, -0.223237, -0.604219,
		-0.090062, 0.891747, -0.443481,
		27.392025, 34.886662, 35.462357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197033, 34.713150, 35.808201>,  <27.455069, 34.262440, 35.772793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197033, 34.713150, 35.808201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926613, 35.001015, 35.744904>,  <27.764360, 35.173733, 35.706924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926613, 35.001015, 35.744904>,  <28.197033, 34.713150, 35.808201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926613, 35.001015, 35.744904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521189, 0.618832, 0.587715,
		0.520884, 0.314850, -0.793442,
		-0.676049, 0.719665, -0.158243,
		27.723799, 35.216915, 35.697430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617029, 35.300602, 35.639603>,  <28.197033, 34.713150, 35.808201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617029, 35.300602, 35.639603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256685, 35.445705, 35.734982>,  <28.040478, 35.532768, 35.792210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256685, 35.445705, 35.734982>,  <28.617029, 35.300602, 35.639603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256685, 35.445705, 35.734982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432972, 0.711166, 0.553875,
		0.031350, 0.602204, -0.797727,
		-0.900862, 0.362757, 0.238443,
		27.986427, 35.554531, 35.806515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798004, 35.644382, 36.326626>,  <28.617029, 35.300602, 35.639603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798004, 35.644382, 36.326626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942951, 36.013767, 36.377090>,  <29.029919, 36.235397, 36.407368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942951, 36.013767, 36.377090>,  <28.798004, 35.644382, 36.326626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942951, 36.013767, 36.377090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181591, 0.062818, -0.981366,
		-0.914175, 0.378524, -0.144929,
		0.362366, 0.923457, 0.126163,
		29.051661, 36.290806, 36.414940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670641, 36.078445, 35.630936>,  <28.798004, 35.644382, 36.326626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670641, 36.078445, 35.630936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977871, 36.209751, 35.850864>,  <29.162209, 36.288536, 35.982822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977871, 36.209751, 35.850864>,  <28.670641, 36.078445, 35.630936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977871, 36.209751, 35.850864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543177, 0.120761, -0.830889,
		-0.339149, 0.936834, -0.085553,
		0.768074, 0.328265, 0.549822,
		29.208294, 36.308231, 36.015812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865881, 36.780472, 35.532761>,  <28.670641, 36.078445, 35.630936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865881, 36.780472, 35.532761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159380, 36.530636, 35.639721>,  <29.335480, 36.380733, 35.703896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159380, 36.530636, 35.639721>,  <28.865881, 36.780472, 35.532761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159380, 36.530636, 35.639721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590468, 0.391521, -0.705733,
		0.336103, 0.675719, 0.656078,
		0.733745, -0.624592, 0.267399,
		29.379503, 36.343258, 35.719940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498440, 37.184731, 35.693302>,  <28.865881, 36.780472, 35.532761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498440, 37.184731, 35.693302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484055, 36.853306, 35.469807>,  <29.475424, 36.654449, 35.335709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484055, 36.853306, 35.469807>,  <29.498440, 37.184731, 35.693302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484055, 36.853306, 35.469807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424898, 0.493375, -0.758975,
		0.904526, -0.264704, 0.334310,
		-0.035964, -0.828561, -0.558743,
		29.473265, 36.604736, 35.302185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174532, 37.207729, 35.400784>,  <29.498440, 37.184731, 35.693302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174532, 37.207729, 35.400784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869076, 37.053299, 35.193787>,  <29.685802, 36.960640, 35.069588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869076, 37.053299, 35.193787>,  <30.174532, 37.207729, 35.400784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869076, 37.053299, 35.193787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231951, 0.583961, -0.777939,
		0.602544, -0.714096, -0.356383,
		-0.763636, -0.386079, -0.517497,
		29.639984, 36.937477, 35.038540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622456, 37.180649, 36.008495>,  <30.174532, 37.207729, 35.400784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622456, 37.180649, 36.008495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851200, 37.434746, 35.800865>,  <30.988447, 37.587204, 35.676289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851200, 37.434746, 35.800865>,  <30.622456, 37.180649, 36.008495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851200, 37.434746, 35.800865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714823, -0.696312, -0.064629,
		-0.402493, -0.334087, -0.852282,
		0.571863, 0.635244, -0.519074,
		31.022758, 37.625320, 35.645142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067722, 36.621864, 35.829636>,  <30.622456, 37.180649, 36.008495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067722, 36.621864, 35.829636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227028, 36.976013, 35.733719>,  <31.322611, 37.188503, 35.676167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227028, 36.976013, 35.733719>,  <31.067722, 36.621864, 35.829636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227028, 36.976013, 35.733719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915955, -0.397861, 0.052277,
		-0.049121, -0.240463, -0.969415,
		0.398263, 0.885372, -0.239796,
		31.346506, 37.241627, 35.661781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624926, 36.605110, 35.232933>,  <31.067722, 36.621864, 35.829636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624926, 36.605110, 35.232933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720913, 36.879738, 35.507462>,  <31.778505, 37.044514, 35.672180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720913, 36.879738, 35.507462>,  <31.624926, 36.605110, 35.232933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720913, 36.879738, 35.507462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908143, -0.408601, 0.091222,
		0.343063, 0.601390, -0.721553,
		0.239968, 0.686568, 0.686324,
		31.792904, 37.085709, 35.713360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707031, 36.199314, 35.818981>,  <31.624926, 36.605110, 35.232933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707031, 36.199314, 35.818981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513269, 35.849915, 35.799564>,  <31.397013, 35.640274, 35.787914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513269, 35.849915, 35.799564>,  <31.707031, 36.199314, 35.818981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513269, 35.849915, 35.799564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737185, -0.377675, -0.560285,
		0.471072, -0.307194, 0.826876,
		-0.484407, -0.873495, -0.048546,
		31.367947, 35.587868, 35.785000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292747, 35.652798, 36.001434>,  <31.707031, 36.199314, 35.818981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292747, 35.652798, 36.001434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977953, 35.540070, 35.781898>,  <31.789076, 35.472431, 35.650177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977953, 35.540070, 35.781898>,  <32.292747, 35.652798, 36.001434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977953, 35.540070, 35.781898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616146, -0.313129, -0.722713,
		0.031816, -0.906934, 0.420071,
		-0.786990, -0.281819, -0.548841,
		31.741856, 35.455524, 35.617245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901035, 35.957794, 35.755348>,  <32.292747, 35.652798, 36.001434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901035, 35.957794, 35.755348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170517, 35.753521, 35.969009>,  <33.332207, 35.630955, 36.097206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170517, 35.753521, 35.969009>,  <32.901035, 35.957794, 35.755348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170517, 35.753521, 35.969009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458084, -0.278607, -0.844119,
		0.579899, 0.813375, 0.046238,
		0.673704, -0.510685, 0.534158,
		33.372627, 35.600315, 36.129257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539814, 36.094296, 35.383530>,  <32.901035, 35.957794, 35.755348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539814, 36.094296, 35.383530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563728, 35.742966, 35.573257>,  <33.578079, 35.532169, 35.687092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563728, 35.742966, 35.573257>,  <33.539814, 36.094296, 35.383530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563728, 35.742966, 35.573257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686076, -0.308987, -0.658655,
		0.725069, 0.364798, 0.584121,
		0.059790, -0.878322, 0.474316,
		33.581665, 35.479469, 35.715553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183903, 36.037498, 35.813011>,  <33.539814, 36.094296, 35.383530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183903, 36.037498, 35.813011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061535, 35.674343, 35.698364>,  <33.988113, 35.456451, 35.629574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061535, 35.674343, 35.698364>,  <34.183903, 36.037498, 35.813011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061535, 35.674343, 35.698364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732635, -0.032237, -0.679858,
		0.607995, -0.417973, 0.675012,
		-0.305923, -0.907888, -0.286621,
		33.969757, 35.401978, 35.612377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748829, 35.566154, 35.745895>,  <34.183903, 36.037498, 35.813011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748829, 35.566154, 35.745895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452198, 35.419621, 35.521088>,  <34.274220, 35.331699, 35.386204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452198, 35.419621, 35.521088>,  <34.748829, 35.566154, 35.745895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452198, 35.419621, 35.521088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598660, 0.016720, -0.800828,
		0.302769, -0.930333, 0.206911,
		-0.741577, -0.366335, -0.562016,
		34.229725, 35.309719, 35.352482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017124, 35.073071, 35.409115>,  <34.748829, 35.566154, 35.745895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017124, 35.073071, 35.409115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707798, 35.180939, 35.179588>,  <34.522202, 35.245659, 35.041874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707798, 35.180939, 35.179588>,  <35.017124, 35.073071, 35.409115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707798, 35.180939, 35.179588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541504, -0.189827, -0.818986,
		-0.329782, -0.944057, 0.000768,
		-0.773316, 0.269671, -0.573812,
		34.475803, 35.261841, 35.007446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031437, 34.578510, 34.999828>,  <35.017124, 35.073071, 35.409115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031437, 34.578510, 34.999828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816280, 34.848824, 34.798237>,  <34.687187, 35.011009, 34.677280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816280, 34.848824, 34.798237>,  <35.031437, 34.578510, 34.999828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816280, 34.848824, 34.798237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182588, -0.490249, -0.852243,
		-0.823005, -0.550432, 0.140310,
		-0.537888, 0.675781, -0.503980,
		34.654915, 35.051559, 34.647041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398537, 34.243725, 34.627586>,  <35.031437, 34.578510, 34.999828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398537, 34.243725, 34.627586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529716, 34.584179, 34.463627>,  <34.608425, 34.788452, 34.365250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529716, 34.584179, 34.463627>,  <34.398537, 34.243725, 34.627586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529716, 34.584179, 34.463627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104199, -0.398658, -0.911161,
		-0.938930, 0.341529, -0.042054,
		0.327953, 0.851134, -0.409899,
		34.628101, 34.839520, 34.340656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971626, 34.346203, 34.124508>,  <34.398537, 34.243725, 34.627586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971626, 34.346203, 34.124508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272274, 34.593918, 34.033688>,  <34.452663, 34.742546, 33.979195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272274, 34.593918, 34.033688>,  <33.971626, 34.346203, 34.124508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272274, 34.593918, 34.033688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073183, -0.263800, -0.961797,
		-0.655524, 0.739522, -0.152956,
		0.751620, 0.619287, -0.227048,
		34.497761, 34.779705, 33.965572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717072, 34.822315, 33.595043>,  <33.971626, 34.346203, 34.124508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717072, 34.822315, 33.595043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107815, 34.736832, 33.598728>,  <34.342258, 34.685539, 33.600941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107815, 34.736832, 33.598728>,  <33.717072, 34.822315, 33.595043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107815, 34.736832, 33.598728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067404, -0.348399, -0.934920,
		0.203012, 0.912659, -0.354740,
		0.976853, -0.213711, 0.009212,
		34.400871, 34.672718, 33.601490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999939, 34.930454, 32.837845>,  <33.717072, 34.822315, 33.595043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999939, 34.930454, 32.837845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291222, 34.720783, 33.014458>,  <34.465992, 34.594982, 33.120426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291222, 34.720783, 33.014458>,  <33.999939, 34.930454, 32.837845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291222, 34.720783, 33.014458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226021, -0.424523, -0.876752,
		0.647013, 0.738255, -0.190667,
		0.728210, -0.524175, 0.441533,
		34.509686, 34.563530, 33.146919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702686, 34.898018, 32.413235>,  <33.999939, 34.930454, 32.837845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702686, 34.898018, 32.413235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724201, 34.563259, 32.631119>,  <34.737110, 34.362404, 32.761848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724201, 34.563259, 32.631119>,  <34.702686, 34.898018, 32.413235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724201, 34.563259, 32.631119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239081, -0.518842, -0.820758,
		0.969509, 0.174375, 0.172181,
		0.053785, -0.836897, 0.544712,
		34.740337, 34.312191, 32.794533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248066, 34.525112, 32.176624>,  <34.702686, 34.898018, 32.413235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248066, 34.525112, 32.176624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027210, 34.243114, 32.354671>,  <34.894695, 34.073917, 32.461498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027210, 34.243114, 32.354671>,  <35.248066, 34.525112, 32.176624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027210, 34.243114, 32.354671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203215, -0.631564, -0.748218,
		0.808608, -0.322666, 0.491976,
		-0.552139, -0.704992, 0.445117,
		34.861568, 34.031616, 32.488205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638771, 33.903004, 32.108162>,  <35.248066, 34.525112, 32.176624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638771, 33.903004, 32.108162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261227, 33.807026, 32.198982>,  <35.034698, 33.749439, 32.253475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261227, 33.807026, 32.198982>,  <35.638771, 33.903004, 32.108162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261227, 33.807026, 32.198982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040230, -0.765695, -0.641945,
		0.327882, -0.596773, 0.732363,
		-0.943862, -0.239945, 0.227049,
		34.978069, 33.735043, 32.267097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712303, 33.166752, 32.136383>,  <35.638771, 33.903004, 32.108162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712303, 33.166752, 32.136383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321808, 33.243740, 32.096550>,  <35.087509, 33.289932, 32.072651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321808, 33.243740, 32.096550>,  <35.712303, 33.166752, 32.136383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321808, 33.243740, 32.096550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058554, -0.676714, -0.733914,
		-0.208647, -0.710642, 0.671903,
		-0.976237, 0.192471, -0.099583,
		35.028938, 33.301483, 32.066673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365498, 32.518970, 32.196022>,  <35.712303, 33.166752, 32.136383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365498, 32.518970, 32.196022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102570, 32.761135, 32.016514>,  <34.944813, 32.906433, 31.908808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102570, 32.761135, 32.016514>,  <35.365498, 32.518970, 32.196022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102570, 32.761135, 32.016514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018847, -0.608520, -0.793315,
		-0.753373, -0.513007, 0.411404,
		-0.657323, 0.605416, -0.448774,
		34.905373, 32.942760, 31.881882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983631, 32.001198, 31.834436>,  <35.365498, 32.518970, 32.196022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983631, 32.001198, 31.834436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914604, 32.361073, 31.674046>,  <34.873188, 32.577000, 31.577810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914604, 32.361073, 31.674046>,  <34.983631, 32.001198, 31.834436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914604, 32.361073, 31.674046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169276, -0.373940, -0.911874,
		-0.970344, -0.225232, -0.087768,
		-0.172563, 0.899689, -0.400976,
		34.862835, 32.630978, 31.553753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457756, 31.935816, 31.357384>,  <34.983631, 32.001198, 31.834436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457756, 31.935816, 31.357384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651886, 32.261139, 31.229015>,  <34.768364, 32.456333, 31.151995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651886, 32.261139, 31.229015>,  <34.457756, 31.935816, 31.357384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651886, 32.261139, 31.229015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056962, -0.395679, -0.916621,
		-0.872476, 0.426579, -0.238360,
		0.485325, 0.813308, -0.320922,
		34.797482, 32.505131, 31.132738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165791, 32.062420, 30.711699>,  <34.457756, 31.935816, 31.357384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165791, 32.062420, 30.711699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526382, 32.235390, 30.719130>,  <34.742737, 32.339172, 30.723589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526382, 32.235390, 30.719130>,  <34.165791, 32.062420, 30.711699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526382, 32.235390, 30.719130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171459, -0.317365, -0.932674,
		-0.397419, 0.843969, -0.360241,
		0.901476, 0.432429, 0.018579,
		34.796825, 32.365120, 30.724703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339020, 31.935675, 30.075678>,  <34.165791, 32.062420, 30.711699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339020, 31.935675, 30.075678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663410, 32.139103, 30.191381>,  <34.858044, 32.261158, 30.260803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663410, 32.139103, 30.191381>,  <34.339020, 31.935675, 30.075678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663410, 32.139103, 30.191381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384603, -0.090823, -0.918603,
		-0.440903, 0.856217, -0.269253,
		0.810978, 0.508570, 0.289260,
		34.906704, 32.291676, 30.278160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439262, 32.537380, 29.599806>,  <34.339020, 31.935675, 30.075678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439262, 32.537380, 29.599806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795933, 32.446098, 29.756184>,  <35.009933, 32.391331, 29.850010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795933, 32.446098, 29.756184>,  <34.439262, 32.537380, 29.599806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795933, 32.446098, 29.756184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375233, -0.110476, -0.920323,
		0.253209, 0.967326, -0.012881,
		0.891676, -0.228201, 0.390946,
		35.063435, 32.377640, 29.873468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936150, 33.019680, 29.390993>,  <34.439262, 32.537380, 29.599806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936150, 33.019680, 29.390993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132141, 32.682652, 29.480425>,  <35.249737, 32.480434, 29.534084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132141, 32.682652, 29.480425>,  <34.936150, 33.019680, 29.390993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132141, 32.682652, 29.480425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435687, 0.014556, -0.899980,
		0.755045, 0.538385, 0.374231,
		0.489983, -0.842573, 0.223577,
		35.279137, 32.429878, 29.547499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549370, 33.054775, 29.045731>,  <34.936150, 33.019680, 29.390993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549370, 33.054775, 29.045731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526672, 32.661968, 29.117744>,  <35.513054, 32.426285, 29.160954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526672, 32.661968, 29.117744>,  <35.549370, 33.054775, 29.045731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526672, 32.661968, 29.117744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238150, -0.188435, -0.952773,
		0.969569, -0.011189, 0.244561,
		-0.056744, -0.982022, 0.180036,
		35.509647, 32.367363, 29.171755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144646, 32.766426, 28.814917>,  <35.549370, 33.054775, 29.045731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144646, 32.766426, 28.814917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913494, 32.440037, 28.821236>,  <35.774803, 32.244205, 28.825027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913494, 32.440037, 28.821236>,  <36.144646, 32.766426, 28.814917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913494, 32.440037, 28.821236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376797, -0.283922, -0.881710,
		0.723933, -0.503570, 0.471528,
		-0.577880, -0.815969, 0.015797,
		35.740131, 32.195248, 28.825975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506840, 32.084629, 28.807360>,  <36.144646, 32.766426, 28.814917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506840, 32.084629, 28.807360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141865, 32.048626, 28.647678>,  <35.922882, 32.027023, 28.551870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141865, 32.048626, 28.647678>,  <36.506840, 32.084629, 28.807360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141865, 32.048626, 28.647678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409213, -0.193238, -0.891742,
		0.003127, -0.977014, 0.213151,
		-0.912433, -0.090013, -0.399203,
		35.868134, 32.021622, 28.527918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668587, 31.572094, 28.356480>,  <36.506840, 32.084629, 28.807360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668587, 31.572094, 28.356480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298809, 31.693558, 28.264219>,  <36.076942, 31.766436, 28.208864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298809, 31.693558, 28.264219>,  <36.668587, 31.572094, 28.356480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298809, 31.693558, 28.264219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193340, -0.148104, -0.969889,
		-0.328677, -0.941199, 0.078203,
		-0.924441, 0.303661, -0.230650,
		36.021477, 31.784657, 28.195024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528374, 31.116234, 27.900761>,  <36.668587, 31.572094, 28.356480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528374, 31.116234, 27.900761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247547, 31.394194, 27.838518>,  <36.079052, 31.560970, 27.801172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247547, 31.394194, 27.838518>,  <36.528374, 31.116234, 27.900761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247547, 31.394194, 27.838518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112715, -0.107319, -0.987815,
		-0.703131, -0.711054, -0.002980,
		-0.702070, 0.694899, -0.155606,
		36.036926, 31.602663, 27.791836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150356, 30.757835, 27.461535>,  <36.528374, 31.116234, 27.900761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150356, 30.757835, 27.461535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067341, 31.147181, 27.422565>,  <36.017532, 31.380789, 27.399183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067341, 31.147181, 27.422565>,  <36.150356, 30.757835, 27.461535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067341, 31.147181, 27.422565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019060, -0.095550, -0.995242,
		-0.978042, -0.208406, 0.001278,
		-0.207536, 0.973364, -0.097424,
		36.005081, 31.439190, 27.393339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757851, 30.857208, 26.924118>,  <36.150356, 30.757835, 27.461535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757851, 30.857208, 26.924118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903542, 31.229733, 26.924112>,  <35.990955, 31.453247, 26.924109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903542, 31.229733, 26.924112>,  <35.757851, 30.857208, 26.924118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903542, 31.229733, 26.924112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042071, -0.016469, -0.998979,
		-0.930360, 0.363853, -0.045180,
		0.364226, 0.931311, -0.000014,
		36.012810, 31.509127, 26.924109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317554, 31.272642, 26.458927>,  <35.757851, 30.857208, 26.924118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317554, 31.272642, 26.458927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678043, 31.444571, 26.481028>,  <35.894337, 31.547728, 26.494287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678043, 31.444571, 26.481028>,  <35.317554, 31.272642, 26.458927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678043, 31.444571, 26.481028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032966, 0.059127, -0.997706,
		-0.432100, 0.900977, 0.039118,
		0.901223, 0.429819, 0.055250,
		35.948410, 31.573517, 26.497602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306263, 31.927319, 25.987505>,  <35.317554, 31.272642, 26.458927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306263, 31.927319, 25.987505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682194, 31.813028, 26.062424>,  <35.907753, 31.744453, 26.107374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682194, 31.813028, 26.062424>,  <35.306263, 31.927319, 25.987505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682194, 31.813028, 26.062424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279210, 0.326454, -0.903033,
		0.196877, 0.900993, 0.386589,
		0.939830, -0.285726, 0.187295,
		35.964142, 31.727310, 26.118612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817734, 32.544849, 25.685043>,  <35.306263, 31.927319, 25.987505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817734, 32.544849, 25.685043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052505, 32.222874, 25.719879>,  <36.193367, 32.029686, 25.740780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052505, 32.222874, 25.719879>,  <35.817734, 32.544849, 25.685043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052505, 32.222874, 25.719879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348163, 0.153815, -0.924729,
		0.730958, 0.573069, 0.370530,
		0.586926, -0.804943, 0.087089,
		36.228584, 31.981390, 25.746006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346359, 32.779228, 25.279528>,  <35.817734, 32.544849, 25.685043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346359, 32.779228, 25.279528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403019, 32.385258, 25.319231>,  <36.437016, 32.148876, 25.343054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403019, 32.385258, 25.319231>,  <36.346359, 32.779228, 25.279528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403019, 32.385258, 25.319231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555385, -0.003933, -0.831584,
		0.819441, 0.172917, 0.546458,
		0.141646, -0.984929, 0.099259,
		36.445511, 32.089779, 25.349009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074276, 32.721214, 25.146507>,  <36.346359, 32.779228, 25.279528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074276, 32.721214, 25.146507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907726, 32.365509, 25.070784>,  <36.807796, 32.152084, 25.025351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907726, 32.365509, 25.070784>,  <37.074276, 32.721214, 25.146507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907726, 32.365509, 25.070784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513705, -0.058308, -0.855983,
		0.750158, -0.453660, 0.481098,
		-0.416378, -0.889265, -0.189308,
		36.782814, 32.098728, 25.013992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557468, 32.260014, 24.782755>,  <37.074276, 32.721214, 25.146507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557468, 32.260014, 24.782755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212223, 32.066753, 24.723963>,  <37.005077, 31.950796, 24.688688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212223, 32.066753, 24.723963>,  <37.557468, 32.260014, 24.782755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212223, 32.066753, 24.723963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342416, -0.345961, -0.873534,
		0.371203, -0.804285, 0.464042,
		-0.863111, -0.483154, -0.146979,
		36.953289, 31.921808, 24.679869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660305, 31.481421, 24.625042>,  <37.557468, 32.260014, 24.782755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660305, 31.481421, 24.625042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320435, 31.605923, 24.454784>,  <37.116512, 31.680624, 24.352631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320435, 31.605923, 24.454784>,  <37.660305, 31.481421, 24.625042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320435, 31.605923, 24.454784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264011, -0.447630, -0.854357,
		-0.456482, -0.838290, 0.298151,
		-0.849660, 0.311283, -0.425653,
		37.065533, 31.699299, 24.327091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296562, 30.887915, 24.260927>,  <37.660305, 31.481421, 24.625042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296562, 30.887915, 24.260927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152367, 31.229824, 24.111580>,  <37.065849, 31.434971, 24.021971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152367, 31.229824, 24.111580>,  <37.296562, 30.887915, 24.260927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152367, 31.229824, 24.111580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090439, -0.366368, -0.926065,
		-0.928368, -0.367605, 0.054768,
		-0.360491, 0.854776, -0.373370,
		37.044220, 31.486258, 23.999569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741741, 30.718012, 23.785475>,  <37.296562, 30.887915, 24.260927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741741, 30.718012, 23.785475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860134, 31.088709, 23.692921>,  <36.931171, 31.311127, 23.637388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860134, 31.088709, 23.692921>,  <36.741741, 30.718012, 23.785475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860134, 31.088709, 23.692921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082611, -0.266169, -0.960380,
		-0.951615, 0.265139, -0.155340,
		0.295981, 0.926744, -0.231387,
		36.948929, 31.366732, 23.623505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397182, 30.754299, 23.124964>,  <36.741741, 30.718012, 23.785475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397182, 30.754299, 23.124964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676502, 31.040592, 23.129063>,  <36.844093, 31.212368, 23.131523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676502, 31.040592, 23.129063>,  <36.397182, 30.754299, 23.124964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676502, 31.040592, 23.129063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350637, -0.329543, -0.876616,
		-0.624047, 0.615732, -0.481082,
		0.698297, 0.715735, 0.010248,
		36.885990, 31.255312, 23.132137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464436, 30.990068, 22.433092>,  <36.397182, 30.754299, 23.124964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464436, 30.990068, 22.433092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799709, 31.139685, 22.591858>,  <37.000874, 31.229454, 22.687117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799709, 31.139685, 22.591858>,  <36.464436, 30.990068, 22.433092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799709, 31.139685, 22.591858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430328, -0.006473, -0.902650,
		-0.335058, 0.927390, -0.166386,
		0.838185, 0.374040, 0.396913,
		37.051167, 31.251896, 22.710932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621132, 31.677149, 22.166727>,  <36.464436, 30.990068, 22.433092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621132, 31.677149, 22.166727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980568, 31.546383, 22.283796>,  <37.196232, 31.467922, 22.354038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980568, 31.546383, 22.283796>,  <36.621132, 31.677149, 22.166727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980568, 31.546383, 22.283796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312263, 0.007855, -0.949963,
		0.308259, 0.945021, 0.109142,
		0.898592, -0.326916, 0.292674,
		37.250145, 31.448309, 22.371599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164364, 32.103989, 21.778328>,  <36.621132, 31.677149, 22.166727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164364, 32.103989, 21.778328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346214, 31.775246, 21.915653>,  <37.455326, 31.578001, 21.998049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346214, 31.775246, 21.915653>,  <37.164364, 32.103989, 21.778328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346214, 31.775246, 21.915653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426073, -0.137813, -0.894131,
		0.782159, 0.552776, 0.287517,
		0.454630, -0.821855, 0.343315,
		37.482605, 31.528688, 22.018648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898746, 32.245655, 21.575254>,  <37.164364, 32.103989, 21.778328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898746, 32.245655, 21.575254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824177, 31.857172, 21.634583>,  <37.779434, 31.624083, 21.670179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824177, 31.857172, 21.634583>,  <37.898746, 32.245655, 21.575254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824177, 31.857172, 21.634583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414926, -0.214674, -0.884167,
		0.890552, -0.103288, 0.443001,
		-0.186425, -0.971209, 0.148321,
		37.768250, 31.565809, 21.679079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456776, 31.952940, 21.270681>,  <37.898746, 32.245655, 21.575254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456776, 31.952940, 21.270681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209396, 31.640413, 21.304291>,  <38.060966, 31.452896, 21.324457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209396, 31.640413, 21.304291>,  <38.456776, 31.952940, 21.270681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209396, 31.640413, 21.304291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255735, -0.301216, -0.918623,
		0.743047, -0.546635, 0.386098,
		-0.618450, -0.781319, 0.084023,
		38.023861, 31.406017, 21.329498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862293, 31.398600, 21.181189>,  <38.456776, 31.952940, 21.270681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862293, 31.398600, 21.181189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491692, 31.276350, 21.093391>,  <38.269329, 31.202999, 21.040714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491692, 31.276350, 21.093391>,  <38.862293, 31.398600, 21.181189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491692, 31.276350, 21.093391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320007, -0.333153, -0.886907,
		0.197938, -0.891965, 0.406471,
		-0.926507, -0.305626, -0.219491,
		38.213737, 31.184662, 21.027544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922546, 30.688822, 20.825418>,  <38.862293, 31.398600, 21.181189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922546, 30.688822, 20.825418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558880, 30.817253, 20.719337>,  <38.340679, 30.894312, 20.655689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558880, 30.817253, 20.719337>,  <38.922546, 30.688822, 20.825418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558880, 30.817253, 20.719337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192117, -0.241639, -0.951158,
		-0.369482, -0.915706, 0.158004,
		-0.909162, 0.321080, -0.265204,
		38.286133, 30.913576, 20.639776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624607, 30.173042, 20.467880>,  <38.922546, 30.688822, 20.825418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624607, 30.173042, 20.467880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378250, 30.466076, 20.351952>,  <38.230434, 30.641897, 20.282394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378250, 30.466076, 20.351952>,  <38.624607, 30.173042, 20.467880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378250, 30.466076, 20.351952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042517, -0.336427, -0.940749,
		-0.786683, -0.591721, 0.176055,
		-0.615891, 0.732587, -0.289820,
		38.193481, 30.685852, 20.265005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027943, 29.834372, 20.082096>,  <38.624607, 30.173042, 20.467880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027943, 29.834372, 20.082096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056484, 30.216505, 19.967379>,  <38.073608, 30.445786, 19.898548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056484, 30.216505, 19.967379>,  <38.027943, 29.834372, 20.082096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056484, 30.216505, 19.967379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001766, -0.287403, -0.957808,
		-0.997449, 0.068851, -0.018820,
		0.071355, 0.955332, -0.286791,
		38.077892, 30.503105, 19.881342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592369, 29.887003, 19.500669>,  <38.027943, 29.834372, 20.082096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592369, 29.887003, 19.500669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861088, 30.180897, 19.463028>,  <38.022320, 30.357233, 19.440443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861088, 30.180897, 19.463028>,  <37.592369, 29.887003, 19.500669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861088, 30.180897, 19.463028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067819, -0.187516, -0.979917,
		-0.737626, 0.651922, -0.175801,
		0.671795, 0.734735, -0.094104,
		38.062626, 30.401318, 19.434797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313576, 30.274801, 18.879528>,  <37.592369, 29.887003, 19.500669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313576, 30.274801, 18.879528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700676, 30.247683, 18.976572>,  <37.932938, 30.231411, 19.034800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700676, 30.247683, 18.976572>,  <37.313576, 30.274801, 18.879528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700676, 30.247683, 18.976572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177898, -0.497952, -0.848762,
		0.178352, 0.864551, -0.469833,
		0.967751, -0.067796, 0.242612,
		37.991001, 30.227345, 19.049356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808567, 30.631979, 18.416265>,  <37.313576, 30.274801, 18.879528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808567, 30.631979, 18.416265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956940, 30.303961, 18.590591>,  <38.045963, 30.107151, 18.695187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956940, 30.303961, 18.590591>,  <37.808567, 30.631979, 18.416265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956940, 30.303961, 18.590591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066695, -0.444561, -0.893262,
		0.926261, 0.360408, -0.110210,
		0.370934, -0.820044, 0.435817,
		38.068218, 30.057947, 18.721336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380169, 30.505358, 18.067711>,  <37.808567, 30.631979, 18.416265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380169, 30.505358, 18.067711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236305, 30.170603, 18.232765>,  <38.149986, 29.969749, 18.331797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236305, 30.170603, 18.232765>,  <38.380169, 30.505358, 18.067711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236305, 30.170603, 18.232765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057575, -0.421478, -0.905009,
		0.931307, -0.349250, 0.103403,
		-0.359656, -0.836887, 0.412634,
		38.128407, 29.919537, 18.356556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477222, 29.745815, 17.788029>,  <38.380169, 30.505358, 18.067711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477222, 29.745815, 17.788029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107956, 29.819117, 17.923189>,  <37.886395, 29.863098, 18.004286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107956, 29.819117, 17.923189>,  <38.477222, 29.745815, 17.788029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107956, 29.819117, 17.923189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384241, -0.464812, -0.797690,
		0.010880, -0.866238, 0.499514,
		-0.923169, 0.183255, 0.337901,
		37.831005, 29.874092, 18.024559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794342, 29.709013, 18.499107>,  <38.477222, 29.745815, 17.788029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794342, 29.709013, 18.499107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493866, 29.450258, 18.446566>,  <38.313580, 29.295006, 18.415041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493866, 29.450258, 18.446566>,  <38.794342, 29.709013, 18.499107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493866, 29.450258, 18.446566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614682, 0.758056, -0.217984,
		0.240583, -0.083008, -0.967073,
		-0.751190, -0.646885, -0.131352,
		38.268509, 29.256193, 18.407160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450539, 29.435328, 18.051069>,  <38.794342, 29.709013, 18.499107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450539, 29.435328, 18.051069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382111, 29.776079, 17.853065>,  <39.341053, 29.980530, 17.734262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382111, 29.776079, 17.853065>,  <39.450539, 29.435328, 18.051069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382111, 29.776079, 17.853065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547066, 0.499979, 0.671372,
		0.819423, -0.155950, -0.551566,
		-0.171071, 0.851880, -0.495009,
		39.330788, 30.031643, 17.704563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064835, 29.672331, 17.703897>,  <39.450539, 29.435328, 18.051069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064835, 29.672331, 17.703897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822262, 29.969009, 17.818531>,  <39.676720, 30.147017, 17.887312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822262, 29.969009, 17.818531>,  <40.064835, 29.672331, 17.703897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822262, 29.969009, 17.818531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739649, 0.393914, 0.545667,
		0.291830, 0.542879, -0.787475,
		-0.606428, 0.741697, 0.286584,
		39.640335, 30.191519, 17.904507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299442, 30.453060, 17.615177>,  <40.064835, 29.672331, 17.703897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299442, 30.453060, 17.615177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091782, 30.424049, 17.955816>,  <39.967186, 30.406643, 18.160200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091782, 30.424049, 17.955816>,  <40.299442, 30.453060, 17.615177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091782, 30.424049, 17.955816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832153, 0.184373, 0.523000,
		-0.194942, 0.980177, -0.035365,
		-0.519153, -0.072525, 0.851599,
		39.936035, 30.402292, 18.211296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960712, 31.173779, 17.827950>,  <40.299442, 30.453060, 17.615177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960712, 31.173779, 17.827950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718395, 31.350758, 17.563448>,  <39.573006, 31.456945, 17.404747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718395, 31.350758, 17.563448>,  <39.960712, 31.173779, 17.827950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718395, 31.350758, 17.563448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266955, 0.669901, 0.692797,
		0.749502, 0.596215, -0.287706,
		-0.605790, 0.442448, -0.661255,
		39.536659, 31.483492, 17.365072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178566, 31.914394, 17.850006>,  <39.960712, 31.173779, 17.827950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178566, 31.914394, 17.850006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788082, 31.871660, 17.774538>,  <39.553791, 31.846020, 17.729258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788082, 31.871660, 17.774538>,  <40.178566, 31.914394, 17.850006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788082, 31.871660, 17.774538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209817, 0.684856, 0.697817,
		0.054660, 0.720804, -0.690981,
		-0.976212, -0.106836, -0.188671,
		39.495220, 31.839609, 17.717937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897964, 32.655571, 17.643967>,  <40.178566, 31.914394, 17.850006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897964, 32.655571, 17.643967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646500, 32.396347, 17.815920>,  <39.495621, 32.240814, 17.919092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646500, 32.396347, 17.815920>,  <39.897964, 32.655571, 17.643967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646500, 32.396347, 17.815920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160901, 0.649211, 0.743395,
		-0.760849, 0.398178, -0.512409,
		-0.628665, -0.648058, 0.429884,
		39.457901, 32.201931, 17.944885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303619, 33.065571, 17.939314>,  <39.897964, 32.655571, 17.643967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303619, 33.065571, 17.939314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262241, 32.724560, 18.144251>,  <39.237415, 32.519955, 18.267214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262241, 32.724560, 18.144251>,  <39.303619, 33.065571, 17.939314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262241, 32.724560, 18.144251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077112, 0.520431, 0.850415,
		-0.991641, 0.048463, -0.119576,
		-0.103445, -0.852528, 0.512343,
		39.231209, 32.468803, 18.297955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720490, 33.165504, 18.497543>,  <39.303619, 33.065571, 17.939314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720490, 33.165504, 18.497543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925350, 32.849678, 18.632769>,  <39.048267, 32.660183, 18.713903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925350, 32.849678, 18.632769>,  <38.720490, 33.165504, 18.497543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925350, 32.849678, 18.632769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050697, 0.365123, 0.929578,
		-0.857400, -0.493220, 0.146968,
		0.512148, -0.789569, 0.338061,
		39.078995, 32.612808, 18.734186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261982, 32.764542, 19.035759>,  <38.720490, 33.165504, 18.497543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261982, 32.764542, 19.035759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655674, 32.709930, 19.080748>,  <38.891888, 32.677162, 19.107740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655674, 32.709930, 19.080748>,  <38.261982, 32.764542, 19.035759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655674, 32.709930, 19.080748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046514, 0.413693, 0.909228,
		-0.170667, -0.900121, 0.400818,
		0.984230, -0.136532, 0.112472,
		38.950943, 32.668972, 19.114489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347828, 32.740505, 19.766794>,  <38.261982, 32.764542, 19.035759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347828, 32.740505, 19.766794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731544, 32.763214, 19.656132>,  <38.961773, 32.776840, 19.589735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731544, 32.763214, 19.656132>,  <38.347828, 32.740505, 19.766794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731544, 32.763214, 19.656132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226108, 0.432569, 0.872789,
		0.169222, -0.899812, 0.402123,
		0.959291, 0.056772, -0.276654,
		39.019333, 32.780247, 19.573135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720863, 32.375519, 20.234789>,  <38.347828, 32.740505, 19.766794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720863, 32.375519, 20.234789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968456, 32.639538, 20.064520>,  <39.117012, 32.797947, 19.962358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968456, 32.639538, 20.064520>,  <38.720863, 32.375519, 20.234789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968456, 32.639538, 20.064520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264953, 0.334724, 0.904301,
		0.739361, -0.672533, 0.032308,
		0.618987, 0.660045, -0.425672,
		39.154152, 32.837551, 19.936819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253300, 32.397202, 20.659424>,  <38.720863, 32.375519, 20.234789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253300, 32.397202, 20.659424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301834, 32.735664, 20.451847>,  <39.330956, 32.938740, 20.327301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301834, 32.735664, 20.451847>,  <39.253300, 32.397202, 20.659424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301834, 32.735664, 20.451847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177893, 0.495804, 0.850019,
		0.976541, -0.195455, -0.090365,
		0.121337, 0.846154, -0.518943,
		39.338234, 32.989510, 20.296164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718105, 32.661270, 20.950380>,  <39.253300, 32.397202, 20.659424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718105, 32.661270, 20.950380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554379, 32.981785, 20.775843>,  <39.456142, 33.174095, 20.671120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554379, 32.981785, 20.775843>,  <39.718105, 32.661270, 20.950380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554379, 32.981785, 20.775843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153628, 0.531944, 0.832727,
		0.899364, 0.273816, -0.340835,
		-0.409319, 0.801287, -0.436346,
		39.431583, 33.222172, 20.644939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121403, 33.155411, 21.181614>,  <39.718105, 32.661270, 20.950380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121403, 33.155411, 21.181614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779140, 33.334682, 21.078089>,  <39.573784, 33.442245, 21.015974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779140, 33.334682, 21.078089>,  <40.121403, 33.155411, 21.181614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779140, 33.334682, 21.078089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068548, 0.397534, 0.915023,
		0.512981, 0.800689, -0.309432,
		-0.855659, 0.448179, -0.258813,
		39.522442, 33.469135, 21.000444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166218, 33.883705, 21.484383>,  <40.121403, 33.155411, 21.181614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166218, 33.883705, 21.484383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781651, 33.814575, 21.398771>,  <39.550911, 33.773098, 21.347404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781651, 33.814575, 21.398771>,  <40.166218, 33.883705, 21.484383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781651, 33.814575, 21.398771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271038, 0.462021, 0.844438,
		-0.047052, 0.869867, -0.491037,
		-0.961418, -0.172822, -0.214028,
		39.493225, 33.762730, 21.334562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821701, 34.544384, 21.435797>,  <40.166218, 33.883705, 21.484383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821701, 34.544384, 21.435797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534134, 34.283176, 21.531069>,  <39.361595, 34.126453, 21.588232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534134, 34.283176, 21.531069>,  <39.821701, 34.544384, 21.435797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534134, 34.283176, 21.531069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229543, 0.546469, 0.805408,
		-0.656103, 0.524347, -0.542760,
		-0.718915, -0.653017, 0.238180,
		39.318459, 34.087273, 21.602522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367748, 34.920002, 21.798260>,  <39.821701, 34.544384, 21.435797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367748, 34.920002, 21.798260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257450, 34.550289, 21.903839>,  <39.191273, 34.328461, 21.967188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257450, 34.550289, 21.903839>,  <39.367748, 34.920002, 21.798260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257450, 34.550289, 21.903839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263353, 0.336732, 0.904022,
		-0.924451, 0.179766, -0.336264,
		-0.275744, -0.924281, 0.263951,
		39.174728, 34.273006, 21.983025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665905, 34.951347, 22.008644>,  <39.367748, 34.920002, 21.798260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665905, 34.951347, 22.008644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829441, 34.637581, 22.195211>,  <38.927563, 34.449322, 22.307152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829441, 34.637581, 22.195211>,  <38.665905, 34.951347, 22.008644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829441, 34.637581, 22.195211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360383, 0.330777, 0.872187,
		-0.838435, -0.524675, -0.147453,
		0.408841, -0.784412, 0.466419,
		38.952095, 34.402256, 22.335136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273701, 34.905373, 22.525232>,  <38.665905, 34.951347, 22.008644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273701, 34.905373, 22.525232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543953, 34.643162, 22.660177>,  <38.706104, 34.485836, 22.741144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543953, 34.643162, 22.660177>,  <38.273701, 34.905373, 22.525232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543953, 34.643162, 22.660177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257253, 0.219218, 0.941150,
		-0.690902, -0.722657, -0.020525,
		0.675630, -0.655522, 0.337364,
		38.746643, 34.446507, 22.761387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003250, 34.455154, 23.024288>,  <38.273701, 34.905373, 22.525232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003250, 34.455154, 23.024288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393475, 34.467655, 23.111280>,  <38.627609, 34.475155, 23.163475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393475, 34.467655, 23.111280>,  <38.003250, 34.455154, 23.024288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393475, 34.467655, 23.111280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218503, 0.241800, 0.945404,
		-0.023040, -0.969823, 0.242721,
		0.975564, 0.031253, 0.217480,
		38.686142, 34.477032, 23.176525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987865, 34.309391, 23.728254>,  <38.003250, 34.455154, 23.024288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987865, 34.309391, 23.728254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362740, 34.444298, 23.692606>,  <38.587662, 34.525242, 23.671217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362740, 34.444298, 23.692606>,  <37.987865, 34.309391, 23.728254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362740, 34.444298, 23.692606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006210, 0.271567, 0.962400,
		0.348790, -0.901388, 0.256601,
		0.937180, 0.337269, -0.089123,
		38.643894, 34.545479, 23.665869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384068, 33.882378, 24.121912>,  <37.987865, 34.309391, 23.728254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384068, 33.882378, 24.121912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578300, 34.229294, 24.078066>,  <38.694839, 34.437443, 24.051758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578300, 34.229294, 24.078066>,  <38.384068, 33.882378, 24.121912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578300, 34.229294, 24.078066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048178, 0.151750, 0.987244,
		0.872862, -0.474108, 0.115472,
		0.485583, 0.867291, -0.109615,
		38.723976, 34.489483, 24.045181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548748, 34.093067, 24.835001>,  <38.384068, 33.882378, 24.121912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548748, 34.093067, 24.835001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582699, 34.436199, 24.632248>,  <38.603069, 34.642078, 24.510595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582699, 34.436199, 24.632248>,  <38.548748, 34.093067, 24.835001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582699, 34.436199, 24.632248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170498, 0.513719, 0.840847,
		0.981695, 0.015052, 0.189862,
		0.084879, 0.857826, -0.506882,
		38.608162, 34.693546, 24.480183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979057, 34.433578, 25.260546>,  <38.548748, 34.093067, 24.835001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979057, 34.433578, 25.260546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777241, 34.711800, 25.055941>,  <38.656151, 34.878731, 24.933178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777241, 34.711800, 25.055941>,  <38.979057, 34.433578, 25.260546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777241, 34.711800, 25.055941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147672, 0.514199, 0.844862,
		0.850663, 0.501807, -0.156723,
		-0.504544, 0.695550, -0.511513,
		38.625877, 34.920464, 24.902487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213486, 35.062408, 25.482349>,  <38.979057, 34.433578, 25.260546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213486, 35.062408, 25.482349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857872, 35.137196, 25.315178>,  <38.644505, 35.182068, 25.214874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857872, 35.137196, 25.315178>,  <39.213486, 35.062408, 25.482349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857872, 35.137196, 25.315178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249639, 0.567239, 0.784806,
		0.383800, 0.802049, -0.457619,
		-0.889032, 0.186969, -0.417929,
		38.591164, 35.193287, 25.189800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070354, 35.841667, 25.572477>,  <39.213486, 35.062408, 25.482349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070354, 35.841667, 25.572477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717613, 35.678486, 25.477898>,  <38.505970, 35.580578, 25.421150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717613, 35.678486, 25.477898>,  <39.070354, 35.841667, 25.572477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717613, 35.678486, 25.477898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409560, 0.414220, 0.812823,
		-0.233651, 0.813632, -0.532363,
		-0.881854, -0.407952, -0.236448,
		38.453056, 35.556099, 25.406963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649632, 36.242687, 25.886200>,  <39.070354, 35.841667, 25.572477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649632, 36.242687, 25.886200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399307, 35.944256, 25.795231>,  <38.249111, 35.765198, 25.740650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399307, 35.944256, 25.795231>,  <38.649632, 36.242687, 25.886200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399307, 35.944256, 25.795231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643275, 0.328810, 0.691435,
		-0.441088, 0.579003, -0.685709,
		-0.625811, -0.746083, -0.227424,
		38.211563, 35.720432, 25.727003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947266, 36.491840, 26.033848>,  <38.649632, 36.242687, 25.886200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947266, 36.491840, 26.033848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916454, 36.093266, 26.047550>,  <37.897968, 35.854118, 26.055771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916454, 36.093266, 26.047550>,  <37.947266, 36.491840, 26.033848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916454, 36.093266, 26.047550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526435, 0.069827, 0.847343,
		-0.846718, 0.047237, -0.529940,
		-0.077030, -0.996440, 0.034257,
		37.893345, 35.794334, 26.057827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236691, 36.317589, 26.203413>,  <37.947266, 36.491840, 26.033848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236691, 36.317589, 26.203413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450886, 36.002583, 26.325439>,  <37.579403, 35.813580, 26.398655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450886, 36.002583, 26.325439>,  <37.236691, 36.317589, 26.203413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450886, 36.002583, 26.325439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581794, -0.082144, 0.809178,
		-0.612183, -0.610792, -0.502161,
		0.535488, -0.787519, 0.305067,
		37.611534, 35.766327, 26.416960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780991, 35.775387, 26.376854>,  <37.236691, 36.317589, 26.203413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780991, 35.775387, 26.376854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114552, 35.692215, 26.581354>,  <37.314686, 35.642311, 26.704054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114552, 35.692215, 26.581354>,  <36.780991, 35.775387, 26.376854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114552, 35.692215, 26.581354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537479, -0.095463, 0.837856,
		-0.125406, -0.973475, -0.191362,
		0.833900, -0.207925, 0.511251,
		37.364723, 35.629837, 26.734730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591103, 35.254272, 26.897186>,  <36.780991, 35.775387, 26.376854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591103, 35.254272, 26.897186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932468, 35.421429, 27.021795>,  <37.137287, 35.521721, 27.096561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932468, 35.421429, 27.021795>,  <36.591103, 35.254272, 26.897186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932468, 35.421429, 27.021795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354608, 0.027460, 0.934612,
		0.382007, -0.908084, 0.171620,
		0.853419, 0.417886, 0.311524,
		37.188496, 35.546795, 27.115253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859695, 34.775414, 27.425425>,  <36.591103, 35.254272, 26.897186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859695, 34.775414, 27.425425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049019, 35.123978, 27.476992>,  <37.162613, 35.333115, 27.507933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049019, 35.123978, 27.476992>,  <36.859695, 34.775414, 27.425425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049019, 35.123978, 27.476992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129152, -0.076122, 0.988699,
		0.871375, -0.484614, 0.076515,
		0.473313, 0.871410, 0.128919,
		37.191013, 35.385399, 27.515667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344154, 34.632046, 28.001921>,  <36.859695, 34.775414, 27.425425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344154, 34.632046, 28.001921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311722, 35.027733, 27.953138>,  <37.292263, 35.265144, 27.923870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311722, 35.027733, 27.953138>,  <37.344154, 34.632046, 28.001921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311722, 35.027733, 27.953138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112087, 0.112532, 0.987306,
		0.990385, 0.093722, 0.101755,
		-0.081082, 0.989218, -0.121955,
		37.287395, 35.324497, 27.916552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756374, 34.985886, 28.592983>,  <37.344154, 34.632046, 28.001921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756374, 34.985886, 28.592983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503967, 35.264870, 28.457121>,  <37.352524, 35.432259, 28.375605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503967, 35.264870, 28.457121>,  <37.756374, 34.985886, 28.592983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503967, 35.264870, 28.457121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371521, 0.112662, 0.921564,
		0.681019, 0.707713, 0.188029,
		-0.631019, 0.697460, -0.339655,
		37.314663, 35.474106, 28.355225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840515, 35.613945, 29.012802>,  <37.756374, 34.985886, 28.592983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840515, 35.613945, 29.012802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470341, 35.625530, 28.861679>,  <37.248238, 35.632481, 28.771006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470341, 35.625530, 28.861679>,  <37.840515, 35.613945, 29.012802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470341, 35.625530, 28.861679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358249, 0.257912, 0.897295,
		0.123425, 0.965734, -0.228306,
		-0.925432, 0.028958, -0.377806,
		37.192711, 35.634216, 28.748337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622398, 36.337730, 29.152321>,  <37.840515, 35.613945, 29.012802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622398, 36.337730, 29.152321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303917, 36.101597, 29.099298>,  <37.112827, 35.959915, 29.067484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303917, 36.101597, 29.099298>,  <37.622398, 36.337730, 29.152321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303917, 36.101597, 29.099298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448834, 0.429378, 0.783698,
		-0.405727, 0.683476, -0.606833,
		-0.796200, -0.590335, -0.132557,
		37.065056, 35.924496, 29.059532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052151, 36.805241, 29.184528>,  <37.622398, 36.337730, 29.152321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052151, 36.805241, 29.184528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898178, 36.444969, 29.265131>,  <36.805794, 36.228806, 29.313492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898178, 36.444969, 29.265131>,  <37.052151, 36.805241, 29.184528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898178, 36.444969, 29.265131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430860, 0.368441, 0.823779,
		-0.816202, 0.230280, -0.529891,
		-0.384933, -0.900679, 0.201504,
		36.782700, 36.174767, 29.325583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482704, 36.982750, 29.446497>,  <37.052151, 36.805241, 29.184528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482704, 36.982750, 29.446497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508667, 36.599770, 29.558979>,  <36.524246, 36.369980, 29.626469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508667, 36.599770, 29.558979>,  <36.482704, 36.982750, 29.446497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508667, 36.599770, 29.558979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369734, 0.238668, 0.897961,
		-0.926868, -0.162255, -0.338511,
		0.064908, -0.957450, 0.281205,
		36.528141, 36.312534, 29.643341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985043, 36.945057, 29.797468>,  <36.482704, 36.982750, 29.446497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985043, 36.945057, 29.797468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178158, 36.620178, 29.928461>,  <36.294029, 36.425251, 30.007057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178158, 36.620178, 29.928461>,  <35.985043, 36.945057, 29.797468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178158, 36.620178, 29.928461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427567, 0.107735, 0.897541,
		-0.764264, -0.573345, -0.295257,
		0.482791, -0.812200, 0.327481,
		36.322994, 36.376518, 30.026705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534660, 36.595264, 30.230366>,  <35.985043, 36.945057, 29.797468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534660, 36.595264, 30.230366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898621, 36.475689, 30.345406>,  <36.116997, 36.403942, 30.414429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898621, 36.475689, 30.345406>,  <35.534660, 36.595264, 30.230366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898621, 36.475689, 30.345406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289215, 0.039849, 0.956434,
		-0.297379, -0.953439, -0.050200,
		0.909901, -0.298942, 0.287599,
		36.171593, 36.386005, 30.431684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421700, 36.040287, 30.651917>,  <35.534660, 36.595264, 30.230366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421700, 36.040287, 30.651917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783154, 36.166969, 30.767258>,  <36.000027, 36.242977, 30.836462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783154, 36.166969, 30.767258>,  <35.421700, 36.040287, 30.651917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783154, 36.166969, 30.767258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273289, -0.092047, 0.957518,
		0.329794, -0.944047, 0.003376,
		0.903631, 0.316706, 0.288354,
		36.054241, 36.261982, 30.853764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675339, 35.553749, 31.101980>,  <35.421700, 36.040287, 30.651917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675339, 35.553749, 31.101980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876583, 35.877174, 31.224033>,  <35.997330, 36.071232, 31.297264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876583, 35.877174, 31.224033>,  <35.675339, 35.553749, 31.101980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876583, 35.877174, 31.224033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360985, -0.124182, 0.924266,
		0.785222, -0.575152, 0.229404,
		0.503106, 0.808566, 0.305132,
		36.027515, 36.119743, 31.315573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831188, 35.332684, 31.752014>,  <35.675339, 35.553749, 31.101980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831188, 35.332684, 31.752014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902855, 35.726208, 31.753466>,  <35.945854, 35.962322, 31.754335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902855, 35.726208, 31.753466>,  <35.831188, 35.332684, 31.752014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902855, 35.726208, 31.753466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297872, 0.050731, 0.953257,
		0.937642, -0.171869, 0.302140,
		0.179163, 0.983813, 0.003627,
		35.956604, 36.021351, 31.754553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274654, 35.460487, 32.316147>,  <35.831188, 35.332684, 31.752014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274654, 35.460487, 32.316147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086136, 35.808044, 32.255596>,  <35.973026, 36.016579, 32.219265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086136, 35.808044, 32.255596>,  <36.274654, 35.460487, 32.316147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086136, 35.808044, 32.255596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167061, 0.080578, 0.982648,
		0.866009, 0.488405, 0.107181,
		-0.471294, 0.868889, -0.151375,
		35.944748, 36.068710, 32.210182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639851, 35.949322, 32.750896>,  <36.274654, 35.460487, 32.316147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639851, 35.949322, 32.750896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268417, 36.049774, 32.641598>,  <36.045559, 36.110046, 32.576019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268417, 36.049774, 32.641598>,  <36.639851, 35.949322, 32.750896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268417, 36.049774, 32.641598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249361, 0.123114, 0.960553,
		0.274863, 0.960092, -0.051700,
		-0.928585, 0.251129, -0.273249,
		35.989841, 36.125114, 32.559624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396877, 35.797031, 33.038147>,  <36.639851, 35.949322, 32.750896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396877, 35.797031, 33.038147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790329, 35.753540, 33.095619>,  <38.026402, 35.727448, 33.130104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790329, 35.753540, 33.095619>,  <37.396877, 35.797031, 33.038147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790329, 35.753540, 33.095619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159435, 0.153735, -0.975165,
		0.083937, 0.982112, 0.168553,
		0.983634, -0.108726, 0.143679,
		38.085419, 35.720921, 33.138721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622860, 36.102470, 32.433754>,  <37.396877, 35.797031, 33.038147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622860, 36.102470, 32.433754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962280, 35.956825, 32.587315>,  <38.165932, 35.869438, 32.679451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962280, 35.956825, 32.587315>,  <37.622860, 36.102470, 32.433754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962280, 35.956825, 32.587315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450450, 0.116493, -0.885169,
		0.277577, 0.924042, 0.262864,
		0.848555, -0.364110, 0.383899,
		38.216846, 35.847591, 32.702484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106976, 36.616795, 32.159954>,  <37.622860, 36.102470, 32.433754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106976, 36.616795, 32.159954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294117, 36.271420, 32.235413>,  <38.406403, 36.064194, 32.280685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294117, 36.271420, 32.235413>,  <38.106976, 36.616795, 32.159954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294117, 36.271420, 32.235413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415213, 0.026314, -0.909344,
		0.780197, 0.503770, 0.370821,
		0.467858, -0.863437, 0.188642,
		38.434475, 36.012390, 32.292004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795361, 36.743118, 31.853975>,  <38.106976, 36.616795, 32.159954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795361, 36.743118, 31.853975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754612, 36.349472, 31.912128>,  <38.730164, 36.113285, 31.947021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754612, 36.349472, 31.912128>,  <38.795361, 36.743118, 31.853975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754612, 36.349472, 31.912128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400595, -0.174353, -0.899514,
		0.910575, -0.033392, 0.411993,
		-0.101869, -0.984117, 0.145384,
		38.724052, 36.054237, 31.955744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362095, 36.406738, 31.883261>,  <38.795361, 36.743118, 31.853975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362095, 36.406738, 31.883261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093800, 36.147194, 31.739544>,  <38.932823, 35.991467, 31.653313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093800, 36.147194, 31.739544>,  <39.362095, 36.406738, 31.883261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093800, 36.147194, 31.739544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500130, -0.037951, -0.865119,
		0.547702, -0.759964, 0.349968,
		-0.670740, -0.648857, -0.359294,
		38.892578, 35.952538, 31.631756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666176, 36.041725, 31.525690>,  <39.362095, 36.406738, 31.883261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666176, 36.041725, 31.525690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321011, 35.907318, 31.374702>,  <39.113911, 35.826675, 31.284111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321011, 35.907318, 31.374702>,  <39.666176, 36.041725, 31.525690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321011, 35.907318, 31.374702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463373, -0.227999, -0.856330,
		0.201678, -0.913843, 0.352443,
		-0.862909, -0.336016, -0.377468,
		39.062138, 35.806515, 31.261461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875751, 35.411221, 31.182081>,  <39.666176, 36.041725, 31.525690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875751, 35.411221, 31.182081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527508, 35.529289, 31.024647>,  <39.318562, 35.600132, 30.930185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527508, 35.529289, 31.024647>,  <39.875751, 35.411221, 31.182081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527508, 35.529289, 31.024647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377015, -0.113674, -0.919205,
		-0.316068, -0.948656, -0.012321,
		-0.870609, 0.295177, -0.393586,
		39.266323, 35.617844, 30.906570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660908, 34.898743, 30.704281>,  <39.875751, 35.411221, 31.182081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660908, 34.898743, 30.704281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436470, 35.207623, 30.585035>,  <39.301807, 35.392952, 30.513489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436470, 35.207623, 30.585035>,  <39.660908, 34.898743, 30.704281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436470, 35.207623, 30.585035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221245, -0.207136, -0.952966,
		-0.797634, -0.600663, -0.054623,
		-0.561098, 0.772203, -0.298113,
		39.268139, 35.439285, 30.495602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269958, 34.622139, 30.139200>,  <39.660908, 34.898743, 30.704281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269958, 34.622139, 30.139200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279892, 35.020580, 30.105350>,  <39.285854, 35.259644, 30.085041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279892, 35.020580, 30.105350>,  <39.269958, 34.622139, 30.139200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279892, 35.020580, 30.105350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416824, -0.087258, -0.904789,
		-0.908648, -0.012800, -0.417367,
		0.024838, 0.996104, -0.084622,
		39.287342, 35.319412, 30.079964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015129, 34.798153, 29.475586>,  <39.269958, 34.622139, 30.139200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015129, 34.798153, 29.475586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211040, 35.127216, 29.591074>,  <39.328587, 35.324654, 29.660366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211040, 35.127216, 29.591074>,  <39.015129, 34.798153, 29.475586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211040, 35.127216, 29.591074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410258, 0.074739, -0.908902,
		-0.769292, 0.563606, -0.300896,
		0.489774, 0.822656, 0.288720,
		39.357971, 35.374012, 29.677691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931091, 35.280979, 28.840734>,  <39.015129, 34.798153, 29.475586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931091, 35.280979, 28.840734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251232, 35.426193, 29.031582>,  <39.443317, 35.513321, 29.146090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251232, 35.426193, 29.031582>,  <38.931091, 35.280979, 28.840734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251232, 35.426193, 29.031582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407998, 0.253301, -0.877141,
		-0.439287, 0.896685, 0.054613,
		0.800353, 0.363035, 0.477118,
		39.491337, 35.535103, 29.174717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176857, 35.965755, 28.582787>,  <38.931091, 35.280979, 28.840734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176857, 35.965755, 28.582787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499603, 35.792919, 28.743919>,  <39.693249, 35.689217, 28.840599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499603, 35.792919, 28.743919>,  <39.176857, 35.965755, 28.582787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499603, 35.792919, 28.743919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539938, 0.262752, -0.799643,
		0.239670, 0.862706, 0.445304,
		0.806861, -0.432087, 0.402834,
		39.741661, 35.663292, 28.864769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765594, 36.373604, 28.377293>,  <39.176857, 35.965755, 28.582787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765594, 36.373604, 28.377293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941090, 36.032326, 28.490124>,  <40.046387, 35.827560, 28.557823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941090, 36.032326, 28.490124>,  <39.765594, 36.373604, 28.377293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941090, 36.032326, 28.490124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556831, 0.011749, -0.830543,
		0.705302, 0.521458, 0.480241,
		0.438736, -0.853196, 0.282077,
		40.072712, 35.776367, 28.574747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454823, 36.436207, 28.394247>,  <39.765594, 36.373604, 28.377293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454823, 36.436207, 28.394247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433926, 36.039528, 28.347256>,  <40.421387, 35.801521, 28.319061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433926, 36.039528, 28.347256>,  <40.454823, 36.436207, 28.394247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433926, 36.039528, 28.347256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561407, 0.068123, -0.824731,
		0.825889, -0.109037, 0.553189,
		-0.052242, -0.991701, -0.117476,
		40.418255, 35.742016, 28.312014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026390, 36.324306, 28.008425>,  <40.454823, 36.436207, 28.394247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026390, 36.324306, 28.008425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815212, 35.987339, 27.965342>,  <40.688503, 35.785160, 27.939491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815212, 35.987339, 27.965342>,  <41.026390, 36.324306, 28.008425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815212, 35.987339, 27.965342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456357, -0.174441, -0.872530,
		0.716247, -0.509804, 0.476540,
		-0.527947, -0.842419, -0.107710,
		40.656830, 35.734612, 27.933029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446072, 35.730148, 27.939995>,  <41.026390, 36.324306, 28.008425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446072, 35.730148, 27.939995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098019, 35.639690, 27.764847>,  <40.889187, 35.585415, 27.659758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098019, 35.639690, 27.764847>,  <41.446072, 35.730148, 27.939995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098019, 35.639690, 27.764847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479124, -0.180168, -0.859057,
		0.115386, -0.957285, 0.265124,
		-0.870130, -0.226151, -0.437870,
		40.836979, 35.571846, 27.633486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574429, 35.163792, 27.561363>,  <41.446072, 35.730148, 27.939995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574429, 35.163792, 27.561363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221306, 35.253876, 27.396471>,  <41.009434, 35.307926, 27.297535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221306, 35.253876, 27.396471>,  <41.574429, 35.163792, 27.561363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221306, 35.253876, 27.396471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317744, -0.360047, -0.877157,
		-0.345957, -0.905346, 0.246298,
		-0.882809, 0.225199, -0.412229,
		40.956463, 35.321438, 27.272802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416050, 34.618237, 27.046806>,  <41.574429, 35.163792, 27.561363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416050, 34.618237, 27.046806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160824, 34.899410, 26.921103>,  <41.007687, 35.068115, 26.845680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160824, 34.899410, 26.921103>,  <41.416050, 34.618237, 27.046806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160824, 34.899410, 26.921103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147478, -0.289012, -0.945898,
		-0.755727, -0.649891, 0.080741,
		-0.638065, 0.702933, -0.314258,
		40.969402, 35.110291, 26.826824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969719, 34.265018, 26.601639>,  <41.416050, 34.618237, 27.046806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969719, 34.265018, 26.601639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956470, 34.654903, 26.513235>,  <40.948521, 34.888832, 26.460192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956470, 34.654903, 26.513235>,  <40.969719, 34.265018, 26.601639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956470, 34.654903, 26.513235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174699, -0.212081, -0.961510,
		-0.984065, -0.070458, -0.163256,
		-0.033122, 0.974709, -0.221010,
		40.946533, 34.947315, 26.446932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637470, 34.282745, 25.982670>,  <40.969719, 34.265018, 26.601639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637470, 34.282745, 25.982670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835785, 34.629910, 25.994785>,  <40.954773, 34.838207, 26.002054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835785, 34.629910, 25.994785>,  <40.637470, 34.282745, 25.982670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835785, 34.629910, 25.994785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177659, -0.067226, -0.981793,
		-0.850076, 0.492144, -0.187522,
		0.495790, 0.867914, 0.030287,
		40.984524, 34.890285, 26.003872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387520, 34.662140, 25.425270>,  <40.637470, 34.282745, 25.982670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387520, 34.662140, 25.425270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761505, 34.779694, 25.504738>,  <40.985897, 34.850227, 25.552420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761505, 34.779694, 25.504738>,  <40.387520, 34.662140, 25.425270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761505, 34.779694, 25.504738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259327, -0.184109, -0.948079,
		-0.242047, 0.937943, -0.248347,
		0.934967, 0.293883, 0.198671,
		41.041996, 34.867859, 25.564339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594383, 35.198975, 24.875151>,  <40.387520, 34.662140, 25.425270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594383, 35.198975, 24.875151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880226, 34.980717, 25.050245>,  <41.051731, 34.849762, 25.155302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880226, 34.980717, 25.050245>,  <40.594383, 35.198975, 24.875151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880226, 34.980717, 25.050245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211519, -0.427921, -0.878717,
		0.666784, 0.720524, -0.190379,
		0.714604, -0.545645, 0.437735,
		41.094608, 34.817024, 25.181566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292343, 35.133911, 24.515827>,  <40.594383, 35.198975, 24.875151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292343, 35.133911, 24.515827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274197, 34.792713, 24.723804>,  <41.263309, 34.587994, 24.848591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274197, 34.792713, 24.723804>,  <41.292343, 35.133911, 24.515827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274197, 34.792713, 24.723804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205218, -0.517335, -0.830813,
		0.977664, 0.069012, 0.198518,
		-0.045365, -0.852996, 0.519943,
		41.260586, 34.536816, 24.879787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874580, 34.707855, 24.240522>,  <41.292343, 35.133911, 24.515827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874580, 34.707855, 24.240522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632450, 34.455414, 24.434553>,  <41.487171, 34.303951, 24.550972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632450, 34.455414, 24.434553>,  <41.874580, 34.707855, 24.240522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632450, 34.455414, 24.434553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208582, -0.713877, -0.668486,
		0.768167, -0.303470, 0.563761,
		-0.605321, -0.631099, 0.485078,
		41.450855, 34.266083, 24.580076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182529, 34.156567, 24.011738>,  <41.874580, 34.707855, 24.240522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182529, 34.156567, 24.011738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814098, 34.053860, 24.128828>,  <41.593040, 33.992233, 24.199083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814098, 34.053860, 24.128828>,  <42.182529, 34.156567, 24.011738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814098, 34.053860, 24.128828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034377, -0.695210, -0.717984,
		0.387864, -0.671380, 0.631514,
		-0.921075, -0.256771, 0.292727,
		41.537777, 33.976830, 24.216646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227329, 33.475418, 24.083641>,  <42.182529, 34.156567, 24.011738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227329, 33.475418, 24.083641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838257, 33.556503, 24.038389>,  <41.604813, 33.605156, 24.011238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838257, 33.556503, 24.038389>,  <42.227329, 33.475418, 24.083641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838257, 33.556503, 24.038389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095800, -0.794402, -0.599790,
		-0.211457, -0.572566, 0.792120,
		-0.972681, 0.202715, -0.113130,
		41.546452, 33.617317, 24.004450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791103, 32.880207, 24.372519>,  <42.227329, 33.475418, 24.083641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791103, 32.880207, 24.372519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580029, 33.090111, 24.105333>,  <41.453384, 33.216053, 23.945023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580029, 33.090111, 24.105333>,  <41.791103, 32.880207, 24.372519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580029, 33.090111, 24.105333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114399, -0.823095, -0.556262,
		-0.841702, -0.217116, 0.494366,
		-0.527684, 0.524762, -0.667963,
		41.421722, 33.247540, 23.904945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362408, 32.424896, 24.135107>,  <41.791103, 32.880207, 24.372519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362408, 32.424896, 24.135107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298241, 32.697845, 23.849833>,  <41.259743, 32.861614, 23.678667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298241, 32.697845, 23.849833>,  <41.362408, 32.424896, 24.135107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298241, 32.697845, 23.849833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059267, -0.727900, -0.683118,
		-0.985269, -0.067313, 0.157208,
		-0.160414, 0.682372, -0.713187,
		41.250114, 32.902557, 23.635876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916512, 32.125519, 23.649977>,  <41.362408, 32.424896, 24.135107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916512, 32.125519, 23.649977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064651, 32.435413, 23.444990>,  <41.153534, 32.621349, 23.321999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064651, 32.435413, 23.444990>,  <40.916512, 32.125519, 23.649977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064651, 32.435413, 23.444990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038689, -0.564081, -0.824813,
		-0.928088, 0.285639, -0.238879,
		0.370346, 0.774741, -0.512465,
		41.175755, 32.667835, 23.291250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479095, 32.232868, 23.065491>,  <40.916512, 32.125519, 23.649977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479095, 32.232868, 23.065491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844978, 32.373802, 22.986330>,  <41.064510, 32.458363, 22.938833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844978, 32.373802, 22.986330>,  <40.479095, 32.232868, 23.065491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844978, 32.373802, 22.986330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032030, -0.551393, -0.833631,
		-0.402836, 0.756193, -0.515651,
		0.914712, 0.352333, -0.197900,
		41.119392, 32.479504, 22.926960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523338, 32.247997, 22.366718>,  <40.479095, 32.232868, 23.065491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523338, 32.247997, 22.366718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914673, 32.282486, 22.442001>,  <41.149475, 32.303181, 22.487171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914673, 32.282486, 22.442001>,  <40.523338, 32.247997, 22.366718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914673, 32.282486, 22.442001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207000, -0.395432, -0.894866,
		-0.002733, 0.914439, -0.404714,
		0.978337, 0.086221, 0.188208,
		41.208176, 32.308353, 22.498465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908356, 32.361023, 21.695341>,  <40.523338, 32.247997, 22.366718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908356, 32.361023, 21.695341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190479, 32.248573, 21.955650>,  <41.359753, 32.181103, 22.111835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190479, 32.248573, 21.955650>,  <40.908356, 32.361023, 21.695341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190479, 32.248573, 21.955650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434027, -0.554583, -0.709971,
		0.560496, 0.783204, -0.269140,
		0.705313, -0.281121, 0.650773,
		41.402073, 32.164238, 22.150883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511192, 32.500561, 21.409256>,  <40.908356, 32.361023, 21.695341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511192, 32.500561, 21.409256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573208, 32.204796, 21.671320>,  <41.610416, 32.027336, 21.828558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573208, 32.204796, 21.671320>,  <41.511192, 32.500561, 21.409256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573208, 32.204796, 21.671320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459109, -0.533287, -0.710510,
		0.874747, 0.410944, 0.256792,
		0.155036, -0.739412, 0.655159,
		41.619720, 31.982971, 21.867868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174442, 32.371731, 21.338932>,  <41.511192, 32.500561, 21.409256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174442, 32.371731, 21.338932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024944, 32.036182, 21.497229>,  <41.935246, 31.834854, 21.592207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024944, 32.036182, 21.497229>,  <42.174442, 32.371731, 21.338932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024944, 32.036182, 21.497229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532391, -0.543397, -0.649061,
		0.759522, -0.031894, 0.649699,
		-0.373746, -0.838870, 0.395741,
		41.912819, 31.784521, 21.615952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792091, 31.822880, 21.499268>,  <42.174442, 32.371731, 21.338932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792091, 31.822880, 21.499268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450737, 31.614529, 21.491131>,  <42.245922, 31.489519, 21.486248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450737, 31.614529, 21.491131>,  <42.792091, 31.822880, 21.499268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450737, 31.614529, 21.491131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429848, -0.681103, -0.592730,
		0.294883, -0.514575, 0.805144,
		-0.853390, -0.520876, -0.020343,
		42.194721, 31.458265, 21.485027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917171, 31.132574, 21.705116>,  <42.792091, 31.822880, 21.499268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917171, 31.132574, 21.705116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591526, 31.100058, 21.475121>,  <42.396137, 31.080547, 21.337124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591526, 31.100058, 21.475121>,  <42.917171, 31.132574, 21.705116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591526, 31.100058, 21.475121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472360, -0.668647, -0.574271,
		-0.337782, -0.739123, 0.582753,
		-0.814113, -0.081290, -0.574989,
		42.347294, 31.075670, 21.302624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928833, 30.436485, 21.574024>,  <42.917171, 31.132574, 21.705116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928833, 30.436485, 21.574024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651791, 30.585991, 21.327253>,  <42.485565, 30.675695, 21.179190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651791, 30.585991, 21.327253>,  <42.928833, 30.436485, 21.574024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651791, 30.585991, 21.327253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183094, -0.736170, -0.651560,
		-0.697693, -0.564229, 0.441441,
		-0.692605, 0.373764, -0.616927,
		42.444012, 30.698120, 21.142174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328598, 29.978882, 21.419060>,  <42.928833, 30.436485, 21.574024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328598, 29.978882, 21.419060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366711, 30.232767, 21.112320>,  <42.389580, 30.385098, 20.928276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366711, 30.232767, 21.112320>,  <42.328598, 29.978882, 21.419060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366711, 30.232767, 21.112320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189734, -0.767813, -0.611934,
		-0.977201, -0.087190, -0.193588,
		0.095285, 0.634713, -0.766851,
		42.395298, 30.423182, 20.882265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064552, 29.537283, 20.909246>,  <42.328598, 29.978882, 21.419060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064552, 29.537283, 20.909246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411297, 29.356194, 20.992767>,  <42.619343, 29.247540, 21.042881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411297, 29.356194, 20.992767>,  <42.064552, 29.537283, 20.909246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411297, 29.356194, 20.992767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183933, 0.098861, 0.977955,
		-0.463384, -0.886154, 0.002428,
		0.866858, -0.452722, 0.208803,
		42.671356, 29.220377, 21.055408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834869, 29.071938, 21.483730>,  <42.064552, 29.537283, 20.909246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834869, 29.071938, 21.483730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232372, 29.092833, 21.523167>,  <42.470875, 29.105370, 21.546829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232372, 29.092833, 21.523167>,  <41.834869, 29.071938, 21.483730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232372, 29.092833, 21.523167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104299, 0.121004, 0.987157,
		0.039637, -0.991277, 0.125697,
		0.993756, 0.052238, 0.098593,
		42.530499, 29.108505, 21.552744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008877, 28.578220, 21.976969>,  <41.834869, 29.071938, 21.483730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008877, 28.578220, 21.976969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295700, 28.857021, 21.978125>,  <42.467796, 29.024302, 21.978817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295700, 28.857021, 21.978125>,  <42.008877, 28.578220, 21.976969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295700, 28.857021, 21.978125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015267, -0.019848, 0.999686,
		0.696842, -0.716793, -0.024873,
		0.717062, 0.697003, 0.002888,
		42.510818, 29.066122, 21.978991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376266, 28.452539, 22.530846>,  <42.008877, 28.578220, 21.976969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376266, 28.452539, 22.530846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524078, 28.819229, 22.470100>,  <42.612766, 29.039244, 22.433653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524078, 28.819229, 22.470100>,  <42.376266, 28.452539, 22.530846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524078, 28.819229, 22.470100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006449, 0.165955, 0.986112,
		0.929195, -0.363421, 0.067238,
		0.369533, 0.916725, -0.151861,
		42.634937, 29.094246, 22.424541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858036, 28.537352, 23.111364>,  <42.376266, 28.452539, 22.530846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858036, 28.537352, 23.111364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807770, 28.905212, 22.962532>,  <42.777611, 29.125929, 22.873232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807770, 28.905212, 22.962532>,  <42.858036, 28.537352, 23.111364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807770, 28.905212, 22.962532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130998, 0.387154, 0.912662,
		0.983385, 0.065951, -0.169126,
		-0.125669, 0.919653, -0.372082,
		42.770069, 29.181108, 22.850908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.469521, 28.997862, 23.336618>,  <42.858036, 28.537352, 23.111364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.469521, 28.997862, 23.336618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163727, 29.236715, 23.239470>,  <42.980251, 29.380028, 23.181181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163727, 29.236715, 23.239470>,  <43.469521, 28.997862, 23.336618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163727, 29.236715, 23.239470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191774, 0.570370, 0.798687,
		0.615451, 0.564011, -0.550556,
		-0.764489, 0.597135, -0.242872,
		42.934380, 29.415855, 23.166609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686153, 29.674248, 23.401381>,  <43.469521, 28.997862, 23.336618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686153, 29.674248, 23.401381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288006, 29.709187, 23.417442>,  <43.049118, 29.730150, 23.427080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288006, 29.709187, 23.417442>,  <43.686153, 29.674248, 23.401381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288006, 29.709187, 23.417442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080638, 0.531178, 0.843414,
		0.052342, 0.842746, -0.535761,
		-0.995368, 0.087349, 0.040154,
		42.989395, 29.735392, 23.429489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689960, 30.255550, 23.709486>,  <43.686153, 29.674248, 23.401381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689960, 30.255550, 23.709486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306301, 30.143869, 23.727720>,  <43.076107, 30.076860, 23.738661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306301, 30.143869, 23.727720>,  <43.689960, 30.255550, 23.709486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306301, 30.143869, 23.727720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152974, 0.647422, 0.746621,
		-0.237973, 0.709148, -0.663685,
		-0.959150, -0.279202, 0.045588,
		43.018555, 30.060108, 23.741396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175243, 30.873062, 23.633142>,  <43.689960, 30.255550, 23.709486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175243, 30.873062, 23.633142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975342, 30.583868, 23.823948>,  <42.855400, 30.410351, 23.938431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975342, 30.583868, 23.823948>,  <43.175243, 30.873062, 23.633142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975342, 30.583868, 23.823948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202854, 0.633093, 0.747023,
		-0.842080, 0.276562, -0.463050,
		-0.499752, -0.722985, 0.477013,
		42.825417, 30.366972, 23.967052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499249, 31.094398, 23.839827>,  <43.175243, 30.873062, 23.633142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499249, 31.094398, 23.839827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577934, 30.817146, 24.117207>,  <42.625145, 30.650795, 24.283634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577934, 30.817146, 24.117207>,  <42.499249, 31.094398, 23.839827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577934, 30.817146, 24.117207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305662, 0.628666, 0.715087,
		-0.931597, -0.352633, -0.088193,
		0.196719, -0.693130, 0.693450,
		42.636951, 30.609207, 24.325241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977322, 31.173750, 24.406603>,  <42.499249, 31.094398, 23.839827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977322, 31.173750, 24.406603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237820, 30.922956, 24.577608>,  <42.394119, 30.772480, 24.680210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237820, 30.922956, 24.577608>,  <41.977322, 31.173750, 24.406603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237820, 30.922956, 24.577608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308020, 0.296462, 0.904010,
		-0.693540, -0.720418, -0.000052,
		0.651249, -0.626984, 0.427512,
		42.433193, 30.734861, 24.705862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599651, 30.912533, 24.964790>,  <41.977322, 31.173750, 24.406603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599651, 30.912533, 24.964790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986912, 30.844585, 25.038355>,  <42.219269, 30.803816, 25.082493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986912, 30.844585, 25.038355>,  <41.599651, 30.912533, 24.964790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986912, 30.844585, 25.038355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099965, 0.411200, 0.906047,
		-0.229535, -0.895577, 0.381123,
		0.968153, -0.169871, 0.183911,
		42.277359, 30.793625, 25.093529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623638, 30.742178, 25.641733>,  <41.599651, 30.912533, 24.964790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623638, 30.742178, 25.641733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991951, 30.886101, 25.581457>,  <42.212936, 30.972454, 25.545292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991951, 30.886101, 25.581457>,  <41.623638, 30.742178, 25.641733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991951, 30.886101, 25.581457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054017, 0.500180, 0.864235,
		0.386328, -0.787629, 0.479991,
		0.920779, 0.359806, -0.150688,
		42.268185, 30.994043, 25.536251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864040, 30.690847, 26.353849>,  <41.623638, 30.742178, 25.641733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864040, 30.690847, 26.353849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107567, 30.927139, 26.142044>,  <42.253681, 31.068914, 26.014961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107567, 30.927139, 26.142044>,  <41.864040, 30.690847, 26.353849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107567, 30.927139, 26.142044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227247, 0.509635, 0.829838,
		0.760069, -0.625546, 0.176032,
		0.608814, 0.590731, -0.529511,
		42.290211, 31.104359, 25.983191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549313, 30.740232, 26.633757>,  <41.864040, 30.690847, 26.353849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549313, 30.740232, 26.633757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517944, 31.073658, 26.415026>,  <42.499123, 31.273714, 26.283787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517944, 31.073658, 26.415026>,  <42.549313, 30.740232, 26.633757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517944, 31.073658, 26.415026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366206, 0.534254, 0.761883,
		0.927223, -0.140501, -0.347155,
		-0.078424, 0.833566, -0.546825,
		42.494415, 31.323729, 26.250978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086075, 31.163034, 26.906120>,  <42.549313, 30.740232, 26.633757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086075, 31.163034, 26.906120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831532, 31.404053, 26.713459>,  <42.678806, 31.548664, 26.597862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831532, 31.404053, 26.713459>,  <43.086075, 31.163034, 26.906120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831532, 31.404053, 26.713459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086515, 0.676202, 0.731619,
		0.766529, 0.423899, -0.482434,
		-0.636355, 0.602545, -0.481654,
		42.640625, 31.584816, 26.568962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423981, 31.752171, 27.125280>,  <43.086075, 31.163034, 26.906120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423981, 31.752171, 27.125280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070175, 31.857697, 26.971376>,  <42.857891, 31.921011, 26.879034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070175, 31.857697, 26.971376>,  <43.423981, 31.752171, 27.125280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070175, 31.857697, 26.971376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026135, 0.795436, 0.605474,
		0.465785, 0.545605, -0.696678,
		-0.884512, 0.263813, -0.384762,
		42.804821, 31.936840, 26.855947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501862, 32.559444, 26.994005>,  <43.423981, 31.752171, 27.125280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501862, 32.559444, 26.994005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122952, 32.435303, 27.025871>,  <42.895607, 32.360817, 27.044991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122952, 32.435303, 27.025871>,  <43.501862, 32.559444, 26.994005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122952, 32.435303, 27.025871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174215, 0.707536, 0.684866,
		-0.268917, 0.634879, -0.724301,
		-0.947277, -0.310356, 0.079663,
		42.838768, 32.342197, 27.049770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163704, 33.128464, 27.223881>,  <43.501862, 32.559444, 26.994005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163704, 33.128464, 27.223881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866745, 32.866425, 27.280022>,  <42.688572, 32.709202, 27.313705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866745, 32.866425, 27.280022>,  <43.163704, 33.128464, 27.223881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866745, 32.866425, 27.280022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389764, 0.592710, 0.704826,
		-0.544916, 0.468555, -0.695358,
		-0.742395, -0.655096, 0.140351,
		42.644028, 32.669895, 27.322126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519367, 33.517246, 27.309887>,  <43.163704, 33.128464, 27.223881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519367, 33.517246, 27.309887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472050, 33.158070, 27.479456>,  <42.443661, 32.942562, 27.581198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472050, 33.158070, 27.479456>,  <42.519367, 33.517246, 27.309887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472050, 33.158070, 27.479456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474960, 0.426081, 0.769979,
		-0.872020, -0.110263, -0.476888,
		-0.118293, -0.897940, 0.423922,
		42.436562, 32.888687, 27.606632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735695, 33.354862, 27.399408>,  <42.519367, 33.517246, 27.309887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735695, 33.354862, 27.399408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973946, 33.169392, 27.661777>,  <42.116894, 33.058109, 27.819199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973946, 33.169392, 27.661777>,  <41.735695, 33.354862, 27.399408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973946, 33.169392, 27.661777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558507, 0.347835, 0.753048,
		-0.577324, -0.814871, -0.051788,
		0.595623, -0.463677, 0.655925,
		42.152634, 33.030289, 27.858555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289169, 33.070293, 27.969650>,  <41.735695, 33.354862, 27.399408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289169, 33.070293, 27.969650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640919, 33.094055, 28.158615>,  <41.851967, 33.108311, 28.271994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640919, 33.094055, 28.158615>,  <41.289169, 33.070293, 27.969650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640919, 33.094055, 28.158615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459883, 0.362978, 0.810404,
		-0.123333, -0.929902, 0.346513,
		0.879373, 0.059406, 0.472414,
		41.904732, 33.111877, 28.300339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157593, 32.941055, 28.698919>,  <41.289169, 33.070293, 27.969650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157593, 32.941055, 28.698919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537994, 33.060043, 28.732632>,  <41.766235, 33.131435, 28.752859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537994, 33.060043, 28.732632>,  <41.157593, 32.941055, 28.698919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537994, 33.060043, 28.732632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195061, 0.365760, 0.910039,
		0.239885, -0.881890, 0.405864,
		0.951003, 0.297473, 0.084282,
		41.823296, 33.149284, 28.757915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309673, 32.853924, 29.402824>,  <41.157593, 32.941055, 28.698919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309673, 32.853924, 29.402824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605221, 33.094994, 29.282255>,  <41.782551, 33.239635, 29.209913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605221, 33.094994, 29.282255>,  <41.309673, 32.853924, 29.402824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605221, 33.094994, 29.282255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021903, 0.468558, 0.883161,
		0.673492, -0.645939, 0.359403,
		0.738869, 0.602674, -0.301422,
		41.826881, 33.275795, 29.191828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805534, 32.889515, 29.981722>,  <41.309673, 32.853924, 29.402824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805534, 32.889515, 29.981722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867771, 33.205395, 29.744349>,  <41.905113, 33.394924, 29.601925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867771, 33.205395, 29.744349>,  <41.805534, 32.889515, 29.981722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867771, 33.205395, 29.744349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057949, 0.607014, 0.792575,
		0.986120, -0.088929, 0.140208,
		0.155591, 0.789700, -0.593435,
		41.914448, 33.442307, 29.566319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324154, 33.236744, 30.340826>,  <41.805534, 32.889515, 29.981722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324154, 33.236744, 30.340826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140957, 33.505199, 30.107649>,  <42.031040, 33.666271, 29.967743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140957, 33.505199, 30.107649>,  <42.324154, 33.236744, 30.340826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140957, 33.505199, 30.107649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119036, 0.603555, 0.788386,
		0.880952, 0.430463, -0.196532,
		-0.457989, 0.671136, -0.582944,
		42.003559, 33.706539, 29.932766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623459, 33.885159, 30.427162>,  <42.324154, 33.236744, 30.340826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623459, 33.885159, 30.427162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284805, 34.011250, 30.255655>,  <42.081612, 34.086906, 30.152750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284805, 34.011250, 30.255655>,  <42.623459, 33.885159, 30.427162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284805, 34.011250, 30.255655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095283, 0.702878, 0.704899,
		0.523578, 0.637646, -0.565044,
		-0.846633, 0.315231, -0.428769,
		42.030815, 34.105820, 30.127026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693325, 34.623463, 30.275436>,  <42.623459, 33.885159, 30.427162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693325, 34.623463, 30.275436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.315544, 34.502392, 30.326656>,  <42.088875, 34.429749, 30.357388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.315544, 34.502392, 30.326656>,  <42.693325, 34.623463, 30.275436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315544, 34.502392, 30.326656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112854, 0.664620, 0.738610,
		-0.308665, 0.683131, -0.661860,
		-0.944452, -0.302677, 0.128050,
		42.032207, 34.411591, 30.365072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314907, 35.216087, 30.417641>,  <42.693325, 34.623463, 30.275436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314907, 35.216087, 30.417641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081085, 34.921001, 30.552736>,  <41.940792, 34.743950, 30.633793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081085, 34.921001, 30.552736>,  <42.314907, 35.216087, 30.417641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081085, 34.921001, 30.552736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284576, 0.576244, 0.766132,
		-0.759807, 0.351737, -0.546785,
		-0.584559, -0.737715, 0.337739,
		41.905716, 34.699688, 30.654058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863297, 35.609512, 30.738663>,  <42.314907, 35.216087, 30.417641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863297, 35.609512, 30.738663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762505, 35.256485, 30.897448>,  <41.702030, 35.044670, 30.992718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762505, 35.256485, 30.897448>,  <41.863297, 35.609512, 30.738663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762505, 35.256485, 30.897448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354861, 0.465893, 0.810566,
		-0.900321, 0.063383, -0.430586,
		-0.251983, -0.882568, 0.396961,
		41.686909, 34.991714, 31.016537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178165, 35.711365, 31.115908>,  <41.863297, 35.609512, 30.738663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178165, 35.711365, 31.115908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331944, 35.378067, 31.274858>,  <41.424210, 35.178089, 31.370230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331944, 35.378067, 31.274858>,  <41.178165, 35.711365, 31.115908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331944, 35.378067, 31.274858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175882, 0.356464, 0.917605,
		-0.906236, -0.422665, -0.009509,
		0.384449, -0.833240, 0.397379,
		41.447277, 35.128094, 31.394072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680595, 35.504333, 31.619114>,  <41.178165, 35.711365, 31.115908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680595, 35.504333, 31.619114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019146, 35.316280, 31.719212>,  <41.222275, 35.203449, 31.779270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019146, 35.316280, 31.719212>,  <40.680595, 35.504333, 31.619114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019146, 35.316280, 31.719212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202932, 0.149744, 0.967675,
		-0.492406, -0.869801, 0.031336,
		0.846377, -0.470130, 0.250245,
		41.273060, 35.175240, 31.794285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521294, 35.084709, 32.190483>,  <40.680595, 35.504333, 31.619114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521294, 35.084709, 32.190483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918415, 35.130589, 32.204239>,  <41.156689, 35.158115, 32.212494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918415, 35.130589, 32.204239>,  <40.521294, 35.084709, 32.190483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918415, 35.130589, 32.204239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044373, 0.085626, 0.995339,
		0.111230, -0.989702, 0.090100,
		0.992804, 0.114710, 0.034392,
		41.216255, 35.164997, 32.214558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740036, 34.732998, 32.754894>,  <40.521294, 35.084709, 32.190483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740036, 34.732998, 32.754894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034309, 34.992420, 32.676769>,  <41.210873, 35.148071, 32.629894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034309, 34.992420, 32.676769>,  <40.740036, 34.732998, 32.754894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034309, 34.992420, 32.676769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000655, 0.289038, 0.957317,
		0.677324, -0.704155, 0.213065,
		0.735684, 0.648554, -0.195311,
		41.255016, 35.186985, 32.618176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236996, 34.520977, 33.254990>,  <40.740036, 34.732998, 32.754894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236996, 34.520977, 33.254990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337132, 34.889290, 33.135334>,  <41.397213, 35.110279, 33.063541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337132, 34.889290, 33.135334>,  <41.236996, 34.520977, 33.254990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337132, 34.889290, 33.135334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115900, 0.335255, 0.934971,
		0.961196, -0.199391, 0.190647,
		0.250340, 0.920786, -0.299136,
		41.412235, 35.165527, 33.045593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807045, 34.768188, 33.673538>,  <41.236996, 34.520977, 33.254990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807045, 34.768188, 33.673538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631668, 35.098480, 33.531586>,  <41.526443, 35.296654, 33.446415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631668, 35.098480, 33.531586>,  <41.807045, 34.768188, 33.673538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631668, 35.098480, 33.531586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074209, 0.360246, 0.929901,
		0.895691, 0.434043, -0.096670,
		-0.438442, 0.825729, -0.354879,
		41.500137, 35.346199, 33.425121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121418, 35.215328, 34.043453>,  <41.807045, 34.768188, 33.673538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121418, 35.215328, 34.043453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787312, 35.393978, 33.915169>,  <41.586849, 35.501167, 33.838200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787312, 35.393978, 33.915169>,  <42.121418, 35.215328, 34.043453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787312, 35.393978, 33.915169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184583, 0.321663, 0.928688,
		0.517940, 0.834898, -0.186233,
		-0.835265, 0.446629, -0.320710,
		41.536732, 35.527966, 33.818954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147865, 35.939274, 34.148983>,  <42.121418, 35.215328, 34.043453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147865, 35.939274, 34.148983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763359, 35.831108, 34.127659>,  <41.532654, 35.766209, 34.114864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763359, 35.831108, 34.127659>,  <42.147865, 35.939274, 34.148983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763359, 35.831108, 34.127659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128659, 0.269181, 0.954457,
		-0.243747, 0.924347, -0.293546,
		-0.961267, -0.270414, -0.053313,
		41.474979, 35.749985, 34.111664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870087, 36.388126, 34.582916>,  <42.147865, 35.939274, 34.148983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870087, 36.388126, 34.582916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559658, 36.140289, 34.535904>,  <41.373402, 35.991589, 34.507698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559658, 36.140289, 34.535904>,  <41.870087, 36.388126, 34.582916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559658, 36.140289, 34.535904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288372, 0.182913, 0.939885,
		-0.560847, 0.763314, -0.320627,
		-0.776075, -0.619592, -0.117532,
		41.326836, 35.954411, 34.500645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322372, 36.719963, 34.866074>,  <41.870087, 36.388126, 34.582916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322372, 36.719963, 34.866074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235439, 36.329571, 34.871967>,  <41.183277, 36.095333, 34.875504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235439, 36.329571, 34.871967>,  <41.322372, 36.719963, 34.866074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235439, 36.329571, 34.871967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300624, 0.081291, 0.950272,
		-0.928649, 0.202100, -0.311073,
		-0.217338, -0.975985, 0.014735,
		41.170238, 36.036774, 34.876389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623100, 36.562836, 35.087311>,  <41.322372, 36.719963, 34.866074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623100, 36.562836, 35.087311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836388, 36.235077, 35.171478>,  <40.964359, 36.038422, 35.221977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836388, 36.235077, 35.171478>,  <40.623100, 36.562836, 35.087311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836388, 36.235077, 35.171478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467081, -0.077764, 0.880788,
		-0.705350, -0.567931, -0.424188,
		0.533214, -0.819394, 0.210419,
		40.996353, 35.989258, 35.234604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154175, 36.139561, 35.293373>,  <40.623100, 36.562836, 35.087311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154175, 36.139561, 35.293373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493538, 36.010857, 35.461502>,  <40.697155, 35.933636, 35.562378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493538, 36.010857, 35.461502>,  <40.154175, 36.139561, 35.293373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493538, 36.010857, 35.461502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426357, 0.055220, 0.902868,
		-0.313715, -0.945210, -0.090335,
		0.848412, -0.321758, 0.420320,
		40.748062, 35.914330, 35.587597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912491, 35.593929, 35.686737>,  <40.154175, 36.139561, 35.293373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912491, 35.593929, 35.686737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260273, 35.705196, 35.850037>,  <40.468945, 35.771957, 35.948017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260273, 35.705196, 35.850037>,  <39.912491, 35.593929, 35.686737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260273, 35.705196, 35.850037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390461, -0.119284, 0.912859,
		0.302629, -0.953096, 0.004903,
		0.869457, 0.278172, 0.408245,
		40.521111, 35.788647, 35.972511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111210, 35.063263, 36.270123>,  <39.912491, 35.593929, 35.686737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111210, 35.063263, 36.270123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307152, 35.408051, 36.322346>,  <40.424717, 35.614925, 36.353680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307152, 35.408051, 36.322346>,  <40.111210, 35.063263, 36.270123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307152, 35.408051, 36.322346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282154, 0.015060, 0.959251,
		0.824881, -0.506732, 0.250586,
		0.489857, 0.861972, 0.130553,
		40.454109, 35.666641, 36.361511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393497, 34.935822, 36.957386>,  <40.111210, 35.063263, 36.270123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393497, 34.935822, 36.957386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414932, 35.330772, 36.897778>,  <40.427792, 35.567745, 36.862011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414932, 35.330772, 36.897778>,  <40.393497, 34.935822, 36.957386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414932, 35.330772, 36.897778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308838, 0.158310, 0.937847,
		0.949604, -0.004230, 0.313424,
		0.053585, 0.987380, -0.149025,
		40.431007, 35.626987, 36.853069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735039, 35.215916, 37.634403>,  <40.393497, 34.935822, 36.957386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735039, 35.215916, 37.634403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535728, 35.486290, 37.417210>,  <40.416142, 35.648514, 37.286896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535728, 35.486290, 37.417210>,  <40.735039, 35.215916, 37.634403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535728, 35.486290, 37.417210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483409, 0.303300, 0.821173,
		0.719749, 0.671651, 0.175629,
		-0.498273, 0.675939, -0.542982,
		40.386246, 35.689072, 37.254314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660999, 35.755856, 38.068954>,  <40.735039, 35.215916, 37.634403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660999, 35.755856, 38.068954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410931, 35.896049, 37.790009>,  <40.260891, 35.980167, 37.622639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410931, 35.896049, 37.790009>,  <40.660999, 35.755856, 38.068954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410931, 35.896049, 37.790009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556382, 0.426486, 0.713126,
		0.547357, 0.833829, -0.071623,
		-0.625171, 0.350485, -0.697367,
		40.223381, 36.001194, 37.580799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465485, 36.429405, 38.309933>,  <40.660999, 35.755856, 38.068954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465485, 36.429405, 38.309933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174236, 36.364006, 38.043667>,  <39.999489, 36.324768, 37.883907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174236, 36.364006, 38.043667>,  <40.465485, 36.429405, 38.309933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174236, 36.364006, 38.043667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633224, 0.532251, 0.561905,
		0.262434, 0.830650, -0.491070,
		-0.728118, -0.163494, -0.665668,
		39.955799, 36.314957, 37.843967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220974, 37.137573, 37.919369>,  <40.465485, 36.429405, 38.309933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220974, 37.137573, 37.919369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927631, 36.881172, 38.009972>,  <39.751625, 36.727329, 38.064331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927631, 36.881172, 38.009972>,  <40.220974, 37.137573, 37.919369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927631, 36.881172, 38.009972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373143, 0.658014, 0.654050,
		-0.568293, 0.395131, -0.721744,
		-0.733353, -0.641006, 0.226505,
		39.707626, 36.688869, 38.077923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514820, 37.601532, 37.980518>,  <40.220974, 37.137573, 37.919369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514820, 37.601532, 37.980518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491016, 37.254284, 38.177628>,  <39.476734, 37.045937, 38.295895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491016, 37.254284, 38.177628>,  <39.514820, 37.601532, 37.980518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491016, 37.254284, 38.177628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180545, 0.494868, 0.850005,
		-0.981765, -0.038388, -0.186183,
		-0.059506, -0.868120, 0.492775,
		39.473164, 36.993847, 38.325459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766689, 37.495174, 38.337147>,  <39.514820, 37.601532, 37.980518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766689, 37.495174, 38.337147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097076, 37.327869, 38.488319>,  <39.295311, 37.227486, 38.579021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097076, 37.327869, 38.488319>,  <38.766689, 37.495174, 38.337147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097076, 37.327869, 38.488319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079144, 0.577745, 0.812371,
		-0.558129, -0.700906, 0.444098,
		0.825971, -0.418260, 0.377929,
		39.344868, 37.202393, 38.601700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564247, 37.450649, 39.019802>,  <38.766689, 37.495174, 38.337147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564247, 37.450649, 39.019802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960476, 37.416237, 39.062462>,  <39.198212, 37.395588, 39.088058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960476, 37.416237, 39.062462>,  <38.564247, 37.450649, 39.019802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960476, 37.416237, 39.062462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056992, 0.449148, 0.891638,
		-0.124611, -0.889306, 0.440008,
		0.990568, -0.086031, 0.106652,
		39.257645, 37.390427, 39.094456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724865, 37.079670, 39.672112>,  <38.564247, 37.450649, 39.019802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724865, 37.079670, 39.672112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042126, 37.308380, 39.588223>,  <39.232483, 37.445606, 39.537891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042126, 37.308380, 39.588223>,  <38.724865, 37.079670, 39.672112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042126, 37.308380, 39.588223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011254, 0.358057, 0.933632,
		0.608917, -0.738154, 0.290429,
		0.793154, 0.571773, -0.209720,
		39.280071, 37.479912, 39.525307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913967, 37.265373, 40.355659>,  <38.724865, 37.079670, 39.672112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913967, 37.265373, 40.355659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176548, 37.456032, 40.121777>,  <39.334095, 37.570427, 39.981445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176548, 37.456032, 40.121777>,  <38.913967, 37.265373, 40.355659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176548, 37.456032, 40.121777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387166, 0.452351, 0.803418,
		0.647438, -0.753783, 0.112405,
		0.656449, 0.476644, -0.584709,
		39.373482, 37.599026, 39.946365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446922, 37.307549, 40.719044>,  <38.913967, 37.265373, 40.355659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446922, 37.307549, 40.719044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589199, 37.574638, 40.457474>,  <39.674564, 37.734894, 40.300529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589199, 37.574638, 40.457474>,  <39.446922, 37.307549, 40.719044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589199, 37.574638, 40.457474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300421, 0.580866, 0.756533,
		0.885002, -0.465548, 0.006011,
		0.355694, 0.667728, -0.653928,
		39.695908, 37.774956, 40.261295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147552, 37.391281, 40.848450>,  <39.446922, 37.307549, 40.719044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147552, 37.391281, 40.848450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034992, 37.721527, 40.652828>,  <39.967457, 37.919674, 40.535454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034992, 37.721527, 40.652828>,  <40.147552, 37.391281, 40.848450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034992, 37.721527, 40.652828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450855, 0.563651, 0.692118,
		0.847079, -0.025731, -0.530844,
		-0.281402, 0.825612, -0.489057,
		39.950573, 37.969212, 40.506111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697178, 37.845970, 41.180359>,  <40.147552, 37.391281, 40.848450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697178, 37.845970, 41.180359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436974, 38.086349, 40.994583>,  <40.280853, 38.230576, 40.883118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436974, 38.086349, 40.994583>,  <40.697178, 37.845970, 41.180359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436974, 38.086349, 40.994583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223408, 0.735858, 0.639220,
		0.725899, 0.312056, -0.612937,
		-0.650507, 0.600944, -0.464443,
		40.241821, 38.266632, 40.855251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104836, 38.505306, 41.014648>,  <40.697178, 37.845970, 41.180359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104836, 38.505306, 41.014648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708324, 38.553387, 41.036289>,  <40.470417, 38.582233, 41.049274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708324, 38.553387, 41.036289>,  <41.104836, 38.505306, 41.014648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708324, 38.553387, 41.036289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122464, 0.687962, 0.715340,
		0.048763, 0.715723, -0.696679,
		-0.991274, 0.120200, 0.054103,
		40.410942, 38.589447, 41.052521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931934, 39.278206, 41.015526>,  <41.104836, 38.505306, 41.014648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931934, 39.278206, 41.015526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601715, 39.135185, 41.190170>,  <40.403584, 39.049374, 41.294956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601715, 39.135185, 41.190170>,  <40.931934, 39.278206, 41.015526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601715, 39.135185, 41.190170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075628, 0.696608, 0.713455,
		-0.559244, 0.622010, -0.548041,
		-0.825546, -0.357548, 0.436615,
		40.354050, 39.027920, 41.321156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258049, 39.705883, 41.025162>,  <40.931934, 39.278206, 41.015526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258049, 39.705883, 41.025162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262344, 39.471893, 41.349556>,  <40.264923, 39.331501, 41.544193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262344, 39.471893, 41.349556>,  <40.258049, 39.705883, 41.025162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262344, 39.471893, 41.349556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171920, 0.797873, 0.577790,
		-0.985052, -0.145629, -0.092000,
		0.010738, -0.584970, 0.810984,
		40.265564, 39.296402, 41.592850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816616, 40.148846, 41.428917>,  <40.258049, 39.705883, 41.025162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816616, 40.148846, 41.428917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974930, 39.876762, 41.675713>,  <40.069920, 39.713512, 41.823788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974930, 39.876762, 41.675713>,  <39.816616, 40.148846, 41.428917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974930, 39.876762, 41.675713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198056, 0.592814, 0.780606,
		-0.896731, -0.431151, 0.099908,
		0.395786, -0.680206, 0.616987,
		40.093666, 39.672699, 41.860809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441738, 40.191013, 42.042885>,  <39.816616, 40.148846, 41.428917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441738, 40.191013, 42.042885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763649, 39.984276, 42.159649>,  <39.956795, 39.860233, 42.229706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763649, 39.984276, 42.159649>,  <39.441738, 40.191013, 42.042885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763649, 39.984276, 42.159649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057729, 0.557593, 0.828105,
		-0.590769, -0.649585, 0.478572,
		0.804773, -0.516846, 0.291909,
		40.005081, 39.829224, 42.247223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288509, 39.891376, 42.736088>,  <39.441738, 40.191013, 42.042885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288509, 39.891376, 42.736088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687489, 39.912857, 42.717285>,  <39.926876, 39.925747, 42.706005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687489, 39.912857, 42.717285>,  <39.288509, 39.891376, 42.736088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687489, 39.912857, 42.717285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023733, 0.371540, 0.928113,
		0.067305, -0.926862, 0.369318,
		0.997450, 0.053701, -0.047004,
		39.986725, 39.928967, 42.703182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662010, 39.497204, 43.314804>,  <39.288509, 39.891376, 42.736088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662010, 39.497204, 43.314804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881264, 39.816322, 43.214348>,  <40.012814, 40.007793, 43.154072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881264, 39.816322, 43.214348>,  <39.662010, 39.497204, 43.314804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881264, 39.816322, 43.214348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141398, 0.207560, 0.967949,
		0.824354, -0.566074, 0.000963,
		0.548131, 0.797796, -0.251145,
		40.045704, 40.055660, 43.139004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921749, 39.206940, 42.647507>,  <39.662010, 39.497204, 43.314804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921749, 39.206940, 42.647507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781029, 39.383595, 42.317368>,  <39.696598, 39.489586, 42.119286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781029, 39.383595, 42.317368>,  <39.921749, 39.206940, 42.647507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781029, 39.383595, 42.317368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388150, -0.733514, -0.557940,
		-0.851809, -0.516640, 0.086627,
		-0.351796, 0.441634, -0.825348,
		39.675491, 39.516087, 42.069763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680370, 38.567318, 42.328350>,  <39.921749, 39.206940, 42.647507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680370, 38.567318, 42.328350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765362, 38.860909, 42.070320>,  <39.816357, 39.037064, 41.915501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765362, 38.860909, 42.070320>,  <39.680370, 38.567318, 42.328350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765362, 38.860909, 42.070320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112488, -0.674135, -0.729991,
		-0.970668, 0.082547, -0.225807,
		0.212483, 0.733980, -0.645076,
		39.829105, 39.081104, 41.876797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260780, 38.500694, 41.769524>,  <39.680370, 38.567318, 42.328350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260780, 38.500694, 41.769524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594284, 38.678677, 41.638763>,  <39.794384, 38.785465, 41.560307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594284, 38.678677, 41.638763>,  <39.260780, 38.500694, 41.769524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594284, 38.678677, 41.638763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035839, -0.634438, -0.772142,
		-0.550970, 0.632062, -0.544913,
		0.833755, 0.444956, -0.326904,
		39.844410, 38.812164, 41.540691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123028, 38.823898, 41.140038>,  <39.260780, 38.500694, 41.769524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123028, 38.823898, 41.140038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515511, 38.764500, 41.090763>,  <39.750999, 38.728863, 41.061199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515511, 38.764500, 41.090763>,  <39.123028, 38.823898, 41.140038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515511, 38.764500, 41.090763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169400, -0.357457, -0.918438,
		0.092349, 0.922049, -0.375895,
		0.981211, -0.148493, -0.123184,
		39.809875, 38.719952, 41.053806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346760, 39.135822, 40.619049>,  <39.123028, 38.823898, 41.140038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346760, 39.135822, 40.619049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615849, 38.842022, 40.654724>,  <39.777302, 38.665741, 40.676128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615849, 38.842022, 40.654724>,  <39.346760, 39.135822, 40.619049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615849, 38.842022, 40.654724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278983, -0.363454, -0.888859,
		0.685281, 0.573074, -0.449417,
		0.672725, -0.734498, 0.089190,
		39.817665, 38.621674, 40.681480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644024, 39.022751, 39.876022>,  <39.346760, 39.135822, 40.619049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644024, 39.022751, 39.876022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752609, 38.698181, 40.083057>,  <39.817760, 38.503441, 40.207279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752609, 38.698181, 40.083057>,  <39.644024, 39.022751, 39.876022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752609, 38.698181, 40.083057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032387, -0.529775, -0.847520,
		0.961903, 0.246837, -0.117537,
		0.271467, -0.811425, 0.517586,
		39.834049, 38.454754, 40.238335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079311, 38.691654, 39.438702>,  <39.644024, 39.022751, 39.876022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079311, 38.691654, 39.438702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956646, 38.401157, 39.684799>,  <39.883045, 38.226860, 39.832458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956646, 38.401157, 39.684799>,  <40.079311, 38.691654, 39.438702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956646, 38.401157, 39.684799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119780, -0.611807, -0.781885,
		0.944251, -0.313469, 0.100629,
		-0.306663, -0.726242, 0.615247,
		39.864647, 38.183285, 39.869373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240540, 38.109550, 39.154854>,  <40.079311, 38.691654, 39.438702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240540, 38.109550, 39.154854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989399, 37.936481, 39.413651>,  <39.838715, 37.832642, 39.568928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989399, 37.936481, 39.413651>,  <40.240540, 38.109550, 39.154854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989399, 37.936481, 39.413651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063635, -0.799937, -0.596701,
		0.775729, -0.415810, 0.474708,
		-0.627850, -0.432670, 0.646994,
		39.801044, 37.806679, 39.607750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479828, 37.489342, 39.401386>,  <40.240540, 38.109550, 39.154854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479828, 37.489342, 39.401386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079853, 37.492001, 39.405006>,  <39.839867, 37.493595, 39.407177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079853, 37.492001, 39.405006>,  <40.479828, 37.489342, 39.401386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079853, 37.492001, 39.405006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010408, -0.851360, -0.524478,
		0.004216, -0.524540, 0.851376,
		-0.999937, 0.006650, 0.009049,
		39.779873, 37.493996, 39.407722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394444, 36.894203, 39.052475>,  <40.479828, 37.489342, 39.401386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394444, 36.894203, 39.052475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019611, 37.027897, 39.092808>,  <39.794712, 37.108112, 39.117008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019611, 37.027897, 39.092808>,  <40.394444, 36.894203, 39.052475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019611, 37.027897, 39.092808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322152, -0.716577, -0.618656,
		-0.134521, -0.612215, 0.779165,
		-0.937082, 0.334231, 0.100832,
		39.738487, 37.128166, 39.123058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950024, 36.262672, 39.269077>,  <40.394444, 36.894203, 39.052475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950024, 36.262672, 39.269077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723804, 36.546551, 39.101040>,  <39.588074, 36.716877, 39.000217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723804, 36.546551, 39.101040>,  <39.950024, 36.262672, 39.269077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723804, 36.546551, 39.101040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332964, -0.662509, -0.670982,
		-0.754509, -0.239600, 0.610989,
		-0.565553, 0.709700, -0.420091,
		39.554138, 36.759460, 38.975014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375980, 35.920303, 39.083809>,  <39.950024, 36.262672, 39.269077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375980, 35.920303, 39.083809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385895, 36.248962, 38.856026>,  <39.391842, 36.446159, 38.719357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385895, 36.248962, 38.856026>,  <39.375980, 35.920303, 39.083809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385895, 36.248962, 38.856026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167466, -0.558171, -0.812650,
		-0.985566, 0.115504, 0.123765,
		0.024783, 0.821647, -0.569457,
		39.393330, 36.495457, 38.685188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929577, 35.723667, 38.560169>,  <39.375980, 35.920303, 39.083809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929577, 35.723667, 38.560169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180470, 36.001385, 38.419010>,  <39.331005, 36.168015, 38.334316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180470, 36.001385, 38.419010>,  <38.929577, 35.723667, 38.560169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180470, 36.001385, 38.419010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004741, -0.456506, -0.889708,
		-0.778818, 0.556380, -0.289627,
		0.627232, 0.694294, -0.352897,
		39.368641, 36.209671, 38.313141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938938, 35.600891, 37.889492>,  <38.929577, 35.723667, 38.560169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938938, 35.600891, 37.889492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157001, 35.936161, 37.896008>,  <39.287838, 36.137325, 37.899918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157001, 35.936161, 37.896008>,  <38.938938, 35.600891, 37.889492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157001, 35.936161, 37.896008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414111, -0.252349, -0.874547,
		-0.728916, 0.483507, -0.484668,
		0.545155, 0.838177, 0.016285,
		39.320549, 36.187614, 37.900894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934776, 35.857037, 37.182961>,  <38.938938, 35.600891, 37.889492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934776, 35.857037, 37.182961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258881, 36.019962, 37.351517>,  <39.453342, 36.117718, 37.452652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258881, 36.019962, 37.351517>,  <38.934776, 35.857037, 37.182961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258881, 36.019962, 37.351517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519268, -0.165567, -0.838420,
		-0.271735, 0.898154, -0.345659,
		0.810260, 0.407318, 0.421392,
		39.501957, 36.142159, 37.477936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327625, 36.245106, 36.697372>,  <38.934776, 35.857037, 37.182961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327625, 36.245106, 36.697372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606247, 36.178631, 36.976566>,  <39.773422, 36.138744, 37.144085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606247, 36.178631, 36.976566>,  <39.327625, 36.245106, 36.697372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606247, 36.178631, 36.976566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678032, -0.165738, -0.716103,
		0.234692, 0.972066, -0.002764,
		0.696558, -0.166190, 0.697989,
		39.815216, 36.128773, 37.185963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774750, 36.748825, 36.542652>,  <39.327625, 36.245106, 36.697372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774750, 36.748825, 36.542652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946667, 36.447250, 36.741394>,  <40.049816, 36.266308, 36.860638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946667, 36.447250, 36.741394>,  <39.774750, 36.748825, 36.542652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946667, 36.447250, 36.741394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636731, -0.137078, -0.758804,
		0.640194, 0.642491, 0.421138,
		0.429796, -0.753933, 0.496850,
		40.075607, 36.221069, 36.890450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504124, 36.926476, 36.696835>,  <39.774750, 36.748825, 36.542652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504124, 36.926476, 36.696835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487457, 36.527615, 36.721985>,  <40.477459, 36.288300, 36.737076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487457, 36.527615, 36.721985>,  <40.504124, 36.926476, 36.696835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487457, 36.527615, 36.721985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823670, -0.069896, -0.562745,
		0.565536, 0.028340, 0.824236,
		-0.041663, -0.997152, 0.062872,
		40.474957, 36.228470, 36.740845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179310, 36.801552, 36.431366>,  <40.504124, 36.926476, 36.696835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179310, 36.801552, 36.431366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980633, 36.456413, 36.468857>,  <40.861427, 36.249329, 36.491352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980633, 36.456413, 36.468857>,  <41.179310, 36.801552, 36.431366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980633, 36.456413, 36.468857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625214, -0.430607, -0.650911,
		0.601999, -0.264702, 0.753346,
		-0.496693, -0.862850, 0.093730,
		40.831623, 36.197559, 36.496975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688354, 36.231468, 36.457478>,  <41.179310, 36.801552, 36.431366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688354, 36.231468, 36.457478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341331, 36.095661, 36.312107>,  <41.133118, 36.014179, 36.224884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341331, 36.095661, 36.312107>,  <41.688354, 36.231468, 36.457478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341331, 36.095661, 36.312107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481602, -0.391124, -0.784272,
		0.124129, -0.855424, 0.502833,
		-0.867555, -0.339516, -0.363424,
		41.081066, 35.993805, 36.203079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838142, 35.505142, 36.144924>,  <41.688354, 36.231468, 36.457478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838142, 35.505142, 36.144924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498379, 35.639900, 35.982437>,  <41.294521, 35.720757, 35.884945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498379, 35.639900, 35.982437>,  <41.838142, 35.505142, 36.144924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498379, 35.639900, 35.982437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315165, -0.293574, -0.902489,
		-0.423300, -0.894604, 0.143186,
		-0.849405, 0.336896, -0.406217,
		41.243557, 35.740967, 35.860573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673000, 34.951954, 35.631145>,  <41.838142, 35.505142, 36.144924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673000, 34.951954, 35.631145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470310, 35.276428, 35.514385>,  <41.348698, 35.471115, 35.444328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470310, 35.276428, 35.514385>,  <41.673000, 34.951954, 35.631145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470310, 35.276428, 35.514385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415257, -0.067065, -0.907229,
		-0.755509, -0.580927, -0.302868,
		-0.506722, 0.811188, -0.291903,
		41.318295, 35.519783, 35.426815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302258, 35.293926, 35.644112>,  <41.673000, 34.951954, 35.631145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302258, 35.293926, 35.644112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622868, 35.326256, 35.407124>,  <42.815235, 35.345654, 35.264931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622868, 35.326256, 35.407124>,  <42.302258, 35.293926, 35.644112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622868, 35.326256, 35.407124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560313, 0.244493, 0.791374,
		0.208816, -0.966277, 0.150682,
		0.801527, 0.080822, -0.592471,
		42.863327, 35.350502, 35.229382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893478, 34.944088, 35.856216>,  <42.302258, 35.293926, 35.644112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893478, 34.944088, 35.856216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059299, 35.229630, 35.630451>,  <43.158791, 35.400955, 35.494991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059299, 35.229630, 35.630451>,  <42.893478, 34.944088, 35.856216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059299, 35.229630, 35.630451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605828, 0.246315, 0.756506,
		0.679058, -0.655546, -0.330363,
		0.414551, 0.713854, -0.564411,
		43.183666, 35.443787, 35.461128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629402, 34.911961, 35.880085>,  <42.893478, 34.944088, 35.856216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629402, 34.911961, 35.880085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557384, 35.284733, 35.754166>,  <43.514175, 35.508396, 35.678616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557384, 35.284733, 35.754166>,  <43.629402, 34.911961, 35.880085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557384, 35.284733, 35.754166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485779, 0.362515, 0.795363,
		0.855339, -0.009723, -0.517978,
		-0.180041, 0.931927, -0.314796,
		43.503372, 35.564312, 35.659725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.244667, 35.279190, 35.763687>,  <43.629402, 34.911961, 35.880085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.244667, 35.279190, 35.763687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952053, 35.529884, 35.871059>,  <43.776485, 35.680302, 35.935482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952053, 35.529884, 35.871059>,  <44.244667, 35.279190, 35.763687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952053, 35.529884, 35.871059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598950, 0.402635, 0.692202,
		0.325751, 0.667146, -0.669927,
		-0.731536, 0.626739, 0.268428,
		43.732594, 35.717907, 35.951588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509941, 36.010521, 35.613106>,  <44.244667, 35.279190, 35.763687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509941, 36.010521, 35.613106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281078, 36.004955, 35.941116>,  <44.143761, 36.001617, 36.137920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281078, 36.004955, 35.941116>,  <44.509941, 36.010521, 35.613106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.281078, 36.004955, 35.941116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745489, 0.407968, 0.527075,
		-0.341875, 0.912890, -0.223053,
		-0.572160, -0.013910, 0.820024,
		44.109432, 36.000782, 36.187122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362091, 36.697334, 35.951149>,  <44.509941, 36.010521, 35.613106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362091, 36.697334, 35.951149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365128, 36.397129, 36.215473>,  <44.366951, 36.217007, 36.374069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365128, 36.397129, 36.215473>,  <44.362091, 36.697334, 35.951149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365128, 36.397129, 36.215473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690664, 0.481821, 0.539288,
		-0.723136, 0.452307, 0.522008,
		0.007591, -0.750511, 0.660814,
		44.367405, 36.171974, 36.413719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403801, 37.020828, 36.604034>,  <44.362091, 36.697334, 35.951149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403801, 37.020828, 36.604034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.596390, 36.670692, 36.586285>,  <44.711945, 36.460613, 36.575634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.596390, 36.670692, 36.586285>,  <44.403801, 37.020828, 36.604034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.596390, 36.670692, 36.586285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797621, 0.416620, 0.436151,
		-0.363291, -0.245390, 0.898779,
		0.481477, -0.875335, -0.044374,
		44.740833, 36.408092, 36.572971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.740372, 36.952957, 37.204372>,  <44.403801, 37.020828, 36.604034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.740372, 36.952957, 37.204372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.990513, 36.735619, 36.980335>,  <45.140598, 36.605213, 36.845913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.990513, 36.735619, 36.980335>,  <44.740372, 36.952957, 37.204372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.990513, 36.735619, 36.980335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778710, 0.388148, 0.492901,
		-0.050420, -0.744386, 0.665843,
		0.625354, -0.543351, -0.560091,
		45.178120, 36.572613, 36.812309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259632, 36.755497, 37.686832>,  <44.740372, 36.952957, 37.204372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259632, 36.755497, 37.686832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420685, 36.714066, 37.323040>,  <45.517315, 36.689205, 37.104763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420685, 36.714066, 37.323040>,  <45.259632, 36.755497, 37.686832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420685, 36.714066, 37.323040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857076, 0.391540, 0.334838,
		0.321417, -0.914313, 0.246420,
		0.402630, -0.103578, -0.909484,
		45.541473, 36.682991, 37.050194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.876869, 36.294209, 37.801987>,  <45.259632, 36.755497, 37.686832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.876869, 36.294209, 37.801987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.926388, 36.528370, 37.481491>,  <45.956100, 36.668865, 37.289196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.926388, 36.528370, 37.481491>,  <45.876869, 36.294209, 37.801987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.926388, 36.528370, 37.481491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937312, 0.196086, 0.288088,
		0.325759, -0.786674, -0.524429,
		0.123798, 0.585401, -0.801236,
		45.963528, 36.703991, 37.241119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.461037, 36.000233, 37.645237>,  <45.876869, 36.294209, 37.801987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.461037, 36.000233, 37.645237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.428535, 36.365856, 37.486298>,  <46.409035, 36.585232, 37.390934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.428535, 36.365856, 37.486298>,  <46.461037, 36.000233, 37.645237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.428535, 36.365856, 37.486298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964018, 0.173319, 0.201570,
		0.253116, -0.366677, -0.895254,
		-0.081253, 0.914062, -0.397353,
		46.404160, 36.640076, 37.367092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.005188, 36.075451, 37.047234>,  <46.461037, 36.000233, 37.645237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.005188, 36.075451, 37.047234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.882385, 36.388733, 37.263508>,  <46.808704, 36.576702, 37.393272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.882385, 36.388733, 37.263508>,  <47.005188, 36.075451, 37.047234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.882385, 36.388733, 37.263508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951678, 0.257100, 0.167951,
		-0.007469, 0.566117, -0.824291,
		-0.307005, 0.783205, 0.540682,
		46.790283, 36.623695, 37.425713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.281235, 35.706917, 36.389381>,  <47.005188, 36.075451, 37.047234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.281235, 35.706917, 36.389381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.888107, 35.779865, 36.400764>,  <46.652233, 35.823635, 36.407597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.888107, 35.779865, 36.400764>,  <47.281235, 35.706917, 36.389381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.888107, 35.779865, 36.400764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145493, -0.670525, -0.727481,
		-0.113590, -0.719122, 0.685537,
		-0.982817, 0.182375, 0.028462,
		46.593262, 35.834579, 36.409302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.860382, 35.022396, 36.490879>,  <47.281235, 35.706917, 36.389381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.860382, 35.022396, 36.490879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.686859, 35.327698, 36.299358>,  <46.582745, 35.510880, 36.184444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.686859, 35.327698, 36.299358>,  <46.860382, 35.022396, 36.490879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.686859, 35.327698, 36.299358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103116, -0.569978, -0.815164,
		-0.895084, -0.304256, 0.325966,
		-0.433812, 0.763252, -0.478804,
		46.556717, 35.556675, 36.155716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.119434, 34.863914, 36.254787>,  <46.860382, 35.022396, 36.490879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.119434, 34.863914, 36.254787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.334057, 35.113686, 36.027737>,  <46.462830, 35.263550, 35.891506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.334057, 35.113686, 36.027737>,  <46.119434, 34.863914, 36.254787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.334057, 35.113686, 36.027737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042142, -0.651982, -0.757063,
		-0.842811, 0.430128, -0.323511,
		0.536557, 0.624427, -0.567624,
		46.495026, 35.301014, 35.857449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.951771, 34.549454, 35.614651>,  <46.119434, 34.863914, 36.254787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.951771, 34.549454, 35.614651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.157150, 34.878349, 35.516430>,  <46.280376, 35.075687, 35.457497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.157150, 34.878349, 35.516430>,  <45.951771, 34.549454, 35.614651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.157150, 34.878349, 35.516430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042345, -0.261525, -0.964267,
		-0.857074, 0.505501, -0.099463,
		0.513450, 0.822237, -0.245552,
		46.311184, 35.125019, 35.442764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.863628, 34.659012, 34.856197>,  <45.951771, 34.549454, 35.614651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.863628, 34.659012, 34.856197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.229240, 34.795906, 34.943302>,  <46.448608, 34.878040, 34.995564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.229240, 34.795906, 34.943302>,  <45.863628, 34.659012, 34.856197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.229240, 34.795906, 34.943302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206841, 0.068565, -0.975969,
		-0.348940, 0.937110, -0.008117,
		0.914034, 0.342233, 0.217758,
		46.503452, 34.898575, 35.008629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.960270, 35.330170, 34.471497>,  <45.863628, 34.659012, 34.856197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.960270, 35.330170, 34.471497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.287647, 35.116482, 34.556122>,  <46.484074, 34.988270, 34.606895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.287647, 35.116482, 34.556122>,  <45.960270, 35.330170, 34.471497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.287647, 35.116482, 34.556122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332818, 0.140619, -0.932448,
		0.468382, 0.833568, 0.292886,
		0.818444, -0.534219, 0.211563,
		46.533180, 34.956215, 34.619591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.684364, 35.708900, 34.470963>,  <45.960270, 35.330170, 34.471497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.684364, 35.708900, 34.470963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.713581, 35.326595, 34.356998>,  <46.731110, 35.097210, 34.288620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.713581, 35.326595, 34.356998>,  <46.684364, 35.708900, 34.470963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.713581, 35.326595, 34.356998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195630, 0.293856, -0.935616,
		0.977954, 0.012599, 0.208440,
		0.073039, -0.955767, -0.284912,
		46.735493, 35.039864, 34.271526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.249889, 35.264248, 34.106743>,  <46.684364, 35.708900, 34.470963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.249889, 35.264248, 34.106743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.113239, 35.259453, 34.482647>,  <47.031250, 35.256577, 34.708191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.113239, 35.259453, 34.482647>,  <47.249889, 35.264248, 34.106743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.113239, 35.259453, 34.482647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748432, -0.608267, 0.264311,
		0.568456, 0.793642, 0.216774,
		-0.341624, -0.011991, 0.939760,
		47.010754, 35.255856, 34.764576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.890072, 35.336205, 34.665966>,  <47.249889, 35.264248, 34.106743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.890072, 35.336205, 34.665966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547699, 35.141216, 34.734947>,  <47.342274, 35.024223, 34.776337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547699, 35.141216, 34.734947>,  <47.890072, 35.336205, 34.665966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.547699, 35.141216, 34.734947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509637, -0.851700, 0.121971,
		0.087423, 0.192290, 0.977436,
		-0.855937, -0.487475, 0.172456,
		47.290916, 34.994972, 34.786686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.411366, 30.412701, 27.069580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013767, 30.404819, 27.026537>,  <38.775208, 30.400091, 27.000711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013767, 30.404819, 27.026537>,  <39.411366, 30.412701, 27.069580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013767, 30.404819, 27.026537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105108, 0.444747, 0.889468,
		0.030336, 0.895440, -0.444148,
		-0.993998, -0.019701, -0.107610,
		38.715569, 30.398909, 26.994253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115940, 31.054970, 27.297108>,  <39.411366, 30.412701, 27.069580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115940, 31.054970, 27.297108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.814110, 30.792604, 27.289108>,  <38.633011, 30.635185, 27.284309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.814110, 30.792604, 27.289108>,  <39.115940, 31.054970, 27.297108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814110, 30.792604, 27.289108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210954, 0.213604, 0.953872,
		-0.621384, 0.723984, -0.299547,
		-0.754573, -0.655912, -0.019997,
		38.587738, 30.595831, 27.283110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548038, 31.344841, 27.534784>,  <39.115940, 31.054970, 27.297108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548038, 31.344841, 27.534784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.463223, 30.963297, 27.619816>,  <38.412334, 30.734371, 27.670835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.463223, 30.963297, 27.619816>,  <38.548038, 31.344841, 27.534784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463223, 30.963297, 27.619816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442697, 0.287678, 0.849271,
		-0.871240, 0.085970, -0.483270,
		-0.212038, -0.953861, 0.212578,
		38.399612, 30.677139, 27.683590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860046, 31.318905, 27.775196>,  <38.548038, 31.344841, 27.534784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860046, 31.318905, 27.775196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035606, 30.986275, 27.911343>,  <38.140942, 30.786697, 27.993031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035606, 30.986275, 27.911343>,  <37.860046, 31.318905, 27.775196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035606, 30.986275, 27.911343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473067, 0.108196, 0.874358,
		-0.763921, -0.544770, -0.345904,
		0.438898, -0.831576, 0.340366,
		38.167274, 30.736801, 28.013453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330170, 30.864122, 28.014000>,  <37.860046, 31.318905, 27.775196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330170, 30.864122, 28.014000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.656857, 30.739574, 28.208326>,  <37.852867, 30.664845, 28.324923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.656857, 30.739574, 28.208326>,  <37.330170, 30.864122, 28.014000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656857, 30.739574, 28.208326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472524, 0.122347, 0.872784,
		-0.331199, -0.942379, -0.047207,
		0.816718, -0.311372, 0.485818,
		37.901871, 30.646164, 28.354073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967541, 30.452366, 28.535610>,  <37.330170, 30.864122, 28.014000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967541, 30.452366, 28.535610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.327133, 30.549238, 28.681581>,  <37.542889, 30.607361, 28.769165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.327133, 30.549238, 28.681581>,  <36.967541, 30.452366, 28.535610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327133, 30.549238, 28.681581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423038, 0.264374, 0.866686,
		0.113415, -0.933518, 0.340119,
		0.898986, 0.242178, 0.364930,
		37.596828, 30.621893, 28.791059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922653, 30.255978, 29.259916>,  <36.967541, 30.452366, 28.535610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922653, 30.255978, 29.259916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.249355, 30.486362, 29.246225>,  <37.445377, 30.624594, 29.238010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.249355, 30.486362, 29.246225>,  <36.922653, 30.255978, 29.259916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249355, 30.486362, 29.246225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128714, 0.239707, 0.962275,
		0.562439, -0.781541, 0.269918,
		0.816759, 0.575963, -0.034226,
		37.494385, 30.659151, 29.235958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358738, 30.040018, 29.740973>,  <36.922653, 30.255978, 29.259916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358738, 30.040018, 29.740973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.484905, 30.414644, 29.679840>,  <37.560604, 30.639420, 29.643160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.484905, 30.414644, 29.679840>,  <37.358738, 30.040018, 29.740973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484905, 30.414644, 29.679840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024394, 0.169003, 0.985314,
		0.948640, -0.307054, 0.076153,
		0.315415, 0.936566, -0.152833,
		37.579529, 30.695614, 29.633989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856449, 30.166912, 30.301880>,  <37.358738, 30.040018, 29.740973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856449, 30.166912, 30.301880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729668, 30.523474, 30.172302>,  <37.653599, 30.737411, 30.094557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729668, 30.523474, 30.172302>,  <37.856449, 30.166912, 30.301880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729668, 30.523474, 30.172302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160902, 0.286064, 0.944605,
		0.934694, 0.351517, 0.052760,
		-0.316951, 0.891406, -0.323942,
		37.634583, 30.790895, 30.075119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305698, 30.660177, 30.661486>,  <37.856449, 30.166912, 30.301880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305698, 30.660177, 30.661486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969189, 30.837349, 30.537508>,  <37.767281, 30.943651, 30.463121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969189, 30.837349, 30.537508>,  <38.305698, 30.660177, 30.661486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969189, 30.837349, 30.537508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154285, 0.352767, 0.922904,
		0.518118, 0.824239, -0.228439,
		-0.841279, 0.442928, -0.309943,
		37.716805, 30.970228, 30.444525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517220, 31.249601, 30.667204>,  <38.305698, 30.660177, 30.661486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517220, 31.249601, 30.667204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.119781, 31.279222, 30.701366>,  <37.881321, 31.296995, 30.721863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.119781, 31.279222, 30.701366>,  <38.517220, 31.249601, 30.667204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119781, 31.279222, 30.701366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112964, 0.622765, 0.774211,
		0.004147, 0.778896, -0.627139,
		-0.993590, 0.074055, 0.085405,
		37.821705, 31.301439, 30.726988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335754, 31.952797, 31.024605>,  <38.517220, 31.249601, 30.667204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335754, 31.952797, 31.024605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.986679, 31.764927, 31.077988>,  <37.777233, 31.652205, 31.110018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.986679, 31.764927, 31.077988>,  <38.335754, 31.952797, 31.024605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986679, 31.764927, 31.077988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108533, 0.453084, 0.884836,
		-0.476054, 0.757706, -0.446378,
		-0.872693, -0.469677, 0.133456,
		37.724873, 31.624023, 31.118025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867985, 32.431538, 31.046082>,  <38.335754, 31.952797, 31.024605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867985, 32.431538, 31.046082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.727081, 32.109730, 31.237354>,  <37.642540, 31.916645, 31.352118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.727081, 32.109730, 31.237354>,  <37.867985, 32.431538, 31.046082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727081, 32.109730, 31.237354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129525, 0.464109, 0.876257,
		-0.926898, 0.370603, -0.059279,
		-0.352256, -0.804522, 0.478184,
		37.621403, 31.868374, 31.380810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656612, 32.802078, 31.511398>,  <37.867985, 32.431538, 31.046082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656612, 32.802078, 31.511398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.607063, 32.430794, 31.651728>,  <37.577332, 32.208023, 31.735926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.607063, 32.430794, 31.651728>,  <37.656612, 32.802078, 31.511398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607063, 32.430794, 31.651728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040996, 0.348459, 0.936427,
		-0.991451, 0.130382, -0.005112,
		-0.123874, -0.928212, 0.350825,
		37.569901, 32.152328, 31.756975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106125, 32.818039, 32.001842>,  <37.656612, 32.802078, 31.511398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106125, 32.818039, 32.001842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.360668, 32.515732, 32.063629>,  <37.513393, 32.334347, 32.100700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.360668, 32.515732, 32.063629>,  <37.106125, 32.818039, 32.001842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360668, 32.515732, 32.063629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212979, 0.364599, 0.906481,
		-0.741409, -0.543949, 0.392979,
		0.636359, -0.755769, 0.154467,
		37.551575, 32.289001, 32.109970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093151, 32.767368, 32.715923>,  <37.106125, 32.818039, 32.001842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093151, 32.767368, 32.715923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402088, 32.526695, 32.634468>,  <37.587448, 32.382290, 32.585594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402088, 32.526695, 32.634468>,  <37.093151, 32.767368, 32.715923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402088, 32.526695, 32.634468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389590, 0.195486, 0.900003,
		-0.501708, -0.774444, 0.385391,
		0.772340, -0.601683, -0.203639,
		37.633789, 32.346191, 32.573376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201679, 32.113514, 33.203995>,  <37.093151, 32.767368, 32.715923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201679, 32.113514, 33.203995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.558998, 32.203526, 33.048367>,  <37.773392, 32.257530, 32.954990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.558998, 32.203526, 33.048367>,  <37.201679, 32.113514, 33.203995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558998, 32.203526, 33.048367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358666, 0.164795, 0.918804,
		0.270872, -0.960315, 0.066502,
		0.893301, 0.225026, -0.389070,
		37.826988, 32.271034, 32.931644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691406, 31.667091, 33.586403>,  <37.201679, 32.113514, 33.203995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691406, 31.667091, 33.586403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.895626, 31.969650, 33.422840>,  <38.018158, 32.151184, 33.324703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.895626, 31.969650, 33.422840>,  <37.691406, 31.667091, 33.586403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895626, 31.969650, 33.422840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513043, 0.113647, 0.850806,
		0.690019, -0.644163, -0.330042,
		0.510550, 0.756398, -0.408902,
		38.048790, 32.196571, 33.300171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369106, 31.713381, 33.940994>,  <37.691406, 31.667091, 33.586403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369106, 31.713381, 33.940994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.419701, 32.054489, 33.738300>,  <38.450058, 32.259155, 33.616684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.419701, 32.054489, 33.738300>,  <38.369106, 31.713381, 33.940994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419701, 32.054489, 33.738300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590669, 0.345654, 0.729132,
		0.796938, -0.391541, -0.459984,
		0.126490, 0.852771, -0.506736,
		38.457649, 32.310322, 33.586281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083084, 31.844145, 33.855259>,  <38.369106, 31.713381, 33.940994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083084, 31.844145, 33.855259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883980, 32.189690, 33.824322>,  <38.764519, 32.397015, 33.805759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883980, 32.189690, 33.824322>,  <39.083084, 31.844145, 33.855259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883980, 32.189690, 33.824322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600420, 0.407561, 0.688033,
		0.625886, 0.296038, -0.721546,
		-0.497758, 0.863861, -0.077339,
		38.734653, 32.448849, 33.801121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602070, 32.394035, 33.742584>,  <39.083084, 31.844145, 33.855259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602070, 32.394035, 33.742584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.274632, 32.581074, 33.876003>,  <39.078167, 32.693298, 33.956055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.274632, 32.581074, 33.876003>,  <39.602070, 32.394035, 33.742584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274632, 32.581074, 33.876003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565575, 0.555007, 0.609993,
		0.100110, 0.687985, -0.718787,
		-0.818598, 0.467595, 0.333546,
		39.029053, 32.721352, 33.976067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731968, 33.193840, 33.815060>,  <39.602070, 32.394035, 33.742584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731968, 33.193840, 33.815060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440220, 33.057030, 34.052052>,  <39.265171, 32.974941, 34.194248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440220, 33.057030, 34.052052>,  <39.731968, 33.193840, 33.815060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440220, 33.057030, 34.052052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428886, 0.446118, 0.785516,
		-0.532986, 0.827039, -0.178694,
		-0.729371, -0.342030, 0.592480,
		39.221409, 32.954422, 34.229797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306030, 33.651691, 33.988155>,  <39.731968, 33.193840, 33.815060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306030, 33.651691, 33.988155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.665306, 33.594654, 34.154491>,  <40.880871, 33.560432, 34.254292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.665306, 33.594654, 34.154491>,  <40.306030, 33.651691, 33.988155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665306, 33.594654, 34.154491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264780, -0.579631, -0.770662,
		0.350924, 0.802307, -0.482863,
		0.898189, -0.142592, 0.415841,
		40.934761, 33.551876, 34.279243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765926, 33.995651, 33.504402>,  <40.306030, 33.651691, 33.988155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765926, 33.995651, 33.504402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.911167, 33.700031, 33.731369>,  <40.998310, 33.522659, 33.867550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.911167, 33.700031, 33.731369>,  <40.765926, 33.995651, 33.504402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911167, 33.700031, 33.731369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180404, -0.541695, -0.820988,
		0.914117, 0.400468, -0.063364,
		0.363103, -0.739048, 0.567419,
		41.020100, 33.478317, 33.901596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302589, 33.806145, 33.222248>,  <40.765926, 33.995651, 33.504402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302589, 33.806145, 33.222248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.252869, 33.482933, 33.452602>,  <41.223038, 33.289005, 33.590816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.252869, 33.482933, 33.452602>,  <41.302589, 33.806145, 33.222248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252869, 33.482933, 33.452602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158324, -0.589102, -0.792396,
		0.979532, -0.007321, 0.201157,
		-0.124303, -0.808025, 0.575885,
		41.215576, 33.240524, 33.625366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844063, 33.379589, 33.065048>,  <41.302589, 33.806145, 33.222248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844063, 33.379589, 33.065048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.595520, 33.133556, 33.259201>,  <41.446396, 32.985939, 33.375694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.595520, 33.133556, 33.259201>,  <41.844063, 33.379589, 33.065048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595520, 33.133556, 33.259201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061276, -0.655730, -0.752505,
		0.781130, -0.437829, 0.445130,
		-0.621354, -0.615080, 0.485382,
		41.409115, 32.949032, 33.404816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091904, 32.722797, 33.036129>,  <41.844063, 33.379589, 33.065048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091904, 32.722797, 33.036129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.714035, 32.619114, 33.116543>,  <41.487316, 32.556904, 33.164791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.714035, 32.619114, 33.116543>,  <42.091904, 32.722797, 33.036129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714035, 32.619114, 33.116543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009589, -0.634420, -0.772929,
		0.327890, -0.728233, 0.601801,
		-0.944667, -0.259207, 0.201037,
		41.430634, 32.541351, 33.176853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062477, 31.995710, 33.141716>,  <42.091904, 32.722797, 33.036129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062477, 31.995710, 33.141716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.698898, 32.120411, 33.030991>,  <41.480751, 32.195232, 32.964554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.698898, 32.120411, 33.030991>,  <42.062477, 31.995710, 33.141716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698898, 32.120411, 33.030991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024095, -0.702133, -0.711638,
		-0.416214, -0.640172, 0.645713,
		-0.908947, 0.311752, -0.276813,
		41.426212, 32.213936, 32.947948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795887, 31.372477, 32.944260>,  <42.062477, 31.995710, 33.141716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795887, 31.372477, 32.944260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.593960, 31.676439, 32.780453>,  <41.472805, 31.858816, 32.682167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.593960, 31.676439, 32.780453>,  <41.795887, 31.372477, 32.944260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593960, 31.676439, 32.780453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139590, -0.540022, -0.829994,
		-0.851866, -0.361830, 0.378687,
		-0.504817, 0.759904, -0.409518,
		41.442516, 31.904411, 32.657597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273659, 30.939037, 32.611027>,  <41.795887, 31.372477, 32.944260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273659, 30.939037, 32.611027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.246964, 31.293404, 32.427418>,  <41.230946, 31.506023, 32.317253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.246964, 31.293404, 32.427418>,  <41.273659, 30.939037, 32.611027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246964, 31.293404, 32.427418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166915, -0.463474, -0.870247,
		-0.983710, 0.018538, 0.178805,
		-0.066739, 0.885916, -0.459018,
		41.226940, 31.559179, 32.289711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559902, 31.028971, 32.245148>,  <41.273659, 30.939037, 32.611027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559902, 31.028971, 32.245148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.872887, 31.228926, 32.096626>,  <41.060677, 31.348898, 32.007511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.872887, 31.228926, 32.096626>,  <40.559902, 31.028971, 32.245148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872887, 31.228926, 32.096626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073643, -0.517816, -0.852317,
		-0.618332, 0.694248, -0.368357,
		0.782460, 0.499887, -0.371308,
		41.107624, 31.378891, 31.985233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345963, 31.040493, 31.537851>,  <40.559902, 31.028971, 32.245148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345963, 31.040493, 31.537851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.724766, 31.168606, 31.547567>,  <40.952049, 31.245474, 31.553396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.724766, 31.168606, 31.547567>,  <40.345963, 31.040493, 31.537851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724766, 31.168606, 31.547567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120977, -0.285607, -0.950681,
		-0.297547, 0.903244, -0.309219,
		0.947011, 0.320281, 0.024290,
		41.008869, 31.264690, 31.554855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336323, 31.381559, 30.955620>,  <40.345963, 31.040493, 31.537851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336323, 31.381559, 30.955620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.718418, 31.297815, 31.039225>,  <40.947674, 31.247570, 31.089388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.718418, 31.297815, 31.039225>,  <40.336323, 31.381559, 30.955620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718418, 31.297815, 31.039225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097784, -0.443364, -0.890992,
		0.279206, 0.871549, -0.403047,
		0.955239, -0.209359, 0.209013,
		41.004990, 31.235008, 31.101929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683331, 31.452021, 30.318329>,  <40.336323, 31.381559, 30.955620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683331, 31.452021, 30.318329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.946568, 31.238214, 30.530441>,  <41.104511, 31.109930, 30.657709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.946568, 31.238214, 30.530441>,  <40.683331, 31.452021, 30.318329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946568, 31.238214, 30.530441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417553, -0.326975, -0.847784,
		0.626544, 0.779345, 0.008009,
		0.658097, -0.534518, 0.530282,
		41.143997, 31.077860, 30.689526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337795, 31.562422, 30.071541>,  <40.683331, 31.452021, 30.318329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337795, 31.562422, 30.071541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.351170, 31.208565, 30.257570>,  <41.359192, 30.996250, 30.369188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.351170, 31.208565, 30.257570>,  <41.337795, 31.562422, 30.071541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351170, 31.208565, 30.257570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091798, -0.460649, -0.882822,
		0.995216, 0.072207, 0.065807,
		0.033432, -0.884640, 0.465074,
		41.361198, 30.943172, 30.397093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806252, 31.120436, 29.720634>,  <41.337795, 31.562422, 30.071541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806252, 31.120436, 29.720634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.571152, 30.866867, 29.921707>,  <41.430092, 30.714725, 30.042351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.571152, 30.866867, 29.921707>,  <41.806252, 31.120436, 29.720634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571152, 30.866867, 29.921707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046147, -0.646586, -0.761444,
		0.807723, -0.424344, 0.409286,
		-0.587753, -0.633924, 0.502680,
		41.394825, 30.676689, 30.072512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108681, 30.495958, 29.580254>,  <41.806252, 31.120436, 29.720634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108681, 30.495958, 29.580254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.735985, 30.396347, 29.685966>,  <41.512367, 30.336580, 29.749393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.735985, 30.396347, 29.685966>,  <42.108681, 30.495958, 29.580254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735985, 30.396347, 29.685966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100584, -0.522323, -0.846795,
		0.348918, -0.815575, 0.461621,
		-0.931740, -0.249031, 0.264282,
		41.456463, 30.321638, 29.765251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124027, 29.738291, 29.487644>,  <42.108681, 30.495958, 29.580254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124027, 29.738291, 29.487644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.743916, 29.859671, 29.515615>,  <41.515850, 29.932499, 29.532398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.743916, 29.859671, 29.515615>,  <42.124027, 29.738291, 29.487644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743916, 29.859671, 29.515615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213313, -0.470730, -0.856102,
		-0.226865, -0.828452, 0.512054,
		-0.950279, 0.303447, 0.069927,
		41.458832, 29.950705, 29.536592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641666, 29.076685, 29.447552>,  <42.124027, 29.738291, 29.487644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641666, 29.076685, 29.447552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.402866, 29.388680, 29.372490>,  <41.259586, 29.575876, 29.327454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.402866, 29.388680, 29.372490>,  <41.641666, 29.076685, 29.447552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402866, 29.388680, 29.372490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380472, -0.481211, -0.789732,
		-0.706281, -0.400073, 0.584046,
		-0.597000, 0.779986, -0.187653,
		41.223766, 29.622675, 29.316195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032104, 28.742130, 29.098408>,  <41.641666, 29.076685, 29.447552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032104, 28.742130, 29.098408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.016262, 29.129286, 28.999111>,  <41.006756, 29.361580, 28.939533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.016262, 29.129286, 28.999111>,  <41.032104, 28.742130, 29.098408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016262, 29.129286, 28.999111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351530, -0.246049, -0.903264,
		-0.935339, 0.051493, 0.349986,
		-0.039602, 0.967888, -0.248241,
		41.004383, 29.419653, 28.924639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.286785, 28.892981, 28.824646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.571564, 29.139099, 28.689270>,  <40.742432, 29.286770, 28.608044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.571564, 29.139099, 28.689270>,  <40.286785, 28.892981, 28.824646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571564, 29.139099, 28.689270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177922, -0.308172, -0.934545,
		-0.679318, 0.725564, -0.109928,
		0.711949, 0.615295, -0.338441,
		40.785149, 29.323687, 28.587738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008778, 29.141388, 28.266527>,  <40.286785, 28.892981, 28.824646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008778, 29.141388, 28.266527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.387161, 29.253719, 28.201660>,  <40.614193, 29.321119, 28.162741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.387161, 29.253719, 28.201660>,  <40.008778, 29.141388, 28.266527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387161, 29.253719, 28.201660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076146, -0.293734, -0.952850,
		-0.315222, 0.913704, -0.256476,
		0.945958, 0.280830, -0.162167,
		40.670948, 29.337969, 28.153009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957623, 29.493298, 27.679779>,  <40.008778, 29.141388, 28.266527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957623, 29.493298, 27.679779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.339592, 29.375126, 27.691378>,  <40.568775, 29.304222, 27.698338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.339592, 29.375126, 27.691378>,  <39.957623, 29.493298, 27.679779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339592, 29.375126, 27.691378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028770, -0.189332, -0.981492,
		0.295452, 0.936416, -0.189297,
		0.954924, -0.295430, 0.028998,
		40.626068, 29.286497, 27.700077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250065, 29.811010, 27.040791>,  <39.957623, 29.493298, 27.679779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250065, 29.811010, 27.040791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.494900, 29.516535, 27.156288>,  <40.641800, 29.339849, 27.225588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.494900, 29.516535, 27.156288>,  <40.250065, 29.811010, 27.040791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494900, 29.516535, 27.156288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135551, -0.262057, -0.955485,
		0.779086, 0.623981, -0.060611,
		0.612088, -0.736189, 0.288746,
		40.678528, 29.295677, 27.242912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893436, 29.904938, 26.684093>,  <40.250065, 29.811010, 27.040791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893436, 29.904938, 26.684093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.904694, 29.518476, 26.786669>,  <40.911446, 29.286600, 26.848213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.904694, 29.518476, 26.786669>,  <40.893436, 29.904938, 26.684093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904694, 29.518476, 26.786669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204312, -0.245566, -0.947605,
		0.978501, 0.079058, 0.190486,
		0.028139, -0.966151, 0.256439,
		40.913136, 29.228632, 26.863600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515427, 29.670481, 26.522919>,  <40.893436, 29.904938, 26.684093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515427, 29.670481, 26.522919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.283367, 29.344852, 26.533649>,  <41.144131, 29.149475, 26.540089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.283367, 29.344852, 26.533649>,  <41.515427, 29.670481, 26.522919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283367, 29.344852, 26.533649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294436, -0.240310, -0.924964,
		0.759433, -0.528715, 0.379107,
		-0.580146, -0.814071, 0.026827,
		41.109322, 29.100632, 26.541697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790546, 29.228371, 26.002569>,  <41.515427, 29.670481, 26.522919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790546, 29.228371, 26.002569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.448856, 29.033159, 26.074266>,  <41.243843, 28.916033, 26.117285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.448856, 29.033159, 26.074266>,  <41.790546, 29.228371, 26.002569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448856, 29.033159, 26.074266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049303, -0.419250, -0.906531,
		0.517561, -0.765544, 0.382194,
		-0.854225, -0.488029, 0.179244,
		41.192589, 28.886751, 26.128040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879265, 28.629332, 25.732443>,  <41.790546, 29.228371, 26.002569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879265, 28.629332, 25.732443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.479832, 28.650473, 25.730230>,  <41.240170, 28.663157, 25.728903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.479832, 28.650473, 25.730230>,  <41.879265, 28.629332, 25.732443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479832, 28.650473, 25.730230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014244, -0.366478, -0.930318,
		-0.051195, -0.928925, 0.366713,
		-0.998587, 0.052851, -0.005530,
		41.180256, 28.666328, 25.728571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651901, 27.942871, 25.394682>,  <41.879265, 28.629332, 25.732443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651901, 27.942871, 25.394682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.334934, 28.186253, 25.377428>,  <41.144756, 28.332281, 25.367077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.334934, 28.186253, 25.377428>,  <41.651901, 27.942871, 25.394682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334934, 28.186253, 25.377428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272430, -0.416290, -0.867459,
		-0.545767, -0.675635, 0.495636,
		-0.792414, 0.608457, -0.043134,
		41.097210, 28.368790, 25.364489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138065, 27.540781, 25.355530>,  <41.651901, 27.942871, 25.394682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138065, 27.540781, 25.355530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.016727, 27.894575, 25.213730>,  <40.943924, 28.106852, 25.128651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.016727, 27.894575, 25.213730>,  <41.138065, 27.540781, 25.355530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016727, 27.894575, 25.213730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238662, -0.430695, -0.870369,
		-0.922510, -0.179414, 0.341741,
		-0.303343, 0.884484, -0.354500,
		40.925724, 28.159920, 25.107380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427094, 27.483942, 25.057295>,  <41.138065, 27.540781, 25.355530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427094, 27.483942, 25.057295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.560020, 27.828447, 24.903524>,  <40.639778, 28.035151, 24.811262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.560020, 27.828447, 24.903524>,  <40.427094, 27.483942, 25.057295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560020, 27.828447, 24.903524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129656, -0.362007, -0.923115,
		-0.934212, 0.356613, -0.008634,
		0.332321, 0.861265, -0.384428,
		40.659718, 28.086826, 24.788197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880287, 27.702370, 24.470121>,  <40.427094, 27.483942, 25.057295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880287, 27.702370, 24.470121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.234570, 27.863657, 24.378088>,  <40.447140, 27.960430, 24.322868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.234570, 27.863657, 24.378088>,  <39.880287, 27.702370, 24.470121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234570, 27.863657, 24.378088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057167, -0.397111, -0.915989,
		-0.460712, 0.824450, -0.328673,
		0.885706, 0.403218, -0.230085,
		40.500282, 27.984623, 24.309063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915718, 27.863609, 23.793743>,  <39.880287, 27.702370, 24.470121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915718, 27.863609, 23.793743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.311489, 27.909300, 23.829483>,  <40.548950, 27.936714, 23.850927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.311489, 27.909300, 23.829483>,  <39.915718, 27.863609, 23.793743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311489, 27.909300, 23.829483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120342, -0.302889, -0.945397,
		-0.080926, 0.946155, -0.313434,
		0.989428, 0.114227, 0.089351,
		40.608318, 27.943567, 23.856289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074165, 28.273968, 23.154978>,  <39.915718, 27.863609, 23.793743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074165, 28.273968, 23.154978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.395615, 28.079081, 23.291685>,  <40.588486, 27.962149, 23.373709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.395615, 28.079081, 23.291685>,  <40.074165, 28.273968, 23.154978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395615, 28.079081, 23.291685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275107, -0.205110, -0.939279,
		0.527734, 0.848851, -0.030794,
		0.803625, -0.487218, 0.341769,
		40.636703, 27.932915, 23.394217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655140, 28.548000, 22.736973>,  <40.074165, 28.273968, 23.154978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655140, 28.548000, 22.736973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.739773, 28.189169, 22.892143>,  <40.790550, 27.973871, 22.985245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.739773, 28.189169, 22.892143>,  <40.655140, 28.548000, 22.736973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739773, 28.189169, 22.892143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302593, -0.317286, -0.898759,
		0.929340, 0.307541, 0.204319,
		0.211578, -0.897077, 0.387927,
		40.803246, 27.920046, 23.008522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289539, 28.435652, 22.460484>,  <40.655140, 28.548000, 22.736973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289539, 28.435652, 22.460484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.169098, 28.072536, 22.577278>,  <41.096832, 27.854668, 22.647356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.169098, 28.072536, 22.577278>,  <41.289539, 28.435652, 22.460484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169098, 28.072536, 22.577278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268294, -0.374476, -0.887573,
		0.915071, -0.188912, 0.356310,
		-0.301103, -0.907788, 0.291988,
		41.078766, 27.800200, 22.664875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771538, 27.955572, 22.482378>,  <41.289539, 28.435652, 22.460484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771538, 27.955572, 22.482378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.438141, 27.739231, 22.437172>,  <41.238102, 27.609426, 22.410049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.438141, 27.739231, 22.437172>,  <41.771538, 27.955572, 22.482378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438141, 27.739231, 22.437172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396847, -0.443667, -0.803537,
		0.384453, -0.714591, 0.584428,
		-0.833492, -0.540850, -0.113014,
		41.188095, 27.576977, 22.403267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987743, 27.452456, 22.175831>,  <41.771538, 27.955572, 22.482378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987743, 27.452456, 22.175831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.597218, 27.374393, 22.138460>,  <41.362904, 27.327557, 22.116037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.597218, 27.374393, 22.138460>,  <41.987743, 27.452456, 22.175831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597218, 27.374393, 22.138460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176881, -0.471230, -0.864092,
		0.124606, -0.860149, 0.494587,
		-0.976313, -0.195154, -0.093425,
		41.304325, 27.315847, 22.110432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943699, 26.792435, 21.808956>,  <41.987743, 27.452456, 22.175831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943699, 26.792435, 21.808956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.580517, 26.930794, 21.714317>,  <41.362610, 27.013809, 21.657534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.580517, 26.930794, 21.714317>,  <41.943699, 26.792435, 21.808956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580517, 26.930794, 21.714317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079870, -0.411395, -0.907951,
		-0.411395, -0.843272, 0.345899,
		0.907951, -0.345899, 0.236598,
		41.308132, 27.034563, 21.643337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510330, 26.238464, 21.565948>,  <41.943699, 26.792435, 21.808956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510330, 26.238464, 21.565948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.326412, 26.559904, 21.414782>,  <41.216061, 26.752768, 21.324081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.326412, 26.559904, 21.414782>,  <41.510330, 26.238464, 21.565948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326412, 26.559904, 21.414782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093997, -0.379136, -0.920555,
		-0.883037, -0.458787, 0.098788,
		-0.459793, 0.803598, -0.377916,
		41.188473, 26.800983, 21.301407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102116, 26.032566, 21.080339>,  <41.510330, 26.238464, 21.565948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102116, 26.032566, 21.080339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.132378, 26.418667, 20.980291>,  <41.150536, 26.650328, 20.920263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.132378, 26.418667, 20.980291>,  <41.102116, 26.032566, 21.080339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132378, 26.418667, 20.980291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349920, -0.260588, -0.899805,
		-0.933719, -0.019445, -0.357477,
		0.075657, 0.965254, -0.250121,
		41.155075, 26.708242, 20.905254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857964, 26.086046, 20.382603>,  <41.102116, 26.032566, 21.080339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857964, 26.086046, 20.382603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.089554, 26.404684, 20.452141>,  <41.228508, 26.595867, 20.493864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.089554, 26.404684, 20.452141>,  <40.857964, 26.086046, 20.382603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089554, 26.404684, 20.452141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335784, -0.038661, -0.941145,
		-0.742990, 0.603277, -0.289867,
		0.578978, 0.796594, 0.173846,
		41.263248, 26.643661, 20.504295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623226, 26.659760, 20.058491>,  <40.857964, 26.086046, 20.382603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623226, 26.659760, 20.058491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.018475, 26.630981, 20.112804>,  <41.255623, 26.613714, 20.145393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.018475, 26.630981, 20.112804>,  <40.623226, 26.659760, 20.058491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018475, 26.630981, 20.112804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122760, -0.161949, -0.979134,
		0.092434, 0.984173, -0.151193,
		0.988123, -0.071945, 0.135786,
		41.314911, 26.609398, 20.153540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178917, 27.252245, 20.138596>,  <40.623226, 26.659760, 20.058491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178917, 27.252245, 20.138596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.832611, 27.442167, 20.201853>,  <39.624828, 27.556120, 20.239807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.832611, 27.442167, 20.201853>,  <40.178917, 27.252245, 20.138596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832611, 27.442167, 20.201853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058507, -0.217805, 0.974237,
		0.497018, 0.852713, 0.160788,
		-0.865765, 0.474806, 0.158143,
		39.572880, 27.584610, 20.249296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667767, 27.599163, 19.765251>,  <40.178917, 27.252245, 20.138596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667767, 27.599163, 19.765251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.280937, 27.636307, 19.670465>,  <39.048840, 27.658592, 19.613594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.280937, 27.636307, 19.670465>,  <39.667767, 27.599163, 19.765251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280937, 27.636307, 19.670465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155932, 0.519669, 0.840017,
		0.201146, 0.849306, -0.488077,
		-0.967071, 0.092859, -0.236963,
		38.990814, 27.664164, 19.599377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456161, 28.323778, 19.845583>,  <39.667767, 27.599163, 19.765251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456161, 28.323778, 19.845583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.121159, 28.107084, 19.874170>,  <38.920158, 27.977068, 19.891323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.121159, 28.107084, 19.874170>,  <39.456161, 28.323778, 19.845583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121159, 28.107084, 19.874170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277524, 0.534372, 0.798390,
		-0.470705, 0.648823, -0.597884,
		-0.837506, -0.541734, 0.071468,
		38.869907, 27.944565, 19.895611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967186, 28.822006, 20.013760>,  <39.456161, 28.323778, 19.845583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967186, 28.822006, 20.013760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.765488, 28.491344, 20.113663>,  <38.644470, 28.292948, 20.173605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.765488, 28.491344, 20.113663>,  <38.967186, 28.822006, 20.013760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765488, 28.491344, 20.113663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448647, 0.497898, 0.742168,
		-0.737872, 0.262180, -0.621938,
		-0.504243, -0.826656, 0.249759,
		38.614216, 28.243347, 20.188591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380463, 29.068537, 20.149435>,  <38.967186, 28.822006, 20.013760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380463, 29.068537, 20.149435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.363369, 28.710800, 20.327570>,  <38.353115, 28.496159, 20.434450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.363369, 28.710800, 20.327570>,  <38.380463, 29.068537, 20.149435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363369, 28.710800, 20.327570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363736, 0.429078, 0.826794,
		-0.930521, -0.126656, -0.343640,
		-0.042730, -0.894343, 0.445336,
		38.350552, 28.442497, 20.461170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804745, 29.051888, 20.478294>,  <38.380463, 29.068537, 20.149435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804745, 29.051888, 20.478294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.003307, 28.756886, 20.661451>,  <38.122444, 28.579884, 20.771347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.003307, 28.756886, 20.661451>,  <37.804745, 29.051888, 20.478294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003307, 28.756886, 20.661451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303418, 0.346799, 0.887506,
		-0.813339, -0.579495, -0.051620,
		0.496404, -0.737506, 0.457895,
		38.152229, 28.535633, 20.798820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290405, 28.782200, 20.938318>,  <37.804745, 29.051888, 20.478294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290405, 28.782200, 20.938318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656937, 28.677286, 21.059349>,  <37.876854, 28.614338, 21.131968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656937, 28.677286, 21.059349>,  <37.290405, 28.782200, 20.938318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656937, 28.677286, 21.059349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226665, 0.283179, 0.931897,
		-0.330106, -0.922506, 0.200033,
		0.916326, -0.262284, 0.302578,
		37.931835, 28.598600, 21.150122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180077, 28.485432, 21.553141>,  <37.290405, 28.782200, 20.938318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180077, 28.485432, 21.553141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.573101, 28.557589, 21.571171>,  <37.808914, 28.600882, 21.581989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.573101, 28.557589, 21.571171>,  <37.180077, 28.485432, 21.553141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573101, 28.557589, 21.571171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085860, 0.225143, 0.970535,
		0.164923, -0.957482, 0.236705,
		0.982562, 0.180387, 0.045078,
		37.867870, 28.611706, 21.584694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505501, 28.064455, 22.161146>,  <37.180077, 28.485432, 21.553141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505501, 28.064455, 22.161146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.749084, 28.367517, 22.067232>,  <37.895233, 28.549355, 22.010883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.749084, 28.367517, 22.067232>,  <37.505501, 28.064455, 22.161146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749084, 28.367517, 22.067232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070406, 0.346457, 0.935420,
		0.790070, -0.553103, 0.264322,
		0.608960, 0.757658, -0.234784,
		37.931774, 28.594814, 21.996798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055355, 28.066872, 22.708963>,  <37.505501, 28.064455, 22.161146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055355, 28.066872, 22.708963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.109188, 28.436188, 22.565063>,  <38.141487, 28.657778, 22.478724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.109188, 28.436188, 22.565063>,  <38.055355, 28.066872, 22.708963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109188, 28.436188, 22.565063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095049, 0.349349, 0.932159,
		0.986334, -0.159644, -0.040743,
		0.134580, 0.923292, -0.359749,
		38.149563, 28.713175, 22.457138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805721, 28.348989, 22.939713>,  <38.055355, 28.066872, 22.708963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805721, 28.348989, 22.939713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.562622, 28.655237, 22.855354>,  <38.416763, 28.838985, 22.804739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.562622, 28.655237, 22.855354>,  <38.805721, 28.348989, 22.939713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562622, 28.655237, 22.855354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123310, 0.353323, 0.927339,
		0.784501, 0.537579, -0.309138,
		-0.607744, 0.765618, -0.210893,
		38.380299, 28.884922, 22.792086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193214, 28.841812, 23.088621>,  <38.805721, 28.348989, 22.939713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193214, 28.841812, 23.088621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.822639, 28.987534, 23.126554>,  <38.600292, 29.074966, 23.149315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.822639, 28.987534, 23.126554>,  <39.193214, 28.841812, 23.088621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822639, 28.987534, 23.126554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220590, 0.321239, 0.920948,
		0.305042, 0.874121, -0.377970,
		-0.926439, 0.364304, 0.094832,
		38.544708, 29.096825, 23.155005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248760, 29.615978, 23.244528>,  <39.193214, 28.841812, 23.088621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248760, 29.615978, 23.244528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869228, 29.533398, 23.340111>,  <38.641510, 29.483850, 23.397461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869228, 29.533398, 23.340111>,  <39.248760, 29.615978, 23.244528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869228, 29.533398, 23.340111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140826, 0.400673, 0.905334,
		-0.282650, 0.892659, -0.351097,
		-0.948829, -0.206449, 0.238960,
		38.584579, 29.471462, 23.411798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100979, 30.196362, 23.597958>,  <39.248760, 29.615978, 23.244528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100979, 30.196362, 23.597958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.848583, 29.911497, 23.721039>,  <38.697147, 29.740578, 23.794888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.848583, 29.911497, 23.721039>,  <39.100979, 30.196362, 23.597958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848583, 29.911497, 23.721039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175485, 0.255325, 0.950797,
		-0.755685, 0.653937, -0.036133,
		-0.630987, -0.712162, 0.307701,
		38.659286, 29.697849, 23.813349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623474, 30.558372, 24.090519>,  <39.100979, 30.196362, 23.597958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623474, 30.558372, 24.090519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.537521, 30.179161, 24.184387>,  <38.485950, 29.951635, 24.240709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.537521, 30.179161, 24.184387>,  <38.623474, 30.558372, 24.090519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537521, 30.179161, 24.184387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033794, 0.247359, 0.968334,
		-0.976056, 0.200143, -0.085190,
		-0.214878, -0.948028, 0.234673,
		38.473057, 29.894753, 24.254789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329788, 30.558981, 24.727985>,  <38.623474, 30.558372, 24.090519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329788, 30.558981, 24.727985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.386059, 30.163843, 24.701536>,  <38.419819, 29.926760, 24.685667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.386059, 30.163843, 24.701536>,  <38.329788, 30.558981, 24.727985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386059, 30.163843, 24.701536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175350, -0.040874, 0.983657,
		-0.974404, -0.149968, 0.167469,
		0.140672, -0.987845, -0.066125,
		38.428261, 29.867489, 24.681698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786236, 30.206863, 25.097828>,  <38.329788, 30.558981, 24.727985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786236, 30.206863, 25.097828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.128796, 30.000401, 25.102943>,  <38.334332, 29.876522, 25.106012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.128796, 30.000401, 25.102943>,  <37.786236, 30.206863, 25.097828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128796, 30.000401, 25.102943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091714, -0.127702, 0.987563,
		-0.508105, -0.846920, -0.156703,
		0.856398, -0.516158, 0.012788,
		38.385715, 29.845552, 25.106779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678482, 29.562855, 25.439440>,  <37.786236, 30.206863, 25.097828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678482, 29.562855, 25.439440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.067059, 29.651491, 25.473381>,  <38.300205, 29.704674, 25.493746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.067059, 29.651491, 25.473381>,  <37.678482, 29.562855, 25.439440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067059, 29.651491, 25.473381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073586, -0.058630, 0.995564,
		0.225585, -0.973375, -0.040649,
		0.971440, 0.221593, 0.084853,
		38.358490, 29.717970, 25.498837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914047, 28.943213, 25.816910>,  <37.678482, 29.562855, 25.439440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914047, 28.943213, 25.816910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.161274, 29.257225, 25.833506>,  <38.309608, 29.445633, 25.843464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.161274, 29.257225, 25.833506>,  <37.914047, 28.943213, 25.816910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161274, 29.257225, 25.833506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016868, -0.039521, 0.999076,
		0.785946, -0.618194, -0.011184,
		0.618065, 0.785031, 0.041489,
		38.346695, 29.492735, 25.845953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403858, 28.779879, 26.369694>,  <37.914047, 28.943213, 25.816910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403858, 28.779879, 26.369694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.430412, 29.175678, 26.318333>,  <38.446346, 29.413158, 26.287516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.430412, 29.175678, 26.318333>,  <38.403858, 28.779879, 26.369694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430412, 29.175678, 26.318333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236638, 0.109402, 0.965419,
		0.969327, -0.094477, -0.226890,
		0.066388, 0.989497, -0.128403,
		38.450329, 29.472528, 26.279812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086040, 28.367754, 26.968098>,  <38.403858, 28.779879, 26.369694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086040, 28.367754, 26.968098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.166466, 28.195427, 27.320000>,  <38.214722, 28.092030, 27.531141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.166466, 28.195427, 27.320000>,  <38.086040, 28.367754, 26.968098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166466, 28.195427, 27.320000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435931, 0.843616, 0.313491,
		-0.877232, 0.320479, 0.357430,
		0.201066, -0.430819, 0.879754,
		38.226788, 28.066181, 27.583925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.910725, 30.329008, 31.404865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.683372, 30.579599, 31.191525>,  <41.546959, 30.729954, 31.063520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.683372, 30.579599, 31.191525>,  <41.910725, 30.329008, 31.404865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683372, 30.579599, 31.191525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119608, 0.704276, 0.699778,
		0.814023, 0.333949, -0.475232,
		-0.568385, 0.626476, -0.533354,
		41.512856, 30.767542, 31.031519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192078, 30.941811, 31.442287>,  <41.910725, 30.329008, 31.404865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192078, 30.941811, 31.442287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.828674, 31.048920, 31.313971>,  <41.610634, 31.113186, 31.236980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.828674, 31.048920, 31.313971>,  <42.192078, 30.941811, 31.442287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828674, 31.048920, 31.313971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014035, 0.747706, 0.663882,
		0.417629, 0.607645, -0.675540,
		-0.908509, 0.267775, -0.320792,
		41.556122, 31.129251, 31.217733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205444, 31.743452, 31.376663>,  <42.192078, 30.941811, 31.442287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205444, 31.743452, 31.376663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.839863, 31.590670, 31.431505>,  <41.620514, 31.499001, 31.464411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.839863, 31.590670, 31.431505>,  <42.205444, 31.743452, 31.376663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839863, 31.590670, 31.431505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227826, 0.762508, 0.605538,
		-0.335835, 0.522197, -0.783916,
		-0.913953, -0.381958, 0.137107,
		41.565678, 31.476082, 31.472637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856018, 32.368530, 31.473913>,  <42.205444, 31.743452, 31.376663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856018, 32.368530, 31.473913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.641582, 32.056934, 31.604015>,  <41.512920, 31.869978, 31.682077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.641582, 32.056934, 31.604015>,  <41.856018, 32.368530, 31.473913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641582, 32.056934, 31.604015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278028, 0.526733, 0.803276,
		-0.797065, 0.340194, -0.498954,
		-0.536086, -0.778986, 0.325257,
		41.480755, 31.823238, 31.701593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287689, 32.685707, 31.659159>,  <41.856018, 32.368530, 31.473913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287689, 32.685707, 31.659159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.269817, 32.344269, 31.866766>,  <41.259094, 32.139408, 31.991331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.269817, 32.344269, 31.866766>,  <41.287689, 32.685707, 31.659159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269817, 32.344269, 31.866766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325685, 0.503600, 0.800198,
		-0.944422, -0.133285, -0.300503,
		-0.044679, -0.853594, 0.519020,
		41.256413, 32.088192, 32.022472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558525, 32.566986, 31.975651>,  <41.287689, 32.685707, 31.659159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558525, 32.566986, 31.975651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.840847, 32.377460, 32.186306>,  <41.010239, 32.263744, 32.312698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.840847, 32.377460, 32.186306>,  <40.558525, 32.566986, 31.975651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840847, 32.377460, 32.186306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297831, 0.476048, 0.827451,
		-0.642760, -0.740865, 0.194880,
		0.705802, -0.473811, 0.526637,
		41.052589, 32.235317, 32.344296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232677, 32.394176, 32.579967>,  <40.558525, 32.566986, 31.975651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232677, 32.394176, 32.579967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.619518, 32.397114, 32.681679>,  <40.851624, 32.398876, 32.742706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.619518, 32.397114, 32.681679>,  <40.232677, 32.394176, 32.579967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619518, 32.397114, 32.681679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234851, 0.409905, 0.881375,
		-0.097758, -0.912099, 0.398145,
		0.967103, 0.007343, 0.254279,
		40.909649, 32.399315, 32.757961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177464, 32.424191, 33.288757>,  <40.232677, 32.394176, 32.579967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177464, 32.424191, 33.288757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.569496, 32.488991, 33.242794>,  <40.804714, 32.527870, 33.215218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.569496, 32.488991, 33.242794>,  <40.177464, 32.424191, 33.288757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569496, 32.488991, 33.242794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040843, 0.401784, 0.914823,
		0.194373, -0.901290, 0.387162,
		0.980077, 0.162004, -0.114908,
		40.863518, 32.537594, 33.208321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451229, 32.246864, 33.910217>,  <40.177464, 32.424191, 33.288757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451229, 32.246864, 33.910217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.752754, 32.449150, 33.742397>,  <40.933670, 32.570522, 33.641705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.752754, 32.449150, 33.742397>,  <40.451229, 32.246864, 33.910217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752754, 32.449150, 33.742397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300196, 0.302918, 0.904501,
		0.584512, -0.807768, 0.076527,
		0.753809, 0.505719, -0.419548,
		40.978897, 32.600864, 33.616531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996845, 32.190083, 34.396938>,  <40.451229, 32.246864, 33.910217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996845, 32.190083, 34.396938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.046448, 32.512081, 34.164867>,  <41.076210, 32.705280, 34.025623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.046448, 32.512081, 34.164867>,  <40.996845, 32.190083, 34.396938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046448, 32.512081, 34.164867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232322, 0.544886, 0.805683,
		0.964702, -0.234695, -0.119451,
		0.124003, 0.804995, -0.580178,
		41.083649, 32.753578, 33.990814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618683, 32.521248, 34.641163>,  <40.996845, 32.190083, 34.396938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618683, 32.521248, 34.641163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.411934, 32.792652, 34.432369>,  <41.287884, 32.955494, 34.307095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.411934, 32.792652, 34.432369>,  <41.618683, 32.521248, 34.641163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411934, 32.792652, 34.432369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126370, 0.663544, 0.737387,
		0.846683, 0.315174, -0.428712,
		-0.516874, 0.678509, -0.521982,
		41.256870, 32.996204, 34.275776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023159, 33.118202, 34.751652>,  <41.618683, 32.521248, 34.641163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023159, 33.118202, 34.751652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.654385, 33.231007, 34.645443>,  <41.433121, 33.298691, 34.581718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.654385, 33.231007, 34.645443>,  <42.023159, 33.118202, 34.751652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654385, 33.231007, 34.645443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000105, 0.685680, 0.727903,
		0.387340, 0.671053, -0.632183,
		-0.921937, 0.282012, -0.265521,
		41.377804, 33.315609, 34.565788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000572, 33.802448, 34.665852>,  <42.023159, 33.118202, 34.751652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000572, 33.802448, 34.665852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.634171, 33.685085, 34.775288>,  <41.414330, 33.614670, 34.840950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.634171, 33.685085, 34.775288>,  <42.000572, 33.802448, 34.665852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634171, 33.685085, 34.775288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005950, 0.671965, 0.740559,
		-0.401122, 0.679983, -0.613778,
		-0.916005, -0.293403, 0.273586,
		41.359367, 33.597065, 34.857365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562290, 34.422729, 34.787682>,  <42.000572, 33.802448, 34.665852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562290, 34.422729, 34.787682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.347721, 34.144386, 34.978691>,  <41.218979, 33.977379, 35.093296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.347721, 34.144386, 34.978691>,  <41.562290, 34.422729, 34.787682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347721, 34.144386, 34.978691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294797, 0.684678, 0.666566,
		-0.790788, 0.216789, -0.572414,
		-0.536423, -0.695858, 0.477526,
		41.186794, 33.935627, 35.121948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911819, 34.769955, 34.688995>,  <41.562290, 34.422729, 34.787682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911819, 34.769955, 34.688995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.997032, 35.153011, 34.766495>,  <41.048161, 35.382847, 34.812996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.997032, 35.153011, 34.766495>,  <40.911819, 34.769955, 34.688995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997032, 35.153011, 34.766495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194562, 0.152750, -0.968924,
		-0.957477, 0.244110, -0.153779,
		0.213034, 0.957642, 0.193749,
		41.060944, 35.440304, 34.824619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343021, 35.111656, 34.323433>,  <40.911819, 34.769955, 34.688995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343021, 35.111656, 34.323433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.638802, 35.376320, 34.373093>,  <40.816269, 35.535118, 34.402889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.638802, 35.376320, 34.373093>,  <40.343021, 35.111656, 34.323433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638802, 35.376320, 34.373093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104291, 0.069595, -0.992109,
		-0.665082, 0.746564, -0.017544,
		0.739452, 0.661664, 0.124146,
		40.860638, 35.574818, 34.410336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200203, 35.740925, 33.912693>,  <40.343021, 35.111656, 34.323433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200203, 35.740925, 33.912693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.594540, 35.712742, 33.973557>,  <40.831142, 35.695831, 34.010075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.594540, 35.712742, 33.973557>,  <40.200203, 35.740925, 33.912693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594540, 35.712742, 33.973557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156749, 0.064996, -0.985497,
		0.059542, 0.995395, 0.075120,
		0.985842, -0.070454, 0.152157,
		40.890293, 35.691605, 34.019203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465263, 36.113991, 33.442871>,  <40.200203, 35.740925, 33.912693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465263, 36.113991, 33.442871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.806870, 35.939079, 33.555614>,  <41.011833, 35.834133, 33.623260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.806870, 35.939079, 33.555614>,  <40.465263, 36.113991, 33.442871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806870, 35.939079, 33.555614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244573, -0.140722, -0.959365,
		0.459176, 0.888247, -0.013231,
		0.854015, -0.437282, 0.281858,
		41.063072, 35.807896, 33.640171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012596, 36.456215, 33.005367>,  <40.465263, 36.113991, 33.442871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012596, 36.456215, 33.005367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.145702, 36.103878, 33.140057>,  <41.225567, 35.892475, 33.220871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.145702, 36.103878, 33.140057>,  <41.012596, 36.456215, 33.005367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145702, 36.103878, 33.140057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393745, -0.194671, -0.898369,
		0.856875, 0.431525, 0.282050,
		0.332762, -0.880846, 0.336719,
		41.245529, 35.839622, 33.241074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659092, 36.398640, 32.716118>,  <41.012596, 36.456215, 33.005367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659092, 36.398640, 32.716118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.569748, 36.018311, 32.801945>,  <41.516140, 35.790112, 32.853439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.569748, 36.018311, 32.801945>,  <41.659092, 36.398640, 32.716118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569748, 36.018311, 32.801945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348672, -0.283498, -0.893340,
		0.910241, -0.124723, 0.394849,
		-0.223359, -0.950828, 0.214564,
		41.502739, 35.733063, 32.866314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268517, 35.966251, 32.491566>,  <41.659092, 36.398640, 32.716118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268517, 35.966251, 32.491566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.953514, 35.722782, 32.530243>,  <41.764511, 35.576702, 32.553452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.953514, 35.722782, 32.530243>,  <42.268517, 35.966251, 32.491566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953514, 35.722782, 32.530243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190404, -0.389505, -0.901129,
		0.586155, -0.691234, 0.422632,
		-0.787508, -0.608672, 0.096696,
		41.717262, 35.540180, 32.559250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486534, 35.336529, 32.087196>,  <42.268517, 35.966251, 32.491566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486534, 35.336529, 32.087196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.098972, 35.264568, 32.155155>,  <41.866436, 35.221390, 32.195930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.098972, 35.264568, 32.155155>,  <42.486534, 35.336529, 32.087196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098972, 35.264568, 32.155155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074605, -0.442264, -0.893777,
		0.235934, -0.878656, 0.415088,
		-0.968901, -0.179905, 0.169897,
		41.808304, 35.210598, 32.206123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407501, 34.624031, 32.023972>,  <42.486534, 35.336529, 32.087196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407501, 34.624031, 32.023972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.042068, 34.769798, 31.951790>,  <41.822807, 34.857258, 31.908482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.042068, 34.769798, 31.951790>,  <42.407501, 34.624031, 32.023972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042068, 34.769798, 31.951790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016446, -0.476503, -0.879019,
		-0.406315, -0.800091, 0.441319,
		-0.913585, 0.364416, -0.180452,
		41.767994, 34.879124, 31.897654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925400, 34.104168, 31.875381>,  <42.407501, 34.624031, 32.023972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925400, 34.104168, 31.875381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.746075, 34.424625, 31.716797>,  <41.638477, 34.616901, 31.621647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.746075, 34.424625, 31.716797>,  <41.925400, 34.104168, 31.875381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746075, 34.424625, 31.716797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016712, -0.450965, -0.892385,
		-0.893719, -0.393445, 0.215564,
		-0.448317, 0.801144, -0.396460,
		41.611580, 34.664970, 31.597858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464462, 33.806126, 31.466024>,  <41.925400, 34.104168, 31.875381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464462, 33.806126, 31.466024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.497635, 34.178123, 31.322788>,  <41.517536, 34.401321, 31.236847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.497635, 34.178123, 31.322788>,  <41.464462, 33.806126, 31.466024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497635, 34.178123, 31.322788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024224, -0.361101, -0.932212,
		-0.996261, 0.068632, -0.052474,
		0.082928, 0.929998, -0.358089,
		41.522514, 34.457123, 31.215363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930607, 33.878136, 30.937069>,  <41.464462, 33.806126, 31.466024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930607, 33.878136, 30.937069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.245174, 34.116318, 30.871357>,  <41.433914, 34.259228, 30.831930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.245174, 34.116318, 30.871357>,  <40.930607, 33.878136, 30.937069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245174, 34.116318, 30.871357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033028, -0.306106, -0.951424,
		-0.616816, 0.742788, -0.260393,
		0.786415, 0.595454, -0.164278,
		41.481098, 34.294952, 30.822073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767334, 33.947632, 30.262156>,  <40.930607, 33.878136, 30.937069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767334, 33.947632, 30.262156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.137592, 34.087833, 30.319197>,  <41.359745, 34.171955, 30.353422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.137592, 34.087833, 30.319197>,  <40.767334, 33.947632, 30.262156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137592, 34.087833, 30.319197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208745, -0.158656, -0.965015,
		-0.315614, 0.923026, -0.220024,
		0.925642, 0.350501, 0.142602,
		41.415283, 34.192986, 30.361977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834911, 34.307671, 29.687191>,  <40.767334, 33.947632, 30.262156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834911, 34.307671, 29.687191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.212322, 34.243622, 29.803205>,  <41.438766, 34.205193, 29.872814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.212322, 34.243622, 29.803205>,  <40.834911, 34.307671, 29.687191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212322, 34.243622, 29.803205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213831, -0.374362, -0.902291,
		0.253056, 0.913353, -0.318981,
		0.943525, -0.160122, 0.290038,
		41.495380, 34.195583, 29.890217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572449, 35.001682, 29.629385>,  <40.834911, 34.307671, 29.687191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572449, 35.001682, 29.629385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.348618, 35.224453, 29.383881>,  <40.214317, 35.358116, 29.236578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.348618, 35.224453, 29.383881>,  <40.572449, 35.001682, 29.629385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348618, 35.224453, 29.383881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561989, 0.289312, 0.774898,
		0.609131, 0.778543, 0.151096,
		-0.559578, 0.556929, -0.613762,
		40.180744, 35.391533, 29.199753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595795, 35.728382, 29.823139>,  <40.572449, 35.001682, 29.629385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595795, 35.728382, 29.823139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.250565, 35.649261, 29.637249>,  <40.043427, 35.601791, 29.525715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.250565, 35.649261, 29.637249>,  <40.595795, 35.728382, 29.823139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250565, 35.649261, 29.637249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502607, 0.427109, 0.751641,
		0.049815, 0.882300, -0.468044,
		-0.863078, -0.197799, -0.464727,
		39.991642, 35.589920, 29.497831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113960, 36.377647, 29.881252>,  <40.595795, 35.728382, 29.823139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113960, 36.377647, 29.881252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.891392, 36.046009, 29.859383>,  <39.757851, 35.847027, 29.846260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.891392, 36.046009, 29.859383>,  <40.113960, 36.377647, 29.881252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891392, 36.046009, 29.859383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510446, 0.289164, 0.809833,
		-0.655623, 0.478515, -0.584108,
		-0.556420, -0.829100, -0.054674,
		39.724464, 35.797279, 29.842981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451061, 36.594753, 30.122610>,  <40.113960, 36.377647, 29.881252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451061, 36.594753, 30.122610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.396809, 36.198471, 30.118328>,  <39.364258, 35.960701, 30.115759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.396809, 36.198471, 30.118328>,  <39.451061, 36.594753, 30.122610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396809, 36.198471, 30.118328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666052, 0.083178, 0.741253,
		-0.733470, 0.107669, -0.671141,
		-0.135635, -0.990701, -0.010705,
		39.356117, 35.901260, 30.115116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742264, 36.504169, 30.047443>,  <39.451061, 36.594753, 30.122610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742264, 36.504169, 30.047443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.886387, 36.166107, 30.205376>,  <38.972862, 35.963268, 30.300135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.886387, 36.166107, 30.205376>,  <38.742264, 36.504169, 30.047443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886387, 36.166107, 30.205376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676550, 0.054645, 0.734367,
		-0.642230, -0.531718, -0.552101,
		0.360307, -0.845157, 0.394829,
		38.994480, 35.912560, 30.323824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163124, 36.125679, 30.364658>,  <38.742264, 36.504169, 30.047443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163124, 36.125679, 30.364658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.478367, 35.947784, 30.534882>,  <38.667511, 35.841049, 30.637016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.478367, 35.947784, 30.534882>,  <38.163124, 36.125679, 30.364658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478367, 35.947784, 30.534882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481665, -0.015103, 0.876225,
		-0.383259, -0.895536, -0.226115,
		0.788106, -0.444733, 0.425560,
		38.714798, 35.814365, 30.662550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965210, 35.407997, 30.696350>,  <38.163124, 36.125679, 30.364658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965210, 35.407997, 30.696350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.291817, 35.546604, 30.881054>,  <38.487782, 35.629768, 30.991877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.291817, 35.546604, 30.881054>,  <37.965210, 35.407997, 30.696350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291817, 35.546604, 30.881054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459838, -0.093242, 0.883094,
		0.349061, -0.933399, 0.083207,
		0.816521, 0.346515, 0.461759,
		38.536774, 35.650558, 31.019581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032192, 35.110119, 31.302805>,  <37.965210, 35.407997, 30.696350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032192, 35.110119, 31.302805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.333458, 35.356686, 31.394693>,  <38.514217, 35.504627, 31.449827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.333458, 35.356686, 31.394693>,  <38.032192, 35.110119, 31.302805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333458, 35.356686, 31.394693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219501, -0.093709, 0.971101,
		0.620129, -0.781825, 0.064725,
		0.753166, 0.616416, 0.229723,
		38.559406, 35.541611, 31.463610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404842, 34.774605, 31.893110>,  <38.032192, 35.110119, 31.302805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404842, 34.774605, 31.893110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.511894, 35.156559, 31.944584>,  <38.576126, 35.385735, 31.975468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.511894, 35.156559, 31.944584>,  <38.404842, 34.774605, 31.893110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511894, 35.156559, 31.944584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217813, -0.070143, 0.973467,
		0.938580, -0.288556, 0.189216,
		0.267628, 0.954890, 0.128686,
		38.592182, 35.443027, 31.983191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841759, 34.782288, 32.473942>,  <38.404842, 34.774605, 31.893110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841759, 34.782288, 32.473942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.740929, 35.167854, 32.439720>,  <38.680431, 35.399197, 32.419186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.740929, 35.167854, 32.439720>,  <38.841759, 34.782288, 32.473942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740929, 35.167854, 32.439720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095809, 0.063118, 0.993397,
		0.962954, 0.258605, 0.076442,
		-0.252073, 0.963919, -0.085556,
		38.665306, 35.457031, 32.414055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316666, 35.235756, 32.889801>,  <38.841759, 34.782288, 32.473942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316666, 35.235756, 32.889801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.959442, 35.413853, 32.863846>,  <38.745110, 35.520710, 32.848274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.959442, 35.413853, 32.863846>,  <39.316666, 35.235756, 32.889801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959442, 35.413853, 32.863846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060540, 0.261802, 0.963221,
		0.445858, 0.856280, -0.260759,
		-0.893054, 0.445246, -0.064887,
		38.691525, 35.547428, 32.844379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294876, 35.523071, 33.561073>,  <39.316666, 35.235756, 32.889801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294876, 35.523071, 33.561073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946178, 35.632591, 33.398552>,  <38.736958, 35.698303, 33.301037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946178, 35.632591, 33.398552>,  <39.294876, 35.523071, 33.561073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946178, 35.632591, 33.398552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320017, 0.309752, 0.895345,
		0.371003, 0.910541, -0.182405,
		-0.871749, 0.273803, -0.406308,
		38.684654, 35.714733, 33.276661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.054249, 35.472862, 25.964643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741257, 35.275394, 25.812843>,  <41.553463, 35.156914, 25.721764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741257, 35.275394, 25.812843>,  <42.054249, 35.472862, 25.964643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741257, 35.275394, 25.812843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574264, 0.336513, 0.746311,
		-0.240722, 0.801906, -0.546809,
		-0.782480, -0.493666, -0.379499,
		41.506512, 35.127296, 25.698994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587204, 36.020138, 26.116777>,  <42.054249, 35.472862, 25.964643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587204, 36.020138, 26.116777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389187, 35.679348, 26.048578>,  <41.270374, 35.474873, 26.007660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389187, 35.679348, 26.048578>,  <41.587204, 36.020138, 26.116777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389187, 35.679348, 26.048578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642112, 0.226543, 0.732373,
		-0.585338, 0.472037, -0.659212,
		-0.495047, -0.851974, -0.170496,
		41.240673, 35.423756, 25.997429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866871, 36.200302, 26.127892>,  <41.587204, 36.020138, 26.116777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866871, 36.200302, 26.127892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917194, 35.815845, 26.226177>,  <40.947388, 35.585171, 26.285149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917194, 35.815845, 26.226177>,  <40.866871, 36.200302, 26.127892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917194, 35.815845, 26.226177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441075, 0.167659, 0.881671,
		-0.888608, -0.219302, -0.402843,
		0.125812, -0.961143, 0.245712,
		40.954937, 35.527504, 26.299891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203167, 36.045868, 26.462408>,  <40.866871, 36.200302, 26.127892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203167, 36.045868, 26.462408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432304, 35.736191, 26.570099>,  <40.569786, 35.550385, 26.634714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432304, 35.736191, 26.570099>,  <40.203167, 36.045868, 26.462408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432304, 35.736191, 26.570099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430750, -0.004889, 0.902458,
		-0.697357, -0.632936, -0.336283,
		0.572842, -0.774189, 0.269228,
		40.604156, 35.503933, 26.650867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757404, 35.530636, 26.738985>,  <40.203167, 36.045868, 26.462408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757404, 35.530636, 26.738985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125000, 35.480774, 26.888607>,  <40.345558, 35.450855, 26.978380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125000, 35.480774, 26.888607>,  <39.757404, 35.530636, 26.738985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125000, 35.480774, 26.888607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380082, -0.027821, 0.924534,
		-0.104843, -0.991810, -0.072947,
		0.918992, -0.124657, 0.374052,
		40.400696, 35.443378, 27.000822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735336, 35.074329, 27.188475>,  <39.757404, 35.530636, 26.738985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735336, 35.074329, 27.188475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091606, 35.212074, 27.307207>,  <40.305370, 35.294720, 27.378447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091606, 35.212074, 27.307207>,  <39.735336, 35.074329, 27.188475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091606, 35.212074, 27.307207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307887, -0.023513, 0.951132,
		0.334510, -0.938544, 0.085081,
		0.890679, 0.344358, 0.296831,
		40.358810, 35.315380, 27.396255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032032, 34.628670, 27.742413>,  <39.735336, 35.074329, 27.188475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032032, 34.628670, 27.742413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231140, 34.965298, 27.826303>,  <40.350605, 35.167274, 27.876638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231140, 34.965298, 27.826303>,  <40.032032, 34.628670, 27.742413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231140, 34.965298, 27.826303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242063, -0.097400, 0.965359,
		0.832846, -0.531292, 0.155230,
		0.497769, 0.841571, 0.209725,
		40.380470, 35.217770, 27.889221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406445, 34.450287, 28.350458>,  <40.032032, 34.628670, 27.742413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406445, 34.450287, 28.350458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401588, 34.849693, 28.329258>,  <40.398674, 35.089336, 28.316538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401588, 34.849693, 28.329258>,  <40.406445, 34.450287, 28.350458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401588, 34.849693, 28.329258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465383, 0.041270, 0.884147,
		0.885026, 0.035402, 0.464193,
		-0.012143, 0.998521, -0.053001,
		40.397945, 35.149250, 28.313358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496071, 34.567326, 28.958918>,  <40.406445, 34.450287, 28.350458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496071, 34.567326, 28.958918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375427, 34.926441, 28.830540>,  <40.303040, 35.141911, 28.753513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375427, 34.926441, 28.830540>,  <40.496071, 34.567326, 28.958918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375427, 34.926441, 28.830540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512312, 0.131285, 0.848705,
		0.804093, 0.420404, 0.420351,
		-0.301613, 0.897789, -0.320943,
		40.284943, 35.195778, 28.734257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287949, 34.451984, 29.059660>,  <40.496071, 34.567326, 28.958918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287949, 34.451984, 29.059660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516659, 34.261421, 29.326824>,  <41.653885, 34.147083, 29.487123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516659, 34.261421, 29.326824>,  <41.287949, 34.451984, 29.059660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516659, 34.261421, 29.326824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471456, -0.475467, -0.742738,
		0.671415, 0.739574, -0.047258,
		0.571779, -0.476405, 0.667912,
		41.688194, 34.118500, 29.527199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997971, 34.520321, 28.843750>,  <41.287949, 34.451984, 29.059660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997971, 34.520321, 28.843750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949177, 34.194473, 29.070562>,  <41.919899, 33.998966, 29.206650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949177, 34.194473, 29.070562>,  <41.997971, 34.520321, 28.843750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949177, 34.194473, 29.070562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187723, -0.579921, -0.792750,
		0.974618, 0.009741, 0.223664,
		-0.121985, -0.814615, 0.567029,
		41.912582, 33.950089, 29.240671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670513, 34.148144, 28.820488>,  <41.997971, 34.520321, 28.843750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670513, 34.148144, 28.820488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390636, 33.880733, 28.921289>,  <42.222710, 33.720287, 28.981771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390636, 33.880733, 28.921289>,  <42.670513, 34.148144, 28.820488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390636, 33.880733, 28.921289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364011, -0.637094, -0.679417,
		0.614757, -0.383650, 0.689120,
		-0.699692, -0.668524, 0.252006,
		42.180729, 33.680176, 28.996891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036541, 33.622314, 28.822081>,  <42.670513, 34.148144, 28.820488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036541, 33.622314, 28.822081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661236, 33.484432, 28.810518>,  <42.436050, 33.401703, 28.803581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661236, 33.484432, 28.810518>,  <43.036541, 33.622314, 28.822081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661236, 33.484432, 28.810518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237467, -0.581099, -0.778417,
		0.251529, -0.737226, 0.627081,
		-0.938266, -0.344706, -0.028904,
		42.379757, 33.381020, 28.801847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037132, 32.868500, 28.865801>,  <43.036541, 33.622314, 28.822081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037132, 32.868500, 28.865801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686886, 32.937469, 28.685326>,  <42.476738, 32.978851, 28.577040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686886, 32.937469, 28.685326>,  <43.037132, 32.868500, 28.865801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686886, 32.937469, 28.685326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290120, -0.559090, -0.776691,
		-0.386178, -0.810979, 0.439522,
		-0.875612, 0.172427, -0.451190,
		42.424202, 32.989197, 28.549969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837368, 32.242413, 28.662567>,  <43.037132, 32.868500, 28.865801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837368, 32.242413, 28.662567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614079, 32.475967, 28.426785>,  <42.480106, 32.616100, 28.285315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614079, 32.475967, 28.426785>,  <42.837368, 32.242413, 28.662567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614079, 32.475967, 28.426785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228712, -0.574633, -0.785804,
		-0.797543, -0.573471, 0.187231,
		-0.558225, 0.583891, -0.589454,
		42.446609, 32.651134, 28.249949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339470, 31.724527, 28.297483>,  <42.837368, 32.242413, 28.662567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339470, 31.724527, 28.297483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377045, 32.075245, 28.108845>,  <42.399590, 32.285675, 27.995661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377045, 32.075245, 28.108845>,  <42.339470, 31.724527, 28.297483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377045, 32.075245, 28.108845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031219, -0.476054, -0.878862,
		-0.995089, 0.067833, -0.072091,
		0.093935, 0.876796, -0.471598,
		42.405224, 32.338284, 27.967365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842419, 31.702909, 27.646204>,  <42.339470, 31.724527, 28.297483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842419, 31.702909, 27.646204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105598, 31.988684, 27.550968>,  <42.263508, 32.160149, 27.493828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105598, 31.988684, 27.550968>,  <41.842419, 31.702909, 27.646204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105598, 31.988684, 27.550968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205248, -0.474316, -0.856094,
		-0.724553, 0.514399, -0.458713,
		0.657949, 0.714435, -0.238088,
		42.302982, 32.203014, 27.479542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619495, 32.017807, 27.141428>,  <41.842419, 31.702909, 27.646204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619495, 32.017807, 27.141428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004040, 32.122234, 27.106493>,  <42.234768, 32.184891, 27.085531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004040, 32.122234, 27.106493>,  <41.619495, 32.017807, 27.141428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004040, 32.122234, 27.106493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055818, -0.495523, -0.866800,
		-0.269570, 0.828433, -0.490949,
		0.961362, 0.261067, -0.087337,
		42.292450, 32.200554, 27.080292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614613, 32.212860, 26.462837>,  <41.619495, 32.017807, 27.141428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614613, 32.212860, 26.462837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996834, 32.142471, 26.557461>,  <42.226166, 32.100239, 26.614235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996834, 32.142471, 26.557461>,  <41.614613, 32.212860, 26.462837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996834, 32.142471, 26.557461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111008, -0.528579, -0.841595,
		0.273138, 0.830445, -0.485548,
		0.955548, -0.175972, 0.236561,
		42.283497, 32.089680, 26.628429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963097, 32.468159, 25.888531>,  <41.614613, 32.212860, 26.462837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963097, 32.468159, 25.888531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181244, 32.198353, 26.087568>,  <42.312134, 32.036469, 26.206991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181244, 32.198353, 26.087568>,  <41.963097, 32.468159, 25.888531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181244, 32.198353, 26.087568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093038, -0.541268, -0.835687,
		0.833018, 0.502051, -0.232434,
		0.545367, -0.674518, 0.497596,
		42.344852, 31.995998, 26.236847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544243, 32.326672, 25.453138>,  <41.963097, 32.468159, 25.888531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544243, 32.326672, 25.453138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538158, 32.017998, 25.707466>,  <42.534508, 31.832792, 25.860064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538158, 32.017998, 25.707466>,  <42.544243, 32.326672, 25.453138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538158, 32.017998, 25.707466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107137, -0.633490, -0.766297,
		0.994128, 0.056463, 0.092313,
		-0.015212, -0.771688, 0.635820,
		42.533596, 31.786491, 25.898212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003700, 31.881895, 25.194038>,  <42.544243, 32.326672, 25.453138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003700, 31.881895, 25.194038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804661, 31.653027, 25.454809>,  <42.685238, 31.515705, 25.611273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804661, 31.653027, 25.454809>,  <43.003700, 31.881895, 25.194038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804661, 31.653027, 25.454809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069439, -0.775450, -0.627579,
		0.864621, -0.267016, 0.425597,
		-0.497603, -0.572171, 0.651929,
		42.655380, 31.481375, 25.650389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458248, 31.356697, 25.377296>,  <43.003700, 31.881895, 25.194038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458248, 31.356697, 25.377296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081184, 31.232922, 25.427319>,  <42.854946, 31.158657, 25.457333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081184, 31.232922, 25.427319>,  <43.458248, 31.356697, 25.377296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081184, 31.232922, 25.427319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200650, -0.824859, -0.528534,
		0.266702, -0.473135, 0.839651,
		-0.942661, -0.309437, 0.125057,
		42.798386, 31.140091, 25.464836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.760460, 31.488544, 24.381632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.127945, 31.619406, 24.470121>,  <36.348434, 31.697922, 24.523214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.127945, 31.619406, 24.470121>,  <35.760460, 31.488544, 24.381632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127945, 31.619406, 24.470121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205918, -0.081177, 0.975197,
		0.336998, -0.941478, -0.007211,
		0.918711, 0.327154, 0.221223,
		36.403557, 31.717552, 24.536488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177372, 30.976599, 24.711065>,  <35.760460, 31.488544, 24.381632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177372, 30.976599, 24.711065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.337135, 31.323805, 24.829063>,  <36.432995, 31.532129, 24.899862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.337135, 31.323805, 24.829063>,  <36.177372, 30.976599, 24.711065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337135, 31.323805, 24.829063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134903, -0.262623, 0.955422,
		0.906792, -0.421402, 0.012203,
		0.399412, 0.868015, 0.294993,
		36.456959, 31.584209, 24.917561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609093, 30.795994, 25.281578>,  <36.177372, 30.976599, 24.711065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609093, 30.795994, 25.281578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.558292, 31.191202, 25.316643>,  <36.527813, 31.428328, 25.337683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.558292, 31.191202, 25.316643>,  <36.609093, 30.795994, 25.281578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558292, 31.191202, 25.316643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098451, -0.100499, 0.990054,
		0.987005, 0.117107, 0.110035,
		-0.127000, 0.988021, 0.087664,
		36.520191, 31.487608, 25.342941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069263, 31.033607, 25.880363>,  <36.609093, 30.795994, 25.281578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069263, 31.033607, 25.880363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.817348, 31.339087, 25.823605>,  <36.666199, 31.522373, 25.789549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.817348, 31.339087, 25.823605>,  <37.069263, 31.033607, 25.880363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817348, 31.339087, 25.823605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116184, 0.088006, 0.989321,
		0.768029, 0.639549, 0.033304,
		-0.629788, 0.763696, -0.141897,
		36.628410, 31.568195, 25.781036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264118, 31.488661, 26.394341>,  <37.069263, 31.033607, 25.880363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264118, 31.488661, 26.394341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.883514, 31.564756, 26.297640>,  <36.655151, 31.610415, 26.239620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.883514, 31.564756, 26.297640>,  <37.264118, 31.488661, 26.394341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883514, 31.564756, 26.297640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211206, 0.167381, 0.963003,
		0.223666, 0.967363, -0.119084,
		-0.951507, 0.190240, -0.241750,
		36.598061, 31.621828, 26.225115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018539, 32.223171, 26.574347>,  <37.264118, 31.488661, 26.394341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018539, 32.223171, 26.574347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.679935, 32.010357, 26.566761>,  <36.476772, 31.882669, 26.562210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.679935, 32.010357, 26.566761>,  <37.018539, 32.223171, 26.574347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679935, 32.010357, 26.566761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289055, 0.429419, 0.855597,
		-0.447062, 0.729755, -0.517295,
		-0.846512, -0.532031, -0.018962,
		36.425983, 31.850748, 26.561071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524628, 32.639965, 27.040516>,  <37.018539, 32.223171, 26.574347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524628, 32.639965, 27.040516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.324177, 32.296982, 26.993809>,  <36.203907, 32.091190, 26.965784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.324177, 32.296982, 26.993809>,  <36.524628, 32.639965, 27.040516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324177, 32.296982, 26.993809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515938, 0.187708, 0.835807,
		-0.694753, 0.479089, -0.536462,
		-0.501124, -0.857461, -0.116770,
		36.173840, 32.039745, 26.958778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803524, 32.710953, 27.119125>,  <36.524628, 32.639965, 27.040516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803524, 32.710953, 27.119125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.845154, 32.323895, 27.211063>,  <35.870132, 32.091660, 27.266226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.845154, 32.323895, 27.211063>,  <35.803524, 32.710953, 27.119125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845154, 32.323895, 27.211063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453235, 0.159566, 0.876993,
		-0.885295, -0.195448, -0.421964,
		0.104076, -0.967646, 0.229847,
		35.876377, 32.033600, 27.280018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241238, 32.602928, 27.460911>,  <35.803524, 32.710953, 27.119125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241238, 32.602928, 27.460911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.472557, 32.295986, 27.571712>,  <35.611351, 32.111820, 27.638193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.472557, 32.295986, 27.571712>,  <35.241238, 32.602928, 27.460911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472557, 32.295986, 27.571712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324553, 0.095118, 0.941073,
		-0.748486, -0.634126, -0.194041,
		0.578302, -0.767357, 0.277002,
		35.646049, 32.065781, 27.654814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785477, 32.133205, 27.884878>,  <35.241238, 32.602928, 27.460911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785477, 32.133205, 27.884878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.155319, 32.016891, 27.983313>,  <35.377224, 31.947104, 28.042374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.155319, 32.016891, 27.983313>,  <34.785477, 32.133205, 27.884878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155319, 32.016891, 27.983313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207621, 0.156943, 0.965537,
		-0.319383, -0.943830, 0.084737,
		0.924601, -0.290783, 0.246084,
		35.432701, 31.929657, 28.057138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636806, 31.631124, 28.433874>,  <34.785477, 32.133205, 27.884878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636806, 31.631124, 28.433874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.020256, 31.744394, 28.445562>,  <35.250324, 31.812355, 28.452576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.020256, 31.744394, 28.445562>,  <34.636806, 31.631124, 28.433874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020256, 31.744394, 28.445562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054029, 0.080198, 0.995314,
		0.279503, -0.955710, 0.092179,
		0.958624, 0.283173, 0.029221,
		35.307842, 31.829346, 28.454329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931778, 31.223064, 28.937231>,  <34.636806, 31.631124, 28.433874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931778, 31.223064, 28.937231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.168362, 31.543818, 28.903400>,  <35.310314, 31.736269, 28.883102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.168362, 31.543818, 28.903400>,  <34.931778, 31.223064, 28.937231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168362, 31.543818, 28.903400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028661, 0.125731, 0.991650,
		0.805823, -0.584100, 0.097348,
		0.591462, 0.801885, -0.084576,
		35.345798, 31.784384, 28.878027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342468, 31.153652, 29.550972>,  <34.931778, 31.223064, 28.937231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342468, 31.153652, 29.550972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.457375, 31.511591, 29.414312>,  <35.526318, 31.726355, 29.332315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.457375, 31.511591, 29.414312>,  <35.342468, 31.153652, 29.550972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457375, 31.511591, 29.414312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247130, 0.275369, 0.929031,
		0.925422, -0.351310, -0.142040,
		0.287264, 0.894849, -0.341651,
		35.543552, 31.780045, 29.311817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954483, 31.343876, 29.896032>,  <35.342468, 31.153652, 29.550972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954483, 31.343876, 29.896032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.740898, 31.664112, 29.787268>,  <35.612747, 31.856255, 29.722010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.740898, 31.664112, 29.787268>,  <35.954483, 31.343876, 29.896032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740898, 31.664112, 29.787268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001490, 0.322486, 0.946573,
		0.845504, 0.505033, -0.173389,
		-0.533967, 0.800590, -0.271911,
		35.580708, 31.904289, 29.705694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665371, 31.583002, 30.081198>,  <35.954483, 31.343876, 29.896032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665371, 31.583002, 30.081198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.983570, 31.376970, 30.208866>,  <37.174492, 31.253351, 30.285467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.983570, 31.376970, 30.208866>,  <36.665371, 31.583002, 30.081198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983570, 31.376970, 30.208866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155432, -0.335651, -0.929075,
		0.585677, 0.788690, -0.186951,
		0.795502, -0.515079, 0.319171,
		37.222221, 31.222446, 30.304617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223186, 31.911055, 29.634090>,  <36.665371, 31.583002, 30.081198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223186, 31.911055, 29.634090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.364120, 31.567837, 29.783550>,  <37.448681, 31.361906, 29.873226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.364120, 31.567837, 29.783550>,  <37.223186, 31.911055, 29.634090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364120, 31.567837, 29.783550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389468, -0.228606, -0.892219,
		0.850983, 0.459889, 0.253634,
		0.352339, -0.858045, 0.373652,
		37.469822, 31.310423, 29.895645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950104, 31.927092, 29.512972>,  <37.223186, 31.911055, 29.634090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950104, 31.927092, 29.512972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.824780, 31.549343, 29.552965>,  <37.749584, 31.322695, 29.576962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.824780, 31.549343, 29.552965>,  <37.950104, 31.927092, 29.512972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824780, 31.549343, 29.552965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375791, -0.219985, -0.900215,
		0.872132, -0.244478, 0.423811,
		-0.313315, -0.944371, 0.099983,
		37.730785, 31.266031, 29.582960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481949, 31.483326, 29.288805>,  <37.950104, 31.927092, 29.512972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481949, 31.483326, 29.288805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.191708, 31.208153, 29.282574>,  <38.017563, 31.043049, 29.278835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.191708, 31.208153, 29.282574>,  <38.481949, 31.483326, 29.288805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191708, 31.208153, 29.282574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420888, -0.425800, -0.800967,
		0.544380, -0.587742, 0.598506,
		-0.725606, -0.687934, -0.015576,
		37.974026, 31.001772, 29.277901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789120, 30.814800, 29.268982>,  <38.481949, 31.483326, 29.288805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789120, 30.814800, 29.268982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.434338, 30.767092, 29.090509>,  <38.221466, 30.738466, 28.983427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.434338, 30.767092, 29.090509>,  <38.789120, 30.814800, 29.268982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434338, 30.767092, 29.090509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392950, -0.702519, -0.593345,
		-0.242679, -0.701599, 0.669975,
		-0.886960, -0.119274, -0.446179,
		38.168251, 30.731310, 28.956656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931450, 30.222593, 28.910765>,  <38.789120, 30.814800, 29.268982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931450, 30.222593, 28.910765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.608936, 30.357891, 28.716654>,  <38.415428, 30.439070, 28.600187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.608936, 30.357891, 28.716654>,  <38.931450, 30.222593, 28.910765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608936, 30.357891, 28.716654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188642, -0.630518, -0.752902,
		-0.560638, -0.698599, 0.444572,
		-0.806288, 0.338241, -0.485277,
		38.367050, 30.459364, 28.571070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780804, 29.680077, 28.491243>,  <38.931450, 30.222593, 28.910765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780804, 29.680077, 28.491243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.600113, 30.006683, 28.347441>,  <38.491699, 30.202646, 28.261158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.600113, 30.006683, 28.347441>,  <38.780804, 29.680077, 28.491243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600113, 30.006683, 28.347441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248708, -0.271739, -0.929679,
		-0.856789, -0.509373, -0.080323,
		-0.451726, 0.816515, -0.359508,
		38.464596, 30.251638, 28.239588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263653, 29.432632, 28.050344>,  <38.780804, 29.680077, 28.491243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263653, 29.432632, 28.050344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.305431, 29.814594, 27.939173>,  <38.330498, 30.043772, 27.872471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.305431, 29.814594, 27.939173>,  <38.263653, 29.432632, 28.050344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305431, 29.814594, 27.939173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026149, -0.281997, -0.959059,
		-0.994186, 0.092903, -0.054424,
		0.104447, 0.954906, -0.277928,
		38.336765, 30.101067, 27.855795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785576, 29.586248, 27.471355>,  <38.263653, 29.432632, 28.050344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785576, 29.586248, 27.471355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.091560, 29.842289, 27.442766>,  <38.275150, 29.995913, 27.425613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.091560, 29.842289, 27.442766>,  <37.785576, 29.586248, 27.471355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091560, 29.842289, 27.442766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001919, -0.108704, -0.994072,
		-0.644077, 0.760561, -0.081925,
		0.764958, 0.640102, -0.071473,
		38.321049, 30.034319, 27.421324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673634, 30.073883, 26.886667>,  <37.785576, 29.586248, 27.471355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673634, 30.073883, 26.886667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.064377, 30.030046, 26.960142>,  <38.298820, 30.003744, 27.004227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.064377, 30.030046, 26.960142>,  <37.673634, 30.073883, 26.886667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064377, 30.030046, 26.960142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177106, -0.067124, -0.981900,
		0.119938, 0.991708, -0.046161,
		0.976856, -0.109592, 0.183688,
		38.357433, 29.997169, 27.015249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135372, 30.573101, 26.517406>,  <37.673634, 30.073883, 26.886667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135372, 30.573101, 26.517406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.350723, 30.245132, 26.595253>,  <38.479935, 30.048351, 26.641960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.350723, 30.245132, 26.595253>,  <38.135372, 30.573101, 26.517406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350723, 30.245132, 26.595253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312724, -0.020063, -0.949632,
		0.782530, 0.572123, 0.245607,
		0.538378, -0.819923, 0.194616,
		38.512238, 29.999155, 26.653639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751564, 30.703638, 26.135334>,  <38.135372, 30.573101, 26.517406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751564, 30.703638, 26.135334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.679642, 30.313536, 26.186781>,  <38.636490, 30.079473, 26.217649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.679642, 30.313536, 26.186781>,  <38.751564, 30.703638, 26.135334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679642, 30.313536, 26.186781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307005, -0.179851, -0.934559,
		0.934568, -0.128554, 0.331748,
		-0.179806, -0.975258, 0.128616,
		38.625698, 30.020958, 26.225367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317814, 30.340975, 25.861244>,  <38.751564, 30.703638, 26.135334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317814, 30.340975, 25.861244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.014812, 30.080002, 25.852173>,  <38.833012, 29.923418, 25.846729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.014812, 30.080002, 25.852173>,  <39.317814, 30.340975, 25.861244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014812, 30.080002, 25.852173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183763, -0.179762, -0.966394,
		0.626431, -0.736217, 0.256064,
		-0.757506, -0.652434, -0.022681,
		38.787560, 29.884272, 25.845369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619297, 29.693119, 25.574959>,  <39.317814, 30.340975, 25.861244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619297, 29.693119, 25.574959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.220730, 29.689512, 25.541330>,  <38.981590, 29.687347, 25.521152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.220730, 29.689512, 25.541330>,  <39.619297, 29.693119, 25.574959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220730, 29.689512, 25.541330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081471, -0.368454, -0.926069,
		-0.022625, -0.929602, 0.367869,
		-0.996419, -0.009018, -0.084072,
		38.921803, 29.686808, 25.516109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950020, 28.998249, 25.766562>,  <39.619297, 29.693119, 25.574959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950020, 28.998249, 25.766562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.329967, 28.874472, 25.748722>,  <40.557938, 28.800205, 25.738018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.329967, 28.874472, 25.748722>,  <39.950020, 28.998249, 25.766562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329967, 28.874472, 25.748722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088775, 0.130182, 0.987508,
		-0.299775, -0.941963, 0.151127,
		0.949871, -0.309446, -0.044597,
		40.614929, 28.781637, 25.735342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032162, 28.453018, 26.371326>,  <39.950020, 28.998249, 25.766562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032162, 28.453018, 26.371326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.409721, 28.561714, 26.296261>,  <40.636257, 28.626932, 26.251223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.409721, 28.561714, 26.296261>,  <40.032162, 28.453018, 26.371326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409721, 28.561714, 26.296261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158809, 0.124741, 0.979397,
		0.289550, -0.954252, 0.074588,
		0.943896, 0.271739, -0.187663,
		40.692890, 28.643236, 26.239962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441936, 27.992916, 26.754400>,  <40.032162, 28.453018, 26.371326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441936, 27.992916, 26.754400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.633717, 28.336046, 26.680361>,  <40.748783, 28.541925, 26.635937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.633717, 28.336046, 26.680361>,  <40.441936, 27.992916, 26.754400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633717, 28.336046, 26.680361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168092, 0.117246, 0.978774,
		0.861321, -0.500386, -0.087980,
		0.479449, 0.857827, -0.185098,
		40.777550, 28.593395, 26.624832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964043, 27.952337, 27.196701>,  <40.441936, 27.992916, 26.754400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964043, 27.952337, 27.196701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.916660, 28.334633, 27.088972>,  <40.888233, 28.564011, 27.024334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.916660, 28.334633, 27.088972>,  <40.964043, 27.952337, 27.196701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916660, 28.334633, 27.088972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122680, 0.283240, 0.951170,
		0.985352, 0.079629, -0.150801,
		-0.118454, 0.955738, -0.269322,
		40.881123, 28.621355, 27.008175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526592, 28.343864, 27.498493>,  <40.964043, 27.952337, 27.196701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526592, 28.343864, 27.498493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.244232, 28.619329, 27.432217>,  <41.074818, 28.784609, 27.392450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.244232, 28.619329, 27.432217>,  <41.526592, 28.343864, 27.498493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244232, 28.619329, 27.432217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306596, 0.507947, 0.804978,
		0.638521, 0.517431, -0.569699,
		-0.705897, 0.688662, -0.165692,
		41.032463, 28.825928, 27.382509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858871, 28.924006, 27.773256>,  <41.526592, 28.343864, 27.498493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858871, 28.924006, 27.773256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.480778, 29.047527, 27.730974>,  <41.253922, 29.121641, 27.705605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.480778, 29.047527, 27.730974>,  <41.858871, 28.924006, 27.773256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480778, 29.047527, 27.730974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111060, 0.608828, 0.785490,
		0.306919, 0.730731, -0.609781,
		-0.945233, 0.308804, -0.105706,
		41.197208, 29.140169, 27.699263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917149, 29.585468, 27.926630>,  <41.858871, 28.924006, 27.773256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917149, 29.585468, 27.926630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.524109, 29.532255, 27.978466>,  <41.288284, 29.500328, 28.009567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.524109, 29.532255, 27.978466>,  <41.917149, 29.585468, 27.926630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524109, 29.532255, 27.978466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006035, 0.720282, 0.693655,
		-0.185619, 0.680806, -0.708554,
		-0.982603, -0.133032, 0.129589,
		41.229328, 29.492346, 28.017344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548599, 30.307171, 28.026562>,  <41.917149, 29.585468, 27.926630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548599, 30.307171, 28.026562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.354645, 30.001535, 28.196762>,  <41.238270, 29.818153, 28.298882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.354645, 30.001535, 28.196762>,  <41.548599, 30.307171, 28.026562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354645, 30.001535, 28.196762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100060, 0.531796, 0.840941,
		-0.868832, 0.365189, -0.334317,
		-0.484891, -0.764088, 0.425501,
		41.209179, 29.772308, 28.324411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076099, 30.650036, 28.560564>,  <41.548599, 30.307171, 28.026562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076099, 30.650036, 28.560564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.070877, 30.266634, 28.674475>,  <41.067741, 30.036592, 28.742821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.070877, 30.266634, 28.674475>,  <41.076099, 30.650036, 28.560564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070877, 30.266634, 28.674475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149350, 0.283475, 0.947279,
		-0.988698, -0.030161, -0.146854,
		-0.013059, -0.958505, 0.284776,
		41.066959, 29.979082, 28.759907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480049, 30.591742, 29.007814>,  <41.076099, 30.650036, 28.560564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480049, 30.591742, 29.007814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.720131, 30.285368, 29.099991>,  <40.864182, 30.101543, 29.155296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.720131, 30.285368, 29.099991>,  <40.480049, 30.591742, 29.007814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720131, 30.285368, 29.099991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008262, 0.294030, 0.955760,
		-0.799805, -0.571747, 0.182806,
		0.600203, -0.765932, 0.230443,
		40.900192, 30.055588, 29.169125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169270, 30.226559, 29.668434>,  <40.480049, 30.591742, 29.007814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169270, 30.226559, 29.668434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.559246, 30.143953, 29.635351>,  <40.793232, 30.094391, 29.615501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.559246, 30.143953, 29.635351>,  <40.169270, 30.226559, 29.668434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559246, 30.143953, 29.635351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136087, 0.259555, 0.956092,
		-0.175978, -0.943390, 0.281155,
		0.974942, -0.206512, -0.082707,
		40.851730, 30.081999, 29.610538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353386, 29.996964, 30.310780>,  <40.169270, 30.226559, 29.668434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353386, 29.996964, 30.310780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.701035, 30.094090, 30.138420>,  <40.909622, 30.152365, 30.035006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.701035, 30.094090, 30.138420>,  <40.353386, 29.996964, 30.310780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701035, 30.094090, 30.138420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284077, 0.468105, 0.836767,
		0.404884, -0.849658, 0.337861,
		0.869120, 0.242814, -0.430897,
		40.961769, 30.166935, 30.009151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763542, 29.776768, 30.744198>,  <40.353386, 29.996964, 30.310780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763542, 29.776768, 30.744198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.966084, 30.043497, 30.525494>,  <41.087608, 30.203535, 30.394270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.966084, 30.043497, 30.525494>,  <40.763542, 29.776768, 30.744198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966084, 30.043497, 30.525494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270158, 0.479464, 0.834943,
		0.818913, -0.570490, 0.062631,
		0.506356, 0.666825, -0.546762,
		41.117989, 30.243544, 30.361465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309422, 29.901018, 31.165276>,  <40.763542, 29.776768, 30.744198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309422, 29.901018, 31.165276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.317020, 30.219215, 30.923010>,  <41.321579, 30.410133, 30.777651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.317020, 30.219215, 30.923010>,  <41.309422, 29.901018, 31.165276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317020, 30.219215, 30.923010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155192, 0.596088, 0.787779,
		0.987702, -0.108960, -0.112130,
		0.018997, 0.795492, -0.605666,
		41.322720, 30.457863, 30.741310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.574562, 30.643612, 25.399687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.193916, 30.700230, 25.290581>,  <42.965530, 30.734201, 25.225117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.193916, 30.700230, 25.290581>,  <43.574562, 30.643612, 25.399687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193916, 30.700230, 25.290581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090396, -0.719400, -0.688689,
		-0.293707, -0.680021, 0.671795,
		-0.951612, 0.141545, -0.272764,
		42.908432, 30.742693, 25.208752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296696, 30.031221, 25.344101>,  <43.574562, 30.643612, 25.399687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296696, 30.031221, 25.344101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.040737, 30.260435, 25.139290>,  <42.887161, 30.397963, 25.016403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.040737, 30.260435, 25.139290>,  <43.296696, 30.031221, 25.344101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040737, 30.260435, 25.139290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042685, -0.638764, -0.768218,
		-0.767278, -0.513433, 0.384280,
		-0.639892, 0.573034, -0.512026,
		42.848770, 30.432344, 24.985682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799431, 29.622667, 25.109522>,  <43.296696, 30.031221, 25.344101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799431, 29.622667, 25.109522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.743423, 29.932066, 24.862267>,  <42.709820, 30.117706, 24.713913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.743423, 29.932066, 24.862267>,  <42.799431, 29.622667, 25.109522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743423, 29.932066, 24.862267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012730, -0.622831, -0.782253,
		-0.990067, -0.117400, 0.077362,
		-0.140020, 0.773498, -0.618139,
		42.701416, 30.164116, 24.676825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334023, 29.377474, 24.647896>,  <42.799431, 29.622667, 25.109522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334023, 29.377474, 24.647896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.509605, 29.669291, 24.438103>,  <42.614956, 29.844381, 24.312227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.509605, 29.669291, 24.438103>,  <42.334023, 29.377474, 24.647896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509605, 29.669291, 24.438103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037318, -0.568419, -0.821892,
		-0.897731, 0.380351, -0.222288,
		0.438961, 0.729543, -0.524481,
		42.641293, 29.888153, 24.280758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883778, 29.466417, 24.064882>,  <42.334023, 29.377474, 24.647896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883778, 29.466417, 24.064882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.220558, 29.664091, 23.978260>,  <42.422626, 29.782696, 23.926287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.220558, 29.664091, 23.978260>,  <41.883778, 29.466417, 24.064882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220558, 29.664091, 23.978260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002787, -0.397372, -0.917653,
		-0.539545, 0.773224, -0.333191,
		0.841952, 0.494187, -0.216556,
		42.473145, 29.812347, 23.913294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717400, 29.936398, 23.458797>,  <41.883778, 29.466417, 24.064882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717400, 29.936398, 23.458797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.111641, 29.868927, 23.463398>,  <42.348186, 29.828445, 23.466158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.111641, 29.868927, 23.463398>,  <41.717400, 29.936398, 23.458797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111641, 29.868927, 23.463398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045564, -0.330508, -0.942703,
		0.162813, 0.928608, -0.333436,
		0.985604, -0.168677, 0.011500,
		42.407322, 29.818323, 23.466848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964619, 30.255043, 22.850212>,  <41.717400, 29.936398, 23.458797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964619, 30.255043, 22.850212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.246754, 29.990137, 22.951326>,  <42.416035, 29.831194, 23.011995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.246754, 29.990137, 22.951326>,  <41.964619, 30.255043, 22.850212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246754, 29.990137, 22.951326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105843, -0.254215, -0.961339,
		0.700923, 0.704826, -0.109212,
		0.705339, -0.662266, 0.252786,
		42.458355, 29.791458, 23.027163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619808, 30.410698, 22.405121>,  <41.964619, 30.255043, 22.850212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619808, 30.410698, 22.405121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.655865, 30.036392, 22.541485>,  <42.677498, 29.811810, 22.623304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.655865, 30.036392, 22.541485>,  <42.619808, 30.410698, 22.405121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655865, 30.036392, 22.541485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344118, -0.291960, -0.892380,
		0.934590, 0.197751, 0.295697,
		0.090137, -0.935764, 0.340912,
		42.682907, 29.755663, 22.643759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241234, 30.211201, 22.196505>,  <42.619808, 30.410698, 22.405121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241234, 30.211201, 22.196505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.025383, 29.879065, 22.252121>,  <42.895870, 29.679783, 22.285490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.025383, 29.879065, 22.252121>,  <43.241234, 30.211201, 22.196505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025383, 29.879065, 22.252121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428857, -0.413224, -0.803323,
		0.724488, -0.373868, 0.579085,
		-0.539629, -0.830343, 0.139040,
		42.863495, 29.629961, 22.293833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617737, 29.749010, 21.812553>,  <43.241234, 30.211201, 22.196505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617737, 29.749010, 21.812553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.284786, 29.534224, 21.867418>,  <43.085014, 29.405352, 21.900337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.284786, 29.534224, 21.867418>,  <43.617737, 29.749010, 21.812553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284786, 29.534224, 21.867418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206691, -0.530414, -0.822156,
		0.514223, -0.655994, 0.552491,
		-0.832378, -0.536966, 0.137163,
		43.035072, 29.373133, 21.908567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851841, 29.116821, 21.644278>,  <43.617737, 29.749010, 21.812553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851841, 29.116821, 21.644278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.452965, 29.129337, 21.617041>,  <43.213638, 29.136847, 21.600698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.452965, 29.129337, 21.617041>,  <43.851841, 29.116821, 21.644278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452965, 29.129337, 21.617041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045222, -0.473297, -0.879741,
		-0.059758, -0.880347, 0.470551,
		-0.997188, 0.031292, -0.068094,
		43.153809, 29.138725, 21.596613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635624, 28.491869, 21.510448>,  <43.851841, 29.116821, 21.644278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635624, 28.491869, 21.510448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.338196, 28.708372, 21.353403>,  <43.159740, 28.838274, 21.259176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.338196, 28.708372, 21.353403>,  <43.635624, 28.491869, 21.510448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338196, 28.708372, 21.353403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108167, -0.482068, -0.869431,
		-0.659853, -0.688949, 0.299905,
		-0.743568, 0.541257, -0.392616,
		43.115124, 28.870749, 21.235619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158665, 27.999496, 21.206926>,  <43.635624, 28.491869, 21.510448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158665, 27.999496, 21.206926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.131351, 28.353785, 21.023260>,  <43.114964, 28.566359, 20.913061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.131351, 28.353785, 21.023260>,  <43.158665, 27.999496, 21.206926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131351, 28.353785, 21.023260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048375, -0.462638, -0.885226,
		-0.996492, -0.038237, 0.074439,
		-0.068286, 0.885722, -0.459166,
		43.110867, 28.619501, 20.885509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598064, 28.110693, 20.879665>,  <43.158665, 27.999496, 21.206926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598064, 28.110693, 20.879665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.879910, 28.304211, 20.672026>,  <43.049015, 28.420321, 20.547441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.879910, 28.304211, 20.672026>,  <42.598064, 28.110693, 20.879665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879910, 28.304211, 20.672026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261843, -0.502650, -0.823881,
		-0.659514, 0.716441, -0.227496,
		0.704613, 0.483793, -0.519100,
		43.091293, 28.449348, 20.516296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845097, 27.838840, 20.738625>,  <42.598064, 28.110693, 20.879665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845097, 27.838840, 20.738625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.659702, 27.500214, 20.633928>,  <41.548466, 27.297037, 20.571110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.659702, 27.500214, 20.633928>,  <41.845097, 27.838840, 20.738625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659702, 27.500214, 20.633928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607544, 0.088581, 0.789331,
		-0.645035, 0.524863, -0.555382,
		-0.463487, -0.846565, -0.261740,
		41.520657, 27.246244, 20.555407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159763, 27.971508, 20.515411>,  <41.845097, 27.838840, 20.738625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159763, 27.971508, 20.515411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.166412, 27.595453, 20.651569>,  <41.170403, 27.369822, 20.733265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.166412, 27.595453, 20.651569>,  <41.159763, 27.971508, 20.515411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166412, 27.595453, 20.651569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611162, 0.259884, 0.747624,
		-0.791331, -0.220466, -0.570255,
		0.016626, -0.940136, 0.340394,
		41.171402, 27.313412, 20.753687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511101, 27.820589, 20.791193>,  <41.159763, 27.971508, 20.515411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511101, 27.820589, 20.791193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.736786, 27.540333, 20.965899>,  <40.872196, 27.372179, 21.070723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.736786, 27.540333, 20.965899>,  <40.511101, 27.820589, 20.791193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736786, 27.540333, 20.965899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443800, 0.188713, 0.876030,
		-0.696207, -0.688104, -0.204470,
		0.564214, -0.700643, 0.436764,
		40.906052, 27.330139, 21.096928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200947, 27.698479, 21.365377>,  <40.511101, 27.820589, 20.791193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200947, 27.698479, 21.365377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.553223, 27.526163, 21.444176>,  <40.764587, 27.422773, 21.491455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.553223, 27.526163, 21.444176>,  <40.200947, 27.698479, 21.365377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553223, 27.526163, 21.444176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115693, 0.207662, 0.971335,
		-0.459349, -0.878235, 0.133047,
		0.880689, -0.430789, 0.196995,
		40.817429, 27.396927, 21.503275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096939, 27.170885, 21.845236>,  <40.200947, 27.698479, 21.365377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096939, 27.170885, 21.845236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.483429, 27.254150, 21.906012>,  <40.715321, 27.304110, 21.942478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.483429, 27.254150, 21.906012>,  <40.096939, 27.170885, 21.845236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483429, 27.254150, 21.906012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180331, 0.124903, 0.975643,
		0.184119, -0.970085, 0.158223,
		0.966220, 0.208167, 0.151940,
		40.773296, 27.316599, 21.951593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114899, 26.910723, 22.597481>,  <40.096939, 27.170885, 21.845236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114899, 26.910723, 22.597481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.459278, 27.095142, 22.511496>,  <40.665905, 27.205793, 22.459906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.459278, 27.095142, 22.511496>,  <40.114899, 26.910723, 22.597481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459278, 27.095142, 22.511496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192891, 0.095135, 0.976597,
		0.470711, -0.882260, -0.007027,
		0.860944, 0.461050, -0.214961,
		40.717560, 27.233458, 22.447008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641571, 26.637421, 23.032070>,  <40.114899, 26.910723, 22.597481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641571, 26.637421, 23.032070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.774109, 26.999973, 22.927238>,  <40.853630, 27.217505, 22.864340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.774109, 26.999973, 22.927238>,  <40.641571, 26.637421, 23.032070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774109, 26.999973, 22.927238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206500, 0.201370, 0.957501,
		0.920636, -0.371379, -0.120445,
		0.331342, 0.906381, -0.262078,
		40.873512, 27.271887, 22.848616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278637, 26.803194, 23.440445>,  <40.641571, 26.637421, 23.032070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278637, 26.803194, 23.440445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.128017, 27.151402, 23.313698>,  <41.037643, 27.360327, 23.237650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.128017, 27.151402, 23.313698>,  <41.278637, 26.803194, 23.440445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128017, 27.151402, 23.313698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110926, 0.381951, 0.917501,
		0.919731, 0.310337, -0.240387,
		-0.376551, 0.870520, -0.316868,
		41.015053, 27.412558, 23.218637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727226, 27.287231, 23.866640>,  <41.278637, 26.803194, 23.440445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727226, 27.287231, 23.866640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.390003, 27.467224, 23.748812>,  <41.187668, 27.575220, 23.678116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.390003, 27.467224, 23.748812>,  <41.727226, 27.287231, 23.866640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390003, 27.467224, 23.748812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070464, 0.450571, 0.889955,
		0.533188, 0.771040, -0.348149,
		-0.843057, 0.449982, -0.294570,
		41.137085, 27.602219, 23.660440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844963, 27.867863, 24.167812>,  <41.727226, 27.287231, 23.866640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844963, 27.867863, 24.167812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.463146, 27.879999, 24.049202>,  <41.234055, 27.887281, 23.978035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.463146, 27.879999, 24.049202>,  <41.844963, 27.867863, 24.167812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463146, 27.879999, 24.049202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206712, 0.649346, 0.731861,
		0.214755, 0.759888, -0.613556,
		-0.954542, 0.030342, -0.296528,
		41.176785, 27.889101, 23.960243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629211, 28.618128, 24.014307>,  <41.844963, 27.867863, 24.167812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629211, 28.618128, 24.014307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.289139, 28.420471, 24.086981>,  <41.085094, 28.301878, 24.130585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.289139, 28.420471, 24.086981>,  <41.629211, 28.618128, 24.014307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289139, 28.420471, 24.086981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203918, 0.627224, 0.751670,
		-0.485388, 0.602011, -0.634021,
		-0.850186, -0.494139, 0.181686,
		41.034084, 28.272230, 24.141487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221859, 29.144276, 24.298479>,  <41.629211, 28.618128, 24.014307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221859, 29.144276, 24.298479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.020321, 28.820826, 24.419981>,  <40.899399, 28.626757, 24.492882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.020321, 28.820826, 24.419981>,  <41.221859, 29.144276, 24.298479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020321, 28.820826, 24.419981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091461, 0.399616, 0.912109,
		-0.858937, 0.431783, -0.275303,
		-0.503848, -0.808623, 0.303753,
		40.869167, 28.578239, 24.511106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626995, 29.355583, 24.598467>,  <41.221859, 29.144276, 24.298479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626995, 29.355583, 24.598467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.709972, 28.998974, 24.759539>,  <40.759758, 28.785007, 24.856182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.709972, 28.998974, 24.759539>,  <40.626995, 29.355583, 24.598467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709972, 28.998974, 24.759539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087422, 0.393090, 0.915335,
		-0.974333, -0.225085, 0.003605,
		0.207445, -0.891525, 0.402678,
		40.772205, 28.731516, 24.880342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137020, 29.189751, 25.095118>,  <40.626995, 29.355583, 24.598467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137020, 29.189751, 25.095118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.419361, 28.930822, 25.210178>,  <40.588768, 28.775465, 25.279215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.419361, 28.930822, 25.210178>,  <40.137020, 29.189751, 25.095118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419361, 28.930822, 25.210178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143018, 0.267487, 0.952888,
		-0.693767, -0.713741, 0.096229,
		0.705856, -0.647320, 0.287652,
		40.631119, 28.736626, 25.296474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403915, 29.021322, 25.137146>,  <40.137020, 29.189751, 25.095118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403915, 29.021322, 25.137146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.088161, 29.265739, 25.113468>,  <38.898708, 29.412390, 25.099260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.088161, 29.265739, 25.113468>,  <39.403915, 29.021322, 25.137146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088161, 29.265739, 25.113468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162734, -0.301250, -0.939556,
		-0.591943, -0.732034, 0.337238,
		-0.789380, 0.611044, -0.059196,
		38.851349, 29.449053, 25.095709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950176, 28.705826, 24.649137>,  <39.403915, 29.021322, 25.137146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950176, 28.705826, 24.649137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.752869, 29.053207, 24.669043>,  <38.634483, 29.261637, 24.680986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.752869, 29.053207, 24.669043>,  <38.950176, 28.705826, 24.649137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752869, 29.053207, 24.669043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399187, -0.175160, -0.899982,
		-0.772877, -0.463796, 0.433076,
		-0.493266, 0.868454, 0.049764,
		38.604889, 29.313744, 24.683971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270153, 28.634512, 24.461462>,  <38.950176, 28.705826, 24.649137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270153, 28.634512, 24.461462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.318707, 29.025526, 24.392534>,  <38.347839, 29.260134, 24.351177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.318707, 29.025526, 24.392534>,  <38.270153, 28.634512, 24.461462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318707, 29.025526, 24.392534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466444, -0.097065, -0.879209,
		-0.876182, 0.187100, 0.444183,
		0.121386, 0.977534, -0.172318,
		38.355122, 29.318787, 24.340839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649609, 28.920481, 24.217379>,  <38.270153, 28.634512, 24.461462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649609, 28.920481, 24.217379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.939251, 29.157404, 24.076046>,  <38.113037, 29.299559, 23.991245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.939251, 29.157404, 24.076046>,  <37.649609, 28.920481, 24.217379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939251, 29.157404, 24.076046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341112, -0.137695, -0.929883,
		-0.599431, 0.793858, 0.102338,
		0.724103, 0.592309, -0.353333,
		38.156483, 29.335096, 23.970047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320724, 29.274078, 23.710592>,  <37.649609, 28.920481, 24.217379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320724, 29.274078, 23.710592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.710125, 29.327145, 23.636095>,  <37.943768, 29.358984, 23.591396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.710125, 29.327145, 23.636095>,  <37.320724, 29.274078, 23.710592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710125, 29.327145, 23.636095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183316, -0.034061, -0.982464,
		-0.136683, 0.990575, -0.008839,
		0.973505, 0.132666, -0.186244,
		38.002178, 29.366945, 23.580221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354340, 29.668316, 23.142149>,  <37.320724, 29.274078, 23.710592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354340, 29.668316, 23.142149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.709259, 29.483955, 23.148758>,  <37.922211, 29.373339, 23.152723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.709259, 29.483955, 23.148758>,  <37.354340, 29.668316, 23.142149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709259, 29.483955, 23.148758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036101, -0.105128, -0.993803,
		0.459784, 0.881202, -0.109919,
		0.887296, -0.460903, 0.016524,
		37.975449, 29.345684, 23.153715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566586, 29.801004, 22.455215>,  <37.354340, 29.668316, 23.142149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566586, 29.801004, 22.455215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.834084, 29.521961, 22.558071>,  <37.994583, 29.354536, 22.619783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.834084, 29.521961, 22.558071>,  <37.566586, 29.801004, 22.455215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834084, 29.521961, 22.558071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036511, -0.376249, -0.925799,
		0.742592, 0.609737, -0.277086,
		0.668748, -0.697608, 0.257137,
		38.034706, 29.312679, 22.635212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073181, 30.491711, 22.478201>,  <37.566586, 29.801004, 22.455215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073181, 30.491711, 22.478201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895725, 30.815720, 22.324812>,  <37.789253, 31.010126, 22.232779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895725, 30.815720, 22.324812>,  <38.073181, 30.491711, 22.478201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895725, 30.815720, 22.324812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297696, 0.270393, 0.915568,
		0.845320, 0.520336, 0.121185,
		-0.443635, 0.810024, -0.383470,
		37.762634, 31.058727, 22.209770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255100, 31.068615, 23.047934>,  <38.073181, 30.491711, 22.478201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255100, 31.068615, 23.047934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.948112, 31.197674, 22.826345>,  <37.763920, 31.275110, 22.693392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.948112, 31.197674, 22.826345>,  <38.255100, 31.068615, 23.047934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948112, 31.197674, 22.826345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477866, 0.288109, 0.829841,
		0.427351, 0.901604, -0.066933,
		-0.767473, 0.322649, -0.553970,
		37.717869, 31.294468, 22.660154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116425, 31.768024, 23.253271>,  <38.255100, 31.068615, 23.047934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116425, 31.768024, 23.253271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.786644, 31.616671, 23.084934>,  <37.588776, 31.525858, 22.983932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.786644, 31.616671, 23.084934>,  <38.116425, 31.768024, 23.253271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786644, 31.616671, 23.084934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548576, 0.351549, 0.758603,
		-0.139096, 0.856294, -0.497406,
		-0.824449, -0.378384, -0.420843,
		37.539310, 31.503155, 22.958681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690849, 32.221954, 23.204361>,  <38.116425, 31.768024, 23.253271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690849, 32.221954, 23.204361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.457539, 31.897093, 23.209839>,  <37.317551, 31.702175, 23.213125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.457539, 31.897093, 23.209839>,  <37.690849, 32.221954, 23.204361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457539, 31.897093, 23.209839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555929, 0.411442, 0.722260,
		-0.592221, 0.413667, -0.691486,
		-0.583282, -0.812155, 0.013696,
		37.282555, 31.653446, 23.213947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071053, 32.560253, 23.260489>,  <37.690849, 32.221954, 23.204361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071053, 32.560253, 23.260489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.001461, 32.181881, 23.370001>,  <36.959705, 31.954859, 23.435709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.001461, 32.181881, 23.370001>,  <37.071053, 32.560253, 23.260489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001461, 32.181881, 23.370001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495875, 0.324352, 0.805546,
		-0.850789, 0.004383, -0.525490,
		-0.173974, -0.945927, 0.273781,
		36.949268, 31.898104, 23.452135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443420, 32.562630, 23.494423>,  <37.071053, 32.560253, 23.260489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443420, 32.562630, 23.494423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.623692, 32.250233, 23.667370>,  <36.731853, 32.062794, 23.771139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.623692, 32.250233, 23.667370>,  <36.443420, 32.562630, 23.494423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623692, 32.250233, 23.667370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471156, 0.203286, 0.858305,
		-0.758223, -0.590531, -0.276353,
		0.450676, -0.780992, 0.432369,
		36.758896, 32.015934, 23.797081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925854, 32.044880, 23.832474>,  <36.443420, 32.562630, 23.494423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925854, 32.044880, 23.832474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.290092, 31.980366, 23.984688>,  <36.508636, 31.941656, 24.076015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.290092, 31.980366, 23.984688>,  <35.925854, 32.044880, 23.832474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290092, 31.980366, 23.984688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391662, -0.042700, 0.919118,
		-0.131999, -0.985982, -0.102055,
		0.910592, -0.161294, 0.380535,
		36.563271, 31.931978, 24.098848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.334839, 31.294851, 20.107470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.250767, 30.969065, 20.323792>,  <42.200325, 30.773592, 20.453585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.250767, 30.969065, 20.323792>,  <42.334839, 31.294851, 20.107470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250767, 30.969065, 20.323792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410637, 0.575544, 0.707196,
		-0.887245, -0.073439, -0.455416,
		-0.210176, -0.814467, 0.540805,
		42.187714, 30.724724, 20.486032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553448, 31.259829, 20.321239>,  <42.334839, 31.294851, 20.107470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553448, 31.259829, 20.321239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.826065, 31.095690, 20.563601>,  <41.989635, 30.997206, 20.709017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.826065, 31.095690, 20.563601>,  <41.553448, 31.259829, 20.321239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826065, 31.095690, 20.563601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367681, 0.523855, 0.768366,
		-0.632701, -0.746452, 0.206152,
		0.681542, -0.410348, 0.605900,
		42.030529, 30.972586, 20.745371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180008, 30.953104, 20.855913>,  <41.553448, 31.259829, 20.321239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180008, 30.953104, 20.855913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.554749, 30.990704, 20.990658>,  <41.779594, 31.013264, 21.071505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.554749, 30.990704, 20.990658>,  <41.180008, 30.953104, 20.855913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554749, 30.990704, 20.990658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348761, 0.322695, 0.879905,
		-0.025994, -0.941824, 0.335100,
		0.936851, 0.093998, 0.336860,
		41.835804, 31.018904, 21.091715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113628, 30.790520, 21.513596>,  <41.180008, 30.953104, 20.855913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113628, 30.790520, 21.513596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.464748, 30.982008, 21.506737>,  <41.675419, 31.096901, 21.502623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.464748, 30.982008, 21.506737>,  <41.113628, 30.790520, 21.513596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464748, 30.982008, 21.506737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259265, 0.504885, 0.823330,
		0.402799, -0.718275, 0.567304,
		0.877801, 0.478719, -0.017144,
		41.728088, 31.125624, 21.501593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403542, 30.735533, 22.237648>,  <41.113628, 30.790520, 21.513596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403542, 30.735533, 22.237648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.574192, 31.044428, 22.049334>,  <41.676582, 31.229765, 21.936344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.574192, 31.044428, 22.049334>,  <41.403542, 30.735533, 22.237648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574192, 31.044428, 22.049334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283634, 0.608512, 0.741124,
		0.858804, -0.182650, 0.478639,
		0.426623, 0.772239, -0.470787,
		41.702179, 31.276100, 21.908098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857197, 31.062632, 22.723907>,  <41.403542, 30.735533, 22.237648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857197, 31.062632, 22.723907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.770191, 31.341213, 22.450371>,  <41.717987, 31.508362, 22.286249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.770191, 31.341213, 22.450371>,  <41.857197, 31.062632, 22.723907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770191, 31.341213, 22.450371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266408, 0.631653, 0.728039,
		0.938996, 0.340542, 0.048145,
		-0.217517, 0.696452, -0.683843,
		41.704937, 31.550148, 22.245218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197742, 31.699106, 23.018953>,  <41.857197, 31.062632, 22.723907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197742, 31.699106, 23.018953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.950317, 31.834393, 22.735268>,  <41.801861, 31.915565, 22.565056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.950317, 31.834393, 22.735268>,  <42.197742, 31.699106, 23.018953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950317, 31.834393, 22.735268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185656, 0.814144, 0.550182,
		0.763485, 0.471994, -0.440808,
		-0.618564, 0.338217, -0.709216,
		41.764748, 31.935858, 22.522503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404701, 32.389141, 22.951868>,  <42.197742, 31.699106, 23.018953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404701, 32.389141, 22.951868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.032070, 32.356731, 22.810110>,  <41.808491, 32.337288, 22.725056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.032070, 32.356731, 22.810110>,  <42.404701, 32.389141, 22.951868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032070, 32.356731, 22.810110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222717, 0.897681, 0.380220,
		0.287328, 0.433135, -0.854305,
		-0.931579, -0.081020, -0.354395,
		41.752598, 32.332424, 22.703791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311790, 32.940849, 22.651194>,  <42.404701, 32.389141, 22.951868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311790, 32.940849, 22.651194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.934879, 32.829926, 22.726246>,  <41.708733, 32.763371, 22.771278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.934879, 32.829926, 22.726246>,  <42.311790, 32.940849, 22.651194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934879, 32.829926, 22.726246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161371, 0.867142, 0.471195,
		-0.293371, 0.413719, -0.861841,
		-0.942281, -0.277311, 0.187632,
		41.652195, 32.746731, 22.782536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849556, 33.510529, 22.559332>,  <42.311790, 32.940849, 22.651194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849556, 33.510529, 22.559332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.629002, 33.258030, 22.777508>,  <41.496670, 33.106529, 22.908413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.629002, 33.258030, 22.777508>,  <41.849556, 33.510529, 22.559332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629002, 33.258030, 22.777508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342874, 0.767506, 0.541639,
		-0.760537, 0.111632, -0.639626,
		-0.551381, -0.631247, 0.545441,
		41.463589, 33.068657, 22.941139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188267, 33.803078, 22.714544>,  <41.849556, 33.510529, 22.559332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188267, 33.803078, 22.714544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.199139, 33.519588, 22.996531>,  <41.205662, 33.349495, 23.165722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.199139, 33.519588, 22.996531>,  <41.188267, 33.803078, 22.714544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199139, 33.519588, 22.996531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506280, 0.598331, 0.621032,
		-0.861941, -0.373789, -0.342550,
		0.027177, -0.708719, 0.704967,
		41.207291, 33.306973, 23.208021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547298, 33.874104, 23.143309>,  <41.188267, 33.803078, 22.714544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547298, 33.874104, 23.143309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.818436, 33.688019, 23.371029>,  <40.981117, 33.576370, 23.507662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.818436, 33.688019, 23.371029>,  <40.547298, 33.874104, 23.143309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818436, 33.688019, 23.371029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227106, 0.603982, 0.763956,
		-0.699247, -0.647137, 0.303755,
		0.677847, -0.465209, 0.569302,
		41.021790, 33.548454, 23.541819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804974, 33.800926, 23.138288>,  <40.547298, 33.874104, 23.143309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804974, 33.800926, 23.138288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.473930, 33.997292, 23.029425>,  <39.275303, 34.115112, 22.964108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.473930, 33.997292, 23.029425>,  <39.804974, 33.800926, 23.138288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473930, 33.997292, 23.029425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076619, -0.381525, -0.921177,
		-0.556054, -0.783225, 0.278140,
		-0.827607, 0.490914, -0.272159,
		39.225647, 34.144566, 22.947777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486359, 33.298504, 22.730988>,  <39.804974, 33.800926, 23.138288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486359, 33.298504, 22.730988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.312332, 33.644016, 22.629314>,  <39.207916, 33.851322, 22.568312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.312332, 33.644016, 22.629314>,  <39.486359, 33.298504, 22.730988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312332, 33.644016, 22.629314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121185, -0.335903, -0.934068,
		-0.892208, -0.375575, 0.250815,
		-0.435062, 0.863778, -0.254181,
		39.181812, 33.903149, 22.553061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904926, 33.108555, 22.445692>,  <39.486359, 33.298504, 22.730988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904926, 33.108555, 22.445692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.990799, 33.460140, 22.275360>,  <39.042324, 33.671093, 22.173161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.990799, 33.460140, 22.275360>,  <38.904926, 33.108555, 22.445692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990799, 33.460140, 22.275360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136156, -0.404804, -0.904210,
		-0.967146, 0.252101, 0.032770,
		0.214686, 0.878965, -0.425830,
		39.055206, 33.723831, 22.147612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370380, 33.207344, 21.904449>,  <38.904926, 33.108555, 22.445692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370380, 33.207344, 21.904449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.685337, 33.442684, 21.830849>,  <38.874310, 33.583889, 21.786688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.685337, 33.442684, 21.830849>,  <38.370380, 33.207344, 21.904449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685337, 33.442684, 21.830849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027637, -0.264491, -0.963992,
		-0.615832, 0.764126, -0.191997,
		0.787393, 0.588351, -0.184000,
		38.921555, 33.619190, 21.775648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152756, 33.632496, 21.234207>,  <38.370380, 33.207344, 21.904449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152756, 33.632496, 21.234207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.552078, 33.636642, 21.257128>,  <38.791672, 33.639130, 21.270880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.552078, 33.636642, 21.257128>,  <38.152756, 33.632496, 21.234207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552078, 33.636642, 21.257128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057982, -0.267850, -0.961714,
		0.005382, 0.963405, -0.267997,
		0.998303, 0.010363, 0.057302,
		38.851570, 33.639751, 21.274319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375317, 33.967018, 20.662619>,  <38.152756, 33.632496, 21.234207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375317, 33.967018, 20.662619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.728535, 33.809742, 20.765099>,  <38.940464, 33.715378, 20.826588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.728535, 33.809742, 20.765099>,  <38.375317, 33.967018, 20.662619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728535, 33.809742, 20.765099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169331, -0.242201, -0.955335,
		0.437680, 0.886984, -0.147294,
		0.883042, -0.393190, 0.256201,
		38.993446, 33.691784, 20.841959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927181, 34.257565, 20.151939>,  <38.375317, 33.967018, 20.662619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927181, 34.257565, 20.151939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.040188, 33.914860, 20.324512>,  <39.107990, 33.709236, 20.428057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.040188, 33.914860, 20.324512>,  <38.927181, 34.257565, 20.151939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040188, 33.914860, 20.324512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287208, -0.353576, -0.890222,
		0.915257, 0.375414, 0.146179,
		0.282516, -0.856766, 0.431435,
		39.124943, 33.657829, 20.453943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570518, 34.083904, 19.710087>,  <38.927181, 34.257565, 20.151939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570518, 34.083904, 19.710087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.478920, 33.732273, 19.877316>,  <39.423962, 33.521294, 19.977652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.478920, 33.732273, 19.877316>,  <39.570518, 34.083904, 19.710087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478920, 33.732273, 19.877316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333773, -0.474356, -0.814605,
		0.914416, -0.047001, 0.402038,
		-0.228996, -0.879078, 0.418071,
		39.410221, 33.468552, 20.002737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026062, 33.661758, 19.466335>,  <39.570518, 34.083904, 19.710087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026062, 33.661758, 19.466335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.751774, 33.399200, 19.592150>,  <39.587200, 33.241665, 19.667639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.751774, 33.399200, 19.592150>,  <40.026062, 33.661758, 19.466335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751774, 33.399200, 19.592150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215810, -0.596050, -0.773402,
		0.695138, -0.462456, 0.550379,
		-0.685718, -0.656399, 0.314534,
		39.546059, 33.202282, 19.686510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264290, 33.035446, 19.271904>,  <40.026062, 33.661758, 19.466335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264290, 33.035446, 19.271904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.878902, 32.967602, 19.354818>,  <39.647671, 32.926895, 19.404568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.878902, 32.967602, 19.354818>,  <40.264290, 33.035446, 19.271904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878902, 32.967602, 19.354818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019114, -0.728427, -0.684857,
		0.267150, -0.663798, 0.698572,
		-0.963466, -0.169607, 0.207287,
		39.589863, 32.916721, 19.417004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165955, 32.311760, 19.386185>,  <40.264290, 33.035446, 19.271904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165955, 32.311760, 19.386185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.801472, 32.447079, 19.292160>,  <39.582783, 32.528271, 19.235744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.801472, 32.447079, 19.292160>,  <40.165955, 32.311760, 19.386185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801472, 32.447079, 19.292160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035481, -0.632952, -0.773378,
		-0.410412, -0.696369, 0.588755,
		-0.911209, 0.338293, -0.235063,
		39.528111, 32.548569, 19.221642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002266, 31.798351, 18.997118>,  <40.165955, 32.311760, 19.386185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002266, 31.798351, 18.997118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.689137, 32.035831, 18.922594>,  <39.501259, 32.178318, 18.877880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.689137, 32.035831, 18.922594>,  <40.002266, 31.798351, 18.997118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689137, 32.035831, 18.922594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197555, -0.521055, -0.830346,
		-0.590054, -0.613205, 0.525181,
		-0.782821, 0.593701, -0.186309,
		39.454292, 32.213943, 18.866701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420593, 31.374161, 18.947533>,  <40.002266, 31.798351, 18.997118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420593, 31.374161, 18.947533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.369438, 31.711473, 18.738718>,  <39.338745, 31.913860, 18.613430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.369438, 31.711473, 18.738718>,  <39.420593, 31.374161, 18.947533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369438, 31.711473, 18.738718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295976, -0.534826, -0.791429,
		-0.946595, 0.053293, 0.317990,
		-0.127892, 0.843280, -0.522037,
		39.331070, 31.964458, 18.582108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720539, 31.324474, 18.635517>,  <39.420593, 31.374161, 18.947533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720539, 31.324474, 18.635517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.984550, 31.558800, 18.447395>,  <39.142956, 31.699394, 18.334522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.984550, 31.558800, 18.447395>,  <38.720539, 31.324474, 18.635517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984550, 31.558800, 18.447395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066454, -0.578053, -0.813289,
		-0.748295, 0.568048, -0.342602,
		0.660029, 0.585813, -0.470303,
		39.182560, 31.734543, 18.306305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856056, 31.454954, 19.390366>,  <38.720539, 31.324474, 18.635517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856056, 31.454954, 19.390366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.594955, 31.151987, 19.396557>,  <38.438297, 30.970207, 19.400270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.594955, 31.151987, 19.396557>,  <38.856056, 31.454954, 19.390366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594955, 31.151987, 19.396557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304336, 0.280878, 0.910213,
		-0.693758, 0.589429, -0.413852,
		-0.652748, -0.757417, 0.015477,
		38.399132, 30.924763, 19.401199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214046, 31.725498, 19.543585>,  <38.856056, 31.454954, 19.390366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214046, 31.725498, 19.543585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.182922, 31.343267, 19.657299>,  <38.164249, 31.113930, 19.725527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.182922, 31.343267, 19.657299>,  <38.214046, 31.725498, 19.543585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182922, 31.343267, 19.657299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359135, 0.292870, 0.886143,
		-0.930037, -0.033147, -0.365969,
		-0.077808, -0.955577, 0.284284,
		38.159580, 31.056595, 19.742584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580650, 31.784191, 19.960722>,  <38.214046, 31.725498, 19.543585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580650, 31.784191, 19.960722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.774223, 31.442394, 20.036249>,  <37.890366, 31.237316, 20.081566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.774223, 31.442394, 20.036249>,  <37.580650, 31.784191, 19.960722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774223, 31.442394, 20.036249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235531, 0.080622, 0.968517,
		-0.842813, -0.513170, -0.162244,
		0.483934, -0.854492, 0.188817,
		37.919403, 31.186047, 20.092894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049351, 31.216581, 20.277872>,  <37.580650, 31.784191, 19.960722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049351, 31.216581, 20.277872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.424149, 31.143639, 20.397064>,  <37.649025, 31.099873, 20.468580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.424149, 31.143639, 20.397064>,  <37.049351, 31.216581, 20.277872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424149, 31.143639, 20.397064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320503, -0.109313, 0.940919,
		-0.139021, -0.977135, -0.160875,
		0.936990, -0.182368, 0.297978,
		37.705246, 31.088932, 20.486458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948143, 30.839439, 20.843321>,  <37.049351, 31.216581, 20.277872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948143, 30.839439, 20.843321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.327988, 30.961311, 20.872723>,  <37.555897, 31.034435, 20.890364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.327988, 30.961311, 20.872723>,  <36.948143, 30.839439, 20.843321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327988, 30.961311, 20.872723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068662, -0.026589, 0.997286,
		0.305808, -0.952083, -0.004329,
		0.949614, 0.304680, 0.073503,
		37.612873, 31.052715, 20.894773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194225, 30.385693, 21.365946>,  <36.948143, 30.839439, 20.843321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194225, 30.385693, 21.365946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.433369, 30.705223, 21.339281>,  <37.576855, 30.896942, 21.323282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.433369, 30.705223, 21.339281>,  <37.194225, 30.385693, 21.365946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433369, 30.705223, 21.339281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039690, 0.112558, 0.992852,
		0.800621, -0.590936, 0.098999,
		0.597855, 0.798828, -0.066662,
		37.612724, 30.944872, 21.319283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711521, 30.306339, 21.886530>,  <37.194225, 30.385693, 21.365946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711521, 30.306339, 21.886530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.705147, 30.697851, 21.804813>,  <37.701324, 30.932758, 21.755783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.705147, 30.697851, 21.804813>,  <37.711521, 30.306339, 21.886530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705147, 30.697851, 21.804813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008092, 0.204436, 0.978846,
		0.999840, 0.013943, -0.011178,
		-0.015933, 0.978781, -0.204291,
		37.700367, 30.991486, 21.743526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311687, 29.868191, 21.938480>,  <37.711521, 30.306339, 21.886530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311687, 29.868191, 21.938480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.243206, 29.505926, 22.093639>,  <38.202118, 29.288567, 22.186735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.243206, 29.505926, 22.093639>,  <38.311687, 29.868191, 21.938480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243206, 29.505926, 22.093639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072237, -0.404192, -0.911817,
		0.982584, -0.128086, 0.134622,
		-0.171204, -0.905662, 0.387900,
		38.191845, 29.234228, 22.210009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806648, 29.511494, 21.678555>,  <38.311687, 29.868191, 21.938480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806648, 29.511494, 21.678555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.531807, 29.242720, 21.789112>,  <38.366901, 29.081455, 21.855446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.531807, 29.242720, 21.789112>,  <38.806648, 29.511494, 21.678555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531807, 29.242720, 21.789112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064876, -0.435634, -0.897783,
		0.723658, -0.598938, 0.342918,
		-0.687103, -0.671935, 0.276393,
		38.325676, 29.041140, 21.872030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116070, 28.825964, 21.540443>,  <38.806648, 29.511494, 21.678555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116070, 28.825964, 21.540443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.719604, 28.775688, 21.557362>,  <38.481724, 28.745523, 21.567513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.719604, 28.775688, 21.557362>,  <39.116070, 28.825964, 21.540443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719604, 28.775688, 21.557362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026333, -0.499120, -0.866133,
		0.129972, -0.857369, 0.498021,
		-0.991168, -0.125688, 0.042295,
		38.422253, 28.737982, 21.570049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090584, 28.233652, 21.672621>,  <39.116070, 28.825964, 21.540443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090584, 28.233652, 21.672621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.745770, 28.332487, 21.495605>,  <38.538879, 28.391788, 21.389397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.745770, 28.332487, 21.495605>,  <39.090584, 28.233652, 21.672621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745770, 28.332487, 21.495605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171892, -0.678856, -0.713869,
		-0.476805, -0.691451, 0.542727,
		-0.862038, 0.247086, -0.442537,
		38.487160, 28.406612, 21.362844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823452, 27.639809, 21.456968>,  <39.090584, 28.233652, 21.672621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823452, 27.639809, 21.456968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.613777, 27.910961, 21.250782>,  <38.487972, 28.073652, 21.127069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.613777, 27.910961, 21.250782>,  <38.823452, 27.639809, 21.456968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613777, 27.910961, 21.250782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060029, -0.633196, -0.771660,
		-0.849485, -0.373551, 0.372605,
		-0.524186, 0.677881, -0.515467,
		38.456520, 28.114325, 21.096142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372719, 27.239578, 21.057571>,  <38.823452, 27.639809, 21.456968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372719, 27.239578, 21.057571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.386574, 27.602839, 20.890686>,  <38.394886, 27.820795, 20.790554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.386574, 27.602839, 20.890686>,  <38.372719, 27.239578, 21.057571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386574, 27.602839, 20.890686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019484, -0.416771, -0.908803,
		-0.999210, 0.039605, 0.003259,
		0.034635, 0.908148, -0.417213,
		38.396965, 27.875282, 20.765522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949284, 27.149965, 20.423731>,  <38.372719, 27.239578, 21.057571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949284, 27.149965, 20.423731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.137817, 27.495684, 20.353483>,  <38.250938, 27.703115, 20.311335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.137817, 27.495684, 20.353483>,  <37.949284, 27.149965, 20.423731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137817, 27.495684, 20.353483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001392, -0.198393, -0.980122,
		-0.881956, 0.462206, -0.092305,
		0.471330, 0.864295, -0.175617,
		38.279217, 27.754972, 20.300798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738949, 27.340322, 19.837080>,  <37.949284, 27.149965, 20.423731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738949, 27.340322, 19.837080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.087639, 27.534006, 19.867111>,  <38.296852, 27.650217, 19.885130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.087639, 27.534006, 19.867111>,  <37.738949, 27.340322, 19.837080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087639, 27.534006, 19.867111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110285, -0.044599, -0.992899,
		-0.477424, 0.873814, -0.092280,
		0.871724, 0.484211, 0.075076,
		38.349155, 27.679270, 19.889633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800381, 27.786671, 19.273674>,  <37.738949, 27.340322, 19.837080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800381, 27.786671, 19.273674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.184109, 27.743031, 19.377834>,  <38.414345, 27.716846, 19.440331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.184109, 27.743031, 19.377834>,  <37.800381, 27.786671, 19.273674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184109, 27.743031, 19.377834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226024, -0.255937, -0.939899,
		0.169189, 0.960517, -0.220865,
		0.959317, -0.109099, 0.260401,
		38.471905, 27.710300, 19.455956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.322071, 32.754707, 34.950680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.570992, 32.918259, 34.683678>,  <38.720345, 33.016388, 34.523476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.570992, 32.918259, 34.683678>,  <38.322071, 32.754707, 34.950680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570992, 32.918259, 34.683678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628432, -0.247454, -0.737455,
		-0.466703, 0.878400, 0.102959,
		0.622303, 0.408876, -0.667502,
		38.757683, 33.040920, 34.483425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968578, 33.313789, 34.465252>,  <38.322071, 32.754707, 34.950680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968578, 33.313789, 34.465252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.290588, 33.167431, 34.278469>,  <38.483795, 33.079617, 34.166401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.290588, 33.167431, 34.278469>,  <37.968578, 33.313789, 34.465252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290588, 33.167431, 34.278469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583136, -0.343444, -0.736206,
		0.109001, 0.864966, -0.489849,
		0.805028, -0.365896, -0.466957,
		38.532097, 33.057663, 34.138382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925644, 33.544182, 33.749977>,  <37.968578, 33.313789, 34.465252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925644, 33.544182, 33.749977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162167, 33.221794, 33.761040>,  <38.304081, 33.028362, 33.767677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162167, 33.221794, 33.761040>,  <37.925644, 33.544182, 33.749977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162167, 33.221794, 33.761040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431893, -0.345452, -0.833145,
		0.681044, 0.480702, -0.552362,
		0.591310, -0.805970, 0.027657,
		38.339558, 32.980003, 33.769337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304260, 33.524891, 33.142807>,  <37.925644, 33.544182, 33.749977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304260, 33.524891, 33.142807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.338806, 33.148857, 33.274734>,  <38.359535, 32.923237, 33.353889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.338806, 33.148857, 33.274734>,  <38.304260, 33.524891, 33.142807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338806, 33.148857, 33.274734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230531, -0.340926, -0.911386,
		0.969225, 0.002680, -0.246164,
		0.086366, -0.940086, 0.329816,
		38.364716, 32.866833, 33.373680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742023, 33.122509, 32.622318>,  <38.304260, 33.524891, 33.142807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742023, 33.122509, 32.622318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.559460, 32.849701, 32.850895>,  <38.449921, 32.686016, 32.988041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.559460, 32.849701, 32.850895>,  <38.742023, 33.122509, 32.622318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559460, 32.849701, 32.850895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243574, -0.521931, -0.817472,
		0.855781, -0.512291, 0.072093,
		-0.456411, -0.682016, 0.571439,
		38.422535, 32.645096, 33.022327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927288, 32.407848, 32.298061>,  <38.742023, 33.122509, 32.622318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927288, 32.407848, 32.298061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.585442, 32.359909, 32.500156>,  <38.380333, 32.331146, 32.621414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.585442, 32.359909, 32.500156>,  <38.927288, 32.407848, 32.298061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585442, 32.359909, 32.500156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384849, -0.507011, -0.771253,
		0.348590, -0.853567, 0.387179,
		-0.854621, -0.119845, 0.505233,
		38.329056, 32.323956, 32.651726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704140, 31.723528, 32.345577>,  <38.927288, 32.407848, 32.298061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704140, 31.723528, 32.345577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.360016, 31.905251, 32.438068>,  <38.153542, 32.014286, 32.493561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.360016, 31.905251, 32.438068>,  <38.704140, 31.723528, 32.345577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360016, 31.905251, 32.438068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459187, -0.493663, -0.738542,
		-0.221378, -0.741554, 0.633317,
		-0.860314, 0.454307, 0.231226,
		38.101921, 32.041542, 32.507435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151844, 31.228415, 32.451954>,  <38.704140, 31.723528, 32.345577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151844, 31.228415, 32.451954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.968079, 31.565086, 32.338451>,  <37.857819, 31.767090, 32.270351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.968079, 31.565086, 32.338451>,  <38.151844, 31.228415, 32.451954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968079, 31.565086, 32.338451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331642, -0.458907, -0.824268,
		-0.823986, -0.284573, 0.489964,
		-0.459413, 0.841678, -0.283757,
		37.830254, 31.817589, 32.253323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501556, 31.007082, 32.401798>,  <38.151844, 31.228415, 32.451954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501556, 31.007082, 32.401798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.525280, 31.337254, 32.177246>,  <37.539513, 31.535357, 32.042515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.525280, 31.337254, 32.177246>,  <37.501556, 31.007082, 32.401798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525280, 31.337254, 32.177246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257082, -0.530773, -0.807582,
		-0.964568, 0.192219, 0.180723,
		0.059310, 0.825428, -0.561383,
		37.543072, 31.584883, 32.008831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937607, 30.950672, 32.043518>,  <37.501556, 31.007082, 32.401798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937607, 30.950672, 32.043518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.182911, 31.202250, 31.852381>,  <37.330093, 31.353195, 31.737698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.182911, 31.202250, 31.852381>,  <36.937607, 30.950672, 32.043518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182911, 31.202250, 31.852381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202991, -0.459153, -0.864854,
		-0.763349, 0.627383, -0.153913,
		0.613264, 0.628943, -0.477847,
		37.366890, 31.390932, 31.709026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737972, 30.867414, 31.405792>,  <36.937607, 30.950672, 32.043518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737972, 30.867414, 31.405792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.030228, 31.114798, 31.290089>,  <37.205582, 31.263227, 31.220667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.030228, 31.114798, 31.290089>,  <36.737972, 30.867414, 31.405792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030228, 31.114798, 31.290089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094299, -0.328194, -0.939892,
		-0.676219, 0.714000, -0.181472,
		0.730641, 0.618460, -0.289260,
		37.249420, 31.300335, 31.203310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515854, 31.214132, 30.751938>,  <36.737972, 30.867414, 31.405792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515854, 31.214132, 30.751938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912491, 31.263063, 30.735100>,  <37.150475, 31.292421, 30.724997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912491, 31.263063, 30.735100>,  <36.515854, 31.214132, 30.751938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912491, 31.263063, 30.735100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002117, -0.340682, -0.940176,
		-0.129350, 0.932187, -0.338078,
		0.991597, 0.122327, -0.042094,
		37.209969, 31.299761, 30.722471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075714, 31.818789, 30.423866>,  <36.515854, 31.214132, 30.751938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075714, 31.818789, 30.423866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.757030, 31.985100, 30.248421>,  <35.565819, 32.084885, 30.143154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.757030, 31.985100, 30.248421>,  <36.075714, 31.818789, 30.423866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757030, 31.985100, 30.248421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296158, 0.364042, 0.883043,
		0.526822, 0.833428, -0.166900,
		-0.796711, 0.415778, -0.438612,
		35.518017, 32.109833, 30.116837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117596, 32.583431, 30.530649>,  <36.075714, 31.818789, 30.423866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117596, 32.583431, 30.530649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.737637, 32.468491, 30.481455>,  <35.509663, 32.399525, 30.451939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.737637, 32.468491, 30.481455>,  <36.117596, 32.583431, 30.530649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737637, 32.468491, 30.481455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279465, 0.604569, 0.745920,
		-0.139989, 0.742916, -0.654583,
		-0.949896, -0.287353, -0.122986,
		35.452667, 32.382286, 30.444559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906780, 33.041786, 30.942669>,  <36.117596, 32.583431, 30.530649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906780, 33.041786, 30.942669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.575413, 32.845623, 30.834433>,  <35.376591, 32.727924, 30.769491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.575413, 32.845623, 30.834433>,  <35.906780, 33.041786, 30.942669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575413, 32.845623, 30.834433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502093, 0.436091, 0.746812,
		-0.248244, 0.754533, -0.607498,
		-0.828419, -0.490412, -0.270589,
		35.326885, 32.698498, 30.753256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362232, 33.596748, 30.707073>,  <35.906780, 33.041786, 30.942669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362232, 33.596748, 30.707073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.190426, 33.263222, 30.845789>,  <35.087341, 33.063107, 30.929018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.190426, 33.263222, 30.845789>,  <35.362232, 33.596748, 30.707073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190426, 33.263222, 30.845789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414201, 0.523137, 0.744825,
		-0.802468, 0.176272, -0.570064,
		-0.429514, -0.833819, 0.346789,
		35.061573, 33.013077, 30.949825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685944, 33.703148, 30.780888>,  <35.362232, 33.596748, 30.707073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685944, 33.703148, 30.780888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.726681, 33.396282, 31.034212>,  <34.751122, 33.212162, 31.186207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.726681, 33.396282, 31.034212>,  <34.685944, 33.703148, 30.780888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726681, 33.396282, 31.034212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321139, 0.577185, 0.750818,
		-0.941540, -0.279845, -0.187586,
		0.101840, -0.767167, 0.633312,
		34.757233, 33.166134, 31.224205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098057, 33.714821, 31.239973>,  <34.685944, 33.703148, 30.780888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098057, 33.714821, 31.239973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341129, 33.465282, 31.436560>,  <34.486973, 33.315559, 31.554512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341129, 33.465282, 31.436560>,  <34.098057, 33.714821, 31.239973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341129, 33.465282, 31.436560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269113, 0.420474, 0.866476,
		-0.747195, -0.658802, 0.087630,
		0.607682, -0.623844, 0.491468,
		34.523434, 33.278130, 31.584000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748508, 33.583241, 31.906380>,  <34.098057, 33.714821, 31.239973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748508, 33.583241, 31.906380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.127945, 33.466526, 31.955439>,  <34.355606, 33.396500, 31.984875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.127945, 33.466526, 31.955439>,  <33.748508, 33.583241, 31.906380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127945, 33.466526, 31.955439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062096, 0.551532, 0.831839,
		-0.310361, -0.781457, 0.541295,
		0.948588, -0.291783, 0.122649,
		34.412521, 33.378990, 31.992233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806068, 33.330177, 32.614063>,  <33.748508, 33.583241, 31.906380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806068, 33.330177, 32.614063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175316, 33.443741, 32.510338>,  <34.396866, 33.511879, 32.448101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175316, 33.443741, 32.510338>,  <33.806068, 33.330177, 32.614063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175316, 33.443741, 32.510338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068753, 0.541660, 0.837782,
		0.378313, -0.791202, 0.480498,
		0.923121, 0.283908, -0.259314,
		34.452251, 33.528912, 32.432545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305794, 33.102047, 33.189919>,  <33.806068, 33.330177, 32.614063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305794, 33.102047, 33.189919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.466949, 33.399620, 32.976662>,  <34.563644, 33.578163, 32.848705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.466949, 33.399620, 32.976662>,  <34.305794, 33.102047, 33.189919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466949, 33.399620, 32.976662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182007, 0.505757, 0.843258,
		0.896969, -0.436776, 0.068363,
		0.402890, 0.743933, -0.533145,
		34.587818, 33.622799, 32.816719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955891, 33.323441, 33.543941>,  <34.305794, 33.102047, 33.189919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955891, 33.323441, 33.543941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.847103, 33.628475, 33.309170>,  <34.781830, 33.811497, 33.168308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.847103, 33.628475, 33.309170>,  <34.955891, 33.323441, 33.543941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847103, 33.628475, 33.309170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194969, 0.640939, 0.742418,
		0.942347, 0.087483, -0.322999,
		-0.271972, 0.762590, -0.586931,
		34.765511, 33.857254, 33.133091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387501, 33.830940, 33.750313>,  <34.955891, 33.323441, 33.543941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387501, 33.830940, 33.750313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.090523, 34.028519, 33.569298>,  <34.912338, 34.147068, 33.460690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.090523, 34.028519, 33.569298>,  <35.387501, 33.830940, 33.750313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090523, 34.028519, 33.569298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055143, 0.718296, 0.693549,
		0.667636, 0.489966, -0.560531,
		-0.742443, 0.493948, -0.452542,
		34.867790, 34.176704, 33.433537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663391, 34.518307, 33.701935>,  <35.387501, 33.830940, 33.750313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663391, 34.518307, 33.701935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.266258, 34.556416, 33.673065>,  <35.027977, 34.579281, 33.655743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.266258, 34.556416, 33.673065>,  <35.663391, 34.518307, 33.701935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266258, 34.556416, 33.673065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015995, 0.704303, 0.709719,
		0.118450, 0.703477, -0.700778,
		-0.992831, 0.095275, -0.072172,
		34.968410, 34.584999, 33.651413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564114, 35.230396, 33.558762>,  <35.663391, 34.518307, 33.701935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564114, 35.230396, 33.558762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.243595, 35.062099, 33.728893>,  <35.051285, 34.961121, 33.830971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.243595, 35.062099, 33.728893>,  <35.564114, 35.230396, 33.558762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243595, 35.062099, 33.728893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027529, 0.736106, 0.676306,
		-0.597635, 0.530212, -0.601421,
		-0.801295, -0.420741, 0.425327,
		35.003208, 34.935879, 33.856491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135727, 35.845726, 33.720428>,  <35.564114, 35.230396, 33.558762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135727, 35.845726, 33.720428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012886, 35.532898, 33.937332>,  <34.939182, 35.345200, 34.067474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012886, 35.532898, 33.937332>,  <35.135727, 35.845726, 33.720428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012886, 35.532898, 33.937332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085413, 0.590147, 0.802765,
		-0.947835, 0.200217, -0.248037,
		-0.307106, -0.782074, 0.542260,
		34.920753, 35.298275, 34.100010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338245, 35.588455, 32.967144>,  <35.135727, 35.845726, 33.720428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338245, 35.588455, 32.967144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.226013, 35.952824, 33.088139>,  <35.158672, 36.171444, 33.160736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.226013, 35.952824, 33.088139>,  <35.338245, 35.588455, 32.967144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226013, 35.952824, 33.088139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249932, 0.373612, -0.893279,
		-0.926720, -0.175035, -0.332496,
		-0.280580, 0.910921, 0.302486,
		35.141838, 36.226101, 33.178883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818657, 35.903313, 32.569305>,  <35.338245, 35.588455, 32.967144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818657, 35.903313, 32.569305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121021, 36.126163, 32.706829>,  <35.302441, 36.259876, 32.789345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121021, 36.126163, 32.706829>,  <34.818657, 35.903313, 32.569305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121021, 36.126163, 32.706829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325701, 0.135527, -0.935709,
		-0.567906, 0.819292, -0.079011,
		0.755911, 0.557129, 0.343811,
		35.347794, 36.293301, 32.809971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835224, 36.642582, 32.338917>,  <34.818657, 35.903313, 32.569305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835224, 36.642582, 32.338917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.200691, 36.494434, 32.405899>,  <35.419971, 36.405544, 32.446091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.200691, 36.494434, 32.405899>,  <34.835224, 36.642582, 32.338917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200691, 36.494434, 32.405899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279738, 0.274061, -0.920129,
		0.294896, 0.887534, 0.354007,
		0.913665, -0.370371, 0.167458,
		35.474792, 36.383324, 32.456135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304623, 37.164234, 31.996334>,  <34.835224, 36.642582, 32.338917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304623, 37.164234, 31.996334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.503899, 36.824257, 32.064911>,  <35.623466, 36.620270, 32.106056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.503899, 36.824257, 32.064911>,  <35.304623, 37.164234, 31.996334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503899, 36.824257, 32.064911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488486, 0.111768, -0.865384,
		0.716369, 0.514876, 0.470870,
		0.498194, -0.849948, 0.171442,
		35.653358, 36.569271, 32.116344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100414, 37.363640, 31.759283>,  <35.304623, 37.164234, 31.996334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100414, 37.363640, 31.759283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.044067, 36.967773, 31.748560>,  <36.010262, 36.730255, 31.742126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.044067, 36.967773, 31.748560>,  <36.100414, 37.363640, 31.759283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044067, 36.967773, 31.748560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545550, -0.055000, -0.836271,
		0.826155, -0.132424, 0.547660,
		-0.140864, -0.989666, -0.026806,
		36.001808, 36.670876, 31.740519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684093, 37.158169, 31.697258>,  <36.100414, 37.363640, 31.759283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684093, 37.158169, 31.697258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.483475, 36.834972, 31.573586>,  <36.363102, 36.641052, 31.499382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.483475, 36.834972, 31.573586>,  <36.684093, 37.158169, 31.697258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483475, 36.834972, 31.573586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601896, -0.069189, -0.795572,
		0.621425, -0.585114, 0.521030,
		-0.501550, -0.807994, -0.309182,
		36.333012, 36.592575, 31.480831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216076, 36.622997, 31.274984>,  <36.684093, 37.158169, 31.697258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216076, 36.622997, 31.274984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.853741, 36.544163, 31.124990>,  <36.636341, 36.496861, 31.034994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.853741, 36.544163, 31.124990>,  <37.216076, 36.622997, 31.274984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853741, 36.544163, 31.124990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417712, -0.268200, -0.868093,
		0.070521, -0.942987, 0.325272,
		-0.905838, -0.197089, -0.374984,
		36.581989, 36.485035, 31.012495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338039, 35.963257, 30.894880>,  <37.216076, 36.622997, 31.274984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338039, 35.963257, 30.894880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.982632, 36.080021, 30.753273>,  <36.769386, 36.150078, 30.668308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.982632, 36.080021, 30.753273>,  <37.338039, 35.963257, 30.894880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982632, 36.080021, 30.753273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237203, -0.368239, -0.898963,
		-0.392781, -0.882716, 0.257944,
		-0.888514, 0.291910, -0.354021,
		36.716076, 36.167595, 30.647068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016254, 35.389030, 30.529692>,  <37.338039, 35.963257, 30.894880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016254, 35.389030, 30.529692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.813213, 35.691956, 30.365345>,  <36.691391, 35.873711, 30.266737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.813213, 35.691956, 30.365345>,  <37.016254, 35.389030, 30.529692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813213, 35.691956, 30.365345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060425, -0.444407, -0.893785,
		-0.859471, -0.478512, 0.179820,
		-0.507600, 0.757317, -0.410869,
		36.660934, 35.919151, 30.242085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703442, 35.062916, 30.041454>,  <37.016254, 35.389030, 30.529692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703442, 35.062916, 30.041454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.649845, 35.444263, 29.933287>,  <36.617687, 35.673073, 29.868385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.649845, 35.444263, 29.933287>,  <36.703442, 35.062916, 30.041454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649845, 35.444263, 29.933287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102269, -0.258120, -0.960685,
		-0.985692, -0.156377, -0.062915,
		-0.133990, 0.953373, -0.270419,
		36.609650, 35.730274, 29.852161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272480, 35.023838, 29.514622>,  <36.703442, 35.062916, 30.041454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272480, 35.023838, 29.514622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.452240, 35.377602, 29.464243>,  <36.560097, 35.589859, 29.434015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.452240, 35.377602, 29.464243>,  <36.272480, 35.023838, 29.514622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452240, 35.377602, 29.464243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171181, -0.223629, -0.959524,
		-0.876775, 0.409653, -0.251893,
		0.449403, 0.884406, -0.125947,
		36.587059, 35.642925, 29.426458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955349, 35.309952, 28.903074>,  <36.272480, 35.023838, 29.514622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955349, 35.309952, 28.903074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305725, 35.498295, 28.945082>,  <36.515949, 35.611301, 28.970285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305725, 35.498295, 28.945082>,  <35.955349, 35.309952, 28.903074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305725, 35.498295, 28.945082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219754, -0.195645, -0.955736,
		-0.429469, 0.860242, -0.274845,
		0.875936, 0.470857, 0.105018,
		36.568504, 35.639553, 28.976587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022011, 35.672813, 28.198465>,  <35.955349, 35.309952, 28.903074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022011, 35.672813, 28.198465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.380863, 35.676167, 28.375137>,  <36.596176, 35.678177, 28.481140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.380863, 35.676167, 28.375137>,  <36.022011, 35.672813, 28.198465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380863, 35.676167, 28.375137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439269, -0.122969, -0.889899,
		0.046856, 0.992375, -0.114001,
		0.897133, 0.008381, 0.441682,
		36.650002, 35.678680, 28.507643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384541, 36.198250, 27.884884>,  <36.022011, 35.672813, 28.198465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384541, 36.198250, 27.884884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.679916, 35.979435, 28.042601>,  <36.857140, 35.848148, 28.137232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.679916, 35.979435, 28.042601>,  <36.384541, 36.198250, 27.884884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679916, 35.979435, 28.042601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500921, 0.053551, -0.863835,
		0.451431, 0.835397, 0.313564,
		0.738436, -0.547033, 0.394293,
		36.901447, 35.815327, 28.160889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143929, 36.607548, 27.862103>,  <36.384541, 36.198250, 27.884884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143929, 36.607548, 27.862103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.172318, 36.208588, 27.867092>,  <37.189350, 35.969212, 27.870085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.172318, 36.208588, 27.867092>,  <37.143929, 36.607548, 27.862103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172318, 36.208588, 27.867092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573316, 0.030558, -0.818765,
		0.816255, 0.065263, 0.573994,
		0.070975, -0.997400, 0.012473,
		37.193611, 35.909367, 27.870834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858158, 36.465820, 27.791691>,  <37.143929, 36.607548, 27.862103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858158, 36.465820, 27.791691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.659565, 36.132954, 27.692886>,  <37.540409, 35.933235, 27.633604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.659565, 36.132954, 27.692886>,  <37.858158, 36.465820, 27.791691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659565, 36.132954, 27.692886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441749, 0.002741, -0.897134,
		0.747239, -0.554525, 0.366247,
		-0.496479, -0.832163, -0.247009,
		37.510620, 35.883305, 27.618784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356731, 35.908276, 27.613390>,  <37.858158, 36.465820, 27.791691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356731, 35.908276, 27.613390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.003693, 35.803223, 27.457418>,  <37.791870, 35.740192, 27.363836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.003693, 35.803223, 27.457418>,  <38.356731, 35.908276, 27.613390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003693, 35.803223, 27.457418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451570, -0.242854, -0.858549,
		0.130787, -0.933834, 0.332940,
		-0.882598, -0.262632, -0.389929,
		37.738914, 35.724434, 27.340439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517986, 35.281582, 27.191444>,  <38.356731, 35.908276, 27.613390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517986, 35.281582, 27.191444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151718, 35.374714, 27.060390>,  <37.931957, 35.430592, 26.981758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151718, 35.374714, 27.060390>,  <38.517986, 35.281582, 27.191444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151718, 35.374714, 27.060390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314954, -0.090800, -0.944754,
		-0.249719, -0.968269, 0.009810,
		-0.915666, 0.232833, -0.327635,
		37.877018, 35.444565, 26.962101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286541, 34.687923, 26.712193>,  <38.517986, 35.281582, 27.191444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286541, 34.687923, 26.712193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.072021, 35.012440, 26.619070>,  <37.943310, 35.207150, 26.563196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.072021, 35.012440, 26.619070>,  <38.286541, 34.687923, 26.712193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072021, 35.012440, 26.619070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317602, -0.061576, -0.946222,
		-0.781995, -0.581394, -0.224644,
		-0.536296, 0.811288, -0.232804,
		37.911133, 35.255825, 26.549229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946247, 34.516582, 26.117680>,  <38.286541, 34.687923, 26.712193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946247, 34.516582, 26.117680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.925266, 34.915253, 26.092737>,  <37.912678, 35.154453, 26.077772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.925266, 34.915253, 26.092737>,  <37.946247, 34.516582, 26.117680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925266, 34.915253, 26.092737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168439, -0.052718, -0.984301,
		-0.984315, -0.062137, -0.165113,
		-0.052457, 0.996674, -0.062358,
		37.909531, 35.214256, 26.074030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478130, 34.624031, 25.523895>,  <37.946247, 34.516582, 26.117680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478130, 34.624031, 25.523895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.699226, 34.953411, 25.575121>,  <37.831886, 35.151039, 25.605856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.699226, 34.953411, 25.575121>,  <37.478130, 34.624031, 25.523895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699226, 34.953411, 25.575121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139462, 0.060106, -0.988402,
		-0.821600, 0.564191, -0.081617,
		0.552742, 0.823454, 0.128066,
		37.865047, 35.200447, 25.613541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224854, 35.233707, 25.115461>,  <37.478130, 34.624031, 25.523895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224854, 35.233707, 25.115461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.610764, 35.286171, 25.206682>,  <37.842308, 35.317650, 25.261415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.610764, 35.286171, 25.206682>,  <37.224854, 35.233707, 25.115461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610764, 35.286171, 25.206682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253887, -0.237013, -0.937745,
		-0.068943, 0.962612, -0.261964,
		0.964774, 0.131160, 0.228054,
		37.900196, 35.325520, 25.275099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498482, 35.390446, 24.504814>,  <37.224854, 35.233707, 25.115461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498482, 35.390446, 24.504814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.826839, 35.324162, 24.723415>,  <38.023853, 35.284389, 24.854576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.826839, 35.324162, 24.723415>,  <37.498482, 35.390446, 24.504814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826839, 35.324162, 24.723415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503268, -0.242371, -0.829444,
		0.269908, 0.955926, -0.115563,
		0.820897, -0.165715, 0.546504,
		38.073109, 35.274448, 24.887367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951046, 35.846489, 24.242886>,  <37.498482, 35.390446, 24.504814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951046, 35.846489, 24.242886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.149036, 35.541378, 24.409346>,  <38.267830, 35.358311, 24.509222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.149036, 35.541378, 24.409346>,  <37.951046, 35.846489, 24.242886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149036, 35.541378, 24.409346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553406, -0.092490, -0.827760,
		0.669883, 0.640018, 0.376343,
		0.494974, -0.762773, 0.416148,
		38.297527, 35.312546, 24.534189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648071, 35.900349, 24.028603>,  <37.951046, 35.846489, 24.242886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648071, 35.900349, 24.028603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.647110, 35.516911, 24.142504>,  <38.646534, 35.286846, 24.210844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.647110, 35.516911, 24.142504>,  <38.648071, 35.900349, 24.028603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647110, 35.516911, 24.142504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691404, -0.207316, -0.692084,
		0.722464, 0.195215, 0.663277,
		-0.002403, -0.958599, 0.284751,
		38.646389, 35.229332, 24.227928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326248, 35.613075, 23.952187>,  <38.648071, 35.900349, 24.028603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326248, 35.613075, 23.952187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.107037, 35.279610, 23.979515>,  <38.975510, 35.079529, 23.995913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.107037, 35.279610, 23.979515>,  <39.326248, 35.613075, 23.952187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107037, 35.279610, 23.979515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575763, -0.435216, -0.692159,
		0.606761, -0.339989, 0.718504,
		-0.548031, -0.833663, 0.068320,
		38.942627, 35.029510, 24.000011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731777, 35.244053, 23.490660>,  <39.326248, 35.613075, 23.952187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731777, 35.244053, 23.490660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.420696, 34.998920, 23.546671>,  <39.234047, 34.851841, 23.580278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.420696, 34.998920, 23.546671>,  <39.731777, 35.244053, 23.490660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420696, 34.998920, 23.546671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297834, -0.555370, -0.776440,
		0.553597, -0.562136, 0.614437,
		-0.777705, -0.612835, 0.140028,
		39.187386, 34.815071, 23.588680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930428, 34.433735, 23.504658>,  <39.731777, 35.244053, 23.490660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930428, 34.433735, 23.504658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.547764, 34.468239, 23.393408>,  <39.318165, 34.488941, 23.326658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.547764, 34.468239, 23.393408>,  <39.930428, 34.433735, 23.504658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547764, 34.468239, 23.393408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196895, -0.512061, -0.836077,
		-0.214537, -0.854607, 0.472886,
		-0.956664, 0.086260, -0.278124,
		39.260765, 34.494118, 23.309971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310204, 33.846466, 23.835035>,  <39.930428, 34.433735, 23.504658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310204, 33.846466, 23.835035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.696198, 33.765980, 23.902351>,  <40.927792, 33.717690, 23.942741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.696198, 33.765980, 23.902351>,  <40.310204, 33.846466, 23.835035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696198, 33.765980, 23.902351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010987, 0.609990, 0.792333,
		-0.262085, -0.766436, 0.586419,
		0.964983, -0.201215, 0.168290,
		40.985691, 33.705616, 23.952839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258057, 33.702679, 24.513611>,  <40.310204, 33.846466, 23.835035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258057, 33.702679, 24.513611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.644100, 33.771297, 24.434475>,  <40.875725, 33.812469, 24.386993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.644100, 33.771297, 24.434475>,  <40.258057, 33.702679, 24.513611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644100, 33.771297, 24.434475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063784, 0.578770, 0.812993,
		0.253967, -0.797244, 0.547633,
		0.965107, 0.171543, -0.197839,
		40.933632, 33.822762, 24.375124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569092, 33.481037, 25.111050>,  <40.258057, 33.702679, 24.513611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569092, 33.481037, 25.111050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.823437, 33.732529, 24.931995>,  <40.976044, 33.883423, 24.824562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.823437, 33.732529, 24.931995>,  <40.569092, 33.481037, 25.111050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823437, 33.732529, 24.931995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084663, 0.519669, 0.850162,
		0.767145, -0.578485, 0.277208,
		0.635863, 0.628728, -0.447638,
		41.014194, 33.921146, 24.797705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161163, 33.499947, 25.615744>,  <40.569092, 33.481037, 25.111050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161163, 33.499947, 25.615744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.176044, 33.810287, 25.363817>,  <41.184975, 33.996494, 25.212662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.176044, 33.810287, 25.363817>,  <41.161163, 33.499947, 25.615744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176044, 33.810287, 25.363817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015510, 0.629727, 0.776662,
		0.999187, -0.038663, 0.011394,
		0.037203, 0.775854, -0.629815,
		41.187206, 34.043045, 25.174873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735378, 33.818378, 25.764692>,  <41.161163, 33.499947, 25.615744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735378, 33.818378, 25.764692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.426746, 34.036892, 25.634312>,  <41.241566, 34.167999, 25.556084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.426746, 34.036892, 25.634312>,  <41.735378, 33.818378, 25.764692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426746, 34.036892, 25.634312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063291, 0.443929, 0.893824,
		0.632978, 0.710285, -0.307951,
		-0.771579, 0.546280, -0.325951,
		41.195274, 34.200775, 25.536526>
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
