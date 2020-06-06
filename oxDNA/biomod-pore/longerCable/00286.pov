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
	<24.741848, 35.093918, 34.824707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.345085, 35.045219, 34.839111>,  <24.107027, 35.016003, 34.847755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.345085, 35.045219, 34.839111>,  <24.741848, 35.093918, 34.824707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.345085, 35.045219, 34.839111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110715, -0.690633, 0.714680,
		-0.062135, 0.712884, 0.698524,
		-0.991908, -0.121744, 0.036015,
		24.047512, 35.008698, 34.849915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.788280, 35.083073, 34.166424>,  <24.741848, 35.093918, 34.824707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.788280, 35.083073, 34.166424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105253, 35.294334, 34.288475>,  <25.295437, 35.421089, 34.361706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105253, 35.294334, 34.288475>,  <24.788280, 35.083073, 34.166424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.105253, 35.294334, 34.288475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213327, -0.708633, 0.672556,
		0.571438, -0.467863, -0.674213,
		0.792433, 0.528152, 0.305132,
		25.342983, 35.452782, 34.380016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355669, 34.567768, 34.290077>,  <24.788280, 35.083073, 34.166424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355669, 34.567768, 34.290077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443375, 34.909645, 34.478298>,  <25.495998, 35.114773, 34.591232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443375, 34.909645, 34.478298>,  <25.355669, 34.567768, 34.290077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443375, 34.909645, 34.478298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287414, -0.517472, 0.805987,
		0.932371, -0.041480, -0.359114,
		0.219264, 0.854694, 0.470554,
		25.509153, 35.166054, 34.619465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067135, 34.603977, 34.471165>,  <25.355669, 34.567768, 34.290077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067135, 34.603977, 34.471165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850071, 34.833626, 34.716408>,  <25.719833, 34.971416, 34.863556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850071, 34.833626, 34.716408>,  <26.067135, 34.603977, 34.471165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850071, 34.833626, 34.716408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314367, -0.538061, 0.782089,
		0.778907, 0.617149, 0.111497,
		-0.542658, 0.574124, 0.613111,
		25.687273, 35.005863, 34.900341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480358, 34.747017, 35.003353>,  <26.067135, 34.603977, 34.471165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480358, 34.747017, 35.003353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110559, 34.817287, 35.138672>,  <25.888680, 34.859451, 35.219864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110559, 34.817287, 35.138672>,  <26.480358, 34.747017, 35.003353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110559, 34.817287, 35.138672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268406, -0.330154, 0.904962,
		0.270671, 0.927435, 0.258073,
		-0.924497, 0.175679, 0.338292,
		25.833210, 34.869991, 35.240158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423086, 35.150200, 35.672287>,  <26.480358, 34.747017, 35.003353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423086, 35.150200, 35.672287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101040, 34.913021, 35.666615>,  <25.907812, 34.770714, 35.663212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101040, 34.913021, 35.666615>,  <26.423086, 35.150200, 35.672287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101040, 34.913021, 35.666615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225296, -0.327850, 0.917473,
		-0.548659, 0.735479, 0.397546,
		-0.805118, -0.592946, -0.014178,
		25.859505, 34.735138, 35.662361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023819, 35.232052, 36.303226>,  <26.423086, 35.150200, 35.672287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023819, 35.232052, 36.303226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916971, 34.871723, 36.166306>,  <25.852863, 34.655525, 36.084152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916971, 34.871723, 36.166306>,  <26.023819, 35.232052, 36.303226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916971, 34.871723, 36.166306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129670, -0.385575, 0.913520,
		-0.954899, 0.199633, 0.219804,
		-0.267120, -0.900821, -0.342298,
		25.836836, 34.601479, 36.063618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.613102, 34.910759, 36.872990>,  <26.023819, 35.232052, 36.303226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.613102, 34.910759, 36.872990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714483, 34.604794, 36.636124>,  <25.775312, 34.421215, 36.494003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714483, 34.604794, 36.636124>,  <25.613102, 34.910759, 36.872990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.714483, 34.604794, 36.636124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085978, -0.627547, 0.773817,
		-0.963520, -0.145211, -0.224818,
		0.253451, -0.764918, -0.592169,
		25.790518, 34.375317, 36.458473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.093161, 34.375023, 36.862396>,  <25.613102, 34.910759, 36.872990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.093161, 34.375023, 36.862396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427444, 34.179382, 36.762501>,  <25.628016, 34.062000, 36.702564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427444, 34.179382, 36.762501>,  <25.093161, 34.375023, 36.862396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427444, 34.179382, 36.762501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064232, -0.538694, 0.840049,
		-0.545404, -0.685995, -0.481607,
		0.835708, -0.489101, -0.249743,
		25.678158, 34.032654, 36.687580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.941225, 33.699097, 37.050873>,  <25.093161, 34.375023, 36.862396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.941225, 33.699097, 37.050873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.338491, 33.729431, 37.015381>,  <25.576851, 33.747631, 36.994087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.338491, 33.729431, 37.015381>,  <24.941225, 33.699097, 37.050873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.338491, 33.729431, 37.015381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113893, -0.796055, 0.594412,
		-0.025555, -0.600455, -0.799251,
		0.993165, 0.075839, -0.088731,
		25.636440, 33.752182, 36.988762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.164343, 33.043404, 36.919361>,  <24.941225, 33.699097, 37.050873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.164343, 33.043404, 36.919361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502077, 33.220161, 37.040569>,  <25.704718, 33.326218, 37.113297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502077, 33.220161, 37.040569>,  <25.164343, 33.043404, 36.919361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502077, 33.220161, 37.040569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271506, -0.840410, 0.469036,
		0.461929, -0.313752, -0.829567,
		0.844338, 0.441894, 0.303024,
		25.755379, 33.352730, 37.131477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.275940, 32.483513, 37.405972>,  <25.164343, 33.043404, 36.919361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.275940, 32.483513, 37.405972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.210876, 32.336319, 37.772167>,  <25.171839, 32.248001, 37.991886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.210876, 32.336319, 37.772167>,  <25.275940, 32.483513, 37.405972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.210876, 32.336319, 37.772167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980993, 0.039183, 0.190047,
		-0.105807, 0.929005, 0.354619,
		-0.162660, -0.367987, 0.915493,
		25.162079, 32.225922, 38.046814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.428049, 33.012127, 37.890099>,  <25.275940, 32.483513, 37.405972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.428049, 33.012127, 37.890099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.454367, 32.648029, 38.053623>,  <25.470158, 32.429569, 38.151737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.454367, 32.648029, 38.053623>,  <25.428049, 33.012127, 37.890099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.454367, 32.648029, 38.053623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977524, 0.141035, 0.156702,
		-0.200294, 0.389309, 0.899067,
		0.065794, -0.910246, 0.408807,
		25.474106, 32.374954, 38.176266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854074, 33.017178, 38.624100>,  <25.428049, 33.012127, 37.890099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854074, 33.017178, 38.624100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839695, 32.638363, 38.496452>,  <25.831068, 32.411076, 38.419865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839695, 32.638363, 38.496452>,  <25.854074, 33.017178, 38.624100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839695, 32.638363, 38.496452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986853, -0.083989, 0.138085,
		-0.157573, -0.309959, 0.937601,
		-0.035948, -0.947033, -0.319118,
		25.828911, 32.354252, 38.400715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.664909, 33.730888, 38.240860>,  <25.854074, 33.017178, 38.624100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.664909, 33.730888, 38.240860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892218, 33.448589, 38.071632>,  <26.028603, 33.279209, 37.970097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892218, 33.448589, 38.071632>,  <25.664909, 33.730888, 38.240860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.892218, 33.448589, 38.071632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086551, 0.562575, -0.822203,
		0.818278, 0.430616, 0.380777,
		0.568269, -0.705748, -0.423073,
		26.062698, 33.236866, 37.944710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321012, 33.938850, 38.039520>,  <25.664909, 33.730888, 38.240860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321012, 33.938850, 38.039520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193464, 33.649689, 37.794331>,  <26.116936, 33.476192, 37.647217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193464, 33.649689, 37.794331>,  <26.321012, 33.938850, 38.039520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193464, 33.649689, 37.794331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102806, 0.616535, -0.780586,
		0.942206, -0.311924, -0.122277,
		-0.318872, -0.722902, -0.612971,
		26.097803, 33.432819, 37.610439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812502, 33.991760, 37.542053>,  <26.321012, 33.938850, 38.039520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812502, 33.991760, 37.542053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489731, 33.791550, 37.416615>,  <26.296068, 33.671425, 37.341351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489731, 33.791550, 37.416615>,  <26.812502, 33.991760, 37.542053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489731, 33.791550, 37.416615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012958, 0.515801, -0.856611,
		0.590510, -0.695286, -0.409727,
		-0.806926, -0.500528, -0.313595,
		26.247652, 33.641392, 37.322536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921638, 33.794571, 36.872234>,  <26.812502, 33.991760, 37.542053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921638, 33.794571, 36.872234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524464, 33.753178, 36.895458>,  <26.286160, 33.728344, 36.909393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524464, 33.753178, 36.895458>,  <26.921638, 33.794571, 36.872234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524464, 33.753178, 36.895458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087305, 0.305833, -0.948074,
		0.080351, -0.946445, -0.312707,
		-0.992936, -0.103480, 0.058056,
		26.226583, 33.722134, 36.912876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708790, 33.427223, 36.240475>,  <26.921638, 33.794571, 36.872234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708790, 33.427223, 36.240475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383669, 33.610706, 36.384109>,  <26.188597, 33.720795, 36.470291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383669, 33.610706, 36.384109>,  <26.708790, 33.427223, 36.240475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383669, 33.610706, 36.384109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078298, 0.524794, -0.847620,
		-0.577254, -0.717064, -0.390638,
		-0.812802, 0.458706, 0.359084,
		26.139828, 33.748318, 36.491837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213663, 33.438354, 35.721581>,  <26.708790, 33.427223, 36.240475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213663, 33.438354, 35.721581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109749, 33.736801, 35.966797>,  <26.047400, 33.915871, 36.113926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109749, 33.736801, 35.966797>,  <26.213663, 33.438354, 35.721581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109749, 33.736801, 35.966797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177626, 0.587082, -0.789800,
		-0.949189, -0.314071, -0.019986,
		-0.259787, 0.746119, 0.613039,
		26.031813, 33.960636, 36.150707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671049, 33.214661, 36.260334>,  <26.213663, 33.438354, 35.721581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671049, 33.214661, 36.260334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649458, 33.613251, 36.286045>,  <25.636503, 33.852406, 36.301472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649458, 33.613251, 36.286045>,  <25.671049, 33.214661, 36.260334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649458, 33.613251, 36.286045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184384, 0.053317, -0.981407,
		-0.981371, -0.064827, 0.180855,
		-0.053979, 0.996471, 0.064277,
		25.633265, 33.912193, 36.305328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.503080, 33.444191, 35.592690>,  <25.671049, 33.214661, 36.260334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.503080, 33.444191, 35.592690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.566278, 33.809196, 35.743607>,  <25.604197, 34.028202, 35.834156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.566278, 33.809196, 35.743607>,  <25.503080, 33.444191, 35.592690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.566278, 33.809196, 35.743607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234336, 0.405829, -0.883396,
		-0.959231, 0.051158, 0.277955,
		0.157995, 0.912516, 0.377295,
		25.613676, 34.082951, 35.856796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.897909, 33.902897, 35.522537>,  <25.503080, 33.444191, 35.592690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.897909, 33.902897, 35.522537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209755, 34.149136, 35.568554>,  <25.396862, 34.296879, 35.596165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209755, 34.149136, 35.568554>,  <24.897909, 33.902897, 35.522537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.209755, 34.149136, 35.568554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358700, 0.589525, -0.723737,
		-0.513354, 0.522970, 0.680419,
		0.779617, 0.615599, 0.115046,
		25.443640, 34.333817, 35.603069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.867128, 34.670498, 35.740864>,  <24.897909, 33.902897, 35.522537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.867128, 34.670498, 35.740864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163855, 34.623390, 35.476791>,  <25.341890, 34.595123, 35.318348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163855, 34.623390, 35.476791>,  <24.867128, 34.670498, 35.740864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163855, 34.623390, 35.476791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503297, 0.552806, -0.664152,
		0.443169, 0.824946, 0.350808,
		0.741818, -0.117771, -0.660179,
		25.386400, 34.588058, 35.278736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.635952, 35.302666, 35.618641>,  <24.867128, 34.670498, 35.740864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.635952, 35.302666, 35.618641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.010916, 35.191753, 35.534378>,  <25.235895, 35.125206, 35.483822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.010916, 35.191753, 35.534378>,  <24.635952, 35.302666, 35.618641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.010916, 35.191753, 35.534378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033310, 0.673565, -0.738377,
		0.346628, 0.685146, 0.640644,
		0.937411, -0.277282, -0.210654,
		25.292139, 35.108570, 35.471180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.026852, 35.897873, 35.527508>,  <24.635952, 35.302666, 35.618641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.026852, 35.897873, 35.527508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260828, 35.619713, 35.360527>,  <25.401215, 35.452816, 35.260338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260828, 35.619713, 35.360527>,  <25.026852, 35.897873, 35.527508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.260828, 35.619713, 35.360527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082783, 0.563186, -0.822173,
		0.806839, 0.446367, 0.386998,
		0.584943, -0.695398, -0.417449,
		25.436312, 35.411095, 35.235291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691751, 36.279160, 35.285759>,  <25.026852, 35.897873, 35.527508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691751, 36.279160, 35.285759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608891, 35.939590, 35.091270>,  <25.559174, 35.735847, 34.974579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608891, 35.939590, 35.091270>,  <25.691751, 36.279160, 35.285759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.608891, 35.939590, 35.091270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033111, 0.502800, -0.863768,
		0.977748, -0.162833, -0.132266,
		-0.207154, -0.848927, -0.486220,
		25.546745, 35.684914, 34.945404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.109076, 36.300575, 34.710335>,  <25.691751, 36.279160, 35.285759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.109076, 36.300575, 34.710335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771534, 36.096729, 34.643158>,  <25.569008, 35.974422, 34.602852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771534, 36.096729, 34.643158>,  <26.109076, 36.300575, 34.710335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771534, 36.096729, 34.643158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155550, 0.531897, -0.832400,
		0.513520, -0.676306, -0.528116,
		-0.843861, -0.509603, -0.167941,
		25.518377, 35.943848, 34.592773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092701, 36.167820, 33.990967>,  <26.109076, 36.300575, 34.710335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092701, 36.167820, 33.990967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700926, 36.181793, 34.070446>,  <25.465860, 36.190178, 34.118134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700926, 36.181793, 34.070446>,  <26.092701, 36.167820, 33.990967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.700926, 36.181793, 34.070446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167506, 0.408117, -0.897431,
		-0.112445, -0.912261, -0.393873,
		-0.979438, 0.034935, 0.198700,
		25.407095, 36.192272, 34.130054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834755, 35.830654, 33.444305>,  <26.092701, 36.167820, 33.990967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834755, 35.830654, 33.444305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619869, 36.118092, 33.620949>,  <25.490938, 36.290554, 33.726936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619869, 36.118092, 33.620949>,  <25.834755, 35.830654, 33.444305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619869, 36.118092, 33.620949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223446, 0.383619, -0.896051,
		-0.813309, -0.580049, -0.045518,
		-0.537215, 0.718596, 0.441611,
		25.458704, 36.333672, 33.753433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928814, 35.280758, 32.785213>,  <25.834755, 35.830654, 33.444305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928814, 35.280758, 32.785213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293291, 35.280651, 32.950008>,  <26.511976, 35.280586, 33.048885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293291, 35.280651, 32.950008>,  <25.928814, 35.280758, 32.785213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293291, 35.280651, 32.950008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389455, 0.326708, -0.861154,
		-0.134368, 0.945125, 0.297798,
		0.911192, -0.000267, 0.411983,
		26.566648, 35.280571, 33.073605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.265535, 35.713890, 32.325150>,  <25.928814, 35.280758, 32.785213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.265535, 35.713890, 32.325150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548750, 35.542839, 32.549938>,  <26.718679, 35.440208, 32.684814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548750, 35.542839, 32.549938>,  <26.265535, 35.713890, 32.325150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548750, 35.542839, 32.549938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620757, -0.002505, -0.783999,
		0.336670, 0.903950, 0.263681,
		0.708036, -0.427631, 0.561976,
		26.761160, 35.414551, 32.718533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886932, 36.041409, 32.031239>,  <26.265535, 35.713890, 32.325150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886932, 36.041409, 32.031239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047716, 35.735256, 32.232285>,  <27.144186, 35.551567, 32.352913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047716, 35.735256, 32.232285>,  <26.886932, 36.041409, 32.031239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047716, 35.735256, 32.232285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745892, -0.044687, -0.664566,
		0.531105, 0.642028, 0.552926,
		0.401962, -0.765377, 0.502617,
		27.168304, 35.505642, 32.383068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632645, 36.145092, 32.104778>,  <26.886932, 36.041409, 32.031239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632645, 36.145092, 32.104778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571438, 35.755566, 32.172039>,  <27.534714, 35.521851, 32.212395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571438, 35.755566, 32.172039>,  <27.632645, 36.145092, 32.104778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571438, 35.755566, 32.172039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715501, -0.226542, -0.660861,
		0.681648, 0.019190, 0.731428,
		-0.153017, -0.973812, 0.168152,
		27.525532, 35.463421, 32.222485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239725, 35.787296, 32.151863>,  <27.632645, 36.145092, 32.104778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239725, 35.787296, 32.151863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010031, 35.484901, 32.026176>,  <27.872213, 35.303463, 31.950764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010031, 35.484901, 32.026176>,  <28.239725, 35.787296, 32.151863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010031, 35.484901, 32.026176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672332, -0.216465, -0.707893,
		0.467143, -0.617755, 0.632578,
		-0.574235, -0.755990, -0.314217,
		27.837761, 35.258106, 31.931911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760874, 35.272583, 32.028442>,  <28.239725, 35.787296, 32.151863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760874, 35.272583, 32.028442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425247, 35.195156, 31.825069>,  <28.223871, 35.148701, 31.703047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425247, 35.195156, 31.825069>,  <28.760874, 35.272583, 32.028442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425247, 35.195156, 31.825069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543501, -0.339386, -0.767739,
		-0.023945, -0.920516, 0.389971,
		-0.839067, -0.193566, -0.508428,
		28.173527, 35.137085, 31.672541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865107, 34.680862, 31.684053>,  <28.760874, 35.272583, 32.028442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865107, 34.680862, 31.684053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549023, 34.799644, 31.469620>,  <28.359373, 34.870914, 31.340960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549023, 34.799644, 31.469620>,  <28.865107, 34.680862, 31.684053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549023, 34.799644, 31.469620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379547, -0.449660, -0.808548,
		-0.481165, -0.842389, 0.242612,
		-0.790205, 0.296962, -0.536087,
		28.311960, 34.888733, 31.308794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530672, 34.095081, 31.407022>,  <28.865107, 34.680862, 31.684053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530672, 34.095081, 31.407022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493908, 34.404037, 31.155638>,  <28.471849, 34.589413, 31.004807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493908, 34.404037, 31.155638>,  <28.530672, 34.095081, 31.407022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493908, 34.404037, 31.155638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284096, -0.584563, -0.759984,
		-0.954381, -0.248393, -0.165706,
		-0.091909, 0.772390, -0.628463,
		28.466335, 34.635754, 30.967098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280235, 33.782135, 30.787876>,  <28.530672, 34.095081, 31.407022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280235, 33.782135, 30.787876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489206, 34.107178, 30.684544>,  <28.614590, 34.302204, 30.622543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489206, 34.107178, 30.684544>,  <28.280235, 33.782135, 30.787876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489206, 34.107178, 30.684544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417212, -0.507828, -0.753687,
		-0.743641, 0.285969, -0.604334,
		0.522429, 0.812608, -0.258333,
		28.645935, 34.350960, 30.607044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498640, 33.377342, 30.175724>,  <28.280235, 33.782135, 30.787876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498640, 33.377342, 30.175724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361094, 33.647503, 29.914774>,  <28.278564, 33.809597, 29.758204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361094, 33.647503, 29.914774>,  <28.498640, 33.377342, 30.175724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361094, 33.647503, 29.914774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104354, 0.662951, 0.741355,
		0.933202, 0.323006, -0.157487,
		-0.343868, 0.675399, -0.652374,
		28.257933, 33.850124, 29.719061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860716, 34.068584, 30.232695>,  <28.498640, 33.377342, 30.175724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860716, 34.068584, 30.232695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489305, 34.139545, 30.102238>,  <28.266460, 34.182121, 30.023964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489305, 34.139545, 30.102238>,  <28.860716, 34.068584, 30.232695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489305, 34.139545, 30.102238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146165, 0.632845, 0.760357,
		0.341288, 0.753681, -0.561682,
		-0.928525, 0.177402, -0.326144,
		28.210749, 34.192768, 30.004395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657995, 34.855373, 30.157097>,  <28.860716, 34.068584, 30.232695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657995, 34.855373, 30.157097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341118, 34.633358, 30.258574>,  <28.150991, 34.500149, 30.319460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341118, 34.633358, 30.258574>,  <28.657995, 34.855373, 30.157097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341118, 34.633358, 30.258574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072601, 0.498466, 0.863864,
		-0.605938, 0.665928, -0.435177,
		-0.792192, -0.555042, 0.253693,
		28.103460, 34.466846, 30.334681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076733, 35.169292, 30.368587>,  <28.657995, 34.855373, 30.157097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076733, 35.169292, 30.368587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057949, 34.815556, 30.554377>,  <28.046679, 34.603313, 30.665850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057949, 34.815556, 30.554377>,  <28.076733, 35.169292, 30.368587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057949, 34.815556, 30.554377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008443, 0.465322, 0.885101,
		-0.998861, 0.037643, -0.029317,
		-0.046960, -0.884341, 0.464474,
		28.043861, 34.550255, 30.693718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531181, 35.239620, 30.814466>,  <28.076733, 35.169292, 30.368587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531181, 35.239620, 30.814466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747568, 34.939095, 30.965664>,  <27.877401, 34.758778, 31.056383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747568, 34.939095, 30.965664>,  <27.531181, 35.239620, 30.814466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747568, 34.939095, 30.965664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270456, 0.270164, 0.924048,
		-0.796371, -0.602113, -0.057047,
		0.540969, -0.751314, 0.377996,
		27.909859, 34.713699, 31.079063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084616, 34.730179, 31.079948>,  <27.531181, 35.239620, 30.814466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084616, 34.730179, 31.079948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440269, 34.752602, 31.261627>,  <27.653662, 34.766056, 31.370634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440269, 34.752602, 31.261627>,  <27.084616, 34.730179, 31.079948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440269, 34.752602, 31.261627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455112, 0.212551, 0.864694,
		-0.048064, -0.975541, 0.214501,
		0.889136, 0.056062, 0.454196,
		27.707010, 34.769421, 31.397886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199068, 34.202625, 31.597141>,  <27.084616, 34.730179, 31.079948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199068, 34.202625, 31.597141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409033, 34.531898, 31.683710>,  <27.535011, 34.729462, 31.735651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409033, 34.531898, 31.683710>,  <27.199068, 34.202625, 31.597141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409033, 34.531898, 31.683710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370089, -0.008238, 0.928960,
		0.766487, -0.567716, 0.300326,
		0.524912, 0.823183, 0.216420,
		27.566505, 34.778854, 31.748636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361628, 34.198002, 32.320915>,  <27.199068, 34.202625, 31.597141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361628, 34.198002, 32.320915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395166, 34.596146, 32.302032>,  <27.415289, 34.835033, 32.290703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395166, 34.596146, 32.302032>,  <27.361628, 34.198002, 32.320915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395166, 34.596146, 32.302032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383535, 0.075961, 0.920397,
		0.919712, -0.059066, 0.388124,
		0.083847, 0.995360, -0.047208,
		27.420321, 34.894753, 32.287868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712395, 34.431679, 33.040283>,  <27.361628, 34.198002, 32.320915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712395, 34.431679, 33.040283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546291, 34.738731, 32.845020>,  <27.446629, 34.922962, 32.727863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546291, 34.738731, 32.845020>,  <27.712395, 34.431679, 33.040283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546291, 34.738731, 32.845020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479162, 0.271575, 0.834656,
		0.773281, 0.580507, 0.255046,
		-0.415260, 0.767632, -0.488161,
		27.421713, 34.969021, 32.698570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816973, 34.970455, 33.458412>,  <27.712395, 34.431679, 33.040283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816973, 34.970455, 33.458412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514267, 35.107903, 33.235977>,  <27.332644, 35.190372, 33.102516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514267, 35.107903, 33.235977>,  <27.816973, 34.970455, 33.458412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514267, 35.107903, 33.235977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400366, 0.428825, 0.809824,
		0.516737, 0.835485, -0.186945,
		-0.756763, 0.343619, -0.556090,
		27.287239, 35.210987, 33.069149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619856, 35.667461, 33.514404>,  <27.816973, 34.970455, 33.458412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619856, 35.667461, 33.514404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298336, 35.450516, 33.416630>,  <27.105425, 35.320351, 33.357964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298336, 35.450516, 33.416630>,  <27.619856, 35.667461, 33.514404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298336, 35.450516, 33.416630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475502, 0.338809, 0.811854,
		-0.357500, 0.768799, -0.530229,
		-0.803798, -0.542363, -0.244441,
		27.057196, 35.287807, 33.343296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800657, 35.412525, 34.260719>,  <27.619856, 35.667461, 33.514404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800657, 35.412525, 34.260719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974989, 35.766804, 34.324718>,  <28.079588, 35.979370, 34.363117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974989, 35.766804, 34.324718>,  <27.800657, 35.412525, 34.260719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974989, 35.766804, 34.324718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456933, 0.064584, 0.887153,
		0.775413, -0.459756, 0.432851,
		0.435829, 0.885694, 0.159998,
		28.105738, 36.032513, 34.372719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197298, 35.420059, 34.885166>,  <27.800657, 35.412525, 34.260719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197298, 35.420059, 34.885166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079189, 35.790752, 34.792233>,  <28.008324, 36.013168, 34.736473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079189, 35.790752, 34.792233>,  <28.197298, 35.420059, 34.885166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079189, 35.790752, 34.792233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410904, 0.096358, 0.906572,
		0.862538, 0.363152, 0.352347,
		-0.295271, 0.926734, -0.232333,
		27.990608, 36.068771, 34.722534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557991, 35.942013, 35.318039>,  <28.197298, 35.420059, 34.885166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557991, 35.942013, 35.318039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844816, 36.084236, 35.078239>,  <29.016912, 36.169571, 34.934361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844816, 36.084236, 35.078239>,  <28.557991, 35.942013, 35.318039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844816, 36.084236, 35.078239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526631, 0.287063, 0.800159,
		0.456595, -0.889480, 0.018596,
		0.717064, 0.355555, -0.599499,
		29.059937, 36.190903, 34.898388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348032, 35.689556, 35.462662>,  <28.557991, 35.942013, 35.318039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348032, 35.689556, 35.462662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287920, 36.056969, 35.316391>,  <29.251852, 36.277416, 35.228630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287920, 36.056969, 35.316391>,  <29.348032, 35.689556, 35.462662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287920, 36.056969, 35.316391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470503, 0.391753, 0.790668,
		0.869507, -0.053230, -0.491044,
		-0.150280, 0.918529, -0.365677,
		29.242836, 36.332527, 35.206688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023605, 36.254700, 35.327274>,  <29.348032, 35.689556, 35.462662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023605, 36.254700, 35.327274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.684217, 36.434200, 35.439503>,  <29.480585, 36.541901, 35.506840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.684217, 36.434200, 35.439503>,  <30.023605, 36.254700, 35.327274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684217, 36.434200, 35.439503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478823, 0.425047, 0.768156,
		0.225459, 0.786100, -0.575513,
		-0.848468, 0.448756, 0.280572,
		29.429678, 36.568829, 35.523674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651606, 36.793289, 35.338940>,  <30.023605, 36.254700, 35.327274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651606, 36.793289, 35.338940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991419, 36.812714, 35.549061>,  <31.195307, 36.824368, 35.675133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991419, 36.812714, 35.549061>,  <30.651606, 36.793289, 35.338940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991419, 36.812714, 35.549061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415668, -0.551527, 0.723214,
		0.324833, -0.832743, -0.448356,
		0.849531, 0.048557, 0.525299,
		31.246279, 36.827282, 35.706650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891491, 36.069782, 35.404911>,  <30.651606, 36.793289, 35.338940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891491, 36.069782, 35.404911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054981, 36.294025, 35.692986>,  <31.153074, 36.428570, 35.865829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054981, 36.294025, 35.692986>,  <30.891491, 36.069782, 35.404911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054981, 36.294025, 35.692986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376414, -0.615316, 0.692602,
		0.831419, -0.554170, -0.040473,
		0.408723, 0.560608, 0.720183,
		31.177599, 36.462208, 35.909042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466677, 35.755943, 35.781559>,  <30.891491, 36.069782, 35.404911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466677, 35.755943, 35.781559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291010, 36.001053, 36.044357>,  <31.185610, 36.148121, 36.202034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291010, 36.001053, 36.044357>,  <31.466677, 35.755943, 35.781559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291010, 36.001053, 36.044357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096067, -0.759124, 0.643818,
		0.893256, 0.219627, 0.392248,
		-0.439165, 0.612776, 0.656993,
		31.159260, 36.184887, 36.241455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704630, 35.526054, 36.377712>,  <31.466677, 35.755943, 35.781559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704630, 35.526054, 36.377712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380785, 35.750828, 36.445553>,  <31.186478, 35.885693, 36.486256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380785, 35.750828, 36.445553>,  <31.704630, 35.526054, 36.377712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380785, 35.750828, 36.445553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302364, -0.646919, 0.700052,
		0.503096, 0.515489, 0.693660,
		-0.809611, 0.561931, 0.169597,
		31.137901, 35.919407, 36.496433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621540, 35.647873, 37.073093>,  <31.704630, 35.526054, 36.377712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621540, 35.647873, 37.073093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246983, 35.629272, 36.933952>,  <31.022247, 35.618111, 36.850468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246983, 35.629272, 36.933952>,  <31.621540, 35.647873, 37.073093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246983, 35.629272, 36.933952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231765, -0.662360, 0.712436,
		-0.263537, 0.747741, 0.609452,
		-0.936394, -0.046504, -0.347856,
		30.966064, 35.615322, 36.829594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973154, 35.904915, 37.511101>,  <31.621540, 35.647873, 37.073093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973154, 35.904915, 37.511101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925266, 35.568958, 37.299347>,  <30.896534, 35.367386, 37.172295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925266, 35.568958, 37.299347>,  <30.973154, 35.904915, 37.511101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925266, 35.568958, 37.299347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072328, -0.539180, 0.839079,
		-0.990170, 0.062164, 0.125298,
		-0.119718, -0.839893, -0.529384,
		30.889351, 35.316990, 37.140533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631083, 36.572498, 37.312832>,  <30.973154, 35.904915, 37.511101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631083, 36.572498, 37.312832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900696, 36.352818, 37.115223>,  <31.062464, 36.221008, 36.996658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900696, 36.352818, 37.115223>,  <30.631083, 36.572498, 37.312832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900696, 36.352818, 37.115223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279063, 0.808522, -0.518089,
		0.683963, 0.211345, 0.698232,
		0.674031, -0.549204, -0.494021,
		31.102905, 36.188057, 36.967018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205198, 37.026554, 37.146824>,  <30.631083, 36.572498, 37.312832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205198, 37.026554, 37.146824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289785, 36.742203, 36.878517>,  <31.340538, 36.571590, 36.717533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289785, 36.742203, 36.878517>,  <31.205198, 37.026554, 37.146824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289785, 36.742203, 36.878517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424548, 0.684972, -0.592092,
		0.880364, -0.159564, 0.446653,
		0.211468, -0.710882, -0.670767,
		31.353226, 36.528938, 36.677288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777752, 37.149273, 36.852226>,  <31.205198, 37.026554, 37.146824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777752, 37.149273, 36.852226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607954, 36.921909, 36.570312>,  <31.506075, 36.785492, 36.401165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607954, 36.921909, 36.570312>,  <31.777752, 37.149273, 36.852226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607954, 36.921909, 36.570312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611132, 0.394470, -0.686230,
		0.668073, -0.722016, 0.179922,
		-0.424495, -0.568407, -0.704782,
		31.480606, 36.751389, 36.358879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345261, 36.912140, 36.343540>,  <31.777752, 37.149273, 36.852226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345261, 36.912140, 36.343540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999636, 36.894032, 36.143002>,  <31.792261, 36.883167, 36.022678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999636, 36.894032, 36.143002>,  <32.345261, 36.912140, 36.343540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999636, 36.894032, 36.143002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455827, 0.352208, -0.817417,
		0.213580, -0.934826, -0.283695,
		-0.864063, -0.045268, -0.501344,
		31.740417, 36.880451, 35.992599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559875, 36.481907, 35.772366>,  <32.345261, 36.912140, 36.343540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559875, 36.481907, 35.772366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235615, 36.705582, 35.702904>,  <32.041058, 36.839787, 35.661228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235615, 36.705582, 35.702904>,  <32.559875, 36.481907, 35.772366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235615, 36.705582, 35.702904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437024, 0.380447, -0.815028,
		-0.389690, -0.736591, -0.552788,
		-0.810649, 0.559190, -0.173651,
		31.992420, 36.873337, 35.650806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659187, 36.499794, 35.046753>,  <32.559875, 36.481907, 35.772366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659187, 36.499794, 35.046753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363605, 36.750301, 35.146141>,  <32.186256, 36.900604, 35.205772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363605, 36.750301, 35.146141>,  <32.659187, 36.499794, 35.046753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363605, 36.750301, 35.146141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201450, 0.557282, -0.805515,
		-0.642933, -0.545185, -0.537968,
		-0.738955, 0.626266, 0.248468,
		32.141918, 36.938183, 35.220680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172718, 36.332962, 34.705318>,  <32.659187, 36.499794, 35.046753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172718, 36.332962, 34.705318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137005, 36.721012, 34.795547>,  <32.115578, 36.953842, 34.849686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137005, 36.721012, 34.795547>,  <32.172718, 36.332962, 34.705318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137005, 36.721012, 34.795547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203842, 0.239481, -0.949262,
		-0.974924, -0.038774, -0.219134,
		-0.089285, 0.970127, 0.225572,
		32.110218, 37.012051, 34.863220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886984, 36.582413, 34.110176>,  <32.172718, 36.332962, 34.705318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886984, 36.582413, 34.110176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112518, 36.869690, 34.273293>,  <32.247841, 37.042057, 34.371162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112518, 36.869690, 34.273293>,  <31.886984, 36.582413, 34.110176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112518, 36.869690, 34.273293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303574, 0.278968, -0.911054,
		-0.768069, 0.637481, -0.060731,
		0.563838, 0.718189, 0.407789,
		32.281670, 37.085148, 34.395630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696230, 37.230949, 33.773716>,  <31.886984, 36.582413, 34.110176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696230, 37.230949, 33.773716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060368, 37.287037, 33.929466>,  <32.278851, 37.320690, 34.022915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060368, 37.287037, 33.929466>,  <31.696230, 37.230949, 33.773716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060368, 37.287037, 33.929466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400487, -0.061332, -0.914247,
		-0.104313, 0.988219, -0.111989,
		0.910345, 0.140218, 0.389372,
		32.333469, 37.329102, 34.046276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001377, 37.712646, 33.352058>,  <31.696230, 37.230949, 33.773716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001377, 37.712646, 33.352058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324757, 37.549534, 33.521824>,  <32.518784, 37.451664, 33.623684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324757, 37.549534, 33.521824>,  <32.001377, 37.712646, 33.352058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324757, 37.549534, 33.521824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518883, 0.153438, -0.840962,
		0.277809, 0.900094, 0.335638,
		0.808444, -0.407783, 0.424418,
		32.567291, 37.427200, 33.649151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688866, 38.102947, 33.209522>,  <32.001377, 37.712646, 33.352058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688866, 38.102947, 33.209522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821606, 37.743107, 33.323078>,  <32.901253, 37.527203, 33.391212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821606, 37.743107, 33.323078>,  <32.688866, 38.102947, 33.209522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821606, 37.743107, 33.323078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563266, -0.052444, -0.824610,
		0.756706, 0.433558, 0.489309,
		0.331855, -0.899598, 0.283893,
		32.921162, 37.473228, 33.408245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411499, 38.178375, 33.049809>,  <32.688866, 38.102947, 33.209522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411499, 38.178375, 33.049809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289497, 37.797817, 33.066906>,  <33.216297, 37.569485, 33.077164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289497, 37.797817, 33.066906>,  <33.411499, 38.178375, 33.049809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289497, 37.797817, 33.066906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494920, -0.196689, -0.846385,
		0.813652, -0.236992, 0.530853,
		-0.305000, -0.951393, 0.042745,
		33.197998, 37.512398, 33.079731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884266, 37.858372, 32.698727>,  <33.411499, 38.178375, 33.049809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884266, 37.858372, 32.698727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572002, 37.608437, 32.693951>,  <33.384644, 37.458473, 32.691086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572002, 37.608437, 32.693951>,  <33.884266, 37.858372, 32.698727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572002, 37.608437, 32.693951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270312, -0.320378, -0.907904,
		0.563473, -0.711990, 0.419008,
		-0.780660, -0.624842, -0.011935,
		33.337803, 37.420982, 32.690369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147343, 37.276348, 32.228668>,  <33.884266, 37.858372, 32.698727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147343, 37.276348, 32.228668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753647, 37.211185, 32.256195>,  <33.517429, 37.172089, 32.272713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753647, 37.211185, 32.256195>,  <34.147343, 37.276348, 32.228668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753647, 37.211185, 32.256195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032356, -0.216671, -0.975708,
		0.173864, -0.962556, 0.207984,
		-0.984238, -0.162911, 0.068816,
		33.458374, 37.162312, 32.276840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072853, 36.717773, 31.810081>,  <34.147343, 37.276348, 32.228668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072853, 36.717773, 31.810081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709877, 36.882099, 31.845352>,  <33.492092, 36.980694, 31.866514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709877, 36.882099, 31.845352>,  <34.072853, 36.717773, 31.810081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709877, 36.882099, 31.845352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079292, 0.038658, -0.996102,
		-0.412626, -0.910897, -0.002505,
		-0.907443, 0.410819, 0.088178,
		33.437645, 37.005344, 31.871805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651333, 36.365677, 31.457670>,  <34.072853, 36.717773, 31.810081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651333, 36.365677, 31.457670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448475, 36.710190, 31.470312>,  <33.326759, 36.916897, 31.477898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448475, 36.710190, 31.470312>,  <33.651333, 36.365677, 31.457670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448475, 36.710190, 31.470312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027046, 0.020751, -0.999419,
		-0.861436, -0.507706, 0.012770,
		-0.507146, 0.861281, 0.031607,
		33.296329, 36.968575, 31.479794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105839, 36.340015, 30.912266>,  <33.651333, 36.365677, 31.457670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105839, 36.340015, 30.912266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156464, 36.728226, 30.994305>,  <33.186840, 36.961151, 31.043528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156464, 36.728226, 30.994305>,  <33.105839, 36.340015, 30.912266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156464, 36.728226, 30.994305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139363, 0.222108, -0.965011,
		-0.982120, 0.093551, 0.163366,
		0.126563, 0.970524, 0.205099,
		33.194431, 37.019382, 31.055834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587051, 36.673042, 30.537138>,  <33.105839, 36.340015, 30.912266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587051, 36.673042, 30.537138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831081, 36.980469, 30.614208>,  <32.977497, 37.164925, 30.660450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831081, 36.980469, 30.614208>,  <32.587051, 36.673042, 30.537138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831081, 36.980469, 30.614208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057978, 0.285822, -0.956527,
		-0.790222, 0.572379, 0.218932,
		0.610071, 0.768563, 0.192677,
		33.014103, 37.211037, 30.672012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331432, 37.405148, 30.337835>,  <32.587051, 36.673042, 30.537138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331432, 37.405148, 30.337835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728783, 37.450306, 30.329304>,  <32.967194, 37.477402, 30.324184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728783, 37.450306, 30.329304>,  <32.331432, 37.405148, 30.337835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728783, 37.450306, 30.329304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058522, 0.337444, -0.939525,
		-0.098875, 0.934551, 0.341816,
		0.993378, 0.112899, -0.021327,
		33.026794, 37.484177, 30.322906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301956, 37.850151, 29.854271>,  <32.331432, 37.405148, 30.337835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301956, 37.850151, 29.854271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684998, 37.737175, 29.877007>,  <32.914822, 37.669388, 29.890648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684998, 37.737175, 29.877007>,  <32.301956, 37.850151, 29.854271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684998, 37.737175, 29.877007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088465, 0.100505, -0.990996,
		0.274185, 0.954005, 0.121230,
		0.957599, -0.282440, 0.056839,
		32.972279, 37.652443, 29.894058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703602, 38.452431, 29.760778>,  <32.301956, 37.850151, 29.854271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703602, 38.452431, 29.760778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923180, 38.134777, 29.656458>,  <33.054924, 37.944187, 29.593866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923180, 38.134777, 29.656458>,  <32.703602, 38.452431, 29.760778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923180, 38.134777, 29.656458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060010, 0.348653, -0.935329,
		0.833703, 0.497791, 0.239047,
		0.548943, -0.794131, -0.260801,
		33.087864, 37.896538, 29.578218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306980, 38.730141, 29.333586>,  <32.703602, 38.452431, 29.760778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306980, 38.730141, 29.333586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249111, 38.345066, 29.242104>,  <33.214390, 38.114021, 29.187214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249111, 38.345066, 29.242104>,  <33.306980, 38.730141, 29.333586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249111, 38.345066, 29.242104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023103, 0.227789, -0.973436,
		0.989209, -0.146117, -0.010715,
		-0.144677, -0.962685, -0.228706,
		33.205708, 38.056259, 29.173492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799404, 38.719418, 28.843386>,  <33.306980, 38.730141, 29.333586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799404, 38.719418, 28.843386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548553, 38.410191, 28.805286>,  <33.398045, 38.224655, 28.782427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548553, 38.410191, 28.805286>,  <33.799404, 38.719418, 28.843386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548553, 38.410191, 28.805286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010502, 0.130663, -0.991371,
		0.778846, -0.620716, -0.090062,
		-0.627127, -0.773071, -0.095247,
		33.360416, 38.178268, 28.776712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142094, 38.284462, 28.395697>,  <33.799404, 38.719418, 28.843386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142094, 38.284462, 28.395697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745441, 38.234283, 28.383524>,  <33.507450, 38.204178, 28.376221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745441, 38.234283, 28.383524>,  <34.142094, 38.284462, 28.395697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745441, 38.234283, 28.383524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010568, 0.313871, -0.949407,
		0.128647, -0.941143, -0.312571,
		-0.991634, -0.125441, -0.030433,
		33.447952, 38.196651, 28.374393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013229, 37.993572, 27.637545>,  <34.142094, 38.284462, 28.395697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013229, 37.993572, 27.637545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646278, 38.099754, 27.756176>,  <33.426109, 38.163464, 27.827354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646278, 38.099754, 27.756176>,  <34.013229, 37.993572, 27.637545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646278, 38.099754, 27.756176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196574, 0.345742, -0.917508,
		-0.346101, -0.899996, -0.264991,
		-0.917373, 0.265460, 0.296577,
		33.371067, 38.179394, 27.845150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616714, 37.733700, 27.177816>,  <34.013229, 37.993572, 27.637545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616714, 37.733700, 27.177816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377625, 38.014568, 27.332569>,  <33.234169, 38.183090, 27.425421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377625, 38.014568, 27.332569>,  <33.616714, 37.733700, 27.177816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377625, 38.014568, 27.332569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181081, 0.351857, -0.918371,
		-0.780982, -0.618992, -0.083164,
		-0.597726, 0.702172, 0.386882,
		33.198307, 38.225220, 27.448633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049259, 37.658730, 26.827488>,  <33.616714, 37.733700, 27.177816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049259, 37.658730, 26.827488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015156, 38.029659, 26.973261>,  <32.994694, 38.252216, 27.060724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015156, 38.029659, 26.973261>,  <33.049259, 37.658730, 26.827488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015156, 38.029659, 26.973261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218734, 0.339419, -0.914850,
		-0.972053, -0.157710, 0.173898,
		-0.085257, 0.927320, 0.364430,
		32.989578, 38.307854, 27.082590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404037, 37.807907, 26.698393>,  <33.049259, 37.658730, 26.827488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404037, 37.807907, 26.698393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605385, 38.152534, 26.724691>,  <32.726192, 38.359310, 26.740471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605385, 38.152534, 26.724691>,  <32.404037, 37.807907, 26.698393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605385, 38.152534, 26.724691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409189, 0.304702, -0.860070,
		-0.761041, 0.406030, 0.505921,
		0.503369, 0.861566, 0.065748,
		32.756397, 38.411003, 26.744415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942324, 38.333565, 26.564468>,  <32.404037, 37.807907, 26.698393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942324, 38.333565, 26.564468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290894, 38.528156, 26.539312>,  <32.500034, 38.644913, 26.524220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290894, 38.528156, 26.539312>,  <31.942324, 38.333565, 26.564468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290894, 38.528156, 26.539312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309290, 0.445412, -0.840207,
		-0.380732, 0.751629, 0.538607,
		0.871426, 0.486480, -0.062889,
		32.552322, 38.674099, 26.520445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905886, 39.089859, 26.442186>,  <31.942324, 38.333565, 26.564468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905886, 39.089859, 26.442186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276051, 39.001431, 26.319067>,  <32.498150, 38.948376, 26.245195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276051, 39.001431, 26.319067>,  <31.905886, 39.089859, 26.442186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276051, 39.001431, 26.319067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104917, 0.631012, -0.768646,
		0.364148, 0.743608, 0.560753,
		0.925413, -0.221068, -0.307799,
		32.553673, 38.935112, 26.226727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094269, 39.744293, 26.175188>,  <31.905886, 39.089859, 26.442186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094269, 39.744293, 26.175188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343826, 39.478741, 26.010254>,  <32.493561, 39.319408, 25.911293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343826, 39.478741, 26.010254>,  <32.094269, 39.744293, 26.175188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343826, 39.478741, 26.010254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087180, 0.465199, -0.880903,
		0.776632, 0.585537, 0.232357,
		0.623893, -0.663880, -0.412335,
		32.530994, 39.279575, 25.886553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617947, 40.154518, 25.869415>,  <32.094269, 39.744293, 26.175188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617947, 40.154518, 25.869415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667187, 39.798996, 25.692839>,  <32.696732, 39.585682, 25.586893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667187, 39.798996, 25.692839>,  <32.617947, 40.154518, 25.869415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667187, 39.798996, 25.692839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348903, 0.455188, -0.819189,
		0.929039, -0.053177, 0.366141,
		0.123101, -0.888806, -0.441441,
		32.704117, 39.532352, 25.560406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190468, 40.236076, 25.326052>,  <32.617947, 40.154518, 25.869415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190468, 40.236076, 25.326052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037678, 39.897793, 25.176989>,  <32.946003, 39.694824, 25.087551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037678, 39.897793, 25.176989>,  <33.190468, 40.236076, 25.326052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037678, 39.897793, 25.176989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016442, 0.396950, -0.917693,
		0.924025, -0.356666, -0.137720,
		-0.381977, -0.845707, -0.372656,
		32.923084, 39.644081, 25.065191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588272, 40.020355, 24.743139>,  <33.190468, 40.236076, 25.326052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588272, 40.020355, 24.743139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231316, 39.849094, 24.686106>,  <33.017143, 39.746338, 24.651886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231316, 39.849094, 24.686106>,  <33.588272, 40.020355, 24.743139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231316, 39.849094, 24.686106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029779, 0.259400, -0.965311,
		0.450283, -0.865679, -0.218736,
		-0.892389, -0.428149, -0.142582,
		32.963600, 39.720650, 24.643332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629410, 39.472256, 24.180958>,  <33.588272, 40.020355, 24.743139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629410, 39.472256, 24.180958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250725, 39.598629, 24.205986>,  <33.023514, 39.674454, 24.221003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250725, 39.598629, 24.205986>,  <33.629410, 39.472256, 24.180958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250725, 39.598629, 24.205986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022556, 0.128761, -0.991419,
		-0.321276, -0.940005, -0.114774,
		-0.946717, 0.315931, 0.062571,
		32.966709, 39.693409, 24.224758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272717, 39.183796, 23.617220>,  <33.629410, 39.472256, 24.180958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272717, 39.183796, 23.617220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036537, 39.488346, 23.724310>,  <32.894829, 39.671078, 23.788563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036537, 39.488346, 23.724310>,  <33.272717, 39.183796, 23.617220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036537, 39.488346, 23.724310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026469, 0.349810, -0.936446,
		-0.806642, -0.545836, -0.226698,
		-0.590447, 0.761378, 0.267724,
		32.859402, 39.716759, 23.804626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715740, 39.132099, 23.142426>,  <33.272717, 39.183796, 23.617220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715740, 39.132099, 23.142426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765327, 39.504597, 23.279491>,  <32.795078, 39.728096, 23.361731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765327, 39.504597, 23.279491>,  <32.715740, 39.132099, 23.142426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765327, 39.504597, 23.279491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008626, 0.346325, -0.938075,
		-0.992249, 0.113335, 0.050966,
		0.123968, 0.931243, 0.342663,
		32.802517, 39.783970, 23.382290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204437, 39.484051, 22.844891>,  <32.715740, 39.132099, 23.142426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204437, 39.484051, 22.844891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461533, 39.769070, 22.957428>,  <32.615791, 39.940083, 23.024950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461533, 39.769070, 22.957428>,  <32.204437, 39.484051, 22.844891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461533, 39.769070, 22.957428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061425, 0.318131, -0.946055,
		-0.763616, 0.625351, 0.160708,
		0.642743, 0.712551, 0.281343,
		32.654354, 39.982834, 23.041830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955162, 40.047691, 22.524172>,  <32.204437, 39.484051, 22.844891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955162, 40.047691, 22.524172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337036, 40.112213, 22.624222>,  <32.566158, 40.150925, 22.684252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337036, 40.112213, 22.624222>,  <31.955162, 40.047691, 22.524172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337036, 40.112213, 22.624222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180439, 0.354657, -0.917420,
		-0.236689, 0.920978, 0.309480,
		0.954683, 0.161301, 0.250123,
		32.623440, 40.160603, 22.699259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207645, 40.646332, 22.084320>,  <31.955162, 40.047691, 22.524172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207645, 40.646332, 22.084320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547459, 40.541828, 22.267637>,  <32.751347, 40.479126, 22.377628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547459, 40.541828, 22.267637>,  <32.207645, 40.646332, 22.084320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547459, 40.541828, 22.267637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523944, 0.519004, -0.675364,
		-0.061412, 0.813866, 0.577797,
		0.849536, -0.261258, 0.458294,
		32.802319, 40.463451, 22.405125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598343, 41.247353, 22.407600>,  <32.207645, 40.646332, 22.084320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598343, 41.247353, 22.407600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872601, 40.971443, 22.314562>,  <33.037155, 40.805897, 22.258739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872601, 40.971443, 22.314562>,  <32.598343, 41.247353, 22.407600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872601, 40.971443, 22.314562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561644, 0.704554, -0.433774,
		0.463082, 0.166779, 0.870482,
		0.685647, -0.689774, -0.232596,
		33.078293, 40.764511, 22.244783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242619, 41.498020, 22.525993>,  <32.598343, 41.247353, 22.407600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242619, 41.498020, 22.525993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306641, 41.223743, 22.241962>,  <33.345055, 41.059177, 22.071545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306641, 41.223743, 22.241962>,  <33.242619, 41.498020, 22.525993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306641, 41.223743, 22.241962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797044, 0.514144, -0.316824,
		0.582326, -0.515252, 0.628818,
		0.160058, -0.685690, -0.710078,
		33.354656, 41.018036, 22.028938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920700, 41.357761, 22.721493>,  <33.242619, 41.498020, 22.525993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920700, 41.357761, 22.721493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811073, 41.256268, 22.350439>,  <33.745296, 41.195374, 22.127806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811073, 41.256268, 22.350439>,  <33.920700, 41.357761, 22.721493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811073, 41.256268, 22.350439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574115, 0.730671, -0.369475,
		0.771545, -0.633830, -0.054580,
		-0.274064, -0.253731, -0.927636,
		33.728855, 41.180149, 22.072147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512920, 41.268932, 22.407278>,  <33.920700, 41.357761, 22.721493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512920, 41.268932, 22.407278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262367, 41.318535, 22.099443>,  <34.112034, 41.348297, 21.914742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262367, 41.318535, 22.099443>,  <34.512920, 41.268932, 22.407278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262367, 41.318535, 22.099443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588633, 0.722473, -0.362690,
		0.511033, -0.680189, -0.525537,
		-0.626384, 0.124001, -0.769589,
		34.074451, 41.355736, 21.868567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928162, 41.108929, 21.719011>,  <34.512920, 41.268932, 22.407278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928162, 41.108929, 21.719011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616379, 41.335712, 21.612427>,  <34.429310, 41.471783, 21.548475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616379, 41.335712, 21.612427>,  <34.928162, 41.108929, 21.719011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616379, 41.335712, 21.612427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622479, 0.653086, -0.431276,
		-0.070496, -0.502027, -0.861974,
		-0.779455, 0.566964, -0.266461,
		34.382542, 41.505802, 21.532488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153461, 41.341999, 21.122461>,  <34.928162, 41.108929, 21.719011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153461, 41.341999, 21.122461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834152, 41.569687, 21.201200>,  <34.642567, 41.706299, 21.248444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834152, 41.569687, 21.201200>,  <35.153461, 41.341999, 21.122461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834152, 41.569687, 21.201200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450646, 0.781314, -0.431817,
		-0.399598, -0.256000, -0.880219,
		-0.798273, 0.569221, 0.196846,
		34.594669, 41.740452, 21.260254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066078, 41.729244, 20.529993>,  <35.153461, 41.341999, 21.122461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066078, 41.729244, 20.529993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884460, 41.925594, 20.827419>,  <34.775490, 42.043404, 21.005875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884460, 41.925594, 20.827419>,  <35.066078, 41.729244, 20.529993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884460, 41.925594, 20.827419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250786, 0.871214, -0.422010,
		-0.854959, -0.005134, -0.518671,
		-0.454040, 0.490876, 0.743565,
		34.748249, 42.072857, 21.050489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711987, 42.239880, 20.173336>,  <35.066078, 41.729244, 20.529993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711987, 42.239880, 20.173336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734592, 42.380714, 20.547041>,  <34.748158, 42.465214, 20.771263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734592, 42.380714, 20.547041>,  <34.711987, 42.239880, 20.173336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734592, 42.380714, 20.547041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533493, 0.780313, -0.326339,
		-0.843914, 0.516865, -0.143734,
		0.056516, 0.352083, 0.934261,
		34.751549, 42.486340, 20.827320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561382, 42.944252, 20.077623>,  <34.711987, 42.239880, 20.173336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561382, 42.944252, 20.077623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753513, 42.895096, 20.424999>,  <34.868793, 42.865601, 20.633425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753513, 42.895096, 20.424999>,  <34.561382, 42.944252, 20.077623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753513, 42.895096, 20.424999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538039, 0.823238, -0.181089,
		-0.692676, 0.554235, 0.461544,
		0.480326, -0.122893, 0.868438,
		34.897610, 42.858227, 20.685530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216957, 43.051857, 19.971117>,  <34.561382, 42.944252, 20.077623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216957, 43.051857, 19.971117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553471, 43.244228, 19.872372>,  <35.755379, 43.359650, 19.813124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553471, 43.244228, 19.872372>,  <35.216957, 43.051857, 19.971117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553471, 43.244228, 19.872372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207445, -0.134489, -0.968958,
		-0.499200, 0.866384, -0.013378,
		0.841288, 0.480929, -0.246864,
		35.805859, 43.388508, 19.798313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067329, 43.345734, 19.373508>,  <35.216957, 43.051857, 19.971117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067329, 43.345734, 19.373508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461945, 43.407269, 19.351328>,  <35.698715, 43.444187, 19.338020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461945, 43.407269, 19.351328>,  <35.067329, 43.345734, 19.373508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461945, 43.407269, 19.351328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071806, 0.102881, -0.992098,
		-0.146915, 0.982726, 0.112543,
		0.986539, 0.153835, -0.055451,
		35.757908, 43.453419, 19.334692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195377, 43.812725, 18.821587>,  <35.067329, 43.345734, 19.373508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195377, 43.812725, 18.821587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548824, 43.625572, 18.828493>,  <35.760895, 43.513279, 18.832638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548824, 43.625572, 18.828493>,  <35.195377, 43.812725, 18.821587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548824, 43.625572, 18.828493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132515, -0.285295, -0.949235,
		0.449058, 0.836476, -0.314094,
		0.883621, -0.467884, 0.017268,
		35.813911, 43.485207, 18.833673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659111, 43.910118, 18.165075>,  <35.195377, 43.812725, 18.821587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659111, 43.910118, 18.165075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715633, 43.552551, 18.335226>,  <35.749546, 43.338013, 18.437317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715633, 43.552551, 18.335226>,  <35.659111, 43.910118, 18.165075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715633, 43.552551, 18.335226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105810, -0.440867, -0.891314,
		0.984295, 0.080941, -0.156883,
		0.141308, -0.893916, 0.425379,
		35.758026, 43.284378, 18.462839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935032, 43.503700, 17.735159>,  <35.659111, 43.910118, 18.165075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935032, 43.503700, 17.735159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893356, 43.207253, 18.000454>,  <35.868351, 43.029385, 18.159630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893356, 43.207253, 18.000454>,  <35.935032, 43.503700, 17.735159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893356, 43.207253, 18.000454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116089, -0.671369, -0.731974,
		0.987759, 0.000732, 0.155984,
		-0.104187, -0.741122, 0.663236,
		35.862099, 42.984917, 18.199425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495659, 43.089050, 17.457094>,  <35.935032, 43.503700, 17.735159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495659, 43.089050, 17.457094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220638, 42.911617, 17.687050>,  <36.055626, 42.805157, 17.825024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220638, 42.911617, 17.687050>,  <36.495659, 43.089050, 17.457094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220638, 42.911617, 17.687050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243446, -0.605079, -0.758033,
		0.684107, -0.661144, 0.308036,
		-0.687555, -0.443585, 0.574892,
		36.014370, 42.778542, 17.859518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438179, 42.263260, 17.563639>,  <36.495659, 43.089050, 17.457094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438179, 42.263260, 17.563639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055641, 42.379795, 17.572800>,  <35.826118, 42.449715, 17.578297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055641, 42.379795, 17.572800>,  <36.438179, 42.263260, 17.563639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055641, 42.379795, 17.572800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222518, -0.675157, -0.703313,
		-0.189437, -0.677708, 0.710511,
		-0.956347, 0.291334, 0.022903,
		35.768738, 42.467194, 17.579670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542305, 42.388004, 18.379976>,  <36.438179, 42.263260, 17.563639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542305, 42.388004, 18.379976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392765, 42.758007, 18.407110>,  <36.303043, 42.980007, 18.423391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392765, 42.758007, 18.407110>,  <36.542305, 42.388004, 18.379976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392765, 42.758007, 18.407110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105624, -0.115125, 0.987720,
		0.921456, 0.362092, 0.140742,
		-0.373848, 0.925006, 0.067837,
		36.280609, 43.035507, 18.427462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892303, 42.758785, 18.978786>,  <36.542305, 42.388004, 18.379976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892303, 42.758785, 18.978786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559078, 42.974445, 18.929268>,  <36.359142, 43.103844, 18.899557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559078, 42.974445, 18.929268>,  <36.892303, 42.758785, 18.978786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559078, 42.974445, 18.929268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032528, 0.175662, 0.983913,
		0.552226, 0.823685, -0.128800,
		-0.833060, 0.539153, -0.123798,
		36.309162, 43.136192, 18.892128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006321, 43.405701, 19.166140>,  <36.892303, 42.758785, 18.978786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006321, 43.405701, 19.166140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611115, 43.416080, 19.227011>,  <36.373993, 43.422310, 19.263533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611115, 43.416080, 19.227011>,  <37.006321, 43.405701, 19.166140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611115, 43.416080, 19.227011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152555, 0.314971, 0.936760,
		-0.023619, 0.948746, -0.315155,
		-0.988013, 0.025953, 0.152176,
		36.314713, 43.423866, 19.272663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899117, 44.060596, 19.526644>,  <37.006321, 43.405701, 19.166140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899117, 44.060596, 19.526644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562641, 43.859657, 19.606697>,  <36.360756, 43.739094, 19.654728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562641, 43.859657, 19.606697>,  <36.899117, 44.060596, 19.526644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562641, 43.859657, 19.606697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116267, 0.529472, 0.840322,
		-0.528095, 0.683600, -0.503792,
		-0.841188, -0.502344, 0.200132,
		36.310284, 43.708954, 19.666737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483715, 44.531769, 19.771744>,  <36.899117, 44.060596, 19.526644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483715, 44.531769, 19.771744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322651, 44.186974, 19.894930>,  <36.226013, 43.980095, 19.968842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322651, 44.186974, 19.894930>,  <36.483715, 44.531769, 19.771744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322651, 44.186974, 19.894930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137165, 0.389467, 0.910770,
		-0.905016, 0.324485, -0.275056,
		-0.402657, -0.861989, 0.307966,
		36.201855, 43.928375, 19.987320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718739, 44.613956, 20.017328>,  <36.483715, 44.531769, 19.771744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718739, 44.613956, 20.017328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877026, 44.296410, 20.202017>,  <35.971996, 44.105881, 20.312830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877026, 44.296410, 20.202017>,  <35.718739, 44.613956, 20.017328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877026, 44.296410, 20.202017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319054, 0.352608, 0.879700,
		-0.861170, -0.495426, -0.113754,
		0.395716, -0.793864, 0.461723,
		35.995739, 44.058250, 20.340534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277641, 44.438087, 20.588984>,  <35.718739, 44.613956, 20.017328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277641, 44.438087, 20.588984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593597, 44.217464, 20.696205>,  <35.783173, 44.085091, 20.760538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593597, 44.217464, 20.696205>,  <35.277641, 44.438087, 20.588984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593597, 44.217464, 20.696205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243946, 0.118426, 0.962531,
		-0.562639, -0.825685, -0.041008,
		0.789891, -0.551561, 0.268054,
		35.830566, 44.051994, 20.776621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178841, 43.831928, 21.005735>,  <35.277641, 44.438087, 20.588984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178841, 43.831928, 21.005735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562344, 43.911934, 21.086506>,  <35.792446, 43.959938, 21.134968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562344, 43.911934, 21.086506>,  <35.178841, 43.831928, 21.005735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562344, 43.911934, 21.086506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231555, 0.137710, 0.963026,
		0.164811, -0.970067, 0.178345,
		0.958759, 0.200014, 0.201928,
		35.849972, 43.971939, 21.147085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356663, 43.370274, 21.668709>,  <35.178841, 43.831928, 21.005735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356663, 43.370274, 21.668709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619713, 43.671421, 21.658072>,  <35.777542, 43.852112, 21.651690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619713, 43.671421, 21.658072>,  <35.356663, 43.370274, 21.668709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619713, 43.671421, 21.658072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092453, 0.115690, 0.988973,
		0.747648, -0.647918, 0.145686,
		0.657628, 0.752873, -0.026593,
		35.817001, 43.897282, 21.650093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053772, 43.235828, 21.995514>,  <35.356663, 43.370274, 21.668709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053772, 43.235828, 21.995514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055603, 43.635063, 22.020153>,  <36.056702, 43.874603, 22.034937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055603, 43.635063, 22.020153>,  <36.053772, 43.235828, 21.995514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055603, 43.635063, 22.020153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270481, -0.058068, 0.960973,
		0.962714, -0.021061, 0.269699,
		0.004578, 0.998091, 0.061600,
		36.056976, 43.934490, 22.038633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337189, 43.379765, 22.635292>,  <36.053772, 43.235828, 21.995514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337189, 43.379765, 22.635292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169765, 43.729630, 22.537498>,  <36.069309, 43.939548, 22.478823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169765, 43.729630, 22.537498>,  <36.337189, 43.379765, 22.635292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169765, 43.729630, 22.537498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056600, 0.243554, 0.968234,
		0.906423, 0.419104, -0.052437,
		-0.418562, 0.874662, -0.244484,
		36.044197, 43.992027, 22.464153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668503, 43.986057, 23.055502>,  <36.337189, 43.379765, 22.635292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668503, 43.986057, 23.055502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299850, 44.095783, 22.945700>,  <36.078659, 44.161617, 22.879818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299850, 44.095783, 22.945700>,  <36.668503, 43.986057, 23.055502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299850, 44.095783, 22.945700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194467, 0.285684, 0.938385,
		0.335832, 0.918225, -0.209950,
		-0.921629, 0.274312, -0.274507,
		36.023361, 44.178078, 22.863348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538719, 44.638023, 23.474771>,  <36.668503, 43.986057, 23.055502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538719, 44.638023, 23.474771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162689, 44.571846, 23.355513>,  <35.937073, 44.532139, 23.283957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162689, 44.571846, 23.355513>,  <36.538719, 44.638023, 23.474771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162689, 44.571846, 23.355513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316869, 0.100953, 0.943081,
		-0.125925, 0.981039, -0.147327,
		-0.940073, -0.165441, -0.298148,
		35.880669, 44.522213, 23.266068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998920, 45.164024, 23.794460>,  <36.538719, 44.638023, 23.474771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998920, 45.164024, 23.794460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809959, 44.831909, 23.676168>,  <35.696583, 44.632641, 23.605194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809959, 44.831909, 23.676168>,  <35.998920, 45.164024, 23.794460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809959, 44.831909, 23.676168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399739, -0.097202, 0.911460,
		-0.785520, 0.548793, -0.285980,
		-0.472405, -0.830288, -0.295728,
		35.668240, 44.582821, 23.587450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307598, 45.169010, 24.064840>,  <35.998920, 45.164024, 23.794460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307598, 45.169010, 24.064840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387241, 44.783855, 23.991947>,  <35.435028, 44.552765, 23.948212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387241, 44.783855, 23.991947>,  <35.307598, 45.169010, 24.064840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387241, 44.783855, 23.991947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254878, -0.230440, 0.939114,
		-0.946253, -0.140535, -0.291300,
		0.199105, -0.962885, -0.182235,
		35.446972, 44.494991, 23.937277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921944, 44.864967, 24.555573>,  <35.307598, 45.169010, 24.064840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921944, 44.864967, 24.555573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132786, 44.545547, 24.439308>,  <35.259289, 44.353897, 24.369551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132786, 44.545547, 24.439308>,  <34.921944, 44.864967, 24.555573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132786, 44.545547, 24.439308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106132, -0.401213, 0.909815,
		-0.843148, -0.448718, -0.296233,
		0.527103, -0.798549, -0.290659,
		35.290916, 44.305984, 24.352110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501072, 44.279064, 24.678301>,  <34.921944, 44.864967, 24.555573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501072, 44.279064, 24.678301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862801, 44.108498, 24.670662>,  <35.079838, 44.006157, 24.666079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862801, 44.108498, 24.670662>,  <34.501072, 44.279064, 24.678301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862801, 44.108498, 24.670662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166274, -0.393125, 0.904326,
		-0.393125, -0.814631, -0.426415,
		-0.904326, 0.426415, 0.019096,
		35.134098, 43.980572, 24.664934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327984, 43.637512, 24.857542>,  <34.501072, 44.279064, 24.678301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327984, 43.637512, 24.857542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711121, 43.710453, 24.946339>,  <34.941002, 43.754219, 24.999617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711121, 43.710453, 24.946339>,  <34.327984, 43.637512, 24.857542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711121, 43.710453, 24.946339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122304, -0.440361, 0.889451,
		0.259954, -0.879106, -0.399495,
		0.957844, 0.182356, 0.221992,
		34.998474, 43.765160, 25.012936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623119, 43.015701, 24.822105>,  <34.327984, 43.637512, 24.857542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623119, 43.015701, 24.822105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833412, 43.268188, 25.050200>,  <34.959587, 43.419682, 25.187056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833412, 43.268188, 25.050200>,  <34.623119, 43.015701, 24.822105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833412, 43.268188, 25.050200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158603, -0.585859, 0.794742,
		0.835732, -0.508264, -0.207893,
		0.525735, 0.631218, 0.570233,
		34.991131, 43.457554, 25.221270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023441, 42.570881, 25.200659>,  <34.623119, 43.015701, 24.822105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023441, 42.570881, 25.200659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071777, 42.894867, 25.430220>,  <35.100780, 43.089256, 25.567955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071777, 42.894867, 25.430220>,  <35.023441, 42.570881, 25.200659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071777, 42.894867, 25.430220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095972, -0.565896, 0.818872,
		0.988022, -0.154030, 0.009351,
		0.120839, 0.809961, 0.573900,
		35.108028, 43.137856, 25.602390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575909, 42.408634, 25.720736>,  <35.023441, 42.570881, 25.200659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575909, 42.408634, 25.720736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385166, 42.728077, 25.867613>,  <35.270721, 42.919743, 25.955740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385166, 42.728077, 25.867613>,  <35.575909, 42.408634, 25.720736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385166, 42.728077, 25.867613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076014, -0.453650, 0.887932,
		0.875690, 0.395502, 0.277031,
		-0.476854, 0.798611, 0.367193,
		35.242111, 42.967659, 25.977770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953697, 42.531975, 26.386492>,  <35.575909, 42.408634, 25.720736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953697, 42.531975, 26.386492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592979, 42.703499, 26.407953>,  <35.376549, 42.806416, 26.420830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592979, 42.703499, 26.407953>,  <35.953697, 42.531975, 26.386492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592979, 42.703499, 26.407953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217135, -0.556938, 0.801669,
		0.373648, 0.711293, 0.595356,
		-0.901798, 0.428815, 0.053652,
		35.322441, 42.832142, 26.424049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802105, 42.694077, 27.069042>,  <35.953697, 42.531975, 26.386492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802105, 42.694077, 27.069042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432178, 42.678474, 26.917677>,  <35.210224, 42.669113, 26.826859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432178, 42.678474, 26.917677>,  <35.802105, 42.694077, 27.069042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432178, 42.678474, 26.917677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284091, -0.590743, 0.755192,
		-0.253003, 0.805916, 0.535246,
		-0.924815, -0.039007, -0.378413,
		35.154736, 42.666771, 26.804153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386528, 42.994453, 27.613853>,  <35.802105, 42.694077, 27.069042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386528, 42.994453, 27.613853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148540, 42.788204, 27.367229>,  <35.005749, 42.664455, 27.219255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148540, 42.788204, 27.367229>,  <35.386528, 42.994453, 27.613853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148540, 42.788204, 27.367229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438819, -0.434300, 0.786652,
		-0.673390, 0.738589, 0.032127,
		-0.594965, -0.515625, -0.616560,
		34.970051, 42.633518, 27.182261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697659, 43.129063, 27.889887>,  <35.386528, 42.994453, 27.613853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697659, 43.129063, 27.889887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699863, 42.788189, 27.680605>,  <34.701187, 42.583664, 27.555035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699863, 42.788189, 27.680605>,  <34.697659, 43.129063, 27.889887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699863, 42.788189, 27.680605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637393, -0.406145, 0.654811,
		-0.770520, 0.329881, -0.545416,
		0.005508, -0.852188, -0.523206,
		34.701515, 42.532532, 27.523643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038033, 42.820999, 27.933001>,  <34.697659, 43.129063, 27.889887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038033, 42.820999, 27.933001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277821, 42.514347, 27.840996>,  <34.421692, 42.330357, 27.785793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277821, 42.514347, 27.840996>,  <34.038033, 42.820999, 27.933001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277821, 42.514347, 27.840996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482519, -0.575430, 0.660345,
		-0.638601, -0.284870, -0.714869,
		0.599469, -0.766635, -0.230015,
		34.457661, 42.284355, 27.771992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586899, 42.280048, 27.874807>,  <34.038033, 42.820999, 27.933001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586899, 42.280048, 27.874807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940674, 42.097057, 27.911676>,  <34.152939, 41.987263, 27.933798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940674, 42.097057, 27.911676>,  <33.586899, 42.280048, 27.874807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940674, 42.097057, 27.911676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358894, -0.540541, 0.760927,
		-0.298282, -0.706069, -0.642257,
		0.884434, -0.457473, 0.092171,
		34.206005, 41.959816, 27.939327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383965, 41.601875, 28.109608>,  <33.586899, 42.280048, 27.874807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383965, 41.601875, 28.109608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771839, 41.660057, 28.188143>,  <34.004566, 41.694965, 28.235264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771839, 41.660057, 28.188143>,  <33.383965, 41.601875, 28.109608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771839, 41.660057, 28.188143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119102, -0.420255, 0.899556,
		0.213354, -0.895673, -0.390193,
		0.969688, 0.145451, 0.196339,
		34.062744, 41.703693, 28.247044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574745, 41.052013, 28.420425>,  <33.383965, 41.601875, 28.109608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574745, 41.052013, 28.420425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870789, 41.291264, 28.543383>,  <34.048416, 41.434814, 28.617157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870789, 41.291264, 28.543383>,  <33.574745, 41.052013, 28.420425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870789, 41.291264, 28.543383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079277, -0.376310, 0.923096,
		0.667798, -0.707560, -0.231093,
		0.740109, 0.598121, 0.307392,
		34.092823, 41.470699, 28.635601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079185, 40.589058, 28.760704>,  <33.574745, 41.052013, 28.420425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079185, 40.589058, 28.760704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122902, 40.960835, 28.901665>,  <34.149132, 41.183903, 28.986242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122902, 40.960835, 28.901665>,  <34.079185, 40.589058, 28.760704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122902, 40.960835, 28.901665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154869, -0.334277, 0.929664,
		0.981871, -0.156182, 0.107408,
		0.109293, 0.929444, 0.352404,
		34.155689, 41.239666, 29.007385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511158, 40.551296, 29.348677>,  <34.079185, 40.589058, 28.760704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511158, 40.551296, 29.348677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344746, 40.908173, 29.419010>,  <34.244900, 41.122299, 29.461210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344746, 40.908173, 29.419010>,  <34.511158, 40.551296, 29.348677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344746, 40.908173, 29.419010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084568, -0.230483, 0.969395,
		0.905410, 0.388427, 0.171338,
		-0.416030, 0.892190, 0.175833,
		34.219936, 41.175831, 29.471760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832394, 40.810417, 29.928337>,  <34.511158, 40.551296, 29.348677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832394, 40.810417, 29.928337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488834, 41.013950, 29.905081>,  <34.282700, 41.136070, 29.891127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488834, 41.013950, 29.905081>,  <34.832394, 40.810417, 29.928337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488834, 41.013950, 29.905081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178343, -0.190738, 0.965305,
		0.480086, 0.839471, 0.254571,
		-0.858902, 0.508830, -0.058143,
		34.231163, 41.166599, 29.887638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781738, 41.358223, 30.489580>,  <34.832394, 40.810417, 29.928337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781738, 41.358223, 30.489580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405056, 41.275303, 30.383587>,  <34.179047, 41.225552, 30.319990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405056, 41.275303, 30.383587>,  <34.781738, 41.358223, 30.489580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405056, 41.275303, 30.383587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221247, -0.211770, 0.951947,
		-0.253454, 0.955081, 0.153561,
		-0.941706, -0.207300, -0.264983,
		34.122543, 41.213112, 30.304092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394703, 41.518883, 31.071409>,  <34.781738, 41.358223, 30.489580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394703, 41.518883, 31.071409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123516, 41.297993, 30.877331>,  <33.960804, 41.165459, 30.760883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123516, 41.297993, 30.877331>,  <34.394703, 41.518883, 31.071409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123516, 41.297993, 30.877331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272765, -0.423941, 0.863640,
		-0.682617, 0.717860, 0.136789,
		-0.677963, -0.552224, -0.485196,
		33.920128, 41.132324, 30.731771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813717, 41.544079, 31.489983>,  <34.394703, 41.518883, 31.071409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813717, 41.544079, 31.489983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744740, 41.230705, 31.251154>,  <33.703354, 41.042683, 31.107857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744740, 41.230705, 31.251154>,  <33.813717, 41.544079, 31.489983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744740, 41.230705, 31.251154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384119, -0.504680, 0.773143,
		-0.907037, 0.362669, -0.213904,
		-0.172442, -0.783434, -0.597072,
		33.693008, 40.995674, 31.072033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127777, 41.323471, 31.750801>,  <33.813717, 41.544079, 31.489983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127777, 41.323471, 31.750801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297169, 41.019341, 31.553797>,  <33.398804, 40.836864, 31.435595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297169, 41.019341, 31.553797>,  <33.127777, 41.323471, 31.750801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297169, 41.019341, 31.553797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356326, -0.639651, 0.681086,
		-0.832883, -0.112934, -0.541805,
		0.423484, -0.760324, -0.492513,
		33.424213, 40.791245, 31.406042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718292, 40.665165, 31.832474>,  <33.127777, 41.323471, 31.750801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718292, 40.665165, 31.832474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086693, 40.546963, 31.730938>,  <33.307732, 40.476044, 31.670017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086693, 40.546963, 31.730938>,  <32.718292, 40.665165, 31.832474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086693, 40.546963, 31.730938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001151, -0.653665, 0.756783,
		-0.389555, -0.696707, -0.602367,
		0.921002, -0.295502, -0.253837,
		33.362995, 40.458313, 31.654787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745625, 39.892429, 31.880306>,  <32.718292, 40.665165, 31.832474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745625, 39.892429, 31.880306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139503, 39.958961, 31.901085>,  <33.375832, 39.998882, 31.913551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139503, 39.958961, 31.901085>,  <32.745625, 39.892429, 31.880306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139503, 39.958961, 31.901085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073732, -0.667805, 0.740676,
		0.157889, -0.725514, -0.669852,
		0.984700, 0.166334, 0.051946,
		33.434914, 40.008862, 31.916668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013760, 39.260811, 32.001427>,  <32.745625, 39.892429, 31.880306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013760, 39.260811, 32.001427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282993, 39.529221, 32.125801>,  <33.444534, 39.690266, 32.200428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282993, 39.529221, 32.125801>,  <33.013760, 39.260811, 32.001427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282993, 39.529221, 32.125801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261033, -0.608925, 0.749048,
		0.691970, -0.423005, -0.585016,
		0.673082, 0.671027, 0.310939,
		33.484917, 39.730530, 32.219082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453548, 38.824768, 32.402035>,  <33.013760, 39.260811, 32.001427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453548, 38.824768, 32.402035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541660, 39.191338, 32.535690>,  <33.594528, 39.411278, 32.615883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541660, 39.191338, 32.535690>,  <33.453548, 38.824768, 32.402035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541660, 39.191338, 32.535690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016401, -0.345989, 0.938095,
		0.975300, -0.201159, -0.091243,
		0.220276, 0.916420, 0.334143,
		33.607742, 39.466263, 32.635933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912266, 38.789131, 32.813091>,  <33.453548, 38.824768, 32.402035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912266, 38.789131, 32.813091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799259, 39.156281, 32.924583>,  <33.731457, 39.376572, 32.991478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799259, 39.156281, 32.924583>,  <33.912266, 38.789131, 32.813091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799259, 39.156281, 32.924583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043738, -0.277937, 0.959603,
		0.958264, 0.283296, 0.038376,
		-0.282517, 0.917875, 0.278728,
		33.714504, 39.431644, 33.008202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433826, 39.039139, 33.266216>,  <33.912266, 38.789131, 32.813091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433826, 39.039139, 33.266216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084297, 39.217743, 33.343216>,  <33.874580, 39.324905, 33.389416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084297, 39.217743, 33.343216>,  <34.433826, 39.039139, 33.266216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084297, 39.217743, 33.343216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191080, -0.048716, 0.980365,
		0.447123, 0.893450, -0.042750,
		-0.873824, 0.446513, 0.192502,
		33.822151, 39.351696, 33.400967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999180, 39.550449, 33.299961>,  <34.433826, 39.039139, 33.266216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999180, 39.550449, 33.299961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390629, 39.478489, 33.339825>,  <35.625500, 39.435314, 33.363743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390629, 39.478489, 33.339825>,  <34.999180, 39.550449, 33.299961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390629, 39.478489, 33.339825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205269, 0.884397, -0.419174,
		-0.012731, 0.430671, 0.902419,
		0.978623, -0.179902, 0.099663,
		35.684216, 39.424519, 33.369724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281090, 40.225189, 33.440899>,  <34.999180, 39.550449, 33.299961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281090, 40.225189, 33.440899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586479, 39.992798, 33.328072>,  <35.769714, 39.853363, 33.260376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586479, 39.992798, 33.328072>,  <35.281090, 40.225189, 33.440899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586479, 39.992798, 33.328072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347639, 0.737774, -0.578651,
		0.544287, 0.343730, 0.765246,
		0.763478, -0.580982, -0.282067,
		35.815521, 39.818504, 33.243450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837688, 40.648796, 33.467136>,  <35.281090, 40.225189, 33.440899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837688, 40.648796, 33.467136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930782, 40.337788, 33.233452>,  <35.986637, 40.151184, 33.093243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930782, 40.337788, 33.233452>,  <35.837688, 40.648796, 33.467136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930782, 40.337788, 33.233452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263768, 0.628654, -0.731588,
		0.936089, 0.016166, 0.351391,
		0.232731, -0.777517, -0.584212,
		36.000603, 40.104534, 33.058189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585213, 40.630497, 33.314857>,  <35.837688, 40.648796, 33.467136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585213, 40.630497, 33.314857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434956, 40.437813, 32.998165>,  <36.344799, 40.322201, 32.808147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434956, 40.437813, 32.998165>,  <36.585213, 40.630497, 33.314857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434956, 40.437813, 32.998165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564363, 0.558731, -0.607713,
		0.735109, -0.675111, 0.061975,
		-0.375646, -0.481711, -0.791735,
		36.322262, 40.293301, 32.760643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134445, 40.556538, 32.880707>,  <36.585213, 40.630497, 33.314857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134445, 40.556538, 32.880707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861778, 40.436924, 32.613602>,  <36.698177, 40.365154, 32.453339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861778, 40.436924, 32.613602>,  <37.134445, 40.556538, 32.880707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861778, 40.436924, 32.613602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489006, 0.492684, -0.719816,
		0.544246, -0.817215, -0.189618,
		-0.681667, -0.299033, -0.667765,
		36.657280, 40.347214, 32.413273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461884, 40.214535, 32.392036>,  <37.134445, 40.556538, 32.880707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461884, 40.214535, 32.392036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127388, 40.373028, 32.240402>,  <36.926693, 40.468124, 32.149422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127388, 40.373028, 32.240402>,  <37.461884, 40.214535, 32.392036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127388, 40.373028, 32.240402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544687, 0.520214, -0.657794,
		-0.063432, -0.756556, -0.650845,
		-0.836237, 0.396232, -0.379088,
		36.876518, 40.491898, 32.126675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456970, 39.967907, 31.645975>,  <37.461884, 40.214535, 32.392036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456970, 39.967907, 31.645975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236305, 40.300514, 31.672056>,  <37.103905, 40.500076, 31.687704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236305, 40.300514, 31.672056>,  <37.456970, 39.967907, 31.645975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236305, 40.300514, 31.672056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350877, 0.302283, -0.886290,
		-0.756673, -0.466056, -0.458518,
		-0.551663, 0.831514, 0.065201,
		37.070805, 40.549969, 31.691616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286388, 40.064205, 31.019773>,  <37.456970, 39.967907, 31.645975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286388, 40.064205, 31.019773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226963, 40.426876, 31.177691>,  <37.191307, 40.644478, 31.272440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226963, 40.426876, 31.177691>,  <37.286388, 40.064205, 31.019773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226963, 40.426876, 31.177691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359223, 0.421431, -0.832679,
		-0.921351, 0.018115, -0.388309,
		-0.148562, 0.906680, 0.394793,
		37.182396, 40.698879, 31.296129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093990, 40.551411, 30.397791>,  <37.286388, 40.064205, 31.019773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093990, 40.551411, 30.397791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111683, 40.836952, 30.677349>,  <37.122299, 41.008278, 30.845085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111683, 40.836952, 30.677349>,  <37.093990, 40.551411, 30.397791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111683, 40.836952, 30.677349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353300, 0.643197, -0.679321,
		-0.934464, 0.276965, -0.223758,
		0.044227, 0.713854, 0.698897,
		37.124950, 41.051109, 30.887018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644314, 41.116032, 30.196489>,  <37.093990, 40.551411, 30.397791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644314, 41.116032, 30.196489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941849, 41.235462, 30.435677>,  <37.120369, 41.307121, 30.579189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941849, 41.235462, 30.435677>,  <36.644314, 41.116032, 30.196489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941849, 41.235462, 30.435677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311080, 0.637199, -0.705129,
		-0.591557, 0.710515, 0.381090,
		0.743835, 0.298574, 0.597966,
		37.165001, 41.325035, 30.615067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604294, 41.820156, 30.085564>,  <36.644314, 41.116032, 30.196489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604294, 41.820156, 30.085564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968594, 41.726845, 30.221863>,  <37.187176, 41.670856, 30.303642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968594, 41.726845, 30.221863>,  <36.604294, 41.820156, 30.085564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968594, 41.726845, 30.221863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407136, 0.645252, -0.646445,
		-0.069063, 0.727482, 0.682643,
		0.910753, -0.233283, 0.340747,
		37.241821, 41.656860, 30.324087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918159, 42.457348, 30.024706>,  <36.604294, 41.820156, 30.085564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918159, 42.457348, 30.024706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230671, 42.213154, 30.076714>,  <37.418179, 42.066635, 30.107918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230671, 42.213154, 30.076714>,  <36.918159, 42.457348, 30.024706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230671, 42.213154, 30.076714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544795, 0.565293, -0.619388,
		0.304631, 0.554749, 0.774244,
		0.781280, -0.610489, 0.130019,
		37.465054, 42.030006, 30.115719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492283, 42.916630, 30.018328>,  <36.918159, 42.457348, 30.024706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492283, 42.916630, 30.018328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587269, 42.548790, 29.893147>,  <37.644260, 42.328087, 29.818037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587269, 42.548790, 29.893147>,  <37.492283, 42.916630, 30.018328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587269, 42.548790, 29.893147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287236, 0.374235, -0.881728,
		0.927957, 0.119489, 0.353011,
		0.237466, -0.919603, -0.312952,
		37.658508, 42.272907, 29.799261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169106, 42.883358, 29.757092>,  <37.492283, 42.916630, 30.018328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169106, 42.883358, 29.757092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992886, 42.564285, 29.592352>,  <37.887154, 42.372841, 29.493507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992886, 42.564285, 29.592352>,  <38.169106, 42.883358, 29.757092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992886, 42.564285, 29.592352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234116, 0.340808, -0.910516,
		0.866662, -0.497550, 0.036606,
		-0.440552, -0.797680, -0.411850,
		37.860722, 42.324982, 29.468798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497330, 42.830933, 29.119753>,  <38.169106, 42.883358, 29.757092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497330, 42.830933, 29.119753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221954, 42.555923, 29.027355>,  <38.056728, 42.390919, 28.971916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221954, 42.555923, 29.027355>,  <38.497330, 42.830933, 29.119753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221954, 42.555923, 29.027355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131395, 0.194988, -0.971965,
		0.713292, -0.699491, -0.043900,
		-0.688440, -0.687526, -0.230993,
		38.015423, 42.349667, 28.958057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688747, 42.518013, 28.467621>,  <38.497330, 42.830933, 29.119753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688747, 42.518013, 28.467621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299957, 42.425522, 28.484594>,  <38.066685, 42.370026, 28.494780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299957, 42.425522, 28.484594>,  <38.688747, 42.518013, 28.467621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299957, 42.425522, 28.484594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105452, 0.267492, -0.957772,
		0.210110, -0.935405, -0.284378,
		-0.971974, -0.231226, 0.042437,
		38.008366, 42.356152, 28.497326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639511, 42.037186, 27.966702>,  <38.688747, 42.518013, 28.467621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639511, 42.037186, 27.966702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290852, 42.221119, 28.034569>,  <38.081657, 42.331478, 28.075289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290852, 42.221119, 28.034569>,  <38.639511, 42.037186, 27.966702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290852, 42.221119, 28.034569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199401, -0.016458, -0.979780,
		-0.447740, -0.887854, 0.106036,
		-0.871647, 0.459830, 0.169670,
		38.029358, 42.359070, 28.085470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163429, 41.892250, 27.383633>,  <38.639511, 42.037186, 27.966702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163429, 41.892250, 27.383633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982079, 42.200649, 27.562521>,  <37.873268, 42.385689, 27.669853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982079, 42.200649, 27.562521>,  <38.163429, 41.892250, 27.383633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982079, 42.200649, 27.562521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402201, 0.270797, -0.874588,
		-0.795413, -0.576392, 0.187324,
		-0.453378, 0.771001, 0.447220,
		37.846066, 42.431950, 27.696688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448257, 41.861649, 27.147905>,  <38.163429, 41.892250, 27.383633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448257, 41.861649, 27.147905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534874, 42.233414, 27.267443>,  <37.586842, 42.456470, 27.339165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534874, 42.233414, 27.267443>,  <37.448257, 41.861649, 27.147905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534874, 42.233414, 27.267443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258054, 0.349710, -0.900617,
		-0.941552, 0.117899, 0.315564,
		0.216537, 0.929410, 0.298845,
		37.599834, 42.512238, 27.357096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885170, 42.169472, 26.963242>,  <37.448257, 41.861649, 27.147905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885170, 42.169472, 26.963242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168949, 42.445984, 27.018103>,  <37.339218, 42.611893, 27.051020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168949, 42.445984, 27.018103>,  <36.885170, 42.169472, 26.963242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168949, 42.445984, 27.018103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305280, 0.476840, -0.824274,
		-0.635208, 0.542909, 0.549328,
		0.709447, 0.691284, 0.137153,
		37.381783, 42.653370, 27.059248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584736, 42.887459, 26.846699>,  <36.885170, 42.169472, 26.963242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584736, 42.887459, 26.846699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977303, 42.901878, 26.771301>,  <37.212841, 42.910530, 26.726063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977303, 42.901878, 26.771301>,  <36.584736, 42.887459, 26.846699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977303, 42.901878, 26.771301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189360, 0.341562, -0.920586,
		0.031194, 0.939168, 0.342040,
		0.981412, 0.036052, -0.188495,
		37.271725, 42.912693, 26.714752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608322, 43.203144, 26.272324>,  <36.584736, 42.887459, 26.846699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608322, 43.203144, 26.272324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999763, 43.122299, 26.287767>,  <37.234627, 43.073792, 26.297033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999763, 43.122299, 26.287767>,  <36.608322, 43.203144, 26.272324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999763, 43.122299, 26.287767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111934, 0.365447, -0.924078,
		0.172654, 0.908626, 0.380250,
		0.978602, -0.202109, 0.038610,
		37.293343, 43.061668, 26.299351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042213, 43.808323, 25.944315>,  <36.608322, 43.203144, 26.272324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042213, 43.808323, 25.944315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260410, 43.473370, 25.930311>,  <37.391331, 43.272396, 25.921909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260410, 43.473370, 25.930311>,  <37.042213, 43.808323, 25.944315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260410, 43.473370, 25.930311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162273, 0.146507, -0.975809,
		0.822255, 0.526616, 0.215803,
		0.545494, -0.837383, -0.035011,
		37.424057, 43.222153, 25.919807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685585, 43.963356, 25.586277>,  <37.042213, 43.808323, 25.944315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685585, 43.963356, 25.586277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644779, 43.565678, 25.572580>,  <37.620296, 43.327072, 25.564362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644779, 43.565678, 25.572580>,  <37.685585, 43.963356, 25.586277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644779, 43.565678, 25.572580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121553, 0.021707, -0.992347,
		0.987328, -0.105398, 0.118633,
		-0.102016, -0.994193, -0.034244,
		37.614174, 43.267418, 25.562307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219784, 43.752472, 25.105541>,  <37.685585, 43.963356, 25.586277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219784, 43.752472, 25.105541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971230, 43.439476, 25.121458>,  <37.822098, 43.251678, 25.131008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971230, 43.439476, 25.121458>,  <38.219784, 43.752472, 25.105541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971230, 43.439476, 25.121458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112064, -0.139026, -0.983928,
		0.775450, -0.606938, 0.174078,
		-0.621385, -0.782494, 0.039792,
		37.784813, 43.204727, 25.133396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561604, 43.155975, 24.850304>,  <38.219784, 43.752472, 25.105541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561604, 43.155975, 24.850304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167778, 43.103363, 24.804127>,  <37.931480, 43.071796, 24.776421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167778, 43.103363, 24.804127>,  <38.561604, 43.155975, 24.850304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167778, 43.103363, 24.804127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131638, -0.121927, -0.983771,
		0.115318, -0.983785, 0.137360,
		-0.984567, -0.131528, -0.115443,
		37.872406, 43.063904, 24.769493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526020, 42.646229, 24.327768>,  <38.561604, 43.155975, 24.850304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526020, 42.646229, 24.327768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163395, 42.814144, 24.345299>,  <37.945820, 42.914894, 24.355818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163395, 42.814144, 24.345299>,  <38.526020, 42.646229, 24.327768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163395, 42.814144, 24.345299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120363, -0.157604, -0.980140,
		-0.404548, -0.893832, 0.193405,
		-0.906561, 0.419793, 0.043826,
		37.891426, 42.940083, 24.358446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089397, 42.180092, 24.105978>,  <38.526020, 42.646229, 24.327768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089397, 42.180092, 24.105978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907688, 42.529648, 24.036760>,  <37.798660, 42.739384, 23.995230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907688, 42.529648, 24.036760>,  <38.089397, 42.180092, 24.105978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907688, 42.529648, 24.036760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010282, -0.199373, -0.979870,
		-0.890802, -0.443351, 0.099555,
		-0.454275, 0.873894, -0.173044,
		37.771404, 42.791817, 23.984848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620449, 42.010555, 23.581713>,  <38.089397, 42.180092, 24.105978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620449, 42.010555, 23.581713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676964, 42.406532, 23.578758>,  <37.710873, 42.644119, 23.576986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676964, 42.406532, 23.578758>,  <37.620449, 42.010555, 23.581713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676964, 42.406532, 23.578758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025071, -0.011037, -0.999625,
		-0.989651, 0.141052, -0.026378,
		0.141290, 0.989941, -0.007386,
		37.719349, 42.703514, 23.576542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091637, 42.236614, 23.097525>,  <37.620449, 42.010555, 23.581713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091637, 42.236614, 23.097525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382450, 42.510670, 23.115425>,  <37.556938, 42.675102, 23.126165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382450, 42.510670, 23.115425>,  <37.091637, 42.236614, 23.097525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382450, 42.510670, 23.115425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063738, -0.002452, -0.997964,
		-0.683635, 0.728407, -0.045452,
		0.727035, 0.685140, 0.044750,
		37.600559, 42.716213, 23.128851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977695, 42.672897, 22.562639>,  <37.091637, 42.236614, 23.097525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977695, 42.672897, 22.562639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363247, 42.710693, 22.662245>,  <37.594578, 42.733372, 22.722008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363247, 42.710693, 22.662245>,  <36.977695, 42.672897, 22.562639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363247, 42.710693, 22.662245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248572, 0.016629, -0.968471,
		-0.095656, 0.995387, -0.007460,
		0.963879, 0.094495, 0.249015,
		37.652412, 42.739040, 22.736950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188339, 43.200111, 22.136427>,  <36.977695, 42.672897, 22.562639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188339, 43.200111, 22.136427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499626, 42.985439, 22.266870>,  <37.686398, 42.856636, 22.345137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499626, 42.985439, 22.266870>,  <37.188339, 43.200111, 22.136427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499626, 42.985439, 22.266870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385959, -0.000894, -0.922515,
		0.495385, 0.843787, 0.206439,
		0.778222, -0.536677, 0.326110,
		37.733093, 42.824436, 22.364704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773571, 43.411346, 21.736519>,  <37.188339, 43.200111, 22.136427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773571, 43.411346, 21.736519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897850, 43.056274, 21.872459>,  <37.972416, 42.843231, 21.954023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897850, 43.056274, 21.872459>,  <37.773571, 43.411346, 21.736519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897850, 43.056274, 21.872459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386110, -0.208849, -0.898499,
		0.868554, 0.410381, 0.277852,
		0.310698, -0.887676, 0.339849,
		37.991058, 42.789970, 21.974415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378071, 43.348534, 21.483068>,  <37.773571, 43.411346, 21.736519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378071, 43.348534, 21.483068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328148, 42.970428, 21.603668>,  <38.298195, 42.743565, 21.676027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328148, 42.970428, 21.603668>,  <38.378071, 43.348534, 21.483068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328148, 42.970428, 21.603668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387851, -0.326174, -0.862080,
		0.913233, 0.009345, 0.407329,
		-0.124804, -0.945264, 0.301498,
		38.290707, 42.686848, 21.694117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007648, 43.026150, 21.418493>,  <38.378071, 43.348534, 21.483068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007648, 43.026150, 21.418493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718071, 42.751457, 21.392225>,  <38.544327, 42.586643, 21.376465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718071, 42.751457, 21.392225>,  <39.007648, 43.026150, 21.418493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718071, 42.751457, 21.392225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401052, -0.341496, -0.850022,
		0.561310, -0.641702, 0.522637,
		-0.723939, -0.686731, -0.065671,
		38.500889, 42.545437, 21.372524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315826, 42.461018, 21.140091>,  <39.007648, 43.026150, 21.418493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315826, 42.461018, 21.140091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931324, 42.368454, 21.080185>,  <38.700623, 42.312916, 21.044241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931324, 42.368454, 21.080185>,  <39.315826, 42.461018, 21.140091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931324, 42.368454, 21.080185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167284, -0.057927, -0.984206,
		0.219076, -0.971131, 0.094394,
		-0.961261, -0.231407, -0.149764,
		38.642944, 42.299034, 21.035255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346367, 41.945930, 20.711348>,  <39.315826, 42.461018, 21.140091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346367, 41.945930, 20.711348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962540, 42.054508, 20.681570>,  <38.732243, 42.119656, 20.663704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962540, 42.054508, 20.681570>,  <39.346367, 41.945930, 20.711348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962540, 42.054508, 20.681570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018302, -0.203759, -0.978850,
		-0.280871, -0.940639, 0.190554,
		-0.959571, 0.271443, -0.074446,
		38.674667, 42.135941, 20.659237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945953, 41.442924, 20.430075>,  <39.346367, 41.945930, 20.711348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945953, 41.442924, 20.430075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733509, 41.764637, 20.323446>,  <38.606045, 41.957664, 20.259468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733509, 41.764637, 20.323446>,  <38.945953, 41.442924, 20.430075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733509, 41.764637, 20.323446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072047, -0.270605, -0.959991,
		-0.844236, -0.529063, 0.085774,
		-0.531107, 0.804279, -0.266572,
		38.574177, 42.005920, 20.243475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272137, 41.153042, 20.042704>,  <38.945953, 41.442924, 20.430075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272137, 41.153042, 20.042704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311623, 40.757607, 19.997177>,  <38.335312, 40.520348, 19.969860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311623, 40.757607, 19.997177>,  <38.272137, 41.153042, 20.042704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311623, 40.757607, 19.997177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217085, -0.133015, 0.967048,
		-0.971149, -0.070750, -0.227737,
		0.098711, -0.988586, -0.113818,
		38.341236, 40.461029, 19.963032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687153, 40.817211, 20.381874>,  <38.272137, 41.153042, 20.042704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687153, 40.817211, 20.381874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991035, 40.557861, 20.362040>,  <38.173363, 40.402252, 20.350140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991035, 40.557861, 20.362040>,  <37.687153, 40.817211, 20.381874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991035, 40.557861, 20.362040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124704, -0.220103, 0.967473,
		-0.638201, -0.728809, -0.248068,
		0.759703, -0.648377, -0.049584,
		38.218948, 40.363350, 20.347164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545380, 40.349991, 20.888847>,  <37.687153, 40.817211, 20.381874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545380, 40.349991, 20.888847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928753, 40.260437, 20.818108>,  <38.158779, 40.206707, 20.775663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928753, 40.260437, 20.818108>,  <37.545380, 40.349991, 20.888847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928753, 40.260437, 20.818108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145631, -0.149124, 0.978036,
		-0.245340, -0.963140, -0.110321,
		0.958436, -0.223885, -0.176849,
		38.216286, 40.193272, 20.765053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662876, 39.751106, 21.245909>,  <37.545380, 40.349991, 20.888847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662876, 39.751106, 21.245909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018456, 39.920883, 21.177067>,  <38.231804, 40.022747, 21.135761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018456, 39.920883, 21.177067>,  <37.662876, 39.751106, 21.245909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018456, 39.920883, 21.177067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252759, -0.141259, 0.957162,
		0.381947, -0.894369, -0.232853,
		0.888949, 0.424441, -0.172106,
		38.285141, 40.048214, 21.125435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139996, 39.268303, 21.487251>,  <37.662876, 39.751106, 21.245909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139996, 39.268303, 21.487251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361946, 39.599743, 21.457495>,  <38.495117, 39.798607, 21.439640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361946, 39.599743, 21.457495>,  <38.139996, 39.268303, 21.487251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361946, 39.599743, 21.457495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479591, -0.245526, 0.842443,
		0.679782, -0.503132, -0.533625,
		0.554878, 0.828599, -0.074393,
		38.528408, 39.848324, 21.435177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899162, 39.071392, 21.521950>,  <38.139996, 39.268303, 21.487251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899162, 39.071392, 21.521950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853367, 39.455173, 21.624973>,  <38.825890, 39.685444, 21.686789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853367, 39.455173, 21.624973>,  <38.899162, 39.071392, 21.521950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853367, 39.455173, 21.624973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373629, -0.198642, 0.906059,
		0.920485, 0.199966, -0.335738,
		-0.114490, 0.959455, 0.257560,
		38.819019, 39.743011, 21.702242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569187, 39.180054, 21.942940>,  <38.899162, 39.071392, 21.521950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569187, 39.180054, 21.942940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332336, 39.484367, 22.049223>,  <39.190228, 39.666954, 22.112993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332336, 39.484367, 22.049223>,  <39.569187, 39.180054, 21.942940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332336, 39.484367, 22.049223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338447, -0.064458, 0.938775,
		0.731328, 0.645801, -0.219316,
		-0.592125, 0.760780, 0.265710,
		39.154697, 39.712601, 22.128937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926006, 39.697311, 22.281887>,  <39.569187, 39.180054, 21.942940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926006, 39.697311, 22.281887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557793, 39.763180, 22.423590>,  <39.336864, 39.802700, 22.508612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557793, 39.763180, 22.423590>,  <39.926006, 39.697311, 22.281887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557793, 39.763180, 22.423590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350714, -0.051112, 0.935087,
		0.172091, 0.985023, -0.010703,
		-0.920535, 0.164673, 0.354258,
		39.281631, 39.812580, 22.529867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986797, 40.262920, 22.847982>,  <39.926006, 39.697311, 22.281887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986797, 40.262920, 22.847982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638359, 40.074142, 22.902328>,  <39.429295, 39.960876, 22.934937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638359, 40.074142, 22.902328>,  <39.986797, 40.262920, 22.847982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638359, 40.074142, 22.902328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217142, -0.121980, 0.968489,
		-0.440498, 0.873150, 0.208735,
		-0.871097, -0.471943, 0.135865,
		39.377029, 39.932560, 22.943089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602924, 40.727341, 23.412176>,  <39.986797, 40.262920, 22.847982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602924, 40.727341, 23.412176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455898, 40.355991, 23.390205>,  <39.367683, 40.133183, 23.377024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455898, 40.355991, 23.390205>,  <39.602924, 40.727341, 23.412176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455898, 40.355991, 23.390205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128002, -0.007995, 0.991742,
		-0.921148, 0.371556, -0.115896,
		-0.367561, -0.928376, -0.054925,
		39.345631, 40.077480, 23.373728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074089, 40.816055, 23.856556>,  <39.602924, 40.727341, 23.412176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074089, 40.816055, 23.856556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154076, 40.426678, 23.811968>,  <39.202068, 40.193050, 23.785215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154076, 40.426678, 23.811968>,  <39.074089, 40.816055, 23.856556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154076, 40.426678, 23.811968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119312, -0.088728, 0.988884,
		-0.972511, -0.211046, 0.098400,
		0.199969, -0.973441, -0.111469,
		39.214066, 40.134644, 23.778526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613235, 40.482979, 24.235077>,  <39.074089, 40.816055, 23.856556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613235, 40.482979, 24.235077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926445, 40.236889, 24.198483>,  <39.114372, 40.089233, 24.176527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926445, 40.236889, 24.198483>,  <38.613235, 40.482979, 24.235077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926445, 40.236889, 24.198483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045149, -0.090475, 0.994875,
		-0.620347, -0.783144, -0.043067,
		0.783026, -0.615224, -0.091484,
		39.161354, 40.052322, 24.171038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510509, 39.873005, 24.641809>,  <38.613235, 40.482979, 24.235077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510509, 39.873005, 24.641809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907696, 39.916149, 24.622284>,  <39.146008, 39.942036, 24.610569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907696, 39.916149, 24.622284>,  <38.510509, 39.873005, 24.641809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907696, 39.916149, 24.622284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059644, -0.099582, 0.993240,
		0.102269, -0.989166, -0.105315,
		0.992967, 0.107859, -0.048814,
		39.205585, 39.948505, 24.607639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752998, 39.291664, 25.042721>,  <38.510509, 39.873005, 24.641809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752998, 39.291664, 25.042721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060108, 39.544285, 24.999510>,  <39.244373, 39.695858, 24.973583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060108, 39.544285, 24.999510>,  <38.752998, 39.291664, 25.042721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060108, 39.544285, 24.999510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271847, -0.168417, 0.947489,
		0.580191, -0.756824, -0.300991,
		0.767774, 0.631548, -0.108027,
		39.290440, 39.733749, 24.967102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209839, 38.948673, 25.378580>,  <38.752998, 39.291664, 25.042721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209839, 38.948673, 25.378580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345985, 39.324619, 25.389956>,  <39.427673, 39.550186, 25.396782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345985, 39.324619, 25.389956>,  <39.209839, 38.948673, 25.378580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345985, 39.324619, 25.389956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211633, -0.106043, 0.971579,
		0.916166, -0.324677, -0.235000,
		0.340369, 0.939862, 0.028441,
		39.448097, 39.606579, 25.398487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761154, 38.820545, 25.697090>,  <39.209839, 38.948673, 25.378580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761154, 38.820545, 25.697090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716267, 39.217514, 25.717094>,  <39.689335, 39.455696, 25.729097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716267, 39.217514, 25.717094>,  <39.761154, 38.820545, 25.697090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716267, 39.217514, 25.717094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090715, -0.039888, 0.995078,
		0.989534, 0.116201, -0.085551,
		-0.112217, 0.992424, 0.050012,
		39.682602, 39.515240, 25.732098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285034, 39.168789, 26.088654>,  <39.761154, 38.820545, 25.697090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285034, 39.168789, 26.088654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966747, 39.410767, 26.100451>,  <39.775776, 39.555954, 26.107529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966747, 39.410767, 26.100451>,  <40.285034, 39.168789, 26.088654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966747, 39.410767, 26.100451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008241, -0.037872, 0.999249,
		0.605608, 0.795366, 0.025150,
		-0.795720, 0.604946, 0.029490,
		39.728031, 39.592251, 26.109297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396549, 39.529892, 26.614061>,  <40.285034, 39.168789, 26.088654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396549, 39.529892, 26.614061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005127, 39.599445, 26.569897>,  <39.770271, 39.641178, 26.543398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005127, 39.599445, 26.569897>,  <40.396549, 39.529892, 26.614061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005127, 39.599445, 26.569897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079506, 0.175637, 0.981239,
		0.190010, 0.968978, -0.158046,
		-0.978558, 0.173880, -0.110412,
		39.711559, 39.651608, 26.536774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238838, 40.171375, 27.040598>,  <40.396549, 39.529892, 26.614061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238838, 40.171375, 27.040598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895470, 39.977623, 26.973076>,  <39.689449, 39.861374, 26.932562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895470, 39.977623, 26.973076>,  <40.238838, 40.171375, 27.040598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895470, 39.977623, 26.973076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357024, 0.327902, 0.874651,
		-0.368310, 0.811084, -0.454412,
		-0.858418, -0.484378, -0.168807,
		39.637943, 39.832310, 26.922434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723305, 40.578190, 27.288353>,  <40.238838, 40.171375, 27.040598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723305, 40.578190, 27.288353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520363, 40.234791, 27.258478>,  <39.398598, 40.028751, 27.240553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520363, 40.234791, 27.258478>,  <39.723305, 40.578190, 27.288353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520363, 40.234791, 27.258478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262477, 0.071402, 0.962293,
		-0.820790, 0.507829, -0.261561,
		-0.507356, -0.858494, -0.074687,
		39.368156, 39.977242, 27.236073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049355, 40.673874, 27.503946>,  <39.723305, 40.578190, 27.288353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049355, 40.673874, 27.503946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115471, 40.282993, 27.557240>,  <39.155140, 40.048466, 27.589216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115471, 40.282993, 27.557240>,  <39.049355, 40.673874, 27.503946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115471, 40.282993, 27.557240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404677, 0.055995, 0.912744,
		-0.899397, -0.204787, -0.386196,
		0.165294, -0.977204, 0.133234,
		39.165058, 39.989834, 27.597210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402840, 40.333324, 27.866762>,  <39.049355, 40.673874, 27.503946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402840, 40.333324, 27.866762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731590, 40.112701, 27.923761>,  <38.928841, 39.980328, 27.957960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731590, 40.112701, 27.923761>,  <38.402840, 40.333324, 27.866762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731590, 40.112701, 27.923761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169777, 0.001623, 0.985481,
		-0.543786, -0.834132, -0.092308,
		0.821872, -0.551562, 0.142499,
		38.978153, 39.947231, 27.966511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220242, 39.813297, 28.308502>,  <38.402840, 40.333324, 27.866762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220242, 39.813297, 28.308502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619377, 39.817799, 28.334398>,  <38.858860, 39.820499, 28.349936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619377, 39.817799, 28.334398>,  <38.220242, 39.813297, 28.308502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619377, 39.817799, 28.334398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065171, 0.043385, 0.996930,
		0.008410, -0.998995, 0.044025,
		0.997839, 0.011253, 0.064741,
		38.918728, 39.821175, 28.353821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278603, 39.313488, 28.805418>,  <38.220242, 39.813297, 28.308502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278603, 39.313488, 28.805418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607555, 39.539471, 28.778566>,  <38.804928, 39.675060, 28.762455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607555, 39.539471, 28.778566>,  <38.278603, 39.313488, 28.805418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607555, 39.539471, 28.778566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133207, -0.076490, 0.988132,
		0.553120, -0.821566, -0.138160,
		0.822383, 0.564959, -0.067130,
		38.854271, 39.708958, 28.758427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732155, 38.977829, 29.294542>,  <38.278603, 39.313488, 28.805418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732155, 38.977829, 29.294542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857845, 39.356972, 29.273281>,  <38.933258, 39.584457, 29.260525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857845, 39.356972, 29.273281>,  <38.732155, 38.977829, 29.294542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857845, 39.356972, 29.273281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073996, 0.031363, 0.996765,
		0.946460, -0.317143, -0.060282,
		0.314226, 0.947859, -0.053151,
		38.952114, 39.641331, 29.257336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150455, 38.957394, 29.844257>,  <38.732155, 38.977829, 29.294542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150455, 38.957394, 29.844257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081295, 39.343716, 29.766985>,  <39.039799, 39.575508, 29.720621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081295, 39.343716, 29.766985>,  <39.150455, 38.957394, 29.844257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081295, 39.343716, 29.766985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024473, 0.191861, 0.981117,
		0.984635, 0.174365, -0.009537,
		-0.172902, 0.965808, -0.193181,
		39.029423, 39.633457, 29.709030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725945, 39.305485, 30.113056>,  <39.150455, 38.957394, 29.844257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725945, 39.305485, 30.113056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423683, 39.566444, 30.089857>,  <39.242325, 39.723019, 30.075937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423683, 39.566444, 30.089857>,  <39.725945, 39.305485, 30.113056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423683, 39.566444, 30.089857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020980, 0.112612, 0.993417,
		0.654635, 0.749463, -0.098783,
		-0.755654, 0.652398, -0.057996,
		39.196987, 39.762165, 30.072458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935352, 39.951267, 30.396414>,  <39.725945, 39.305485, 30.113056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935352, 39.951267, 30.396414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536598, 39.940048, 30.425888>,  <39.297344, 39.933319, 30.443573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536598, 39.940048, 30.425888>,  <39.935352, 39.951267, 30.396414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536598, 39.940048, 30.425888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069379, 0.131947, 0.988826,
		-0.037453, 0.990860, -0.129591,
		-0.996887, -0.028044, 0.073687,
		39.237534, 39.931637, 30.447994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758942, 40.524063, 30.834995>,  <39.935352, 39.951267, 30.396414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758942, 40.524063, 30.834995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452389, 40.268269, 30.859343>,  <39.268456, 40.114792, 30.873951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452389, 40.268269, 30.859343>,  <39.758942, 40.524063, 30.834995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452389, 40.268269, 30.859343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022764, 0.067659, 0.997449,
		-0.641977, 0.765816, -0.037296,
		-0.766386, -0.639490, 0.060869,
		39.222473, 40.076420, 30.877604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422390, 40.773056, 31.386892>,  <39.758942, 40.524063, 30.834995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422390, 40.773056, 31.386892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255978, 40.412624, 31.337948>,  <39.156132, 40.196365, 31.308580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255978, 40.412624, 31.337948>,  <39.422390, 40.773056, 31.386892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255978, 40.412624, 31.337948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033778, -0.119154, 0.992301,
		-0.908723, 0.416960, 0.019134,
		-0.416030, -0.901081, -0.122362,
		39.131168, 40.142300, 31.301239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973591, 40.832321, 31.892183>,  <39.422390, 40.773056, 31.386892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973591, 40.832321, 31.892183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024319, 40.440945, 31.826990>,  <39.054756, 40.206120, 31.787874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024319, 40.440945, 31.826990>,  <38.973591, 40.832321, 31.892183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024319, 40.440945, 31.826990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015952, -0.162276, 0.986616,
		-0.991798, -0.127718, -0.004971,
		0.126816, -0.978445, -0.162982,
		39.062363, 40.147411, 31.778095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512760, 40.465748, 32.300900>,  <38.973591, 40.832321, 31.892183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512760, 40.465748, 32.300900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795177, 40.190163, 32.235363>,  <38.964626, 40.024811, 32.196041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795177, 40.190163, 32.235363>,  <38.512760, 40.465748, 32.300900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795177, 40.190163, 32.235363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012084, -0.243042, 0.969940,
		-0.708071, -0.682835, -0.179922,
		0.706038, -0.688960, -0.163840,
		39.006989, 39.983475, 32.186211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285805, 39.736130, 32.558678>,  <38.512760, 40.465748, 32.300900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285805, 39.736130, 32.558678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685474, 39.744797, 32.572372>,  <38.925278, 39.749996, 32.580589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685474, 39.744797, 32.572372>,  <38.285805, 39.736130, 32.558678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685474, 39.744797, 32.572372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020261, -0.464586, 0.885296,
		0.035086, -0.885263, -0.463766,
		0.999179, 0.021665, 0.034237,
		38.985229, 39.751297, 32.582642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561092, 39.108364, 32.890839>,  <38.285805, 39.736130, 32.558678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561092, 39.108364, 32.890839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890797, 39.334831, 32.893703>,  <39.088619, 39.470711, 32.895420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890797, 39.334831, 32.893703>,  <38.561092, 39.108364, 32.890839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890797, 39.334831, 32.893703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306254, -0.456430, 0.835392,
		0.476236, -0.686389, -0.549608,
		0.824262, 0.566164, 0.007159,
		39.138077, 39.504681, 32.895851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235031, 38.630260, 32.926533>,  <38.561092, 39.108364, 32.890839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235031, 38.630260, 32.926533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327217, 38.995670, 33.060616>,  <39.382530, 39.214916, 33.141064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327217, 38.995670, 33.060616>,  <39.235031, 38.630260, 32.926533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327217, 38.995670, 33.060616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085846, -0.362225, 0.928129,
		0.969287, -0.185124, -0.161901,
		0.230464, 0.913522, 0.335207,
		39.396355, 39.269726, 33.161179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791504, 38.593151, 33.375824>,  <39.235031, 38.630260, 32.926533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791504, 38.593151, 33.375824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677803, 38.963951, 33.473694>,  <39.609581, 39.186432, 33.532417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677803, 38.963951, 33.473694>,  <39.791504, 38.593151, 33.375824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677803, 38.963951, 33.473694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370557, -0.129146, 0.919788,
		0.884244, 0.352122, -0.306796,
		-0.284255, 0.927002, 0.244678,
		39.592525, 39.242050, 33.547096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257160, 38.875134, 33.801907>,  <39.791504, 38.593151, 33.375824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257160, 38.875134, 33.801907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938858, 39.098675, 33.895256>,  <39.747879, 39.232800, 33.951267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938858, 39.098675, 33.895256>,  <40.257160, 38.875134, 33.801907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938858, 39.098675, 33.895256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180133, -0.149498, 0.972215,
		0.578211, 0.815682, 0.018296,
		-0.795753, 0.558850, 0.233373,
		39.700130, 39.266331, 33.965267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476509, 39.335213, 34.229576>,  <40.257160, 38.875134, 33.801907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476509, 39.335213, 34.229576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083191, 39.319469, 34.300659>,  <39.847198, 39.310024, 34.343307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083191, 39.319469, 34.300659>,  <40.476509, 39.335213, 34.229576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083191, 39.319469, 34.300659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181362, -0.129325, 0.974876,
		-0.015386, 0.990821, 0.134302,
		-0.983296, -0.039357, 0.177708,
		39.788200, 39.307663, 34.353970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455330, 39.658089, 34.814114>,  <40.476509, 39.335213, 34.229576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455330, 39.658089, 34.814114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112518, 39.453075, 34.792904>,  <39.906830, 39.330067, 34.780178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112518, 39.453075, 34.792904>,  <40.455330, 39.658089, 34.814114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112518, 39.453075, 34.792904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073595, -0.223619, 0.971894,
		-0.509983, 0.829040, 0.229368,
		-0.857031, -0.512529, -0.053029,
		39.855408, 39.299316, 34.776997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105804, 39.868298, 35.315193>,  <40.455330, 39.658089, 34.814114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105804, 39.868298, 35.315193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936790, 39.517044, 35.225441>,  <39.835384, 39.306293, 35.171589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936790, 39.517044, 35.225441>,  <40.105804, 39.868298, 35.315193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936790, 39.517044, 35.225441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040738, -0.228914, 0.972594,
		-0.905432, 0.420093, 0.060950,
		-0.422532, -0.878134, -0.224380,
		39.810032, 39.253605, 35.158127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439171, 39.765320, 35.654652>,  <40.105804, 39.868298, 35.315193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439171, 39.765320, 35.654652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668392, 39.440880, 35.607788>,  <39.805923, 39.246216, 35.579670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668392, 39.440880, 35.607788>,  <39.439171, 39.765320, 35.654652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668392, 39.440880, 35.607788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073031, -0.091848, 0.993092,
		-0.816259, -0.577649, 0.006602,
		0.573052, -0.811102, -0.117157,
		39.840309, 39.197548, 35.572639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010693, 39.169540, 35.911324>,  <39.439171, 39.765320, 35.654652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010693, 39.169540, 35.911324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397114, 39.066212, 35.911896>,  <39.628967, 39.004215, 35.912239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397114, 39.066212, 35.911896>,  <39.010693, 39.169540, 35.911324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397114, 39.066212, 35.911896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066216, -0.242268, 0.967947,
		-0.249689, -0.935189, -0.251150,
		0.966059, -0.258316, 0.001433,
		39.686932, 38.988712, 35.912323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899918, 38.743942, 36.396996>,  <39.010693, 39.169540, 35.911324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899918, 38.743942, 36.396996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286587, 38.836700, 36.353622>,  <39.518589, 38.892357, 36.327599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286587, 38.836700, 36.353622>,  <38.899918, 38.743942, 36.396996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286587, 38.836700, 36.353622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163120, -0.231538, 0.959053,
		0.197299, -0.944782, -0.261650,
		0.966677, 0.231900, -0.108431,
		39.576591, 38.906269, 36.321095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146706, 38.155170, 36.614372>,  <38.899918, 38.743942, 36.396996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146706, 38.155170, 36.614372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443638, 38.423134, 36.619507>,  <39.621796, 38.583912, 36.622585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443638, 38.423134, 36.619507>,  <39.146706, 38.155170, 36.614372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443638, 38.423134, 36.619507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242197, -0.286141, 0.927073,
		0.624729, -0.685086, -0.374662,
		0.742331, 0.669911, 0.012835,
		39.666336, 38.624107, 36.623356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803509, 37.761566, 36.846977>,  <39.146706, 38.155170, 36.614372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803509, 37.761566, 36.846977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838631, 38.150829, 36.932072>,  <39.859703, 38.384388, 36.983128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838631, 38.150829, 36.932072>,  <39.803509, 37.761566, 36.846977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838631, 38.150829, 36.932072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233293, -0.227714, 0.945368,
		0.968434, -0.033378, -0.247025,
		0.087805, 0.973156, 0.212739,
		39.864971, 38.442776, 36.995892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319599, 37.767593, 37.324268>,  <39.803509, 37.761566, 36.846977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319599, 37.767593, 37.324268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153824, 38.129372, 37.364697>,  <40.054359, 38.346439, 37.388954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153824, 38.129372, 37.364697>,  <40.319599, 37.767593, 37.324268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153824, 38.129372, 37.364697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008115, -0.107378, 0.994185,
		0.910040, 0.412850, 0.037162,
		-0.414440, 0.904447, 0.101069,
		40.029491, 38.400707, 37.395016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664738, 38.115593, 37.822826>,  <40.319599, 37.767593, 37.324268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664738, 38.115593, 37.822826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315887, 38.311176, 37.829872>,  <40.106579, 38.428528, 37.834099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315887, 38.311176, 37.829872>,  <40.664738, 38.115593, 37.822826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315887, 38.311176, 37.829872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001193, -0.033877, 0.999425,
		0.489278, 0.871647, 0.028962,
		-0.872127, 0.488962, 0.017615,
		40.054249, 38.457867, 37.835155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765545, 38.646553, 38.309719>,  <40.664738, 38.115593, 37.822826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765545, 38.646553, 38.309719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368935, 38.597179, 38.293545>,  <40.130966, 38.567554, 38.283840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368935, 38.597179, 38.293545>,  <40.765545, 38.646553, 38.309719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368935, 38.597179, 38.293545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039080, -0.013418, 0.999146,
		-0.123871, 0.992262, 0.008480,
		-0.991528, -0.123434, -0.040440,
		40.071476, 38.560150, 38.281414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527927, 39.191086, 38.691864>,  <40.765545, 38.646553, 38.309719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527927, 39.191086, 38.691864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270119, 38.885288, 38.687096>,  <40.115433, 38.701809, 38.684235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270119, 38.885288, 38.687096>,  <40.527927, 39.191086, 38.691864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270119, 38.885288, 38.687096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101844, 0.070383, 0.992308,
		-0.757774, 0.640777, -0.123223,
		-0.644521, -0.764494, -0.011925,
		40.076763, 38.655941, 38.683517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884079, 39.461494, 38.989552>,  <40.527927, 39.191086, 38.691864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884079, 39.461494, 38.989552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929375, 39.068787, 39.050606>,  <39.956554, 38.833160, 39.087238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929375, 39.068787, 39.050606>,  <39.884079, 39.461494, 38.989552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929375, 39.068787, 39.050606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119866, 0.138998, 0.983012,
		-0.986311, -0.129613, -0.101941,
		0.113241, -0.981774, 0.152632,
		39.963348, 38.774254, 39.096394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699017, 39.453289, 39.564720>,  <39.884079, 39.461494, 38.989552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699017, 39.453289, 39.564720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803661, 39.067463, 39.550987>,  <39.866447, 38.835968, 39.542747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803661, 39.067463, 39.550987>,  <39.699017, 39.453289, 39.564720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803661, 39.067463, 39.550987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192796, 0.017372, 0.981085,
		-0.945721, -0.263284, 0.190508,
		0.261613, -0.964562, -0.034331,
		39.882145, 38.778095, 39.540688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304550, 39.146626, 40.159374>,  <39.699017, 39.453289, 39.564720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304550, 39.146626, 40.159374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582146, 38.875347, 40.062691>,  <39.748703, 38.712578, 40.004681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582146, 38.875347, 40.062691>,  <39.304550, 39.146626, 40.159374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582146, 38.875347, 40.062691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137114, -0.205076, 0.969094,
		-0.706806, -0.705685, -0.049331,
		0.693992, -0.678198, -0.241709,
		39.790344, 38.671886, 39.990177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040482, 38.487637, 40.337036>,  <39.304550, 39.146626, 40.159374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040482, 38.487637, 40.337036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437748, 38.525372, 40.364510>,  <39.676109, 38.548012, 40.380993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437748, 38.525372, 40.364510>,  <39.040482, 38.487637, 40.337036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437748, 38.525372, 40.364510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050865, -0.179755, 0.982396,
		0.105025, -0.979177, -0.173728,
		0.993168, 0.094340, 0.068685,
		39.735699, 38.553673, 40.385117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189831, 37.966969, 40.781578>,  <39.040482, 38.487637, 40.337036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189831, 37.966969, 40.781578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515087, 38.199715, 40.775543>,  <39.710243, 38.339363, 40.771923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515087, 38.199715, 40.775543>,  <39.189831, 37.966969, 40.781578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515087, 38.199715, 40.775543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029127, -0.014783, 0.999466,
		0.581333, -0.813150, -0.028969,
		0.813144, 0.581867, -0.015091,
		39.759029, 38.374275, 40.771015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894306, 37.691971, 41.038830>,  <39.189831, 37.966969, 40.781578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894306, 37.691971, 41.038830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858814, 38.086288, 41.095882>,  <39.837517, 38.322880, 41.130116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858814, 38.086288, 41.095882>,  <39.894306, 37.691971, 41.038830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858814, 38.086288, 41.095882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127999, -0.153297, 0.979855,
		0.987797, 0.068689, 0.139783,
		-0.088734, 0.985790, 0.142634,
		39.832195, 38.382027, 41.138672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970364, 37.829662, 41.742077>,  <39.894306, 37.691971, 41.038830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970364, 37.829662, 41.742077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877666, 38.215214, 41.689568>,  <39.822048, 38.446545, 41.658062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877666, 38.215214, 41.689568>,  <39.970364, 37.829662, 41.742077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877666, 38.215214, 41.689568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268417, 0.066344, 0.961015,
		0.935012, 0.257945, 0.243347,
		-0.231745, 0.963879, -0.131269,
		39.808144, 38.504379, 41.650188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314251, 38.259598, 42.279881>,  <39.970364, 37.829662, 41.742077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314251, 38.259598, 42.279881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980480, 38.437897, 42.150242>,  <39.780216, 38.544876, 42.072456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980480, 38.437897, 42.150242>,  <40.314251, 38.259598, 42.279881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980480, 38.437897, 42.150242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319874, 0.087171, 0.943441,
		0.448789, 0.890904, 0.069845,
		-0.834427, 0.445748, -0.324099,
		39.730152, 38.571621, 42.053013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217369, 38.877560, 42.740589>,  <40.314251, 38.259598, 42.279881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217369, 38.877560, 42.740589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860332, 38.780426, 42.588631>,  <39.646111, 38.722145, 42.497456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860332, 38.780426, 42.588631>,  <40.217369, 38.877560, 42.740589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860332, 38.780426, 42.588631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375156, -0.067362, 0.924511,
		-0.250090, 0.967727, -0.030973,
		-0.892588, -0.242831, -0.379895,
		39.592556, 38.707577, 42.474663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811905, 39.154694, 43.329144>,  <40.217369, 38.877560, 42.740589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811905, 39.154694, 43.329144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594715, 38.898144, 43.112324>,  <39.464401, 38.744213, 42.982231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594715, 38.898144, 43.112324>,  <39.811905, 39.154694, 43.329144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594715, 38.898144, 43.112324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598075, -0.157756, 0.785761,
		-0.589478, 0.750834, -0.297932,
		-0.542975, -0.641374, -0.542049,
		39.431824, 38.705730, 42.949711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079720, 39.376415, 43.394806>,  <39.811905, 39.154694, 43.329144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079720, 39.376415, 43.394806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104595, 38.986298, 43.310020>,  <39.119518, 38.752228, 43.259148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104595, 38.986298, 43.310020>,  <39.079720, 39.376415, 43.394806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104595, 38.986298, 43.310020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487342, -0.215009, 0.846327,
		-0.870994, 0.050670, -0.488674,
		0.062186, -0.975297, -0.211965,
		39.123249, 38.693710, 43.246429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477089, 39.053425, 43.696175>,  <39.079720, 39.376415, 43.394806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477089, 39.053425, 43.696175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746635, 38.764156, 43.635612>,  <38.908363, 38.590595, 43.599277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746635, 38.764156, 43.635612>,  <38.477089, 39.053425, 43.696175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746635, 38.764156, 43.635612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390532, -0.522579, 0.757890,
		-0.627204, -0.451591, -0.634571,
		0.673869, -0.723172, -0.151403,
		38.948795, 38.547203, 43.590191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233044, 38.301842, 43.500282>,  <38.477089, 39.053425, 43.696175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233044, 38.301842, 43.500282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580631, 38.323402, 43.697052>,  <38.789185, 38.336338, 43.815113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580631, 38.323402, 43.697052>,  <38.233044, 38.301842, 43.500282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580631, 38.323402, 43.697052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428981, -0.413550, 0.803088,
		0.246724, -0.908884, -0.336239,
		0.868966, 0.053901, 0.491927,
		38.841320, 38.339573, 43.844631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577919, 37.612850, 43.713802>,  <38.233044, 38.301842, 43.500282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577919, 37.612850, 43.713802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573933, 37.969563, 43.894749>,  <38.571541, 38.183590, 44.003315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573933, 37.969563, 43.894749>,  <38.577919, 37.612850, 43.713802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573933, 37.969563, 43.894749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509451, -0.393799, 0.765103,
		0.860442, -0.222828, 0.458244,
		-0.009970, 0.891779, 0.452361,
		38.570942, 38.237095, 44.030457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216183, 37.269901, 43.923798>,  <38.577919, 37.612850, 43.713802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216183, 37.269901, 43.923798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219704, 36.869915, 43.923588>,  <39.221817, 36.629925, 43.923462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219704, 36.869915, 43.923588>,  <39.216183, 37.269901, 43.923798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219704, 36.869915, 43.923588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189707, -0.001152, -0.981840,
		0.981801, 0.008743, -0.189710,
		0.008803, -0.999961, -0.000527,
		39.222343, 36.569927, 43.923431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406071, 37.546646, 43.327774>,  <39.216183, 37.269901, 43.923798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406071, 37.546646, 43.327774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116375, 37.822186, 43.340153>,  <38.942558, 37.987511, 43.347580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116375, 37.822186, 43.340153>,  <39.406071, 37.546646, 43.327774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116375, 37.822186, 43.340153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288360, 0.343332, -0.893852,
		-0.626355, -0.638442, -0.447293,
		-0.724243, 0.688850, 0.030946,
		38.899101, 38.028839, 43.349438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159393, 37.591274, 42.686573>,  <39.406071, 37.546646, 43.327774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159393, 37.591274, 42.686573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101192, 37.935417, 42.881966>,  <39.066273, 38.141903, 42.999203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101192, 37.935417, 42.881966>,  <39.159393, 37.591274, 42.686573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101192, 37.935417, 42.881966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256609, 0.509659, -0.821218,
		-0.955501, 0.005863, -0.294930,
		-0.145499, 0.860357, 0.488484,
		39.057541, 38.193523, 43.028511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566105, 37.893848, 42.429081>,  <39.159393, 37.591274, 42.686573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566105, 37.893848, 42.429081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834332, 38.157555, 42.565144>,  <38.995270, 38.315777, 42.646782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834332, 38.157555, 42.565144>,  <38.566105, 37.893848, 42.429081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834332, 38.157555, 42.565144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161519, 0.317776, -0.934307,
		-0.724050, 0.681459, 0.106607,
		0.670569, 0.659266, 0.340155,
		39.035503, 38.355335, 42.667191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464867, 38.426636, 41.943306>,  <38.566105, 37.893848, 42.429081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464867, 38.426636, 41.943306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812244, 38.528633, 42.113384>,  <39.020672, 38.589832, 42.215431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812244, 38.528633, 42.113384>,  <38.464867, 38.426636, 41.943306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812244, 38.528633, 42.113384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345497, 0.303834, -0.887872,
		-0.355588, 0.917968, 0.175763,
		0.868440, 0.254991, 0.425195,
		39.072777, 38.605129, 42.240944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612797, 39.114609, 41.732048>,  <38.464867, 38.426636, 41.943306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612797, 39.114609, 41.732048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955986, 38.931976, 41.826214>,  <39.161900, 38.822399, 41.882713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955986, 38.931976, 41.826214>,  <38.612797, 39.114609, 41.732048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955986, 38.931976, 41.826214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335378, 0.150744, -0.929945,
		0.389107, 0.876819, 0.282461,
		0.857973, -0.456579, 0.235410,
		39.213379, 38.795002, 41.896835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056984, 39.422722, 41.302269>,  <38.612797, 39.114609, 41.732048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056984, 39.422722, 41.302269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285461, 39.116982, 41.421940>,  <39.422546, 38.933537, 41.493740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285461, 39.116982, 41.421940>,  <39.056984, 39.422722, 41.302269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285461, 39.116982, 41.421940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554696, 0.090794, -0.827085,
		0.605020, 0.638376, 0.475843,
		0.571195, -0.764351, 0.299172,
		39.456821, 38.887676, 41.511692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743336, 39.638504, 41.209232>,  <39.056984, 39.422722, 41.302269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743336, 39.638504, 41.209232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730171, 39.240238, 41.174431>,  <39.722275, 39.001278, 41.153549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730171, 39.240238, 41.174431>,  <39.743336, 39.638504, 41.209232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730171, 39.240238, 41.174431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555914, 0.054109, -0.829477,
		0.830588, -0.075662, 0.551723,
		-0.032907, -0.995664, -0.087004,
		39.720299, 38.941540, 41.148331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458549, 39.343071, 41.137760>,  <39.743336, 39.638504, 41.209232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458549, 39.343071, 41.137760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209698, 39.128548, 40.909611>,  <40.060387, 38.999836, 40.772720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209698, 39.128548, 40.909611>,  <40.458549, 39.343071, 41.137760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209698, 39.128548, 40.909611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638779, 0.073522, -0.765870,
		0.452675, -0.840816, 0.296839,
		-0.622132, -0.536304, -0.570377,
		40.023060, 38.967655, 40.738499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945183, 38.931999, 40.638618>,  <40.458549, 39.343071, 41.137760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945183, 38.931999, 40.638618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573700, 38.787674, 40.672836>,  <40.350811, 38.701080, 40.693367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573700, 38.787674, 40.672836>,  <40.945183, 38.931999, 40.638618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573700, 38.787674, 40.672836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025260, -0.168612, -0.985359,
		0.369954, -0.917270, 0.147477,
		-0.928707, -0.360812, 0.085549,
		40.295090, 38.679432, 40.698502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003281, 38.306778, 40.309891>,  <40.945183, 38.931999, 40.638618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003281, 38.306778, 40.309891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614475, 38.398808, 40.328907>,  <40.381191, 38.454025, 40.340317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614475, 38.398808, 40.328907>,  <41.003281, 38.306778, 40.309891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614475, 38.398808, 40.328907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110676, -0.269934, -0.956497,
		-0.207224, -0.934990, 0.287842,
		-0.972013, 0.230066, 0.047544,
		40.322872, 38.467827, 40.343170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756893, 37.769436, 39.912838>,  <41.003281, 38.306778, 40.309891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756893, 37.769436, 39.912838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472073, 38.049858, 39.928387>,  <40.301182, 38.218109, 39.937717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472073, 38.049858, 39.928387>,  <40.756893, 37.769436, 39.912838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472073, 38.049858, 39.928387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213395, -0.163329, -0.963217,
		-0.668917, -0.694152, 0.265899,
		-0.712048, 0.701054, 0.038876,
		40.258457, 38.260174, 39.940048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142170, 37.531742, 39.501080>,  <40.756893, 37.769436, 39.912838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142170, 37.531742, 39.501080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073536, 37.925362, 39.519901>,  <40.032356, 38.161533, 39.531197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073536, 37.925362, 39.519901>,  <40.142170, 37.531742, 39.501080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073536, 37.925362, 39.519901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439509, -0.033713, -0.897605,
		-0.881697, -0.174701, 0.438281,
		-0.171588, 0.984044, 0.047058,
		40.022060, 38.220573, 39.534019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667362, 37.555153, 39.067814>,  <40.142170, 37.531742, 39.501080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667362, 37.555153, 39.067814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741241, 37.947239, 39.096264>,  <39.785568, 38.182491, 39.113335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741241, 37.947239, 39.096264>,  <39.667362, 37.555153, 39.067814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741241, 37.947239, 39.096264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392169, 0.139864, -0.909198,
		-0.901160, 0.140036, 0.410244,
		0.184699, 0.980218, 0.071122,
		39.796650, 38.241302, 39.117599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071175, 37.847092, 38.592815>,  <39.667362, 37.555153, 39.067814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071175, 37.847092, 38.592815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337723, 38.141552, 38.640182>,  <39.497654, 38.318230, 38.668602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337723, 38.141552, 38.640182>,  <39.071175, 37.847092, 38.592815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337723, 38.141552, 38.640182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117284, 0.260326, -0.958371,
		-0.736335, 0.624746, 0.259813,
		0.666375, 0.736154, 0.118414,
		39.537636, 38.362396, 38.675705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811443, 38.399349, 38.211468>,  <39.071175, 37.847092, 38.592815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811443, 38.399349, 38.211468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208961, 38.441238, 38.226494>,  <39.447472, 38.466373, 38.235512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208961, 38.441238, 38.226494>,  <38.811443, 38.399349, 38.211468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208961, 38.441238, 38.226494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008807, 0.410634, -0.911758,
		-0.110912, 0.905766, 0.409007,
		0.993791, 0.104727, 0.037567,
		39.507099, 38.472656, 38.237762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890179, 38.964951, 37.794910>,  <38.811443, 38.399349, 38.211468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890179, 38.964951, 37.794910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258720, 38.810581, 37.813560>,  <39.479847, 38.717960, 37.824749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258720, 38.810581, 37.813560>,  <38.890179, 38.964951, 37.794910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258720, 38.810581, 37.813560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171937, 0.297017, -0.939265,
		0.348633, 0.873411, 0.340011,
		0.921354, -0.385919, 0.046622,
		39.535126, 38.694805, 37.827549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421021, 39.499596, 37.652248>,  <38.890179, 38.964951, 37.794910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421021, 39.499596, 37.652248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568726, 39.138714, 37.563107>,  <39.657349, 38.922184, 37.509621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568726, 39.138714, 37.563107>,  <39.421021, 39.499596, 37.652248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568726, 39.138714, 37.563107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266398, 0.332500, -0.904696,
		0.890324, 0.274704, 0.363127,
		0.369263, -0.902209, -0.222853,
		39.679504, 38.868050, 37.496250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948460, 39.748383, 37.312878>,  <39.421021, 39.499596, 37.652248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948460, 39.748383, 37.312878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928833, 39.361542, 37.213036>,  <39.917057, 39.129436, 37.153130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928833, 39.361542, 37.213036>,  <39.948460, 39.748383, 37.312878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928833, 39.361542, 37.213036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172560, 0.237943, -0.955827,
		0.983776, -0.089971, 0.155208,
		-0.049066, -0.967103, -0.249608,
		39.914112, 39.071411, 37.138153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554028, 39.458725, 37.028130>,  <39.948460, 39.748383, 37.312878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554028, 39.458725, 37.028130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242157, 39.261894, 36.873226>,  <40.055035, 39.143795, 36.780285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242157, 39.261894, 36.873226>,  <40.554028, 39.458725, 37.028130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242157, 39.261894, 36.873226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252212, 0.319275, -0.913484,
		0.573144, -0.809892, -0.124824,
		-0.779676, -0.492076, -0.387255,
		40.008255, 39.114273, 36.757050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862888, 39.277618, 36.335625>,  <40.554028, 39.458725, 37.028130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862888, 39.277618, 36.335625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491219, 39.130276, 36.323338>,  <40.268215, 39.041870, 36.315968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491219, 39.130276, 36.323338>,  <40.862888, 39.277618, 36.335625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491219, 39.130276, 36.323338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086440, -0.135752, -0.986965,
		0.359382, -0.919721, 0.157978,
		-0.929178, -0.368353, -0.030714,
		40.212463, 39.019772, 36.314125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977600, 38.715092, 35.944584>,  <40.862888, 39.277618, 36.335625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977600, 38.715092, 35.944584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588589, 38.807777, 35.935635>,  <40.355183, 38.863388, 35.930264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588589, 38.807777, 35.935635>,  <40.977600, 38.715092, 35.944584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588589, 38.807777, 35.935635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017976, -0.170589, -0.985178,
		-0.232101, -0.957709, 0.170067,
		-0.972526, 0.231718, -0.022378,
		40.296829, 38.877293, 35.928921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643543, 38.212669, 35.532761>,  <40.977600, 38.715092, 35.944584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643543, 38.212669, 35.532761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381981, 38.515190, 35.540810>,  <40.225044, 38.696705, 35.545639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381981, 38.515190, 35.540810>,  <40.643543, 38.212669, 35.532761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381981, 38.515190, 35.540810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246089, -0.187466, -0.950945,
		-0.715431, -0.626785, 0.308704,
		-0.653910, 0.756305, 0.020126,
		40.185806, 38.742081, 35.546848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608723, 37.569302, 35.938049>,  <40.643543, 38.212669, 35.532761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608723, 37.569302, 35.938049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714535, 37.202084, 36.056183>,  <40.778023, 36.981754, 36.127064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714535, 37.202084, 36.056183>,  <40.608723, 37.569302, 35.938049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714535, 37.202084, 36.056183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660927, 0.395595, 0.637715,
		-0.702280, 0.026495, 0.711407,
		0.264533, -0.918043, 0.295330,
		40.793896, 36.926670, 36.144783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613697, 37.523846, 36.650581>,  <40.608723, 37.569302, 35.938049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613697, 37.523846, 36.650581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886227, 37.281647, 36.486057>,  <41.049744, 37.136326, 36.387344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886227, 37.281647, 36.486057>,  <40.613697, 37.523846, 36.650581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886227, 37.281647, 36.486057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701115, 0.378370, 0.604379,
		-0.210324, -0.700151, 0.682315,
		0.681324, -0.605496, -0.411306,
		41.090622, 37.099998, 36.362667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864128, 37.206631, 37.179489>,  <40.613697, 37.523846, 36.650581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864128, 37.206631, 37.179489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123505, 37.208775, 36.874989>,  <41.279129, 37.210060, 36.692291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123505, 37.208775, 36.874989>,  <40.864128, 37.206631, 37.179489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123505, 37.208775, 36.874989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722517, 0.310630, 0.617639,
		0.239779, -0.950515, 0.197549,
		0.648440, 0.005365, -0.761247,
		41.318035, 37.210384, 36.646614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466141, 36.798916, 37.525753>,  <40.864128, 37.206631, 37.179489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466141, 36.798916, 37.525753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589069, 37.028851, 37.222408>,  <41.662827, 37.166813, 37.040401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589069, 37.028851, 37.222408>,  <41.466141, 36.798916, 37.525753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589069, 37.028851, 37.222408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893978, 0.098713, 0.437103,
		0.326123, -0.812292, -0.483556,
		0.307322, 0.574838, -0.758363,
		41.681267, 37.201302, 36.994900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182827, 36.572212, 37.300762>,  <41.466141, 36.798916, 37.525753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182827, 36.572212, 37.300762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130199, 36.958282, 37.210316>,  <42.098625, 37.189926, 37.156048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130199, 36.958282, 37.210316>,  <42.182827, 36.572212, 37.300762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130199, 36.958282, 37.210316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912447, 0.207063, 0.352940,
		0.387469, -0.159885, -0.907912,
		-0.131565, 0.965175, -0.226117,
		42.090729, 37.247833, 37.142479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493595, 36.847561, 36.694195>,  <42.182827, 36.572212, 37.300762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493595, 36.847561, 36.694195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450012, 37.117359, 36.986275>,  <42.423862, 37.279236, 37.161522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450012, 37.117359, 36.986275>,  <42.493595, 36.847561, 36.694195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450012, 37.117359, 36.986275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978613, -0.056151, 0.197896,
		0.174481, 0.736144, -0.653948,
		-0.108960, 0.674492, 0.730198,
		42.417324, 37.319706, 37.205334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073280, 37.364311, 36.636013>,  <42.493595, 36.847561, 36.694195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073280, 37.364311, 36.636013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953625, 37.299454, 37.012146>,  <42.881832, 37.260540, 37.237827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953625, 37.299454, 37.012146>,  <43.073280, 37.364311, 36.636013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953625, 37.299454, 37.012146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948650, -0.156750, 0.274758,
		0.102847, 0.974238, 0.200707,
		-0.299140, -0.162142, 0.940332,
		42.863884, 37.250813, 37.294247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393555, 37.771866, 37.166714>,  <43.073280, 37.364311, 36.636013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393555, 37.771866, 37.166714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286911, 37.408840, 37.296478>,  <43.222923, 37.191025, 37.374336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286911, 37.408840, 37.296478>,  <43.393555, 37.771866, 37.166714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286911, 37.408840, 37.296478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963034, -0.237399, 0.127309,
		-0.038526, 0.346360, 0.937310,
		-0.266611, -0.907566, 0.324411,
		43.206928, 37.136570, 37.393803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726379, 37.659016, 37.839394>,  <43.393555, 37.771866, 37.166714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726379, 37.659016, 37.839394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673717, 37.346401, 37.595470>,  <43.642120, 37.158833, 37.449116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673717, 37.346401, 37.595470>,  <43.726379, 37.659016, 37.839394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673717, 37.346401, 37.595470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972969, -0.219621, 0.071404,
		-0.189731, -0.583924, 0.789326,
		-0.131658, -0.781537, -0.609809,
		43.634220, 37.111938, 37.412529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106064, 37.205627, 38.092663>,  <43.726379, 37.659016, 37.839394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106064, 37.205627, 38.092663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042583, 37.063770, 37.724087>,  <44.004494, 36.978657, 37.502941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042583, 37.063770, 37.724087>,  <44.106064, 37.205627, 38.092663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042583, 37.063770, 37.724087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915040, -0.403356, -0.002356,
		-0.370832, -0.843525, 0.388521,
		-0.158700, -0.354639, -0.921437,
		43.994972, 36.957378, 37.447655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245361, 36.495098, 38.089642>,  <44.106064, 37.205627, 38.092663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245361, 36.495098, 38.089642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295193, 36.727039, 37.767586>,  <44.325092, 36.866203, 37.574352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295193, 36.727039, 37.767586>,  <44.245361, 36.495098, 38.089642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295193, 36.727039, 37.767586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981474, 0.047028, 0.185737,
		0.145564, -0.813362, -0.563252,
		0.124582, 0.579854, -0.805139,
		44.332569, 36.900997, 37.526043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.953674, 36.278530, 38.068764>,  <44.245361, 36.495098, 38.089642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.953674, 36.278530, 38.068764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.899586, 36.566467, 37.796429>,  <44.867130, 36.739231, 37.633030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.899586, 36.566467, 37.796429>,  <44.953674, 36.278530, 38.068764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899586, 36.566467, 37.796429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988293, 0.048997, -0.144488,
		-0.070651, -0.692400, -0.718046,
		-0.135226, 0.719848, -0.680833,
		44.859016, 36.782421, 37.592178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.674900, 35.937565, 38.075169>,  <44.953674, 36.278530, 38.068764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.674900, 35.937565, 38.075169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333191, 35.801796, 37.917683>,  <45.128166, 35.720333, 37.823193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333191, 35.801796, 37.917683>,  <45.674900, 35.937565, 38.075169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333191, 35.801796, 37.917683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158310, 0.891293, -0.424894,
		0.495131, -0.300647, -0.815142,
		-0.854273, -0.339424, -0.393712,
		45.076908, 35.699970, 37.799568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.227291, 35.788536, 37.376846>,  <45.674900, 35.937565, 38.075169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.227291, 35.788536, 37.376846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.339489, 36.172382, 37.385494>,  <46.406807, 36.402691, 37.390682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.339489, 36.172382, 37.385494>,  <46.227291, 35.788536, 37.376846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.339489, 36.172382, 37.385494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452098, -0.112212, -0.884882,
		-0.846717, 0.257979, -0.465313,
		0.280495, 0.959612, 0.021619,
		46.423637, 36.460266, 37.391979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.308701, 36.150360, 36.670986>,  <46.227291, 35.788536, 37.376846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.308701, 36.150360, 36.670986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.684135, 36.247513, 36.769016>,  <46.909397, 36.305805, 36.827835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.684135, 36.247513, 36.769016>,  <46.308701, 36.150360, 36.670986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.684135, 36.247513, 36.769016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316607, -0.323868, -0.891555,
		-0.137167, 0.914395, -0.380876,
		0.938587, 0.242880, 0.245080,
		46.965710, 36.320377, 36.842541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.804920, 36.648861, 36.430450>,  <46.308701, 36.150360, 36.670986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.804920, 36.648861, 36.430450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.190445, 36.543182, 36.444679>,  <47.421761, 36.479774, 36.453217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.190445, 36.543182, 36.444679>,  <46.804920, 36.648861, 36.430450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.190445, 36.543182, 36.444679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098751, -0.477780, -0.872912,
		0.247619, 0.837810, -0.486580,
		0.963812, -0.264200, 0.035573,
		47.479588, 36.463921, 36.455353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.890308, 36.740162, 35.759331>,  <46.804920, 36.648861, 36.430450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.890308, 36.740162, 35.759331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.178253, 36.501301, 35.900867>,  <47.351021, 36.357983, 35.985790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.178253, 36.501301, 35.900867>,  <46.890308, 36.740162, 35.759331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.178253, 36.501301, 35.900867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064797, -0.565363, -0.822293,
		0.691088, 0.569008, -0.445676,
		0.719860, -0.597156, 0.353845,
		47.394211, 36.322155, 36.007023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.472942, 36.674286, 35.274582>,  <46.890308, 36.740162, 35.759331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.472942, 36.674286, 35.274582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.405003, 36.340942, 35.484978>,  <47.364239, 36.140938, 35.611217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.405003, 36.340942, 35.484978>,  <47.472942, 36.674286, 35.274582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.405003, 36.340942, 35.484978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024279, -0.530047, -0.847621,
		0.985170, -0.156742, 0.069797,
		-0.169853, -0.833356, 0.525992,
		47.354046, 36.090935, 35.642776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.986225, 36.215748, 35.079163>,  <47.472942, 36.674286, 35.274582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.986225, 36.215748, 35.079163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657707, 36.005028, 35.166752>,  <47.460594, 35.878597, 35.219307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657707, 36.005028, 35.166752>,  <47.986225, 36.215748, 35.079163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.657707, 36.005028, 35.166752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079650, -0.485953, -0.870348,
		0.564913, -0.697373, 0.441072,
		-0.821297, -0.526802, 0.218976,
		47.411320, 35.846989, 35.232445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.084423, 35.543488, 35.273052>,  <47.986225, 36.215748, 35.079163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.084423, 35.543488, 35.273052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726849, 35.532742, 35.094093>,  <47.512306, 35.526295, 34.986717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726849, 35.532742, 35.094093>,  <48.084423, 35.543488, 35.273052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.726849, 35.532742, 35.094093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373353, -0.596903, -0.710150,
		-0.247975, -0.801863, 0.543621,
		-0.893933, -0.026863, -0.447395,
		47.458668, 35.524681, 34.959873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.769505, 34.851078, 35.186214>,  <48.084423, 35.543488, 35.273052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.769505, 34.851078, 35.186214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.688000, 35.107265, 34.890030>,  <47.639099, 35.260979, 34.712318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.688000, 35.107265, 34.890030>,  <47.769505, 34.851078, 35.186214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.688000, 35.107265, 34.890030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478588, -0.594633, -0.646038,
		-0.854070, -0.486010, -0.185360,
		-0.203759, 0.640473, -0.740457,
		47.626873, 35.299408, 34.667892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.994080, 36.119595, 25.556925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.657990, 36.325504, 25.625078>,  <34.456337, 36.449051, 25.665970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.657990, 36.325504, 25.625078>,  <34.994080, 36.119595, 25.556925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657990, 36.325504, 25.625078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243626, 0.077666, 0.966755,
		0.484432, 0.853798, -0.190670,
		-0.840222, 0.514778, 0.170384,
		34.405922, 36.479939, 25.676193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206264, 36.713650, 26.002354>,  <34.994080, 36.119595, 25.556925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206264, 36.713650, 26.002354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.816544, 36.642719, 26.057915>,  <34.582710, 36.600163, 26.091251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.816544, 36.642719, 26.057915>,  <35.206264, 36.713650, 26.002354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816544, 36.642719, 26.057915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146958, -0.033060, 0.988590,
		-0.170707, 0.983597, 0.058269,
		-0.974301, -0.177322, 0.138904,
		34.524254, 36.589523, 26.099586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002151, 37.194199, 26.540428>,  <35.206264, 36.713650, 26.002354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002151, 37.194199, 26.540428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.721893, 36.908798, 26.539183>,  <34.553738, 36.737556, 26.538435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.721893, 36.908798, 26.539183>,  <35.002151, 37.194199, 26.540428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721893, 36.908798, 26.539183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120831, -0.122950, 0.985029,
		-0.703202, 0.689783, 0.172358,
		-0.700648, -0.713501, -0.003112,
		34.511700, 36.694748, 26.538250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711864, 37.248825, 27.169210>,  <35.002151, 37.194199, 26.540428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711864, 37.248825, 27.169210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.532890, 36.903942, 27.074217>,  <34.425507, 36.697014, 27.017221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.532890, 36.903942, 27.074217>,  <34.711864, 37.248825, 27.169210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532890, 36.903942, 27.074217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064754, -0.233615, 0.970171,
		-0.891967, 0.449470, 0.048697,
		-0.447439, -0.862207, -0.237482,
		34.398659, 36.645279, 27.002972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038532, 37.197628, 27.425556>,  <34.711864, 37.248825, 27.169210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038532, 37.197628, 27.425556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.186691, 36.827747, 27.390377>,  <34.275585, 36.605820, 27.369270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.186691, 36.827747, 27.390377>,  <34.038532, 37.197628, 27.425556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186691, 36.827747, 27.390377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131644, -0.041469, 0.990429,
		-0.919499, -0.378428, 0.106372,
		0.370395, -0.924702, -0.087948,
		34.297810, 36.550339, 27.363993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760906, 36.860111, 27.976702>,  <34.038532, 37.197628, 27.425556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760906, 36.860111, 27.976702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.053455, 36.608341, 27.871696>,  <34.228985, 36.457279, 27.808693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.053455, 36.608341, 27.871696>,  <33.760906, 36.860111, 27.976702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053455, 36.608341, 27.871696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181360, -0.191557, 0.964580,
		-0.657421, -0.753077, -0.025946,
		0.731373, -0.629430, -0.262511,
		34.272869, 36.419514, 27.792944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674625, 36.232395, 28.317690>,  <33.760906, 36.860111, 27.976702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674625, 36.232395, 28.317690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.060036, 36.230743, 28.210663>,  <34.291283, 36.229752, 28.146446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.060036, 36.230743, 28.210663>,  <33.674625, 36.232395, 28.317690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060036, 36.230743, 28.210663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256883, -0.265833, 0.929163,
		-0.074967, -0.964010, -0.255077,
		0.963531, -0.004131, -0.267566,
		34.349094, 36.229504, 28.130392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880127, 35.549271, 28.483831>,  <33.674625, 36.232395, 28.317690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880127, 35.549271, 28.483831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214287, 35.763577, 28.434732>,  <34.414783, 35.892159, 28.405273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214287, 35.763577, 28.434732>,  <33.880127, 35.549271, 28.483831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214287, 35.763577, 28.434732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370838, -0.384568, 0.845333,
		0.405692, -0.751710, -0.519948,
		0.835400, 0.535761, -0.122746,
		34.464909, 35.924305, 28.397909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434887, 35.075874, 28.660578>,  <33.880127, 35.549271, 28.483831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434887, 35.075874, 28.660578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.582478, 35.445267, 28.702627>,  <34.671032, 35.666901, 28.727856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.582478, 35.445267, 28.702627>,  <34.434887, 35.075874, 28.660578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582478, 35.445267, 28.702627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225479, -0.198661, 0.953778,
		0.901675, -0.328215, -0.281525,
		0.368973, 0.923476, 0.105122,
		34.693169, 35.722309, 28.734163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860176, 34.951477, 29.187103>,  <34.434887, 35.075874, 28.660578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860176, 34.951477, 29.187103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.862583, 35.351456, 29.190540>,  <34.864029, 35.591442, 29.192602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.862583, 35.351456, 29.190540>,  <34.860176, 34.951477, 29.187103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862583, 35.351456, 29.190540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386005, -0.010250, 0.922440,
		0.922477, -0.002234, -0.386046,
		0.006018, 0.999945, 0.008593,
		34.864388, 35.651440, 29.193119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579449, 35.242702, 29.269915>,  <34.860176, 34.951477, 29.187103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579449, 35.242702, 29.269915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.314224, 35.505226, 29.413916>,  <35.155090, 35.662739, 29.500317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.314224, 35.505226, 29.413916>,  <35.579449, 35.242702, 29.269915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314224, 35.505226, 29.413916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440488, -0.046755, 0.896540,
		0.605239, 0.753042, -0.258095,
		-0.663065, 0.656309, 0.360004,
		35.115303, 35.702118, 29.521917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933189, 35.809181, 29.496397>,  <35.579449, 35.242702, 29.269915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933189, 35.809181, 29.496397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.586365, 35.847668, 29.691925>,  <35.378269, 35.870758, 29.809242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.586365, 35.847668, 29.691925>,  <35.933189, 35.809181, 29.496397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586365, 35.847668, 29.691925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498173, 0.177528, 0.848709,
		-0.005121, 0.979401, -0.201860,
		-0.867062, 0.096215, 0.488821,
		35.326244, 35.876534, 29.838572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006912, 36.440624, 29.885664>,  <35.933189, 35.809181, 29.496397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006912, 36.440624, 29.885664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.714912, 36.253124, 30.084610>,  <35.539711, 36.140625, 30.203978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.714912, 36.253124, 30.084610>,  <36.006912, 36.440624, 29.885664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714912, 36.253124, 30.084610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262852, 0.479201, 0.837422,
		-0.630877, 0.742053, -0.226607,
		-0.730002, -0.468746, 0.497367,
		35.495911, 36.112499, 30.233820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808006, 36.962029, 30.283567>,  <36.006912, 36.440624, 29.885664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808006, 36.962029, 30.283567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654942, 36.620178, 30.423960>,  <35.563103, 36.415070, 30.508194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654942, 36.620178, 30.423960>,  <35.808006, 36.962029, 30.283567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654942, 36.620178, 30.423960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343925, 0.220821, 0.912663,
		-0.857490, 0.469947, 0.209429,
		-0.382657, -0.854627, 0.350978,
		35.540146, 36.363789, 30.529253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417820, 37.128708, 31.034458>,  <35.808006, 36.962029, 30.283567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417820, 37.128708, 31.034458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.516403, 36.741390, 31.050785>,  <35.575554, 36.508999, 31.060581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.516403, 36.741390, 31.050785>,  <35.417820, 37.128708, 31.034458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516403, 36.741390, 31.050785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510924, 0.165602, 0.843524,
		-0.823538, -0.187041, 0.535538,
		0.246460, -0.968293, 0.040815,
		35.590340, 36.450901, 31.063030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158054, 36.744377, 31.699923>,  <35.417820, 37.128708, 31.034458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158054, 36.744377, 31.699923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.465923, 36.522255, 31.573910>,  <35.650642, 36.388981, 31.498302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.465923, 36.522255, 31.573910>,  <35.158054, 36.744377, 31.699923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465923, 36.522255, 31.573910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363016, -0.025267, 0.931440,
		-0.525196, -0.831261, 0.182138,
		0.769668, -0.555308, -0.315031,
		35.696823, 36.355663, 31.479401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141407, 36.171223, 32.139111>,  <35.158054, 36.744377, 31.699923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141407, 36.171223, 32.139111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.506840, 36.179184, 31.976641>,  <35.726101, 36.183960, 31.879160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.506840, 36.179184, 31.976641>,  <35.141407, 36.171223, 32.139111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506840, 36.179184, 31.976641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397027, 0.172451, 0.901460,
		0.087982, -0.984817, 0.149648,
		0.913580, 0.019898, -0.406171,
		35.780914, 36.185154, 31.854790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540836, 35.676846, 32.507156>,  <35.141407, 36.171223, 32.139111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540836, 35.676846, 32.507156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.807919, 35.919064, 32.333958>,  <35.968170, 36.064392, 32.230038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.807919, 35.919064, 32.333958>,  <35.540836, 35.676846, 32.507156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807919, 35.919064, 32.333958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424611, 0.167950, 0.889662,
		0.611449, -0.777889, -0.144979,
		0.667709, 0.605542, -0.432993,
		36.008232, 36.100727, 32.204060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154758, 35.403721, 32.761879>,  <35.540836, 35.676846, 32.507156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154758, 35.403721, 32.761879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.217693, 35.783737, 32.654049>,  <36.255455, 36.011745, 32.589352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.217693, 35.783737, 32.654049>,  <36.154758, 35.403721, 32.761879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217693, 35.783737, 32.654049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430675, 0.179637, 0.884449,
		0.888686, -0.255258, -0.380894,
		0.157340, 0.950039, -0.269574,
		36.264896, 36.068748, 32.573177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898754, 35.528419, 32.780323>,  <36.154758, 35.403721, 32.761879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898754, 35.528419, 32.780323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732906, 35.890285, 32.819675>,  <36.633396, 36.107403, 32.843285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732906, 35.890285, 32.819675>,  <36.898754, 35.528419, 32.780323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732906, 35.890285, 32.819675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466738, 0.118607, 0.876406,
		0.781182, 0.409292, -0.471417,
		-0.414620, 0.904661, 0.098379,
		36.608521, 36.161682, 32.849190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378567, 35.914974, 33.018162>,  <36.898754, 35.528419, 32.780323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378567, 35.914974, 33.018162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.077427, 36.161438, 33.110733>,  <36.896744, 36.309319, 33.166275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.077427, 36.161438, 33.110733>,  <37.378567, 35.914974, 33.018162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077427, 36.161438, 33.110733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519375, 0.340157, 0.783928,
		0.404306, 0.710378, -0.576107,
		-0.752852, 0.616163, 0.231425,
		36.851570, 36.346287, 33.180161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640945, 36.567978, 33.145638>,  <37.378567, 35.914974, 33.018162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640945, 36.567978, 33.145638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.303398, 36.540569, 33.358498>,  <37.100868, 36.524124, 33.486214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.303398, 36.540569, 33.358498>,  <37.640945, 36.567978, 33.145638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303398, 36.540569, 33.358498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491469, 0.299199, 0.817886,
		-0.215259, 0.951728, -0.218811,
		-0.843873, -0.068519, 0.532150,
		37.050236, 36.520012, 33.518143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750610, 37.229992, 33.502197>,  <37.640945, 36.567978, 33.145638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750610, 37.229992, 33.502197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.140949, 37.154373, 33.545979>,  <38.375153, 37.109001, 33.572247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.140949, 37.154373, 33.545979>,  <37.750610, 37.229992, 33.502197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140949, 37.154373, 33.545979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157396, 0.261024, -0.952414,
		0.151478, 0.946641, 0.284475,
		0.975849, -0.189045, 0.109458,
		38.433704, 37.097660, 33.578815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125702, 37.713291, 33.106476>,  <37.750610, 37.229992, 33.502197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125702, 37.713291, 33.106476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.402977, 37.427071, 33.141048>,  <38.569344, 37.255337, 33.161793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.402977, 37.427071, 33.141048>,  <38.125702, 37.713291, 33.106476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402977, 37.427071, 33.141048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193696, 0.069436, -0.978601,
		0.694239, 0.695100, 0.186732,
		0.693191, -0.715552, 0.086433,
		38.610935, 37.212406, 33.166977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753311, 37.987980, 32.867020>,  <38.125702, 37.713291, 33.106476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753311, 37.987980, 32.867020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.774521, 37.590214, 32.830502>,  <38.787247, 37.351555, 32.808590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.774521, 37.590214, 32.830502>,  <38.753311, 37.987980, 32.867020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774521, 37.590214, 32.830502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231824, 0.101183, -0.967481,
		0.971312, 0.030135, 0.235894,
		0.053023, -0.994411, -0.091295,
		38.790428, 37.291889, 32.803112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301731, 37.917030, 32.367470>,  <38.753311, 37.987980, 32.867020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301731, 37.917030, 32.367470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123898, 37.558880, 32.377640>,  <39.017197, 37.343990, 32.383743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123898, 37.558880, 32.377640>,  <39.301731, 37.917030, 32.367470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123898, 37.558880, 32.377640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225846, -0.139520, -0.964120,
		0.866796, -0.422893, 0.264245,
		-0.444588, -0.895375, 0.025427,
		38.990520, 37.290268, 32.385269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736237, 37.452461, 31.953508>,  <39.301731, 37.917030, 32.367470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736237, 37.452461, 31.953508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.371788, 37.289749, 31.980011>,  <39.153118, 37.192123, 31.995913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.371788, 37.289749, 31.980011>,  <39.736237, 37.452461, 31.953508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371788, 37.289749, 31.980011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056916, -0.283410, -0.957308,
		0.408192, -0.868452, 0.281373,
		-0.911121, -0.406780, 0.066257,
		39.098454, 37.167717, 31.999887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867962, 36.975365, 31.518288>,  <39.736237, 37.452461, 31.953508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867962, 36.975365, 31.518288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.470970, 37.016975, 31.544077>,  <39.232773, 37.041943, 31.559549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.470970, 37.016975, 31.544077>,  <39.867962, 36.975365, 31.518288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470970, 37.016975, 31.544077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086660, -0.225365, -0.970412,
		-0.086422, -0.968704, 0.232686,
		-0.992482, 0.104030, 0.064472,
		39.173225, 37.048183, 31.563417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551083, 36.329945, 31.255413>,  <39.867962, 36.975365, 31.518288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551083, 36.329945, 31.255413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.295605, 36.636173, 31.224535>,  <39.142319, 36.819912, 31.206007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.295605, 36.636173, 31.224535>,  <39.551083, 36.329945, 31.255413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295605, 36.636173, 31.224535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114741, -0.193966, -0.974275,
		-0.760854, -0.613410, 0.211729,
		-0.638699, 0.765575, -0.077196,
		39.103996, 36.865845, 31.201376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038177, 36.118279, 30.848259>,  <39.551083, 36.329945, 31.255413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038177, 36.118279, 30.848259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.981602, 36.513237, 30.819834>,  <38.947655, 36.750210, 30.802778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.981602, 36.513237, 30.819834>,  <39.038177, 36.118279, 30.848259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981602, 36.513237, 30.819834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243237, -0.104248, -0.964349,
		-0.959599, -0.119114, 0.254915,
		-0.141441, 0.987393, -0.071063,
		38.939171, 36.809456, 30.798515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425159, 36.193367, 30.526552>,  <39.038177, 36.118279, 30.848259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425159, 36.193367, 30.526552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.571701, 36.560658, 30.466351>,  <38.659626, 36.781033, 30.430229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.571701, 36.560658, 30.466351>,  <38.425159, 36.193367, 30.526552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571701, 36.560658, 30.466351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320174, -0.027471, -0.946961,
		-0.873655, 0.395111, 0.283926,
		0.366355, 0.918223, -0.150504,
		38.681606, 36.836124, 30.421200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841518, 36.620468, 30.188669>,  <38.425159, 36.193367, 30.526552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841518, 36.620468, 30.188669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194775, 36.792881, 30.114609>,  <38.406727, 36.896328, 30.070171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194775, 36.792881, 30.114609>,  <37.841518, 36.620468, 30.188669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194775, 36.792881, 30.114609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278771, 0.164761, -0.946119,
		-0.377302, 0.887167, 0.265666,
		0.883136, 0.431032, -0.185152,
		38.459717, 36.922192, 30.059063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680885, 37.253078, 29.933819>,  <37.841518, 36.620468, 30.188669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680885, 37.253078, 29.933819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.044487, 37.158371, 29.796618>,  <38.262650, 37.101547, 29.714296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.044487, 37.158371, 29.796618>,  <37.680885, 37.253078, 29.933819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044487, 37.158371, 29.796618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337191, 0.065956, -0.939123,
		0.244979, 0.969325, -0.019882,
		0.909004, -0.236769, -0.343005,
		38.317188, 37.087341, 29.693716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851608, 37.850910, 29.373997>,  <37.680885, 37.253078, 29.933819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851608, 37.850910, 29.373997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.101772, 37.543858, 29.317999>,  <38.251873, 37.359627, 29.284401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.101772, 37.543858, 29.317999>,  <37.851608, 37.850910, 29.373997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101772, 37.543858, 29.317999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256064, -0.032430, -0.966116,
		0.737082, 0.640069, -0.216845,
		0.625413, -0.767633, -0.139995,
		38.289394, 37.313568, 29.276001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240463, 37.961155, 28.637825>,  <37.851608, 37.850910, 29.373997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240463, 37.961155, 28.637825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.310791, 37.574131, 28.710400>,  <38.352989, 37.341919, 28.753944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.310791, 37.574131, 28.710400>,  <38.240463, 37.961155, 28.637825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310791, 37.574131, 28.710400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370028, -0.235750, -0.898611,
		0.912232, 0.090857, -0.399473,
		0.175821, -0.967557, 0.181439,
		38.363537, 37.283863, 28.764832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378540, 37.682156, 28.026733>,  <38.240463, 37.961155, 28.637825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378540, 37.682156, 28.026733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.309746, 37.333019, 28.209412>,  <38.268471, 37.123539, 28.319019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.309746, 37.333019, 28.209412>,  <38.378540, 37.682156, 28.026733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309746, 37.333019, 28.209412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440385, -0.346575, -0.828219,
		0.881183, -0.343562, -0.324781,
		-0.171983, -0.872841, 0.456695,
		38.258152, 37.071167, 28.346420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693008, 37.146450, 27.597301>,  <38.378540, 37.682156, 28.026733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693008, 37.146450, 27.597301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.425831, 36.946629, 27.817955>,  <38.265522, 36.826736, 27.950346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.425831, 36.946629, 27.817955>,  <38.693008, 37.146450, 27.597301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425831, 36.946629, 27.817955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431955, -0.343362, -0.833977,
		0.606023, -0.795332, 0.013565,
		-0.667946, -0.499550, 0.551633,
		38.225449, 36.796764, 27.983444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770882, 36.420231, 27.367403>,  <38.693008, 37.146450, 27.597301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770882, 36.420231, 27.367403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408543, 36.505024, 27.514101>,  <38.191139, 36.555901, 27.602119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408543, 36.505024, 27.514101>,  <38.770882, 36.420231, 27.367403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408543, 36.505024, 27.514101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418249, -0.310384, -0.853656,
		-0.067128, -0.926674, 0.369823,
		-0.905849, 0.211983, 0.366745,
		38.136787, 36.568619, 27.624125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395947, 36.029877, 27.097317>,  <38.770882, 36.420231, 27.367403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395947, 36.029877, 27.097317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.105511, 36.273254, 27.225441>,  <37.931252, 36.419281, 27.302315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.105511, 36.273254, 27.225441>,  <38.395947, 36.029877, 27.097317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105511, 36.273254, 27.225441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559364, -0.251752, -0.789767,
		-0.399888, -0.752608, 0.523134,
		-0.726086, 0.608441, 0.320309,
		37.887684, 36.455788, 27.321533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768902, 35.694748, 26.863567>,  <38.395947, 36.029877, 27.097317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768902, 35.694748, 26.863567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.672253, 36.070141, 26.962248>,  <37.614265, 36.295376, 27.021456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.672253, 36.070141, 26.962248>,  <37.768902, 35.694748, 26.863567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672253, 36.070141, 26.962248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680225, 0.017503, -0.732794,
		-0.692036, -0.344871, 0.634153,
		-0.241620, 0.938487, 0.246703,
		37.599766, 36.351688, 27.036259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.907864, 35.794010, 26.882652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051819, 36.162041, 26.820770>,  <37.138191, 36.382858, 26.783642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051819, 36.162041, 26.820770>,  <36.907864, 35.794010, 26.882652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051819, 36.162041, 26.820770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471993, 0.036511, -0.880846,
		-0.804800, 0.390026, 0.447411,
		0.359888, 0.920080, -0.154706,
		37.159786, 36.438065, 26.774359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399590, 36.238171, 26.522076>,  <36.907864, 35.794010, 26.882652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399590, 36.238171, 26.522076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749958, 36.417614, 26.451075>,  <36.960178, 36.525280, 26.408474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749958, 36.417614, 26.451075>,  <36.399590, 36.238171, 26.522076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749958, 36.417614, 26.451075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261876, 0.133108, -0.955878,
		-0.405191, 0.883759, 0.234073,
		0.875923, 0.448611, -0.177501,
		37.012733, 36.552197, 26.397823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151669, 36.794155, 26.151915>,  <36.399590, 36.238171, 26.522076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151669, 36.794155, 26.151915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.541100, 36.806068, 26.061357>,  <36.774757, 36.813217, 26.007023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.541100, 36.806068, 26.061357>,  <36.151669, 36.794155, 26.151915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541100, 36.806068, 26.061357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221841, 0.358255, -0.906885,
		0.054100, 0.933149, 0.355396,
		0.973581, 0.029779, -0.226393,
		36.833176, 36.815002, 25.993441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297108, 37.402485, 25.857107>,  <36.151669, 36.794155, 26.151915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297108, 37.402485, 25.857107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.577957, 37.143192, 25.739243>,  <36.746468, 36.987617, 25.668524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.577957, 37.143192, 25.739243>,  <36.297108, 37.402485, 25.857107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577957, 37.143192, 25.739243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176382, 0.242590, -0.953960,
		0.689865, 0.721769, 0.055992,
		0.702122, -0.648228, -0.294661,
		36.788593, 36.948723, 25.650845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767231, 37.806202, 25.398336>,  <36.297108, 37.402485, 25.857107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767231, 37.806202, 25.398336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.823528, 37.423603, 25.296112>,  <36.857307, 37.194046, 25.234777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.823528, 37.423603, 25.296112>,  <36.767231, 37.806202, 25.398336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823528, 37.423603, 25.296112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232525, 0.218977, -0.947619,
		0.962354, 0.192794, -0.191589,
		0.140741, -0.956494, -0.255563,
		36.865749, 37.136654, 25.219442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065216, 37.888870, 24.678329>,  <36.767231, 37.806202, 25.398336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065216, 37.888870, 24.678329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.971313, 37.501293, 24.709419>,  <36.914970, 37.268745, 24.728073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.971313, 37.501293, 24.709419>,  <37.065216, 37.888870, 24.678329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971313, 37.501293, 24.709419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217142, -0.025662, -0.975803,
		0.947490, -0.245956, -0.204373,
		-0.234760, -0.968941, 0.077722,
		36.900887, 37.210609, 24.732737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574844, 37.468567, 24.306078>,  <37.065216, 37.888870, 24.678329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574844, 37.468567, 24.306078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209843, 37.310089, 24.346794>,  <36.990841, 37.215000, 24.371223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209843, 37.310089, 24.346794>,  <37.574844, 37.468567, 24.306078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209843, 37.310089, 24.346794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156593, 0.108446, -0.981691,
		0.377906, -0.911738, -0.161000,
		-0.912505, -0.396199, 0.101789,
		36.936092, 37.191231, 24.377331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495819, 37.039978, 23.764879>,  <37.574844, 37.468567, 24.306078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495819, 37.039978, 23.764879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.109882, 37.087807, 23.858501>,  <36.878319, 37.116505, 23.914675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.109882, 37.087807, 23.858501>,  <37.495819, 37.039978, 23.764879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109882, 37.087807, 23.858501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246910, -0.107154, -0.963096,
		-0.090077, -0.987027, 0.132909,
		-0.964843, 0.119569, 0.234055,
		36.820431, 37.123676, 23.928719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201889, 36.490433, 23.549820>,  <37.495819, 37.039978, 23.764879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201889, 36.490433, 23.549820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.946613, 36.798382, 23.548965>,  <36.793449, 36.983150, 23.548452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.946613, 36.798382, 23.548965>,  <37.201889, 36.490433, 23.549820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946613, 36.798382, 23.548965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047736, -0.042341, -0.997962,
		-0.768398, -0.636787, 0.063772,
		-0.638190, 0.769876, -0.002137,
		36.755157, 37.029346, 23.548325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090794, 36.415596, 22.847189>,  <37.201889, 36.490433, 23.549820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090794, 36.415596, 22.847189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906574, 36.753838, 22.955153>,  <36.796043, 36.956783, 23.019930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906574, 36.753838, 22.955153>,  <37.090794, 36.415596, 22.847189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906574, 36.753838, 22.955153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078446, 0.264110, -0.961297,
		-0.884163, -0.463893, -0.055300,
		-0.460544, 0.845606, 0.269907,
		36.768410, 37.007519, 23.036125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573841, 36.466896, 22.425337>,  <37.090794, 36.415596, 22.847189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573841, 36.466896, 22.425337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.540718, 36.849480, 22.537281>,  <36.520844, 37.079029, 22.604448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.540718, 36.849480, 22.537281>,  <36.573841, 36.466896, 22.425337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540718, 36.849480, 22.537281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035281, 0.277836, -0.959980,
		-0.995941, -0.089366, 0.010739,
		-0.082806, 0.956463, 0.279861,
		36.515877, 37.136417, 22.621239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023335, 36.826485, 22.048981>,  <36.573841, 36.466896, 22.425337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023335, 36.826485, 22.048981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.272903, 37.109074, 22.182623>,  <36.422646, 37.278625, 22.262808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.272903, 37.109074, 22.182623>,  <36.023335, 36.826485, 22.048981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272903, 37.109074, 22.182623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032421, 0.403756, -0.914292,
		-0.780816, 0.581276, 0.229006,
		0.623919, 0.706470, 0.334105,
		36.460079, 37.321014, 22.282854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765636, 37.416016, 21.766901>,  <36.023335, 36.826485, 22.048981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765636, 37.416016, 21.766901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.160576, 37.455235, 21.816732>,  <36.397541, 37.478767, 21.846632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.160576, 37.455235, 21.816732>,  <35.765636, 37.416016, 21.766901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160576, 37.455235, 21.816732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079967, 0.370506, -0.925381,
		-0.136892, 0.923640, 0.357980,
		0.987353, 0.098051, 0.124580,
		36.456783, 37.484650, 21.854107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892067, 38.088528, 21.428940>,  <35.765636, 37.416016, 21.766901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892067, 38.088528, 21.428940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.260956, 37.937145, 21.460636>,  <36.482288, 37.846317, 21.479654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.260956, 37.937145, 21.460636>,  <35.892067, 38.088528, 21.428940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260956, 37.937145, 21.460636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228922, 0.369252, -0.900693,
		0.311610, 0.848779, 0.427168,
		0.922222, -0.378453, 0.079242,
		36.537624, 37.823608, 21.484409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264694, 38.578060, 21.233547>,  <35.892067, 38.088528, 21.428940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264694, 38.578060, 21.233547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535378, 38.285992, 21.195776>,  <36.697788, 38.110748, 21.173113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535378, 38.285992, 21.195776>,  <36.264694, 38.578060, 21.233547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535378, 38.285992, 21.195776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330263, 0.415672, -0.847433,
		0.658026, 0.542275, 0.522437,
		0.676704, -0.730174, -0.094430,
		36.738388, 38.066940, 21.167448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943802, 38.892670, 21.080311>,  <36.264694, 38.578060, 21.233547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943802, 38.892670, 21.080311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.940170, 38.517200, 20.942436>,  <36.937992, 38.291920, 20.859711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.940170, 38.517200, 20.942436>,  <36.943802, 38.892670, 21.080311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940170, 38.517200, 20.942436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339563, 0.321325, -0.883995,
		0.940540, -0.125067, 0.315822,
		-0.009077, -0.938674, -0.344686,
		36.937447, 38.235600, 20.839031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441231, 38.792534, 20.635485>,  <36.943802, 38.892670, 21.080311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441231, 38.792534, 20.635485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232052, 38.470741, 20.522825>,  <37.106544, 38.277664, 20.455229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232052, 38.470741, 20.522825>,  <37.441231, 38.792534, 20.635485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232052, 38.470741, 20.522825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273998, 0.154231, -0.949283,
		0.807124, -0.573598, 0.139773,
		-0.522949, -0.804486, -0.281648,
		37.075169, 38.229397, 20.438332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818176, 38.402630, 20.197523>,  <37.441231, 38.792534, 20.635485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818176, 38.402630, 20.197523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.443405, 38.316803, 20.087160>,  <37.218544, 38.265308, 20.020943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.443405, 38.316803, 20.087160>,  <37.818176, 38.402630, 20.197523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443405, 38.316803, 20.087160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247055, 0.151843, -0.957031,
		0.247240, -0.964835, -0.089257,
		-0.936929, -0.214565, -0.275909,
		37.162327, 38.252434, 20.004387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920216, 38.103577, 19.541021>,  <37.818176, 38.402630, 20.197523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920216, 38.103577, 19.541021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.521313, 38.132431, 19.547573>,  <37.281971, 38.149742, 19.551504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.521313, 38.132431, 19.547573>,  <37.920216, 38.103577, 19.541021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521313, 38.132431, 19.547573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009088, 0.100260, -0.994920,
		-0.073408, -0.992343, -0.099330,
		-0.997260, 0.072133, 0.016378,
		37.222134, 38.154072, 19.552486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653561, 37.882210, 18.894407>,  <37.920216, 38.103577, 19.541021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653561, 37.882210, 18.894407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.350430, 38.107258, 19.026567>,  <37.168552, 38.242287, 19.105864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.350430, 38.107258, 19.026567>,  <37.653561, 37.882210, 18.894407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350430, 38.107258, 19.026567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184682, 0.300710, -0.935663,
		-0.625776, -0.770087, -0.123980,
		-0.757824, 0.562618, 0.330398,
		37.123081, 38.276043, 19.125687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113544, 37.625366, 18.476538>,  <37.653561, 37.882210, 18.894407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113544, 37.625366, 18.476538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009190, 37.974487, 18.641533>,  <36.946575, 38.183960, 18.740530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009190, 37.974487, 18.641533>,  <37.113544, 37.625366, 18.476538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009190, 37.974487, 18.641533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371565, 0.303582, -0.877369,
		-0.890998, -0.382161, 0.245104,
		-0.260887, 0.872806, 0.412489,
		36.930923, 38.236328, 18.765280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425961, 37.726006, 18.242506>,  <37.113544, 37.625366, 18.476538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425961, 37.726006, 18.242506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.557911, 38.086472, 18.355000>,  <36.637081, 38.302750, 18.422495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.557911, 38.086472, 18.355000>,  <36.425961, 37.726006, 18.242506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557911, 38.086472, 18.355000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223300, 0.363939, -0.904260,
		-0.917235, 0.235493, 0.321283,
		0.329875, 0.901161, 0.281233,
		36.656872, 38.356819, 18.439369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930180, 38.335880, 17.837225>,  <36.425961, 37.726006, 18.242506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930180, 38.335880, 17.837225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.269108, 38.512589, 17.955137>,  <36.472466, 38.618614, 18.025885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.269108, 38.512589, 17.955137>,  <35.930180, 38.335880, 17.837225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269108, 38.512589, 17.955137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087954, 0.664113, -0.742441,
		-0.523754, 0.603155, 0.601569,
		0.847317, 0.441767, 0.294782,
		36.523304, 38.645119, 18.043571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274315, 38.707932, 17.566790>,  <35.930180, 38.335880, 17.837225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274315, 38.707932, 17.566790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.036682, 39.025780, 17.616823>,  <34.894104, 39.216488, 17.646843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.036682, 39.025780, 17.616823>,  <35.274315, 38.707932, 17.566790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036682, 39.025780, 17.616823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059763, -0.111471, 0.991969,
		0.802180, 0.596788, 0.018735,
		-0.594083, 0.794618, 0.125085,
		34.858456, 39.264164, 17.654348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578480, 39.187874, 18.080366>,  <35.274315, 38.707932, 17.566790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578480, 39.187874, 18.080366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.181293, 39.232162, 18.063585>,  <34.942982, 39.258736, 18.053516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.181293, 39.232162, 18.063585>,  <35.578480, 39.187874, 18.080366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181293, 39.232162, 18.063585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053154, -0.100229, 0.993544,
		0.105805, 0.988784, 0.105409,
		-0.992965, 0.110725, -0.041954,
		34.883404, 39.265381, 18.050999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430977, 39.665810, 18.662245>,  <35.578480, 39.187874, 18.080366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430977, 39.665810, 18.662245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.093777, 39.460968, 18.596405>,  <34.891457, 39.338062, 18.556902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.093777, 39.460968, 18.596405>,  <35.430977, 39.665810, 18.662245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093777, 39.460968, 18.596405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242111, 0.087984, 0.966251,
		-0.480340, 0.854404, -0.198157,
		-0.843004, -0.512105, -0.164599,
		34.840874, 39.307335, 18.547026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860210, 40.000507, 19.130297>,  <35.430977, 39.665810, 18.662245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860210, 40.000507, 19.130297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.731861, 39.633167, 19.037628>,  <34.654850, 39.412762, 18.982027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.731861, 39.633167, 19.037628>,  <34.860210, 40.000507, 19.130297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731861, 39.633167, 19.037628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282451, -0.140689, 0.948909,
		-0.904024, 0.369918, -0.214245,
		-0.320876, -0.918350, -0.231670,
		34.635597, 39.357662, 18.968126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237160, 39.976852, 19.439844>,  <34.860210, 40.000507, 19.130297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237160, 39.976852, 19.439844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356541, 39.602074, 19.367125>,  <34.428169, 39.377205, 19.323492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356541, 39.602074, 19.367125>,  <34.237160, 39.976852, 19.439844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356541, 39.602074, 19.367125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288829, -0.270214, 0.918457,
		-0.909674, -0.221602, -0.351263,
		0.298448, -0.936951, -0.181801,
		34.446075, 39.320988, 19.312584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780476, 39.577915, 19.846172>,  <34.237160, 39.976852, 19.439844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780476, 39.577915, 19.846172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.036377, 39.284275, 19.755131>,  <34.189919, 39.108089, 19.700506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.036377, 39.284275, 19.755131>,  <33.780476, 39.577915, 19.846172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036377, 39.284275, 19.755131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228601, -0.464484, 0.855568,
		-0.733795, -0.495323, -0.464973,
		0.639755, -0.734105, -0.227605,
		34.228302, 39.064045, 19.686850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378090, 39.003372, 19.936514>,  <33.780476, 39.577915, 19.846172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378090, 39.003372, 19.936514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.766262, 38.911194, 19.965246>,  <33.999165, 38.855888, 19.982487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.766262, 38.911194, 19.965246>,  <33.378090, 39.003372, 19.936514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766262, 38.911194, 19.965246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131950, -0.257267, 0.957289,
		-0.202117, -0.938462, -0.280067,
		0.970432, -0.230439, 0.071833,
		34.057392, 38.842060, 19.986795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429329, 38.370407, 20.216469>,  <33.378090, 39.003372, 19.936514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429329, 38.370407, 20.216469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801235, 38.502701, 20.281143>,  <34.024380, 38.582077, 20.319948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801235, 38.502701, 20.281143>,  <33.429329, 38.370407, 20.216469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801235, 38.502701, 20.281143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101514, -0.191840, 0.976162,
		0.353870, -0.924019, -0.144792,
		0.929769, 0.330736, 0.161687,
		34.080166, 38.601921, 20.329649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784653, 37.770748, 20.543013>,  <33.429329, 38.370407, 20.216469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784653, 37.770748, 20.543013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.951229, 38.119282, 20.646820>,  <34.051174, 38.328403, 20.709105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.951229, 38.119282, 20.646820>,  <33.784653, 37.770748, 20.543013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951229, 38.119282, 20.646820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032115, -0.299370, 0.953596,
		0.908594, -0.388785, -0.152654,
		0.416444, 0.871334, 0.259520,
		34.076164, 38.380684, 20.724676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271507, 37.603180, 21.076651>,  <33.784653, 37.770748, 20.543013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271507, 37.603180, 21.076651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.210621, 37.993668, 21.138403>,  <34.174088, 38.227959, 21.175453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.210621, 37.993668, 21.138403>,  <34.271507, 37.603180, 21.076651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210621, 37.993668, 21.138403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024185, -0.152473, 0.988012,
		0.988051, 0.154127, -0.000401,
		-0.152218, 0.976216, 0.154378,
		34.164955, 38.286533, 21.184717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829273, 37.844131, 21.444290>,  <34.271507, 37.603180, 21.076651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829273, 37.844131, 21.444290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.533695, 38.107826, 21.499954>,  <34.356350, 38.266045, 21.533352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.533695, 38.107826, 21.499954>,  <34.829273, 37.844131, 21.444290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533695, 38.107826, 21.499954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043893, -0.158997, 0.986303,
		0.672338, 0.734929, 0.088553,
		-0.738942, 0.659242, 0.139158,
		34.312012, 38.305599, 21.541702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106579, 38.259678, 21.915363>,  <34.829273, 37.844131, 21.444290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106579, 38.259678, 21.915363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.716785, 38.342964, 21.948908>,  <34.482910, 38.392937, 21.969034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.716785, 38.342964, 21.948908>,  <35.106579, 38.259678, 21.915363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716785, 38.342964, 21.948908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027055, -0.261935, 0.964706,
		0.222834, 0.942357, 0.249617,
		-0.974481, 0.208216, 0.083863,
		34.424442, 38.405430, 21.974068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038021, 38.561100, 22.542141>,  <35.106579, 38.259678, 21.915363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038021, 38.561100, 22.542141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.680592, 38.410053, 22.445038>,  <34.466133, 38.319424, 22.386776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.680592, 38.410053, 22.445038>,  <35.038021, 38.561100, 22.542141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680592, 38.410053, 22.445038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079058, -0.399940, 0.913126,
		-0.441901, 0.835137, 0.327522,
		-0.893574, -0.377617, -0.242758,
		34.412521, 38.296768, 22.372210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602455, 38.741295, 23.118212>,  <35.038021, 38.561100, 22.542141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602455, 38.741295, 23.118212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419403, 38.429264, 22.947542>,  <34.309570, 38.242046, 22.845140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419403, 38.429264, 22.947542>,  <34.602455, 38.741295, 23.118212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419403, 38.429264, 22.947542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199625, -0.377476, 0.904246,
		-0.866444, 0.498984, 0.017021,
		-0.457630, -0.780081, -0.426672,
		34.282116, 38.195240, 22.819540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131237, 38.528103, 23.626602>,  <34.602455, 38.741295, 23.118212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131237, 38.528103, 23.626602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.083282, 38.198582, 23.404978>,  <34.054512, 38.000870, 23.272003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.083282, 38.198582, 23.404978>,  <34.131237, 38.528103, 23.626602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083282, 38.198582, 23.404978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147752, -0.537065, 0.830500,
		-0.981732, 0.181428, -0.057333,
		-0.119884, -0.823799, -0.554060,
		34.047318, 37.951443, 23.238760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417618, 38.179913, 23.709160>,  <34.131237, 38.528103, 23.626602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417618, 38.179913, 23.709160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.681438, 37.900505, 23.598118>,  <33.839729, 37.732861, 23.531492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.681438, 37.900505, 23.598118>,  <33.417618, 38.179913, 23.709160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681438, 37.900505, 23.598118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229842, -0.539050, 0.810307,
		-0.715656, -0.470634, -0.516080,
		0.659552, -0.698518, -0.277603,
		33.879303, 37.690948, 23.514837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081604, 37.487064, 23.826376>,  <33.417618, 38.179913, 23.709160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081604, 37.487064, 23.826376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.475704, 37.418747, 23.822035>,  <33.712162, 37.377758, 23.819431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.475704, 37.418747, 23.822035>,  <33.081604, 37.487064, 23.826376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475704, 37.418747, 23.822035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090746, -0.575133, 0.813011,
		-0.145099, -0.800032, -0.582147,
		0.985247, -0.170794, -0.010851,
		33.771278, 37.367508, 23.818779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056293, 36.869717, 24.165998>,  <33.081604, 37.487064, 23.826376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056293, 36.869717, 24.165998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.443417, 36.969742, 24.154598>,  <33.675690, 37.029758, 24.147758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.443417, 36.969742, 24.154598>,  <33.056293, 36.869717, 24.165998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443417, 36.969742, 24.154598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158647, -0.518225, 0.840401,
		0.195386, -0.817869, -0.541215,
		0.967810, 0.250065, -0.028499,
		33.733761, 37.044762, 24.146049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465145, 36.255119, 24.255735>,  <33.056293, 36.869717, 24.165998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465145, 36.255119, 24.255735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726891, 36.537514, 24.364092>,  <33.883938, 36.706951, 24.429106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726891, 36.537514, 24.364092>,  <33.465145, 36.255119, 24.255735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726891, 36.537514, 24.364092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216807, -0.518362, 0.827222,
		0.724430, -0.482576, -0.492262,
		0.654367, 0.705990, 0.270891,
		33.923203, 36.749310, 24.445358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980007, 35.861828, 24.602316>,  <33.465145, 36.255119, 24.255735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980007, 35.861828, 24.602316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.992462, 36.238102, 24.737452>,  <33.999935, 36.463867, 24.818533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.992462, 36.238102, 24.737452>,  <33.980007, 35.861828, 24.602316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992462, 36.238102, 24.737452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046680, -0.339004, 0.939626,
		0.998425, -0.013484, -0.054466,
		0.031134, 0.940688, 0.337841,
		34.001801, 36.520309, 24.838804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504192, 35.802860, 25.080160>,  <33.980007, 35.861828, 24.602316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504192, 35.802860, 25.080160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.369968, 36.161633, 25.195339>,  <34.289436, 36.376896, 25.264446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.369968, 36.161633, 25.195339>,  <34.504192, 35.802860, 25.080160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369968, 36.161633, 25.195339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252338, -0.208918, 0.944817,
		0.907594, 0.389700, -0.156226,
		-0.335556, 0.896932, 0.287948,
		34.269302, 36.430714, 25.281723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.206184, 36.409492, 29.015308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.902584, 36.650345, 29.114389>,  <38.720425, 36.794857, 29.173838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.902584, 36.650345, 29.114389>,  <39.206184, 36.409492, 29.015308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902584, 36.650345, 29.114389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487729, 0.273779, 0.828954,
		0.431327, 0.749986, -0.501477,
		-0.758998, 0.602135, 0.247702,
		38.674885, 36.830986, 29.188700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569794, 37.021652, 29.247301>,  <39.206184, 36.409492, 29.015308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569794, 37.021652, 29.247301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.196640, 37.046078, 29.389284>,  <38.972748, 37.060734, 29.474474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.196640, 37.046078, 29.389284>,  <39.569794, 37.021652, 29.247301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196640, 37.046078, 29.389284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358448, 0.253705, 0.898414,
		-0.035192, 0.965352, -0.258567,
		-0.932886, 0.061065, 0.354957,
		38.916775, 37.064396, 29.495771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608040, 37.512955, 29.790306>,  <39.569794, 37.021652, 29.247301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608040, 37.512955, 29.790306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.256618, 37.338577, 29.868385>,  <39.045765, 37.233952, 29.915234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.256618, 37.338577, 29.868385>,  <39.608040, 37.512955, 29.790306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256618, 37.338577, 29.868385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095797, 0.239545, 0.966148,
		-0.467942, 0.867510, -0.168691,
		-0.878552, -0.435941, 0.195198,
		38.993053, 37.207794, 29.926945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319908, 37.957897, 30.369564>,  <39.608040, 37.512955, 29.790306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319908, 37.957897, 30.369564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.083904, 37.635029, 30.377274>,  <38.942303, 37.441307, 30.381899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.083904, 37.635029, 30.377274>,  <39.319908, 37.957897, 30.369564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083904, 37.635029, 30.377274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064939, -0.023645, 0.997609,
		-0.804783, 0.589848, 0.066367,
		-0.590007, -0.807168, 0.019275,
		38.906902, 37.392879, 30.383057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715504, 38.101940, 30.795187>,  <39.319908, 37.957897, 30.369564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715504, 38.101940, 30.795187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.776451, 37.706631, 30.791082>,  <38.813019, 37.469444, 30.788620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.776451, 37.706631, 30.791082>,  <38.715504, 38.101940, 30.795187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776451, 37.706631, 30.791082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040037, -0.016548, 0.999061,
		-0.987512, -0.151817, -0.042089,
		0.152371, -0.988270, -0.010263,
		38.822163, 37.410149, 30.788004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226173, 37.789356, 31.110321>,  <38.715504, 38.101940, 30.795187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226173, 37.789356, 31.110321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.499020, 37.497284, 31.126114>,  <38.662727, 37.322041, 31.135590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.499020, 37.497284, 31.126114>,  <38.226173, 37.789356, 31.110321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499020, 37.497284, 31.126114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155615, -0.092191, 0.983506,
		-0.714499, -0.677004, -0.176512,
		0.682111, -0.730182, 0.039482,
		38.703651, 37.278229, 31.137959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927044, 37.354706, 31.613333>,  <38.226173, 37.789356, 31.110321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927044, 37.354706, 31.613333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.311745, 37.245213, 31.609428>,  <38.542564, 37.179516, 31.607086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.311745, 37.245213, 31.609428>,  <37.927044, 37.354706, 31.613333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311745, 37.245213, 31.609428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056182, -0.232030, 0.971085,
		-0.268088, -0.933397, -0.238535,
		0.961755, -0.273738, -0.009765,
		38.600273, 37.163094, 31.606499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890026, 36.735264, 31.996859>,  <37.927044, 37.354706, 31.613333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890026, 36.735264, 31.996859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.269905, 36.860527, 31.998308>,  <38.497833, 36.935684, 31.999178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.269905, 36.860527, 31.998308>,  <37.890026, 36.735264, 31.996859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269905, 36.860527, 31.998308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037505, -0.125219, 0.991420,
		0.310922, -0.941411, -0.130665,
		0.949695, 0.313155, 0.003626,
		38.554813, 36.954475, 31.999395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241768, 36.208862, 32.405579>,  <37.890026, 36.735264, 31.996859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241768, 36.208862, 32.405579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.473629, 36.534653, 32.395523>,  <38.612743, 36.730125, 32.389488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.473629, 36.534653, 32.395523>,  <38.241768, 36.208862, 32.405579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473629, 36.534653, 32.395523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177301, -0.095951, 0.979468,
		0.795342, -0.572207, -0.200026,
		0.579651, 0.814477, -0.025139,
		38.647526, 36.778996, 32.387981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798286, 36.009724, 32.680515>,  <38.241768, 36.208862, 32.405579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798286, 36.009724, 32.680515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.830311, 36.405506, 32.728802>,  <38.849525, 36.642975, 32.757774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.830311, 36.405506, 32.728802>,  <38.798286, 36.009724, 32.680515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830311, 36.405506, 32.728802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046321, -0.124672, 0.991116,
		0.995713, -0.073763, -0.055814,
		0.080066, 0.989452, 0.120721,
		38.854332, 36.702343, 32.765018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300499, 36.133282, 33.305702>,  <38.798286, 36.009724, 32.680515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300499, 36.133282, 33.305702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.087772, 36.466728, 33.246025>,  <38.960136, 36.666794, 33.210220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.087772, 36.466728, 33.246025>,  <39.300499, 36.133282, 33.305702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087772, 36.466728, 33.246025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102041, 0.111810, 0.988477,
		0.840689, 0.540913, 0.025600,
		-0.531817, 0.833614, -0.149193,
		38.928226, 36.716812, 33.201267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635578, 36.668808, 33.628876>,  <39.300499, 36.133282, 33.305702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635578, 36.668808, 33.628876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.251762, 36.781380, 33.625278>,  <39.021473, 36.848923, 33.623119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.251762, 36.781380, 33.625278>,  <39.635578, 36.668808, 33.628876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251762, 36.781380, 33.625278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059764, 0.234762, 0.970214,
		0.275153, 0.930423, -0.242083,
		-0.959541, 0.281426, -0.008990,
		38.963902, 36.865807, 33.622581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568607, 37.374680, 33.890572>,  <39.635578, 36.668808, 33.628876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568607, 37.374680, 33.890572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.238968, 37.150185, 33.921238>,  <39.041183, 37.015488, 33.939636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.238968, 37.150185, 33.921238>,  <39.568607, 37.374680, 33.890572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238968, 37.150185, 33.921238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016433, 0.158970, 0.987147,
		-0.566209, 0.812245, -0.140230,
		-0.824098, -0.561236, 0.076663,
		38.991737, 36.981815, 33.944237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029175, 37.725433, 34.373638>,  <39.568607, 37.374680, 33.890572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029175, 37.725433, 34.373638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.003487, 37.326935, 34.396862>,  <38.988075, 37.087837, 34.410797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.003487, 37.326935, 34.396862>,  <39.029175, 37.725433, 34.373638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003487, 37.326935, 34.396862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123378, 0.065662, 0.990185,
		-0.990280, 0.056424, -0.127132,
		-0.064218, -0.996245, 0.058063,
		38.984222, 37.028061, 34.414280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094788, 38.199863, 34.931339>,  <39.029175, 37.725433, 34.373638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094788, 38.199863, 34.931339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.325314, 38.514393, 35.020386>,  <39.463631, 38.703110, 35.073814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.325314, 38.514393, 35.020386>,  <39.094788, 38.199863, 34.931339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325314, 38.514393, 35.020386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349546, 0.483410, -0.802578,
		-0.738698, 0.384725, 0.553454,
		0.576317, 0.786321, 0.222615,
		39.498207, 38.750290, 35.087170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695145, 38.721870, 34.840366>,  <39.094788, 38.199863, 34.931339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695145, 38.721870, 34.840366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.046104, 38.911060, 34.808197>,  <39.256680, 39.024574, 34.788895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.046104, 38.911060, 34.808197>,  <38.695145, 38.721870, 34.840366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046104, 38.911060, 34.808197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367857, 0.555618, -0.745633,
		-0.307984, 0.683800, 0.661486,
		0.877398, 0.472975, -0.080420,
		39.309322, 39.052952, 34.784073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537838, 39.394234, 34.668247>,  <38.695145, 38.721870, 34.840366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537838, 39.394234, 34.668247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.924648, 39.352402, 34.575367>,  <39.156734, 39.327305, 34.519638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.924648, 39.352402, 34.575367>,  <38.537838, 39.394234, 34.668247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924648, 39.352402, 34.575367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128240, 0.587768, -0.798801,
		0.220015, 0.802242, 0.554978,
		0.967030, -0.104578, -0.232197,
		39.214756, 39.321030, 34.505707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644829, 39.978252, 34.294415>,  <38.537838, 39.394234, 34.668247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644829, 39.978252, 34.294415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.975471, 39.771786, 34.204712>,  <39.173859, 39.647907, 34.150890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.975471, 39.771786, 34.204712>,  <38.644829, 39.978252, 34.294415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975471, 39.771786, 34.204712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075794, 0.292745, -0.953182,
		0.557651, 0.804905, 0.202863,
		0.826608, -0.516167, -0.224257,
		39.223454, 39.616936, 34.137436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108158, 40.388710, 33.917538>,  <38.644829, 39.978252, 34.294415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108158, 40.388710, 33.917538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.244228, 40.025734, 33.818874>,  <39.325871, 39.807949, 33.759674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.244228, 40.025734, 33.818874>,  <39.108158, 40.388710, 33.917538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244228, 40.025734, 33.818874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246509, 0.339182, -0.907848,
		0.907478, 0.248021, 0.339072,
		0.340173, -0.907436, -0.246661,
		39.346279, 39.753502, 33.744877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677338, 40.525249, 33.507595>,  <39.108158, 40.388710, 33.917538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677338, 40.525249, 33.507595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.612171, 40.139202, 33.425617>,  <39.573071, 39.907574, 33.376431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.612171, 40.139202, 33.425617>,  <39.677338, 40.525249, 33.507595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612171, 40.139202, 33.425617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046116, 0.200049, -0.978700,
		0.985562, -0.168895, 0.011917,
		-0.162914, -0.965119, -0.204949,
		39.563297, 39.849667, 33.364132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166042, 40.313679, 32.922424>,  <39.677338, 40.525249, 33.507595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166042, 40.313679, 32.922424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.853279, 40.064327, 32.920452>,  <39.665623, 39.914719, 32.919270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.853279, 40.064327, 32.920452>,  <40.166042, 40.313679, 32.922424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853279, 40.064327, 32.920452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015390, 0.027202, -0.999512,
		0.623204, -0.781450, -0.030863,
		-0.781908, -0.623375, -0.004926,
		39.618706, 39.877316, 32.918976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226692, 39.829887, 32.374836>,  <40.166042, 40.313679, 32.922424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226692, 39.829887, 32.374836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.834377, 39.802422, 32.447884>,  <39.598988, 39.785942, 32.491711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.834377, 39.802422, 32.447884>,  <40.226692, 39.829887, 32.374836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834377, 39.802422, 32.447884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177917, -0.069323, -0.981601,
		0.080058, -0.995229, 0.055775,
		-0.980783, -0.068662, 0.182618,
		39.540142, 39.781822, 32.502670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962914, 39.181633, 31.963352>,  <40.226692, 39.829887, 32.374836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962914, 39.181633, 31.963352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.670223, 39.447346, 32.024418>,  <39.494610, 39.606773, 32.061058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.670223, 39.447346, 32.024418>,  <39.962914, 39.181633, 31.963352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670223, 39.447346, 32.024418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240984, -0.042621, -0.969593,
		-0.637578, -0.746264, 0.191268,
		-0.731725, 0.664284, 0.152664,
		39.450706, 39.646629, 32.070217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314514, 38.900715, 31.688566>,  <39.962914, 39.181633, 31.963352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314514, 38.900715, 31.688566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.252522, 39.295815, 31.695776>,  <39.215328, 39.532875, 31.700102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.252522, 39.295815, 31.695776>,  <39.314514, 38.900715, 31.688566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252522, 39.295815, 31.695776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490276, -0.061060, -0.869426,
		-0.857678, -0.143579, 0.493734,
		-0.154979, 0.987754, 0.018024,
		39.206028, 39.592140, 31.701183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651215, 38.994923, 31.392935>,  <39.314514, 38.900715, 31.688566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651215, 38.994923, 31.392935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.812271, 39.357548, 31.342295>,  <38.908905, 39.575123, 31.311911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.812271, 39.357548, 31.342295>,  <38.651215, 38.994923, 31.392935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812271, 39.357548, 31.342295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413409, 0.056702, -0.908778,
		-0.816685, 0.418248, 0.397611,
		0.402640, 0.906561, -0.126599,
		38.933064, 39.629517, 31.304316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123688, 39.349915, 31.001404>,  <38.651215, 38.994923, 31.392935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123688, 39.349915, 31.001404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.446865, 39.578983, 30.945875>,  <38.640774, 39.716423, 30.912558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.446865, 39.578983, 30.945875>,  <38.123688, 39.349915, 31.001404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446865, 39.578983, 30.945875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304057, 0.203365, -0.930694,
		-0.504749, 0.794161, 0.338432,
		0.807947, 0.572670, -0.138822,
		38.689251, 39.750786, 30.904228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952904, 39.973038, 30.716749>,  <38.123688, 39.349915, 31.001404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952904, 39.973038, 30.716749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.341000, 39.964516, 30.620262>,  <38.573856, 39.959400, 30.562370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.341000, 39.964516, 30.620262>,  <37.952904, 39.973038, 30.716749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341000, 39.964516, 30.620262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234854, 0.159955, -0.958780,
		0.059015, 0.986895, 0.150189,
		0.970238, -0.021309, -0.241216,
		38.632072, 39.958122, 30.547897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099957, 40.488716, 30.102827>,  <37.952904, 39.973038, 30.716749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099957, 40.488716, 30.102827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.437962, 40.275921, 30.081120>,  <38.640762, 40.148243, 30.068094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.437962, 40.275921, 30.081120>,  <38.099957, 40.488716, 30.102827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437962, 40.275921, 30.081120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067136, -0.004856, -0.997732,
		0.530520, 0.846737, -0.039819,
		0.845009, -0.531990, -0.054271,
		38.691463, 40.116325, 30.064838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452702, 41.165207, 30.241402>,  <38.099957, 40.488716, 30.102827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452702, 41.165207, 30.241402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.158051, 41.431702, 30.194929>,  <37.981258, 41.591599, 30.167046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.158051, 41.431702, 30.194929>,  <38.452702, 41.165207, 30.241402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158051, 41.431702, 30.194929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404921, -0.296896, 0.864808,
		0.541678, 0.684087, 0.488477,
		-0.736631, 0.666241, -0.116179,
		37.937061, 41.631573, 30.160076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412762, 41.424366, 30.880854>,  <38.452702, 41.165207, 30.241402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412762, 41.424366, 30.880854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.069073, 41.527367, 30.704027>,  <37.862858, 41.589169, 30.597931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.069073, 41.527367, 30.704027>,  <38.412762, 41.424366, 30.880854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069073, 41.527367, 30.704027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510406, -0.372579, 0.775029,
		0.034866, 0.891559, 0.451560,
		-0.859227, 0.257501, -0.442066,
		37.811306, 41.604618, 30.571407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057259, 41.827850, 31.344748>,  <38.412762, 41.424366, 30.880854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057259, 41.827850, 31.344748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.771576, 41.672897, 31.111565>,  <37.600166, 41.579926, 30.971655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.771576, 41.672897, 31.111565>,  <38.057259, 41.827850, 31.344748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771576, 41.672897, 31.111565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459355, -0.368998, 0.807981,
		-0.528112, 0.844850, 0.085594,
		-0.714207, -0.387387, -0.582958,
		37.557312, 41.556683, 30.936678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486370, 41.958477, 31.727533>,  <38.057259, 41.827850, 31.344748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486370, 41.958477, 31.727533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.369835, 41.665855, 31.480974>,  <37.299915, 41.490280, 31.333038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.369835, 41.665855, 31.480974>,  <37.486370, 41.958477, 31.727533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369835, 41.665855, 31.480974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537688, -0.407707, 0.738015,
		-0.791210, 0.546442, -0.274569,
		-0.291339, -0.731557, -0.616398,
		37.282433, 41.446388, 31.296055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860641, 41.864296, 31.804199>,  <37.486370, 41.958477, 31.727533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860641, 41.864296, 31.804199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.973675, 41.514210, 31.647156>,  <37.041496, 41.304157, 31.552929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.973675, 41.514210, 31.647156>,  <36.860641, 41.864296, 31.804199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973675, 41.514210, 31.647156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527783, -0.483630, 0.698245,
		-0.800993, 0.009898, -0.598591,
		0.282586, -0.875216, -0.392609,
		37.058449, 41.251644, 31.529373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267658, 41.529308, 31.824774>,  <36.860641, 41.864296, 31.804199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267658, 41.529308, 31.824774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.509834, 41.214588, 31.776804>,  <36.655140, 41.025757, 31.748022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.509834, 41.214588, 31.776804>,  <36.267658, 41.529308, 31.824774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509834, 41.214588, 31.776804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601375, -0.550948, 0.578623,
		-0.521334, -0.278203, -0.806730,
		0.605441, -0.786803, -0.119924,
		36.691467, 40.978546, 31.740826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775879, 40.978905, 31.697968>,  <36.267658, 41.529308, 31.824774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775879, 40.978905, 31.697968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.120281, 40.820831, 31.826035>,  <36.326923, 40.725986, 31.902874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.120281, 40.820831, 31.826035>,  <35.775879, 40.978905, 31.697968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120281, 40.820831, 31.826035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502819, -0.566722, 0.652686,
		-0.076485, -0.722949, -0.686655,
		0.861001, -0.395184, 0.320167,
		36.378582, 40.702274, 31.922085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626667, 40.301811, 31.607647>,  <35.775879, 40.978905, 31.697968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626667, 40.301811, 31.607647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.926968, 40.329723, 31.870401>,  <36.107147, 40.346470, 32.028053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.926968, 40.329723, 31.870401>,  <35.626667, 40.301811, 31.607647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926968, 40.329723, 31.870401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452563, -0.670048, 0.588407,
		0.481205, -0.739031, -0.471460,
		0.750752, 0.069780, 0.656889,
		36.152195, 40.350658, 32.067467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744305, 39.642067, 31.832411>,  <35.626667, 40.301811, 31.607647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744305, 39.642067, 31.832411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.917168, 39.851723, 32.125946>,  <36.020885, 39.977516, 32.302067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.917168, 39.851723, 32.125946>,  <35.744305, 39.642067, 31.832411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917168, 39.851723, 32.125946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179020, -0.747689, 0.639463,
		0.883852, -0.407718, -0.229285,
		0.432154, 0.524144, 0.733836,
		36.046814, 40.008965, 32.346096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182667, 39.145401, 32.164520>,  <35.744305, 39.642067, 31.832411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182667, 39.145401, 32.164520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.140644, 39.434196, 32.438072>,  <36.115433, 39.607475, 32.602203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.140644, 39.434196, 32.438072>,  <36.182667, 39.145401, 32.164520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140644, 39.434196, 32.438072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063537, -0.681412, 0.729137,
		0.992435, 0.120052, 0.025713,
		-0.105055, 0.721987, 0.683884,
		36.109127, 39.650791, 32.643238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700737, 39.030106, 32.723160>,  <36.182667, 39.145401, 32.164520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700737, 39.030106, 32.723160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.432167, 39.265419, 32.903431>,  <36.271023, 39.406605, 33.011593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.432167, 39.265419, 32.903431>,  <36.700737, 39.030106, 32.723160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432167, 39.265419, 32.903431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051048, -0.643416, 0.763813,
		0.739309, 0.489839, 0.462038,
		-0.671428, 0.588280, 0.450678,
		36.230740, 39.441902, 33.038635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983231, 39.324032, 33.252228>,  <36.700737, 39.030106, 32.723160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983231, 39.324032, 33.252228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.588619, 39.314060, 33.316898>,  <36.351852, 39.308075, 33.355701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.588619, 39.314060, 33.316898>,  <36.983231, 39.324032, 33.252228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588619, 39.314060, 33.316898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144936, -0.591548, 0.793136,
		0.075866, 0.805884, 0.587192,
		-0.986528, -0.024933, 0.161680,
		36.292660, 39.306580, 33.365402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.503761, 43.072151, 26.730127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106346, 43.027847, 26.720181>,  <37.867897, 43.001266, 26.714212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106346, 43.027847, 26.720181>,  <38.503761, 43.072151, 26.730127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106346, 43.027847, 26.720181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043446, 0.168622, 0.984723,
		-0.104875, 0.979438, -0.172344,
		-0.993536, -0.110760, -0.024868,
		37.808285, 42.994617, 26.712721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217388, 43.608925, 27.144611>,  <38.503761, 43.072151, 26.730127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217388, 43.608925, 27.144611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960194, 43.303284, 27.123772>,  <37.805878, 43.119900, 27.111269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960194, 43.303284, 27.123772>,  <38.217388, 43.608925, 27.144611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960194, 43.303284, 27.123772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001518, -0.069294, 0.997595,
		-0.765877, 0.641359, 0.045715,
		-0.642985, -0.764105, -0.052097,
		37.767300, 43.074051, 27.108143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836941, 43.784260, 27.680681>,  <38.217388, 43.608925, 27.144611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836941, 43.784260, 27.680681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747761, 43.406918, 27.582396>,  <37.694252, 43.180511, 27.523424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747761, 43.406918, 27.582396>,  <37.836941, 43.784260, 27.680681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747761, 43.406918, 27.582396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026344, -0.257797, 0.965840,
		-0.974474, 0.208861, 0.082328,
		-0.222950, -0.943354, -0.245714,
		37.680874, 43.123913, 27.508680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230103, 43.513863, 28.154844>,  <37.836941, 43.784260, 27.680681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230103, 43.513863, 28.154844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436672, 43.196388, 28.026243>,  <37.560612, 43.005901, 27.949081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436672, 43.196388, 28.026243>,  <37.230103, 43.513863, 28.154844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436672, 43.196388, 28.026243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025475, -0.389515, 0.920667,
		-0.855956, -0.467261, -0.221373,
		0.516420, -0.793691, -0.321505,
		37.591599, 42.958282, 27.929792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840733, 42.913193, 28.304323>,  <37.230103, 43.513863, 28.154844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840733, 42.913193, 28.304323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207901, 42.761223, 28.258579>,  <37.428204, 42.670040, 28.231133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207901, 42.761223, 28.258579>,  <36.840733, 42.913193, 28.304323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207901, 42.761223, 28.258579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149534, -0.598252, 0.787232,
		-0.367504, -0.705516, -0.605960,
		0.917922, -0.379922, -0.114361,
		37.483276, 42.647247, 28.224270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740604, 42.280251, 28.637199>,  <36.840733, 42.913193, 28.304323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740604, 42.280251, 28.637199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136169, 42.297577, 28.580397>,  <37.373508, 42.307972, 28.546314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136169, 42.297577, 28.580397>,  <36.740604, 42.280251, 28.637199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136169, 42.297577, 28.580397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144182, -0.508417, 0.848955,
		-0.035423, -0.860021, -0.509028,
		0.988917, 0.043320, -0.142009,
		37.432846, 42.310574, 28.537794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958740, 41.617256, 28.717445>,  <36.740604, 42.280251, 28.637199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958740, 41.617256, 28.717445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279724, 41.844814, 28.789457>,  <37.472317, 41.981350, 28.832664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279724, 41.844814, 28.789457>,  <36.958740, 41.617256, 28.717445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279724, 41.844814, 28.789457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139847, -0.472610, 0.870105,
		0.580085, -0.673049, -0.458810,
		0.802462, 0.568898, 0.180030,
		37.520462, 42.015484, 28.843466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525787, 41.178474, 28.906063>,  <36.958740, 41.617256, 28.717445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525787, 41.178474, 28.906063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586285, 41.536400, 29.074080>,  <37.622581, 41.751156, 29.174889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586285, 41.536400, 29.074080>,  <37.525787, 41.178474, 28.906063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586285, 41.536400, 29.074080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071478, -0.433717, 0.898210,
		0.985909, -0.105822, -0.129555,
		0.151240, 0.894814, 0.420041,
		37.631657, 41.804844, 29.200092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025879, 41.042171, 29.424030>,  <37.525787, 41.178474, 28.906063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025879, 41.042171, 29.424030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907005, 41.400196, 29.557024>,  <37.835682, 41.615013, 29.636820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907005, 41.400196, 29.557024>,  <38.025879, 41.042171, 29.424030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907005, 41.400196, 29.557024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002476, -0.347490, 0.937680,
		0.954818, 0.279483, 0.101051,
		-0.297180, 0.895064, 0.332482,
		37.817852, 41.668716, 29.656769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817272, 40.890427, 29.501823>,  <38.025879, 41.042171, 29.424030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817272, 40.890427, 29.501823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899815, 40.505573, 29.573069>,  <38.949341, 40.274662, 29.615816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899815, 40.505573, 29.573069>,  <38.817272, 40.890427, 29.501823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899815, 40.505573, 29.573069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295600, -0.112229, -0.948696,
		0.932759, 0.248418, 0.261247,
		0.206353, -0.962130, 0.178115,
		38.961720, 40.216934, 29.626503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549507, 40.731083, 29.298552>,  <38.817272, 40.890427, 29.501823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549507, 40.731083, 29.298552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337318, 40.392132, 29.289127>,  <39.210007, 40.188763, 29.283472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337318, 40.392132, 29.289127>,  <39.549507, 40.731083, 29.298552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337318, 40.392132, 29.289127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197528, -0.096529, -0.975533,
		0.824371, -0.522142, 0.218587,
		-0.530467, -0.847378, -0.023562,
		39.178177, 40.137917, 29.282059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899647, 40.399899, 28.702236>,  <39.549507, 40.731083, 29.298552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899647, 40.399899, 28.702236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608158, 40.130432, 28.751434>,  <39.433266, 39.968750, 28.780952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608158, 40.130432, 28.751434>,  <39.899647, 40.399899, 28.702236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608158, 40.130432, 28.751434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233925, -0.413682, -0.879856,
		0.643614, -0.612401, 0.459048,
		-0.728725, -0.673670, 0.122996,
		39.389542, 39.928329, 28.788334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184410, 39.745480, 28.490950>,  <39.899647, 40.399899, 28.702236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184410, 39.745480, 28.490950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787243, 39.742645, 28.443510>,  <39.548943, 39.740944, 28.415047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787243, 39.742645, 28.443510>,  <40.184410, 39.745480, 28.490950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787243, 39.742645, 28.443510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110908, -0.413294, -0.903818,
		-0.042607, -0.910570, 0.411153,
		-0.992916, -0.007091, -0.118598,
		39.489368, 39.740517, 28.407930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024715, 39.191711, 28.141821>,  <40.184410, 39.745480, 28.490950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024715, 39.191711, 28.141821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684929, 39.395340, 28.086313>,  <39.481056, 39.517517, 28.053009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684929, 39.395340, 28.086313>,  <40.024715, 39.191711, 28.141821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684929, 39.395340, 28.086313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024173, -0.300263, -0.953550,
		-0.527096, -0.806650, 0.267368,
		-0.849462, 0.509076, -0.138768,
		39.430092, 39.548061, 28.044683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536236, 38.804890, 27.692671>,  <40.024715, 39.191711, 28.141821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536236, 38.804890, 27.692671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402050, 39.179028, 27.647774>,  <39.321537, 39.403511, 27.620836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402050, 39.179028, 27.647774>,  <39.536236, 38.804890, 27.692671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402050, 39.179028, 27.647774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043761, -0.134489, -0.989948,
		-0.941036, -0.327180, 0.086048,
		-0.335463, 0.935343, -0.112241,
		39.301411, 39.459629, 27.614101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962551, 38.739403, 27.217260>,  <39.536236, 38.804890, 27.692671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962551, 38.739403, 27.217260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080242, 39.121666, 27.212309>,  <39.150856, 39.351025, 27.209339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080242, 39.121666, 27.212309>,  <38.962551, 38.739403, 27.217260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080242, 39.121666, 27.212309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032204, -0.003029, -0.999477,
		-0.955192, 0.294476, 0.029884,
		0.294232, 0.955654, -0.012377,
		39.168510, 39.408363, 27.208595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463924, 39.230335, 26.727339>,  <38.962551, 38.739403, 27.217260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463924, 39.230335, 26.727339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827255, 39.388626, 26.781515>,  <39.045254, 39.483601, 26.814020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827255, 39.388626, 26.781515>,  <38.463924, 39.230335, 26.727339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827255, 39.388626, 26.781515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122027, 0.059003, -0.990771,
		-0.400068, 0.916470, 0.005304,
		0.908326, 0.395728, 0.135439,
		39.099754, 39.507343, 26.822147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461708, 39.860443, 26.285799>,  <38.463924, 39.230335, 26.727339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461708, 39.860443, 26.285799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851166, 39.845909, 26.375854>,  <39.084843, 39.837189, 26.429888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851166, 39.845909, 26.375854>,  <38.461708, 39.860443, 26.285799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851166, 39.845909, 26.375854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227092, 0.245015, -0.942548,
		-0.020915, 0.968838, 0.246810,
		0.973649, -0.036335, 0.225140,
		39.143261, 39.835007, 26.443396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856102, 40.545448, 26.139189>,  <38.461708, 39.860443, 26.285799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856102, 40.545448, 26.139189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083012, 40.217258, 26.110853>,  <39.219158, 40.020344, 26.093853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083012, 40.217258, 26.110853>,  <38.856102, 40.545448, 26.139189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083012, 40.217258, 26.110853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249318, 0.253082, -0.934767,
		0.784884, 0.512606, 0.348127,
		0.567272, -0.820478, -0.070838,
		39.253193, 39.971115, 26.089602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436790, 40.809673, 25.790247>,  <38.856102, 40.545448, 26.139189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436790, 40.809673, 25.790247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493816, 40.413887, 25.780199>,  <39.528034, 40.176414, 25.774170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493816, 40.413887, 25.780199>,  <39.436790, 40.809673, 25.790247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493816, 40.413887, 25.780199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232875, 0.058200, -0.970763,
		0.962000, 0.132548, 0.238720,
		0.142567, -0.989466, -0.025122,
		39.536587, 40.117046, 25.772663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086761, 40.734364, 25.441250>,  <39.436790, 40.809673, 25.790247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086761, 40.734364, 25.441250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871929, 40.397644, 25.419630>,  <39.743031, 40.195614, 25.406658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871929, 40.397644, 25.419630>,  <40.086761, 40.734364, 25.441250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871929, 40.397644, 25.419630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125110, -0.016129, -0.992012,
		0.834202, -0.539551, 0.113980,
		-0.537080, -0.841798, -0.054048,
		39.710804, 40.145103, 25.403416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291527, 40.541870, 24.737797>,  <40.086761, 40.734364, 25.441250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291527, 40.541870, 24.737797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003128, 40.277756, 24.821877>,  <39.830090, 40.119289, 24.872324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003128, 40.277756, 24.821877>,  <40.291527, 40.541870, 24.737797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003128, 40.277756, 24.821877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174437, -0.120630, -0.977251,
		0.670619, -0.741265, -0.028204,
		-0.721000, -0.660283, 0.210201,
		39.786827, 40.079670, 24.884937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483833, 39.849571, 24.430296>,  <40.291527, 40.541870, 24.737797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483833, 39.849571, 24.430296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088951, 39.896725, 24.473249>,  <39.852024, 39.925018, 24.499022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088951, 39.896725, 24.473249>,  <40.483833, 39.849571, 24.430296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088951, 39.896725, 24.473249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130600, -0.211327, -0.968651,
		-0.091501, -0.970280, 0.224019,
		-0.987204, 0.117889, 0.107382,
		39.792789, 39.932091, 24.505465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.747581, 39.132610, 24.602774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.119095, 39.280815, 24.606339>,  <32.342003, 39.369740, 24.608477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.119095, 39.280815, 24.606339>,  <31.747581, 39.132610, 24.602774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119095, 39.280815, 24.606339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119846, -0.322998, 0.938781,
		0.350712, -0.870856, -0.344400,
		0.928783, 0.370516, 0.008910,
		32.397728, 39.391972, 24.609011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210617, 38.597420, 24.718407>,  <31.747581, 39.132610, 24.602774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210617, 38.597420, 24.718407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.433777, 38.911644, 24.825468>,  <32.567673, 39.100178, 24.889706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.433777, 38.911644, 24.825468>,  <32.210617, 38.597420, 24.718407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433777, 38.911644, 24.825468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182236, -0.430601, 0.883953,
		0.809650, -0.444385, -0.383391,
		0.557903, 0.785560, 0.267653,
		32.601147, 39.147312, 24.905764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867283, 38.409241, 24.953501>,  <32.210617, 38.597420, 24.718407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867283, 38.409241, 24.953501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.810829, 38.764473, 25.128496>,  <32.776958, 38.977612, 25.233494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.810829, 38.764473, 25.128496>,  <32.867283, 38.409241, 24.953501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810829, 38.764473, 25.128496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258494, -0.393526, 0.882223,
		0.955647, 0.237601, -0.174023,
		-0.141134, 0.888078, 0.437490,
		32.768490, 39.030895, 25.259743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394215, 38.443592, 25.395306>,  <32.867283, 38.409241, 24.953501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394215, 38.443592, 25.395306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.121307, 38.698425, 25.538771>,  <32.957565, 38.851326, 25.624849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.121307, 38.698425, 25.538771>,  <33.394215, 38.443592, 25.395306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121307, 38.698425, 25.538771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232105, -0.276453, 0.932578,
		0.693284, 0.719512, 0.040744,
		-0.682265, 0.637084, 0.358662,
		32.916630, 38.889549, 25.646370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757645, 38.861462, 25.870615>,  <33.394215, 38.443592, 25.395306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757645, 38.861462, 25.870615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.370869, 38.858387, 25.972576>,  <33.138805, 38.856541, 26.033752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.370869, 38.858387, 25.972576>,  <33.757645, 38.861462, 25.870615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370869, 38.858387, 25.972576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243973, -0.318849, 0.915867,
		0.074236, 0.947774, 0.310181,
		-0.966937, -0.007685, 0.254902,
		33.080788, 38.856083, 26.049047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820698, 39.283794, 26.458574>,  <33.757645, 38.861462, 25.870615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820698, 39.283794, 26.458574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.468578, 39.094730, 26.474869>,  <33.257305, 38.981293, 26.484646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.468578, 39.094730, 26.474869>,  <33.820698, 39.283794, 26.458574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468578, 39.094730, 26.474869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208795, -0.308895, 0.927895,
		-0.425998, 0.825333, 0.370610,
		-0.880301, -0.472663, 0.040736,
		33.204487, 38.952930, 26.487089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431461, 39.516041, 27.006586>,  <33.820698, 39.283794, 26.458574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431461, 39.516041, 27.006586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.228321, 39.179291, 26.933546>,  <33.106438, 38.977242, 26.889723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.228321, 39.179291, 26.933546>,  <33.431461, 39.516041, 27.006586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228321, 39.179291, 26.933546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133953, -0.286565, 0.948650,
		-0.850967, 0.457312, 0.258303,
		-0.507850, -0.841871, -0.182599,
		33.075966, 38.926731, 26.878767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846775, 39.547237, 27.444517>,  <33.431461, 39.516041, 27.006586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846775, 39.547237, 27.444517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.877274, 39.162476, 27.339500>,  <32.895573, 38.931618, 27.276489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.877274, 39.162476, 27.339500>,  <32.846775, 39.547237, 27.444517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877274, 39.162476, 27.339500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057238, -0.267099, 0.961968,
		-0.995445, -0.058318, -0.075423,
		0.076245, -0.961903, -0.262544,
		32.900146, 38.873905, 27.260736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438274, 39.199203, 27.846527>,  <32.846775, 39.547237, 27.444517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438274, 39.199203, 27.846527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.682045, 38.901932, 27.736046>,  <32.828308, 38.723568, 27.669756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.682045, 38.901932, 27.736046>,  <32.438274, 39.199203, 27.846527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682045, 38.901932, 27.736046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055557, -0.387544, 0.920175,
		-0.790896, -0.545431, -0.277467,
		0.609423, -0.743178, -0.276204,
		32.864872, 38.678978, 27.653185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233120, 38.556145, 28.238890>,  <32.438274, 39.199203, 27.846527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233120, 38.556145, 28.238890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.586674, 38.422863, 28.107609>,  <32.798805, 38.342896, 28.028839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.586674, 38.422863, 28.107609>,  <32.233120, 38.556145, 28.238890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586674, 38.422863, 28.107609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100740, -0.549637, 0.829307,
		-0.456717, -0.766079, -0.452252,
		0.883889, -0.333199, -0.328204,
		32.851841, 38.322903, 28.009148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238049, 37.791985, 28.325655>,  <32.233120, 38.556145, 28.238890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238049, 37.791985, 28.325655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.611404, 37.934887, 28.339186>,  <32.835419, 38.020630, 28.347303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.611404, 37.934887, 28.339186>,  <32.238049, 37.791985, 28.325655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611404, 37.934887, 28.339186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131472, -0.428142, 0.894097,
		0.333907, -0.830096, -0.446594,
		0.933392, 0.357261, 0.033825,
		32.891422, 38.042065, 28.349333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567078, 37.235100, 28.493284>,  <32.238049, 37.791985, 28.325655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567078, 37.235100, 28.493284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.793976, 37.550434, 28.588591>,  <32.930115, 37.739635, 28.645775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.793976, 37.550434, 28.588591>,  <32.567078, 37.235100, 28.493284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793976, 37.550434, 28.588591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263048, -0.447592, 0.854674,
		0.780412, -0.422131, -0.461262,
		0.567242, 0.788332, 0.238265,
		32.964149, 37.786934, 28.660070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199589, 36.889484, 28.724728>,  <32.567078, 37.235100, 28.493284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199589, 36.889484, 28.724728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.195629, 37.253906, 28.889593>,  <33.193253, 37.472561, 28.988512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.195629, 37.253906, 28.889593>,  <33.199589, 36.889484, 28.724728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195629, 37.253906, 28.889593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336961, -0.385036, 0.859188,
		0.941466, 0.147392, -0.303178,
		-0.009903, 0.911056, 0.412164,
		33.192657, 37.527222, 29.013243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864979, 36.878357, 29.253788>,  <33.199589, 36.889484, 28.724728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864979, 36.878357, 29.253788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.613075, 37.170151, 29.360563>,  <33.461933, 37.345226, 29.424627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.613075, 37.170151, 29.360563>,  <33.864979, 36.878357, 29.253788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613075, 37.170151, 29.360563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143607, -0.228383, 0.962922,
		0.763397, 0.644746, 0.039068,
		-0.629763, 0.729482, 0.266937,
		33.424145, 37.388996, 29.440645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604187, 36.924957, 29.305405>,  <33.864979, 36.878357, 29.253788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604187, 36.924957, 29.305405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.701946, 36.538326, 29.274418>,  <34.760601, 36.306347, 29.255825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.701946, 36.538326, 29.274418>,  <34.604187, 36.924957, 29.305405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701946, 36.538326, 29.274418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042132, 0.069231, -0.996711,
		0.968759, 0.246860, -0.023803,
		0.244400, -0.966575, -0.077469,
		34.775265, 36.248352, 29.251177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284294, 36.917030, 28.890722>,  <34.604187, 36.924957, 29.305405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284294, 36.917030, 28.890722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.083652, 36.574203, 28.843691>,  <34.963268, 36.368507, 28.815472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.083652, 36.574203, 28.843691>,  <35.284294, 36.917030, 28.890722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083652, 36.574203, 28.843691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023619, 0.122294, -0.992213,
		0.864775, -0.500474, -0.041100,
		-0.501603, -0.857071, -0.117578,
		34.933170, 36.317081, 28.808418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700256, 36.545998, 28.377562>,  <35.284294, 36.917030, 28.890722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700256, 36.545998, 28.377562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.329376, 36.396927, 28.392622>,  <35.106850, 36.307484, 28.401657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.329376, 36.396927, 28.392622>,  <35.700256, 36.545998, 28.377562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329376, 36.396927, 28.392622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088549, 0.120415, -0.988767,
		0.363961, -0.920114, -0.144648,
		-0.927195, -0.372681, 0.037649,
		35.051216, 36.285122, 28.403917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617432, 36.151089, 27.767488>,  <35.700256, 36.545998, 28.377562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617432, 36.151089, 27.767488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.238895, 36.209835, 27.882641>,  <35.011776, 36.245083, 27.951733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.238895, 36.209835, 27.882641>,  <35.617432, 36.151089, 27.767488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238895, 36.209835, 27.882641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314739, -0.216560, -0.924144,
		-0.073378, -0.965160, 0.251162,
		-0.946338, 0.146862, 0.287882,
		34.954994, 36.253895, 27.969006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182880, 35.501743, 27.598816>,  <35.617432, 36.151089, 27.767488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182880, 35.501743, 27.598816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.904926, 35.786827, 27.637146>,  <34.738152, 35.957878, 27.660145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.904926, 35.786827, 27.637146>,  <35.182880, 35.501743, 27.598816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904926, 35.786827, 27.637146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292101, -0.157977, -0.943250,
		-0.657122, -0.683443, 0.317958,
		-0.694887, 0.712706, 0.095825,
		34.696461, 36.000637, 27.665894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587730, 35.273281, 27.186666>,  <35.182880, 35.501743, 27.598816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587730, 35.273281, 27.186666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.543903, 35.665775, 27.250126>,  <34.517609, 35.901272, 27.288202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.543903, 35.665775, 27.250126>,  <34.587730, 35.273281, 27.186666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543903, 35.665775, 27.250126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111101, 0.146519, -0.982949,
		-0.987751, -0.125325, 0.092963,
		-0.109568, 0.981237, 0.158648,
		34.511032, 35.960148, 27.297720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253845, 35.442142, 26.663000>,  <34.587730, 35.273281, 27.186666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253845, 35.442142, 26.663000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.290150, 35.820354, 26.788048>,  <34.311932, 36.047283, 26.863077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.290150, 35.820354, 26.788048>,  <34.253845, 35.442142, 26.663000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290150, 35.820354, 26.788048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380334, 0.323034, -0.866600,
		-0.920384, -0.040243, 0.388938,
		0.090766, 0.945532, 0.312621,
		34.317379, 36.104015, 26.881834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653950, 35.747772, 26.462763>,  <34.253845, 35.442142, 26.663000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653950, 35.747772, 26.462763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.931610, 36.032887, 26.502956>,  <34.098206, 36.203953, 26.527073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.931610, 36.032887, 26.502956>,  <33.653950, 35.747772, 26.462763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931610, 36.032887, 26.502956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343392, 0.450584, -0.824048,
		-0.632643, 0.537509, 0.557537,
		0.694151, 0.712782, 0.100483,
		34.139854, 36.246719, 26.533102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309113, 36.427853, 26.395809>,  <33.653950, 35.747772, 26.462763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309113, 36.427853, 26.395809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.695770, 36.450676, 26.295937>,  <33.927765, 36.464371, 26.236013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.695770, 36.450676, 26.295937>,  <33.309113, 36.427853, 26.395809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695770, 36.450676, 26.295937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252146, 0.383092, -0.888630,
		0.044945, 0.921946, 0.384701,
		0.966645, 0.057062, -0.249683,
		33.985764, 36.467796, 26.221031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283260, 36.970119, 26.002211>,  <33.309113, 36.427853, 26.395809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283260, 36.970119, 26.002211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.640434, 36.818745, 25.904680>,  <33.854740, 36.727921, 25.846161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.640434, 36.818745, 25.904680>,  <33.283260, 36.970119, 26.002211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640434, 36.818745, 25.904680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146159, 0.268574, -0.952106,
		0.425799, 0.885806, 0.184507,
		0.892935, -0.378438, -0.243827,
		33.908314, 36.705212, 25.831532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649258, 37.504711, 25.659029>,  <33.283260, 36.970119, 26.002211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649258, 37.504711, 25.659029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.822792, 37.164738, 25.539433>,  <33.926910, 36.960754, 25.467674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.822792, 37.164738, 25.539433>,  <33.649258, 37.504711, 25.659029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822792, 37.164738, 25.539433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016660, 0.324222, -0.945834,
		0.900839, 0.415315, 0.126498,
		0.433833, -0.849937, -0.298992,
		33.952942, 36.909756, 25.449736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131271, 37.735943, 25.357224>,  <33.649258, 37.504711, 25.659029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131271, 37.735943, 25.357224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.082912, 37.377914, 25.185535>,  <34.053898, 37.163097, 25.082523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.082912, 37.377914, 25.185535>,  <34.131271, 37.735943, 25.357224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082912, 37.377914, 25.185535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133631, 0.413780, -0.900516,
		0.983629, -0.166228, 0.069584,
		-0.120899, -0.895072, -0.429219,
		34.046642, 37.109394, 25.056770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653732, 37.745102, 24.788647>,  <34.131271, 37.735943, 25.357224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653732, 37.745102, 24.788647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.434792, 37.430038, 24.675508>,  <34.303425, 37.241001, 24.607626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.434792, 37.430038, 24.675508>,  <34.653732, 37.745102, 24.788647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434792, 37.430038, 24.675508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041868, 0.311776, -0.949233,
		0.835852, -0.531410, -0.137674,
		-0.547355, -0.787654, -0.282847,
		34.270584, 37.193741, 24.590654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030685, 37.479118, 24.183558>,  <34.653732, 37.745102, 24.788647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030685, 37.479118, 24.183558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.655437, 37.340710, 24.178005>,  <34.430286, 37.257664, 24.174675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.655437, 37.340710, 24.178005>,  <35.030685, 37.479118, 24.183558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655437, 37.340710, 24.178005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030208, 0.121696, -0.992108,
		0.344981, -0.930300, -0.124618,
		-0.938123, -0.346023, -0.013880,
		34.374001, 37.236904, 24.173841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558544, 36.986366, 24.124475>,  <35.030685, 37.479118, 24.183558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558544, 36.986366, 24.124475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.951702, 37.044567, 24.079315>,  <36.187595, 37.079487, 24.052219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.951702, 37.044567, 24.079315>,  <35.558544, 36.986366, 24.124475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951702, 37.044567, 24.079315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157711, -0.348421, 0.923975,
		0.095108, -0.925976, -0.365409,
		0.982895, 0.145506, -0.112899,
		36.246571, 37.088219, 24.045444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789722, 36.526035, 24.550444>,  <35.558544, 36.986366, 24.124475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789722, 36.526035, 24.550444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.135422, 36.716999, 24.487015>,  <36.342842, 36.831577, 24.448957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.135422, 36.716999, 24.487015>,  <35.789722, 36.526035, 24.550444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135422, 36.716999, 24.487015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315128, -0.268084, 0.910398,
		0.392126, -0.836783, -0.382139,
		0.864252, 0.477414, -0.158571,
		36.394699, 36.860222, 24.439444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456558, 36.014843, 24.710382>,  <35.789722, 36.526035, 24.550444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456558, 36.014843, 24.710382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.638538, 36.370895, 24.699892>,  <36.747726, 36.584526, 24.693598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.638538, 36.370895, 24.699892>,  <36.456558, 36.014843, 24.710382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638538, 36.370895, 24.699892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343672, -0.148332, 0.927301,
		0.821527, -0.430893, -0.373397,
		0.454954, 0.890129, -0.026227,
		36.775024, 36.637936, 24.692024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144970, 35.928185, 24.872463>,  <36.456558, 36.014843, 24.710382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144970, 35.928185, 24.872463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.068047, 36.306637, 24.976652>,  <37.021893, 36.533710, 25.039165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.068047, 36.306637, 24.976652>,  <37.144970, 35.928185, 24.872463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068047, 36.306637, 24.976652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391037, -0.169563, 0.904621,
		0.900059, 0.275823, -0.337364,
		-0.192311, 0.946134, 0.260474,
		37.010353, 36.590477, 25.054794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725098, 36.189167, 25.265139>,  <37.144970, 35.928185, 24.872463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725098, 36.189167, 25.265139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.440392, 36.449677, 25.370384>,  <37.269569, 36.605984, 25.433533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.440392, 36.449677, 25.370384>,  <37.725098, 36.189167, 25.265139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440392, 36.449677, 25.370384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364819, 0.022659, 0.930803,
		0.600248, 0.758502, -0.253726,
		-0.711765, 0.651276, 0.263115,
		37.226864, 36.645058, 25.449318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079414, 36.573471, 25.698355>,  <37.725098, 36.189167, 25.265139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079414, 36.573471, 25.698355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.702675, 36.663399, 25.798256>,  <37.476631, 36.717354, 25.858196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.702675, 36.663399, 25.798256>,  <38.079414, 36.573471, 25.698355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702675, 36.663399, 25.798256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254775, -0.006865, 0.966976,
		0.219106, 0.974377, -0.050811,
		-0.941850, 0.224815, 0.249751,
		37.420120, 36.730843, 25.873180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138832, 37.171143, 26.142477>,  <38.079414, 36.573471, 25.698355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138832, 37.171143, 26.142477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.791042, 36.988186, 26.217094>,  <37.582367, 36.878410, 26.261866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.791042, 36.988186, 26.217094>,  <38.138832, 37.171143, 26.142477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791042, 36.988186, 26.217094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193000, 0.033064, 0.980642,
		-0.454708, 0.888649, 0.059529,
		-0.869478, -0.457395, 0.186544,
		37.530197, 36.850967, 26.273058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785889, 37.533733, 26.649443>,  <38.138832, 37.171143, 26.142477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785889, 37.533733, 26.649443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.629761, 37.167263, 26.685833>,  <37.536083, 36.947380, 26.707666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.629761, 37.167263, 26.685833>,  <37.785889, 37.533733, 26.649443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629761, 37.167263, 26.685833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082680, 0.063535, 0.994549,
		-0.916958, 0.395718, 0.050950,
		-0.390324, -0.916172, 0.090976,
		37.512665, 36.892410, 26.713125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285870, 37.597240, 27.171425>,  <37.785889, 37.533733, 26.649443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285870, 37.597240, 27.171425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.382076, 37.210220, 27.140463>,  <37.439800, 36.978008, 27.121885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.382076, 37.210220, 27.140463>,  <37.285870, 37.597240, 27.171425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382076, 37.210220, 27.140463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250999, -0.015038, 0.967871,
		-0.937631, -0.252216, 0.239238,
		0.240515, -0.967554, -0.077406,
		37.454231, 36.919952, 27.117241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955429, 37.227757, 27.728359>,  <37.285870, 37.597240, 27.171425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955429, 37.227757, 27.728359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269073, 36.999683, 27.630333>,  <37.457260, 36.862839, 27.571518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269073, 36.999683, 27.630333>,  <36.955429, 37.227757, 27.728359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269073, 36.999683, 27.630333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257321, -0.060643, 0.964421,
		-0.564755, -0.819278, 0.099168,
		0.784115, -0.570180, -0.245066,
		37.504307, 36.828629, 27.556812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895874, 36.604092, 28.142677>,  <36.955429, 37.227757, 27.728359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895874, 36.604092, 28.142677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.273266, 36.627243, 28.012146>,  <37.499702, 36.641136, 27.933828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.273266, 36.627243, 28.012146>,  <36.895874, 36.604092, 28.142677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273266, 36.627243, 28.012146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319101, 0.107309, 0.941626,
		0.089513, -0.992540, 0.082777,
		0.943484, 0.057873, -0.326326,
		37.556313, 36.644608, 27.914248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266975, 36.261726, 28.688084>,  <36.895874, 36.604092, 28.142677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266975, 36.261726, 28.688084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.564259, 36.425030, 28.476057>,  <37.742630, 36.523010, 28.348841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.564259, 36.425030, 28.476057>,  <37.266975, 36.261726, 28.688084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564259, 36.425030, 28.476057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516874, 0.152708, 0.842331,
		0.424832, -0.900004, -0.097523,
		0.743209, 0.408256, -0.530065,
		37.787220, 36.547508, 28.317038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929871, 35.980125, 29.017960>,  <37.266975, 36.261726, 28.688084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929871, 35.980125, 29.017960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.043400, 36.307289, 28.817772>,  <38.111519, 36.503586, 28.697660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.043400, 36.307289, 28.817772>,  <37.929871, 35.980125, 29.017960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043400, 36.307289, 28.817772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713004, 0.168966, 0.680496,
		0.641147, -0.549976, -0.535217,
		0.283823, 0.817910, -0.500468,
		38.128548, 36.552662, 28.667631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582420, 36.015221, 29.058201>,  <37.929871, 35.980125, 29.017960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582420, 36.015221, 29.058201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.507145, 36.397350, 28.967041>,  <38.461979, 36.626629, 28.912344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.507145, 36.397350, 28.967041>,  <38.582420, 36.015221, 29.058201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507145, 36.397350, 28.967041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552332, 0.294819, 0.779751,
		0.812105, 0.020863, -0.583138,
		-0.188188, 0.955325, -0.227901,
		38.450687, 36.683949, 28.898670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.114414, 39.162167, 23.932827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.821751, 39.416149, 24.032028>,  <39.646152, 39.568539, 24.091549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.821751, 39.416149, 24.032028>,  <40.114414, 39.162167, 23.932827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821751, 39.416149, 24.032028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362171, -0.053869, -0.930554,
		-0.577504, -0.770666, 0.269378,
		-0.731657, 0.634959, 0.248003,
		39.602253, 39.606636, 24.106428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487957, 38.837311, 23.748375>,  <40.114414, 39.162167, 23.932827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487957, 38.837311, 23.748375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.405624, 39.228676, 23.741056>,  <39.356224, 39.463497, 23.736666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.405624, 39.228676, 23.741056>,  <39.487957, 38.837311, 23.748375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405624, 39.228676, 23.741056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428705, -0.106967, -0.897090,
		-0.879684, -0.176809, 0.441469,
		-0.205836, 0.978415, -0.018298,
		39.343872, 39.522202, 23.735567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713718, 38.961452, 23.530317>,  <39.487957, 38.837311, 23.748375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713718, 38.961452, 23.530317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.933258, 39.284950, 23.445753>,  <39.064980, 39.479050, 23.395014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.933258, 39.284950, 23.445753>,  <38.713718, 38.961452, 23.530317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933258, 39.284950, 23.445753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376241, 0.013158, -0.926428,
		-0.746465, 0.588008, 0.311506,
		0.548846, 0.808748, -0.211410,
		39.097912, 39.527576, 23.382330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191280, 39.444763, 23.160376>,  <38.713718, 38.961452, 23.530317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191280, 39.444763, 23.160376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.556164, 39.593506, 23.091553>,  <38.775093, 39.682751, 23.050259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.556164, 39.593506, 23.091553>,  <38.191280, 39.444763, 23.160376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556164, 39.593506, 23.091553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285204, 0.274766, -0.918239,
		-0.294176, 0.886694, 0.356698,
		0.912206, 0.371856, -0.172059,
		38.829826, 39.705063, 23.039934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078960, 40.040863, 22.833849>,  <38.191280, 39.444763, 23.160376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078960, 40.040863, 22.833849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.459728, 39.970058, 22.733839>,  <38.688190, 39.927574, 22.673832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.459728, 39.970058, 22.733839>,  <38.078960, 40.040863, 22.833849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459728, 39.970058, 22.733839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208249, 0.224674, -0.951921,
		0.224674, 0.958222, 0.177010,
		0.951921, -0.177010, -0.250027,
		38.745304, 39.916954, 22.658831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230675, 40.595188, 22.439184>,  <38.078960, 40.040863, 22.833849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230675, 40.595188, 22.439184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.523823, 40.333572, 22.364202>,  <38.699711, 40.176605, 22.319214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.523823, 40.333572, 22.364202>,  <38.230675, 40.595188, 22.439184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523823, 40.333572, 22.364202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058323, 0.334895, -0.940449,
		0.677865, 0.678293, 0.283580,
		0.732870, -0.654036, -0.187454,
		38.743683, 40.137360, 22.307966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776859, 40.960491, 22.153889>,  <38.230675, 40.595188, 22.439184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776859, 40.960491, 22.153889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.793655, 40.584911, 22.017298>,  <38.803734, 40.359562, 21.935343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.793655, 40.584911, 22.017298>,  <38.776859, 40.960491, 22.153889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793655, 40.584911, 22.017298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149045, 0.332067, -0.931406,
		0.987938, 0.090004, -0.126003,
		0.041989, -0.938952, -0.341477,
		38.806252, 40.303226, 21.914854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210251, 40.961361, 21.547777>,  <38.776859, 40.960491, 22.153889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210251, 40.961361, 21.547777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.018871, 40.612453, 21.507305>,  <38.904045, 40.403111, 21.483023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.018871, 40.612453, 21.507305>,  <39.210251, 40.961361, 21.547777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018871, 40.612453, 21.507305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014151, 0.107550, -0.994099,
		0.878001, -0.477057, -0.039114,
		-0.478449, -0.872267, -0.101180,
		38.875336, 40.350773, 21.476952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506641, 40.521641, 20.982927>,  <39.210251, 40.961361, 21.547777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506641, 40.521641, 20.982927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.129757, 40.391808, 21.016117>,  <38.903625, 40.313908, 21.036030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.129757, 40.391808, 21.016117>,  <39.506641, 40.521641, 20.982927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129757, 40.391808, 21.016117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090345, 0.007681, -0.995881,
		0.322609, -0.945826, -0.036562,
		-0.942211, -0.324584, 0.082973,
		38.847095, 40.294434, 21.041008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416237, 40.021877, 20.386923>,  <39.506641, 40.521641, 20.982927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416237, 40.021877, 20.386923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.043140, 40.035069, 20.530535>,  <38.819283, 40.042984, 20.616703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.043140, 40.035069, 20.530535>,  <39.416237, 40.021877, 20.386923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043140, 40.035069, 20.530535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348798, -0.334617, -0.875426,
		0.091271, -0.941777, 0.323614,
		-0.932743, 0.032975, 0.359031,
		38.763317, 40.044960, 20.638245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149300, 39.439274, 20.102175>,  <39.416237, 40.021877, 20.386923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149300, 39.439274, 20.102175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.846039, 39.687611, 20.181934>,  <38.664082, 39.836613, 20.229790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.846039, 39.687611, 20.181934>,  <39.149300, 39.439274, 20.102175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846039, 39.687611, 20.181934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237289, 0.022146, -0.971187,
		-0.607366, -0.783626, 0.130528,
		-0.758156, 0.620838, 0.199397,
		38.618591, 39.873863, 20.241753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578270, 39.234718, 19.795364>,  <39.149300, 39.439274, 20.102175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578270, 39.234718, 19.795364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.496155, 39.623413, 19.841970>,  <38.446884, 39.856632, 19.869934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.496155, 39.623413, 19.841970>,  <38.578270, 39.234718, 19.795364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496155, 39.623413, 19.841970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399031, 0.025600, -0.916580,
		-0.893661, -0.234659, 0.382499,
		-0.205292, 0.971741, 0.116514,
		38.434566, 39.914936, 19.876925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836361, 39.453262, 19.675688>,  <38.578270, 39.234718, 19.795364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836361, 39.453262, 19.675688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.134182, 39.701233, 19.576635>,  <38.312874, 39.850018, 19.517204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.134182, 39.701233, 19.576635>,  <37.836361, 39.453262, 19.675688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134182, 39.701233, 19.576635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318580, 0.003993, -0.947888,
		-0.586636, 0.784646, 0.200471,
		0.744557, 0.619931, -0.247630,
		38.357548, 39.887211, 19.502346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508110, 40.006546, 19.334093>,  <37.836361, 39.453262, 19.675688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508110, 40.006546, 19.334093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.886467, 39.922569, 19.235125>,  <38.113480, 39.872185, 19.175743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.886467, 39.922569, 19.235125>,  <37.508110, 40.006546, 19.334093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886467, 39.922569, 19.235125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278047, -0.131314, -0.951550,
		0.167276, 0.968857, -0.182581,
		0.945890, -0.209937, -0.247422,
		38.170235, 39.859589, 19.160898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118935, 39.547817, 18.791937>,  <37.508110, 40.006546, 19.334093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118935, 39.547817, 18.791937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.975792, 39.197971, 18.661104>,  <36.889904, 38.988064, 18.582603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.975792, 39.197971, 18.661104>,  <37.118935, 39.547817, 18.791937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975792, 39.197971, 18.661104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020136, -0.357426, 0.933724,
		-0.933558, 0.327556, 0.145520,
		-0.357860, -0.874616, -0.327083,
		36.868435, 38.935585, 18.562979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535057, 39.450405, 19.225964>,  <37.118935, 39.547817, 18.791937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535057, 39.450405, 19.225964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.646469, 39.094490, 19.081358>,  <36.713318, 38.880939, 18.994595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.646469, 39.094490, 19.081358>,  <36.535057, 39.450405, 19.225964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646469, 39.094490, 19.081358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175384, -0.417201, 0.891731,
		-0.944278, -0.184973, -0.272259,
		0.278533, -0.889791, -0.361513,
		36.730030, 38.827553, 18.972904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083775, 38.965572, 19.534563>,  <36.535057, 39.450405, 19.225964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083775, 38.965572, 19.534563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.387371, 38.739773, 19.404781>,  <36.569530, 38.604294, 19.326912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.387371, 38.739773, 19.404781>,  <36.083775, 38.965572, 19.534563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387371, 38.739773, 19.404781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023444, -0.521685, 0.852816,
		-0.650680, -0.639672, -0.409188,
		0.758990, -0.564504, -0.324454,
		36.615067, 38.570423, 19.307446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928524, 38.223930, 19.668056>,  <36.083775, 38.965572, 19.534563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928524, 38.223930, 19.668056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.328281, 38.220932, 19.654398>,  <36.568134, 38.219135, 19.646204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.328281, 38.220932, 19.654398>,  <35.928524, 38.223930, 19.668056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328281, 38.220932, 19.654398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024864, -0.534214, 0.844983,
		-0.024571, -0.845316, -0.533702,
		0.999389, -0.007492, -0.034145,
		36.628098, 38.218685, 19.644154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102337, 37.608944, 19.750866>,  <35.928524, 38.223930, 19.668056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102337, 37.608944, 19.750866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.408562, 37.837780, 19.868601>,  <36.592297, 37.975082, 19.939241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.408562, 37.837780, 19.868601>,  <36.102337, 37.608944, 19.750866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408562, 37.837780, 19.868601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091170, -0.549346, 0.830606,
		0.636871, -0.609045, -0.472715,
		0.765561, 0.572086, 0.294336,
		36.638229, 38.009407, 19.956902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381252, 37.206875, 20.140034>,  <36.102337, 37.608944, 19.750866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381252, 37.206875, 20.140034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.596565, 37.531124, 20.232250>,  <36.725754, 37.725674, 20.287580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.596565, 37.531124, 20.232250>,  <36.381252, 37.206875, 20.140034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596565, 37.531124, 20.232250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004101, -0.271029, 0.962562,
		0.842757, -0.519072, -0.142565,
		0.538279, 0.810622, 0.230541,
		36.758049, 37.774311, 20.301413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121540, 37.005928, 20.366947>,  <36.381252, 37.206875, 20.140034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121540, 37.005928, 20.366947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.050991, 37.368176, 20.521217>,  <37.008663, 37.585526, 20.613779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.050991, 37.368176, 20.521217>,  <37.121540, 37.005928, 20.366947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050991, 37.368176, 20.521217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103962, -0.372487, 0.922196,
		0.978818, 0.202747, -0.028453,
		-0.176374, 0.905620, 0.385675,
		36.998077, 37.639862, 20.636919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561668, 37.124481, 20.946520>,  <37.121540, 37.005928, 20.366947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561668, 37.124481, 20.946520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.276814, 37.392067, 21.031693>,  <37.105900, 37.552620, 21.082796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.276814, 37.392067, 21.031693>,  <37.561668, 37.124481, 20.946520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276814, 37.392067, 21.031693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050497, -0.253707, 0.965962,
		0.700220, 0.698652, 0.146894,
		-0.712139, 0.668968, 0.212930,
		37.063171, 37.592758, 21.095572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721001, 37.393387, 21.608105>,  <37.561668, 37.124481, 20.946520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721001, 37.393387, 21.608105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.343792, 37.524204, 21.583591>,  <37.117466, 37.602695, 21.568884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.343792, 37.524204, 21.583591>,  <37.721001, 37.393387, 21.608105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343792, 37.524204, 21.583591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089904, -0.073106, 0.993264,
		0.320363, 0.942176, 0.098343,
		-0.943019, 0.327046, -0.061285,
		37.060886, 37.622318, 21.565207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666874, 37.815010, 22.110682>,  <37.721001, 37.393387, 21.608105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666874, 37.815010, 22.110682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.284519, 37.717121, 22.045696>,  <37.055107, 37.658390, 22.006704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.284519, 37.717121, 22.045696>,  <37.666874, 37.815010, 22.110682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284519, 37.717121, 22.045696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147016, -0.080250, 0.985873,
		-0.254301, 0.966267, 0.040732,
		-0.955886, -0.244720, -0.162464,
		36.997753, 37.643703, 21.996958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332695, 38.158871, 22.638029>,  <37.666874, 37.815010, 22.110682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332695, 38.158871, 22.638029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.050907, 37.895081, 22.533104>,  <36.881832, 37.736805, 22.470148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.050907, 37.895081, 22.533104>,  <37.332695, 38.158871, 22.638029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050907, 37.895081, 22.533104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366383, 0.021376, 0.930219,
		-0.607852, 0.751420, -0.256680,
		-0.704471, -0.659478, -0.262314,
		36.839565, 37.697239, 22.454411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610748, 38.332401, 22.950994>,  <37.332695, 38.158871, 22.638029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610748, 38.332401, 22.950994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.592419, 37.938988, 22.881071>,  <36.581421, 37.702938, 22.839117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.592419, 37.938988, 22.881071>,  <36.610748, 38.332401, 22.950994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592419, 37.938988, 22.881071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374634, -0.145301, 0.915717,
		-0.926040, 0.107451, -0.361807,
		-0.045824, -0.983536, -0.174810,
		36.578671, 37.643929, 22.828629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119427, 38.136848, 23.357344>,  <36.610748, 38.332401, 22.950994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119427, 38.136848, 23.357344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.298935, 37.788391, 23.277630>,  <36.406639, 37.579319, 23.229801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.298935, 37.788391, 23.277630>,  <36.119427, 38.136848, 23.357344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298935, 37.788391, 23.277630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139599, -0.288604, 0.947217,
		-0.882674, -0.397266, -0.251129,
		0.448774, -0.871141, -0.199285,
		36.433567, 37.527050, 23.217844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589378, 37.662823, 23.537035>,  <36.119427, 38.136848, 23.357344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589378, 37.662823, 23.537035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.952641, 37.495487, 23.543268>,  <36.170597, 37.395084, 23.547009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.952641, 37.495487, 23.543268>,  <35.589378, 37.662823, 23.537035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952641, 37.495487, 23.543268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071865, -0.119116, 0.990276,
		-0.412413, -0.900447, -0.138240,
		0.908158, -0.418337, 0.015585,
		36.225086, 37.369987, 23.547943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985008, 37.064220, 23.596703>,  <35.589378, 37.662823, 23.537035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985008, 37.064220, 23.596703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.615540, 37.187649, 23.687584>,  <34.393860, 37.261707, 23.742113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.615540, 37.187649, 23.687584>,  <34.985008, 37.064220, 23.596703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615540, 37.187649, 23.687584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155069, 0.241203, -0.958005,
		-0.350415, -0.920111, -0.174942,
		-0.923668, 0.308571, 0.227202,
		34.338440, 37.280220, 23.755745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625626, 36.739819, 23.005508>,  <34.985008, 37.064220, 23.596703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625626, 36.739819, 23.005508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.411255, 37.036533, 23.166771>,  <34.282635, 37.214561, 23.263529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.411255, 37.036533, 23.166771>,  <34.625626, 36.739819, 23.005508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411255, 37.036533, 23.166771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103301, 0.416322, -0.903330,
		-0.837924, -0.525761, -0.146489,
		-0.535923, 0.741789, 0.403158,
		34.250477, 37.259071, 23.287718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034271, 36.879955, 22.525003>,  <34.625626, 36.739819, 23.005508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034271, 36.879955, 22.525003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.059063, 37.216885, 22.739161>,  <34.073936, 37.419044, 22.867655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.059063, 37.216885, 22.739161>,  <34.034271, 36.879955, 22.525003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059063, 37.216885, 22.739161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064867, 0.538689, -0.840004,
		-0.995967, 0.017333, 0.088027,
		0.061979, 0.842326, 0.535392,
		34.077656, 37.469582, 22.899778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645443, 37.271061, 22.169405>,  <34.034271, 36.879955, 22.525003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645443, 37.271061, 22.169405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.829708, 37.557175, 22.379608>,  <33.940269, 37.728844, 22.505730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.829708, 37.557175, 22.379608>,  <33.645443, 37.271061, 22.169405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829708, 37.557175, 22.379608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085285, 0.625003, -0.775950,
		-0.883467, 0.312635, 0.348921,
		0.460666, 0.715284, 0.525506,
		33.967907, 37.771759, 22.537260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229618, 37.854485, 22.071405>,  <33.645443, 37.271061, 22.169405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229618, 37.854485, 22.071405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590237, 37.988117, 22.181387>,  <33.806610, 38.068298, 22.247375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590237, 37.988117, 22.181387>,  <33.229618, 37.854485, 22.071405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590237, 37.988117, 22.181387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106662, 0.787462, -0.607064,
		-0.419324, 0.517971, 0.745569,
		0.901549, 0.334080, 0.274954,
		33.860703, 38.088341, 22.263874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149586, 38.596733, 22.012493>,  <33.229618, 37.854485, 22.071405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149586, 38.596733, 22.012493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.541176, 38.516182, 21.999565>,  <33.776131, 38.467850, 21.991808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.541176, 38.516182, 21.999565>,  <33.149586, 38.596733, 22.012493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541176, 38.516182, 21.999565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081178, 0.530087, -0.844049,
		0.187106, 0.823683, 0.535292,
		0.978980, -0.201380, -0.032318,
		33.834869, 38.455769, 21.989870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425877, 39.258244, 21.662457>,  <33.149586, 38.596733, 22.012493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425877, 39.258244, 21.662457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.739258, 39.009865, 21.652475>,  <33.927288, 38.860836, 21.646486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.739258, 39.009865, 21.652475>,  <33.425877, 39.258244, 21.662457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739258, 39.009865, 21.652475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303516, 0.417370, -0.856551,
		0.542290, 0.663494, 0.515458,
		0.783454, -0.620949, -0.024955,
		33.974293, 38.823582, 21.644989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897320, 39.766857, 22.007679>,  <33.425877, 39.258244, 21.662457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897320, 39.766857, 22.007679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.653122, 40.077251, 22.071095>,  <33.506603, 40.263489, 22.109144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.653122, 40.077251, 22.071095>,  <33.897320, 39.766857, 22.007679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653122, 40.077251, 22.071095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304900, -0.415008, 0.857207,
		0.730977, 0.474986, 0.489961,
		-0.610499, 0.775988, 0.158538,
		33.469971, 40.310047, 22.118656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949310, 39.807426, 22.642626>,  <33.897320, 39.766857, 22.007679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949310, 39.807426, 22.642626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.618244, 40.027996, 22.600857>,  <33.419605, 40.160336, 22.575796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.618244, 40.027996, 22.600857>,  <33.949310, 39.807426, 22.642626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618244, 40.027996, 22.600857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320281, -0.311302, 0.894713,
		0.460857, 0.773967, 0.434264,
		-0.827666, 0.551422, -0.104422,
		33.369946, 40.193424, 22.569530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829880, 40.436302, 23.140354>,  <33.949310, 39.807426, 22.642626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829880, 40.436302, 23.140354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.474766, 40.307858, 23.008465>,  <33.261696, 40.230789, 22.929331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.474766, 40.307858, 23.008465>,  <33.829880, 40.436302, 23.140354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474766, 40.307858, 23.008465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331727, -0.050174, 0.942040,
		-0.319043, 0.945711, -0.061977,
		-0.887789, -0.321111, -0.329726,
		33.208427, 40.211525, 22.909548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387424, 40.931499, 23.571787>,  <33.829880, 40.436302, 23.140354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387424, 40.931499, 23.571787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.172169, 40.636715, 23.408180>,  <33.043015, 40.459843, 23.310017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.172169, 40.636715, 23.408180>,  <33.387424, 40.931499, 23.571787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172169, 40.636715, 23.408180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473250, -0.137368, 0.870152,
		-0.697454, 0.661830, -0.274844,
		-0.538138, -0.736961, -0.409019,
		33.010727, 40.415627, 23.285475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792534, 40.958008, 23.884932>,  <33.387424, 40.931499, 23.571787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792534, 40.958008, 23.884932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.767918, 40.597080, 23.714272>,  <32.753147, 40.380524, 23.611876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.767918, 40.597080, 23.714272>,  <32.792534, 40.958008, 23.884932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767918, 40.597080, 23.714272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445032, -0.357812, 0.820925,
		-0.893398, 0.240390, -0.379544,
		-0.061537, -0.902321, -0.426649,
		32.749458, 40.326385, 23.586277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165855, 40.715889, 24.169924>,  <32.792534, 40.958008, 23.884932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165855, 40.715889, 24.169924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.387272, 40.402573, 24.056761>,  <32.520123, 40.214581, 23.988863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.387272, 40.402573, 24.056761>,  <32.165855, 40.715889, 24.169924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387272, 40.402573, 24.056761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250986, -0.480807, 0.840137,
		-0.794100, -0.394047, -0.462744,
		0.553545, -0.783295, -0.282909,
		32.553337, 40.167583, 23.971888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743216, 40.091557, 24.356001>,  <32.165855, 40.715889, 24.169924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743216, 40.091557, 24.356001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.119640, 39.960957, 24.320677>,  <32.345497, 39.882595, 24.299482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.119640, 39.960957, 24.320677>,  <31.743216, 40.091557, 24.356001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119640, 39.960957, 24.320677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170314, -0.683007, 0.710278,
		-0.292224, -0.653375, -0.698360,
		0.941062, -0.326501, -0.088312,
		32.401958, 39.863007, 24.294184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.632580, 42.969673, 20.163006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.896614, 42.669231, 20.167551>,  <38.055035, 42.488968, 20.170279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.896614, 42.669231, 20.167551>,  <37.632580, 42.969673, 20.163006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896614, 42.669231, 20.167551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033654, -0.014456, 0.999329,
		-0.750435, -0.660027, -0.034820,
		0.660087, -0.751103, 0.011364,
		38.094639, 42.443901, 20.170959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436066, 42.571838, 20.601467>,  <37.632580, 42.969673, 20.163006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436066, 42.571838, 20.601467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.811893, 42.434952, 20.597456>,  <38.037392, 42.352821, 20.595049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.811893, 42.434952, 20.597456>,  <37.436066, 42.571838, 20.601467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811893, 42.434952, 20.597456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026082, -0.100750, 0.994570,
		-0.341367, -0.934205, -0.103587,
		0.939568, -0.342215, -0.010027,
		38.093765, 42.332287, 20.594448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435513, 41.915867, 20.777975>,  <37.436066, 42.571838, 20.601467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435513, 41.915867, 20.777975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.804974, 42.023331, 20.887285>,  <38.026649, 42.087811, 20.952871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.804974, 42.023331, 20.887285>,  <37.435513, 41.915867, 20.777975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804974, 42.023331, 20.887285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269859, -0.050320, 0.961584,
		0.272093, -0.961919, 0.026023,
		0.923657, 0.268663, 0.273275,
		38.082069, 42.103928, 20.969267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664738, 41.580570, 21.419916>,  <37.435513, 41.915867, 20.777975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664738, 41.580570, 21.419916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.865574, 41.925396, 21.392370>,  <37.986076, 42.132294, 21.375843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.865574, 41.925396, 21.392370>,  <37.664738, 41.580570, 21.419916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865574, 41.925396, 21.392370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158017, 0.169739, 0.972738,
		0.850255, -0.477522, 0.221446,
		0.502092, 0.862068, -0.068865,
		38.016201, 42.184017, 21.371710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954971, 41.470856, 22.037420>,  <37.664738, 41.580570, 21.419916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954971, 41.470856, 22.037420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.046883, 41.845070, 21.930107>,  <38.102028, 42.069599, 21.865719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.046883, 41.845070, 21.930107>,  <37.954971, 41.470856, 22.037420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046883, 41.845070, 21.930107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042693, 0.285083, 0.957552,
		0.972306, -0.208571, 0.105446,
		0.229779, 0.935535, -0.268283,
		38.115818, 42.125729, 21.849623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326942, 41.692059, 22.632620>,  <37.954971, 41.470856, 22.037420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326942, 41.692059, 22.632620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.237972, 42.020668, 22.422621>,  <38.184589, 42.217834, 22.296621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.237972, 42.020668, 22.422621>,  <38.326942, 41.692059, 22.632620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237972, 42.020668, 22.422621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294122, 0.456856, 0.839509,
		0.929526, 0.341142, 0.140012,
		-0.222427, 0.821526, -0.524997,
		38.171246, 42.267124, 22.265121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848331, 42.276703, 22.742397>,  <38.326942, 41.692059, 22.632620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848331, 42.276703, 22.742397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.485989, 42.416115, 22.646105>,  <38.268585, 42.499763, 22.588329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.485989, 42.416115, 22.646105>,  <38.848331, 42.276703, 22.742397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485989, 42.416115, 22.646105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151602, 0.263910, 0.952559,
		0.395530, 0.899375, -0.186226,
		-0.905855, 0.348534, -0.240731,
		38.214233, 42.520676, 22.573885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891514, 42.843380, 23.264530>,  <38.848331, 42.276703, 22.742397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891514, 42.843380, 23.264530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.536411, 42.801605, 23.085209>,  <38.323349, 42.776539, 22.977615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.536411, 42.801605, 23.085209>,  <38.891514, 42.843380, 23.264530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536411, 42.801605, 23.085209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448840, 0.412433, 0.792743,
		0.102103, 0.904981, -0.413018,
		-0.887760, -0.104438, -0.448303,
		38.270084, 42.770275, 22.950718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561153, 43.539955, 23.361181>,  <38.891514, 42.843380, 23.264530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561153, 43.539955, 23.361181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.258057, 43.297256, 23.265114>,  <38.076199, 43.151638, 23.207474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.258057, 43.297256, 23.265114>,  <38.561153, 43.539955, 23.361181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258057, 43.297256, 23.265114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435977, 0.196878, 0.878159,
		-0.485537, 0.770128, -0.413711,
		-0.757745, -0.606747, -0.240167,
		38.030735, 43.115231, 23.193064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988476, 43.947685, 23.494690>,  <38.561153, 43.539955, 23.361181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988476, 43.947685, 23.494690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.874012, 43.565182, 23.518967>,  <37.805332, 43.335682, 23.533533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.874012, 43.565182, 23.518967>,  <37.988476, 43.947685, 23.494690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874012, 43.565182, 23.518967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279843, 0.143987, 0.949187,
		-0.916405, 0.254639, -0.308806,
		-0.286164, -0.956257, 0.060692,
		37.788162, 43.278305, 23.537174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282948, 43.926979, 23.727823>,  <37.988476, 43.947685, 23.494690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282948, 43.926979, 23.727823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.446941, 43.578903, 23.837132>,  <37.545338, 43.370056, 23.902716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.446941, 43.578903, 23.837132>,  <37.282948, 43.926979, 23.727823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446941, 43.578903, 23.837132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337745, 0.133467, 0.931727,
		-0.847254, -0.474291, -0.239183,
		0.409987, -0.870192, 0.273269,
		37.569939, 43.317844, 23.919113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842873, 43.640228, 24.167341>,  <37.282948, 43.926979, 23.727823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842873, 43.640228, 24.167341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.166546, 43.417545, 24.242495>,  <37.360748, 43.283936, 24.287586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.166546, 43.417545, 24.242495>,  <36.842873, 43.640228, 24.167341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166546, 43.417545, 24.242495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252053, -0.040049, 0.966884,
		-0.530745, -0.829744, -0.172726,
		0.809184, -0.556706, 0.187883,
		37.409302, 43.250534, 24.298861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157055, 43.281559, 24.054811>,  <36.842873, 43.640228, 24.167341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157055, 43.281559, 24.054811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.879658, 43.555122, 24.145445>,  <35.713219, 43.719261, 24.199825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.879658, 43.555122, 24.145445>,  <36.157055, 43.281559, 24.054811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879658, 43.555122, 24.145445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088577, 0.231175, -0.968871,
		-0.715002, -0.691971, -0.099738,
		-0.693488, 0.683911, 0.226584,
		35.671612, 43.760296, 24.213421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494743, 43.232941, 23.659021>,  <36.157055, 43.281559, 24.054811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494743, 43.232941, 23.659021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.489605, 43.620750, 23.756886>,  <35.486523, 43.853436, 23.815605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.489605, 43.620750, 23.756886>,  <35.494743, 43.232941, 23.659021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489605, 43.620750, 23.756886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096295, 0.244744, -0.964794,
		-0.995270, 0.011170, -0.096503,
		-0.012841, 0.969523, 0.244662,
		35.485752, 43.911606, 23.830284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972088, 43.503773, 23.232843>,  <35.494743, 43.232941, 23.659021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972088, 43.503773, 23.232843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.179558, 43.831200, 23.331570>,  <35.304039, 44.027657, 23.390806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.179558, 43.831200, 23.331570>,  <34.972088, 43.503773, 23.232843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179558, 43.831200, 23.331570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105177, 0.347581, -0.931733,
		-0.848475, 0.457310, 0.266377,
		0.518678, 0.818569, 0.246815,
		35.335163, 44.076771, 23.405615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752457, 43.995399, 22.845102>,  <34.972088, 43.503773, 23.232843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752457, 43.995399, 22.845102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.100456, 44.152557, 22.964252>,  <35.309258, 44.246853, 23.035742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.100456, 44.152557, 22.964252>,  <34.752457, 43.995399, 22.845102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100456, 44.152557, 22.964252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203972, 0.263219, -0.942927,
		-0.448876, 0.881108, 0.148862,
		0.870004, 0.392893, 0.297874,
		35.361458, 44.270424, 23.053616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876263, 44.631836, 22.525415>,  <34.752457, 43.995399, 22.845102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876263, 44.631836, 22.525415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.247074, 44.514515, 22.618872>,  <35.469563, 44.444122, 22.674946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.247074, 44.514515, 22.618872>,  <34.876263, 44.631836, 22.525415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247074, 44.514515, 22.618872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209611, -0.111317, -0.971428,
		0.310926, 0.949518, -0.041716,
		0.927032, -0.293298, 0.233641,
		35.525185, 44.426525, 22.688965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399635, 45.076614, 22.301085>,  <34.876263, 44.631836, 22.525415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399635, 45.076614, 22.301085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.586349, 44.724075, 22.330309>,  <35.698380, 44.512554, 22.347843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.586349, 44.724075, 22.330309>,  <35.399635, 45.076614, 22.301085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586349, 44.724075, 22.330309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002134, -0.081490, -0.996672,
		0.884366, 0.465392, -0.036158,
		0.466790, -0.881345, 0.073060,
		35.726387, 44.459671, 22.352226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020191, 45.141041, 21.830809>,  <35.399635, 45.076614, 22.301085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020191, 45.141041, 21.830809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.979458, 44.748512, 21.896090>,  <35.955017, 44.512993, 21.935257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.979458, 44.748512, 21.896090>,  <36.020191, 45.141041, 21.830809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979458, 44.748512, 21.896090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359999, -0.189286, -0.913549,
		0.927378, -0.034278, 0.372551,
		-0.101834, -0.981323, 0.163200,
		35.948906, 44.454117, 21.945049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734985, 44.851810, 21.660513>,  <36.020191, 45.141041, 21.830809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734985, 44.851810, 21.660513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.450676, 44.570778, 21.646805>,  <36.280090, 44.402157, 21.638580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.450676, 44.570778, 21.646805>,  <36.734985, 44.851810, 21.660513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450676, 44.570778, 21.646805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358644, -0.320051, -0.876893,
		0.605123, -0.635564, 0.479462,
		-0.710774, -0.702585, -0.034271,
		36.237442, 44.360001, 21.636524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093941, 44.170761, 21.349045>,  <36.734985, 44.851810, 21.660513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093941, 44.170761, 21.349045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.698833, 44.138710, 21.295532>,  <36.461769, 44.119480, 21.263424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.698833, 44.138710, 21.295532>,  <37.093941, 44.170761, 21.349045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698833, 44.138710, 21.295532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153006, -0.332299, -0.930680,
		0.030118, -0.939764, 0.340494,
		-0.987766, -0.080128, -0.133782,
		36.402504, 44.114674, 21.255398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919956, 43.489014, 21.124737>,  <37.093941, 44.170761, 21.349045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919956, 43.489014, 21.124737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.573143, 43.651352, 21.009117>,  <36.365055, 43.748753, 20.939745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.573143, 43.651352, 21.009117>,  <36.919956, 43.489014, 21.124737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573143, 43.651352, 21.009117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019583, -0.551917, -0.833669,
		-0.497868, -0.728478, 0.470582,
		-0.867032, 0.405841, -0.289048,
		36.313034, 43.773106, 20.922403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402439, 42.982491, 20.950064>,  <36.919956, 43.489014, 21.124737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402439, 42.982491, 20.950064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.246391, 43.304081, 20.770536>,  <36.152763, 43.497036, 20.662819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.246391, 43.304081, 20.770536>,  <36.402439, 42.982491, 20.950064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246391, 43.304081, 20.770536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072951, -0.458921, -0.885477,
		-0.917871, -0.378181, 0.120382,
		-0.390116, 0.803972, -0.448819,
		36.129356, 43.545273, 20.635891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796162, 42.818859, 20.512800>,  <36.402439, 42.982491, 20.950064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796162, 42.818859, 20.512800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.925014, 43.156849, 20.342035>,  <36.002327, 43.359642, 20.239576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.925014, 43.156849, 20.342035>,  <35.796162, 42.818859, 20.512800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925014, 43.156849, 20.342035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150171, -0.399630, -0.904292,
		-0.934707, 0.355415, -0.001845,
		0.322136, 0.844971, -0.426910,
		36.021656, 43.410339, 20.213963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910778, 42.611633, 21.294542>,  <35.796162, 42.818859, 20.512800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910778, 42.611633, 21.294542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.625450, 42.863323, 21.171083>,  <35.454254, 43.014336, 21.097008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.625450, 42.863323, 21.171083>,  <35.910778, 42.611633, 21.294542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625450, 42.863323, 21.171083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700222, -0.658386, 0.276074,
		-0.029496, 0.413048, 0.910232,
		-0.713315, 0.629221, -0.308645,
		35.411457, 43.052090, 21.078489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431412, 42.630634, 21.890873>,  <35.910778, 42.611633, 21.294542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431412, 42.630634, 21.890873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.272831, 42.709221, 21.532158>,  <35.177681, 42.756374, 21.316929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.272831, 42.709221, 21.532158>,  <35.431412, 42.630634, 21.890873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272831, 42.709221, 21.532158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808415, -0.537641, 0.239597,
		-0.435077, 0.819965, 0.371975,
		-0.396450, 0.196467, -0.896788,
		35.153896, 42.768162, 21.263123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829884, 42.804409, 22.064322>,  <35.431412, 42.630634, 21.890873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829884, 42.804409, 22.064322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.805092, 42.729527, 21.672176>,  <34.790215, 42.684597, 21.436890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.805092, 42.729527, 21.672176>,  <34.829884, 42.804409, 22.064322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805092, 42.729527, 21.672176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788305, -0.593266, 0.163126,
		-0.612155, 0.782936, -0.110803,
		-0.061982, -0.187205, -0.980363,
		34.786499, 42.673367, 21.378067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176964, 42.789921, 21.934284>,  <34.829884, 42.804409, 22.064322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176964, 42.789921, 21.934284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.304684, 42.564472, 21.629555>,  <34.381317, 42.429203, 21.446716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.304684, 42.564472, 21.629555>,  <34.176964, 42.789921, 21.934284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304684, 42.564472, 21.629555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701298, -0.681218, 0.210055,
		-0.637360, 0.467194, -0.612782,
		0.319302, -0.563624, -0.761823,
		34.400475, 42.395386, 21.401007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633755, 42.627399, 21.494110>,  <34.176964, 42.789921, 21.934284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633755, 42.627399, 21.494110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.910915, 42.350445, 21.413624>,  <34.077213, 42.184273, 21.365332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.910915, 42.350445, 21.413624>,  <33.633755, 42.627399, 21.494110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910915, 42.350445, 21.413624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660007, -0.721418, 0.209636,
		-0.290309, -0.012454, -0.956852,
		0.692901, -0.692388, -0.201214,
		34.118786, 42.142727, 21.353260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348469, 42.095104, 20.981894>,  <33.633755, 42.627399, 21.494110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348469, 42.095104, 20.981894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.645786, 41.921562, 21.185574>,  <33.824177, 41.817436, 21.307781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.645786, 41.921562, 21.185574>,  <33.348469, 42.095104, 20.981894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645786, 41.921562, 21.185574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568474, -0.810890, 0.138905,
		0.352639, -0.392713, -0.849366,
		0.743292, -0.433859, 0.509198,
		33.868774, 41.791405, 21.338333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280830, 41.447979, 20.838217>,  <33.348469, 42.095104, 20.981894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280830, 41.447979, 20.838217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.499821, 41.425068, 21.172161>,  <33.631214, 41.411320, 21.372528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.499821, 41.425068, 21.172161>,  <33.280830, 41.447979, 20.838217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499821, 41.425068, 21.172161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462490, -0.852154, 0.244821,
		0.697408, -0.520147, -0.493021,
		0.547472, -0.057277, 0.834861,
		33.664062, 41.407887, 21.422619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345154, 40.748924, 20.884453>,  <33.280830, 41.447979, 20.838217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345154, 40.748924, 20.884453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.441944, 40.897499, 21.243002>,  <33.500019, 40.986645, 21.458132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.441944, 40.897499, 21.243002>,  <33.345154, 40.748924, 20.884453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441944, 40.897499, 21.243002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312696, -0.844685, 0.434429,
		0.918513, -0.385415, -0.088251,
		0.241980, 0.371433, 0.896372,
		33.514538, 41.008930, 21.511913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662384, 40.109016, 21.212328>,  <33.345154, 40.748924, 20.884453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662384, 40.109016, 21.212328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.585865, 40.393444, 21.482967>,  <33.539955, 40.564102, 21.645351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.585865, 40.393444, 21.482967>,  <33.662384, 40.109016, 21.212328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585865, 40.393444, 21.482967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413537, -0.683549, 0.601455,
		0.890165, -0.164744, 0.424813,
		-0.191294, 0.711070, 0.676599,
		33.528477, 40.606766, 21.685947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160469, 39.560410, 21.348909>,  <33.662384, 40.109016, 21.212328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160469, 39.560410, 21.348909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.170223, 39.166595, 21.279507>,  <34.176075, 38.930309, 21.237865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.170223, 39.166595, 21.279507>,  <34.160469, 39.560410, 21.348909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170223, 39.166595, 21.279507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138781, 0.175210, -0.974701,
		0.990023, -0.000312, 0.140906,
		0.024384, -0.984531, -0.173505,
		34.177540, 38.871235, 21.227455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864971, 39.438660, 21.026901>,  <34.160469, 39.560410, 21.348909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864971, 39.438660, 21.026901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.600819, 39.156628, 20.923546>,  <34.442329, 38.987408, 20.861532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.600819, 39.156628, 20.923546>,  <34.864971, 39.438660, 21.026901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600819, 39.156628, 20.923546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241673, 0.126228, -0.962112,
		0.710981, -0.697804, 0.087040,
		-0.660379, -0.705079, -0.258386,
		34.402706, 38.945103, 20.846029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255100, 39.150368, 20.557449>,  <34.864971, 39.438660, 21.026901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255100, 39.150368, 20.557449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.898396, 38.983841, 20.486515>,  <34.684372, 38.883926, 20.443954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.898396, 38.983841, 20.486515>,  <35.255100, 39.150368, 20.557449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898396, 38.983841, 20.486515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124049, 0.151973, -0.980569,
		0.435177, -0.896429, -0.083880,
		-0.891758, -0.416316, -0.177336,
		34.630867, 38.858948, 20.433313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382950, 38.756424, 19.986769>,  <35.255100, 39.150368, 20.557449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382950, 38.756424, 19.986769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.983070, 38.764103, 19.992920>,  <34.743141, 38.768711, 19.996611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.983070, 38.764103, 19.992920>,  <35.382950, 38.756424, 19.986769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983070, 38.764103, 19.992920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014675, 0.036213, -0.999236,
		-0.019745, -0.999160, -0.035921,
		-0.999697, 0.019202, 0.015378,
		34.683163, 38.769863, 19.997534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182064, 38.274651, 19.486010>,  <35.382950, 38.756424, 19.986769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182064, 38.274651, 19.486010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.855145, 38.496284, 19.549257>,  <34.658993, 38.629265, 19.587206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.855145, 38.496284, 19.549257>,  <35.182064, 38.274651, 19.486010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855145, 38.496284, 19.549257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141375, 0.073191, -0.987247,
		-0.558596, -0.829233, 0.018515,
		-0.817303, 0.554090, 0.158117,
		34.609955, 38.662510, 19.596693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575230, 38.026180, 19.039740>,  <35.182064, 38.274651, 19.486010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575230, 38.026180, 19.039740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.518532, 38.414528, 19.117022>,  <34.484512, 38.647537, 19.163391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.518532, 38.414528, 19.117022>,  <34.575230, 38.026180, 19.039740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518532, 38.414528, 19.117022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138864, 0.173743, -0.974951,
		-0.980115, -0.165022, 0.110191,
		-0.141743, 0.970866, 0.193203,
		34.476009, 38.705788, 19.174982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060574, 38.241890, 18.596699>,  <34.575230, 38.026180, 19.039740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060574, 38.241890, 18.596699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.222923, 38.588398, 18.713205>,  <34.320332, 38.796303, 18.783110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.222923, 38.588398, 18.713205>,  <34.060574, 38.241890, 18.596699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222923, 38.588398, 18.713205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012672, 0.324003, -0.945971,
		-0.913841, 0.380254, 0.142482,
		0.405874, 0.866273, 0.291269,
		34.344685, 38.848278, 18.800587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647297, 38.799911, 18.393171>,  <34.060574, 38.241890, 18.596699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647297, 38.799911, 18.393171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.011189, 38.961857, 18.430002>,  <34.229523, 39.059025, 18.452101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.011189, 38.961857, 18.430002>,  <33.647297, 38.799911, 18.393171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011189, 38.961857, 18.430002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078381, 0.385242, -0.919481,
		-0.407737, 0.829262, 0.382199,
		0.909729, 0.404863, 0.092079,
		34.284107, 39.083317, 18.457626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598869, 39.454102, 17.998243>,  <33.647297, 38.799911, 18.393171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598869, 39.454102, 17.998243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.993767, 39.393524, 18.017900>,  <34.230705, 39.357178, 18.029696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.993767, 39.393524, 18.017900>,  <33.598869, 39.454102, 17.998243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993767, 39.393524, 18.017900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116417, 0.476029, -0.871690,
		0.108619, 0.866291, 0.487587,
		0.987243, -0.151446, 0.049145,
		34.289940, 39.348091, 18.032644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.846195, 36.539196, 34.052509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.209717, 36.525867, 33.886150>,  <36.427830, 36.517872, 33.786335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.209717, 36.525867, 33.886150>,  <35.846195, 36.539196, 34.052509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209717, 36.525867, 33.886150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415561, 0.016757, -0.909411,
		0.037270, 0.999304, 0.001382,
		0.908801, -0.033320, -0.415897,
		36.482357, 36.515873, 33.761383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839790, 37.041943, 33.553925>,  <35.846195, 36.539196, 34.052509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839790, 37.041943, 33.553925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160831, 36.853424, 33.407661>,  <36.353455, 36.740311, 33.319904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160831, 36.853424, 33.407661>,  <35.839790, 37.041943, 33.553925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160831, 36.853424, 33.407661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443143, -0.060731, -0.894392,
		0.399318, 0.879881, -0.257595,
		0.802602, -0.471298, -0.365662,
		36.401611, 36.712036, 33.297962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008537, 37.349796, 32.840504>,  <35.839790, 37.041943, 33.553925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008537, 37.349796, 32.840504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.211781, 37.005306, 32.844673>,  <36.333729, 36.798611, 32.847176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.211781, 37.005306, 32.844673>,  <36.008537, 37.349796, 32.840504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211781, 37.005306, 32.844673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254680, -0.161802, -0.953393,
		0.822776, 0.481774, -0.301550,
		0.508112, -0.861228, 0.010428,
		36.364216, 36.746937, 32.847801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566422, 37.319344, 32.365917>,  <36.008537, 37.349796, 32.840504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566422, 37.319344, 32.365917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.461323, 36.937851, 32.424377>,  <36.398262, 36.708954, 32.459454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.461323, 36.937851, 32.424377>,  <36.566422, 37.319344, 32.365917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461323, 36.937851, 32.424377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147846, -0.109887, -0.982887,
		0.953470, -0.279859, -0.112133,
		-0.262747, -0.953732, 0.146150,
		36.382500, 36.651730, 32.468224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825386, 36.992908, 31.731865>,  <36.566422, 37.319344, 32.365917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825386, 36.992908, 31.731865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.581367, 36.713020, 31.880585>,  <36.434956, 36.545090, 31.969816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.581367, 36.713020, 31.880585>,  <36.825386, 36.992908, 31.731865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581367, 36.713020, 31.880585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095531, -0.400858, -0.911146,
		0.786584, -0.591362, 0.177698,
		-0.610049, -0.699717, 0.371801,
		36.398354, 36.503105, 31.992125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994751, 36.296150, 31.293287>,  <36.825386, 36.992908, 31.731865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994751, 36.296150, 31.293287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633549, 36.258186, 31.460896>,  <36.416828, 36.235409, 31.561460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633549, 36.258186, 31.460896>,  <36.994751, 36.296150, 31.293287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633549, 36.258186, 31.460896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329081, -0.474220, -0.816591,
		0.276213, -0.875276, 0.396988,
		-0.903002, -0.094912, 0.419022,
		36.362648, 36.229713, 31.586601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659790, 35.714024, 31.007771>,  <36.994751, 36.296150, 31.293287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659790, 35.714024, 31.007771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348431, 35.918179, 31.153971>,  <36.161613, 36.040672, 31.241692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348431, 35.918179, 31.153971>,  <36.659790, 35.714024, 31.007771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348431, 35.918179, 31.153971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611244, -0.483506, -0.626581,
		-0.143077, -0.711143, 0.688334,
		-0.778402, 0.510390, 0.365503,
		36.114910, 36.071297, 31.263622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066437, 35.262867, 31.083832>,  <36.659790, 35.714024, 31.007771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066437, 35.262867, 31.083832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.941006, 35.641258, 31.050859>,  <35.865746, 35.868294, 31.031076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.941006, 35.641258, 31.050859>,  <36.066437, 35.262867, 31.083832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941006, 35.641258, 31.050859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686203, -0.285755, -0.668931,
		-0.656350, -0.153197, 0.738739,
		-0.313577, 0.945978, -0.082430,
		35.846931, 35.925053, 31.026131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234592, 35.181717, 31.013655>,  <36.066437, 35.262867, 31.083832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234592, 35.181717, 31.013655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.319748, 35.549755, 30.882141>,  <35.370842, 35.770576, 30.803232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.319748, 35.549755, 30.882141>,  <35.234592, 35.181717, 31.013655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319748, 35.549755, 30.882141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637560, -0.124175, -0.760327,
		-0.740401, 0.371487, 0.560181,
		0.212891, 0.920097, -0.328785,
		35.383614, 35.825783, 30.783506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503960, 35.449432, 30.706135>,  <35.234592, 35.181717, 31.013655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503960, 35.449432, 30.706135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.812737, 35.656353, 30.558344>,  <34.998001, 35.780506, 30.469669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.812737, 35.656353, 30.558344>,  <34.503960, 35.449432, 30.706135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812737, 35.656353, 30.558344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459114, 0.051668, -0.886874,
		-0.439688, 0.854244, 0.277383,
		0.771939, 0.517298, -0.369477,
		35.044319, 35.811543, 30.447500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228725, 36.047539, 30.479471>,  <34.503960, 35.449432, 30.706135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228725, 36.047539, 30.479471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569687, 35.997864, 30.276300>,  <34.774261, 35.968060, 30.154398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569687, 35.997864, 30.276300>,  <34.228725, 36.047539, 30.479471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569687, 35.997864, 30.276300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494244, 0.125740, -0.860182,
		0.170689, 0.984260, 0.045804,
		0.852402, -0.124185, -0.507927,
		34.825409, 35.960609, 30.123922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106888, 36.486290, 29.895079>,  <34.228725, 36.047539, 30.479471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106888, 36.486290, 29.895079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418564, 36.261208, 29.784639>,  <34.605568, 36.126160, 29.718376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418564, 36.261208, 29.784639>,  <34.106888, 36.486290, 29.895079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418564, 36.261208, 29.784639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296942, 0.056530, -0.953221,
		0.551990, 0.824723, -0.123043,
		0.779187, -0.562705, -0.276099,
		34.652321, 36.092396, 29.701809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236111, 37.218914, 29.841604>,  <34.106888, 36.486290, 29.895079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236111, 37.218914, 29.841604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858646, 37.350994, 29.850300>,  <33.632168, 37.430241, 29.855518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858646, 37.350994, 29.850300>,  <34.236111, 37.218914, 29.841604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858646, 37.350994, 29.850300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033072, 0.028735, 0.999040,
		0.329255, 0.943475, -0.038036,
		-0.943662, 0.330197, 0.021741,
		33.575546, 37.450054, 29.856823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232571, 37.917133, 30.304035>,  <34.236111, 37.218914, 29.841604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232571, 37.917133, 30.304035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.871788, 37.744461, 30.308613>,  <33.655319, 37.640858, 30.311359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.871788, 37.744461, 30.308613>,  <34.232571, 37.917133, 30.304035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871788, 37.744461, 30.308613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058497, 0.148399, 0.987196,
		-0.427849, 0.889737, -0.159101,
		-0.901955, -0.431678, 0.011445,
		33.601200, 37.614956, 30.312046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900993, 38.180843, 30.849991>,  <34.232571, 37.917133, 30.304035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900993, 38.180843, 30.849991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642059, 37.882080, 30.789209>,  <33.486698, 37.702824, 30.752741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642059, 37.882080, 30.789209>,  <33.900993, 38.180843, 30.849991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642059, 37.882080, 30.789209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080754, -0.131033, 0.988084,
		-0.757920, 0.651888, 0.024506,
		-0.647331, -0.746909, -0.151955,
		33.447861, 37.658009, 30.743624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294163, 38.255604, 31.189873>,  <33.900993, 38.180843, 30.849991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294163, 38.255604, 31.189873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.293724, 37.857494, 31.151041>,  <33.293461, 37.618629, 31.127743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.293724, 37.857494, 31.151041>,  <33.294163, 38.255604, 31.189873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293724, 37.857494, 31.151041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144854, -0.095896, 0.984795,
		-0.989453, 0.015146, -0.144064,
		-0.001101, -0.995276, -0.097078,
		33.293392, 37.558910, 31.121918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714481, 38.097115, 31.657042>,  <33.294163, 38.255604, 31.189873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714481, 38.097115, 31.657042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905655, 37.751530, 31.593613>,  <33.020359, 37.544178, 31.555555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905655, 37.751530, 31.593613>,  <32.714481, 38.097115, 31.657042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905655, 37.751530, 31.593613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118545, -0.242315, 0.962928,
		-0.870358, -0.441421, -0.218229,
		0.477937, -0.863963, -0.158572,
		33.049038, 37.492340, 31.546041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294109, 37.634743, 32.085247>,  <32.714481, 38.097115, 31.657042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294109, 37.634743, 32.085247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.651741, 37.472172, 32.009949>,  <32.866322, 37.374630, 31.964769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.651741, 37.472172, 32.009949>,  <32.294109, 37.634743, 32.085247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651741, 37.472172, 32.009949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085177, -0.258337, 0.962292,
		-0.439734, -0.876401, -0.196356,
		0.894080, -0.406427, -0.188249,
		32.919964, 37.350243, 31.953474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213661, 36.907246, 32.160889>,  <32.294109, 37.634743, 32.085247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213661, 36.907246, 32.160889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.596989, 37.012131, 32.206264>,  <32.826984, 37.075062, 32.233490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.596989, 37.012131, 32.206264>,  <32.213661, 36.907246, 32.160889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596989, 37.012131, 32.206264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047968, -0.243760, 0.968649,
		0.281643, -0.933716, -0.221022,
		0.958320, 0.262212, 0.113442,
		32.884483, 37.090794, 32.240295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531502, 36.431931, 32.626331>,  <32.213661, 36.907246, 32.160889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531502, 36.431931, 32.626331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755169, 36.762974, 32.645870>,  <32.889370, 36.961601, 32.657593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755169, 36.762974, 32.645870>,  <32.531502, 36.431931, 32.626331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755169, 36.762974, 32.645870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177489, -0.177057, 0.968064,
		0.809830, -0.532644, -0.245898,
		0.559171, 0.827612, 0.048848,
		32.922920, 37.011257, 32.660526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079529, 36.201088, 33.083336>,  <32.531502, 36.431931, 32.626331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079529, 36.201088, 33.083336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.116333, 36.599213, 33.095306>,  <33.138416, 36.838085, 33.102489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.116333, 36.599213, 33.095306>,  <33.079529, 36.201088, 33.083336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116333, 36.599213, 33.095306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154300, -0.015438, 0.987903,
		0.983731, -0.095513, 0.152156,
		0.092008, 0.995309, 0.029925,
		33.143936, 36.897804, 33.104282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320576, 36.280956, 33.787491>,  <33.079529, 36.201088, 33.083336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320576, 36.280956, 33.787491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218597, 36.642574, 33.650261>,  <33.157410, 36.859547, 33.567921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218597, 36.642574, 33.650261>,  <33.320576, 36.280956, 33.787491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218597, 36.642574, 33.650261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501217, 0.179865, 0.846422,
		0.826914, 0.387744, 0.407269,
		-0.254942, 0.904048, -0.343077,
		33.142117, 36.913788, 33.547337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504993, 36.756542, 34.232021>,  <33.320576, 36.280956, 33.787491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504993, 36.756542, 34.232021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207870, 36.974201, 34.075996>,  <33.029598, 37.104797, 33.982380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207870, 36.974201, 34.075996>,  <33.504993, 36.756542, 34.232021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207870, 36.974201, 34.075996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239801, 0.327727, 0.913833,
		0.625091, 0.772337, -0.112951,
		-0.742803, 0.544143, -0.390066,
		32.985031, 37.137444, 33.958977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521687, 37.425915, 34.551964>,  <33.504993, 36.756542, 34.232021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521687, 37.425915, 34.551964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.154076, 37.391224, 34.398151>,  <32.933510, 37.370407, 34.305866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.154076, 37.391224, 34.398151>,  <33.521687, 37.425915, 34.551964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154076, 37.391224, 34.398151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391923, 0.096607, 0.914912,
		-0.042204, 0.991537, -0.122777,
		-0.919030, -0.086732, -0.384529,
		32.878368, 37.365204, 34.282791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103188, 38.037109, 34.812641>,  <33.521687, 37.425915, 34.551964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103188, 38.037109, 34.812641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.849243, 37.744503, 34.713177>,  <32.696877, 37.568939, 34.653500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.849243, 37.744503, 34.713177>,  <33.103188, 38.037109, 34.812641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849243, 37.744503, 34.713177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449714, 0.088167, 0.888810,
		-0.628256, 0.676099, -0.384947,
		-0.634863, -0.731516, -0.248660,
		32.658783, 37.525047, 34.638580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423965, 38.553391, 34.349609>,  <33.103188, 38.037109, 34.812641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423965, 38.553391, 34.349609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.096699, 38.722038, 34.505989>,  <32.900337, 38.823227, 34.599815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.096699, 38.722038, 34.505989>,  <33.423965, 38.553391, 34.349609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096699, 38.722038, 34.505989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055100, 0.734295, -0.676590,
		-0.572337, -0.532021, -0.624006,
		-0.818165, 0.421621, 0.390950,
		32.851250, 38.848526, 34.623276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044819, 38.690586, 33.735901>,  <33.423965, 38.553391, 34.349609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044819, 38.690586, 33.735901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.028339, 38.981365, 34.010082>,  <33.018452, 39.155834, 34.174591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.028339, 38.981365, 34.010082>,  <33.044819, 38.690586, 33.735901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028339, 38.981365, 34.010082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212215, 0.676751, -0.704963,
		-0.976354, 0.116422, -0.182149,
		-0.041197, 0.726948, 0.685456,
		33.015980, 39.199451, 34.215717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613350, 39.213856, 33.523144>,  <33.044819, 38.690586, 33.735901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613350, 39.213856, 33.523144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.922810, 39.346325, 33.739212>,  <33.108486, 39.425808, 33.868855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.922810, 39.346325, 33.739212>,  <32.613350, 39.213856, 33.523144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922810, 39.346325, 33.739212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368207, 0.458808, -0.808653,
		-0.515641, 0.824511, 0.233017,
		0.773653, 0.331176, 0.540170,
		33.154907, 39.445679, 33.901264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669735, 40.048294, 33.507038>,  <32.613350, 39.213856, 33.523144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669735, 40.048294, 33.507038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.014938, 39.847313, 33.528049>,  <33.222061, 39.726723, 33.540657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.014938, 39.847313, 33.528049>,  <32.669735, 40.048294, 33.507038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014938, 39.847313, 33.528049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351675, 0.522844, -0.776504,
		0.362692, 0.688602, 0.627919,
		0.863006, -0.502455, 0.052532,
		33.273842, 39.696575, 33.543808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219673, 40.504246, 33.497078>,  <32.669735, 40.048294, 33.507038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219673, 40.504246, 33.497078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372387, 40.172489, 33.333935>,  <33.464016, 39.973434, 33.236050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372387, 40.172489, 33.333935>,  <33.219673, 40.504246, 33.497078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372387, 40.172489, 33.333935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280273, 0.524397, -0.804024,
		0.880731, 0.192653, 0.432663,
		0.381785, -0.829393, -0.407858,
		33.486923, 39.923672, 33.211578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709122, 40.697426, 33.044361>,  <33.219673, 40.504246, 33.497078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709122, 40.697426, 33.044361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.715538, 40.316090, 32.923779>,  <33.719387, 40.087288, 32.851429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.715538, 40.316090, 32.923779>,  <33.709122, 40.697426, 33.044361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715538, 40.316090, 32.923779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321292, 0.290421, -0.901347,
		0.946844, -0.082396, 0.310961,
		0.016042, -0.953345, -0.301456,
		33.720352, 40.030087, 32.833344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333538, 40.551182, 32.754597>,  <33.709122, 40.697426, 33.044361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333538, 40.551182, 32.754597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.055534, 40.319111, 32.584724>,  <33.888733, 40.179867, 32.482803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.055534, 40.319111, 32.584724>,  <34.333538, 40.551182, 32.754597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055534, 40.319111, 32.584724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191904, 0.419538, -0.887221,
		0.692915, -0.698127, -0.180245,
		-0.695012, -0.580178, -0.424677,
		33.847031, 40.145058, 32.457321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604710, 40.417923, 32.138229>,  <34.333538, 40.551182, 32.754597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604710, 40.417923, 32.138229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.233459, 40.296883, 32.051491>,  <34.010712, 40.224258, 31.999447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.233459, 40.296883, 32.051491>,  <34.604710, 40.417923, 32.138229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233459, 40.296883, 32.051491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037717, 0.503065, -0.863425,
		0.370357, -0.809544, -0.455493,
		-0.928124, -0.302596, -0.216847,
		33.955021, 40.206104, 31.986437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593342, 40.179749, 31.368290>,  <34.604710, 40.417923, 32.138229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593342, 40.179749, 31.368290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201492, 40.217564, 31.439169>,  <33.966381, 40.240253, 31.481695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201492, 40.217564, 31.439169>,  <34.593342, 40.179749, 31.368290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201492, 40.217564, 31.439169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138198, 0.322889, -0.936293,
		-0.145731, -0.941703, -0.303245,
		-0.979624, 0.094539, 0.177196,
		33.907604, 40.245926, 31.492329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208878, 39.862957, 30.849571>,  <34.593342, 40.179749, 31.368290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208878, 39.862957, 30.849571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.945477, 40.121025, 31.004557>,  <33.787434, 40.275864, 31.097548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.945477, 40.121025, 31.004557>,  <34.208878, 39.862957, 30.849571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945477, 40.121025, 31.004557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217360, 0.329862, -0.918665,
		-0.720503, -0.689166, -0.076983,
		-0.658506, 0.645168, 0.387464,
		33.747925, 40.314575, 31.120796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489037, 39.919342, 30.419289>,  <34.208878, 39.862957, 30.849571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489037, 39.919342, 30.419289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.564564, 40.257721, 30.618776>,  <33.609882, 40.460747, 30.738470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.564564, 40.257721, 30.618776>,  <33.489037, 39.919342, 30.419289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564564, 40.257721, 30.618776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039776, 0.500851, -0.864619,
		-0.981206, 0.183094, 0.060923,
		0.188820, 0.845946, 0.498720,
		33.621208, 40.511505, 30.768393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004124, 40.423695, 30.160910>,  <33.489037, 39.919342, 30.419289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004124, 40.423695, 30.160910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.312431, 40.620392, 30.322945>,  <33.497417, 40.738411, 30.420166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.312431, 40.620392, 30.322945>,  <33.004124, 40.423695, 30.160910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312431, 40.620392, 30.322945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035899, 0.601290, -0.798224,
		-0.636100, 0.629790, 0.445804,
		0.770771, 0.491746, 0.405089,
		33.543663, 40.767918, 30.444471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908833, 41.144581, 29.932432>,  <33.004124, 40.423695, 30.160910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908833, 41.144581, 29.932432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295460, 41.128349, 30.033703>,  <33.527435, 41.118610, 30.094465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295460, 41.128349, 30.033703>,  <32.908833, 41.144581, 29.932432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295460, 41.128349, 30.033703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233935, 0.543784, -0.805961,
		-0.104971, 0.838244, 0.535097,
		0.966569, -0.040575, 0.253176,
		33.585430, 41.116177, 30.109655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064407, 41.770050, 29.823925>,  <32.908833, 41.144581, 29.932432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064407, 41.770050, 29.823925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429436, 41.607136, 29.838535>,  <33.648453, 41.509388, 29.847301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429436, 41.607136, 29.838535>,  <33.064407, 41.770050, 29.823925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429436, 41.607136, 29.838535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288683, 0.578413, -0.762955,
		0.289611, 0.706796, 0.645419,
		0.912572, -0.407282, 0.036525,
		33.703209, 41.484951, 29.849493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620247, 42.304199, 29.641407>,  <33.064407, 41.770050, 29.823925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620247, 42.304199, 29.641407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.817505, 41.957523, 29.611319>,  <33.935860, 41.749519, 29.593266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.817505, 41.957523, 29.611319>,  <33.620247, 42.304199, 29.641407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817505, 41.957523, 29.611319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372856, 0.288687, -0.881838,
		0.785996, 0.406825, 0.465515,
		0.493142, -0.866691, -0.075220,
		33.965446, 41.697517, 29.588753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363041, 42.424000, 29.495626>,  <33.620247, 42.304199, 29.641407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363041, 42.424000, 29.495626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.299358, 42.061577, 29.338804>,  <34.261150, 41.844124, 29.244711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.299358, 42.061577, 29.338804>,  <34.363041, 42.424000, 29.495626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299358, 42.061577, 29.338804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263577, 0.343694, -0.901333,
		0.951410, -0.246833, 0.184099,
		-0.159205, -0.906061, -0.392054,
		34.251598, 41.789757, 29.221188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929996, 42.375847, 28.944590>,  <34.363041, 42.424000, 29.495626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929996, 42.375847, 28.944590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695374, 42.065422, 28.851915>,  <34.554600, 41.879166, 28.796310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695374, 42.065422, 28.851915>,  <34.929996, 42.375847, 28.944590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695374, 42.065422, 28.851915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230249, 0.114475, -0.966375,
		0.776489, -0.620180, 0.111541,
		-0.586558, -0.776062, -0.231685,
		34.519405, 41.832603, 28.782410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314510, 41.751457, 28.601334>,  <34.929996, 42.375847, 28.944590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314510, 41.751457, 28.601334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.931492, 41.740433, 28.486555>,  <34.701679, 41.733818, 28.417688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.931492, 41.740433, 28.486555>,  <35.314510, 41.751457, 28.601334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931492, 41.740433, 28.486555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285046, 0.057880, -0.956765,
		0.042975, -0.997943, -0.047568,
		-0.957550, -0.027557, -0.286947,
		34.644226, 41.732162, 28.400471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319523, 41.359077, 28.073023>,  <35.314510, 41.751457, 28.601334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319523, 41.359077, 28.073023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.977875, 41.561947, 28.026972>,  <34.772888, 41.683670, 27.999342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.977875, 41.561947, 28.026972>,  <35.319523, 41.359077, 28.073023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977875, 41.561947, 28.026972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217276, 0.146859, -0.964999,
		-0.472519, -0.849237, -0.235632,
		-0.854118, 0.507177, -0.115126,
		34.721638, 41.714100, 27.992434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209126, 41.320293, 27.310127>,  <35.319523, 41.359077, 28.073023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209126, 41.320293, 27.310127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.950233, 41.595726, 27.440941>,  <34.794899, 41.760986, 27.519428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.950233, 41.595726, 27.440941>,  <35.209126, 41.320293, 27.310127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950233, 41.595726, 27.440941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121823, 0.516932, -0.847314,
		-0.752494, -0.508570, -0.418461,
		-0.647234, 0.688577, 0.327032,
		34.756062, 41.802299, 27.539051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753624, 41.532070, 26.695433>,  <35.209126, 41.320293, 27.310127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753624, 41.532070, 26.695433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.710800, 41.833069, 26.955368>,  <34.685108, 42.013668, 27.111328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.710800, 41.833069, 26.955368>,  <34.753624, 41.532070, 26.695433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710800, 41.833069, 26.955368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030097, 0.655747, -0.754381,
		-0.993797, -0.061203, -0.092849,
		-0.107056, 0.752496, 0.649837,
		34.678684, 42.058819, 27.150320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173370, 41.956924, 26.462402>,  <34.753624, 41.532070, 26.695433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173370, 41.956924, 26.462402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.414497, 42.172604, 26.697647>,  <34.559174, 42.302013, 26.838793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.414497, 42.172604, 26.697647>,  <34.173370, 41.956924, 26.462402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414497, 42.172604, 26.697647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037573, 0.717090, -0.695967,
		-0.796995, 0.441638, 0.412014,
		0.602816, 0.539202, 0.588110,
		34.595341, 42.334366, 26.874081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985844, 42.631489, 26.257055>,  <34.173370, 41.956924, 26.462402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985844, 42.631489, 26.257055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344082, 42.645233, 26.434473>,  <34.559025, 42.653481, 26.540924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344082, 42.645233, 26.434473>,  <33.985844, 42.631489, 26.257055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344082, 42.645233, 26.434473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298851, 0.692085, -0.657043,
		-0.329546, 0.720998, 0.609559,
		0.895593, 0.034359, 0.443545,
		34.612759, 42.655540, 26.567537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150620, 43.361691, 26.423204>,  <33.985844, 42.631489, 26.257055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150620, 43.361691, 26.423204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.501228, 43.169624, 26.409613>,  <34.711594, 43.054386, 26.401459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.501228, 43.169624, 26.409613>,  <34.150620, 43.361691, 26.423204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501228, 43.169624, 26.409613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394454, 0.756930, -0.521022,
		0.275893, 0.443284, 0.852867,
		0.876521, -0.480163, -0.033977,
		34.764183, 43.025574, 26.399420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593666, 43.958927, 26.462624>,  <34.150620, 43.361691, 26.423204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593666, 43.958927, 26.462624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.802807, 43.649326, 26.319773>,  <34.928291, 43.463566, 26.234062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.802807, 43.649326, 26.319773>,  <34.593666, 43.958927, 26.462624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802807, 43.649326, 26.319773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355366, 0.578732, -0.734019,
		0.774818, 0.256871, 0.577646,
		0.522850, -0.774007, -0.357129,
		34.959663, 43.417126, 26.212633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303425, 44.172764, 26.357378>,  <34.593666, 43.958927, 26.462624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303425, 44.172764, 26.357378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271698, 43.848923, 26.124739>,  <35.252663, 43.654617, 25.985155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271698, 43.848923, 26.124739>,  <35.303425, 44.172764, 26.357378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271698, 43.848923, 26.124739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393903, 0.510501, -0.764349,
		0.915724, -0.289716, 0.278415,
		-0.079313, -0.809601, -0.581598,
		35.247906, 43.606041, 25.950260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799019, 44.216198, 25.913404>,  <35.303425, 44.172764, 26.357378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799019, 44.216198, 25.913404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.578041, 43.955410, 25.705656>,  <35.445454, 43.798939, 25.581007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.578041, 43.955410, 25.705656>,  <35.799019, 44.216198, 25.913404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578041, 43.955410, 25.705656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390791, 0.347786, -0.852249,
		0.736267, -0.673785, 0.062650,
		-0.552444, -0.651965, -0.519372,
		35.412308, 43.759819, 25.549845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230450, 43.998230, 25.349329>,  <35.799019, 44.216198, 25.913404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230450, 43.998230, 25.349329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851913, 43.927555, 25.241095>,  <35.624790, 43.885151, 25.176153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851913, 43.927555, 25.241095>,  <36.230450, 43.998230, 25.349329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851913, 43.927555, 25.241095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227785, 0.229239, -0.946342,
		0.229239, -0.957199, -0.176691,
		0.946342, 0.176691, 0.270586,
		35.568012, 43.874546, 25.159920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345478, 43.476982, 24.782312>,  <36.230450, 43.998230, 25.349329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345478, 43.476982, 24.782312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.998043, 43.668575, 24.731503>,  <35.789581, 43.783531, 24.701015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.998043, 43.668575, 24.731503>,  <36.345478, 43.476982, 24.782312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998043, 43.668575, 24.731503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168901, 0.045169, -0.984597,
		-0.465865, -0.876663, -0.120133,
		-0.868586, 0.478980, -0.127027,
		35.737469, 43.812271, 24.693394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634266, 42.796848, 24.712296>,  <36.345478, 43.476982, 24.782312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634266, 42.796848, 24.712296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.019211, 42.905254, 24.720432>,  <37.250179, 42.970299, 24.725315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.019211, 42.905254, 24.720432>,  <36.634266, 42.796848, 24.712296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019211, 42.905254, 24.720432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024997, -0.162799, 0.986342,
		0.270623, -0.948709, -0.163446,
		0.962361, 0.271013, 0.020342,
		37.307919, 42.986557, 24.726536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862106, 42.263870, 25.145887>,  <36.634266, 42.796848, 24.712296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862106, 42.263870, 25.145887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.128696, 42.562046, 25.150383>,  <37.288651, 42.740952, 25.153080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.128696, 42.562046, 25.150383>,  <36.862106, 42.263870, 25.145887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128696, 42.562046, 25.150383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221660, -0.212528, 0.951682,
		0.711812, -0.631782, -0.306879,
		0.666476, 0.745442, 0.011239,
		37.328640, 42.785679, 25.153755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468674, 41.979053, 25.460049>,  <36.862106, 42.263870, 25.145887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468674, 41.979053, 25.460049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.491325, 42.377773, 25.482616>,  <37.504917, 42.617004, 25.496157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.491325, 42.377773, 25.482616>,  <37.468674, 41.979053, 25.460049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491325, 42.377773, 25.482616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039275, -0.058691, 0.997503,
		0.997622, -0.054274, -0.042473,
		0.056632, 0.996800, 0.056420,
		37.508316, 42.676815, 25.499542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050449, 42.090614, 25.826427>,  <37.468674, 41.979053, 25.460049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050449, 42.090614, 25.826427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.844582, 42.431728, 25.861906>,  <37.721062, 42.636398, 25.883194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.844582, 42.431728, 25.861906>,  <38.050449, 42.090614, 25.826427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844582, 42.431728, 25.861906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260668, 0.057078, 0.963740,
		0.816804, 0.519127, -0.251671,
		-0.514668, 0.852789, 0.088698,
		37.690182, 42.687565, 25.888515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517689, 42.565735, 26.165573>,  <38.050449, 42.090614, 25.826427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517689, 42.565735, 26.165573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.148727, 42.706654, 26.228882>,  <37.927349, 42.791206, 26.266867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.148727, 42.706654, 26.228882>,  <38.517689, 42.565735, 26.165573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148727, 42.706654, 26.228882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176609, 0.020309, 0.984072,
		0.343475, 0.935667, -0.080953,
		-0.922407, 0.352301, 0.158271,
		37.872005, 42.812344, 26.276363>
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
