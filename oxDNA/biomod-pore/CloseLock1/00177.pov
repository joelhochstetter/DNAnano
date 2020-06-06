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
	<24.315037, 35.087063, 34.875870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.125534, 35.074600, 35.227913>,  <24.011831, 35.067123, 35.439137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.125534, 35.074600, 35.227913>,  <24.315037, 35.087063, 34.875870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.125534, 35.074600, 35.227913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815091, 0.362873, 0.451608,
		-0.333438, 0.931317, -0.146517,
		-0.473758, -0.031159, 0.880104,
		23.983406, 35.065254, 35.491943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.426914, 35.726006, 35.116096>,  <24.315037, 35.087063, 34.875870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.426914, 35.726006, 35.116096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.362103, 35.481548, 35.425999>,  <24.323215, 35.334873, 35.611938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.362103, 35.481548, 35.425999>,  <24.426914, 35.726006, 35.116096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.362103, 35.481548, 35.425999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861340, 0.295509, 0.413241,
		-0.481497, 0.734287, 0.478522,
		-0.162030, -0.611145, 0.774757,
		24.313494, 35.298206, 35.658424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.485420, 35.973812, 35.868462>,  <24.426914, 35.726006, 35.116096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.485420, 35.973812, 35.868462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.606468, 35.595177, 35.823921>,  <24.679096, 35.367996, 35.797195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.606468, 35.595177, 35.823921>,  <24.485420, 35.973812, 35.868462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.606468, 35.595177, 35.823921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918456, 0.258402, 0.299443,
		-0.254674, -0.192891, 0.947594,
		0.302620, -0.946584, -0.111354,
		24.697254, 35.311203, 35.790516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.655020, 35.636719, 36.560184>,  <24.485420, 35.973812, 35.868462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.655020, 35.636719, 36.560184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.862461, 35.489571, 36.251453>,  <24.986927, 35.401283, 36.066216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.862461, 35.489571, 36.251453>,  <24.655020, 35.636719, 36.560184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.862461, 35.489571, 36.251453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827685, 0.442406, 0.345276,
		0.214447, -0.817895, 0.533911,
		0.518605, -0.367866, -0.771831,
		25.018044, 35.379211, 36.019905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.930668, 35.006813, 36.852280>,  <24.655020, 35.636719, 36.560184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.930668, 35.006813, 36.852280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095072, 35.292355, 37.079079>,  <25.193714, 35.463680, 37.215157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095072, 35.292355, 37.079079>,  <24.930668, 35.006813, 36.852280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.095072, 35.292355, 37.079079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772555, -0.602930, 0.199084,
		0.483974, 0.356208, -0.799303,
		0.411008, 0.713857, 0.566993,
		25.218374, 35.506512, 37.249176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.542810, 35.387882, 36.617943>,  <24.930668, 35.006813, 36.852280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.542810, 35.387882, 36.617943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527384, 35.328369, 37.013191>,  <25.518127, 35.292664, 37.250340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527384, 35.328369, 37.013191>,  <25.542810, 35.387882, 36.617943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.527384, 35.328369, 37.013191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837289, -0.544533, -0.049312,
		0.545399, 0.825438, 0.145573,
		-0.038565, -0.148781, 0.988118,
		25.515814, 35.283733, 37.309628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266342, 35.541851, 36.961018>,  <25.542810, 35.387882, 36.617943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266342, 35.541851, 36.961018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.040852, 35.290874, 37.175877>,  <25.905558, 35.140289, 37.304794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.040852, 35.290874, 37.175877>,  <26.266342, 35.541851, 36.961018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.040852, 35.290874, 37.175877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802688, -0.569457, 0.177230,
		0.194685, 0.531075, 0.824656,
		-0.563728, -0.627437, 0.537152,
		25.871733, 35.102642, 37.337021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024488, 35.811066, 36.967918>,  <26.266342, 35.541851, 36.961018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024488, 35.811066, 36.967918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419704, 35.770657, 36.921318>,  <27.656834, 35.746410, 36.893356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419704, 35.770657, 36.921318>,  <27.024488, 35.811066, 36.967918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419704, 35.770657, 36.921318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020891, 0.660852, -0.750225,
		0.152780, 0.743686, 0.650837,
		0.988039, -0.101023, -0.116501,
		27.716116, 35.740349, 36.886368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278807, 36.433632, 37.021843>,  <27.024488, 35.811066, 36.967918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278807, 36.433632, 37.021843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547766, 36.211060, 36.826591>,  <27.709141, 36.077515, 36.709442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547766, 36.211060, 36.826591>,  <27.278807, 36.433632, 37.021843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547766, 36.211060, 36.826591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070973, 0.607956, -0.790793,
		0.736779, 0.566371, 0.369297,
		0.672398, -0.556429, -0.488126,
		27.749485, 36.044132, 36.680153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582102, 36.900574, 36.760098>,  <27.278807, 36.433632, 37.021843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582102, 36.900574, 36.760098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735653, 36.588764, 36.562115>,  <27.827784, 36.401680, 36.443325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735653, 36.588764, 36.562115>,  <27.582102, 36.900574, 36.760098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735653, 36.588764, 36.562115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126828, 0.575456, -0.807939,
		0.914633, 0.247375, 0.319769,
		0.383877, -0.779523, -0.494957,
		27.850817, 36.354908, 36.413628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274122, 36.985550, 36.503841>,  <27.582102, 36.900574, 36.760098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274122, 36.985550, 36.503841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.127865, 36.703030, 36.261372>,  <28.040112, 36.533520, 36.115891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.127865, 36.703030, 36.261372>,  <28.274122, 36.985550, 36.503841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.127865, 36.703030, 36.261372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377675, 0.482660, -0.790190,
		0.850686, -0.517865, 0.090270,
		-0.365642, -0.706297, -0.606177,
		28.018173, 36.491142, 36.079517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887356, 36.742271, 36.013111>,  <28.274122, 36.985550, 36.503841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887356, 36.742271, 36.013111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519564, 36.682888, 35.867500>,  <28.298889, 36.647259, 35.780132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519564, 36.682888, 35.867500>,  <28.887356, 36.742271, 36.013111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519564, 36.682888, 35.867500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264276, 0.452125, -0.851905,
		0.291059, -0.879513, -0.376486,
		-0.919480, -0.148458, -0.364029,
		28.243719, 36.638351, 35.758293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055035, 36.509197, 35.388165>,  <28.887356, 36.742271, 36.013111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055035, 36.509197, 35.388165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664106, 36.581623, 35.344231>,  <28.429550, 36.625076, 35.317871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664106, 36.581623, 35.344231>,  <29.055035, 36.509197, 35.388165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664106, 36.581623, 35.344231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173005, 0.383515, -0.907185,
		-0.122132, -0.905612, -0.406141,
		-0.977319, 0.181061, -0.109836,
		28.370911, 36.635941, 35.311279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779816, 36.262836, 34.588478>,  <29.055035, 36.509197, 35.388165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779816, 36.262836, 34.588478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546255, 36.543339, 34.752090>,  <28.406118, 36.711639, 34.850258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546255, 36.543339, 34.752090>,  <28.779816, 36.262836, 34.588478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546255, 36.543339, 34.752090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140209, 0.583376, -0.800008,
		-0.799627, -0.409775, -0.438955,
		-0.583899, 0.701254, 0.409029,
		28.371086, 36.753716, 34.874798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261705, 36.444775, 34.062397>,  <28.779816, 36.262836, 34.588478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261705, 36.444775, 34.062397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316370, 36.742508, 34.323868>,  <28.349169, 36.921146, 34.480751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316370, 36.742508, 34.323868>,  <28.261705, 36.444775, 34.062397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316370, 36.742508, 34.323868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092968, 0.647317, -0.756530,
		-0.986246, 0.164159, 0.019265,
		0.136662, 0.744334, 0.653675,
		28.357368, 36.965809, 34.519970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925873, 36.990509, 33.773876>,  <28.261705, 36.444775, 34.062397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925873, 36.990509, 33.773876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122723, 37.218559, 34.037018>,  <28.240833, 37.355389, 34.194904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122723, 37.218559, 34.037018>,  <27.925873, 36.990509, 33.773876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122723, 37.218559, 34.037018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038925, 0.769355, -0.637635,
		-0.869654, 0.288189, 0.400810,
		0.492124, 0.570123, 0.657855,
		28.270359, 37.389595, 34.234375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608341, 37.573513, 33.754864>,  <27.925873, 36.990509, 33.773876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608341, 37.573513, 33.754864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963692, 37.669701, 33.911304>,  <28.176903, 37.727413, 34.005169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963692, 37.669701, 33.911304>,  <27.608341, 37.573513, 33.754864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963692, 37.669701, 33.911304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106132, 0.721232, -0.684514,
		-0.446680, 0.649615, 0.615205,
		0.888376, 0.240467, 0.391105,
		28.230206, 37.741840, 34.028637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668484, 38.331928, 33.740074>,  <27.608341, 37.573513, 33.754864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668484, 38.331928, 33.740074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046097, 38.211658, 33.794327>,  <28.272665, 38.139496, 33.826878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046097, 38.211658, 33.794327>,  <27.668484, 38.331928, 33.740074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046097, 38.211658, 33.794327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324324, 0.771141, -0.547865,
		0.060141, 0.561190, 0.825499,
		0.944032, -0.300678, 0.135630,
		28.329306, 38.121456, 33.835014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125992, 38.969650, 33.822300>,  <27.668484, 38.331928, 33.740074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125992, 38.969650, 33.822300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352709, 38.665173, 33.696236>,  <28.488739, 38.482487, 33.620598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352709, 38.665173, 33.696236>,  <28.125992, 38.969650, 33.822300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352709, 38.665173, 33.696236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482792, 0.616856, -0.621611,
		0.667574, 0.200170, 0.717131,
		0.566794, -0.761197, -0.315156,
		28.522747, 38.436813, 33.601688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849684, 39.182362, 33.773937>,  <28.125992, 38.969650, 33.822300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849684, 39.182362, 33.773937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843367, 38.850407, 33.550854>,  <28.839577, 38.651234, 33.417004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843367, 38.850407, 33.550854>,  <28.849684, 39.182362, 33.773937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843367, 38.850407, 33.550854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550351, 0.458467, -0.697798,
		0.834784, -0.317953, 0.449490,
		-0.015791, -0.829888, -0.557707,
		28.838629, 38.601440, 33.383541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352087, 39.308792, 33.238941>,  <28.849684, 39.182362, 33.773937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352087, 39.308792, 33.238941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191290, 38.978897, 33.079838>,  <29.094812, 38.780960, 32.984375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191290, 38.978897, 33.079838>,  <29.352087, 39.308792, 33.238941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191290, 38.978897, 33.079838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283217, 0.301106, -0.910562,
		0.870741, -0.478692, 0.112537,
		-0.401993, -0.824736, -0.397759,
		29.070692, 38.731476, 32.960510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897818, 39.139591, 32.830688>,  <29.352087, 39.308792, 33.238941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897818, 39.139591, 32.830688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540838, 39.007507, 32.707729>,  <29.326651, 38.928257, 32.633953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540838, 39.007507, 32.707729>,  <29.897818, 39.139591, 32.830688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540838, 39.007507, 32.707729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229624, 0.254027, -0.939544,
		0.388337, -0.909081, -0.150882,
		-0.892450, -0.330214, -0.307395,
		29.273104, 38.908443, 32.615509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021433, 38.679394, 32.168159>,  <29.897818, 39.139591, 32.830688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021433, 38.679394, 32.168159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640936, 38.798523, 32.136051>,  <29.412638, 38.869999, 32.116787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640936, 38.798523, 32.136051>,  <30.021433, 38.679394, 32.168159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640936, 38.798523, 32.136051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160621, 0.256112, -0.953209,
		-0.263325, -0.919625, -0.291460,
		-0.951241, 0.297819, -0.080270,
		29.355564, 38.887867, 32.111969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803865, 38.497078, 31.511433>,  <30.021433, 38.679394, 32.168159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803865, 38.497078, 31.511433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528093, 38.767151, 31.616360>,  <29.362629, 38.929195, 31.679316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528093, 38.767151, 31.616360>,  <29.803865, 38.497078, 31.511433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528093, 38.767151, 31.616360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022687, 0.382093, -0.923845,
		-0.723995, -0.630978, -0.278745,
		-0.689432, 0.675183, 0.262319,
		29.321264, 38.969707, 31.695055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287224, 38.539837, 31.005693>,  <29.803865, 38.497078, 31.511433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287224, 38.539837, 31.005693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295456, 38.898602, 31.182384>,  <29.300394, 39.113861, 31.288399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295456, 38.898602, 31.182384>,  <29.287224, 38.539837, 31.005693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295456, 38.898602, 31.182384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147527, 0.434259, -0.888625,
		-0.988844, 0.083453, -0.123383,
		0.020578, 0.896914, 0.441726,
		29.301630, 39.167675, 31.314903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891869, 38.962940, 30.662512>,  <29.287224, 38.539837, 31.005693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891869, 38.962940, 30.662512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147360, 39.204571, 30.853142>,  <29.300655, 39.349548, 30.967520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147360, 39.204571, 30.853142>,  <28.891869, 38.962940, 30.662512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147360, 39.204571, 30.853142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005015, 0.616100, -0.787652,
		-0.769417, 0.505486, 0.390490,
		0.638728, 0.604074, 0.476573,
		29.338978, 39.385792, 30.996113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654705, 39.678619, 30.687359>,  <28.891869, 38.962940, 30.662512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654705, 39.678619, 30.687359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052891, 39.663399, 30.722237>,  <29.291801, 39.654266, 30.743164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052891, 39.663399, 30.722237>,  <28.654705, 39.678619, 30.687359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052891, 39.663399, 30.722237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087520, 0.725607, -0.682521,
		-0.037300, 0.687056, 0.725646,
		0.995464, -0.038050, 0.087196,
		29.351530, 39.651985, 30.748396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020231, 40.316177, 30.737356>,  <28.654705, 39.678619, 30.687359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020231, 40.316177, 30.737356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298294, 40.076088, 30.579119>,  <29.465132, 39.932034, 30.484177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298294, 40.076088, 30.579119>,  <29.020231, 40.316177, 30.737356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298294, 40.076088, 30.579119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297227, 0.741054, -0.602075,
		0.654533, 0.300955, 0.693550,
		0.695156, -0.600220, -0.395592,
		29.506842, 39.896023, 30.460442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880665, 41.076614, 30.557558>,  <29.020231, 40.316177, 30.737356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880665, 41.076614, 30.557558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825037, 41.437462, 30.394173>,  <28.791660, 41.653969, 30.296143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825037, 41.437462, 30.394173>,  <28.880665, 41.076614, 30.557558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825037, 41.437462, 30.394173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431849, 0.426431, 0.794772,
		0.891160, -0.065864, -0.448883,
		-0.139071, 0.902119, -0.408462,
		28.783316, 41.708099, 30.271633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441761, 41.609081, 30.513388>,  <28.880665, 41.076614, 30.557558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441761, 41.609081, 30.513388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.116072, 41.824989, 30.598888>,  <28.920658, 41.954536, 30.650188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.116072, 41.824989, 30.598888>,  <29.441761, 41.609081, 30.513388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116072, 41.824989, 30.598888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560499, 0.634936, 0.531694,
		0.151276, 0.552723, -0.819520,
		-0.814222, 0.539773, 0.213750,
		28.871805, 41.986919, 30.663013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387840, 42.364529, 30.214287>,  <29.441761, 41.609081, 30.513388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387840, 42.364529, 30.214287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215063, 42.296730, 30.568619>,  <29.111397, 42.256050, 30.781218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215063, 42.296730, 30.568619>,  <29.387840, 42.364529, 30.214287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215063, 42.296730, 30.568619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621949, 0.655309, 0.428660,
		-0.653149, 0.736098, -0.177636,
		-0.431943, -0.169498, 0.885830,
		29.085480, 42.245880, 30.834368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969339, 42.959412, 30.532280>,  <29.387840, 42.364529, 30.214287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969339, 42.959412, 30.532280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158983, 42.716648, 30.787428>,  <29.272770, 42.570992, 30.940517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158983, 42.716648, 30.787428>,  <28.969339, 42.959412, 30.532280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158983, 42.716648, 30.787428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524335, 0.776618, 0.349195,
		-0.707312, 0.168901, 0.686427,
		0.474112, -0.606908, 0.637872,
		29.301216, 42.534576, 30.978790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819798, 43.315926, 31.156019>,  <28.969339, 42.959412, 30.532280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819798, 43.315926, 31.156019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166971, 43.124039, 31.104544>,  <29.375275, 43.008907, 31.073658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166971, 43.124039, 31.104544>,  <28.819798, 43.315926, 31.156019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166971, 43.124039, 31.104544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489951, 0.784443, 0.380259,
		-0.081469, -0.393091, 0.915883,
		0.867935, -0.479717, -0.128687,
		29.427351, 42.980125, 31.065937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712603, 43.074387, 31.915773>,  <28.819798, 43.315926, 31.156019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712603, 43.074387, 31.915773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066998, 43.193645, 32.057835>,  <29.279634, 43.265202, 32.143070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066998, 43.193645, 32.057835>,  <28.712603, 43.074387, 31.915773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066998, 43.193645, 32.057835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349666, -0.932599, -0.089399,
		0.304562, 0.203391, -0.930524,
		0.885989, 0.298145, 0.355153,
		29.332794, 43.283089, 32.164379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317066, 42.584179, 31.625410>,  <28.712603, 43.074387, 31.915773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317066, 42.584179, 31.625410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468908, 42.793118, 31.930840>,  <29.560015, 42.918480, 32.114098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468908, 42.793118, 31.930840>,  <29.317066, 42.584179, 31.625410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468908, 42.793118, 31.930840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675369, -0.720541, 0.157155,
		0.632277, 0.456039, -0.626302,
		0.379607, 0.522351, 0.763576,
		29.582790, 42.949821, 32.159912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051434, 42.617344, 31.562283>,  <29.317066, 42.584179, 31.625410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051434, 42.617344, 31.562283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971653, 42.645500, 31.953234>,  <29.923784, 42.662395, 32.187805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971653, 42.645500, 31.953234>,  <30.051434, 42.617344, 31.562283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971653, 42.645500, 31.953234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568813, -0.803857, 0.173971,
		0.797916, 0.590643, 0.120293,
		-0.199453, 0.070391, 0.977376,
		29.911818, 42.666618, 32.246445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687872, 42.392246, 31.852266>,  <30.051434, 42.617344, 31.562283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687872, 42.392246, 31.852266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392452, 42.348495, 32.118374>,  <30.215200, 42.322247, 32.278038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392452, 42.348495, 32.118374>,  <30.687872, 42.392246, 31.852266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392452, 42.348495, 32.118374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501447, -0.748699, 0.433590,
		0.450664, 0.653825, 0.607795,
		-0.738548, -0.109374, 0.665270,
		30.170887, 42.315681, 32.317955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058567, 42.381947, 32.487774>,  <30.687872, 42.392246, 31.852266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058567, 42.381947, 32.487774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712517, 42.191837, 32.551868>,  <30.504887, 42.077770, 32.590324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712517, 42.191837, 32.551868>,  <31.058567, 42.381947, 32.487774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712517, 42.191837, 32.551868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495157, -0.758438, 0.423782,
		-0.079881, 0.445967, 0.891477,
		-0.865124, -0.475273, 0.160239,
		30.452980, 42.049255, 32.599941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177105, 42.076046, 33.208389>,  <31.058567, 42.381947, 32.487774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177105, 42.076046, 33.208389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864002, 41.887512, 33.045841>,  <30.676140, 41.774391, 32.948315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864002, 41.887512, 33.045841>,  <31.177105, 42.076046, 33.208389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864002, 41.887512, 33.045841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102296, -0.741548, 0.663056,
		-0.613863, 0.477442, 0.628667,
		-0.782757, -0.471335, -0.406368,
		30.629175, 41.746113, 32.923931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992983, 41.558834, 33.582371>,  <31.177105, 42.076046, 33.208389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992983, 41.558834, 33.582371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698700, 41.393333, 33.367878>,  <30.522131, 41.294033, 33.239182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698700, 41.393333, 33.367878>,  <30.992983, 41.558834, 33.582371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698700, 41.393333, 33.367878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206486, -0.891045, 0.404230,
		-0.645059, 0.186670, 0.740981,
		-0.735706, -0.413754, -0.536232,
		30.477989, 41.269207, 33.207008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567995, 41.198448, 34.074913>,  <30.992983, 41.558834, 33.582371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567995, 41.198448, 34.074913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567110, 41.036510, 33.709160>,  <30.566578, 40.939346, 33.489708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567110, 41.036510, 33.709160>,  <30.567995, 41.198448, 34.074913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567110, 41.036510, 33.709160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220170, -0.892143, 0.394469,
		-0.975459, -0.200446, 0.091110,
		-0.002214, -0.404848, -0.914381,
		30.566446, 40.915054, 33.434845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142466, 40.654541, 34.115238>,  <30.567995, 41.198448, 34.074913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142466, 40.654541, 34.115238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370693, 40.555458, 33.802036>,  <30.507629, 40.496010, 33.614117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370693, 40.555458, 33.802036>,  <30.142466, 40.654541, 34.115238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370693, 40.555458, 33.802036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260031, -0.849881, 0.458351,
		-0.778995, -0.465126, -0.420505,
		0.570570, -0.247708, -0.783001,
		30.541864, 40.481144, 33.567135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975760, 39.988987, 33.865917>,  <30.142466, 40.654541, 34.115238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975760, 39.988987, 33.865917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351559, 40.038528, 33.738163>,  <30.577038, 40.068253, 33.661510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351559, 40.038528, 33.738163>,  <29.975760, 39.988987, 33.865917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351559, 40.038528, 33.738163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233594, -0.913586, 0.332858,
		-0.250558, -0.387325, -0.887243,
		0.939497, 0.123854, -0.319384,
		30.633408, 40.075684, 33.642349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031281, 39.385830, 33.765488>,  <29.975760, 39.988987, 33.865917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031281, 39.385830, 33.765488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403635, 39.526390, 33.725555>,  <30.627048, 39.610725, 33.701595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403635, 39.526390, 33.725555>,  <30.031281, 39.385830, 33.765488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403635, 39.526390, 33.725555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365303, -0.896896, 0.249260,
		-0.001948, -0.268502, -0.963277,
		0.930886, 0.351403, -0.099832,
		30.682901, 39.631809, 33.695606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334330, 38.872395, 33.458435>,  <30.031281, 39.385830, 33.765488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334330, 38.872395, 33.458435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630997, 39.087788, 33.618416>,  <30.808996, 39.217026, 33.714405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630997, 39.087788, 33.618416>,  <30.334330, 38.872395, 33.458435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630997, 39.087788, 33.618416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430902, -0.839444, 0.331147,
		0.514058, -0.073259, -0.854621,
		0.741666, 0.538487, 0.399955,
		30.853497, 39.249332, 33.738403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923101, 38.536633, 33.258644>,  <30.334330, 38.872395, 33.458435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923101, 38.536633, 33.258644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016417, 38.727592, 33.597504>,  <31.072407, 38.842167, 33.800819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016417, 38.727592, 33.597504>,  <30.923101, 38.536633, 33.258644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016417, 38.727592, 33.597504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163709, -0.878039, 0.449718,
		0.958528, 0.033772, -0.282992,
		0.233290, 0.477396, 0.847153,
		31.086403, 38.870811, 33.851650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476999, 38.166336, 33.489864>,  <30.923101, 38.536633, 33.258644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476999, 38.166336, 33.489864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361065, 38.379673, 33.807743>,  <31.291504, 38.507675, 33.998470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361065, 38.379673, 33.807743>,  <31.476999, 38.166336, 33.489864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361065, 38.379673, 33.807743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213008, -0.773564, 0.596846,
		0.933072, 0.342264, 0.110599,
		-0.289834, 0.533342, 0.794696,
		31.274115, 38.539677, 34.046150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902487, 37.909355, 34.128975>,  <31.476999, 38.166336, 33.489864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902487, 37.909355, 34.128975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593708, 38.087578, 34.310337>,  <31.408442, 38.194511, 34.419155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593708, 38.087578, 34.310337>,  <31.902487, 37.909355, 34.128975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593708, 38.087578, 34.310337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076913, -0.773482, 0.629135,
		0.631016, 0.450786, 0.631356,
		-0.771948, 0.445554, 0.453408,
		31.362123, 38.221245, 34.446358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007725, 37.788170, 34.854195>,  <31.902487, 37.909355, 34.128975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007725, 37.788170, 34.854195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619761, 37.872070, 34.804749>,  <31.386982, 37.922409, 34.775082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619761, 37.872070, 34.804749>,  <32.007725, 37.788170, 34.854195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619761, 37.872070, 34.804749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242831, -0.796867, 0.553206,
		0.017533, 0.566576, 0.823823,
		-0.969910, 0.209750, -0.123611,
		31.328787, 37.934994, 34.767666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658966, 37.904755, 35.508789>,  <32.007725, 37.788170, 34.854195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658966, 37.904755, 35.508789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367033, 37.780685, 35.265106>,  <31.191874, 37.706245, 35.118896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367033, 37.780685, 35.265106>,  <31.658966, 37.904755, 35.508789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367033, 37.780685, 35.265106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290308, -0.666181, 0.686967,
		-0.618922, 0.678231, 0.396156,
		-0.729834, -0.310172, -0.609210,
		31.148083, 37.687634, 35.082344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125381, 37.720806, 35.945793>,  <31.658966, 37.904755, 35.508789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125381, 37.720806, 35.945793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998104, 37.551178, 35.606636>,  <30.921738, 37.449402, 35.403141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998104, 37.551178, 35.606636>,  <31.125381, 37.720806, 35.945793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998104, 37.551178, 35.606636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422185, -0.737406, 0.527249,
		-0.848829, 0.525735, 0.055604,
		-0.318196, -0.424069, -0.847889,
		30.902645, 37.423958, 35.352268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478750, 37.490391, 36.091660>,  <31.125381, 37.720806, 35.945793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478750, 37.490391, 36.091660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591461, 37.276531, 35.772976>,  <30.659088, 37.148216, 35.581764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591461, 37.276531, 35.772976>,  <30.478750, 37.490391, 36.091660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591461, 37.276531, 35.772976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377081, -0.825251, 0.420441,
		-0.882276, 0.181953, -0.434146,
		0.281779, -0.534653, -0.796710,
		30.675995, 37.116135, 35.533962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875143, 37.079559, 35.883541>,  <30.478750, 37.490391, 36.091660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875143, 37.079559, 35.883541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196102, 36.882027, 35.749504>,  <30.388678, 36.763508, 35.669083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196102, 36.882027, 35.749504>,  <29.875143, 37.079559, 35.883541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196102, 36.882027, 35.749504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301185, -0.819834, 0.486991,
		-0.515212, -0.289836, -0.806568,
		0.802399, -0.493829, -0.335094,
		30.436821, 36.733879, 35.648975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633602, 36.415611, 35.867386>,  <29.875143, 37.079559, 35.883541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633602, 36.415611, 35.867386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029797, 36.361492, 35.857311>,  <30.267513, 36.329021, 35.851265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029797, 36.361492, 35.857311>,  <29.633602, 36.415611, 35.867386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029797, 36.361492, 35.857311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091565, -0.784489, 0.613346,
		-0.102747, -0.605203, -0.789412,
		0.990484, -0.135302, -0.025189,
		30.326942, 36.320900, 35.849754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709673, 35.721016, 35.609940>,  <29.633602, 36.415611, 35.867386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709673, 35.721016, 35.609940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039017, 35.841515, 35.802326>,  <30.236624, 35.913815, 35.917759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039017, 35.841515, 35.802326>,  <29.709673, 35.721016, 35.609940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039017, 35.841515, 35.802326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047560, -0.881131, 0.470474,
		0.565524, -0.364495, -0.739815,
		0.823359, 0.301250, 0.480966,
		30.286024, 35.931889, 35.946617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160883, 35.144711, 35.493126>,  <29.709673, 35.721016, 35.609940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160883, 35.144711, 35.493126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282274, 35.348042, 35.815495>,  <30.355110, 35.470039, 36.008915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282274, 35.348042, 35.815495>,  <30.160883, 35.144711, 35.493126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282274, 35.348042, 35.815495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090566, -0.857368, 0.506674,
		0.948524, -0.080776, -0.306230,
		0.303479, 0.508327, 0.805918,
		30.373318, 35.500538, 36.057270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756756, 34.845867, 35.799492>,  <30.160883, 35.144711, 35.493126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756756, 34.845867, 35.799492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578972, 35.058258, 36.088081>,  <30.472301, 35.185692, 36.261234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578972, 35.058258, 36.088081>,  <30.756756, 34.845867, 35.799492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578972, 35.058258, 36.088081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027759, -0.796844, 0.603548,
		0.895369, 0.288280, 0.339425,
		-0.444459, 0.530975, 0.721471,
		30.445635, 35.217552, 36.304523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925760, 34.426960, 36.345806>,  <30.756756, 34.845867, 35.799492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925760, 34.426960, 36.345806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674337, 34.669514, 36.540627>,  <30.523483, 34.815044, 36.657516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674337, 34.669514, 36.540627>,  <30.925760, 34.426960, 36.345806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674337, 34.669514, 36.540627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224929, -0.741180, 0.632502,
		0.744529, 0.288012, 0.602268,
		-0.628557, 0.606384, 0.487047,
		30.485771, 34.851429, 36.686741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991386, 34.563110, 37.043098>,  <30.925760, 34.426960, 36.345806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991386, 34.563110, 37.043098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606461, 34.556896, 36.934502>,  <30.375505, 34.553169, 36.869343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606461, 34.556896, 36.934502>,  <30.991386, 34.563110, 37.043098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606461, 34.556896, 36.934502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164315, -0.762289, 0.626032,
		-0.216679, 0.647051, 0.731010,
		-0.962315, -0.015532, -0.271492,
		30.317766, 34.552238, 36.853054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443092, 35.237148, 37.314972>,  <30.991386, 34.563110, 37.043098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443092, 35.237148, 37.314972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320328, 35.220917, 36.934624>,  <31.246670, 35.211178, 36.706413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320328, 35.220917, 36.934624>,  <31.443092, 35.237148, 37.314972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320328, 35.220917, 36.934624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951431, -0.038462, -0.305449,
		-0.024177, -0.998436, 0.050414,
		-0.306910, -0.040580, -0.950873,
		31.228254, 35.208744, 36.649361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046291, 35.147846, 36.931263>,  <31.443092, 35.237148, 37.314972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046291, 35.147846, 36.931263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813881, 35.155670, 36.605804>,  <31.674435, 35.160366, 36.410530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813881, 35.155670, 36.605804>,  <32.046291, 35.147846, 36.931263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813881, 35.155670, 36.605804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811483, 0.090663, -0.577300,
		0.062475, -0.995689, -0.068551,
		-0.581027, 0.019561, -0.813649,
		31.639572, 35.161537, 36.361710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345394, 34.843346, 36.311504>,  <32.046291, 35.147846, 36.931263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345394, 34.843346, 36.311504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091320, 35.129124, 36.194138>,  <31.938875, 35.300591, 36.123718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091320, 35.129124, 36.194138>,  <32.345394, 34.843346, 36.311504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091320, 35.129124, 36.194138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698145, 0.368621, -0.613770,
		-0.330347, -0.594710, -0.732933,
		-0.635189, 0.714450, -0.293421,
		31.900763, 35.343460, 36.106110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378361, 34.965401, 35.584991>,  <32.345394, 34.843346, 36.311504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378361, 34.965401, 35.584991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214928, 35.311607, 35.700890>,  <32.116867, 35.519329, 35.770428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214928, 35.311607, 35.700890>,  <32.378361, 34.965401, 35.584991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214928, 35.311607, 35.700890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684318, 0.500551, -0.530243,
		-0.603965, -0.018367, -0.796799,
		-0.408578, 0.865512, 0.289746,
		32.092354, 35.571262, 35.787815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915806, 35.327831, 35.287148>,  <32.378361, 34.965401, 35.584991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915806, 35.327831, 35.287148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639900, 35.554379, 35.467571>,  <32.474358, 35.690308, 35.575825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639900, 35.554379, 35.467571>,  <32.915806, 35.327831, 35.287148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639900, 35.554379, 35.467571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542032, 0.816957, -0.196933,
		-0.480034, 0.108652, -0.870495,
		-0.689760, 0.566371, 0.451060,
		32.432972, 35.724289, 35.602890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253517, 35.979443, 35.592583>,  <32.915806, 35.327831, 35.287148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253517, 35.979443, 35.592583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565029, 36.029495, 35.838459>,  <33.751938, 36.059528, 35.985985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565029, 36.029495, 35.838459>,  <33.253517, 35.979443, 35.592583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565029, 36.029495, 35.838459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605999, -0.103100, 0.788756,
		0.162076, -0.986768, -0.004461,
		0.778779, 0.125135, 0.614691,
		33.798664, 36.067036, 36.022865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293251, 35.520306, 36.292263>,  <33.253517, 35.979443, 35.592583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293251, 35.520306, 36.292263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561409, 35.801411, 36.387508>,  <33.722305, 35.970074, 36.444656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561409, 35.801411, 36.387508>,  <33.293251, 35.520306, 36.292263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561409, 35.801411, 36.387508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287658, -0.049662, 0.956445,
		0.683976, -0.709692, 0.168861,
		0.670395, 0.702760, 0.238116,
		33.762527, 36.012238, 36.458942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585396, 35.329685, 36.925484>,  <33.293251, 35.520306, 36.292263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585396, 35.329685, 36.925484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687748, 35.716370, 36.925827>,  <33.749157, 35.948380, 36.926033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687748, 35.716370, 36.925827>,  <33.585396, 35.329685, 36.925484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687748, 35.716370, 36.925827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172645, 0.044821, 0.983964,
		0.951168, -0.251921, 0.178366,
		0.255876, 0.966709, 0.000860,
		33.764511, 36.006382, 36.926086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835358, 35.442554, 37.629505>,  <33.585396, 35.329685, 36.925484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835358, 35.442554, 37.629505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779800, 35.817657, 37.502182>,  <33.746468, 36.042721, 37.425789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779800, 35.817657, 37.502182>,  <33.835358, 35.442554, 37.629505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779800, 35.817657, 37.502182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058636, 0.313070, 0.947918,
		0.988570, 0.150324, 0.011503,
		-0.138894, 0.937758, -0.318306,
		33.738132, 36.098984, 37.406689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275703, 35.872906, 37.919754>,  <33.835358, 35.442554, 37.629505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275703, 35.872906, 37.919754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972260, 36.118153, 37.831566>,  <33.790195, 36.265301, 37.778652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972260, 36.118153, 37.831566>,  <34.275703, 35.872906, 37.919754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972260, 36.118153, 37.831566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060178, 0.271002, 0.960696,
		0.648765, 0.742056, -0.168688,
		-0.758605, 0.613115, -0.220472,
		33.744678, 36.302086, 37.765423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453522, 36.508484, 38.306587>,  <34.275703, 35.872906, 37.919754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453522, 36.508484, 38.306587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066696, 36.514050, 38.204922>,  <33.834602, 36.517391, 38.143925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066696, 36.514050, 38.204922>,  <34.453522, 36.508484, 38.306587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066696, 36.514050, 38.204922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234498, 0.339653, 0.910849,
		0.099004, 0.940448, -0.325201,
		-0.967062, 0.013918, -0.254160,
		33.776577, 36.518227, 38.128674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240990, 37.027359, 38.711895>,  <34.453522, 36.508484, 38.306587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240990, 37.027359, 38.711895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898407, 36.863605, 38.586105>,  <33.692860, 36.765354, 38.510632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898407, 36.863605, 38.586105>,  <34.240990, 37.027359, 38.711895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898407, 36.863605, 38.586105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426768, 0.218752, 0.877506,
		-0.290444, 0.885750, -0.362063,
		-0.856453, -0.409383, -0.314474,
		33.641472, 36.740791, 38.491764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693897, 37.452408, 38.903774>,  <34.240990, 37.027359, 38.711895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693897, 37.452408, 38.903774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541809, 37.086159, 38.851501>,  <33.450558, 36.866409, 38.820137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541809, 37.086159, 38.851501>,  <33.693897, 37.452408, 38.903774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541809, 37.086159, 38.851501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632229, 0.154170, 0.759288,
		-0.675071, 0.371315, -0.637498,
		-0.380218, -0.915619, -0.130680,
		33.427742, 36.811474, 38.812298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006817, 37.534443, 38.923058>,  <33.693897, 37.452408, 38.903774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006817, 37.534443, 38.923058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082813, 37.159325, 39.039291>,  <33.128410, 36.934254, 39.109032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082813, 37.159325, 39.039291>,  <33.006817, 37.534443, 38.923058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082813, 37.159325, 39.039291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521479, 0.154383, 0.839182,
		-0.831845, -0.310968, -0.459711,
		0.189987, -0.937798, 0.290586,
		33.139809, 36.877987, 39.126469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429459, 37.303688, 39.323528>,  <33.006817, 37.534443, 38.923058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429459, 37.303688, 39.323528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711491, 37.033821, 39.410866>,  <32.880711, 36.871899, 39.463268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711491, 37.033821, 39.410866>,  <32.429459, 37.303688, 39.323528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711491, 37.033821, 39.410866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301147, -0.006120, 0.953558,
		-0.642003, -0.738092, -0.207490,
		0.705084, -0.674672, 0.218345,
		32.923016, 36.831421, 39.476368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133320, 36.648685, 39.669785>,  <32.429459, 37.303688, 39.323528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133320, 36.648685, 39.669785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522526, 36.646191, 39.762043>,  <32.756050, 36.644695, 39.817398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522526, 36.646191, 39.762043>,  <32.133320, 36.648685, 39.669785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522526, 36.646191, 39.762043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227538, -0.191572, 0.954739,
		0.038233, -0.981459, -0.187821,
		0.973018, -0.006234, 0.230643,
		32.814430, 36.644321, 39.831238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326435, 35.953770, 39.936172>,  <32.133320, 36.648685, 39.669785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326435, 35.953770, 39.936172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601170, 36.204742, 40.082916>,  <32.766010, 36.355328, 40.170963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601170, 36.204742, 40.082916>,  <32.326435, 35.953770, 39.936172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601170, 36.204742, 40.082916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110958, -0.408321, 0.906070,
		0.718295, -0.663025, -0.210831,
		0.686834, 0.627432, 0.366863,
		32.807220, 36.392971, 40.192974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524208, 35.668926, 40.518387>,  <32.326435, 35.953770, 39.936172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524208, 35.668926, 40.518387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731037, 36.003563, 40.590775>,  <32.855133, 36.204346, 40.634205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731037, 36.003563, 40.590775>,  <32.524208, 35.668926, 40.518387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731037, 36.003563, 40.590775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012720, -0.218908, 0.975663,
		0.855850, -0.502183, -0.123831,
		0.517068, 0.836595, 0.180965,
		32.886158, 36.254543, 40.645065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136715, 35.468575, 40.857941>,  <32.524208, 35.668926, 40.518387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136715, 35.468575, 40.857941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107716, 35.853302, 40.963501>,  <33.090317, 36.084141, 41.026836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107716, 35.853302, 40.963501>,  <33.136715, 35.468575, 40.857941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107716, 35.853302, 40.963501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043214, -0.261315, 0.964286,
		0.996432, 0.081316, -0.022618,
		-0.072501, 0.961822, 0.263897,
		33.085964, 36.141850, 41.042671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673836, 35.546745, 41.415035>,  <33.136715, 35.468575, 40.857941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673836, 35.546745, 41.415035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397324, 35.835178, 41.433674>,  <33.231419, 36.008240, 41.444859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397324, 35.835178, 41.433674>,  <33.673836, 35.546745, 41.415035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397324, 35.835178, 41.433674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009147, -0.073213, 0.997274,
		0.722530, 0.688968, 0.057206,
		-0.691279, 0.721084, 0.046597,
		33.189941, 36.051502, 41.447651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925568, 35.992359, 41.869469>,  <33.673836, 35.546745, 41.415035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925568, 35.992359, 41.869469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530064, 36.052139, 41.871082>,  <33.292763, 36.088009, 41.872051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530064, 36.052139, 41.871082>,  <33.925568, 35.992359, 41.869469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530064, 36.052139, 41.871082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032962, -0.244211, 0.969162,
		0.145828, 0.958136, 0.246393,
		-0.988761, 0.149453, 0.004031,
		33.233437, 36.096973, 41.872292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786297, 36.197243, 42.494873>,  <33.925568, 35.992359, 41.869469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786297, 36.197243, 42.494873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409115, 36.126366, 42.382133>,  <33.182808, 36.083839, 42.314487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409115, 36.126366, 42.382133>,  <33.786297, 36.197243, 42.494873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409115, 36.126366, 42.382133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255366, -0.158213, 0.953812,
		-0.213605, 0.971375, 0.103938,
		-0.942953, -0.177197, -0.281852,
		33.126228, 36.073208, 42.297577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384144, 36.640717, 42.852253>,  <33.786297, 36.197243, 42.494873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384144, 36.640717, 42.852253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165642, 36.321671, 42.749950>,  <33.034538, 36.130245, 42.688568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165642, 36.321671, 42.749950>,  <33.384144, 36.640717, 42.852253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165642, 36.321671, 42.749950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384921, -0.032150, 0.922389,
		-0.743933, 0.602312, -0.289456,
		-0.546260, -0.797613, -0.255760,
		33.001762, 36.082386, 42.673222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630424, 36.677650, 43.072475>,  <33.384144, 36.640717, 42.852253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630424, 36.677650, 43.072475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665512, 36.281990, 43.025341>,  <32.686565, 36.044594, 42.997059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665512, 36.281990, 43.025341>,  <32.630424, 36.677650, 43.072475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665512, 36.281990, 43.025341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418266, -0.143933, 0.896848,
		-0.904079, -0.029381, -0.426354,
		0.087717, -0.989151, -0.117837,
		32.691826, 35.985245, 42.989990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022728, 36.340542, 43.253777>,  <32.630424, 36.677650, 43.072475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022728, 36.340542, 43.253777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264717, 36.023064, 43.279259>,  <32.409912, 35.832577, 43.294548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264717, 36.023064, 43.279259>,  <32.022728, 36.340542, 43.253777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264717, 36.023064, 43.279259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454347, -0.278391, 0.846208,
		-0.653894, -0.540878, -0.529031,
		0.604972, -0.793694, 0.063708,
		32.446209, 35.784954, 43.298370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614695, 35.740402, 43.521301>,  <32.022728, 36.340542, 43.253777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614695, 35.740402, 43.521301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999113, 35.646278, 43.579296>,  <32.229763, 35.589806, 43.614094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999113, 35.646278, 43.579296>,  <31.614695, 35.740402, 43.521301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999113, 35.646278, 43.579296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179182, -0.131023, 0.975052,
		-0.210442, -0.963049, -0.168082,
		0.961045, -0.235309, 0.144988,
		32.287426, 35.575687, 43.622791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660330, 35.131603, 43.914005>,  <31.614695, 35.740402, 43.521301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660330, 35.131603, 43.914005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004154, 35.325211, 43.979580>,  <32.210449, 35.441376, 44.018925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004154, 35.325211, 43.979580>,  <31.660330, 35.131603, 43.914005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004154, 35.325211, 43.979580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102571, -0.150867, 0.983218,
		0.500634, -0.861952, -0.080033,
		0.859561, 0.484023, 0.163940,
		32.262024, 35.470417, 44.028763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912277, 34.783329, 44.518856>,  <31.660330, 35.131603, 43.914005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912277, 34.783329, 44.518856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151295, 35.103848, 44.530682>,  <32.294704, 35.296158, 44.537777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151295, 35.103848, 44.530682>,  <31.912277, 34.783329, 44.518856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151295, 35.103848, 44.530682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112521, -0.120307, 0.986339,
		0.793904, -0.586052, -0.162051,
		0.597541, 0.801293, 0.029569,
		32.330559, 35.344234, 44.539551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537750, 34.689026, 44.966656>,  <31.912277, 34.783329, 44.518856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537750, 34.689026, 44.966656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500824, 35.085915, 44.933235>,  <32.478668, 35.324047, 44.913181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500824, 35.085915, 44.933235>,  <32.537750, 34.689026, 44.966656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500824, 35.085915, 44.933235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291304, 0.107151, 0.950611,
		0.952166, 0.063419, -0.298929,
		-0.092318, 0.992218, -0.083551,
		32.473129, 35.383579, 44.908169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073845, 34.982601, 45.335716>,  <32.537750, 34.689026, 44.966656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073845, 34.982601, 45.335716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816170, 35.287621, 45.311886>,  <32.661564, 35.470631, 45.297588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816170, 35.287621, 45.311886>,  <33.073845, 34.982601, 45.335716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816170, 35.287621, 45.311886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214338, 0.254736, 0.942957,
		0.734225, 0.594669, -0.327540,
		-0.644184, 0.762547, -0.059573,
		32.622913, 35.516384, 45.294014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354401, 35.601727, 45.676826>,  <33.073845, 34.982601, 45.335716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354401, 35.601727, 45.676826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962547, 35.679428, 45.656532>,  <32.727436, 35.726051, 45.644356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962547, 35.679428, 45.656532>,  <33.354401, 35.601727, 45.676826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962547, 35.679428, 45.656532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032023, 0.098266, 0.994645,
		0.198203, 0.976016, -0.090044,
		-0.979638, 0.194258, -0.050731,
		32.668655, 35.737705, 45.641312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162712, 36.230965, 46.151665>,  <33.354401, 35.601727, 45.676826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162712, 36.230965, 46.151665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829224, 36.017097, 46.096462>,  <32.629131, 35.888779, 46.063339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829224, 36.017097, 46.096462>,  <33.162712, 36.230965, 46.151665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829224, 36.017097, 46.096462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260516, 0.160489, 0.952037,
		-0.486873, 0.829685, -0.273091,
		-0.833719, -0.534665, -0.138008,
		32.579109, 35.856697, 46.055061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610706, 36.743809, 46.400692>,  <33.162712, 36.230965, 46.151665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610706, 36.743809, 46.400692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453499, 36.375999, 46.401924>,  <32.359173, 36.155312, 46.402664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453499, 36.375999, 46.401924>,  <32.610706, 36.743809, 46.400692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453499, 36.375999, 46.401924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414531, 0.180161, 0.892024,
		-0.820793, 0.349307, -0.451978,
		-0.393019, -0.919525, 0.003077,
		32.335594, 36.100143, 46.402847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861275, 36.697506, 46.586033>,  <32.610706, 36.743809, 46.400692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861275, 36.697506, 46.586033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988087, 36.330643, 46.682632>,  <32.064175, 36.110527, 46.740593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988087, 36.330643, 46.682632>,  <31.861275, 36.697506, 46.586033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988087, 36.330643, 46.682632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568851, 0.019863, 0.822201,
		-0.758882, -0.398036, -0.515427,
		0.317028, -0.917155, 0.241496,
		32.083195, 36.055496, 46.755081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231657, 36.354065, 46.870995>,  <31.861275, 36.697506, 46.586033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231657, 36.354065, 46.870995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533916, 36.116386, 46.981209>,  <31.715273, 35.973778, 47.047337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533916, 36.116386, 46.981209>,  <31.231657, 36.354065, 46.870995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533916, 36.116386, 46.981209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388086, -0.067305, 0.919162,
		-0.527622, -0.801496, -0.281460,
		0.755649, -0.594201, 0.275538,
		31.760611, 35.938126, 47.063869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902573, 35.939163, 47.221413>,  <31.231657, 36.354065, 46.870995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902573, 35.939163, 47.221413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277628, 35.879162, 47.346844>,  <31.502661, 35.843163, 47.422104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277628, 35.879162, 47.346844>,  <30.902573, 35.939163, 47.221413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277628, 35.879162, 47.346844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344899, -0.288991, 0.893045,
		-0.043336, -0.945507, -0.322705,
		0.937639, -0.150001, 0.313581,
		31.558920, 35.834160, 47.440918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908844, 35.297871, 47.555992>,  <30.902573, 35.939163, 47.221413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908844, 35.297871, 47.555992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222485, 35.488274, 47.715294>,  <31.410669, 35.602516, 47.810875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222485, 35.488274, 47.715294>,  <30.908844, 35.297871, 47.555992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222485, 35.488274, 47.715294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267039, -0.320499, 0.908830,
		0.560249, -0.818962, -0.124191,
		0.784100, 0.476007, 0.398253,
		31.457714, 35.631077, 47.834770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276146, 34.789360, 47.928860>,  <30.908844, 35.297871, 47.555992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276146, 34.789360, 47.928860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363768, 35.149170, 48.080048>,  <31.416340, 35.365055, 48.170761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363768, 35.149170, 48.080048>,  <31.276146, 34.789360, 47.928860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363768, 35.149170, 48.080048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395937, -0.272103, 0.877037,
		0.891768, -0.341771, 0.296551,
		0.219053, 0.899529, 0.377973,
		31.429483, 35.419029, 48.193439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095476, 34.651302, 48.527451>,  <31.276146, 34.789360, 47.928860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095476, 34.651302, 48.527451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206205, 35.032219, 48.578857>,  <31.272642, 35.260769, 48.609703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206205, 35.032219, 48.578857>,  <31.095476, 34.651302, 48.527451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206205, 35.032219, 48.578857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378472, -0.014884, 0.925493,
		0.883248, -0.304839, 0.356294,
		0.276823, 0.952287, 0.128520,
		31.289253, 35.317905, 48.617413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620506, 34.765934, 49.073997>,  <31.095476, 34.651302, 48.527451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620506, 34.765934, 49.073997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352497, 35.060219, 49.034424>,  <31.191690, 35.236790, 49.010677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352497, 35.060219, 49.034424>,  <31.620506, 34.765934, 49.073997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352497, 35.060219, 49.034424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382020, -0.227457, 0.895725,
		0.636496, 0.637954, 0.433460,
		-0.670025, 0.735716, -0.098936,
		31.151489, 35.280933, 49.004742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734819, 35.306126, 49.524754>,  <31.620506, 34.765934, 49.073997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734819, 35.306126, 49.524754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343357, 35.260303, 49.456509>,  <31.108480, 35.232811, 49.415562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343357, 35.260303, 49.456509>,  <31.734819, 35.306126, 49.524754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343357, 35.260303, 49.456509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159441, -0.100551, 0.982073,
		-0.129657, 0.988315, 0.080140,
		-0.978656, -0.114555, -0.170615,
		31.049761, 35.225937, 49.405323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377840, 35.819057, 49.839809>,  <31.734819, 35.306126, 49.524754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377840, 35.819057, 49.839809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142336, 35.498096, 49.800797>,  <31.001034, 35.305519, 49.777390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142336, 35.498096, 49.800797>,  <31.377840, 35.819057, 49.839809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142336, 35.498096, 49.800797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010385, -0.113144, 0.993524,
		-0.808242, 0.585959, 0.058282,
		-0.588758, -0.802403, -0.097534,
		30.965708, 35.257374, 49.771538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742912, 35.900318, 50.259998>,  <31.377840, 35.819057, 49.839809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742912, 35.900318, 50.259998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758272, 35.503422, 50.212692>,  <30.767488, 35.265285, 50.184307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758272, 35.503422, 50.212692>,  <30.742912, 35.900318, 50.259998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758272, 35.503422, 50.212692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158907, -0.110783, 0.981059,
		-0.986547, -0.056464, 0.153420,
		0.038398, -0.992239, -0.118265,
		30.769793, 35.205750, 50.177212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255159, 35.518646, 50.806080>,  <30.742912, 35.900318, 50.259998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255159, 35.518646, 50.806080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534559, 35.261929, 50.679466>,  <30.702200, 35.107899, 50.603500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534559, 35.261929, 50.679466>,  <30.255159, 35.518646, 50.806080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534559, 35.261929, 50.679466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278278, -0.163902, 0.946413,
		-0.659286, -0.749153, 0.064113,
		0.698500, -0.641798, -0.316531,
		30.744110, 35.069389, 50.584507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098530, 34.903225, 51.200672>,  <30.255159, 35.518646, 50.806080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098530, 34.903225, 51.200672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476444, 34.895206, 51.069839>,  <30.703192, 34.890396, 50.991341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476444, 34.895206, 51.069839>,  <30.098530, 34.903225, 51.200672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476444, 34.895206, 51.069839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311588, -0.254094, 0.915614,
		-0.101463, -0.966972, -0.233818,
		0.944785, -0.020047, -0.327078,
		30.759880, 34.889191, 50.971718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548708, 34.192841, 51.268860>,  <30.098530, 34.903225, 51.200672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548708, 34.192841, 51.268860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764479, 34.529465, 51.280128>,  <30.893942, 34.731438, 51.286888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764479, 34.529465, 51.280128>,  <30.548708, 34.192841, 51.268860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764479, 34.529465, 51.280128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283199, -0.212830, 0.935148,
		0.792980, -0.496465, -0.353135,
		0.539426, 0.841561, 0.028171,
		30.926306, 34.781933, 51.288578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359991, 34.179573, 51.211311>,  <30.548708, 34.192841, 51.268860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359991, 34.179573, 51.211311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517221, 34.156853, 51.578411>,  <31.611559, 34.143219, 51.798672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517221, 34.156853, 51.578411>,  <31.359991, 34.179573, 51.211311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517221, 34.156853, 51.578411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911402, 0.108157, 0.397049,
		-0.121815, -0.992510, -0.009256,
		0.393074, -0.056802, 0.917751,
		31.635143, 34.139812, 51.853737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131294, 33.577389, 51.677921>,  <31.359991, 34.179573, 51.211311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131294, 33.577389, 51.677921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230463, 33.879494, 51.920612>,  <31.289965, 34.060757, 52.066227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230463, 33.879494, 51.920612>,  <31.131294, 33.577389, 51.677921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230463, 33.879494, 51.920612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929699, 0.009394, 0.368200,
		0.272386, -0.655360, 0.704492,
		0.247922, 0.755258, 0.606729,
		31.304840, 34.106071, 52.102631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611996, 33.467640, 52.099331>,  <31.131294, 33.577389, 51.677921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611996, 33.467640, 52.099331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762129, 33.830620, 52.174873>,  <30.852209, 34.048409, 52.220200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762129, 33.830620, 52.174873>,  <30.611996, 33.467640, 52.099331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762129, 33.830620, 52.174873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889718, 0.295604, 0.347878,
		0.259855, -0.298596, 0.918322,
		0.375335, 0.907446, 0.188852,
		30.874729, 34.102852, 52.231529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369480, 33.719505, 52.821079>,  <30.611996, 33.467640, 52.099331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369480, 33.719505, 52.821079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432346, 34.008087, 52.551323>,  <30.470066, 34.181236, 52.389469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432346, 34.008087, 52.551323>,  <30.369480, 33.719505, 52.821079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432346, 34.008087, 52.551323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863810, 0.431418, 0.260212,
		0.478676, 0.541652, 0.691001,
		0.157166, 0.721451, -0.674394,
		30.479496, 34.224522, 52.349003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304325, 34.098923, 53.541500>,  <30.369480, 33.719505, 52.821079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304325, 34.098923, 53.541500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520645, 34.416611, 53.652321>,  <30.650436, 34.607224, 53.718815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520645, 34.416611, 53.652321>,  <30.304325, 34.098923, 53.541500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520645, 34.416611, 53.652321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690595, -0.231184, -0.685297,
		-0.480225, 0.561938, -0.673506,
		0.540798, 0.794217, 0.277051,
		30.682884, 34.654877, 53.735435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214014, 34.638649, 53.010559>,  <30.304325, 34.098923, 53.541500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214014, 34.638649, 53.010559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560993, 34.595615, 53.204861>,  <30.769180, 34.569798, 53.321442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560993, 34.595615, 53.204861>,  <30.214014, 34.638649, 53.010559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560993, 34.595615, 53.204861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417678, -0.373016, -0.828495,
		0.270325, 0.921567, -0.278638,
		0.867450, -0.107582, 0.485754,
		30.821228, 34.563339, 53.350586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783184, 35.048973, 52.675320>,  <30.214014, 34.638649, 53.010559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783184, 35.048973, 52.675320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913805, 34.740379, 52.893742>,  <30.992178, 34.555222, 53.024796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913805, 34.740379, 52.893742>,  <30.783184, 35.048973, 52.675320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913805, 34.740379, 52.893742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442491, -0.385725, -0.809579,
		0.835205, 0.505993, 0.215416,
		0.326550, -0.771484, 0.546056,
		31.011770, 34.508934, 53.057560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525749, 35.071053, 52.769337>,  <30.783184, 35.048973, 52.675320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525749, 35.071053, 52.769337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404688, 34.689983, 52.757896>,  <31.332052, 34.461342, 52.751034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404688, 34.689983, 52.757896>,  <31.525749, 35.071053, 52.769337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404688, 34.689983, 52.757896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556677, -0.152334, -0.816643,
		0.773636, -0.263078, 0.576434,
		-0.302651, -0.952672, -0.028598,
		31.313892, 34.404182, 52.749317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086956, 34.541546, 52.900757>,  <31.525749, 35.071053, 52.769337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086956, 34.541546, 52.900757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794043, 34.356441, 52.700912>,  <31.618296, 34.245377, 52.581005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794043, 34.356441, 52.700912>,  <32.086956, 34.541546, 52.900757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794043, 34.356441, 52.700912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678379, -0.431375, -0.594741,
		0.059705, -0.774445, 0.629818,
		-0.732282, -0.462764, -0.499612,
		31.574358, 34.217613, 52.551029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178844, 33.835903, 52.979179>,  <32.086956, 34.541546, 52.900757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178844, 33.835903, 52.979179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997192, 33.941891, 52.638931>,  <31.888201, 34.005486, 52.434784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997192, 33.941891, 52.638931>,  <32.178844, 33.835903, 52.979179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997192, 33.941891, 52.638931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767049, -0.369392, -0.524581,
		-0.453212, -0.890696, -0.035494,
		-0.454131, 0.264972, -0.850620,
		31.860952, 34.021381, 52.383743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372036, 33.301521, 52.496559>,  <32.178844, 33.835903, 52.979179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372036, 33.301521, 52.496559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262634, 33.613819, 52.271835>,  <32.196995, 33.801197, 52.137001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262634, 33.613819, 52.271835>,  <32.372036, 33.301521, 52.496559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262634, 33.613819, 52.271835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581010, -0.331387, -0.743378,
		-0.766567, -0.529731, -0.362988,
		-0.273501, 0.780749, -0.561809,
		32.180584, 33.848045, 52.103294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203949, 32.993267, 51.846954>,  <32.372036, 33.301521, 52.496559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203949, 32.993267, 51.846954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300026, 33.379787, 51.809925>,  <32.357674, 33.611698, 51.787708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300026, 33.379787, 51.809925>,  <32.203949, 32.993267, 51.846954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300026, 33.379787, 51.809925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678284, -0.235291, -0.696110,
		-0.694432, 0.104413, -0.711942,
		0.240197, 0.966300, -0.092572,
		32.372086, 33.669678, 51.782154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227779, 33.036800, 51.105309>,  <32.203949, 32.993267, 51.846954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227779, 33.036800, 51.105309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398064, 33.382790, 51.211590>,  <32.500233, 33.590382, 51.275360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398064, 33.382790, 51.211590>,  <32.227779, 33.036800, 51.105309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398064, 33.382790, 51.211590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576545, -0.032969, -0.816400,
		-0.697400, 0.500742, -0.512729,
		0.425709, 0.864969, 0.265708,
		32.525776, 33.642281, 51.291302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208267, 33.496704, 50.472187>,  <32.227779, 33.036800, 51.105309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208267, 33.496704, 50.472187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495010, 33.626240, 50.719166>,  <32.667057, 33.703960, 50.867352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495010, 33.626240, 50.719166>,  <32.208267, 33.496704, 50.472187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495010, 33.626240, 50.719166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645198, 0.027526, -0.763520,
		-0.264253, 0.945712, -0.189208,
		0.716861, 0.323839, 0.617445,
		32.710068, 33.723392, 50.904400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533653, 34.068657, 50.107597>,  <32.208267, 33.496704, 50.472187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533653, 34.068657, 50.107597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803432, 33.971832, 50.386604>,  <32.965302, 33.913738, 50.554008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803432, 33.971832, 50.386604>,  <32.533653, 34.068657, 50.107597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803432, 33.971832, 50.386604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735470, 0.137314, -0.663497,
		0.064825, 0.960496, 0.270637,
		0.674449, -0.242057, 0.697515,
		33.005768, 33.899216, 50.595860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992359, 34.588039, 50.186028>,  <32.533653, 34.068657, 50.107597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992359, 34.588039, 50.186028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201603, 34.273582, 50.317684>,  <33.327148, 34.084908, 50.396679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201603, 34.273582, 50.317684>,  <32.992359, 34.588039, 50.186028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201603, 34.273582, 50.317684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632346, 0.099095, -0.768322,
		0.571393, 0.610050, 0.548952,
		0.523113, -0.786142, 0.329141,
		33.358536, 34.037739, 50.416428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600597, 34.768574, 50.007996>,  <32.992359, 34.588039, 50.186028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600597, 34.768574, 50.007996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613701, 34.373726, 50.070641>,  <33.621563, 34.136818, 50.108227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613701, 34.373726, 50.070641>,  <33.600597, 34.768574, 50.007996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613701, 34.373726, 50.070641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611178, -0.104205, -0.784604,
		0.790815, 0.121421, 0.599890,
		0.032756, -0.987116, 0.156616,
		33.623528, 34.077591, 50.117626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208279, 34.653591, 49.756229>,  <33.600597, 34.768574, 50.007996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208279, 34.653591, 49.756229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094505, 34.270115, 49.757446>,  <34.026241, 34.040028, 49.758175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094505, 34.270115, 49.757446>,  <34.208279, 34.653591, 49.756229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094505, 34.270115, 49.757446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446924, -0.135401, -0.884265,
		0.848148, -0.250160, 0.466975,
		-0.284437, -0.958690, 0.003038,
		34.009174, 33.982510, 49.758358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801468, 34.173256, 49.762547>,  <34.208279, 34.653591, 49.756229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801468, 34.173256, 49.762547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484253, 33.991299, 49.600479>,  <34.293922, 33.882126, 49.503239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484253, 33.991299, 49.600479>,  <34.801468, 34.173256, 49.762547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484253, 33.991299, 49.600479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442099, 0.027809, -0.896535,
		0.419097, -0.890111, 0.179055,
		-0.793036, -0.454895, -0.405171,
		34.246342, 33.854832, 49.478928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099747, 33.686695, 49.333759>,  <34.801468, 34.173256, 49.762547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099747, 33.686695, 49.333759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721733, 33.718513, 49.206902>,  <34.494926, 33.737602, 49.130787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721733, 33.718513, 49.206902>,  <35.099747, 33.686695, 49.333759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721733, 33.718513, 49.206902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321737, 0.053394, -0.945322,
		-0.058260, -0.995400, -0.076051,
		-0.945035, 0.079543, -0.317146,
		34.438221, 33.742374, 49.111759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113934, 33.279114, 48.873753>,  <35.099747, 33.686695, 49.333759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113934, 33.279114, 48.873753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796726, 33.504349, 48.780750>,  <34.606403, 33.639488, 48.724949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796726, 33.504349, 48.780750>,  <35.113934, 33.279114, 48.873753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796726, 33.504349, 48.780750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311687, 0.047099, -0.949017,
		-0.523426, -0.825056, -0.212856,
		-0.793018, 0.563084, -0.232506,
		34.558823, 33.673275, 48.710999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813183, 32.948956, 48.319115>,  <35.113934, 33.279114, 48.873753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813183, 32.948956, 48.319115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674553, 33.324139, 48.323463>,  <34.591373, 33.549248, 48.326073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674553, 33.324139, 48.323463>,  <34.813183, 32.948956, 48.319115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674553, 33.324139, 48.323463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417280, 0.164545, -0.893757,
		-0.840097, -0.305217, -0.448419,
		-0.346575, 0.937959, 0.010873,
		34.570580, 33.605526, 48.326725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665844, 32.949665, 47.694939>,  <34.813183, 32.948956, 48.319115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665844, 32.949665, 47.694939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673626, 33.332100, 47.811916>,  <34.678295, 33.561562, 47.882103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673626, 33.332100, 47.811916>,  <34.665844, 32.949665, 47.694939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673626, 33.332100, 47.811916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129098, 0.287650, -0.948995,
		-0.991441, 0.056219, -0.117832,
		0.019457, 0.956084, 0.292446,
		34.679462, 33.618927, 47.899651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137127, 33.401722, 47.239777>,  <34.665844, 32.949665, 47.694939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137127, 33.401722, 47.239777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427750, 33.627003, 47.397221>,  <34.602123, 33.762169, 47.491688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427750, 33.627003, 47.397221>,  <34.137127, 33.401722, 47.239777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427750, 33.627003, 47.397221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034005, 0.542673, -0.839255,
		-0.686268, 0.623148, 0.375129,
		0.726553, 0.563198, 0.393609,
		34.645714, 33.795963, 47.515305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845890, 34.004471, 47.258671>,  <34.137127, 33.401722, 47.239777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845890, 34.004471, 47.258671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241856, 34.056145, 47.235432>,  <34.479435, 34.087151, 47.221489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241856, 34.056145, 47.235432>,  <33.845890, 34.004471, 47.258671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241856, 34.056145, 47.235432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121806, 0.566987, -0.814671,
		-0.072300, 0.813534, 0.577005,
		0.989917, 0.129184, -0.058100,
		34.538830, 34.094898, 47.218002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964184, 34.638157, 46.973198>,  <33.845890, 34.004471, 47.258671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964184, 34.638157, 46.973198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325157, 34.473488, 46.922375>,  <34.541740, 34.374687, 46.891880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325157, 34.473488, 46.922375>,  <33.964184, 34.638157, 46.973198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325157, 34.473488, 46.922375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096092, 0.479806, -0.872097,
		0.419981, 0.774798, 0.472550,
		0.902431, -0.411673, -0.127057,
		34.595886, 34.349987, 46.884258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400711, 35.115192, 46.715755>,  <33.964184, 34.638157, 46.973198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400711, 35.115192, 46.715755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605518, 34.789417, 46.606552>,  <34.728401, 34.593952, 46.541031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605518, 34.789417, 46.606552>,  <34.400711, 35.115192, 46.715755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605518, 34.789417, 46.606552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202183, 0.423173, -0.883203,
		0.834840, 0.397018, 0.381337,
		0.512019, -0.814433, -0.273011,
		34.759125, 34.545086, 46.524651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059753, 35.313831, 46.467144>,  <34.400711, 35.115192, 46.715755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059753, 35.313831, 46.467144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979847, 34.954983, 46.309525>,  <34.931904, 34.739674, 46.214954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979847, 34.954983, 46.309525>,  <35.059753, 35.313831, 46.467144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979847, 34.954983, 46.309525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148361, 0.369821, -0.917181,
		0.968546, -0.241685, 0.059218,
		-0.199769, -0.897118, -0.394045,
		34.919918, 34.685848, 46.191311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528893, 35.274658, 45.941978>,  <35.059753, 35.313831, 46.467144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528893, 35.274658, 45.941978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267887, 34.983109, 45.859074>,  <35.111282, 34.808178, 45.809330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267887, 34.983109, 45.859074>,  <35.528893, 35.274658, 45.941978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267887, 34.983109, 45.859074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000155, 0.273644, -0.961831,
		0.757774, -0.627579, -0.178670,
		-0.652517, -0.728878, -0.207263,
		35.072132, 34.764446, 45.796894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821198, 34.946285, 45.368984>,  <35.528893, 35.274658, 45.941978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821198, 34.946285, 45.368984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436214, 34.837852, 45.363354>,  <35.205227, 34.772793, 45.359974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436214, 34.837852, 45.363354>,  <35.821198, 34.946285, 45.368984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436214, 34.837852, 45.363354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014514, 0.103183, -0.994556,
		0.271054, -0.957011, -0.103244,
		-0.962455, -0.271077, -0.014078,
		35.147476, 34.756531, 45.359131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786022, 34.480145, 44.727394>,  <35.821198, 34.946285, 45.368984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786022, 34.480145, 44.727394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425480, 34.620689, 44.828667>,  <35.209156, 34.705017, 44.889431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425480, 34.620689, 44.828667>,  <35.786022, 34.480145, 44.727394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425480, 34.620689, 44.828667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258738, 0.031901, -0.965421,
		-0.347293, -0.935694, 0.062158,
		-0.901356, 0.351367, 0.253179,
		35.155071, 34.726101, 44.904621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185749, 34.118561, 44.255405>,  <35.786022, 34.480145, 44.727394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185749, 34.118561, 44.255405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064499, 34.474068, 44.392929>,  <34.991749, 34.687370, 44.475445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064499, 34.474068, 44.392929>,  <35.185749, 34.118561, 44.255405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064499, 34.474068, 44.392929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226404, 0.283292, -0.931927,
		-0.925667, -0.360327, 0.115349,
		-0.303121, 0.888769, 0.343813,
		34.973564, 34.740700, 44.496075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661606, 34.281746, 43.833271>,  <35.185749, 34.118561, 44.255405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661606, 34.281746, 43.833271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782890, 34.634789, 43.976971>,  <34.855663, 34.846615, 44.063190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782890, 34.634789, 43.976971>,  <34.661606, 34.281746, 43.833271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782890, 34.634789, 43.976971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138688, 0.413860, -0.899714,
		-0.942776, 0.222982, 0.247895,
		0.303214, 0.882609, 0.359252,
		34.873856, 34.899570, 44.084747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240082, 34.701958, 43.476234>,  <34.661606, 34.281746, 43.833271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240082, 34.701958, 43.476234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531498, 34.935776, 43.619080>,  <34.706348, 35.076069, 43.704788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531498, 34.935776, 43.619080>,  <34.240082, 34.701958, 43.476234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531498, 34.935776, 43.619080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060660, 0.464231, -0.883634,
		-0.682312, 0.665426, 0.302753,
		0.728540, 0.584550, 0.357115,
		34.750061, 35.111141, 43.726215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084610, 35.468384, 43.370750>,  <34.240082, 34.701958, 43.476234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084610, 35.468384, 43.370750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476845, 35.391960, 43.388374>,  <34.712185, 35.346107, 43.398949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476845, 35.391960, 43.388374>,  <34.084610, 35.468384, 43.370750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476845, 35.391960, 43.388374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118379, 0.397776, -0.909814,
		0.156302, 0.897369, 0.412672,
		0.980590, -0.191058, 0.044056,
		34.771023, 35.334644, 43.401592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397358, 36.015770, 43.012474>,  <34.084610, 35.468384, 43.370750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397358, 36.015770, 43.012474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719109, 35.778172, 43.017349>,  <34.912159, 35.635612, 43.020275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719109, 35.778172, 43.017349>,  <34.397358, 36.015770, 43.012474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719109, 35.778172, 43.017349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168257, 0.208075, -0.963532,
		0.569802, 0.777090, 0.267314,
		0.804373, -0.594000, 0.012190,
		34.960419, 35.599972, 43.021008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869774, 36.417557, 42.590672>,  <34.397358, 36.015770, 43.012474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869774, 36.417557, 42.590672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035648, 36.053703, 42.600468>,  <35.135174, 35.835392, 42.606346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035648, 36.053703, 42.600468>,  <34.869774, 36.417557, 42.590672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035648, 36.053703, 42.600468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430967, 0.172620, -0.885703,
		0.801438, 0.377845, 0.463606,
		0.414686, -0.909635, 0.024494,
		35.160053, 35.780811, 42.607815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539902, 36.465977, 42.266930>,  <34.869774, 36.417557, 42.590672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539902, 36.465977, 42.266930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439682, 36.079456, 42.243332>,  <35.379551, 35.847542, 42.229172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439682, 36.079456, 42.243332>,  <35.539902, 36.465977, 42.266930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439682, 36.079456, 42.243332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274531, -0.012479, -0.961497,
		0.928362, -0.257102, 0.268407,
		-0.250553, -0.966304, -0.058997,
		35.364517, 35.789566, 42.225632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005623, 36.288372, 41.808979>,  <35.539902, 36.465977, 42.266930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005623, 36.288372, 41.808979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764954, 35.969631, 41.830933>,  <35.620552, 35.778385, 41.844105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764954, 35.969631, 41.830933>,  <36.005623, 36.288372, 41.808979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764954, 35.969631, 41.830933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155319, -0.184118, -0.970555,
		0.783497, -0.575430, 0.234545,
		-0.601671, -0.796856, 0.054881,
		35.584454, 35.730576, 41.847397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356091, 35.815365, 41.548626>,  <36.005623, 36.288372, 41.808979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356091, 35.815365, 41.548626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986881, 35.663120, 41.526138>,  <35.765354, 35.571774, 41.512646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986881, 35.663120, 41.526138>,  <36.356091, 35.815365, 41.548626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986881, 35.663120, 41.526138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172195, -0.278006, -0.945019,
		0.344060, -0.881955, 0.322146,
		-0.923023, -0.380615, -0.056217,
		35.709972, 35.548935, 41.509274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456211, 35.111851, 41.270493>,  <36.356091, 35.815365, 41.548626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456211, 35.111851, 41.270493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093628, 35.252289, 41.176624>,  <35.876080, 35.336552, 41.120304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093628, 35.252289, 41.176624>,  <36.456211, 35.111851, 41.270493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093628, 35.252289, 41.176624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132098, -0.292078, -0.947228,
		-0.401112, -0.889619, 0.218376,
		-0.906455, 0.351098, -0.234673,
		35.821690, 35.357616, 41.106224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089584, 34.533356, 41.067730>,  <36.456211, 35.111851, 41.270493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089584, 34.533356, 41.067730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914352, 34.854061, 40.905125>,  <35.809212, 35.046486, 40.807560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914352, 34.854061, 40.905125>,  <36.089584, 34.533356, 41.067730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914352, 34.854061, 40.905125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064309, -0.479013, -0.875449,
		-0.896631, -0.357378, 0.261409,
		-0.438084, 0.801765, -0.406515,
		35.782928, 35.094589, 40.783169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490364, 34.342220, 40.545258>,  <36.089584, 34.533356, 41.067730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490364, 34.342220, 40.545258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603180, 34.708733, 40.431496>,  <35.670868, 34.928638, 40.363239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603180, 34.708733, 40.431496>,  <35.490364, 34.342220, 40.545258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603180, 34.708733, 40.431496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098929, -0.322631, -0.941341,
		-0.954288, 0.237361, -0.181641,
		0.282041, 0.916280, -0.284401,
		35.687794, 34.983616, 40.346176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261505, 34.284954, 39.903595>,  <35.490364, 34.342220, 40.545258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261505, 34.284954, 39.903595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449169, 34.636745, 39.871605>,  <35.561768, 34.847820, 39.852409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449169, 34.636745, 39.871605>,  <35.261505, 34.284954, 39.903595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449169, 34.636745, 39.871605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193519, -0.190749, -0.962375,
		-0.861647, 0.436035, -0.259689,
		0.469165, 0.879482, -0.079977,
		35.589920, 34.900589, 39.847610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925129, 34.558182, 39.289261>,  <35.261505, 34.284954, 39.903595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925129, 34.558182, 39.289261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276352, 34.740406, 39.347878>,  <35.487087, 34.849739, 39.383049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276352, 34.740406, 39.347878>,  <34.925129, 34.558182, 39.289261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276352, 34.740406, 39.347878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271959, -0.223055, -0.936101,
		-0.393764, 0.861806, -0.319749,
		0.878059, 0.455562, 0.146545,
		35.539768, 34.877075, 39.391842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013390, 35.046810, 38.680546>,  <34.925129, 34.558182, 39.289261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013390, 35.046810, 38.680546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382153, 34.998257, 38.827705>,  <35.603413, 34.969124, 38.916000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382153, 34.998257, 38.827705>,  <35.013390, 35.046810, 38.680546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382153, 34.998257, 38.827705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361369, -0.072796, -0.929577,
		0.139619, 0.989932, -0.023246,
		0.921911, -0.121386, 0.367894,
		35.658726, 34.961842, 38.938072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406368, 35.367405, 38.207951>,  <35.013390, 35.046810, 38.680546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406368, 35.367405, 38.207951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676285, 35.144009, 38.400925>,  <35.838234, 35.009972, 38.516708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676285, 35.144009, 38.400925>,  <35.406368, 35.367405, 38.207951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676285, 35.144009, 38.400925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515192, -0.111579, -0.849781,
		0.528425, 0.821971, 0.212438,
		0.674792, -0.558492, 0.482434,
		35.878723, 34.976460, 38.545654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164055, 35.697773, 37.999935>,  <35.406368, 35.367405, 38.207951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164055, 35.697773, 37.999935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172123, 35.314987, 38.115734>,  <36.176964, 35.085316, 38.185211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172123, 35.314987, 38.115734>,  <36.164055, 35.697773, 37.999935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172123, 35.314987, 38.115734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507962, -0.239589, -0.827388,
		0.861143, 0.163741, 0.481271,
		0.020170, -0.956967, 0.289495,
		36.178173, 35.027897, 38.202583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880810, 35.491959, 37.976414>,  <36.164055, 35.697773, 37.999935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880810, 35.491959, 37.976414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686398, 35.143009, 37.955448>,  <36.569752, 34.933640, 37.942871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686398, 35.143009, 37.955448>,  <36.880810, 35.491959, 37.976414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686398, 35.143009, 37.955448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424726, -0.183366, -0.886558,
		0.763795, -0.453154, 0.459639,
		-0.486030, -0.872369, -0.052412,
		36.540588, 34.881298, 37.939724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412220, 34.973095, 38.086849>,  <36.880810, 35.491959, 37.976414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412220, 34.973095, 38.086849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094524, 34.823730, 37.895119>,  <36.903908, 34.734112, 37.780079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094524, 34.823730, 37.895119>,  <37.412220, 34.973095, 38.086849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094524, 34.823730, 37.895119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586544, -0.265253, -0.765249,
		0.158611, -0.888934, 0.429696,
		-0.794234, -0.373413, -0.479327,
		36.856255, 34.711708, 37.751320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832443, 35.428165, 38.400887>,  <37.412220, 34.973095, 38.086849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832443, 35.428165, 38.400887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202904, 35.576099, 38.430470>,  <38.425179, 35.664860, 38.448219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202904, 35.576099, 38.430470>,  <37.832443, 35.428165, 38.400887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202904, 35.576099, 38.430470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143144, -0.526091, 0.838295,
		0.348939, -0.765800, -0.540178,
		0.926149, 0.369837, 0.073954,
		38.480747, 35.687050, 38.452656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225407, 34.942982, 38.676094>,  <37.832443, 35.428165, 38.400887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225407, 34.942982, 38.676094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437477, 35.268539, 38.771172>,  <38.564720, 35.463875, 38.828217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437477, 35.268539, 38.771172>,  <38.225407, 34.942982, 38.676094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437477, 35.268539, 38.771172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159018, -0.370803, 0.914996,
		0.832843, -0.447312, -0.326014,
		0.530176, 0.813890, 0.237690,
		38.596531, 35.512707, 38.842480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841103, 34.756794, 39.139130>,  <38.225407, 34.942982, 38.676094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841103, 34.756794, 39.139130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760712, 35.147358, 39.170708>,  <38.712475, 35.381695, 39.189655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760712, 35.147358, 39.170708>,  <38.841103, 34.756794, 39.139130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760712, 35.147358, 39.170708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032357, -0.073932, 0.996738,
		0.979060, 0.202881, -0.016735,
		-0.200982, 0.976408, 0.078949,
		38.700417, 35.440281, 39.194393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376514, 34.970367, 39.508465>,  <38.841103, 34.756794, 39.139130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376514, 34.970367, 39.508465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120354, 35.272087, 39.566315>,  <38.966656, 35.453121, 39.601025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120354, 35.272087, 39.566315>,  <39.376514, 34.970367, 39.508465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120354, 35.272087, 39.566315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154633, -0.057820, 0.986279,
		0.752313, 0.653978, -0.079612,
		-0.640401, 0.754301, 0.144625,
		38.928234, 35.498379, 39.609703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666676, 35.637058, 39.806675>,  <39.376514, 34.970367, 39.508465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666676, 35.637058, 39.806675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281315, 35.617706, 39.912140>,  <39.050098, 35.606094, 39.975418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281315, 35.617706, 39.912140>,  <39.666676, 35.637058, 39.806675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281315, 35.617706, 39.912140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263396, 0.011882, 0.964615,
		-0.049804, 0.998758, 0.001297,
		-0.963401, -0.048383, 0.263660,
		38.992294, 35.603191, 39.991238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650616, 35.839340, 40.418709>,  <39.666676, 35.637058, 39.806675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650616, 35.839340, 40.418709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273930, 35.704773, 40.418419>,  <39.047920, 35.624035, 40.418243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273930, 35.704773, 40.418419>,  <39.650616, 35.839340, 40.418709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273930, 35.704773, 40.418419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055948, -0.158746, 0.985733,
		-0.331732, 0.928237, 0.168315,
		-0.941713, -0.336416, -0.000728,
		38.991417, 35.603848, 40.418201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322643, 36.192200, 41.070770>,  <39.650616, 35.839340, 40.418709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322643, 36.192200, 41.070770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079094, 35.890701, 40.971870>,  <38.932964, 35.709801, 40.912529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079094, 35.890701, 40.971870>,  <39.322643, 36.192200, 41.070770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079094, 35.890701, 40.971870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019019, -0.297729, 0.954461,
		-0.793038, 0.585850, 0.166945,
		-0.608875, -0.753749, -0.247253,
		38.896431, 35.664577, 40.897694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773083, 36.277000, 41.477894>,  <39.322643, 36.192200, 41.070770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773083, 36.277000, 41.477894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763176, 35.896053, 41.356316>,  <38.757233, 35.667484, 41.283367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763176, 35.896053, 41.356316>,  <38.773083, 36.277000, 41.477894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763176, 35.896053, 41.356316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022677, -0.303430, 0.952584,
		-0.999436, 0.030484, -0.014082,
		-0.024765, -0.952366, -0.303950,
		38.755745, 35.610344, 41.265129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271244, 35.986816, 41.981236>,  <38.773083, 36.277000, 41.477894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271244, 35.986816, 41.981236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477493, 35.691082, 41.808022>,  <38.601242, 35.513641, 41.704094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477493, 35.691082, 41.808022>,  <38.271244, 35.986816, 41.981236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477493, 35.691082, 41.808022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100739, -0.449587, 0.887538,
		-0.850876, -0.501255, -0.157336,
		0.515618, -0.739335, -0.433039,
		38.632179, 35.469280, 41.678108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954319, 35.412476, 42.151737>,  <38.271244, 35.986816, 41.981236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954319, 35.412476, 42.151737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320473, 35.299873, 42.036613>,  <38.540165, 35.232311, 41.967541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320473, 35.299873, 42.036613>,  <37.954319, 35.412476, 42.151737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320473, 35.299873, 42.036613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049446, -0.630870, 0.774311,
		-0.399542, -0.723020, -0.563567,
		0.915380, -0.281504, -0.287810,
		38.595085, 35.215424, 41.950272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924191, 34.637016, 42.021275>,  <37.954319, 35.412476, 42.151737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924191, 34.637016, 42.021275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299431, 34.748116, 42.104046>,  <38.524574, 34.814777, 42.153709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299431, 34.748116, 42.104046>,  <37.924191, 34.637016, 42.021275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299431, 34.748116, 42.104046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052198, -0.477251, 0.877215,
		0.342407, -0.833718, -0.433212,
		0.938101, 0.277752, 0.206932,
		38.580860, 34.831440, 42.166126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206306, 34.117493, 42.370399>,  <37.924191, 34.637016, 42.021275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206306, 34.117493, 42.370399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474609, 34.400253, 42.460167>,  <38.635593, 34.569912, 42.514027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474609, 34.400253, 42.460167>,  <38.206306, 34.117493, 42.370399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474609, 34.400253, 42.460167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121016, -0.402849, 0.907231,
		0.731735, -0.581376, -0.355761,
		0.670760, 0.706905, 0.224423,
		38.675838, 34.612324, 42.527493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761055, 33.820751, 42.728527>,  <38.206306, 34.117493, 42.370399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761055, 33.820751, 42.728527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798145, 34.198357, 42.855175>,  <38.820400, 34.424919, 42.931164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798145, 34.198357, 42.855175>,  <38.761055, 33.820751, 42.728527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798145, 34.198357, 42.855175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205003, -0.329273, 0.921712,
		0.974360, -0.020556, -0.224056,
		0.092722, 0.944011, 0.316616,
		38.825962, 34.481560, 42.950161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268166, 33.723022, 43.231987>,  <38.761055, 33.820751, 42.728527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268166, 33.723022, 43.231987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104969, 34.083843, 43.288326>,  <39.007053, 34.300335, 43.322132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104969, 34.083843, 43.288326>,  <39.268166, 33.723022, 43.231987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104969, 34.083843, 43.288326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035012, -0.138704, 0.989715,
		0.912315, 0.408725, 0.025006,
		-0.407990, 0.902056, 0.140852,
		38.982571, 34.354462, 43.330582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569427, 33.958122, 43.858269>,  <39.268166, 33.723022, 43.231987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569427, 33.958122, 43.858269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238262, 34.177467, 43.811169>,  <39.039562, 34.309074, 43.782909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238262, 34.177467, 43.811169>,  <39.569427, 33.958122, 43.858269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238262, 34.177467, 43.811169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204545, -0.099728, 0.973764,
		0.522234, 0.830272, 0.194731,
		-0.827909, 0.548364, -0.117746,
		38.989891, 34.341976, 43.775845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552441, 34.306046, 44.579006>,  <39.569427, 33.958122, 43.858269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552441, 34.306046, 44.579006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195797, 34.407841, 44.429192>,  <38.981812, 34.468918, 44.339302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195797, 34.407841, 44.429192>,  <39.552441, 34.306046, 44.579006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195797, 34.407841, 44.429192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395736, -0.035925, 0.917662,
		0.220076, 0.966409, 0.132740,
		-0.891605, 0.254485, -0.374536,
		38.928314, 34.484184, 44.316830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315762, 34.807899, 45.005215>,  <39.552441, 34.306046, 44.579006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315762, 34.807899, 45.005215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999428, 34.633053, 44.833866>,  <38.809628, 34.528145, 44.731056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999428, 34.633053, 44.833866>,  <39.315762, 34.807899, 45.005215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999428, 34.633053, 44.833866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501474, 0.061556, 0.862980,
		-0.350854, 0.897296, -0.267884,
		-0.790838, -0.437117, -0.428373,
		38.762177, 34.501919, 44.705353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744194, 35.150955, 45.262192>,  <39.315762, 34.807899, 45.005215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744194, 35.150955, 45.262192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562584, 34.824844, 45.118423>,  <38.453617, 34.629177, 45.032162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562584, 34.824844, 45.118423>,  <38.744194, 35.150955, 45.262192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562584, 34.824844, 45.118423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592568, -0.024953, 0.805133,
		-0.665378, 0.578529, -0.471780,
		-0.454021, -0.815280, -0.359421,
		38.426376, 34.580261, 45.010597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035545, 35.238316, 45.120270>,  <38.744194, 35.150955, 45.262192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035545, 35.238316, 45.120270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089699, 34.848431, 45.191387>,  <38.122192, 34.614502, 45.234058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089699, 34.848431, 45.191387>,  <38.035545, 35.238316, 45.120270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089699, 34.848431, 45.191387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614459, 0.058171, 0.786802,
		-0.777246, -0.215768, -0.591044,
		0.135385, -0.974710, 0.177793,
		38.130314, 34.556019, 45.244724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381878, 34.879025, 45.138741>,  <38.035545, 35.238316, 45.120270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381878, 34.879025, 45.138741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618217, 34.621246, 45.332890>,  <37.760021, 34.466579, 45.449379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618217, 34.621246, 45.332890>,  <37.381878, 34.879025, 45.138741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618217, 34.621246, 45.332890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572711, 0.088701, 0.814944,
		-0.568242, -0.759486, -0.316674,
		0.590849, -0.644448, 0.485370,
		37.795471, 34.427914, 45.478500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958965, 34.348064, 45.466152>,  <37.381878, 34.879025, 45.138741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958965, 34.348064, 45.466152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289165, 34.315685, 45.689579>,  <37.487286, 34.296257, 45.823635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289165, 34.315685, 45.689579>,  <36.958965, 34.348064, 45.466152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289165, 34.315685, 45.689579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541824, 0.163488, 0.824439,
		-0.158055, -0.983219, 0.091100,
		0.825497, -0.080946, 0.558571,
		37.536816, 34.291401, 45.857151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820660, 33.900021, 46.028168>,  <36.958965, 34.348064, 45.466152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820660, 33.900021, 46.028168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123478, 34.134014, 46.144566>,  <37.305168, 34.274410, 46.214405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123478, 34.134014, 46.144566>,  <36.820660, 33.900021, 46.028168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123478, 34.134014, 46.144566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514073, 0.258429, 0.817890,
		0.403256, -0.768767, 0.496368,
		0.757043, 0.584988, 0.290990,
		37.350590, 34.309509, 46.231861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995895, 33.684261, 46.773922>,  <36.820660, 33.900021, 46.028168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995895, 33.684261, 46.773922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148041, 34.044521, 46.689865>,  <37.239326, 34.260677, 46.639431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148041, 34.044521, 46.689865>,  <36.995895, 33.684261, 46.773922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148041, 34.044521, 46.689865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215148, 0.307153, 0.927021,
		0.899464, -0.307393, 0.310602,
		0.380363, 0.900648, -0.210138,
		37.262150, 34.314716, 46.626823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414997, 33.756851, 47.310909>,  <36.995895, 33.684261, 46.773922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414997, 33.756851, 47.310909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387325, 34.126755, 47.161221>,  <37.370720, 34.348698, 47.071407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387325, 34.126755, 47.161221>,  <37.414997, 33.756851, 47.310909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387325, 34.126755, 47.161221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153684, 0.360760, 0.919909,
		0.985695, 0.121153, 0.117163,
		-0.069182, 0.924756, -0.374219,
		37.366570, 34.404182, 47.048954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920998, 34.250385, 47.570965>,  <37.414997, 33.756851, 47.310909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920998, 34.250385, 47.570965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604275, 34.467319, 47.458599>,  <37.414242, 34.597481, 47.391182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604275, 34.467319, 47.458599>,  <37.920998, 34.250385, 47.570965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604275, 34.467319, 47.458599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067741, 0.535072, 0.842086,
		0.606999, 0.647743, -0.460414,
		-0.791810, 0.542334, -0.280910,
		37.366730, 34.630020, 47.374325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099072, 34.845581, 47.910526>,  <37.920998, 34.250385, 47.570965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099072, 34.845581, 47.910526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714447, 34.873436, 47.804283>,  <37.483673, 34.890148, 47.740540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714447, 34.873436, 47.804283>,  <38.099072, 34.845581, 47.910526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714447, 34.873436, 47.804283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152373, 0.669371, 0.727135,
		0.228422, 0.739658, -0.633032,
		-0.961564, 0.069637, -0.265603,
		37.425980, 34.894325, 47.724602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794621, 35.618114, 48.136856>,  <38.099072, 34.845581, 47.910526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794621, 35.618114, 48.136856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487503, 35.362709, 48.115692>,  <37.303234, 35.209465, 48.102993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487503, 35.362709, 48.115692>,  <37.794621, 35.618114, 48.136856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487503, 35.362709, 48.115692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379573, 0.386792, 0.840426,
		-0.516156, 0.665356, -0.539337,
		-0.767794, -0.638509, -0.052906,
		37.257164, 35.171158, 48.099819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330265, 35.957157, 48.466728>,  <37.794621, 35.618114, 48.136856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330265, 35.957157, 48.466728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166042, 35.593586, 48.437634>,  <37.067509, 35.375443, 48.420177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166042, 35.593586, 48.437634>,  <37.330265, 35.957157, 48.466728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166042, 35.593586, 48.437634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463380, 0.139276, 0.875146,
		-0.785316, 0.393001, -0.478361,
		-0.410558, -0.908929, -0.072733,
		37.042873, 35.320908, 48.415813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689030, 36.044048, 48.714676>,  <37.330265, 35.957157, 48.466728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689030, 36.044048, 48.714676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742538, 35.650414, 48.761463>,  <36.774643, 35.414234, 48.789536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742538, 35.650414, 48.761463>,  <36.689030, 36.044048, 48.714676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742538, 35.650414, 48.761463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466804, 0.041543, 0.883385,
		-0.874185, -0.172770, -0.453818,
		0.133769, -0.984086, 0.116966,
		36.782669, 35.355186, 48.796555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067020, 35.839058, 48.956558>,  <36.689030, 36.044048, 48.714676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067020, 35.839058, 48.956558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308121, 35.542706, 49.075069>,  <36.452782, 35.364895, 49.146175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308121, 35.542706, 49.075069>,  <36.067020, 35.839058, 48.956558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308121, 35.542706, 49.075069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393517, 0.047010, 0.918115,
		-0.694146, -0.669985, -0.263215,
		0.602749, -0.740885, 0.296282,
		36.488945, 35.320438, 49.163956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616184, 35.205284, 49.190712>,  <36.067020, 35.839058, 48.956558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616184, 35.205284, 49.190712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976311, 35.172970, 49.361778>,  <36.192387, 35.153580, 49.464420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976311, 35.172970, 49.361778>,  <35.616184, 35.205284, 49.190712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976311, 35.172970, 49.361778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429159, -0.001194, 0.903228,
		-0.072459, -0.996731, -0.035746,
		0.900318, -0.080788, 0.427670,
		36.246407, 35.148731, 49.490078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592236, 34.633202, 49.513634>,  <35.616184, 35.205284, 49.190712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592236, 34.633202, 49.513634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876545, 34.865047, 49.673058>,  <36.047131, 35.004154, 49.768711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876545, 34.865047, 49.673058>,  <35.592236, 34.633202, 49.513634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876545, 34.865047, 49.673058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432387, -0.086906, 0.897490,
		0.554836, -0.810243, 0.188848,
		0.710773, 0.579616, 0.398557,
		36.089775, 35.038933, 49.792625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711639, 34.431995, 50.129803>,  <35.592236, 34.633202, 49.513634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711639, 34.431995, 50.129803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847816, 34.808060, 50.135494>,  <35.929523, 35.033699, 50.138908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847816, 34.808060, 50.135494>,  <35.711639, 34.431995, 50.129803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847816, 34.808060, 50.135494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338516, 0.108435, 0.934692,
		0.877215, -0.323026, 0.355174,
		0.340443, 0.940158, 0.014229,
		35.949951, 35.090107, 50.139763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930214, 34.452015, 50.895866>,  <35.711639, 34.431995, 50.129803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930214, 34.452015, 50.895866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987183, 34.834229, 50.792576>,  <36.021362, 35.063557, 50.730602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987183, 34.834229, 50.792576>,  <35.930214, 34.452015, 50.895866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987183, 34.834229, 50.792576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022674, 0.263962, 0.964266,
		0.989546, -0.131477, 0.059259,
		0.142421, 0.955530, -0.258222,
		36.029907, 35.120888, 50.715111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410019, 34.756592, 51.421124>,  <35.930214, 34.452015, 50.895866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410019, 34.756592, 51.421124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207325, 35.057743, 51.253124>,  <36.085709, 35.238434, 51.152325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207325, 35.057743, 51.253124>,  <36.410019, 34.756592, 51.421124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207325, 35.057743, 51.253124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091722, 0.437328, 0.894613,
		0.857208, 0.491854, -0.152554,
		-0.506735, 0.752877, -0.419995,
		36.055305, 35.283607, 51.127125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706123, 35.429871, 51.559238>,  <36.410019, 34.756592, 51.421124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706123, 35.429871, 51.559238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315376, 35.477036, 51.487888>,  <36.080929, 35.505337, 51.445076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315376, 35.477036, 51.487888>,  <36.706123, 35.429871, 51.559238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315376, 35.477036, 51.487888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149501, 0.219792, 0.964023,
		0.152881, 0.968394, -0.197080,
		-0.976871, 0.117917, -0.178378,
		36.022316, 35.512409, 51.434376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372196, 36.172558, 51.738689>,  <36.706123, 35.429871, 51.559238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372196, 36.172558, 51.738689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114555, 35.868443, 51.772400>,  <35.959972, 35.685974, 51.792625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114555, 35.868443, 51.772400>,  <36.372196, 36.172558, 51.738689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114555, 35.868443, 51.772400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084948, 0.180588, 0.979884,
		-0.760211, 0.623983, -0.180901,
		-0.644099, -0.760285, 0.084279,
		35.921326, 35.640358, 51.797684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299347, 36.612019, 52.259293>,  <36.372196, 36.172558, 51.738689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299347, 36.612019, 52.259293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451588, 36.958305, 52.129265>,  <36.542931, 37.166077, 52.051247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451588, 36.958305, 52.129265>,  <36.299347, 36.612019, 52.259293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451588, 36.958305, 52.129265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213989, -0.424440, -0.879807,
		-0.899639, 0.265294, -0.346797,
		0.380602, 0.865719, -0.325073,
		36.565769, 37.218021, 52.031742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628582, 37.019115, 52.420048>,  <36.299347, 36.612019, 52.259293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628582, 37.019115, 52.420048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872425, 37.244308, 52.643269>,  <36.018730, 37.379425, 52.777199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872425, 37.244308, 52.643269>,  <35.628582, 37.019115, 52.420048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872425, 37.244308, 52.643269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666579, 0.016923, -0.745242,
		-0.429005, 0.826293, -0.364959,
		0.609612, 0.562987, 0.558049,
		36.055309, 37.413204, 52.810684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774860, 37.471207, 51.975883>,  <35.628582, 37.019115, 52.420048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774860, 37.471207, 51.975883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062019, 37.516922, 52.250565>,  <36.234314, 37.544353, 52.415375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062019, 37.516922, 52.250565>,  <35.774860, 37.471207, 51.975883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062019, 37.516922, 52.250565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678374, 0.106661, -0.726933,
		-0.156327, 0.987705, -0.000961,
		0.717893, 0.114292, 0.686707,
		36.277386, 37.551208, 52.456577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176384, 37.875252, 51.601791>,  <35.774860, 37.471207, 51.975883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176384, 37.875252, 51.601791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410706, 37.751530, 51.901436>,  <36.551300, 37.677296, 52.081223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410706, 37.751530, 51.901436>,  <36.176384, 37.875252, 51.601791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410706, 37.751530, 51.901436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777926, -0.044632, -0.626768,
		0.227297, 0.949915, 0.214471,
		0.585804, -0.309305, 0.749109,
		36.586449, 37.658737, 52.126167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778248, 38.277493, 51.567184>,  <36.176384, 37.875252, 51.601791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778248, 38.277493, 51.567184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884720, 37.955048, 51.778595>,  <36.948601, 37.761581, 51.905441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884720, 37.955048, 51.778595>,  <36.778248, 38.277493, 51.567184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884720, 37.955048, 51.778595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821870, -0.096704, -0.561407,
		0.503665, 0.583814, 0.636776,
		0.266178, -0.806108, 0.528526,
		36.964573, 37.713215, 51.937153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341518, 38.383636, 51.727535>,  <36.778248, 38.277493, 51.567184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341518, 38.383636, 51.727535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312382, 37.984756, 51.734394>,  <37.294899, 37.745430, 51.738510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312382, 37.984756, 51.734394>,  <37.341518, 38.383636, 51.727535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312382, 37.984756, 51.734394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781013, -0.067726, -0.620832,
		0.620253, -0.031826, 0.783756,
		-0.072839, -0.997196, 0.017151,
		37.290531, 37.685596, 51.739540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042927, 38.124626, 51.776390>,  <37.341518, 38.383636, 51.727535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042927, 38.124626, 51.776390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867931, 37.784950, 51.658077>,  <37.762936, 37.581146, 51.587090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867931, 37.784950, 51.658077>,  <38.042927, 38.124626, 51.776390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867931, 37.784950, 51.658077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779327, -0.193958, -0.595844,
		0.448612, -0.491187, 0.746648,
		-0.437488, -0.849186, -0.295783,
		37.736687, 37.530193, 51.569344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608406, 37.492344, 51.628521>,  <38.042927, 38.124626, 51.776390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608406, 37.492344, 51.628521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279564, 37.409855, 51.416252>,  <38.082256, 37.360363, 51.288891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279564, 37.409855, 51.416252>,  <38.608406, 37.492344, 51.628521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279564, 37.409855, 51.416252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565015, -0.180973, -0.804989,
		0.069968, -0.961625, 0.265297,
		-0.822109, -0.206220, -0.530670,
		38.032932, 37.347988, 51.257050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875439, 37.066597, 51.119232>,  <38.608406, 37.492344, 51.628521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875439, 37.066597, 51.119232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509296, 37.130478, 50.971386>,  <38.289612, 37.168808, 50.882679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509296, 37.130478, 50.971386>,  <38.875439, 37.066597, 51.119232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509296, 37.130478, 50.971386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360134, -0.085795, -0.928947,
		-0.180071, -0.983429, 0.021017,
		-0.915357, 0.159707, -0.369615,
		38.234688, 37.178391, 50.860500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749332, 36.477200, 50.651020>,  <38.875439, 37.066597, 51.119232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749332, 36.477200, 50.651020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516384, 36.785309, 50.547070>,  <38.376617, 36.970173, 50.484699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516384, 36.785309, 50.547070>,  <38.749332, 36.477200, 50.651020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516384, 36.785309, 50.547070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374300, -0.029701, -0.926832,
		-0.721628, -0.637027, -0.271014,
		-0.582367, 0.770269, -0.259873,
		38.341675, 37.016388, 50.469109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490540, 36.377975, 50.010567>,  <38.749332, 36.477200, 50.651020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490540, 36.377975, 50.010567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424515, 36.772423, 50.017662>,  <38.384899, 37.009094, 50.021919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424515, 36.772423, 50.017662>,  <38.490540, 36.377975, 50.010567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424515, 36.772423, 50.017662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190783, 0.049573, -0.980380,
		-0.967654, -0.158442, -0.196318,
		-0.165065, 0.986123, 0.017742,
		38.374996, 37.068260, 50.022984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930302, 36.618797, 49.567719>,  <38.490540, 36.377975, 50.010567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930302, 36.618797, 49.567719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139866, 36.957897, 49.600777>,  <38.265606, 37.161358, 49.620613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139866, 36.957897, 49.600777>,  <37.930302, 36.618797, 49.567719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139866, 36.957897, 49.600777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043432, 0.123495, -0.991394,
		-0.850663, 0.515816, 0.101521,
		0.523915, 0.847751, 0.082650,
		38.297039, 37.212223, 49.625572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612061, 37.134563, 49.104919>,  <37.930302, 36.618797, 49.567719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612061, 37.134563, 49.104919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987083, 37.252598, 49.178581>,  <38.212097, 37.323418, 49.222778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987083, 37.252598, 49.178581>,  <37.612061, 37.134563, 49.104919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987083, 37.252598, 49.178581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184944, 0.025492, -0.982418,
		-0.294591, 0.955131, -0.030674,
		0.937556, 0.295085, 0.184155,
		38.268349, 37.341122, 49.233829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705299, 37.810989, 48.776115>,  <37.612061, 37.134563, 49.104919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705299, 37.810989, 48.776115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076920, 37.671253, 48.824818>,  <38.299892, 37.587410, 48.854038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076920, 37.671253, 48.824818>,  <37.705299, 37.810989, 48.776115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076920, 37.671253, 48.824818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157176, 0.074781, -0.984735,
		0.334901, 0.934007, 0.124383,
		0.929051, -0.349339, 0.121760,
		38.355637, 37.566452, 48.861347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075970, 38.299751, 48.373985>,  <37.705299, 37.810989, 48.776115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075970, 38.299751, 48.373985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308659, 37.979893, 48.433533>,  <38.448273, 37.787975, 48.469261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308659, 37.979893, 48.433533>,  <38.075970, 38.299751, 48.373985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308659, 37.979893, 48.433533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351112, 0.081772, -0.932756,
		0.733704, 0.594874, 0.328335,
		0.581721, -0.799649, 0.148871,
		38.483173, 37.739998, 48.478195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825748, 38.554344, 48.139099>,  <38.075970, 38.299751, 48.373985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825748, 38.554344, 48.139099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818577, 38.154633, 48.125706>,  <38.814274, 37.914806, 48.117672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818577, 38.154633, 48.125706>,  <38.825748, 38.554344, 48.139099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818577, 38.154633, 48.125706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387623, 0.023919, -0.921508,
		0.921644, -0.029501, 0.386915,
		-0.017931, -0.999279, -0.033480,
		38.813198, 37.854851, 48.115662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456715, 38.348640, 47.946342>,  <38.825748, 38.554344, 48.139099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456715, 38.348640, 47.946342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233742, 38.023678, 47.877914>,  <39.099957, 37.828701, 47.836857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233742, 38.023678, 47.877914>,  <39.456715, 38.348640, 47.946342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233742, 38.023678, 47.877914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426480, -0.103422, -0.898565,
		0.712306, -0.573849, 0.404125,
		-0.557436, -0.812405, -0.171067,
		39.066509, 37.779957, 47.826595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953697, 37.770313, 47.684841>,  <39.456715, 38.348640, 47.946342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953697, 37.770313, 47.684841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580475, 37.682220, 47.571068>,  <39.356541, 37.629364, 47.502804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580475, 37.682220, 47.571068>,  <39.953697, 37.770313, 47.684841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580475, 37.682220, 47.571068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324671, -0.175089, -0.929480,
		0.154903, -0.959604, 0.234872,
		-0.933056, -0.220235, -0.284434,
		39.300556, 37.616150, 47.485737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020222, 37.172478, 47.320171>,  <39.953697, 37.770313, 47.684841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020222, 37.172478, 47.320171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662548, 37.290192, 47.185215>,  <39.447945, 37.360821, 47.104240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662548, 37.290192, 47.185215>,  <40.020222, 37.172478, 47.320171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662548, 37.290192, 47.185215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192380, -0.427905, -0.883112,
		-0.404254, -0.854573, 0.326013,
		-0.894186, 0.294283, -0.337385,
		39.394295, 37.378479, 47.084000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769993, 36.748264, 46.859913>,  <40.020222, 37.172478, 47.320171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769993, 36.748264, 46.859913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541183, 37.063030, 46.767345>,  <39.403896, 37.251888, 46.711803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541183, 37.063030, 46.767345>,  <39.769993, 36.748264, 46.859913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541183, 37.063030, 46.767345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046771, -0.250388, -0.967015,
		-0.818900, -0.563983, 0.106424,
		-0.572028, 0.786911, -0.231420,
		39.369576, 37.299103, 46.697918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263592, 36.476028, 46.373894>,  <39.769993, 36.748264, 46.859913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263592, 36.476028, 46.373894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187893, 36.862057, 46.301418>,  <39.142475, 37.093674, 46.257935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187893, 36.862057, 46.301418>,  <39.263592, 36.476028, 46.373894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187893, 36.862057, 46.301418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289533, -0.231160, -0.928836,
		-0.938273, -0.123322, 0.323166,
		-0.189248, 0.965068, -0.181185,
		39.131119, 37.151577, 46.247063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585606, 36.553200, 46.055542>,  <39.263592, 36.476028, 46.373894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585606, 36.553200, 46.055542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792011, 36.867023, 45.918022>,  <38.915855, 37.055317, 45.835510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792011, 36.867023, 45.918022>,  <38.585606, 36.553200, 46.055542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792011, 36.867023, 45.918022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314073, -0.200118, -0.928068,
		-0.796926, 0.586872, 0.143146,
		0.516011, 0.784560, -0.343800,
		38.946815, 37.102390, 45.814880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372585, 36.628941, 45.409225>,  <38.585606, 36.553200, 46.055542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372585, 36.628941, 45.409225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686180, 36.877098, 45.400436>,  <38.874336, 37.025993, 45.395161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686180, 36.877098, 45.400436>,  <38.372585, 36.628941, 45.409225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686180, 36.877098, 45.400436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051528, -0.100311, -0.993621,
		-0.618638, 0.777851, -0.110610,
		0.783984, 0.620392, -0.021975,
		38.921375, 37.063217, 45.393845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241497, 37.151207, 44.878544>,  <38.372585, 36.628941, 45.409225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241497, 37.151207, 44.878544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639637, 37.168171, 44.913151>,  <38.878521, 37.178349, 44.933914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639637, 37.168171, 44.913151>,  <38.241497, 37.151207, 44.878544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639637, 37.168171, 44.913151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090232, -0.095388, -0.991342,
		-0.033789, 0.994537, -0.098771,
		0.995347, 0.042408, 0.086516,
		38.938240, 37.180893, 44.939106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504967, 37.675220, 44.345818>,  <38.241497, 37.151207, 44.878544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504967, 37.675220, 44.345818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801861, 37.428616, 44.450886>,  <38.979996, 37.280651, 44.513927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801861, 37.428616, 44.450886>,  <38.504967, 37.675220, 44.345818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801861, 37.428616, 44.450886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126069, -0.256507, -0.958285,
		0.658174, 0.744388, -0.112665,
		0.742235, -0.616515, 0.262670,
		39.024532, 37.243660, 44.529686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062981, 37.881592, 43.945244>,  <38.504967, 37.675220, 44.345818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062981, 37.881592, 43.945244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172184, 37.515961, 44.065197>,  <39.237705, 37.296581, 44.137169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172184, 37.515961, 44.065197>,  <39.062981, 37.881592, 43.945244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172184, 37.515961, 44.065197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336811, -0.201176, -0.919829,
		0.901123, 0.352130, 0.252947,
		0.273013, -0.914075, 0.299886,
		39.254089, 37.241737, 44.155163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706444, 37.777737, 43.724266>,  <39.062981, 37.881592, 43.945244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706444, 37.777737, 43.724266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575802, 37.408749, 43.806602>,  <39.497417, 37.187355, 43.856003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575802, 37.408749, 43.806602>,  <39.706444, 37.777737, 43.724266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575802, 37.408749, 43.806602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245920, -0.293224, -0.923874,
		0.912606, -0.251125, 0.322624,
		-0.326609, -0.922473, 0.205841,
		39.477818, 37.132008, 43.868355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275070, 37.435253, 43.959759>,  <39.706444, 37.777737, 43.724266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275070, 37.435253, 43.959759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999439, 37.208233, 43.779507>,  <39.834061, 37.072021, 43.671356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999439, 37.208233, 43.779507>,  <40.275070, 37.435253, 43.959759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999439, 37.208233, 43.779507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606926, -0.112167, -0.786804,
		0.396005, -0.815663, 0.421751,
		-0.689073, -0.567550, -0.450628,
		39.792717, 37.037968, 43.644318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653061, 36.788017, 43.765179>,  <40.275070, 37.435253, 43.959759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653061, 36.788017, 43.765179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328224, 36.846752, 43.539276>,  <40.133324, 36.881992, 43.403732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328224, 36.846752, 43.539276>,  <40.653061, 36.788017, 43.765179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328224, 36.846752, 43.539276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560081, -0.075491, -0.824991,
		-0.163777, -0.986275, -0.020938,
		-0.812088, 0.146842, -0.564758,
		40.084599, 36.890804, 43.369850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853001, 36.430786, 43.170902>,  <40.653061, 36.788017, 43.765179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853001, 36.430786, 43.170902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530834, 36.639946, 43.059273>,  <40.337536, 36.765442, 42.992294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530834, 36.639946, 43.059273>,  <40.853001, 36.430786, 43.170902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530834, 36.639946, 43.059273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337386, 0.017351, -0.941206,
		-0.487315, -0.852217, -0.190394,
		-0.805416, 0.522900, -0.279070,
		40.289211, 36.796818, 42.975552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636078, 36.061329, 42.580189>,  <40.853001, 36.430786, 43.170902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636078, 36.061329, 42.580189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496914, 36.436279, 42.586842>,  <40.413414, 36.661251, 42.590836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496914, 36.436279, 42.586842>,  <40.636078, 36.061329, 42.580189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496914, 36.436279, 42.586842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142563, 0.070435, -0.987276,
		-0.926624, -0.341115, -0.158141,
		-0.347913, 0.937379, 0.016636,
		40.392540, 36.717491, 42.591831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322929, 36.112419, 41.924755>,  <40.636078, 36.061329, 42.580189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322929, 36.112419, 41.924755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391800, 36.478909, 42.069473>,  <40.433121, 36.698803, 42.156303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391800, 36.478909, 42.069473>,  <40.322929, 36.112419, 41.924755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391800, 36.478909, 42.069473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440991, 0.256725, -0.860011,
		-0.880842, 0.307622, -0.359843,
		0.172178, 0.916221, 0.361793,
		40.443455, 36.753777, 42.178013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032284, 36.624928, 41.425266>,  <40.322929, 36.112419, 41.924755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032284, 36.624928, 41.425266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266090, 36.863934, 41.644836>,  <40.406372, 37.007336, 41.776577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266090, 36.863934, 41.644836>,  <40.032284, 36.624928, 41.425266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266090, 36.863934, 41.644836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342370, 0.431724, -0.834504,
		-0.735614, 0.675714, 0.047777,
		0.584513, 0.597515, 0.548926,
		40.441444, 37.043190, 41.809513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897320, 37.325035, 41.164139>,  <40.032284, 36.624928, 41.425266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897320, 37.325035, 41.164139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254826, 37.315205, 41.343281>,  <40.469330, 37.309307, 41.450768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254826, 37.315205, 41.343281>,  <39.897320, 37.325035, 41.164139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254826, 37.315205, 41.343281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420946, 0.390710, -0.818627,
		-0.154860, 0.920186, 0.359551,
		0.893769, -0.024579, 0.447854,
		40.522957, 37.307831, 41.477638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258976, 38.033154, 40.988621>,  <39.897320, 37.325035, 41.164139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258976, 38.033154, 40.988621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520172, 37.740402, 41.066551>,  <40.676888, 37.564751, 41.113308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520172, 37.740402, 41.066551>,  <40.258976, 38.033154, 40.988621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520172, 37.740402, 41.066551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549004, 0.280210, -0.787450,
		0.521729, 0.621154, 0.584779,
		0.652989, -0.731881, 0.194822,
		40.716068, 37.520840, 41.124996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830994, 38.286930, 40.792625>,  <40.258976, 38.033154, 40.988621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830994, 38.286930, 40.792625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940109, 37.903858, 40.829361>,  <41.005577, 37.674015, 40.851402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940109, 37.903858, 40.829361>,  <40.830994, 38.286930, 40.792625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940109, 37.903858, 40.829361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582673, 0.088500, -0.807873,
		0.765558, 0.273888, 0.582157,
		0.272788, -0.957681, 0.091835,
		41.021946, 37.616554, 40.856911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547955, 38.276321, 40.885357>,  <40.830994, 38.286930, 40.792625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547955, 38.276321, 40.885357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433537, 37.928406, 40.724533>,  <41.364887, 37.719658, 40.628040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433537, 37.928406, 40.724533>,  <41.547955, 38.276321, 40.885357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433537, 37.928406, 40.724533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567273, 0.184446, -0.802609,
		0.772256, -0.457658, 0.440646,
		-0.286045, -0.869786, -0.402057,
		41.347721, 37.667469, 40.603916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123608, 38.000244, 40.572918>,  <41.547955, 38.276321, 40.885357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123608, 38.000244, 40.572918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837879, 37.789978, 40.388130>,  <41.666443, 37.663818, 40.277256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837879, 37.789978, 40.388130>,  <42.123608, 38.000244, 40.572918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837879, 37.789978, 40.388130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585998, -0.088435, -0.805473,
		0.382555, -0.846082, 0.371210,
		-0.714324, -0.525666, -0.461971,
		41.623581, 37.632278, 40.249538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414715, 37.415268, 40.318836>,  <42.123608, 38.000244, 40.572918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414715, 37.415268, 40.318836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098946, 37.480072, 40.082005>,  <41.909485, 37.518955, 39.939903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098946, 37.480072, 40.082005>,  <42.414715, 37.415268, 40.318836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098946, 37.480072, 40.082005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587337, -0.081041, -0.805275,
		-0.178445, -0.983456, -0.031179,
		-0.789426, 0.162010, -0.592081,
		41.862118, 37.528675, 39.904381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374622, 36.934093, 39.888176>,  <42.414715, 37.415268, 40.318836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374622, 36.934093, 39.888176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195637, 37.238991, 39.701088>,  <42.088245, 37.421928, 39.588833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195637, 37.238991, 39.701088>,  <42.374622, 36.934093, 39.888176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195637, 37.238991, 39.701088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546867, -0.180604, -0.817507,
		-0.707610, -0.621588, -0.336031,
		-0.447464, 0.762241, -0.467723,
		42.061398, 37.467663, 39.560772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286125, 36.626144, 39.252262>,  <42.374622, 36.934093, 39.888176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286125, 36.626144, 39.252262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284084, 37.025814, 39.236092>,  <42.282860, 37.265614, 39.226391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284084, 37.025814, 39.236092>,  <42.286125, 36.626144, 39.252262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284084, 37.025814, 39.236092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451562, -0.033768, -0.891601,
		-0.892225, -0.022800, -0.451014,
		-0.005099, 0.999170, -0.040424,
		42.282555, 37.325565, 39.223965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863358, 36.844166, 38.606194>,  <42.286125, 36.626144, 39.252262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863358, 36.844166, 38.606194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.132191, 37.120617, 38.712509>,  <42.293491, 37.286488, 38.776299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.132191, 37.120617, 38.712509>,  <41.863358, 36.844166, 38.606194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132191, 37.120617, 38.712509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463968, -0.113302, -0.878576,
		-0.577093, 0.713796, -0.396810,
		0.672084, 0.691127, 0.265793,
		42.333817, 37.327953, 38.792248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888500, 37.489056, 38.193951>,  <41.863358, 36.844166, 38.606194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888500, 37.489056, 38.193951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256145, 37.408947, 38.329670>,  <42.476730, 37.360882, 38.411102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256145, 37.408947, 38.329670>,  <41.888500, 37.489056, 38.193951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256145, 37.408947, 38.329670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324328, -0.104396, -0.940166,
		0.223709, 0.974163, -0.030999,
		0.919111, -0.200270, 0.339302,
		42.531879, 37.348866, 38.431461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323490, 37.943726, 37.808605>,  <41.888500, 37.489056, 38.193951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323490, 37.943726, 37.808605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498951, 37.596512, 37.901646>,  <42.604229, 37.388184, 37.957470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498951, 37.596512, 37.901646>,  <42.323490, 37.943726, 37.808605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498951, 37.596512, 37.901646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397624, -0.044639, -0.916462,
		0.805902, 0.494496, 0.325570,
		0.438654, -0.868033, 0.232598,
		42.630547, 37.336102, 37.971424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992817, 37.913662, 37.469162>,  <42.323490, 37.943726, 37.808605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992817, 37.913662, 37.469162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891685, 37.535290, 37.550453>,  <42.831005, 37.308266, 37.599228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891685, 37.535290, 37.550453>,  <42.992817, 37.913662, 37.469162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891685, 37.535290, 37.550453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442009, -0.299779, -0.845435,
		0.860643, -0.123920, 0.493901,
		-0.252827, -0.945926, 0.203229,
		42.815838, 37.251511, 37.611423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586864, 37.374668, 37.434780>,  <42.992817, 37.913662, 37.469162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586864, 37.374668, 37.434780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221703, 37.230389, 37.358360>,  <43.002605, 37.143822, 37.312508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221703, 37.230389, 37.358360>,  <43.586864, 37.374668, 37.434780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.221703, 37.230389, 37.358360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351239, -0.455767, -0.817868,
		0.207929, -0.813740, 0.542763,
		-0.912905, -0.360699, -0.191050,
		42.947830, 37.122181, 37.301044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772461, 36.893600, 36.989586>,  <43.586864, 37.374668, 37.434780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772461, 36.893600, 36.989586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378334, 36.902927, 36.921925>,  <43.141857, 36.908524, 36.881329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378334, 36.902927, 36.921925>,  <43.772461, 36.893600, 36.989586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378334, 36.902927, 36.921925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123029, -0.590015, -0.797964,
		-0.118413, -0.807055, 0.578481,
		-0.985313, 0.023320, -0.169157,
		43.082741, 36.909924, 36.871178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472504, 36.217560, 37.016293>,  <43.772461, 36.893600, 36.989586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472504, 36.217560, 37.016293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278034, 36.466782, 36.771202>,  <43.161350, 36.616314, 36.624146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278034, 36.466782, 36.771202>,  <43.472504, 36.217560, 37.016293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278034, 36.466782, 36.771202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146468, -0.633156, -0.760040,
		-0.861498, -0.459259, 0.216569,
		-0.486177, 0.623053, -0.612729,
		43.132179, 36.653698, 36.587383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778015, 35.995148, 36.713772>,  <43.472504, 36.217560, 37.016293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778015, 35.995148, 36.713772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955284, 36.234505, 36.446781>,  <43.061646, 36.378120, 36.286587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955284, 36.234505, 36.446781>,  <42.778015, 35.995148, 36.713772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955284, 36.234505, 36.446781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047458, -0.727880, -0.684061,
		-0.895182, 0.334831, -0.294174,
		0.443168, 0.598397, -0.667475,
		43.088234, 36.414024, 36.246540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331730, 36.123085, 36.129547>,  <42.778015, 35.995148, 36.713772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331730, 36.123085, 36.129547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711979, 36.156071, 36.009865>,  <42.940128, 36.175861, 35.938057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711979, 36.156071, 36.009865>,  <42.331730, 36.123085, 36.129547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711979, 36.156071, 36.009865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151511, -0.718059, -0.679291,
		-0.270863, 0.691080, -0.670106,
		0.950620, 0.082466, -0.299202,
		42.997166, 36.180809, 35.920105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295364, 35.881020, 35.524475>,  <42.331730, 36.123085, 36.129547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295364, 35.881020, 35.524475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693836, 35.915913, 35.526180>,  <42.932919, 35.936848, 35.527203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693836, 35.915913, 35.526180>,  <42.295364, 35.881020, 35.524475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693836, 35.915913, 35.526180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065316, -0.711728, -0.699412,
		-0.057976, 0.697019, -0.714706,
		0.996179, 0.087231, 0.004264,
		42.992691, 35.942081, 35.527458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451435, 35.736835, 34.819374>,  <42.295364, 35.881020, 35.524475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451435, 35.736835, 34.819374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802105, 35.695038, 35.007217>,  <43.012505, 35.669960, 35.119923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802105, 35.695038, 35.007217>,  <42.451435, 35.736835, 34.819374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802105, 35.695038, 35.007217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266239, -0.707650, -0.654483,
		0.400706, 0.698793, -0.592556,
		0.876671, -0.104494, 0.469606,
		43.065105, 35.663689, 35.148098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026615, 35.679207, 34.345970>,  <42.451435, 35.736835, 34.819374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026615, 35.679207, 34.345970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184914, 35.483562, 34.656879>,  <43.279892, 35.366177, 34.843426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184914, 35.483562, 34.656879>,  <43.026615, 35.679207, 34.345970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.184914, 35.483562, 34.656879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387115, -0.678659, -0.624151,
		0.832782, 0.547902, -0.079237,
		0.395748, -0.489108, 0.777275,
		43.303638, 35.336830, 34.890060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432446, 35.183529, 34.015907>,  <43.026615, 35.679207, 34.345970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432446, 35.183529, 34.015907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435337, 35.047894, 34.392197>,  <43.437073, 34.966511, 34.617970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435337, 35.047894, 34.392197>,  <43.432446, 35.183529, 34.015907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435337, 35.047894, 34.392197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159909, -0.928252, -0.335823,
		0.987105, 0.152857, 0.047515,
		0.007227, -0.339091, 0.940726,
		43.437504, 34.946167, 34.674416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980698, 34.783760, 34.125980>,  <43.432446, 35.183529, 34.015907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980698, 34.783760, 34.125980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.699688, 34.678955, 34.390652>,  <43.531082, 34.616074, 34.549454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.699688, 34.678955, 34.390652>,  <43.980698, 34.783760, 34.125980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699688, 34.678955, 34.390652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095026, -0.955971, -0.277650,
		0.705289, -0.132179, 0.696488,
		-0.702522, -0.262008, 0.661676,
		43.488930, 34.600353, 34.589153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.095112, 34.068676, 34.258068>,  <43.980698, 34.783760, 34.125980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.095112, 34.068676, 34.258068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727283, 34.128887, 34.403248>,  <43.506588, 34.165012, 34.490356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727283, 34.128887, 34.403248>,  <44.095112, 34.068676, 34.258068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727283, 34.128887, 34.403248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277876, -0.902208, -0.329858,
		0.277807, -0.404183, 0.871470,
		-0.919570, 0.150524, 0.362952,
		43.451412, 34.174046, 34.512135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967701, 33.359135, 34.607193>,  <44.095112, 34.068676, 34.258068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967701, 33.359135, 34.607193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633095, 33.557171, 34.513275>,  <43.432331, 33.675995, 34.456924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633095, 33.557171, 34.513275>,  <43.967701, 33.359135, 34.607193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633095, 33.557171, 34.513275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317934, -0.787541, -0.527918,
		-0.446275, -0.366964, 0.816196,
		-0.836514, 0.495093, -0.234789,
		43.382141, 33.705700, 34.442837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445847, 32.812355, 34.564114>,  <43.967701, 33.359135, 34.607193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445847, 32.812355, 34.564114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287525, 33.096004, 34.330708>,  <43.192532, 33.266193, 34.190666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287525, 33.096004, 34.330708>,  <43.445847, 32.812355, 34.564114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287525, 33.096004, 34.330708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249049, -0.694475, -0.675040,
		-0.883920, -0.121860, 0.451481,
		-0.395803, 0.709122, -0.583511,
		43.168785, 33.308743, 34.155655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717484, 32.567307, 34.404613>,  <43.445847, 32.812355, 34.564114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717484, 32.567307, 34.404613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829952, 32.846996, 34.141701>,  <42.897434, 33.014812, 33.983952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829952, 32.846996, 34.141701>,  <42.717484, 32.567307, 34.404613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829952, 32.846996, 34.141701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509998, -0.471317, -0.719557,
		-0.812923, 0.537533, 0.224083,
		0.281172, 0.699227, -0.657286,
		42.914303, 33.056763, 33.944515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186192, 32.681377, 34.063763>,  <42.717484, 32.567307, 34.404613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186192, 32.681377, 34.063763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467789, 32.798965, 33.805161>,  <42.636745, 32.869518, 33.649998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467789, 32.798965, 33.805161>,  <42.186192, 32.681377, 34.063763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467789, 32.798965, 33.805161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508661, -0.426585, -0.747857,
		-0.495637, 0.855341, -0.150784,
		0.703994, 0.293968, -0.646510,
		42.678986, 32.887157, 33.611206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794395, 32.935173, 33.526890>,  <42.186192, 32.681377, 34.063763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794395, 32.935173, 33.526890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157356, 32.894924, 33.363674>,  <42.375134, 32.870773, 33.265747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157356, 32.894924, 33.363674>,  <41.794395, 32.935173, 33.526890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157356, 32.894924, 33.363674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395221, -0.534429, -0.747118,
		-0.142888, 0.839202, -0.524712,
		0.907404, -0.100623, -0.408034,
		42.429577, 32.864738, 33.241264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646038, 32.959187, 32.883545>,  <41.794395, 32.935173, 33.526890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646038, 32.959187, 32.883545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025677, 32.833347, 32.889904>,  <42.253460, 32.757843, 32.893719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025677, 32.833347, 32.889904>,  <41.646038, 32.959187, 32.883545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025677, 32.833347, 32.889904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228104, -0.721215, -0.654078,
		0.217237, 0.617154, -0.756261,
		0.949093, -0.314596, 0.015899,
		42.310406, 32.738968, 32.894672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773758, 32.975971, 32.139511>,  <41.646038, 32.959187, 32.883545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773758, 32.975971, 32.139511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025120, 32.721909, 32.319149>,  <42.175938, 32.569469, 32.426933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025120, 32.721909, 32.319149>,  <41.773758, 32.975971, 32.139511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025120, 32.721909, 32.319149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201835, -0.690689, -0.694415,
		0.751249, 0.345727, -0.562226,
		0.628401, -0.635155, 0.449100,
		42.213638, 32.531361, 32.453880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254158, 32.810478, 31.670637>,  <41.773758, 32.975971, 32.139511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254158, 32.810478, 31.670637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249954, 32.521816, 31.947504>,  <42.247433, 32.348618, 32.113625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249954, 32.521816, 31.947504>,  <42.254158, 32.810478, 31.670637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249954, 32.521816, 31.947504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012287, -0.692062, -0.721734,
		0.999869, -0.016087, -0.001597,
		-0.010506, -0.721659, 0.692169,
		42.246803, 32.305317, 32.155155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789455, 32.425724, 31.417231>,  <42.254158, 32.810478, 31.670637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789455, 32.425724, 31.417231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536690, 32.210384, 31.640251>,  <42.385029, 32.081181, 31.774063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536690, 32.210384, 31.640251>,  <42.789455, 32.425724, 31.417231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536690, 32.210384, 31.640251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054798, -0.686552, -0.725013,
		0.773098, -0.488699, 0.404342,
		-0.631915, -0.538349, 0.557552,
		42.347115, 32.048882, 31.807516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102768, 31.679962, 31.432755>,  <42.789455, 32.425724, 31.417231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102768, 31.679962, 31.432755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713860, 31.686401, 31.526073>,  <42.480515, 31.690264, 31.582066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713860, 31.686401, 31.526073>,  <43.102768, 31.679962, 31.432755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713860, 31.686401, 31.526073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184289, -0.666881, -0.722016,
		0.143961, -0.744990, 0.651356,
		-0.972272, 0.016096, 0.233298,
		42.422176, 31.691231, 31.596064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050266, 31.089567, 31.364710>,  <43.102768, 31.679962, 31.432755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050266, 31.089567, 31.364710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672115, 31.219936, 31.367155>,  <42.445225, 31.298159, 31.368622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672115, 31.219936, 31.367155>,  <43.050266, 31.089567, 31.364710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672115, 31.219936, 31.367155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224273, -0.636690, -0.737785,
		-0.236568, -0.698856, 0.675008,
		-0.945377, 0.325923, 0.006114,
		42.388504, 31.317713, 31.368990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618328, 30.517351, 31.462429>,  <43.050266, 31.089567, 31.364710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618328, 30.517351, 31.462429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355816, 30.787537, 31.327940>,  <42.198307, 30.949648, 31.247246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355816, 30.787537, 31.327940>,  <42.618328, 30.517351, 31.462429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355816, 30.787537, 31.327940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236156, -0.607111, -0.758714,
		-0.716608, -0.418528, 0.557950,
		-0.656280, 0.675463, -0.336223,
		42.158932, 30.990175, 31.227074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897411, 30.174862, 31.234837>,  <42.618328, 30.517351, 31.462429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897411, 30.174862, 31.234837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.967106, 30.522121, 31.048950>,  <42.008923, 30.730476, 30.937418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.967106, 30.522121, 31.048950>,  <41.897411, 30.174862, 31.234837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967106, 30.522121, 31.048950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318211, -0.396970, -0.860904,
		-0.931870, 0.297881, 0.207087,
		0.174240, 0.868148, -0.464714,
		42.019379, 30.782566, 30.909536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703724, 29.517019, 31.055710>,  <41.897411, 30.174862, 31.234837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703724, 29.517019, 31.055710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847446, 29.143852, 31.046207>,  <41.933681, 28.919952, 31.040506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847446, 29.143852, 31.046207>,  <41.703724, 29.517019, 31.055710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847446, 29.143852, 31.046207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631442, 0.261782, -0.729898,
		0.687154, 0.247256, 0.683143,
		0.359306, -0.932917, -0.023757,
		41.955238, 28.863977, 31.039080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227661, 29.399372, 30.599321>,  <41.703724, 29.517019, 31.055710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227661, 29.399372, 30.599321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469799, 29.095024, 30.505825>,  <42.615082, 28.912415, 30.449726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469799, 29.095024, 30.505825>,  <42.227661, 29.399372, 30.599321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469799, 29.095024, 30.505825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541648, 0.608950, -0.579480,
		0.583246, 0.224179, 0.780748,
		0.605344, -0.760870, -0.233742,
		42.651402, 28.866762, 30.435703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793301, 29.773533, 30.474976>,  <42.227661, 29.399372, 30.599321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793301, 29.773533, 30.474976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865070, 29.400152, 30.350733>,  <42.908131, 29.176125, 30.276188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865070, 29.400152, 30.350733>,  <42.793301, 29.773533, 30.474976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865070, 29.400152, 30.350733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765247, 0.330840, -0.552216,
		0.618228, -0.138612, 0.773680,
		0.179421, -0.933452, -0.310607,
		42.918896, 29.120117, 30.257551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961246, 30.397058, 30.040443>,  <42.793301, 29.773533, 30.474976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961246, 30.397058, 30.040443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907288, 30.439238, 29.646351>,  <42.874912, 30.464546, 29.409895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907288, 30.439238, 29.646351>,  <42.961246, 30.397058, 30.040443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907288, 30.439238, 29.646351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555489, 0.815328, 0.163318,
		0.820510, 0.569317, -0.051406,
		-0.134893, 0.105449, -0.985233,
		42.866821, 30.470873, 29.350780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662834, 31.015072, 29.872320>,  <42.961246, 30.397058, 30.040443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662834, 31.015072, 29.872320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540993, 30.882664, 29.515078>,  <42.467888, 30.803219, 29.300732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540993, 30.882664, 29.515078>,  <42.662834, 31.015072, 29.872320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540993, 30.882664, 29.515078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742357, 0.669987, 0.004871,
		0.596758, 0.664488, -0.449817,
		-0.304608, -0.331018, -0.893108,
		42.449612, 30.783358, 29.247145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614567, 31.562363, 29.430664>,  <42.662834, 31.015072, 29.872320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614567, 31.562363, 29.430664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345421, 31.268480, 29.396111>,  <42.183933, 31.092150, 29.375378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345421, 31.268480, 29.396111>,  <42.614567, 31.562363, 29.430664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345421, 31.268480, 29.396111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703304, 0.599107, 0.382668,
		-0.229395, 0.318237, -0.919839,
		-0.672861, -0.734708, -0.086385,
		42.143562, 31.048067, 29.370195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089073, 31.739780, 28.913715>,  <42.614567, 31.562363, 29.430664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089073, 31.739780, 28.913715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961582, 31.513411, 29.217857>,  <41.885086, 31.377588, 29.400343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961582, 31.513411, 29.217857>,  <42.089073, 31.739780, 28.913715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961582, 31.513411, 29.217857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540240, 0.767602, 0.344858,
		-0.778814, -0.300857, -0.550395,
		-0.318731, -0.565925, 0.760354,
		41.865963, 31.343634, 29.445963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153461, 32.278820, 28.480108>,  <42.089073, 31.739780, 28.913715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153461, 32.278820, 28.480108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391205, 32.266487, 28.158665>,  <42.533852, 32.259087, 27.965797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391205, 32.266487, 28.158665>,  <42.153461, 32.278820, 28.480108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391205, 32.266487, 28.158665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539186, 0.756677, 0.369754,
		0.596673, -0.653062, 0.466361,
		0.594357, -0.030833, -0.803611,
		42.569511, 32.257236, 27.917582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892735, 32.018135, 28.563568>,  <42.153461, 32.278820, 28.480108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892735, 32.018135, 28.563568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874020, 32.289658, 28.270437>,  <42.862789, 32.452572, 28.094559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874020, 32.289658, 28.270437>,  <42.892735, 32.018135, 28.563568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874020, 32.289658, 28.270437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602648, 0.604258, 0.521236,
		0.796634, -0.417248, -0.437353,
		-0.046790, 0.678805, -0.732827,
		42.859982, 32.493298, 28.050589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441502, 32.425663, 28.302481>,  <42.892735, 32.018135, 28.563568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441502, 32.425663, 28.302481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.153503, 32.689533, 28.216278>,  <42.980705, 32.847855, 28.164557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.153503, 32.689533, 28.216278>,  <43.441502, 32.425663, 28.302481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153503, 32.689533, 28.216278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217194, 0.509131, 0.832834,
		0.659118, 0.552827, -0.509848,
		-0.719993, 0.659672, -0.215507,
		42.937504, 32.887436, 28.151627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688492, 33.190105, 28.172026>,  <43.441502, 32.425663, 28.302481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688492, 33.190105, 28.172026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.325134, 33.152206, 28.334917>,  <43.107121, 33.129467, 28.432652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.325134, 33.152206, 28.334917>,  <43.688492, 33.190105, 28.172026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325134, 33.152206, 28.334917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245304, 0.667968, 0.702599,
		-0.338584, 0.738134, -0.583539,
		-0.908398, -0.094744, 0.407231,
		43.052616, 33.123783, 28.457087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635796, 33.827881, 28.494928>,  <43.688492, 33.190105, 28.172026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635796, 33.827881, 28.494928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340328, 33.617828, 28.663977>,  <43.163048, 33.491795, 28.765406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340328, 33.617828, 28.663977>,  <43.635796, 33.827881, 28.494928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340328, 33.617828, 28.663977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131828, 0.502316, 0.854576,
		-0.661057, 0.686958, -0.301815,
		-0.738664, -0.525136, 0.422620,
		43.118729, 33.460289, 28.790762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250160, 34.294502, 28.792389>,  <43.635796, 33.827881, 28.494928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250160, 34.294502, 28.792389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150078, 33.959869, 28.987337>,  <43.090031, 33.759090, 29.104305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150078, 33.959869, 28.987337>,  <43.250160, 34.294502, 28.792389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150078, 33.959869, 28.987337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100292, 0.523067, 0.846370,
		-0.962985, 0.162886, -0.214776,
		-0.250205, -0.836581, 0.487370,
		43.075016, 33.708897, 29.133549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744087, 34.495506, 29.249889>,  <43.250160, 34.294502, 28.792389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744087, 34.495506, 29.249889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882900, 34.157055, 29.411697>,  <42.966190, 33.953983, 29.508781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882900, 34.157055, 29.411697>,  <42.744087, 34.495506, 29.249889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882900, 34.157055, 29.411697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058328, 0.411019, 0.909759,
		-0.936037, -0.339313, 0.093285,
		0.347035, -0.846127, 0.404520,
		42.987011, 33.903217, 29.533054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395214, 34.385452, 29.850622>,  <42.744087, 34.495506, 29.249889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395214, 34.385452, 29.850622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.738457, 34.181892, 29.877970>,  <42.944405, 34.059757, 29.894379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.738457, 34.181892, 29.877970>,  <42.395214, 34.385452, 29.850622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738457, 34.181892, 29.877970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140448, 0.360705, 0.922045,
		-0.493886, -0.781612, 0.380997,
		0.858109, -0.508896, 0.068371,
		42.995888, 34.029224, 29.898481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431530, 34.036167, 30.565845>,  <42.395214, 34.385452, 29.850622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431530, 34.036167, 30.565845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809704, 34.032276, 30.435575>,  <43.036606, 34.029942, 30.357414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809704, 34.032276, 30.435575>,  <42.431530, 34.036167, 30.565845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809704, 34.032276, 30.435575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319551, 0.222809, 0.921001,
		0.063602, -0.974813, 0.213760,
		0.945432, -0.009730, -0.325674,
		43.093334, 34.029358, 30.337873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929787, 33.683479, 30.996609>,  <42.431530, 34.036167, 30.565845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929787, 33.683479, 30.996609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181683, 33.910587, 30.784546>,  <43.332821, 34.046852, 30.657309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181683, 33.910587, 30.784546>,  <42.929787, 33.683479, 30.996609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181683, 33.910587, 30.784546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314457, 0.437740, 0.842318,
		0.710312, -0.697154, 0.097124,
		0.629741, 0.567768, -0.530157,
		43.370605, 34.080917, 30.625500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501469, 33.648991, 31.401600>,  <42.929787, 33.683479, 30.996609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501469, 33.648991, 31.401600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.589802, 33.958321, 31.163874>,  <43.642799, 34.143917, 31.021238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.589802, 33.958321, 31.163874>,  <43.501469, 33.648991, 31.401600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.589802, 33.958321, 31.163874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442615, 0.463534, 0.767613,
		0.869095, -0.432563, -0.239922,
		0.220829, 0.773321, -0.594314,
		43.656052, 34.190315, 30.985580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014542, 33.845261, 31.727463>,  <43.501469, 33.648991, 31.401600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014542, 33.845261, 31.727463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921753, 34.171124, 31.514854>,  <43.866077, 34.366642, 31.387289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921753, 34.171124, 31.514854>,  <44.014542, 33.845261, 31.727463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921753, 34.171124, 31.514854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364700, 0.579408, 0.728890,
		0.901766, -0.024761, -0.431515,
		-0.231975, 0.814661, -0.531521,
		43.852161, 34.415524, 31.355398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638584, 34.170902, 31.714056>,  <44.014542, 33.845261, 31.727463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638584, 34.170902, 31.714056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344372, 34.428097, 31.628679>,  <44.167843, 34.582413, 31.577454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344372, 34.428097, 31.628679>,  <44.638584, 34.170902, 31.714056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344372, 34.428097, 31.628679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398857, 0.665640, 0.630743,
		0.547637, 0.378798, -0.746060,
		-0.735531, 0.642990, -0.213443,
		44.123711, 34.620995, 31.564646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.878380, 34.828823, 31.545166>,  <44.638584, 34.170902, 31.714056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.878380, 34.828823, 31.545166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.505836, 34.920380, 31.658426>,  <44.282310, 34.975315, 31.726381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.505836, 34.920380, 31.658426>,  <44.878380, 34.828823, 31.545166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505836, 34.920380, 31.658426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361006, 0.681628, 0.636441,
		-0.047325, 0.694975, -0.717475,
		-0.931362, 0.228893, 0.283149,
		44.226429, 34.989048, 31.743370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780396, 35.565231, 31.600071>,  <44.878380, 34.828823, 31.545166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780396, 35.565231, 31.600071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497082, 35.401215, 31.829924>,  <44.327095, 35.302807, 31.967836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497082, 35.401215, 31.829924>,  <44.780396, 35.565231, 31.600071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497082, 35.401215, 31.829924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188579, 0.674528, 0.713758,
		-0.680274, 0.613907, -0.400433,
		-0.708284, -0.410038, 0.574633,
		44.284595, 35.278202, 32.002312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594501, 36.198097, 31.996880>,  <44.780396, 35.565231, 31.600071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594501, 36.198097, 31.996880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408352, 35.895416, 32.180542>,  <44.296661, 35.713806, 32.290741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.408352, 35.895416, 32.180542>,  <44.594501, 36.198097, 31.996880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408352, 35.895416, 32.180542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146774, 0.445595, 0.883121,
		-0.872861, 0.478372, -0.096303,
		-0.465373, -0.756707, 0.459155,
		44.268742, 35.668404, 32.318287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019680, 36.541248, 32.447815>,  <44.594501, 36.198097, 31.996880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019680, 36.541248, 32.447815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131313, 36.191433, 32.606457>,  <44.198292, 35.981544, 32.701641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131313, 36.191433, 32.606457>,  <44.019680, 36.541248, 32.447815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.131313, 36.191433, 32.606457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007277, 0.411073, 0.911573,
		-0.960239, -0.257291, 0.108359,
		0.279083, -0.874540, 0.396600,
		44.215038, 35.929070, 32.725437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456078, 36.413647, 32.982590>,  <44.019680, 36.541248, 32.447815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456078, 36.413647, 32.982590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779713, 36.201183, 33.083191>,  <43.973892, 36.073704, 33.143551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779713, 36.201183, 33.083191>,  <43.456078, 36.413647, 32.982590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779713, 36.201183, 33.083191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019692, 0.403202, 0.914899,
		-0.587361, -0.745184, 0.315766,
		0.809086, -0.531158, 0.251499,
		44.022438, 36.041836, 33.158642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391277, 36.319649, 33.747482>,  <43.456078, 36.413647, 32.982590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391277, 36.319649, 33.747482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762531, 36.184933, 33.684059>,  <43.985283, 36.104103, 33.646004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762531, 36.184933, 33.684059>,  <43.391277, 36.319649, 33.747482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762531, 36.184933, 33.684059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287864, 0.379292, 0.879359,
		-0.236022, -0.861805, 0.448984,
		0.928132, -0.336794, -0.158561,
		44.040970, 36.083893, 33.636490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684830, 35.994030, 34.368652>,  <43.391277, 36.319649, 33.747482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684830, 35.994030, 34.368652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010941, 36.111290, 34.168900>,  <44.206608, 36.181648, 34.049046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010941, 36.111290, 34.168900>,  <43.684830, 35.994030, 34.368652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010941, 36.111290, 34.168900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411014, 0.314541, 0.855647,
		0.407916, -0.902842, 0.135946,
		0.815275, 0.293156, -0.499387,
		44.255524, 36.199234, 34.019085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129028, 35.937904, 34.799820>,  <43.684830, 35.994030, 34.368652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129028, 35.937904, 34.799820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320698, 36.178562, 34.544193>,  <44.435699, 36.322956, 34.390816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320698, 36.178562, 34.544193>,  <44.129028, 35.937904, 34.799820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320698, 36.178562, 34.544193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484588, 0.425732, 0.764151,
		0.731823, -0.675848, -0.087552,
		0.479176, 0.601650, -0.639069,
		44.464451, 36.359058, 34.352474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.887718, 36.130939, 35.108482>,  <44.129028, 35.937904, 34.799820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.887718, 36.130939, 35.108482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877380, 36.391411, 34.805088>,  <44.871178, 36.547691, 34.623051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877380, 36.391411, 34.805088>,  <44.887718, 36.130939, 35.108482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.877380, 36.391411, 34.805088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509612, 0.661330, 0.550399,
		0.860016, -0.372310, -0.348937,
		-0.025843, 0.651175, -0.758488,
		44.869629, 36.586761, 34.577541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512081, 36.522327, 35.036266>,  <44.887718, 36.130939, 35.108482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512081, 36.522327, 35.036266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.232533, 36.765434, 34.885433>,  <45.064804, 36.911297, 34.794933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.232533, 36.765434, 34.885433>,  <45.512081, 36.522327, 35.036266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.232533, 36.765434, 34.885433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342061, 0.747018, 0.570052,
		0.628145, 0.269411, -0.729966,
		-0.698876, 0.607768, -0.377081,
		45.022869, 36.947765, 34.772308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.858192, 37.223801, 35.008896>,  <45.512081, 36.522327, 35.036266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.858192, 37.223801, 35.008896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.466328, 37.297504, 34.977123>,  <45.231209, 37.341728, 34.958061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.466328, 37.297504, 34.977123>,  <45.858192, 37.223801, 35.008896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.466328, 37.297504, 34.977123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123520, 0.865771, 0.484957,
		0.158124, 0.465284, -0.870924,
		-0.979663, 0.184260, -0.079427,
		45.172428, 37.352783, 34.953297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.380619, 36.714722, 34.592560>,  <45.858192, 37.223801, 35.008896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.380619, 36.714722, 34.592560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744694, 36.549088, 34.588760>,  <46.963139, 36.449707, 34.586479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744694, 36.549088, 34.588760>,  <46.380619, 36.714722, 34.592560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.744694, 36.549088, 34.588760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345080, -0.770797, 0.535530,
		-0.229077, -0.484155, -0.844463,
		0.910189, -0.414085, -0.009500,
		47.017750, 36.424862, 34.585911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.302937, 35.954117, 34.416168>,  <46.380619, 36.714722, 34.592560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.302937, 35.954117, 34.416168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.628410, 36.052082, 34.627045>,  <46.823696, 36.110863, 34.753571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.628410, 36.052082, 34.627045>,  <46.302937, 35.954117, 34.416168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.628410, 36.052082, 34.627045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218863, -0.711108, 0.668150,
		0.538529, -0.659047, -0.525017,
		0.813686, 0.244912, 0.527193,
		46.872517, 36.125557, 34.785202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.696842, 35.310631, 34.652344>,  <46.302937, 35.954117, 34.416168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.696842, 35.310631, 34.652344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.788399, 35.600494, 34.912334>,  <46.843330, 35.774414, 35.068329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.788399, 35.600494, 34.912334>,  <46.696842, 35.310631, 34.652344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.788399, 35.600494, 34.912334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310353, -0.578539, 0.754303,
		0.922654, -0.374375, 0.092480,
		0.228889, 0.724663, 0.649980,
		46.857067, 35.817894, 35.107327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.462162, 35.056900, 34.625034>,  <46.696842, 35.310631, 34.652344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.462162, 35.056900, 34.625034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.572487, 34.962448, 34.997738>,  <47.638683, 34.905777, 35.221359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.572487, 34.962448, 34.997738>,  <47.462162, 35.056900, 34.625034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.572487, 34.962448, 34.997738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759856, -0.647232, 0.060908,
		0.588681, -0.724801, -0.357937,
		0.275815, -0.236125, 0.931757,
		47.655231, 34.891609, 35.277264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.870358, 38.622082, 45.943420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.520702, 38.565987, 45.757427>,  <33.310909, 38.532330, 45.645832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.520702, 38.565987, 45.757427>,  <33.870358, 38.622082, 45.943420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520702, 38.565987, 45.757427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485574, -0.233152, -0.842531,
		0.009740, -0.962276, 0.271902,
		-0.874142, -0.140235, -0.464985,
		33.258461, 38.523914, 45.617931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888527, 37.962975, 45.564262>,  <33.870358, 38.622082, 45.943420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888527, 37.962975, 45.564262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.602463, 38.169174, 45.375454>,  <33.430824, 38.292892, 45.262169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.602463, 38.169174, 45.375454>,  <33.888527, 37.962975, 45.564262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602463, 38.169174, 45.375454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393984, -0.260508, -0.881426,
		-0.577341, -0.816330, -0.016794,
		-0.715160, 0.515500, -0.472023,
		33.387917, 38.323826, 45.233849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733326, 37.550800, 44.982639>,  <33.888527, 37.962975, 45.564262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733326, 37.550800, 44.982639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.574696, 37.904827, 44.885166>,  <33.479519, 38.117245, 44.826683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.574696, 37.904827, 44.885166>,  <33.733326, 37.550800, 44.982639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574696, 37.904827, 44.885166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130285, -0.208501, -0.969306,
		-0.908711, -0.416150, -0.032626,
		-0.396574, 0.885069, -0.243685,
		33.455723, 38.170349, 44.812061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247078, 37.468582, 44.525635>,  <33.733326, 37.550800, 44.982639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247078, 37.468582, 44.525635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.367760, 37.841000, 44.443539>,  <33.440170, 38.064449, 44.394279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.367760, 37.841000, 44.443539>,  <33.247078, 37.468582, 44.525635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367760, 37.841000, 44.443539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222663, -0.278132, -0.934379,
		-0.927035, 0.236210, -0.291224,
		0.301709, 0.931046, -0.205242,
		33.458271, 38.120312, 44.381966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938347, 37.579002, 43.792629>,  <33.247078, 37.468582, 44.525635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938347, 37.579002, 43.792629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.205570, 37.869713, 43.856487>,  <33.365906, 38.044140, 43.894802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.205570, 37.869713, 43.856487>,  <32.938347, 37.579002, 43.792629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205570, 37.869713, 43.856487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221901, 0.010200, -0.975016,
		-0.710249, 0.686796, -0.154459,
		0.668062, 0.726779, 0.159645,
		33.405987, 38.087746, 43.904381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747429, 38.125225, 43.263496>,  <32.938347, 37.579002, 43.792629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747429, 38.125225, 43.263496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.131130, 38.160439, 43.370892>,  <33.361351, 38.181568, 43.435329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.131130, 38.160439, 43.370892>,  <32.747429, 38.125225, 43.263496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131130, 38.160439, 43.370892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270649, -0.013382, -0.962585,
		-0.081149, 0.996027, -0.036664,
		0.959252, 0.088036, 0.268488,
		33.418907, 38.186848, 43.451439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964573, 38.660263, 42.748867>,  <32.747429, 38.125225, 43.263496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964573, 38.660263, 42.748867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.300976, 38.491711, 42.884598>,  <33.502819, 38.390579, 42.966034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.300976, 38.491711, 42.884598>,  <32.964573, 38.660263, 42.748867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300976, 38.491711, 42.884598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365278, -0.020405, -0.930675,
		0.399090, 0.906656, 0.136759,
		0.841011, -0.421378, 0.339325,
		33.553280, 38.365295, 42.986397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466759, 38.998112, 42.432732>,  <32.964573, 38.660263, 42.748867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466759, 38.998112, 42.432732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.624367, 38.645813, 42.537834>,  <33.718929, 38.434433, 42.600895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.624367, 38.645813, 42.537834>,  <33.466759, 38.998112, 42.432732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624367, 38.645813, 42.537834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480749, -0.046162, -0.875642,
		0.783345, 0.471339, 0.405228,
		0.394018, -0.880743, 0.262757,
		33.742573, 38.381592, 42.616661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112381, 39.042984, 42.355434>,  <33.466759, 38.998112, 42.432732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112381, 39.042984, 42.355434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.083183, 38.644089, 42.349964>,  <34.065666, 38.404751, 42.346684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.083183, 38.644089, 42.349964>,  <34.112381, 39.042984, 42.355434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083183, 38.644089, 42.349964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552702, -0.029037, -0.832873,
		0.830176, -0.068351, 0.553295,
		-0.072994, -0.997239, -0.013672,
		34.061287, 38.344917, 42.345863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740101, 38.791771, 42.156490>,  <34.112381, 39.042984, 42.355434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740101, 38.791771, 42.156490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.506577, 38.476063, 42.080368>,  <34.366463, 38.286636, 42.034695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.506577, 38.476063, 42.080368>,  <34.740101, 38.791771, 42.156490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506577, 38.476063, 42.080368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530651, -0.193540, -0.825198,
		0.614474, -0.582744, 0.531818,
		-0.583808, -0.789272, -0.190309,
		34.331432, 38.239281, 42.023277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174091, 38.236343, 42.024197>,  <34.740101, 38.791771, 42.156490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174091, 38.236343, 42.024197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.832390, 38.183456, 41.823093>,  <34.627369, 38.151722, 41.702431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.832390, 38.183456, 41.823093>,  <35.174091, 38.236343, 42.024197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832390, 38.183456, 41.823093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506938, 0.002322, -0.861979,
		0.115140, -0.991217, 0.065045,
		-0.854258, -0.132222, -0.502753,
		34.576111, 38.143791, 41.672268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491383, 37.980377, 41.556709>,  <35.174091, 38.236343, 42.024197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491383, 37.980377, 41.556709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115131, 38.024506, 41.428307>,  <34.889381, 38.050983, 41.351265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115131, 38.024506, 41.428307>,  <35.491383, 37.980377, 41.556709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115131, 38.024506, 41.428307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309792, -0.107503, -0.944707,
		-0.138737, -0.988064, 0.066942,
		-0.940628, 0.110328, -0.321009,
		34.832943, 38.057602, 41.332005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276833, 37.410023, 41.210606>,  <35.491383, 37.980377, 41.556709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276833, 37.410023, 41.210606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.011494, 37.659348, 41.044975>,  <34.852291, 37.808941, 40.945595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.011494, 37.659348, 41.044975>,  <35.276833, 37.410023, 41.210606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011494, 37.659348, 41.044975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370697, -0.206973, -0.905398,
		-0.650046, -0.754088, -0.093765,
		-0.663343, 0.623309, -0.414079,
		34.812492, 37.846340, 40.920750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818100, 37.058727, 40.651562>,  <35.276833, 37.410023, 41.210606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818100, 37.058727, 40.651562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.811775, 37.450848, 40.572819>,  <34.807980, 37.686119, 40.525574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.811775, 37.450848, 40.572819>,  <34.818100, 37.058727, 40.651562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811775, 37.450848, 40.572819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277991, -0.184811, -0.942638,
		-0.960454, -0.069633, -0.269593,
		-0.015815, 0.980304, -0.196860,
		34.807030, 37.744938, 40.513760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527309, 37.113590, 40.007370>,  <34.818100, 37.058727, 40.651562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527309, 37.113590, 40.007370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706951, 37.469936, 40.034683>,  <34.814735, 37.683743, 40.051071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706951, 37.469936, 40.034683>,  <34.527309, 37.113590, 40.007370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706951, 37.469936, 40.034683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325671, -0.092054, -0.940991,
		-0.832011, 0.444843, -0.331471,
		0.449107, 0.890865, 0.068283,
		34.841682, 37.737194, 40.055168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317757, 37.587109, 39.453960>,  <34.527309, 37.113590, 40.007370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317757, 37.587109, 39.453960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.685230, 37.704651, 39.559547>,  <34.905712, 37.775177, 39.622898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.685230, 37.704651, 39.559547>,  <34.317757, 37.587109, 39.453960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685230, 37.704651, 39.559547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216958, 0.183061, -0.958863,
		-0.330086, 0.938157, 0.104420,
		0.918680, 0.293852, 0.263967,
		34.960835, 37.792805, 39.638737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464104, 38.104939, 38.999001>,  <34.317757, 37.587109, 39.453960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464104, 38.104939, 38.999001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.833260, 38.089977, 39.152302>,  <35.054752, 38.081001, 39.244282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.833260, 38.089977, 39.152302>,  <34.464104, 38.104939, 38.999001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833260, 38.089977, 39.152302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370081, 0.361132, -0.855935,
		-0.106393, 0.931764, 0.347125,
		0.922887, -0.037399, 0.383250,
		35.110126, 38.078758, 39.267277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790955, 38.774288, 38.906841>,  <34.464104, 38.104939, 38.999001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790955, 38.774288, 38.906841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.085819, 38.507851, 38.952286>,  <35.262737, 38.347988, 38.979553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.085819, 38.507851, 38.952286>,  <34.790955, 38.774288, 38.906841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085819, 38.507851, 38.952286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489079, 0.409948, -0.769899,
		0.466249, 0.623108, 0.627972,
		0.737166, -0.666092, 0.113612,
		35.306969, 38.308022, 38.986370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372421, 39.100391, 38.728748>,  <34.790955, 38.774288, 38.906841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372421, 39.100391, 38.728748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518082, 38.730415, 38.685162>,  <35.605476, 38.508430, 38.659008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518082, 38.730415, 38.685162>,  <35.372421, 39.100391, 38.728748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518082, 38.730415, 38.685162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612274, 0.325916, -0.720346,
		0.701795, 0.195593, 0.685001,
		0.364148, -0.924944, -0.108970,
		35.627327, 38.452930, 38.652470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037315, 39.226891, 38.551659>,  <35.372421, 39.100391, 38.728748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037315, 39.226891, 38.551659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.984097, 38.846012, 38.441666>,  <35.952164, 38.617485, 38.375671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.984097, 38.846012, 38.441666>,  <36.037315, 39.226891, 38.551659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984097, 38.846012, 38.441666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642968, 0.128217, -0.755085,
		0.754248, -0.277271, 0.595173,
		-0.133051, -0.952198, -0.274983,
		35.944180, 38.560352, 38.359169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729618, 38.914585, 38.626694>,  <36.037315, 39.226891, 38.551659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729618, 38.914585, 38.626694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490139, 38.700523, 38.388309>,  <36.346451, 38.572086, 38.245277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490139, 38.700523, 38.388309>,  <36.729618, 38.914585, 38.626694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490139, 38.700523, 38.388309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499454, 0.332251, -0.800097,
		0.626183, -0.776673, 0.068365,
		-0.598699, -0.535153, -0.595962,
		36.310528, 38.539978, 38.209522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202873, 38.580898, 38.111877>,  <36.729618, 38.914585, 38.626694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202873, 38.580898, 38.111877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.839909, 38.586411, 37.943874>,  <36.622128, 38.589718, 37.843071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.839909, 38.586411, 37.943874>,  <37.202873, 38.580898, 38.111877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839909, 38.586411, 37.943874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402144, 0.318586, -0.858361,
		0.121976, -0.947794, -0.294634,
		-0.907415, 0.013785, -0.420009,
		36.567684, 38.590546, 37.817871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702198, 39.046116, 38.459385>,  <37.202873, 38.580898, 38.111877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702198, 39.046116, 38.459385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.046532, 39.168217, 38.622253>,  <38.253132, 39.241478, 38.719975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.046532, 39.168217, 38.622253>,  <37.702198, 39.046116, 38.459385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046532, 39.168217, 38.622253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396135, -0.100302, 0.912698,
		0.319447, -0.946973, 0.034580,
		0.860831, 0.305257, 0.407170,
		38.304783, 39.259792, 38.744404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914055, 38.561913, 38.911381>,  <37.702198, 39.046116, 38.459385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914055, 38.561913, 38.911381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.075436, 38.903721, 39.042233>,  <38.172264, 39.108807, 39.120743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.075436, 38.903721, 39.042233>,  <37.914055, 38.561913, 38.911381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075436, 38.903721, 39.042233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236888, -0.247787, 0.939407,
		0.883805, -0.456499, 0.102456,
		0.403452, 0.854524, 0.327134,
		38.196472, 39.160076, 39.140373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363247, 38.372856, 39.444054>,  <37.914055, 38.561913, 38.911381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363247, 38.372856, 39.444054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.293861, 38.759464, 39.519684>,  <38.252232, 38.991428, 39.565063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.293861, 38.759464, 39.519684>,  <38.363247, 38.372856, 39.444054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293861, 38.759464, 39.519684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107448, -0.209413, 0.971906,
		0.978962, 0.148272, 0.140176,
		-0.173461, 0.966520, 0.189075,
		38.241821, 39.049419, 39.576408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748562, 38.557198, 40.124748>,  <38.363247, 38.372856, 39.444054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748562, 38.557198, 40.124748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.493587, 38.860710, 40.071182>,  <38.340603, 39.042816, 40.039043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.493587, 38.860710, 40.071182>,  <38.748562, 38.557198, 40.124748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493587, 38.860710, 40.071182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258059, -0.046480, 0.965010,
		0.726004, 0.649690, 0.225437,
		-0.637436, 0.758777, -0.133914,
		38.302357, 39.088345, 40.031010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735748, 38.800068, 40.799503>,  <38.748562, 38.557198, 40.124748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735748, 38.800068, 40.799503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.415009, 38.951881, 40.614899>,  <38.222565, 39.042969, 40.504135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.415009, 38.951881, 40.614899>,  <38.735748, 38.800068, 40.799503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415009, 38.951881, 40.614899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445578, 0.134822, 0.885033,
		0.398120, 0.915303, 0.061003,
		-0.801849, 0.379531, -0.461514,
		38.174454, 39.065742, 40.476444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437923, 39.355080, 41.225002>,  <38.735748, 38.800068, 40.799503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437923, 39.355080, 41.225002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.136929, 39.260433, 40.979149>,  <37.956333, 39.203644, 40.831638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.136929, 39.260433, 40.979149>,  <38.437923, 39.355080, 41.225002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136929, 39.260433, 40.979149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656282, 0.191038, 0.729931,
		-0.055294, 0.952637, -0.299040,
		-0.752487, -0.236615, -0.614635,
		37.911182, 39.189449, 40.794758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939285, 39.945866, 41.173496>,  <38.437923, 39.355080, 41.225002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939285, 39.945866, 41.173496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.746075, 39.625175, 41.032684>,  <37.630150, 39.432762, 40.948196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.746075, 39.625175, 41.032684>,  <37.939285, 39.945866, 41.173496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746075, 39.625175, 41.032684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696447, 0.108097, 0.709420,
		-0.530705, 0.587840, -0.610571,
		-0.483026, -0.801722, -0.352032,
		37.601166, 39.384659, 40.927074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205864, 40.143894, 40.992798>,  <37.939285, 39.945866, 41.173496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205864, 40.143894, 40.992798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.227833, 39.750835, 41.063660>,  <37.241013, 39.514999, 41.106174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.227833, 39.750835, 41.063660>,  <37.205864, 40.143894, 40.992798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227833, 39.750835, 41.063660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693054, 0.090204, 0.715220,
		-0.718791, -0.162054, -0.676076,
		0.054920, -0.982650, 0.177150,
		37.244308, 39.456039, 41.116806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513500, 39.873127, 40.960365>,  <37.205864, 40.143894, 40.992798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513500, 39.873127, 40.960365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.745911, 39.653221, 41.200420>,  <36.885357, 39.521278, 41.344452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.745911, 39.653221, 41.200420>,  <36.513500, 39.873127, 40.960365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745911, 39.653221, 41.200420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716097, 0.005121, 0.697982,
		-0.386802, -0.835301, -0.390712,
		0.581024, -0.549769, 0.600138,
		36.920219, 39.488293, 41.380463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161564, 39.351250, 41.271824>,  <36.513500, 39.873127, 40.960365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161564, 39.351250, 41.271824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471375, 39.311123, 41.521641>,  <36.657261, 39.287045, 41.671532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471375, 39.311123, 41.521641>,  <36.161564, 39.351250, 41.271824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471375, 39.311123, 41.521641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631077, -0.189800, 0.752142,
		0.043085, -0.976684, -0.210313,
		0.774523, -0.100317, 0.624540,
		36.703732, 39.281029, 41.709003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967430, 38.902275, 41.743725>,  <36.161564, 39.351250, 41.271824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967430, 38.902275, 41.743725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.287777, 39.054462, 41.928699>,  <36.479984, 39.145775, 42.039684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.287777, 39.054462, 41.928699>,  <35.967430, 38.902275, 41.743725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287777, 39.054462, 41.928699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447104, -0.133828, 0.884414,
		0.398383, -0.915058, 0.062933,
		0.800868, 0.380473, 0.462441,
		36.528038, 39.168606, 42.067432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254330, 38.387939, 42.223850>,  <35.967430, 38.902275, 41.743725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254330, 38.387939, 42.223850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.411274, 38.721329, 42.379475>,  <36.505440, 38.921364, 42.472851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.411274, 38.721329, 42.379475>,  <36.254330, 38.387939, 42.223850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411274, 38.721329, 42.379475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396238, -0.228566, 0.889243,
		0.830088, -0.503068, 0.240574,
		0.392363, 0.833475, 0.389065,
		36.528984, 38.971371, 42.496193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639454, 38.130978, 42.783764>,  <36.254330, 38.387939, 42.223850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639454, 38.130978, 42.783764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583847, 38.523407, 42.837669>,  <36.550484, 38.758865, 42.870010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583847, 38.523407, 42.837669>,  <36.639454, 38.130978, 42.783764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583847, 38.523407, 42.837669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149220, -0.155281, 0.976535,
		0.978982, 0.115649, 0.167984,
		-0.139020, 0.981077, 0.134760,
		36.542141, 38.817730, 42.878098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102207, 38.341621, 43.333344>,  <36.639454, 38.130978, 42.783764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102207, 38.341621, 43.333344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.789249, 38.590553, 43.323822>,  <36.601475, 38.739910, 43.318111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.789249, 38.590553, 43.323822>,  <37.102207, 38.341621, 43.333344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789249, 38.590553, 43.323822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201904, -0.217312, 0.954992,
		0.589144, 0.751988, 0.295674,
		-0.782396, 0.622326, -0.023801,
		36.554531, 38.777252, 43.316681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282818, 38.836590, 43.817715>,  <37.102207, 38.341621, 43.333344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282818, 38.836590, 43.817715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886124, 38.877300, 43.786472>,  <36.648106, 38.901726, 43.767727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886124, 38.877300, 43.786472>,  <37.282818, 38.836590, 43.817715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886124, 38.877300, 43.786472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075319, 0.030917, 0.996680,
		0.103849, 0.994327, -0.022996,
		-0.991737, 0.101772, -0.078102,
		36.588604, 38.907833, 43.763042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054485, 39.312523, 44.363266>,  <37.282818, 38.836590, 43.817715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054485, 39.312523, 44.363266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703445, 39.154743, 44.254292>,  <36.492821, 39.060074, 44.188908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703445, 39.154743, 44.254292>,  <37.054485, 39.312523, 44.363266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703445, 39.154743, 44.254292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325488, 0.073055, 0.942720,
		-0.351956, 0.916008, -0.192503,
		-0.877602, -0.394453, -0.272437,
		36.440166, 39.036407, 44.172562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529388, 39.640793, 44.649036>,  <37.054485, 39.312523, 44.363266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529388, 39.640793, 44.649036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.336021, 39.308289, 44.539265>,  <36.220001, 39.108788, 44.473400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.336021, 39.308289, 44.539265>,  <36.529388, 39.640793, 44.649036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336021, 39.308289, 44.539265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362642, -0.095165, 0.927057,
		-0.796741, 0.547678, -0.255445,
		-0.483420, -0.831259, -0.274433,
		36.190994, 39.058910, 44.456936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894329, 39.748619, 44.863171>,  <36.529388, 39.640793, 44.649036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894329, 39.748619, 44.863171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.921719, 39.351322, 44.825699>,  <35.938152, 39.112942, 44.803215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.921719, 39.351322, 44.825699>,  <35.894329, 39.748619, 44.863171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921719, 39.351322, 44.825699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356883, -0.112075, 0.927401,
		-0.931636, -0.030069, -0.362147,
		0.068473, -0.993245, -0.093682,
		35.942261, 39.053349, 44.797596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.062988, 39.407352, 44.904118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.331429, 39.116486, 44.961876>,  <35.492493, 38.941963, 44.996529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.331429, 39.116486, 44.961876>,  <35.062988, 39.407352, 44.904118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331429, 39.116486, 44.961876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587355, -0.402661, 0.702053,
		-0.452373, -0.555954, -0.697333,
		0.671098, -0.727172, 0.144389,
		35.532761, 38.898335, 45.005196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711063, 38.800606, 44.777046>,  <35.062988, 39.407352, 44.904118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711063, 38.800606, 44.777046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.021885, 38.755020, 45.024662>,  <35.208378, 38.727669, 45.173229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.021885, 38.755020, 45.024662>,  <34.711063, 38.800606, 44.777046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021885, 38.755020, 45.024662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625725, -0.246528, 0.740062,
		0.068273, -0.962412, -0.262872,
		0.777050, -0.113960, 0.619037,
		35.255001, 38.720833, 45.210373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446518, 38.423203, 45.387859>,  <34.711063, 38.800606, 44.777046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446518, 38.423203, 45.387859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.797356, 38.548466, 45.533543>,  <35.007858, 38.623623, 45.620953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.797356, 38.548466, 45.533543>,  <34.446518, 38.423203, 45.387859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797356, 38.548466, 45.533543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309962, -0.210230, 0.927215,
		0.366931, -0.926141, -0.087324,
		0.877089, 0.313157, 0.364208,
		35.060482, 38.642414, 45.642803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700184, 37.843163, 45.774551>,  <34.446518, 38.423203, 45.387859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700184, 37.843163, 45.774551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.861927, 38.193546, 45.879765>,  <34.958973, 38.403778, 45.942890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.861927, 38.193546, 45.879765>,  <34.700184, 37.843163, 45.774551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861927, 38.193546, 45.879765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185655, -0.202991, 0.961419,
		0.895561, -0.437587, 0.080547,
		0.404354, 0.875964, 0.263031,
		34.983234, 38.456337, 45.958675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892582, 37.675095, 46.447048>,  <34.700184, 37.843163, 45.774551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892582, 37.675095, 46.447048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.898891, 38.075043, 46.447857>,  <34.902676, 38.315014, 46.448341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.898891, 38.075043, 46.447857>,  <34.892582, 37.675095, 46.447048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898891, 38.075043, 46.447857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084009, -0.000690, 0.996465,
		0.996340, -0.015885, 0.083987,
		0.015771, 0.999874, 0.002022,
		34.903622, 38.375004, 46.448463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309307, 37.844978, 47.022125>,  <34.892582, 37.675095, 46.447048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309307, 37.844978, 47.022125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.076633, 38.158501, 46.935143>,  <34.937031, 38.346615, 46.882954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.076633, 38.158501, 46.935143>,  <35.309307, 37.844978, 47.022125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076633, 38.158501, 46.935143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243351, 0.087403, 0.965992,
		0.776159, 0.614821, 0.139900,
		-0.581685, 0.783808, -0.217456,
		34.902126, 38.393642, 46.869907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531830, 38.217369, 47.499832>,  <35.309307, 37.844978, 47.022125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531830, 38.217369, 47.499832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.189255, 38.378666, 47.370895>,  <34.983707, 38.475445, 47.293533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.189255, 38.378666, 47.370895>,  <35.531830, 38.217369, 47.499832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189255, 38.378666, 47.370895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256613, 0.209258, 0.943589,
		0.447948, 0.890845, -0.075740,
		-0.856441, 0.403244, -0.322339,
		34.932323, 38.499638, 47.274193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501797, 38.962204, 47.767212>,  <35.531830, 38.217369, 47.499832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501797, 38.962204, 47.767212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.132599, 38.827381, 47.692951>,  <34.911079, 38.746487, 47.648396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.132599, 38.827381, 47.692951>,  <35.501797, 38.962204, 47.767212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132599, 38.827381, 47.692951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274698, 0.239286, 0.931280,
		-0.269468, 0.910569, -0.313450,
		-0.922999, -0.337055, -0.185651,
		34.855698, 38.726265, 47.637257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116150, 39.354904, 48.076672>,  <35.501797, 38.962204, 47.767212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116150, 39.354904, 48.076672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.849461, 39.060299, 48.031010>,  <34.689449, 38.883537, 48.003613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.849461, 39.060299, 48.031010>,  <35.116150, 39.354904, 48.076672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849461, 39.060299, 48.031010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260721, 0.086987, 0.961487,
		-0.698218, 0.670807, -0.250020,
		-0.666721, -0.736513, -0.114158,
		34.649445, 38.839344, 47.996761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524467, 39.530914, 48.448776>,  <35.116150, 39.354904, 48.076672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524467, 39.530914, 48.448776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.504215, 39.131569, 48.438126>,  <34.492065, 38.891960, 48.431736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.504215, 39.131569, 48.438126>,  <34.524467, 39.530914, 48.448776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504215, 39.131569, 48.438126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235981, -0.013943, 0.971658,
		-0.970438, 0.055475, -0.234889,
		-0.050627, -0.998363, -0.026622,
		34.489029, 38.832062, 48.430138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101681, 39.365490, 48.989506>,  <34.524467, 39.530914, 48.448776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101681, 39.365490, 48.989506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.192299, 38.982468, 48.918209>,  <34.246670, 38.752655, 48.875431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.192299, 38.982468, 48.918209>,  <34.101681, 39.365490, 48.989506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192299, 38.982468, 48.918209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259657, -0.235755, 0.936482,
		-0.938751, -0.165876, -0.302045,
		0.226549, -0.957551, -0.178244,
		34.260265, 38.695202, 48.864735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567883, 38.936863, 49.060616>,  <34.101681, 39.365490, 48.989506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567883, 38.936863, 49.060616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.899582, 38.726227, 49.135490>,  <34.098602, 38.599846, 49.180416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.899582, 38.726227, 49.135490>,  <33.567883, 38.936863, 49.060616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899582, 38.726227, 49.135490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310415, -0.155462, 0.937803,
		-0.464742, -0.835780, -0.292381,
		0.829251, -0.526596, 0.187189,
		34.148357, 38.568249, 49.191647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313190, 38.262325, 49.498123>,  <33.567883, 38.936863, 49.060616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313190, 38.262325, 49.498123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.707294, 38.296108, 49.557621>,  <33.943756, 38.316376, 49.593319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.707294, 38.296108, 49.557621>,  <33.313190, 38.262325, 49.498123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707294, 38.296108, 49.557621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131734, -0.180030, 0.974800,
		0.109105, -0.980029, -0.166251,
		0.985262, 0.084455, 0.148746,
		34.002872, 38.321445, 49.602245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461773, 37.737919, 49.881447>,  <33.313190, 38.262325, 49.498123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461773, 37.737919, 49.881447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.792263, 37.956120, 49.937698>,  <33.990559, 38.087040, 49.971451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.792263, 37.956120, 49.937698>,  <33.461773, 37.737919, 49.881447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792263, 37.956120, 49.937698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079324, -0.134488, 0.987735,
		0.557722, -0.827250, -0.067847,
		0.826229, 0.545499, 0.140628,
		34.040131, 38.119770, 49.979885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931404, 37.325310, 50.309029>,  <33.461773, 37.737919, 49.881447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931404, 37.325310, 50.309029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096657, 37.689186, 50.325916>,  <34.195808, 37.907513, 50.336048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096657, 37.689186, 50.325916>,  <33.931404, 37.325310, 50.309029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096657, 37.689186, 50.325916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070720, -0.078266, 0.994421,
		0.907922, -0.407839, -0.096667,
		0.413129, 0.909693, 0.042217,
		34.220596, 37.962093, 50.338581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627575, 37.346710, 50.579693>,  <33.931404, 37.325310, 50.309029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627575, 37.346710, 50.579693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.458164, 37.704098, 50.639481>,  <34.356518, 37.918530, 50.675354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.458164, 37.704098, 50.639481>,  <34.627575, 37.346710, 50.579693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458164, 37.704098, 50.639481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179732, -0.078845, 0.980551,
		0.887874, 0.442155, -0.127192,
		-0.423527, 0.893466, 0.149474,
		34.331104, 37.972137, 50.684322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982494, 37.645535, 51.121426>,  <34.627575, 37.346710, 50.579693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982494, 37.645535, 51.121426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.690060, 37.918144, 51.108559>,  <34.514599, 38.081711, 51.100838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.690060, 37.918144, 51.108559>,  <34.982494, 37.645535, 51.121426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690060, 37.918144, 51.108559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035016, 0.084564, 0.995803,
		0.681387, 0.726890, -0.085688,
		-0.731085, 0.681528, -0.032168,
		34.470734, 38.122604, 51.098907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206230, 38.197037, 51.461292>,  <34.982494, 37.645535, 51.121426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206230, 38.197037, 51.461292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.807159, 38.221943, 51.472290>,  <34.567715, 38.236889, 51.478889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.807159, 38.221943, 51.472290>,  <35.206230, 38.197037, 51.461292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807159, 38.221943, 51.472290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028310, 0.012275, 0.999524,
		0.061903, 0.997984, -0.014009,
		-0.997681, 0.062270, 0.027493,
		34.507854, 38.240623, 51.480537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047184, 38.723560, 51.854069>,  <35.206230, 38.197037, 51.461292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047184, 38.723560, 51.854069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.703106, 38.519741, 51.862263>,  <34.496658, 38.397449, 51.867180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.703106, 38.519741, 51.862263>,  <35.047184, 38.723560, 51.854069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703106, 38.519741, 51.862263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056913, 0.135836, 0.989095,
		-0.506777, 0.849651, -0.145846,
		-0.860196, -0.509551, 0.020483,
		34.445045, 38.366875, 51.868408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607697, 39.171856, 52.228516>,  <35.047184, 38.723560, 51.854069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607697, 39.171856, 52.228516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.420868, 38.818470, 52.243099>,  <34.308773, 38.606438, 52.251850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.420868, 38.818470, 52.243099>,  <34.607697, 39.171856, 52.228516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420868, 38.818470, 52.243099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236609, 0.164609, 0.957559,
		-0.851976, 0.438618, -0.285921,
		-0.467068, -0.883469, 0.036462,
		34.280746, 38.553429, 52.254036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969975, 39.359299, 52.503365>,  <34.607697, 39.171856, 52.228516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969975, 39.359299, 52.503365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.984524, 38.966503, 52.577534>,  <33.993252, 38.730827, 52.622036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.984524, 38.966503, 52.577534>,  <33.969975, 39.359299, 52.503365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984524, 38.966503, 52.577534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061324, 0.183007, 0.981197,
		-0.997455, -0.047057, -0.053564,
		0.036369, -0.981985, 0.185427,
		33.995434, 38.671909, 52.633163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424435, 39.052818, 52.888603>,  <33.969975, 39.359299, 52.503365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424435, 39.052818, 52.888603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726963, 38.830162, 53.026081>,  <33.908482, 38.696568, 53.108570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726963, 38.830162, 53.026081>,  <33.424435, 39.052818, 52.888603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726963, 38.830162, 53.026081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226784, 0.269709, 0.935856,
		-0.613635, -0.785753, 0.077749,
		0.756321, -0.556641, 0.343699,
		33.953861, 38.663170, 53.129192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137867, 38.622570, 53.410503>,  <33.424435, 39.052818, 52.888603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137867, 38.622570, 53.410503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.515896, 38.751106, 53.434441>,  <33.742714, 38.828228, 53.448803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.515896, 38.751106, 53.434441>,  <33.137867, 38.622570, 53.410503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515896, 38.751106, 53.434441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190247, 0.391894, 0.900125,
		0.265792, -0.862068, 0.431501,
		0.945072, 0.321338, 0.059843,
		33.799416, 38.847507, 53.452393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357349, 38.522854, 53.253136>,  <33.137867, 38.622570, 53.410503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357349, 38.522854, 53.253136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.052078, 38.277653, 53.334896>,  <31.868916, 38.130531, 53.383953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.052078, 38.277653, 53.334896>,  <32.357349, 38.522854, 53.253136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052078, 38.277653, 53.334896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015150, -0.333210, -0.942731,
		0.646010, -0.716375, 0.263586,
		-0.763178, -0.613007, 0.204404,
		31.823124, 38.093750, 53.396217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552383, 37.759827, 53.106339>,  <32.357349, 38.522854, 53.253136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552383, 37.759827, 53.106339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.162369, 37.835499, 53.059853>,  <31.928358, 37.880901, 53.031960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.162369, 37.835499, 53.059853>,  <32.552383, 37.759827, 53.106339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162369, 37.835499, 53.059853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056960, -0.292783, -0.954481,
		-0.214591, -0.937278, 0.274700,
		-0.975042, 0.189176, -0.116216,
		31.869856, 37.892254, 53.024986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391045, 37.130974, 52.724045>,  <32.552383, 37.759827, 53.106339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391045, 37.130974, 52.724045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.066788, 37.361664, 52.683575>,  <31.872232, 37.500080, 52.659290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.066788, 37.361664, 52.683575>,  <32.391045, 37.130974, 52.724045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066788, 37.361664, 52.683575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089618, -0.292963, -0.951914,
		-0.578638, -0.762598, 0.289175,
		-0.810646, 0.576730, -0.101177,
		31.823593, 37.534683, 52.653221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805275, 36.668476, 52.511620>,  <32.391045, 37.130974, 52.724045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805275, 36.668476, 52.511620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703842, 37.037853, 52.396408>,  <31.642982, 37.259480, 52.327282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703842, 37.037853, 52.396408>,  <31.805275, 36.668476, 52.511620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703842, 37.037853, 52.396408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386787, -0.369714, -0.844812,
		-0.886619, -0.102824, 0.450926,
		-0.253580, 0.923439, -0.288024,
		31.627768, 37.314884, 52.310001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166370, 36.667717, 52.218674>,  <31.805275, 36.668476, 52.511620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166370, 36.667717, 52.218674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.351484, 36.985008, 52.060371>,  <31.462553, 37.175381, 51.965389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.351484, 36.985008, 52.060371>,  <31.166370, 36.667717, 52.218674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351484, 36.985008, 52.060371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251676, -0.310503, -0.916650,
		-0.849993, 0.523816, 0.055939,
		0.462786, 0.793225, -0.395757,
		31.490320, 37.222977, 51.941643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688351, 37.024155, 51.792080>,  <31.166370, 36.667717, 52.218674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688351, 37.024155, 51.792080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.029617, 37.188190, 51.663128>,  <31.234377, 37.286613, 51.585758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.029617, 37.188190, 51.663128>,  <30.688351, 37.024155, 51.792080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029617, 37.188190, 51.663128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280460, -0.160468, -0.946357,
		-0.439826, 0.897816, -0.021891,
		0.853168, 0.410093, -0.322380,
		31.285568, 37.311218, 51.566414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390793, 37.464550, 51.133846>,  <30.688351, 37.024155, 51.792080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390793, 37.464550, 51.133846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.784540, 37.399799, 51.106091>,  <31.020788, 37.360950, 51.089436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.784540, 37.399799, 51.106091>,  <30.390793, 37.464550, 51.133846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784540, 37.399799, 51.106091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109130, -0.251353, -0.961723,
		0.138237, 0.954263, -0.265089,
		0.984368, -0.161875, -0.069393,
		31.079851, 37.351238, 51.085274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598541, 37.983768, 50.629738>,  <30.390793, 37.464550, 51.133846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598541, 37.983768, 50.629738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.916573, 37.742058, 50.650513>,  <31.107391, 37.597031, 50.662975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.916573, 37.742058, 50.650513>,  <30.598541, 37.983768, 50.629738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916573, 37.742058, 50.650513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116646, 0.068323, -0.990821,
		0.595182, 0.793839, 0.124809,
		0.795080, -0.604277, 0.051933,
		31.155096, 37.560776, 50.666092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201256, 38.312298, 50.456364>,  <30.598541, 37.983768, 50.629738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201256, 38.312298, 50.456364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.290249, 37.927792, 50.391289>,  <31.343645, 37.697086, 50.352245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.290249, 37.927792, 50.391289>,  <31.201256, 38.312298, 50.456364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290249, 37.927792, 50.391289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166602, 0.201901, -0.965132,
		0.960596, 0.187623, 0.205069,
		0.222485, -0.961266, -0.162687,
		31.356995, 37.639412, 50.342484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726627, 38.339264, 50.185474>,  <31.201256, 38.312298, 50.456364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726627, 38.339264, 50.185474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.584549, 37.982445, 50.073700>,  <31.499302, 37.768353, 50.006634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.584549, 37.982445, 50.073700>,  <31.726627, 38.339264, 50.185474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584549, 37.982445, 50.073700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285646, 0.181058, -0.941076,
		0.890079, -0.414089, 0.190498,
		-0.355198, -0.892047, -0.279438,
		31.477989, 37.714832, 49.989868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235592, 38.102524, 49.740864>,  <31.726627, 38.339264, 50.185474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235592, 38.102524, 49.740864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.944311, 37.847767, 49.639591>,  <31.769543, 37.694912, 49.578827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.944311, 37.847767, 49.639591>,  <32.235592, 38.102524, 49.740864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944311, 37.847767, 49.639591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289838, 0.048585, -0.955842,
		0.621065, -0.769424, 0.149215,
		-0.728198, -0.636888, -0.253183,
		31.725851, 37.656700, 49.563637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521244, 37.501129, 49.324379>,  <32.235592, 38.102524, 49.740864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521244, 37.501129, 49.324379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.134583, 37.504120, 49.221992>,  <31.902584, 37.505913, 49.160561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.134583, 37.504120, 49.221992>,  <32.521244, 37.501129, 49.324379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134583, 37.504120, 49.221992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254693, -0.075638, -0.964059,
		-0.026568, -0.997107, 0.071212,
		-0.966657, 0.007476, -0.255966,
		31.844585, 37.506363, 49.145203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505013, 37.046448, 48.691898>,  <32.521244, 37.501129, 49.324379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505013, 37.046448, 48.691898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183628, 37.284290, 48.703865>,  <31.990797, 37.426994, 48.711044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183628, 37.284290, 48.703865>,  <32.505013, 37.046448, 48.691898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183628, 37.284290, 48.703865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252552, 0.385901, -0.887298,
		-0.539137, -0.705354, -0.460225,
		-0.803460, 0.594606, 0.029915,
		31.942591, 37.462673, 48.712841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259705, 36.964005, 48.055103>,  <32.505013, 37.046448, 48.691898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259705, 36.964005, 48.055103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.109943, 37.301456, 48.209045>,  <32.020084, 37.503925, 48.301411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.109943, 37.301456, 48.209045>,  <32.259705, 36.964005, 48.055103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109943, 37.301456, 48.209045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021491, 0.422828, -0.905955,
		-0.927016, -0.330924, -0.176439,
		-0.374405, 0.843627, 0.384856,
		31.997622, 37.554546, 48.324501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732389, 37.055782, 47.641464>,  <32.259705, 36.964005, 48.055103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732389, 37.055782, 47.641464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.819372, 37.414631, 47.795292>,  <31.871561, 37.629940, 47.887589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.819372, 37.414631, 47.795292>,  <31.732389, 37.055782, 47.641464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819372, 37.414631, 47.795292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093259, 0.373098, -0.923093,
		-0.971605, 0.236596, -0.002533,
		0.217455, 0.897118, 0.384569,
		31.884609, 37.683765, 47.910664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353853, 37.471924, 47.168873>,  <31.732389, 37.055782, 47.641464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353853, 37.471924, 47.168873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.614658, 37.727863, 47.331585>,  <31.771141, 37.881428, 47.429211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.614658, 37.727863, 47.331585>,  <31.353853, 37.471924, 47.168873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614658, 37.727863, 47.331585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133894, 0.430905, -0.892409,
		-0.746293, 0.636326, 0.195282,
		0.652011, 0.639852, 0.406782,
		31.810261, 37.919819, 47.453621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199381, 38.150089, 46.901379>,  <31.353853, 37.471924, 47.168873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199381, 38.150089, 46.901379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.580654, 38.169224, 47.020809>,  <31.809418, 38.180702, 47.092468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.580654, 38.169224, 47.020809>,  <31.199381, 38.150089, 46.901379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580654, 38.169224, 47.020809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266038, 0.336726, -0.903239,
		-0.143743, 0.940387, 0.308237,
		0.953185, 0.047832, 0.298581,
		31.866610, 38.183575, 47.110382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439934, 38.679867, 46.654358>,  <31.199381, 38.150089, 46.901379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439934, 38.679867, 46.654358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.785042, 38.488850, 46.720787>,  <31.992107, 38.374241, 46.760647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.785042, 38.488850, 46.720787>,  <31.439934, 38.679867, 46.654358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785042, 38.488850, 46.720787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352266, 0.332147, -0.874978,
		0.362676, 0.813409, 0.454788,
		0.862772, -0.477540, 0.166075,
		32.043873, 38.345589, 46.770611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882330, 39.115318, 46.373226>,  <31.439934, 38.679867, 46.654358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882330, 39.115318, 46.373226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.099106, 38.783180, 46.425114>,  <32.229172, 38.583897, 46.456245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.099106, 38.783180, 46.425114>,  <31.882330, 39.115318, 46.373226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099106, 38.783180, 46.425114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511583, 0.203478, -0.834793,
		0.666771, 0.518771, 0.535063,
		0.541940, -0.830345, 0.129721,
		32.261688, 38.534077, 46.464031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541164, 39.406521, 46.270885>,  <31.882330, 39.115318, 46.373226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541164, 39.406521, 46.270885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.553185, 39.011219, 46.210949>,  <32.560398, 38.774036, 46.174988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.553185, 39.011219, 46.210949>,  <32.541164, 39.406521, 46.270885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553185, 39.011219, 46.210949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596746, 0.138000, -0.790475,
		0.801868, -0.065662, 0.593883,
		0.030051, -0.988253, -0.149841,
		32.562199, 38.714745, 46.165997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325199, 39.146557, 46.253418>,  <32.541164, 39.406521, 46.270885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325199, 39.146557, 46.253418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.091251, 38.879921, 46.068558>,  <32.950882, 38.719940, 45.957642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.091251, 38.879921, 46.068558>,  <33.325199, 39.146557, 46.253418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091251, 38.879921, 46.068558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679987, -0.092315, -0.727390,
		0.442210, -0.739683, 0.507266,
		-0.584866, -0.666593, -0.462152,
		32.915791, 38.679943, 45.929913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.846592, 31.652006, 30.231934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.789200, 31.365381, 30.504976>,  <41.754765, 31.193405, 30.668802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.789200, 31.365381, 30.504976>,  <41.846592, 31.652006, 30.231934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789200, 31.365381, 30.504976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266993, 0.636141, 0.723906,
		-0.952958, 0.286115, 0.100045,
		-0.143478, -0.716563, 0.682606,
		41.746155, 31.150412, 30.709759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532143, 32.012768, 30.770071>,  <41.846592, 31.652006, 30.231934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532143, 32.012768, 30.770071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700691, 31.680206, 30.914963>,  <41.801823, 31.480669, 31.001898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700691, 31.680206, 30.914963>,  <41.532143, 32.012768, 30.770071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700691, 31.680206, 30.914963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093764, 0.437219, 0.894454,
		-0.902027, -0.342935, 0.262188,
		0.421373, -0.831406, 0.362229,
		41.827103, 31.430784, 31.023632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140118, 31.782869, 31.343752>,  <41.532143, 32.012768, 30.770071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140118, 31.782869, 31.343752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.509521, 31.633591, 31.379206>,  <41.731163, 31.544024, 31.400478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.509521, 31.633591, 31.379206>,  <41.140118, 31.782869, 31.343752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509521, 31.633591, 31.379206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085215, 0.424913, 0.901215,
		-0.373992, -0.824727, 0.424212,
		0.923509, -0.373196, 0.088635,
		41.786575, 31.521631, 31.405796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217533, 31.537830, 32.111156>,  <41.140118, 31.782869, 31.343752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217533, 31.537830, 32.111156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.582878, 31.562595, 31.950190>,  <41.802086, 31.577454, 31.853609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.582878, 31.562595, 31.950190>,  <41.217533, 31.537830, 32.111156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582878, 31.562595, 31.950190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361233, 0.332755, 0.871083,
		0.187835, -0.940979, 0.281561,
		0.913361, 0.061911, -0.402415,
		41.856888, 31.581169, 31.829464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616535, 31.333542, 32.600094>,  <41.217533, 31.537830, 32.111156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616535, 31.333542, 32.600094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.851936, 31.549124, 32.359032>,  <41.993176, 31.678473, 32.214394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.851936, 31.549124, 32.359032>,  <41.616535, 31.333542, 32.600094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851936, 31.549124, 32.359032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417925, 0.435304, 0.797402,
		0.692103, -0.721136, 0.030933,
		0.588500, 0.538956, -0.602656,
		42.028488, 31.710810, 32.178234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277992, 31.306866, 32.978592>,  <41.616535, 31.333542, 32.600094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277992, 31.306866, 32.978592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.303310, 31.607494, 32.715950>,  <42.318501, 31.787872, 32.558365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.303310, 31.607494, 32.715950>,  <42.277992, 31.306866, 32.978592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303310, 31.607494, 32.715950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391966, 0.586336, 0.708924,
		0.917800, -0.302237, -0.257480,
		0.063293, 0.751574, -0.656606,
		42.322300, 31.832966, 32.518967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954266, 31.564482, 32.939114>,  <42.277992, 31.306866, 32.978592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954266, 31.564482, 32.939114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.750317, 31.879126, 32.799812>,  <42.627949, 32.067913, 32.716232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.750317, 31.879126, 32.799812>,  <42.954266, 31.564482, 32.939114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750317, 31.879126, 32.799812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473268, 0.594545, 0.650026,
		0.718367, 0.166613, -0.675418,
		-0.509869, 0.786611, -0.348248,
		42.597355, 32.115108, 32.695339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420414, 32.134666, 32.758324>,  <42.954266, 31.564482, 32.939114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420414, 32.134666, 32.758324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.062298, 32.289478, 32.846558>,  <42.847427, 32.382366, 32.899498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.062298, 32.289478, 32.846558>,  <43.420414, 32.134666, 32.758324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062298, 32.289478, 32.846558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445193, 0.795049, 0.411947,
		-0.015942, 0.467017, -0.884104,
		-0.895292, 0.387030, 0.220587,
		42.793709, 32.405586, 32.912735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581161, 32.737350, 32.601761>,  <43.420414, 32.134666, 32.758324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581161, 32.737350, 32.601761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.240612, 32.774109, 32.808338>,  <43.036282, 32.796162, 32.932285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.240612, 32.774109, 32.808338>,  <43.581161, 32.737350, 32.601761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240612, 32.774109, 32.808338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385964, 0.776475, 0.498115,
		-0.355232, 0.623412, -0.696540,
		-0.851377, 0.091893, 0.516443,
		42.985199, 32.801678, 32.963272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441338, 33.454018, 32.707848>,  <43.581161, 32.737350, 32.601761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441338, 33.454018, 32.707848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.220802, 33.264236, 32.982342>,  <43.088482, 33.150368, 33.147038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.220802, 33.264236, 32.982342>,  <43.441338, 33.454018, 32.707848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220802, 33.264236, 32.982342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271342, 0.675845, 0.685279,
		-0.788923, 0.564025, -0.243880,
		-0.551339, -0.474457, 0.686233,
		43.055401, 33.121899, 33.188213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145374, 34.025597, 33.083321>,  <43.441338, 33.454018, 32.707848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145374, 34.025597, 33.083321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.094902, 33.723450, 33.340534>,  <43.064617, 33.542160, 33.494862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.094902, 33.723450, 33.340534>,  <43.145374, 34.025597, 33.083321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094902, 33.723450, 33.340534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069713, 0.639859, 0.765323,
		-0.989554, 0.141400, -0.028081,
		-0.126185, -0.755371, 0.643033,
		43.057045, 33.496838, 33.533443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646652, 34.297604, 33.551025>,  <43.145374, 34.025597, 33.083321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646652, 34.297604, 33.551025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.833199, 33.989235, 33.724545>,  <42.945126, 33.804214, 33.828655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.833199, 33.989235, 33.724545>,  <42.646652, 34.297604, 33.551025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833199, 33.989235, 33.724545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164574, 0.557449, 0.813736,
		-0.869150, -0.308104, 0.386847,
		0.466363, -0.770923, 0.433801,
		42.973106, 33.757957, 33.854687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295189, 34.312019, 34.167995>,  <42.646652, 34.297604, 33.551025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295189, 34.312019, 34.167995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.636295, 34.122772, 34.256496>,  <42.840958, 34.009224, 34.309597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.636295, 34.122772, 34.256496>,  <42.295189, 34.312019, 34.167995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636295, 34.122772, 34.256496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218590, 0.708022, 0.671508,
		-0.474352, -0.524276, 0.707195,
		0.852765, -0.473117, 0.221250,
		42.892124, 33.980839, 34.322872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251709, 34.344929, 34.903088>,  <42.295189, 34.312019, 34.167995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251709, 34.344929, 34.903088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.630039, 34.279518, 34.790890>,  <42.857037, 34.240273, 34.723572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.630039, 34.279518, 34.790890>,  <42.251709, 34.344929, 34.903088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630039, 34.279518, 34.790890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306025, 0.737646, 0.601853,
		0.108489, -0.655085, 0.747725,
		0.945822, -0.163528, -0.280499,
		42.913784, 34.230461, 34.706741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638912, 34.341728, 35.495483>,  <42.251709, 34.344929, 34.903088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638912, 34.341728, 35.495483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.919159, 34.409889, 35.218327>,  <43.087307, 34.450787, 35.052032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.919159, 34.409889, 35.218327>,  <42.638912, 34.341728, 35.495483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919159, 34.409889, 35.218327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358473, 0.755566, 0.548286,
		0.616952, -0.632522, 0.468280,
		0.700619, 0.170400, -0.692890,
		43.129345, 34.461010, 35.010460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223904, 34.386509, 35.839649>,  <42.638912, 34.341728, 35.495483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223904, 34.386509, 35.839649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.276573, 34.571579, 35.488972>,  <43.308174, 34.682621, 35.278564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.276573, 34.571579, 35.488972>,  <43.223904, 34.386509, 35.839649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276573, 34.571579, 35.488972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202807, 0.853114, 0.480694,
		0.970325, -0.241096, 0.018501,
		0.131677, 0.462677, -0.876693,
		43.316078, 34.710381, 35.225964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805603, 34.818764, 35.944649>,  <43.223904, 34.386509, 35.839649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805603, 34.818764, 35.944649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.651512, 34.991749, 35.618561>,  <43.559059, 35.095539, 35.422909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.651512, 34.991749, 35.618561>,  <43.805603, 34.818764, 35.944649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.651512, 34.991749, 35.618561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023548, 0.887715, 0.459791,
		0.922521, 0.157928, -0.352156,
		-0.385228, 0.432459, -0.815217,
		43.535942, 35.121487, 35.373997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256390, 35.399406, 35.655392>,  <43.805603, 34.818764, 35.944649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256390, 35.399406, 35.655392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.882248, 35.486317, 35.543739>,  <43.657764, 35.538464, 35.476749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.882248, 35.486317, 35.543739>,  <44.256390, 35.399406, 35.655392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882248, 35.486317, 35.543739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017281, 0.816244, 0.577449,
		0.353300, 0.535294, -0.767229,
		-0.935351, 0.217271, -0.279129,
		43.601643, 35.551498, 35.459999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247437, 36.169590, 35.623474>,  <44.256390, 35.399406, 35.655392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247437, 36.169590, 35.623474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856441, 36.090816, 35.593201>,  <43.621845, 36.043552, 35.575035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856441, 36.090816, 35.593201>,  <44.247437, 36.169590, 35.623474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856441, 36.090816, 35.593201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203319, 0.783511, 0.587172,
		-0.056332, 0.589345, -0.805916,
		-0.977491, -0.196934, -0.075688,
		43.563194, 36.031734, 35.570496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.991863, 36.769787, 35.401073>,  <44.247437, 36.169590, 35.623474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.991863, 36.769787, 35.401073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.676838, 36.571827, 35.547951>,  <43.487823, 36.453053, 35.636078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.676838, 36.571827, 35.547951>,  <43.991863, 36.769787, 35.401073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.676838, 36.571827, 35.547951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190229, 0.761997, 0.619010,
		-0.586143, 0.417657, -0.694261,
		-0.787559, -0.494897, 0.367189,
		43.440571, 36.423359, 35.658108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431503, 37.221943, 35.249516>,  <43.991863, 36.769787, 35.401073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431503, 37.221943, 35.249516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.349422, 36.966393, 35.546093>,  <43.300175, 36.813065, 35.724037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.349422, 36.966393, 35.546093>,  <43.431503, 37.221943, 35.249516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349422, 36.966393, 35.546093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241969, 0.767161, 0.594067,
		-0.948336, -0.057499, -0.312013,
		-0.205206, -0.638873, 0.741439,
		43.287861, 36.774731, 35.768524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911991, 37.696430, 35.065796>,  <43.431503, 37.221943, 35.249516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911991, 37.696430, 35.065796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.300083, 37.609711, 35.022614>,  <44.532940, 37.557678, 34.996704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.300083, 37.609711, 35.022614>,  <43.911991, 37.696430, 35.065796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300083, 37.609711, 35.022614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238286, -0.774864, -0.585496,
		0.043284, 0.593790, -0.803455,
		0.970230, -0.216795, -0.107953,
		44.591152, 37.544674, 34.990227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995705, 37.623421, 34.386509>,  <43.911991, 37.696430, 35.065796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.995705, 37.623421, 34.386509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.292328, 37.403999, 34.541004>,  <44.470303, 37.272346, 34.633701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.292328, 37.403999, 34.541004>,  <43.995705, 37.623421, 34.386509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.292328, 37.403999, 34.541004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150465, -0.697037, -0.701071,
		0.653794, 0.461771, -0.599433,
		0.741561, -0.548550, 0.386239,
		44.514797, 37.239433, 34.656876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467392, 37.552940, 33.812485>,  <43.995705, 37.623421, 34.386509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467392, 37.552940, 33.812485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.591602, 37.259415, 34.054176>,  <44.666130, 37.083298, 34.199192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.591602, 37.259415, 34.054176>,  <44.467392, 37.552940, 33.812485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.591602, 37.259415, 34.054176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022345, -0.629839, -0.776405,
		0.950303, 0.254594, -0.179183,
		0.310525, -0.733815, 0.604226,
		44.684761, 37.039268, 34.235443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.081108, 37.229092, 33.515602>,  <44.467392, 37.552940, 33.812485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.081108, 37.229092, 33.515602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.910843, 36.961136, 33.758930>,  <44.808681, 36.800362, 33.904926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.910843, 36.961136, 33.758930>,  <45.081108, 37.229092, 33.515602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.910843, 36.961136, 33.758930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101915, -0.632497, -0.767829,
		0.899123, -0.388836, 0.200960,
		-0.425666, -0.669892, 0.608320,
		44.783142, 36.760170, 33.941425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294998, 36.548702, 33.399792>,  <45.081108, 37.229092, 33.515602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294998, 36.548702, 33.399792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.961636, 36.443428, 33.594177>,  <44.761616, 36.380264, 33.710808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.961636, 36.443428, 33.594177>,  <45.294998, 36.548702, 33.399792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.961636, 36.443428, 33.594177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292468, -0.536063, -0.791896,
		0.468923, -0.802103, 0.369787,
		-0.833411, -0.263187, 0.485962,
		44.711613, 36.364471, 33.739967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.301758, 35.852947, 33.397633>,  <45.294998, 36.548702, 33.399792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.301758, 35.852947, 33.397633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.912395, 35.917274, 33.462898>,  <44.678780, 35.955872, 33.502056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.912395, 35.917274, 33.462898>,  <45.301758, 35.852947, 33.397633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912395, 35.917274, 33.462898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227830, -0.604882, -0.763028,
		-0.024013, -0.779908, 0.625433,
		-0.973405, 0.160815, 0.163162,
		44.620373, 35.965519, 33.511848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955826, 35.172272, 33.413200>,  <45.301758, 35.852947, 33.397633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955826, 35.172272, 33.413200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.675468, 35.448215, 33.340706>,  <44.507256, 35.613781, 33.297211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.675468, 35.448215, 33.340706>,  <44.955826, 35.172272, 33.413200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675468, 35.448215, 33.340706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291790, -0.509170, -0.809694,
		-0.650856, -0.514623, 0.558166,
		-0.700889, 0.689861, -0.181235,
		44.465202, 35.655174, 33.286335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326939, 34.792400, 33.321045>,  <44.955826, 35.172272, 33.413200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326939, 34.792400, 33.321045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.276684, 35.147366, 33.143631>,  <44.246532, 35.360344, 33.037182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.276684, 35.147366, 33.143631>,  <44.326939, 34.792400, 33.321045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276684, 35.147366, 33.143631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515329, -0.440401, -0.735175,
		-0.847733, 0.136201, 0.512637,
		-0.125634, 0.887410, -0.443531,
		44.238995, 35.413589, 33.010571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721813, 34.673916, 33.026855>,  <44.326939, 34.792400, 33.321045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721813, 34.673916, 33.026855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.839832, 34.991276, 32.813892>,  <43.910645, 35.181694, 32.686115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.839832, 34.991276, 32.813892>,  <43.721813, 34.673916, 33.026855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839832, 34.991276, 32.813892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391374, -0.407965, -0.824858,
		-0.871648, 0.451745, 0.190147,
		0.295052, 0.793404, -0.532404,
		43.928349, 35.229298, 32.654171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172394, 34.908501, 32.597431>,  <43.721813, 34.673916, 33.026855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172394, 34.908501, 32.597431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.515675, 35.028027, 32.430485>,  <43.721645, 35.099743, 32.330315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.515675, 35.028027, 32.430485>,  <43.172394, 34.908501, 32.597431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515675, 35.028027, 32.430485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279885, -0.409188, -0.868464,
		-0.430290, 0.862135, -0.267533,
		0.858204, 0.298813, -0.417368,
		43.773136, 35.117672, 32.305275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993877, 35.239708, 32.045128>,  <43.172394, 34.908501, 32.597431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993877, 35.239708, 32.045128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.376057, 35.169662, 31.950089>,  <43.605366, 35.127636, 31.893064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.376057, 35.169662, 31.950089>,  <42.993877, 35.239708, 32.045128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376057, 35.169662, 31.950089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287729, -0.373083, -0.882055,
		0.065818, 0.911122, -0.406848,
		0.955447, -0.175117, -0.237601,
		43.662689, 35.117126, 31.878809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024796, 35.439095, 31.316633>,  <42.993877, 35.239708, 32.045128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024796, 35.439095, 31.316633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.326107, 35.186962, 31.391739>,  <43.506893, 35.035683, 31.436802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.326107, 35.186962, 31.391739>,  <43.024796, 35.439095, 31.316633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326107, 35.186962, 31.391739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042318, -0.331343, -0.942561,
		0.656344, 0.702061, -0.276267,
		0.753274, -0.630335, 0.187766,
		43.552090, 34.997860, 31.448069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421078, 35.461109, 30.764639>,  <43.024796, 35.439095, 31.316633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421078, 35.461109, 30.764639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.593208, 35.137722, 30.925236>,  <43.696487, 34.943691, 31.021595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.593208, 35.137722, 30.925236>,  <43.421078, 35.461109, 30.764639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593208, 35.137722, 30.925236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130130, -0.495700, -0.858690,
		0.893244, 0.317272, -0.318519,
		0.430328, -0.808468, 0.401494,
		43.722305, 34.895180, 31.045685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911930, 35.220409, 30.307756>,  <43.421078, 35.461109, 30.764639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911930, 35.220409, 30.307756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.830719, 34.892185, 30.521471>,  <43.781994, 34.695251, 30.649700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.830719, 34.892185, 30.521471>,  <43.911930, 35.220409, 30.307756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.830719, 34.892185, 30.521471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166451, -0.508785, -0.844649,
		0.964922, -0.260418, -0.033287,
		-0.203026, -0.820561, 0.534285,
		43.769810, 34.646015, 30.681757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302841, 34.710835, 30.007561>,  <43.911930, 35.220409, 30.307756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302841, 34.710835, 30.007561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.999664, 34.520901, 30.186472>,  <43.817760, 34.406940, 30.293819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.999664, 34.520901, 30.186472>,  <44.302841, 34.710835, 30.007561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999664, 34.520901, 30.186472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133651, -0.558084, -0.818950,
		0.638487, -0.680493, 0.359531,
		-0.757939, -0.474838, 0.447279,
		43.772282, 34.378448, 30.320656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302242, 33.983379, 29.857227>,  <44.302841, 34.710835, 30.007561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302242, 33.983379, 29.857227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.938606, 34.023582, 30.018944>,  <43.720425, 34.047703, 30.115974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.938606, 34.023582, 30.018944>,  <44.302242, 33.983379, 29.857227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.938606, 34.023582, 30.018944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379493, -0.600149, -0.704135,
		0.171869, -0.793549, 0.583730,
		-0.909091, 0.100503, 0.404294,
		43.665878, 34.053734, 30.140232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102028, 33.364006, 29.826685>,  <44.302242, 33.983379, 29.857227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102028, 33.364006, 29.826685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.748852, 33.544109, 29.879871>,  <43.536945, 33.652172, 29.911783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.748852, 33.544109, 29.879871>,  <44.102028, 33.364006, 29.826685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.748852, 33.544109, 29.879871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400989, -0.575941, -0.712390,
		-0.244180, -0.682317, 0.689071,
		-0.882940, 0.450262, 0.132968,
		43.483971, 33.679188, 29.919762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566483, 32.838627, 29.997137>,  <44.102028, 33.364006, 29.826685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566483, 32.838627, 29.997137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.392368, 33.162060, 29.838787>,  <43.287899, 33.356121, 29.743776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.392368, 33.162060, 29.838787>,  <43.566483, 32.838627, 29.997137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392368, 33.162060, 29.838787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370543, -0.561655, -0.739758,
		-0.820503, -0.175316, 0.544094,
		-0.435284, 0.808584, -0.395877,
		43.261784, 33.404636, 29.720024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912457, 32.590088, 29.772923>,  <43.566483, 32.838627, 29.997137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912457, 32.590088, 29.772923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.978313, 32.931057, 29.574423>,  <43.017826, 33.135639, 29.455324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.978313, 32.931057, 29.574423>,  <42.912457, 32.590088, 29.772923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978313, 32.931057, 29.574423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381268, -0.409008, -0.829064,
		-0.909686, 0.325701, 0.257664,
		0.164640, 0.852427, -0.496248,
		43.027706, 33.186787, 29.425549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285561, 32.773693, 29.487427>,  <42.912457, 32.590088, 29.772923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285561, 32.773693, 29.487427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.568012, 32.953644, 29.268707>,  <42.737484, 33.061615, 29.137476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.568012, 32.953644, 29.268707>,  <42.285561, 32.773693, 29.487427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568012, 32.953644, 29.268707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352322, -0.446614, -0.822439,
		-0.614205, 0.773399, -0.156867,
		0.706132, 0.449878, -0.546798,
		42.779850, 33.088608, 29.104668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942581, 33.115387, 29.099632>,  <42.285561, 32.773693, 29.487427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942581, 33.115387, 29.099632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.292961, 33.103149, 28.907059>,  <42.503189, 33.095806, 28.791515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.292961, 33.103149, 28.907059>,  <41.942581, 33.115387, 29.099632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292961, 33.103149, 28.907059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479529, -0.163983, -0.862068,
		-0.052574, 0.985988, -0.158310,
		0.875949, -0.030592, -0.481432,
		42.555744, 33.093971, 28.762629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.020287, 40.070297, 42.915367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881626, 39.715099, 42.794506>,  <36.798431, 39.501980, 42.721989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881626, 39.715099, 42.794506>,  <37.020287, 40.070297, 42.915367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881626, 39.715099, 42.794506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589566, 0.044274, -0.806506,
		0.729553, -0.457712, 0.508186,
		-0.346648, -0.887998, -0.302151,
		36.777630, 39.448700, 42.703861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514992, 39.736217, 42.620514>,  <37.020287, 40.070297, 42.915367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514992, 39.736217, 42.620514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204315, 39.544609, 42.456909>,  <37.017910, 39.429646, 42.358746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204315, 39.544609, 42.456909>,  <37.514992, 39.736217, 42.620514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204315, 39.544609, 42.456909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527835, -0.140630, -0.837624,
		0.343719, -0.866466, 0.362070,
		-0.776690, -0.479020, -0.409014,
		36.971310, 39.400902, 42.334206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804882, 39.232826, 42.338566>,  <37.514992, 39.736217, 42.620514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804882, 39.232826, 42.338566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446320, 39.227509, 42.161350>,  <37.231182, 39.224319, 42.055019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446320, 39.227509, 42.161350>,  <37.804882, 39.232826, 42.338566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446320, 39.227509, 42.161350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441961, -0.102687, -0.891137,
		-0.033646, -0.994625, 0.097925,
		-0.896403, -0.013296, -0.443040,
		37.177399, 39.223522, 42.028439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649292, 38.629528, 42.012276>,  <37.804882, 39.232826, 42.338566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649292, 38.629528, 42.012276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453140, 38.919178, 41.818298>,  <37.335449, 39.092968, 41.701912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453140, 38.919178, 41.818298>,  <37.649292, 38.629528, 42.012276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453140, 38.919178, 41.818298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473396, -0.245871, -0.845839,
		-0.731725, -0.644356, -0.222225,
		-0.490383, 0.724122, -0.484946,
		37.306026, 39.136414, 41.672813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264973, 38.154469, 41.462379>,  <37.649292, 38.629528, 42.012276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264973, 38.154469, 41.462379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274731, 38.538940, 41.352444>,  <37.280586, 38.769623, 41.286480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274731, 38.538940, 41.352444>,  <37.264973, 38.154469, 41.462379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274731, 38.538940, 41.352444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251450, -0.271983, -0.928869,
		-0.967563, -0.046453, -0.248322,
		0.024390, 0.961180, -0.274842,
		37.282047, 38.827293, 41.269993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014603, 38.208397, 40.721531>,  <37.264973, 38.154469, 41.462379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014603, 38.208397, 40.721531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187546, 38.565079, 40.775093>,  <37.291313, 38.779087, 40.807232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187546, 38.565079, 40.775093>,  <37.014603, 38.208397, 40.721531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187546, 38.565079, 40.775093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175128, 0.062636, -0.982551,
		-0.884531, 0.448266, -0.129080,
		0.432359, 0.891703, 0.133908,
		37.317253, 38.832588, 40.815266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895878, 38.756752, 40.186733>,  <37.014603, 38.208397, 40.721531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895878, 38.756752, 40.186733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221272, 38.905087, 40.365944>,  <37.416508, 38.994087, 40.473469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221272, 38.905087, 40.365944>,  <36.895878, 38.756752, 40.186733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221272, 38.905087, 40.365944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401581, 0.199064, -0.893927,
		-0.420687, 0.907112, 0.013014,
		0.813483, 0.370837, 0.448023,
		37.465317, 39.016338, 40.500351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018093, 39.435345, 39.977352>,  <36.895878, 38.756752, 40.186733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018093, 39.435345, 39.977352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382183, 39.349354, 40.118931>,  <37.600636, 39.297760, 40.203876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382183, 39.349354, 40.118931>,  <37.018093, 39.435345, 39.977352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382183, 39.349354, 40.118931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414070, 0.485180, -0.770160,
		-0.006159, 0.847576, 0.530638,
		0.910224, -0.214978, 0.353944,
		37.655251, 39.284859, 40.225113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434711, 40.022514, 39.923244>,  <37.018093, 39.435345, 39.977352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434711, 40.022514, 39.923244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707909, 39.732624, 39.959663>,  <37.871826, 39.558689, 39.981514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707909, 39.732624, 39.959663>,  <37.434711, 40.022514, 39.923244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707909, 39.732624, 39.959663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539736, 0.416763, -0.731433,
		0.492143, 0.548707, 0.675807,
		0.682994, -0.724727, 0.091050,
		37.912807, 39.515205, 39.986977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095547, 40.339577, 39.697441>,  <37.434711, 40.022514, 39.923244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095547, 40.339577, 39.697441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174122, 39.948853, 39.663353>,  <38.221268, 39.714420, 39.642899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174122, 39.948853, 39.663353>,  <38.095547, 40.339577, 39.697441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174122, 39.948853, 39.663353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646245, 0.194345, -0.737969,
		0.737414, 0.089893, 0.669432,
		0.196439, -0.976806, -0.085220,
		38.233055, 39.655811, 39.637787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785370, 40.259640, 39.474174>,  <38.095547, 40.339577, 39.697441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785370, 40.259640, 39.474174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612854, 39.908798, 39.389614>,  <38.509346, 39.698296, 39.338879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612854, 39.908798, 39.389614>,  <38.785370, 40.259640, 39.474174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612854, 39.908798, 39.389614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503494, -0.039554, -0.863093,
		0.748657, -0.478677, 0.458674,
		-0.431285, -0.877100, -0.211399,
		38.483467, 39.645668, 39.326195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311981, 39.869499, 39.239468>,  <38.785370, 40.259640, 39.474174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311981, 39.869499, 39.239468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010143, 39.661335, 39.079586>,  <38.829041, 39.536438, 38.983658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010143, 39.661335, 39.079586>,  <39.311981, 39.869499, 39.239468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010143, 39.661335, 39.079586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448934, 0.034832, -0.892886,
		0.478587, -0.853207, 0.207344,
		-0.754595, -0.520408, -0.399704,
		38.783764, 39.505211, 38.959675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501488, 39.184895, 39.176682>,  <39.311981, 39.869499, 39.239468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501488, 39.184895, 39.176682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642723, 38.814098, 39.227306>,  <39.727463, 38.591621, 39.257683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642723, 38.814098, 39.227306>,  <39.501488, 39.184895, 39.176682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642723, 38.814098, 39.227306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006821, -0.137824, -0.990433,
		0.935566, 0.348846, -0.054987,
		0.353087, -0.926990, 0.126564,
		39.748650, 38.536003, 39.265274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125610, 39.053604, 38.754925>,  <39.501488, 39.184895, 39.176682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125610, 39.053604, 38.754925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945789, 38.706032, 38.837734>,  <39.837898, 38.497486, 38.887421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945789, 38.706032, 38.837734>,  <40.125610, 39.053604, 38.754925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945789, 38.706032, 38.837734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067135, -0.263972, -0.962191,
		0.890729, -0.418655, 0.177004,
		-0.449550, -0.868934, 0.207021,
		39.810925, 38.445351, 38.899841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503708, 38.386929, 38.683361>,  <40.125610, 39.053604, 38.754925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503708, 38.386929, 38.683361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111481, 38.396317, 38.605461>,  <39.876144, 38.401951, 38.558723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111481, 38.396317, 38.605461>,  <40.503708, 38.386929, 38.683361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111481, 38.396317, 38.605461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193431, -0.049232, -0.979878,
		-0.032579, -0.998512, 0.043737,
		-0.980573, 0.023463, -0.194748,
		39.817310, 38.403358, 38.547035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829323, 37.912796, 39.162445>,  <40.503708, 38.386929, 38.683361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829323, 37.912796, 39.162445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188988, 37.775593, 39.271149>,  <41.404785, 37.693272, 39.336372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188988, 37.775593, 39.271149>,  <40.829323, 37.912796, 39.162445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188988, 37.775593, 39.271149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373830, -0.279209, 0.884474,
		-0.227502, -0.896878, -0.379280,
		0.899163, -0.343006, 0.271759,
		41.458736, 37.672691, 39.352676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763268, 37.301628, 39.259888>,  <40.829323, 37.912796, 39.162445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763268, 37.301628, 39.259888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098629, 37.372150, 39.466187>,  <41.299847, 37.414463, 39.589966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098629, 37.372150, 39.466187>,  <40.763268, 37.301628, 39.259888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098629, 37.372150, 39.466187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465381, -0.261020, 0.845748,
		0.283732, -0.949097, -0.136789,
		0.838401, 0.176307, 0.515752,
		41.350151, 37.425041, 39.620911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700489, 36.857376, 39.747040>,  <40.763268, 37.301628, 39.259888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700489, 36.857376, 39.747040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982929, 37.102127, 39.889603>,  <41.152393, 37.248978, 39.975140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982929, 37.102127, 39.889603>,  <40.700489, 36.857376, 39.747040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982929, 37.102127, 39.889603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285029, -0.215155, 0.934059,
		0.648212, -0.761128, 0.022481,
		0.706102, 0.611876, 0.356410,
		41.194759, 37.285690, 39.996525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003811, 36.435505, 40.238167>,  <40.700489, 36.857376, 39.747040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003811, 36.435505, 40.238167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082237, 36.816395, 40.331829>,  <41.129292, 37.044930, 40.388027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082237, 36.816395, 40.331829>,  <41.003811, 36.435505, 40.238167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082237, 36.816395, 40.331829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289462, -0.171950, 0.941618,
		0.936894, -0.252398, 0.241918,
		0.196065, 0.952223, 0.234158,
		41.141056, 37.102062, 40.402077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286999, 36.328384, 40.947971>,  <41.003811, 36.435505, 40.238167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286999, 36.328384, 40.947971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195637, 36.714195, 40.895035>,  <41.140820, 36.945683, 40.863274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195637, 36.714195, 40.895035>,  <41.286999, 36.328384, 40.947971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195637, 36.714195, 40.895035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230339, 0.078536, 0.969936,
		0.945924, 0.252026, 0.204230,
		-0.228409, 0.964528, -0.132341,
		41.127113, 37.003555, 40.855331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601391, 36.679466, 41.452778>,  <41.286999, 36.328384, 40.947971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601391, 36.679466, 41.452778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334484, 36.963024, 41.361370>,  <41.174339, 37.133160, 41.306526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334484, 36.963024, 41.361370>,  <41.601391, 36.679466, 41.452778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334484, 36.963024, 41.361370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260988, 0.064817, 0.963163,
		0.697597, 0.702326, 0.141764,
		-0.667265, 0.708899, -0.228515,
		41.134304, 37.175694, 41.292816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726135, 37.177757, 41.965332>,  <41.601391, 36.679466, 41.452778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726135, 37.177757, 41.965332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358669, 37.227257, 41.815273>,  <41.138187, 37.256954, 41.725239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358669, 37.227257, 41.815273>,  <41.726135, 37.177757, 41.965332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358669, 37.227257, 41.815273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382882, -0.045200, 0.922691,
		0.097224, 0.991284, 0.088904,
		-0.918667, 0.123747, -0.375150,
		41.083069, 37.264381, 41.702728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401031, 37.518066, 42.515270>,  <41.726135, 37.177757, 41.965332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401031, 37.518066, 42.515270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108120, 37.375629, 42.283073>,  <40.932373, 37.290169, 42.143757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108120, 37.375629, 42.283073>,  <41.401031, 37.518066, 42.515270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108120, 37.375629, 42.283073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638028, 0.060718, 0.767615,
		-0.238095, 0.932477, -0.271658,
		-0.732278, -0.356090, -0.580490,
		40.888435, 37.268803, 42.108925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751106, 37.925453, 42.597801>,  <41.401031, 37.518066, 42.515270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751106, 37.925453, 42.597801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630039, 37.569359, 42.461639>,  <40.557400, 37.355701, 42.379944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630039, 37.569359, 42.461639>,  <40.751106, 37.925453, 42.597801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630039, 37.569359, 42.461639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702107, -0.033271, 0.711294,
		-0.644544, 0.454283, -0.614971,
		-0.302668, -0.890236, -0.340400,
		40.539238, 37.302288, 42.359520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995098, 37.969128, 42.466705>,  <40.751106, 37.925453, 42.597801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995098, 37.969128, 42.466705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112854, 37.592499, 42.532158>,  <40.183506, 37.366520, 42.571430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112854, 37.592499, 42.532158>,  <39.995098, 37.969128, 42.466705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112854, 37.592499, 42.532158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685285, -0.088637, 0.722861,
		-0.666122, -0.324937, -0.671340,
		0.294390, -0.941573, 0.163632,
		40.201172, 37.310028, 42.581249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342964, 37.618576, 42.762852>,  <39.995098, 37.969128, 42.466705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342964, 37.618576, 42.762852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633614, 37.349422, 42.818340>,  <39.808002, 37.187931, 42.851631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633614, 37.349422, 42.818340>,  <39.342964, 37.618576, 42.762852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633614, 37.349422, 42.818340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556051, -0.457398, 0.693970,
		-0.403510, -0.581393, -0.706514,
		0.726627, -0.672882, 0.138719,
		39.851601, 37.147556, 42.859955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017303, 36.894535, 42.636692>,  <39.342964, 37.618576, 42.762852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017303, 36.894535, 42.636692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348137, 36.917618, 42.860336>,  <39.546635, 36.931469, 42.994522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348137, 36.917618, 42.860336>,  <39.017303, 36.894535, 42.636692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348137, 36.917618, 42.860336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429214, -0.577424, 0.694519,
		0.362925, -0.814402, -0.452807,
		0.827080, 0.057707, 0.559115,
		39.596260, 36.934929, 43.028072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082287, 36.281258, 42.929417>,  <39.017303, 36.894535, 42.636692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082287, 36.281258, 42.929417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280659, 36.540024, 43.161125>,  <39.399681, 36.695282, 43.300152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280659, 36.540024, 43.161125>,  <39.082287, 36.281258, 42.929417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280659, 36.540024, 43.161125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327316, -0.478624, 0.814729,
		0.804313, -0.593653, -0.025618,
		0.495928, 0.646912, 0.579276,
		39.429436, 36.734097, 43.334908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511406, 35.621407, 42.774170>,  <39.082287, 36.281258, 42.929417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511406, 35.621407, 42.774170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255764, 35.319893, 42.713043>,  <39.102379, 35.138985, 42.676369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255764, 35.319893, 42.713043>,  <39.511406, 35.621407, 42.774170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255764, 35.319893, 42.713043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017760, 0.184175, -0.982733,
		0.768914, -0.630784, -0.104320,
		-0.639106, -0.753784, -0.152817,
		39.064034, 35.093758, 42.667198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792667, 35.225464, 42.288296>,  <39.511406, 35.621407, 42.774170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792667, 35.225464, 42.288296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411720, 35.105770, 42.264782>,  <39.183151, 35.033955, 42.250675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411720, 35.105770, 42.264782>,  <39.792667, 35.225464, 42.288296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411720, 35.105770, 42.264782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021247, 0.127186, -0.991651,
		0.304213, -0.945665, -0.114770,
		-0.952367, -0.299235, -0.058784,
		39.126011, 35.015999, 42.247147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725456, 34.652763, 41.793613>,  <39.792667, 35.225464, 42.288296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725456, 34.652763, 41.793613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394268, 34.873199, 41.835106>,  <39.195553, 35.005463, 41.860001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394268, 34.873199, 41.835106>,  <39.725456, 34.652763, 41.793613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394268, 34.873199, 41.835106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011284, 0.201321, -0.979460,
		-0.560654, -0.809797, -0.172907,
		-0.827974, 0.551089, 0.103734,
		39.145874, 35.038525, 41.866226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399857, 34.514221, 41.158905>,  <39.725456, 34.652763, 41.793613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399857, 34.514221, 41.158905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163841, 34.804836, 41.299755>,  <39.022232, 34.979206, 41.384266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163841, 34.804836, 41.299755>,  <39.399857, 34.514221, 41.158905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163841, 34.804836, 41.299755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166957, 0.316906, -0.933647,
		-0.789922, -0.609679, -0.065686,
		-0.590041, 0.726541, 0.352121,
		38.986828, 35.022797, 41.405392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852627, 34.443741, 40.814667>,  <39.399857, 34.514221, 41.158905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852627, 34.443741, 40.814667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797775, 34.809288, 40.967529>,  <38.764866, 35.028614, 41.059246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797775, 34.809288, 40.967529>,  <38.852627, 34.443741, 40.814667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797775, 34.809288, 40.967529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380727, 0.307539, -0.872047,
		-0.914463, -0.265081, 0.305761,
		-0.137130, 0.913866, 0.382157,
		38.756638, 35.083447, 41.082176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257244, 34.630039, 40.447605>,  <38.852627, 34.443741, 40.814667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257244, 34.630039, 40.447605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416325, 34.970638, 40.584305>,  <38.511772, 35.174995, 40.666325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416325, 34.970638, 40.584305>,  <38.257244, 34.630039, 40.447605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416325, 34.970638, 40.584305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125611, 0.419497, -0.899024,
		-0.908877, 0.314613, 0.273791,
		0.397699, 0.851493, 0.341752,
		38.535633, 35.226086, 40.686829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754681, 35.221691, 40.249256>,  <38.257244, 34.630039, 40.447605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754681, 35.221691, 40.249256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139523, 35.314915, 40.305878>,  <38.370426, 35.370850, 40.339851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139523, 35.314915, 40.305878>,  <37.754681, 35.221691, 40.249256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139523, 35.314915, 40.305878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005827, 0.536579, -0.843830,
		-0.272615, 0.811029, 0.517604,
		0.962106, 0.233057, 0.141554,
		38.428154, 35.384830, 40.348343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872231, 35.933201, 40.231873>,  <37.754681, 35.221691, 40.249256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872231, 35.933201, 40.231873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214981, 35.760277, 40.119534>,  <38.420631, 35.656521, 40.052132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214981, 35.760277, 40.119534>,  <37.872231, 35.933201, 40.231873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214981, 35.760277, 40.119534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057057, 0.461896, -0.885097,
		0.512358, 0.774441, 0.371121,
		0.856875, -0.432311, -0.280844,
		38.472042, 35.630585, 40.035282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202229, 36.538979, 39.880413>,  <37.872231, 35.933201, 40.231873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202229, 36.538979, 39.880413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410015, 36.219486, 39.758961>,  <38.534687, 36.027790, 39.686089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410015, 36.219486, 39.758961>,  <38.202229, 36.538979, 39.880413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410015, 36.219486, 39.758961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079611, 0.399025, -0.913478,
		0.850776, 0.450346, 0.270867,
		0.519464, -0.798729, -0.303628,
		38.565853, 35.979866, 39.667873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771332, 36.738564, 39.410198>,  <38.202229, 36.538979, 39.880413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771332, 36.738564, 39.410198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741718, 36.344303, 39.349533>,  <38.723949, 36.107746, 39.313133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741718, 36.344303, 39.349533>,  <38.771332, 36.738564, 39.410198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741718, 36.344303, 39.349533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174731, 0.136906, -0.975052,
		0.981829, -0.098690, 0.162089,
		-0.074037, -0.985656, -0.151662,
		38.719505, 36.048607, 39.304035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240025, 36.580635, 38.957981>,  <38.771332, 36.738564, 39.410198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240025, 36.580635, 38.957981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038776, 36.236485, 38.925411>,  <38.918030, 36.029995, 38.905869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038776, 36.236485, 38.925411>,  <39.240025, 36.580635, 38.957981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038776, 36.236485, 38.925411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142463, 0.010360, -0.989746,
		0.852396, -0.509556, 0.117359,
		-0.503115, -0.860375, -0.081423,
		38.887840, 35.978371, 38.900986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647614, 36.220451, 38.435543>,  <39.240025, 36.580635, 38.957981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647614, 36.220451, 38.435543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278015, 36.068760, 38.455215>,  <39.056255, 35.977745, 38.467018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278015, 36.068760, 38.455215>,  <39.647614, 36.220451, 38.435543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278015, 36.068760, 38.455215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049372, -0.009219, -0.998738,
		0.379201, -0.925258, -0.010205,
		-0.923996, -0.379227, 0.049178,
		39.000816, 35.954990, 38.469971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.597046, 34.292225, 46.510494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.251068, 34.256733, 46.312912>,  <38.043480, 34.235435, 46.194363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.251068, 34.256733, 46.312912>,  <38.597046, 34.292225, 46.510494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251068, 34.256733, 46.312912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500987, -0.210783, -0.839394,
		-0.029635, -0.973497, 0.226770,
		-0.864947, -0.088733, -0.493956,
		37.991585, 34.230114, 46.164726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601540, 33.637859, 46.034916>,  <38.597046, 34.292225, 46.510494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601540, 33.637859, 46.034916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.337383, 33.878815, 45.855576>,  <38.178890, 34.023388, 45.747971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.337383, 33.878815, 45.855576>,  <38.601540, 33.637859, 46.034916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337383, 33.878815, 45.855576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414341, -0.205645, -0.886584,
		-0.626268, -0.771259, -0.113788,
		-0.660386, 0.602386, -0.448353,
		38.139267, 34.059532, 45.721069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377125, 33.263763, 45.383919>,  <38.601540, 33.637859, 46.034916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377125, 33.263763, 45.383919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.302246, 33.653831, 45.336601>,  <38.257317, 33.887875, 45.308212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.302246, 33.653831, 45.336601>,  <38.377125, 33.263763, 45.383919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302246, 33.653831, 45.336601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548911, 0.003977, -0.835871,
		-0.814649, -0.221408, -0.536028,
		-0.187201, 0.975173, -0.118293,
		38.246086, 33.946384, 45.301113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115047, 33.335171, 44.734184>,  <38.377125, 33.263763, 45.383919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115047, 33.335171, 44.734184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.200970, 33.717030, 44.816658>,  <38.252522, 33.946144, 44.866142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.200970, 33.717030, 44.816658>,  <38.115047, 33.335171, 44.734184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200970, 33.717030, 44.816658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283574, 0.141054, -0.948520,
		-0.934582, 0.262216, -0.240413,
		0.214806, 0.954645, 0.206184,
		38.265411, 34.003422, 44.878513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762486, 33.856892, 44.214584>,  <38.115047, 33.335171, 44.734184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762486, 33.856892, 44.214584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072422, 34.058823, 44.366776>,  <38.258385, 34.179981, 44.458092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072422, 34.058823, 44.366776>,  <37.762486, 33.856892, 44.214584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072422, 34.058823, 44.366776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290480, 0.250235, -0.923582,
		-0.561463, 0.826152, 0.047250,
		0.774843, 0.504832, 0.380478,
		38.304874, 34.210274, 44.480919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695610, 34.397987, 43.894207>,  <37.762486, 33.856892, 44.214584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695610, 34.397987, 43.894207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.070198, 34.449215, 44.024818>,  <38.294952, 34.479950, 44.103184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.070198, 34.449215, 44.024818>,  <37.695610, 34.397987, 43.894207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070198, 34.449215, 44.024818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285995, 0.260133, -0.922246,
		-0.203049, 0.957042, 0.206981,
		0.936471, 0.128065, 0.326529,
		38.351139, 34.487633, 44.122776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893116, 35.024506, 43.741047>,  <37.695610, 34.397987, 43.894207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893116, 35.024506, 43.741047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.238148, 34.822723, 43.756432>,  <38.445168, 34.701656, 43.765663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.238148, 34.822723, 43.756432>,  <37.893116, 35.024506, 43.741047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238148, 34.822723, 43.756432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228491, 0.320626, -0.919234,
		0.451378, 0.801703, 0.391829,
		0.862583, -0.504451, 0.038458,
		38.496922, 34.671387, 43.767967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373783, 35.496067, 43.488865>,  <37.893116, 35.024506, 43.741047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373783, 35.496067, 43.488865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.550980, 35.140079, 43.445560>,  <38.657299, 34.926487, 43.419579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.550980, 35.140079, 43.445560>,  <38.373783, 35.496067, 43.488865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550980, 35.140079, 43.445560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288822, 0.255990, -0.922524,
		0.848728, 0.377402, 0.370443,
		0.442993, -0.889964, -0.108264,
		38.683876, 34.873089, 43.413082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113861, 35.617504, 43.442867>,  <38.373783, 35.496067, 43.488865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113861, 35.617504, 43.442867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.017471, 35.264950, 43.280346>,  <38.959637, 35.053417, 43.182831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.017471, 35.264950, 43.280346>,  <39.113861, 35.617504, 43.442867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017471, 35.264950, 43.280346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317547, 0.323997, -0.891173,
		0.917111, -0.343775, 0.201806,
		-0.240978, -0.881388, -0.406306,
		38.945179, 35.000534, 43.158455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165672, 35.852055, 44.181625>,  <39.113861, 35.617504, 43.442867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165672, 35.852055, 44.181625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.271168, 36.228062, 44.095085>,  <39.334465, 36.453667, 44.043163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.271168, 36.228062, 44.095085>,  <39.165672, 35.852055, 44.181625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271168, 36.228062, 44.095085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097946, 0.249228, 0.963479,
		0.959609, -0.232915, 0.157802,
		0.263738, 0.940019, -0.216348,
		39.350288, 36.510067, 44.030182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627125, 36.098969, 44.625443>,  <39.165672, 35.852055, 44.181625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627125, 36.098969, 44.625443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.505489, 36.448490, 44.473656>,  <39.432507, 36.658203, 44.382584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.505489, 36.448490, 44.473656>,  <39.627125, 36.098969, 44.625443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505489, 36.448490, 44.473656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003475, 0.397306, 0.917680,
		0.952637, 0.280374, -0.117779,
		-0.304088, 0.873807, -0.379463,
		39.414265, 36.710632, 44.359818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083141, 36.521832, 44.980133>,  <39.627125, 36.098969, 44.625443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083141, 36.521832, 44.980133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.788628, 36.744694, 44.826527>,  <39.611919, 36.878410, 44.734364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.788628, 36.744694, 44.826527>,  <40.083141, 36.521832, 44.980133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788628, 36.744694, 44.826527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087915, 0.483934, 0.870677,
		0.670942, 0.674824, -0.307328,
		-0.736280, 0.557155, -0.384019,
		39.567745, 36.911839, 44.711323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203815, 37.201664, 45.089676>,  <40.083141, 36.521832, 44.980133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203815, 37.201664, 45.089676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.805664, 37.203602, 45.051292>,  <39.566772, 37.204765, 45.028263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.805664, 37.203602, 45.051292>,  <40.203815, 37.201664, 45.089676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805664, 37.203602, 45.051292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075176, 0.582691, 0.809210,
		0.059829, 0.812680, -0.579631,
		-0.995374, 0.004840, -0.095956,
		39.507053, 37.205055, 45.022507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010170, 37.827404, 45.347473>,  <40.203815, 37.201664, 45.089676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010170, 37.827404, 45.347473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.685642, 37.595924, 45.380627>,  <39.490925, 37.457035, 45.400520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.685642, 37.595924, 45.380627>,  <40.010170, 37.827404, 45.347473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685642, 37.595924, 45.380627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114443, 0.296253, 0.948229,
		-0.573297, 0.759828, -0.306583,
		-0.811316, -0.578702, 0.082884,
		39.442245, 37.422314, 45.405491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402657, 38.219738, 45.501709>,  <40.010170, 37.827404, 45.347473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402657, 38.219738, 45.501709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.286781, 37.854759, 45.617313>,  <39.217255, 37.635773, 45.686676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.286781, 37.854759, 45.617313>,  <39.402657, 38.219738, 45.501709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286781, 37.854759, 45.617313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159615, 0.343786, 0.925384,
		-0.943718, 0.221943, -0.245230,
		-0.289689, -0.912443, 0.289011,
		39.199875, 37.581028, 45.704018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969524, 38.321312, 45.873283>,  <39.402657, 38.219738, 45.501709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969524, 38.321312, 45.873283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.065598, 37.955673, 46.003967>,  <39.123241, 37.736290, 46.082378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.065598, 37.955673, 46.003967>,  <38.969524, 38.321312, 45.873283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065598, 37.955673, 46.003967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239274, 0.270426, 0.932533,
		-0.940776, -0.302154, -0.153767,
		0.240186, -0.914097, 0.326708,
		39.137653, 37.681446, 46.101978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653797, 38.337643, 46.524918>,  <38.969524, 38.321312, 45.873283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653797, 38.337643, 46.524918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.853634, 37.992691, 46.557682>,  <38.973534, 37.785721, 46.577339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.853634, 37.992691, 46.557682>,  <38.653797, 38.337643, 46.524918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853634, 37.992691, 46.557682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173839, -0.007174, 0.984748,
		-0.848642, -0.506207, -0.153500,
		0.499588, -0.862382, 0.081911,
		39.003510, 37.733978, 46.582256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172264, 37.876690, 46.835049>,  <38.653797, 38.337643, 46.524918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172264, 37.876690, 46.835049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.534698, 37.719379, 46.897442>,  <38.752159, 37.624992, 46.934879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.534698, 37.719379, 46.897442>,  <38.172264, 37.876690, 46.835049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534698, 37.719379, 46.897442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263742, -0.236762, 0.935085,
		-0.330817, -0.888412, -0.318252,
		0.906091, -0.393278, 0.155987,
		38.806526, 37.601395, 46.944237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108982, 37.237957, 47.139442>,  <38.172264, 37.876690, 46.835049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108982, 37.237957, 47.139442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.475533, 37.342808, 47.260475>,  <38.695461, 37.405716, 47.333096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.475533, 37.342808, 47.260475>,  <38.108982, 37.237957, 47.139442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475533, 37.342808, 47.260475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318415, 0.019122, 0.947759,
		0.242644, -0.964845, 0.100987,
		0.916371, 0.262124, 0.302581,
		38.750443, 37.421444, 47.351250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253803, 36.819889, 47.630600>,  <38.108982, 37.237957, 47.139442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253803, 36.819889, 47.630600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.517769, 37.114372, 47.690617>,  <38.676147, 37.291061, 47.726627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.517769, 37.114372, 47.690617>,  <38.253803, 36.819889, 47.630600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517769, 37.114372, 47.690617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298790, 0.073913, 0.951452,
		0.689373, -0.672711, 0.268747,
		0.659916, 0.736204, 0.150045,
		38.715744, 37.335232, 47.735630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662037, 36.598309, 48.295376>,  <38.253803, 36.819889, 47.630600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662037, 36.598309, 48.295376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.705708, 36.988152, 48.217175>,  <38.731911, 37.222057, 48.170254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.705708, 36.988152, 48.217175>,  <38.662037, 36.598309, 48.295376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705708, 36.988152, 48.217175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084810, 0.205096, 0.975061,
		0.990398, -0.089876, 0.105049,
		0.109179, 0.974607, -0.195504,
		38.738461, 37.280533, 48.158524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197506, 36.673115, 48.656181>,  <38.662037, 36.598309, 48.295376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197506, 36.673115, 48.656181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.029293, 37.027821, 48.579449>,  <38.928364, 37.240643, 48.533409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.029293, 37.027821, 48.579449>,  <39.197506, 36.673115, 48.656181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029293, 37.027821, 48.579449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002463, 0.212553, 0.977146,
		0.907273, 0.410452, -0.091571,
		-0.420536, 0.886764, -0.191833,
		38.903133, 37.293850, 48.521900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600163, 37.188564, 48.960846>,  <39.197506, 36.673115, 48.656181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600163, 37.188564, 48.960846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.226360, 37.328239, 48.933208>,  <39.002079, 37.412045, 48.916626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.226360, 37.328239, 48.933208>,  <39.600163, 37.188564, 48.960846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226360, 37.328239, 48.933208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059573, 0.037947, 0.997503,
		0.350938, 0.936284, -0.014659,
		-0.934502, 0.349188, -0.069094,
		38.946011, 37.432995, 48.912479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.447716, 35.286194, 45.887379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.798267, 35.473194, 45.933693>,  <32.008598, 35.585392, 45.961483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.798267, 35.473194, 45.933693>,  <31.447716, 35.286194, 45.887379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798267, 35.473194, 45.933693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027026, 0.192290, -0.980966,
		-0.480864, 0.862826, 0.155885,
		0.876378, 0.467499, 0.115784,
		32.061180, 35.613445, 45.968430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390818, 35.986546, 45.623241>,  <31.447716, 35.286194, 45.887379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390818, 35.986546, 45.623241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.780510, 35.896515, 45.617401>,  <32.014324, 35.842495, 45.613895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.780510, 35.896515, 45.617401>,  <31.390818, 35.986546, 45.623241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780510, 35.896515, 45.617401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027235, 0.181646, -0.982987,
		0.223902, 0.957259, 0.183095,
		0.974231, -0.225079, -0.014600,
		32.072781, 35.828991, 45.613022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813572, 36.496265, 45.186440>,  <31.390818, 35.986546, 45.623241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813572, 36.496265, 45.186440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.046974, 36.172268, 45.209873>,  <32.187016, 35.977871, 45.223934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.046974, 36.172268, 45.209873>,  <31.813572, 36.496265, 45.186440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046974, 36.172268, 45.209873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205212, 0.077263, -0.975663,
		0.785753, 0.581329, 0.211303,
		0.583507, -0.809992, 0.058586,
		32.222027, 35.929272, 45.227448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380062, 36.694954, 44.783966>,  <31.813572, 36.496265, 45.186440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380062, 36.694954, 44.783966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.387524, 36.297279, 44.826366>,  <32.392002, 36.058674, 44.851807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.387524, 36.297279, 44.826366>,  <32.380062, 36.694954, 44.783966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387524, 36.297279, 44.826366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167241, -0.101426, -0.980685,
		0.985740, 0.036026, 0.164377,
		0.018658, -0.994191, 0.106004,
		32.393120, 35.999023, 44.858170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897591, 36.509876, 44.449692>,  <32.380062, 36.694954, 44.783966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897591, 36.509876, 44.449692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.718506, 36.152798, 44.470318>,  <32.611057, 35.938553, 44.482693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.718506, 36.152798, 44.470318>,  <32.897591, 36.509876, 44.449692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718506, 36.152798, 44.470318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294120, -0.201474, -0.934292,
		0.844424, -0.403123, 0.352760,
		-0.447707, -0.892692, 0.051563,
		32.584194, 35.884991, 44.485786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414848, 35.978859, 44.194664>,  <32.897591, 36.509876, 44.449692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414848, 35.978859, 44.194664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.056232, 35.805950, 44.155968>,  <32.841064, 35.702206, 44.132751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.056232, 35.805950, 44.155968>,  <33.414848, 35.978859, 44.194664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056232, 35.805950, 44.155968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191896, -0.182181, -0.964358,
		0.399242, -0.883148, 0.246283,
		-0.896538, -0.432273, -0.096738,
		32.787270, 35.676270, 44.126945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560696, 35.264889, 43.883659>,  <33.414848, 35.978859, 44.194664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560696, 35.264889, 43.883659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.178406, 35.363926, 43.820049>,  <32.949032, 35.423347, 43.781883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.178406, 35.363926, 43.820049>,  <33.560696, 35.264889, 43.883659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178406, 35.363926, 43.820049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146981, -0.066503, -0.986901,
		-0.254929, -0.966578, 0.027167,
		-0.955724, 0.247597, -0.159022,
		32.891689, 35.438206, 43.772343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352600, 34.905598, 43.285576>,  <33.560696, 35.264889, 43.883659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352600, 34.905598, 43.285576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.085239, 35.202068, 43.310551>,  <32.924824, 35.379951, 43.325535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.085239, 35.202068, 43.310551>,  <33.352600, 34.905598, 43.285576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085239, 35.202068, 43.310551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097830, 0.170812, -0.980435,
		-0.737336, -0.649219, -0.186681,
		-0.668404, 0.741173, 0.062433,
		32.884720, 35.424419, 43.329281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889374, 34.730511, 42.736488>,  <33.352600, 34.905598, 43.285576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889374, 34.730511, 42.736488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.838291, 35.117882, 42.822124>,  <32.807644, 35.350304, 42.873505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.838291, 35.117882, 42.822124>,  <32.889374, 34.730511, 42.736488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838291, 35.117882, 42.822124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013945, 0.217587, -0.975941,
		-0.991714, -0.121646, -0.041291,
		-0.127704, 0.968431, 0.214088,
		32.799980, 35.408409, 42.886353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357803, 34.993202, 42.355354>,  <32.889374, 34.730511, 42.736488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357803, 34.993202, 42.355354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.559505, 35.326595, 42.445717>,  <32.680527, 35.526630, 42.499935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.559505, 35.326595, 42.445717>,  <32.357803, 34.993202, 42.355354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559505, 35.326595, 42.445717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157726, 0.346095, -0.924846,
		-0.849026, 0.430731, 0.305984,
		0.504259, 0.833480, 0.225906,
		32.710785, 35.576641, 42.513489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035103, 35.503696, 41.960819>,  <32.357803, 34.993202, 42.355354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035103, 35.503696, 41.960819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.352573, 35.721466, 42.069401>,  <32.543056, 35.852127, 42.134548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.352573, 35.721466, 42.069401>,  <32.035103, 35.503696, 41.960819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352573, 35.721466, 42.069401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111063, 0.309040, -0.944542,
		-0.598116, 0.779808, 0.184813,
		0.793676, 0.544420, 0.271450,
		32.590675, 35.884792, 42.150837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941193, 36.152042, 41.713837>,  <32.035103, 35.503696, 41.960819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941193, 36.152042, 41.713837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.336803, 36.148678, 41.772842>,  <32.574169, 36.146660, 41.808247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.336803, 36.148678, 41.772842>,  <31.941193, 36.152042, 41.713837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336803, 36.148678, 41.772842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140573, 0.360913, -0.921944,
		-0.045488, 0.932561, 0.358134,
		0.989025, -0.008407, 0.147510,
		32.633511, 36.146156, 41.817097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238865, 36.884678, 41.639198>,  <31.941193, 36.152042, 41.713837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238865, 36.884678, 41.639198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.547859, 36.639381, 41.573223>,  <32.733253, 36.492203, 41.533638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.547859, 36.639381, 41.573223>,  <32.238865, 36.884678, 41.639198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547859, 36.639381, 41.573223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180174, 0.460702, -0.869075,
		0.608941, 0.641627, 0.466374,
		0.772482, -0.613244, -0.164936,
		32.779602, 36.455410, 41.523743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815876, 37.372551, 41.460957>,  <32.238865, 36.884678, 41.639198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815876, 37.372551, 41.460957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.883087, 37.002987, 41.323460>,  <32.923416, 36.781250, 41.240959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.883087, 37.002987, 41.323460>,  <32.815876, 37.372551, 41.460957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883087, 37.002987, 41.323460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109432, 0.364032, -0.924935,
		0.979689, 0.117801, 0.162274,
		0.168031, -0.923907, -0.343747,
		32.933495, 36.725815, 41.220337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546368, 37.294434, 41.771336>,  <32.815876, 37.372551, 41.460957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546368, 37.294434, 41.771336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820530, 37.572281, 41.858715>,  <33.985027, 37.738991, 41.911144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820530, 37.572281, 41.858715>,  <33.546368, 37.294434, 41.771336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820530, 37.572281, 41.858715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282458, -0.022887, 0.959007,
		0.671145, -0.719012, 0.180514,
		0.685406, 0.694620, 0.218451,
		34.026154, 37.780666, 41.924252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898163, 37.073261, 42.439018>,  <33.546368, 37.294434, 41.771336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898163, 37.073261, 42.439018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.922844, 37.468987, 42.386181>,  <33.937653, 37.706421, 42.354477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.922844, 37.468987, 42.386181>,  <33.898163, 37.073261, 42.439018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922844, 37.468987, 42.386181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261286, 0.143741, 0.954499,
		0.963287, -0.024377, 0.267363,
		0.061699, 0.989315, -0.132095,
		33.941353, 37.765781, 42.346554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392082, 37.327648, 42.882084>,  <33.898163, 37.073261, 42.439018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392082, 37.327648, 42.882084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.173504, 37.653358, 42.803753>,  <34.042358, 37.848785, 42.756756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.173504, 37.653358, 42.803753>,  <34.392082, 37.327648, 42.882084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173504, 37.653358, 42.803753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188030, 0.108574, 0.976144,
		0.816114, 0.570231, 0.093779,
		-0.546446, 0.814277, -0.195829,
		34.009571, 37.897640, 42.745003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636162, 37.768436, 43.382000>,  <34.392082, 37.327648, 42.882084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636162, 37.768436, 43.382000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.290405, 37.933388, 43.266914>,  <34.082951, 38.032356, 43.197865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.290405, 37.933388, 43.266914>,  <34.636162, 37.768436, 43.382000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290405, 37.933388, 43.266914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250587, 0.142790, 0.957506,
		0.435934, 0.899755, -0.020090,
		-0.864389, 0.412375, -0.287714,
		34.031090, 38.057098, 43.180599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617218, 38.478909, 43.765984>,  <34.636162, 37.768436, 43.382000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617218, 38.478909, 43.765984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.245964, 38.361755, 43.674084>,  <34.023212, 38.291462, 43.618946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.245964, 38.361755, 43.674084>,  <34.617218, 38.478909, 43.765984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245964, 38.361755, 43.674084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329234, 0.357908, 0.873789,
		-0.173691, 0.886635, -0.428614,
		-0.928136, -0.292884, -0.229745,
		33.967522, 38.273891, 43.605160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275326, 39.044380, 44.065025>,  <34.617218, 38.478909, 43.765984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275326, 39.044380, 44.065025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.018581, 38.742020, 44.013443>,  <33.864532, 38.560604, 43.982494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.018581, 38.742020, 44.013443>,  <34.275326, 39.044380, 44.065025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018581, 38.742020, 44.013443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438108, 0.223472, 0.870702,
		-0.629343, 0.615369, -0.474603,
		-0.641864, -0.755897, -0.128957,
		33.826023, 38.515251, 43.974754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717274, 39.326149, 44.030472>,  <34.275326, 39.044380, 44.065025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717274, 39.326149, 44.030472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.631142, 38.960709, 44.168442>,  <33.579464, 38.741444, 44.251225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.631142, 38.960709, 44.168442>,  <33.717274, 39.326149, 44.030472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631142, 38.960709, 44.168442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462797, 0.406492, 0.787771,
		-0.859915, 0.009999, -0.510340,
		-0.215326, -0.913599, 0.344921,
		33.566544, 38.686630, 44.271919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011414, 39.306988, 44.355042>,  <33.717274, 39.326149, 44.030472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011414, 39.306988, 44.355042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.141396, 38.964134, 44.514900>,  <33.219383, 38.758423, 44.610817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.141396, 38.964134, 44.514900>,  <33.011414, 39.306988, 44.355042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141396, 38.964134, 44.514900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500007, 0.202985, 0.841897,
		-0.802745, -0.473403, -0.362615,
		0.324951, -0.857139, 0.399650,
		33.238880, 38.706993, 44.634796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434959, 38.981365, 44.659630>,  <33.011414, 39.306988, 44.355042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434959, 38.981365, 44.659630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.724434, 38.753845, 44.815960>,  <32.898117, 38.617332, 44.909760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.724434, 38.753845, 44.815960>,  <32.434959, 38.981365, 44.659630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724434, 38.753845, 44.815960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611147, -0.265119, 0.745796,
		-0.320591, -0.778576, -0.539481,
		0.723686, -0.568798, 0.390830,
		32.941540, 38.583206, 44.933208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131866, 38.369019, 44.990116>,  <32.434959, 38.981365, 44.659630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131866, 38.369019, 44.990116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.482037, 38.434307, 45.172096>,  <32.692139, 38.473480, 45.281284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.482037, 38.434307, 45.172096>,  <32.131866, 38.369019, 44.990116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482037, 38.434307, 45.172096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430367, -0.165247, 0.887399,
		0.220018, -0.972653, -0.074419,
		0.875429, 0.163217, 0.454955,
		32.744667, 38.483273, 45.308582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246803, 37.731842, 45.286556>,  <32.131866, 38.369019, 44.990116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246803, 37.731842, 45.286556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.429279, 38.017349, 45.499130>,  <32.538765, 38.188656, 45.626675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.429279, 38.017349, 45.499130>,  <32.246803, 37.731842, 45.286556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429279, 38.017349, 45.499130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272859, -0.456235, 0.846993,
		0.847019, -0.531395, -0.013370,
		0.456187, 0.713771, 0.531436,
		32.566135, 38.231480, 45.658562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525890, 37.409172, 45.854858>,  <32.246803, 37.731842, 45.286556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525890, 37.409172, 45.854858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.510170, 37.795368, 45.957844>,  <32.500736, 38.027084, 46.019634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.510170, 37.795368, 45.957844>,  <32.525890, 37.409172, 45.854858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510170, 37.795368, 45.957844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261275, -0.258629, 0.929972,
		0.964464, -0.030721, 0.262422,
		-0.039300, 0.965488, 0.257465,
		32.498379, 38.085014, 46.035084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936558, 37.445839, 46.426895>,  <32.525890, 37.409172, 45.854858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936558, 37.445839, 46.426895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.720661, 37.781082, 46.458515>,  <32.591122, 37.982227, 46.477486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.720661, 37.781082, 46.458515>,  <32.936558, 37.445839, 46.426895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720661, 37.781082, 46.458515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052806, -0.127422, 0.990442,
		0.840171, 0.530411, 0.113033,
		-0.539744, 0.838110, 0.079048,
		32.558739, 38.032516, 46.482231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253262, 37.835613, 46.933712>,  <32.936558, 37.445839, 46.426895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253262, 37.835613, 46.933712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.888409, 37.999355, 46.925301>,  <32.669498, 38.097603, 46.920254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.888409, 37.999355, 46.925301>,  <33.253262, 37.835613, 46.933712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888409, 37.999355, 46.925301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050730, -0.061828, 0.996797,
		0.406746, 0.910277, 0.077161,
		-0.912132, 0.409357, -0.021030,
		32.614769, 38.122162, 46.918991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614967, 38.437531, 47.343403>,  <33.253262, 37.835613, 46.933712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614967, 38.437531, 47.343403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.995823, 38.517353, 47.436024>,  <34.224335, 38.565247, 47.491596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.995823, 38.517353, 47.436024>,  <33.614967, 38.437531, 47.343403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995823, 38.517353, 47.436024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217484, 0.090037, -0.971902,
		-0.214800, 0.975741, 0.042327,
		0.952135, 0.199559, 0.231548,
		34.281464, 38.577221, 47.505489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752705, 38.975151, 46.880962>,  <33.614967, 38.437531, 47.343403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752705, 38.975151, 46.880962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.099503, 38.811413, 46.994633>,  <34.307583, 38.713169, 47.062836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.099503, 38.811413, 46.994633>,  <33.752705, 38.975151, 46.880962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099503, 38.811413, 46.994633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378683, 0.170529, -0.909681,
		0.323916, 0.896300, 0.302861,
		0.866994, -0.409348, 0.284176,
		34.359600, 38.688610, 47.079887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271248, 39.487804, 46.738338>,  <33.752705, 38.975151, 46.880962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271248, 39.487804, 46.738338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.465145, 39.139660, 46.772968>,  <34.581482, 38.930775, 46.793747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.465145, 39.139660, 46.772968>,  <34.271248, 39.487804, 46.738338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465145, 39.139660, 46.772968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375881, 0.117919, -0.919135,
		0.789771, 0.478086, 0.384313,
		0.484743, -0.870361, 0.086575,
		34.610569, 38.878551, 46.798939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937492, 39.663960, 46.348312>,  <34.271248, 39.487804, 46.738338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937492, 39.663960, 46.348312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944065, 39.267124, 46.398087>,  <34.948009, 39.029022, 46.427952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944065, 39.267124, 46.398087>,  <34.937492, 39.663960, 46.348312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944065, 39.267124, 46.398087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527011, -0.097167, -0.844286,
		0.849700, 0.079448, 0.521247,
		0.016428, -0.992092, 0.124433,
		34.948994, 38.969498, 46.435417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636398, 39.463974, 46.367088>,  <34.937492, 39.663960, 46.348312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636398, 39.463974, 46.367088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.400620, 39.160847, 46.255180>,  <35.259151, 38.978970, 46.188038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.400620, 39.160847, 46.255180>,  <35.636398, 39.463974, 46.367088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400620, 39.160847, 46.255180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541256, -0.113416, -0.833174,
		0.599661, -0.642538, 0.477024,
		-0.589448, -0.757814, -0.279766,
		35.223785, 38.933502, 46.171249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177090, 39.015862, 46.145153>,  <35.636398, 39.463974, 46.367088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177090, 39.015862, 46.145153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.822956, 38.896122, 46.002846>,  <35.610474, 38.824280, 45.917461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.822956, 38.896122, 46.002846>,  <36.177090, 39.015862, 46.145153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822956, 38.896122, 46.002846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431903, -0.246184, -0.867671,
		0.172150, -0.921838, 0.347245,
		-0.885339, -0.299346, -0.355764,
		35.557354, 38.806320, 45.896118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274647, 38.311962, 45.916134>,  <36.177090, 39.015862, 46.145153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274647, 38.311962, 45.916134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.962208, 38.447887, 45.706596>,  <35.774746, 38.529442, 45.580875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.962208, 38.447887, 45.706596>,  <36.274647, 38.311962, 45.916134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962208, 38.447887, 45.706596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505636, -0.148002, -0.849957,
		-0.366361, -0.928773, -0.056220,
		-0.781097, 0.339818, -0.523843,
		35.727879, 38.549831, 45.549442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303673, 37.896130, 45.330208>,  <36.274647, 38.311962, 45.916134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303673, 37.896130, 45.330208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.077839, 38.208637, 45.223732>,  <35.942337, 38.396141, 45.159847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.077839, 38.208637, 45.223732>,  <36.303673, 37.896130, 45.330208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077839, 38.208637, 45.223732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226140, -0.163741, -0.960234,
		-0.793789, -0.602332, -0.084231,
		-0.564588, 0.781271, -0.266187,
		35.908463, 38.443020, 45.143875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015316, 37.778683, 44.736370>,  <36.303673, 37.896130, 45.330208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015316, 37.778683, 44.736370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.972580, 38.176311, 44.744465>,  <35.946938, 38.414890, 44.749321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.972580, 38.176311, 44.744465>,  <36.015316, 37.778683, 44.736370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972580, 38.176311, 44.744465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103526, 0.031368, -0.994132,
		-0.988872, -0.104115, -0.106263,
		-0.106838, 0.994071, 0.020240,
		35.940529, 38.474533, 44.750538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611263, 37.959667, 44.079163>,  <36.015316, 37.778683, 44.736370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611263, 37.959667, 44.079163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.790596, 38.295357, 44.202251>,  <35.898197, 38.496773, 44.276104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.790596, 38.295357, 44.202251>,  <35.611263, 37.959667, 44.079163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790596, 38.295357, 44.202251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204852, 0.238635, -0.949257,
		-0.870075, 0.488624, -0.064929,
		0.448335, 0.839226, 0.307726,
		35.925098, 38.547123, 44.294571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364883, 38.420521, 43.709492>,  <35.611263, 37.959667, 44.079163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364883, 38.420521, 43.709492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.696026, 38.599598, 43.844681>,  <35.894711, 38.707043, 43.925793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.696026, 38.599598, 43.844681>,  <35.364883, 38.420521, 43.709492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696026, 38.599598, 43.844681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039030, 0.555081, -0.830880,
		-0.559580, 0.701041, 0.442054,
		0.827857, 0.447691, 0.337974,
		35.944382, 38.733906, 43.946072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289673, 39.189064, 43.497295>,  <35.364883, 38.420521, 43.709492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289673, 39.189064, 43.497295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.673023, 39.115879, 43.584965>,  <35.903034, 39.071968, 43.637566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.673023, 39.115879, 43.584965>,  <35.289673, 39.189064, 43.497295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673023, 39.115879, 43.584965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273144, 0.364210, -0.890361,
		0.083076, 0.913169, 0.399025,
		0.958379, -0.182959, 0.219170,
		35.960537, 39.060993, 43.650715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718262, 39.790512, 43.341049>,  <35.289673, 39.189064, 43.497295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718262, 39.790512, 43.341049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.982006, 39.489819, 43.336273>,  <36.140255, 39.309402, 43.333408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.982006, 39.489819, 43.336273>,  <35.718262, 39.790512, 43.341049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982006, 39.489819, 43.336273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303814, 0.280939, -0.910368,
		0.687704, 0.596638, 0.413627,
		0.659364, -0.751729, -0.011936,
		36.179813, 39.264301, 43.332691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296822, 40.064720, 42.978649>,  <35.718262, 39.790512, 43.341049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296822, 40.064720, 42.978649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.385796, 39.674759, 42.974880>,  <36.439182, 39.440784, 42.972618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.385796, 39.674759, 42.974880>,  <36.296822, 40.064720, 42.978649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385796, 39.674759, 42.974880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473332, 0.116439, -0.873155,
		0.852336, 0.189764, 0.487353,
		0.222440, -0.974901, -0.009424,
		36.452526, 39.382290, 42.972054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.199799, 40.233330, 31.970850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.194691, 39.903679, 31.744345>,  <29.191626, 39.705891, 31.608440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.194691, 39.903679, 31.744345>,  <29.199799, 40.233330, 31.970850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194691, 39.903679, 31.744345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297064, -0.537615, 0.789128,
		-0.954772, 0.178292, -0.237954,
		-0.012768, -0.824125, -0.566264,
		29.190861, 39.656441, 31.574465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469250, 39.932068, 32.020435>,  <29.199799, 40.233330, 31.970850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469250, 39.932068, 32.020435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.732019, 39.645863, 31.925369>,  <28.889681, 39.474140, 31.868330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.732019, 39.645863, 31.925369>,  <28.469250, 39.932068, 32.020435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732019, 39.645863, 31.925369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211969, -0.477784, 0.852521,
		-0.723547, -0.509663, -0.465535,
		0.656923, -0.715518, -0.237666,
		28.929096, 39.431206, 31.854069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073063, 39.220036, 32.049892>,  <28.469250, 39.932068, 32.020435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073063, 39.220036, 32.049892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.464531, 39.139374, 32.065575>,  <28.699411, 39.090977, 32.074986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.464531, 39.139374, 32.065575>,  <28.073063, 39.220036, 32.049892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464531, 39.139374, 32.065575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161505, -0.637313, 0.753490,
		-0.126960, -0.743751, -0.656289,
		0.978671, -0.201658, 0.039206,
		28.758133, 39.078876, 32.077335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210583, 38.402191, 31.991396>,  <28.073063, 39.220036, 32.049892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210583, 38.402191, 31.991396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.505188, 38.586315, 32.189655>,  <28.681952, 38.696789, 32.308613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.505188, 38.586315, 32.189655>,  <28.210583, 38.402191, 31.991396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505188, 38.586315, 32.189655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097052, -0.653255, 0.750892,
		0.669427, -0.601144, -0.436456,
		0.736511, 0.460308, 0.495649,
		28.726141, 38.724407, 32.338348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598906, 37.743710, 32.259701>,  <28.210583, 38.402191, 31.991396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598906, 37.743710, 32.259701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.741322, 38.042755, 32.483952>,  <28.826771, 38.222183, 32.618504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.741322, 38.042755, 32.483952>,  <28.598906, 37.743710, 32.259701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741322, 38.042755, 32.483952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000696, -0.600157, 0.799882,
		0.934471, -0.284399, -0.214200,
		0.356039, 0.747615, 0.560631,
		28.848133, 38.267040, 32.652142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788124, 37.371193, 32.811100>,  <28.598906, 37.743710, 32.259701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788124, 37.371193, 32.811100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.838285, 37.742702, 32.950619>,  <28.868382, 37.965607, 33.034328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.838285, 37.742702, 32.950619>,  <28.788124, 37.371193, 32.811100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838285, 37.742702, 32.950619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104410, -0.337265, 0.935602,
		0.986597, -0.153744, 0.054679,
		0.125402, 0.928771, 0.348797,
		28.875906, 38.021336, 33.055256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300337, 37.463448, 33.354836>,  <28.788124, 37.371193, 32.811100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300337, 37.463448, 33.354836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.064863, 37.775188, 33.440689>,  <28.923578, 37.962231, 33.492199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.064863, 37.775188, 33.440689>,  <29.300337, 37.463448, 33.354836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064863, 37.775188, 33.440689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219716, -0.409781, 0.885328,
		0.777931, 0.474020, 0.412467,
		-0.588683, 0.779349, 0.214631,
		28.888258, 38.008995, 33.505077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527103, 37.700565, 33.979961>,  <29.300337, 37.463448, 33.354836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527103, 37.700565, 33.979961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.151339, 37.833996, 33.948376>,  <28.925880, 37.914055, 33.929424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.151339, 37.833996, 33.948376>,  <29.527103, 37.700565, 33.979961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151339, 37.833996, 33.948376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198849, -0.342658, 0.918175,
		0.279222, 0.878245, 0.388228,
		-0.939412, 0.333573, -0.078960,
		28.869514, 37.934067, 33.924686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309746, 38.158009, 34.593891>,  <29.527103, 37.700565, 33.979961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309746, 38.158009, 34.593891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972116, 38.032654, 34.419842>,  <28.769539, 37.957439, 34.315411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972116, 38.032654, 34.419842>,  <29.309746, 38.158009, 34.593891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972116, 38.032654, 34.419842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279211, -0.435912, 0.855583,
		-0.457804, 0.843664, 0.280440,
		-0.844072, -0.313387, -0.435122,
		28.718895, 37.938637, 34.289307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721849, 38.275074, 34.977173>,  <29.309746, 38.158009, 34.593891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721849, 38.275074, 34.977173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.628237, 37.949757, 34.764091>,  <28.572069, 37.754566, 34.636242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.628237, 37.949757, 34.764091>,  <28.721849, 38.275074, 34.977173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628237, 37.949757, 34.764091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234836, -0.484409, 0.842733,
		-0.943440, 0.322327, -0.077624,
		-0.234034, -0.813298, -0.532705,
		28.558027, 37.705769, 34.604279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243866, 37.952847, 35.351982>,  <28.721849, 38.275074, 34.977173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243866, 37.952847, 35.351982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.253637, 37.660305, 35.079357>,  <28.259501, 37.484779, 34.915783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.253637, 37.660305, 35.079357>,  <28.243866, 37.952847, 35.351982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253637, 37.660305, 35.079357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400589, -0.631798, 0.663596,
		-0.915932, 0.256814, -0.308407,
		0.024430, -0.731354, -0.681561,
		28.260967, 37.440899, 34.874889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566948, 37.620937, 35.434753>,  <28.243866, 37.952847, 35.351982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566948, 37.620937, 35.434753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819601, 37.350941, 35.282211>,  <27.971191, 37.188942, 35.190685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819601, 37.350941, 35.282211>,  <27.566948, 37.620937, 35.434753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819601, 37.350941, 35.282211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366434, -0.693414, 0.620405,
		-0.683203, -0.252126, -0.685322,
		0.631633, -0.674988, -0.381355,
		28.009090, 37.148445, 35.167805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108030, 37.010281, 35.271839>,  <27.566948, 37.620937, 35.434753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108030, 37.010281, 35.271839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.488064, 36.885601, 35.277279>,  <27.716084, 36.810791, 35.280544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.488064, 36.885601, 35.277279>,  <27.108030, 37.010281, 35.271839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488064, 36.885601, 35.277279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250422, -0.735851, 0.629136,
		-0.186096, -0.601137, -0.777176,
		0.950083, -0.311701, 0.013599,
		27.773088, 36.792091, 35.281357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123756, 36.293953, 35.310917>,  <27.108030, 37.010281, 35.271839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123756, 36.293953, 35.310917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.489510, 36.388695, 35.442249>,  <27.708961, 36.445541, 35.521049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.489510, 36.388695, 35.442249>,  <27.123756, 36.293953, 35.310917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489510, 36.388695, 35.442249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071912, -0.703087, 0.707459,
		0.398412, -0.670500, -0.625858,
		0.914383, 0.236854, 0.328335,
		27.763824, 36.459751, 35.540749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.543858, 35.629375, 35.323486>,  <27.123756, 36.293953, 35.310917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.543858, 35.629375, 35.323486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.706837, 35.896721, 35.572414>,  <27.804625, 36.057129, 35.721771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.706837, 35.896721, 35.572414>,  <27.543858, 35.629375, 35.323486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706837, 35.896721, 35.572414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111624, -0.712787, 0.692441,
		0.906380, -0.212670, -0.365030,
		0.407450, 0.668361, 0.622317,
		27.829071, 36.097229, 35.759109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134327, 35.281097, 35.664673>,  <27.543858, 35.629375, 35.323486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134327, 35.281097, 35.664673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.060423, 35.591007, 35.906528>,  <28.016081, 35.776955, 36.051643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.060423, 35.591007, 35.906528>,  <28.134327, 35.281097, 35.664673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060423, 35.591007, 35.906528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239516, -0.561183, 0.792279,
		0.953151, 0.291201, -0.081887,
		-0.184758, 0.774775, 0.604639,
		28.004995, 35.823441, 36.087921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735239, 35.344936, 36.168400>,  <28.134327, 35.281097, 35.664673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735239, 35.344936, 36.168400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.434517, 35.554901, 36.328026>,  <28.254084, 35.680882, 36.423801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.434517, 35.554901, 36.328026>,  <28.735239, 35.344936, 36.168400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434517, 35.554901, 36.328026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162425, -0.439141, 0.883614,
		0.639068, 0.729124, 0.244889,
		-0.751805, 0.524913, 0.399069,
		28.208975, 35.712376, 36.447746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026182, 35.645477, 36.733219>,  <28.735239, 35.344936, 36.168400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026182, 35.645477, 36.733219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.628738, 35.614388, 36.765957>,  <28.390272, 35.595734, 36.785599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.628738, 35.614388, 36.765957>,  <29.026182, 35.645477, 36.733219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628738, 35.614388, 36.765957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107713, -0.436355, 0.893304,
		-0.033716, 0.896411, 0.441938,
		-0.993610, -0.077721, 0.081843,
		28.330656, 35.591072, 36.790508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287167, 35.036304, 37.019165>,  <29.026182, 35.645477, 36.733219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287167, 35.036304, 37.019165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.673563, 34.994751, 37.113876>,  <29.905401, 34.969818, 37.170704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.673563, 34.994751, 37.113876>,  <29.287167, 35.036304, 37.019165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673563, 34.994751, 37.113876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228134, 0.773442, -0.591390,
		-0.121704, 0.625297, 0.770838,
		0.965993, -0.103880, 0.236783,
		29.963362, 34.963589, 37.184910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541456, 35.728539, 37.278931>,  <29.287167, 35.036304, 37.019165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541456, 35.728539, 37.278931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.844086, 35.508152, 37.138054>,  <30.025663, 35.375919, 37.053528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.844086, 35.508152, 37.138054>,  <29.541456, 35.728539, 37.278931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844086, 35.508152, 37.138054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255822, 0.745050, -0.615999,
		0.601791, 0.375950, 0.704634,
		0.756573, -0.550964, -0.352189,
		30.071058, 35.342861, 37.032398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157660, 36.173946, 37.268158>,  <29.541456, 35.728539, 37.278931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157660, 36.173946, 37.268158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.239834, 35.872066, 37.018929>,  <30.289139, 35.690937, 36.869392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.239834, 35.872066, 37.018929>,  <30.157660, 36.173946, 37.268158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239834, 35.872066, 37.018929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310057, 0.654047, -0.689991,
		0.928256, -0.051437, 0.368367,
		0.205438, -0.754703, -0.623072,
		30.301466, 35.645657, 36.832008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824020, 36.251019, 37.032036>,  <30.157660, 36.173946, 37.268158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824020, 36.251019, 37.032036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.657579, 36.030205, 36.743004>,  <30.557714, 35.897717, 36.569584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.657579, 36.030205, 36.743004>,  <30.824020, 36.251019, 37.032036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657579, 36.030205, 36.743004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340962, 0.641942, -0.686771,
		0.842973, -0.532139, -0.078893,
		-0.416103, -0.552030, -0.722579,
		30.532749, 35.864597, 36.526230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421579, 36.268009, 36.519142>,  <30.824020, 36.251019, 37.032036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421579, 36.268009, 36.519142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.075911, 36.173244, 36.341564>,  <30.868509, 36.116386, 36.235020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.075911, 36.173244, 36.341564>,  <31.421579, 36.268009, 36.519142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075911, 36.173244, 36.341564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115473, 0.765332, -0.633193,
		0.489771, -0.598450, -0.634021,
		-0.864171, -0.236907, -0.443942,
		30.816660, 36.102173, 36.208382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595018, 36.244305, 35.829830>,  <31.421579, 36.268009, 36.519142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595018, 36.244305, 35.829830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.195297, 36.256351, 35.821041>,  <30.955463, 36.263580, 35.815765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.195297, 36.256351, 35.821041>,  <31.595018, 36.244305, 35.829830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195297, 36.256351, 35.821041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036927, 0.718686, -0.694354,
		-0.005116, -0.694683, -0.719298,
		-0.999305, 0.030114, -0.021976,
		30.895506, 36.265385, 35.814449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456984, 36.090092, 35.198200>,  <31.595018, 36.244305, 35.829830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456984, 36.090092, 35.198200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.131704, 36.281136, 35.331223>,  <30.936537, 36.395763, 35.411037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.131704, 36.281136, 35.331223>,  <31.456984, 36.090092, 35.198200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131704, 36.281136, 35.331223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179920, 0.749741, -0.636802,
		-0.553476, -0.458013, -0.695621,
		-0.813199, 0.477611, 0.332558,
		30.887745, 36.424419, 35.430988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071863, 36.330246, 34.637119>,  <31.456984, 36.090092, 35.198200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071863, 36.330246, 34.637119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.932140, 36.583778, 34.913158>,  <30.848307, 36.735897, 35.078781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.932140, 36.583778, 34.913158>,  <31.071863, 36.330246, 34.637119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932140, 36.583778, 34.913158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007748, 0.738423, -0.674294,
		-0.936977, -0.230188, -0.262847,
		-0.349306, 0.633834, 0.690101,
		30.827349, 36.773930, 35.120190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586353, 36.742096, 34.330746>,  <31.071863, 36.330246, 34.637119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586353, 36.742096, 34.330746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.676977, 36.972202, 34.645130>,  <30.731352, 37.110268, 34.833763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.676977, 36.972202, 34.645130>,  <30.586353, 36.742096, 34.330746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676977, 36.972202, 34.645130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173105, 0.817882, -0.548729,
		-0.958491, -0.011733, 0.284881,
		0.226561, 0.575266, 0.785964,
		30.744946, 37.144783, 34.880920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152983, 37.367146, 34.320869>,  <30.586353, 36.742096, 34.330746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152983, 37.367146, 34.320869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.472660, 37.467167, 34.539509>,  <30.664467, 37.527180, 34.670692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.472660, 37.467167, 34.539509>,  <30.152983, 37.367146, 34.320869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472660, 37.467167, 34.539509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024520, 0.895039, -0.445314,
		-0.600576, 0.369294, 0.709176,
		0.799192, 0.250056, 0.546594,
		30.712418, 37.542183, 34.703487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094891, 38.050972, 34.537624>,  <30.152983, 37.367146, 34.320869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094891, 38.050972, 34.537624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.487692, 38.022873, 34.607746>,  <30.723373, 38.006016, 34.649818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.487692, 38.022873, 34.607746>,  <30.094891, 38.050972, 34.537624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487692, 38.022873, 34.607746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137587, 0.901964, -0.409306,
		-0.129368, 0.426060, 0.895397,
		0.982005, -0.070244, 0.175305,
		30.782293, 38.001801, 34.660339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252415, 38.744572, 34.818436>,  <30.094891, 38.050972, 34.537624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252415, 38.744572, 34.818436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.587873, 38.571644, 34.685913>,  <30.789148, 38.467888, 34.606400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.587873, 38.571644, 34.685913>,  <30.252415, 38.744572, 34.818436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587873, 38.571644, 34.685913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294798, 0.871760, -0.391317,
		0.457998, 0.230508, 0.858548,
		0.838649, -0.432321, -0.331310,
		30.839468, 38.441948, 34.586521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681864, 39.176003, 35.084873>,  <30.252415, 38.744572, 34.818436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681864, 39.176003, 35.084873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.871161, 38.992603, 34.783989>,  <30.984737, 38.882565, 34.603458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.871161, 38.992603, 34.783989>,  <30.681864, 39.176003, 35.084873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871161, 38.992603, 34.783989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087111, 0.874052, -0.477959,
		0.876616, 0.160664, 0.453577,
		0.473240, -0.458497, -0.752213,
		31.013132, 38.855053, 34.558327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304428, 39.581741, 34.900429>,  <30.681864, 39.176003, 35.084873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304428, 39.581741, 34.900429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.235058, 39.344090, 34.586246>,  <31.193436, 39.201500, 34.397739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.235058, 39.344090, 34.586246>,  <31.304428, 39.581741, 34.900429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235058, 39.344090, 34.586246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026222, 0.800041, -0.599372,
		0.984498, -0.083348, -0.154325,
		-0.173423, -0.594128, -0.785453,
		31.183031, 39.165852, 34.350609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777645, 39.807762, 34.436798>,  <31.304428, 39.581741, 34.900429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777645, 39.807762, 34.436798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.463966, 39.652287, 34.243324>,  <31.275759, 39.559002, 34.127239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.463966, 39.652287, 34.243324>,  <31.777645, 39.807762, 34.436798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463966, 39.652287, 34.243324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009416, 0.786860, -0.617059,
		0.620440, -0.479342, -0.620713,
		-0.784197, -0.388693, -0.483686,
		31.228706, 39.535679, 34.098217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924570, 39.834332, 33.685673>,  <31.777645, 39.807762, 34.436798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924570, 39.834332, 33.685673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.526386, 39.802010, 33.705807>,  <31.287476, 39.782616, 33.717888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.526386, 39.802010, 33.705807>,  <31.924570, 39.834332, 33.685673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526386, 39.802010, 33.705807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094423, 0.770618, -0.630264,
		0.012135, -0.632154, -0.774748,
		-0.995458, -0.080803, 0.050339,
		31.227749, 39.777767, 33.720909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765265, 40.041389, 33.056335>,  <31.924570, 39.834332, 33.685673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765265, 40.041389, 33.056335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.424622, 40.073051, 33.263603>,  <31.220236, 40.092049, 33.387962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.424622, 40.073051, 33.263603>,  <31.765265, 40.041389, 33.056335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424622, 40.073051, 33.263603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315308, 0.712335, -0.627025,
		-0.418741, -0.697362, -0.581672,
		-0.851608, 0.079155, 0.518167,
		31.169140, 40.096798, 33.419052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138914, 40.071232, 32.512062>,  <31.765265, 40.041389, 33.056335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138914, 40.071232, 32.512062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.981337, 40.226185, 32.845467>,  <30.886791, 40.319157, 33.045509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.981337, 40.226185, 32.845467>,  <31.138914, 40.071232, 32.512062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981337, 40.226185, 32.845467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452951, 0.707265, -0.542782,
		-0.799778, -0.591366, -0.103157,
		-0.393942, 0.387380, 0.833514,
		30.863153, 40.342400, 33.095520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609602, 40.512161, 32.191399>,  <31.138914, 40.071232, 32.512062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609602, 40.512161, 32.191399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.609539, 40.634853, 32.572117>,  <30.609501, 40.708469, 32.800549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.609539, 40.634853, 32.572117>,  <30.609602, 40.512161, 32.191399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609539, 40.634853, 32.572117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421035, 0.863301, -0.278283,
		-0.907044, -0.400783, 0.129010,
		-0.000156, 0.306732, 0.951796,
		30.609491, 40.726871, 32.857655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901070, 40.709484, 32.287762>,  <30.609602, 40.512161, 32.191399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901070, 40.709484, 32.287762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.100752, 40.940830, 32.545841>,  <30.220560, 41.079639, 32.700691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.100752, 40.940830, 32.545841>,  <29.901070, 40.709484, 32.287762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100752, 40.940830, 32.545841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586524, 0.773648, -0.239704,
		-0.637797, -0.258766, 0.725434,
		0.499204, 0.578367, 0.645203,
		30.250513, 41.114342, 32.739403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578814, 41.233242, 32.378353>,  <29.901070, 40.709484, 32.287762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578814, 41.233242, 32.378353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.890186, 41.387466, 32.576500>,  <30.077009, 41.480000, 32.695389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.890186, 41.387466, 32.576500>,  <29.578814, 41.233242, 32.378353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890186, 41.387466, 32.576500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291002, 0.920869, -0.259456,
		-0.556205, 0.057816, 0.829032,
		0.778430, 0.385560, 0.495368,
		30.123716, 41.503136, 32.725109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311903, 41.664642, 32.954983>,  <29.578814, 41.233242, 32.378353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311903, 41.664642, 32.954983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.668674, 41.797581, 32.832340>,  <29.882738, 41.877342, 32.758755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.668674, 41.797581, 32.832340>,  <29.311903, 41.664642, 32.954983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668674, 41.797581, 32.832340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406823, 0.885792, -0.223311,
		0.197370, 0.323911, 0.925271,
		0.891931, 0.332347, -0.306603,
		29.936255, 41.897285, 32.740360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380117, 42.282242, 33.357628>,  <29.311903, 41.664642, 32.954983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380117, 42.282242, 33.357628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.629889, 42.297977, 33.045589>,  <29.779751, 42.307419, 32.858368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.629889, 42.297977, 33.045589>,  <29.380117, 42.282242, 33.357628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629889, 42.297977, 33.045589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222967, 0.966153, -0.129749,
		0.748584, 0.254953, 0.612062,
		0.624426, 0.039342, -0.780093,
		29.817217, 42.309780, 32.811562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634922, 42.889175, 33.496208>,  <29.380117, 42.282242, 33.357628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634922, 42.889175, 33.496208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.714785, 42.839436, 33.107430>,  <29.762703, 42.809593, 32.874165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.714785, 42.839436, 33.107430>,  <29.634922, 42.889175, 33.496208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714785, 42.839436, 33.107430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153021, 0.975788, -0.156275,
		0.967844, 0.179930, 0.175795,
		0.199657, -0.124349, -0.971944,
		29.774681, 42.802132, 32.815845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.496330, 37.718365, 49.568142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.126225, 37.609516, 49.462440>,  <38.904160, 37.544209, 49.399021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.126225, 37.609516, 49.462440>,  <39.496330, 37.718365, 49.568142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126225, 37.609516, 49.462440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290990, 0.062331, 0.954694,
		-0.243321, 0.960242, -0.136857,
		-0.925267, -0.272121, -0.264255,
		38.848644, 37.527882, 49.383163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109364, 38.191933, 49.818176>,  <39.496330, 37.718365, 49.568142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109364, 38.191933, 49.818176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.863548, 37.882324, 49.757210>,  <38.716061, 37.696560, 49.720631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.863548, 37.882324, 49.757210>,  <39.109364, 38.191933, 49.818176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863548, 37.882324, 49.757210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282607, 0.035623, 0.958574,
		-0.736530, 0.632153, -0.240636,
		-0.614538, -0.774025, -0.152413,
		38.679188, 37.650116, 49.711487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371136, 38.347050, 50.123886>,  <39.109364, 38.191933, 49.818176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371136, 38.347050, 50.123886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.336258, 37.951187, 50.078335>,  <38.315331, 37.713669, 50.051006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.336258, 37.951187, 50.078335>,  <38.371136, 38.347050, 50.123886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336258, 37.951187, 50.078335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435028, -0.065007, 0.898067,
		-0.896185, 0.127850, -0.424861,
		-0.087199, -0.989661, -0.113876,
		38.310097, 37.654289, 50.044170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707863, 38.123306, 50.156994>,  <38.371136, 38.347050, 50.123886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707863, 38.123306, 50.156994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.890533, 37.783581, 50.262901>,  <38.000137, 37.579746, 50.326447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.890533, 37.783581, 50.262901>,  <37.707863, 38.123306, 50.156994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890533, 37.783581, 50.262901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622702, -0.092612, 0.776959,
		-0.635364, -0.519695, -0.571165,
		0.456679, -0.849317, 0.264773,
		38.027538, 37.528786, 50.342335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171982, 37.685513, 50.216740>,  <37.707863, 38.123306, 50.156994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171982, 37.685513, 50.216740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.477219, 37.548653, 50.436054>,  <37.660362, 37.466537, 50.567642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.477219, 37.548653, 50.436054>,  <37.171982, 37.685513, 50.216740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477219, 37.548653, 50.436054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635036, -0.239347, 0.734468,
		-0.120063, -0.908653, -0.399919,
		0.763095, -0.342145, 0.548290,
		37.706146, 37.446011, 50.600540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026386, 37.045300, 50.545177>,  <37.171982, 37.685513, 50.216740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026386, 37.045300, 50.545177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.332577, 37.150208, 50.780212>,  <37.516289, 37.213154, 50.921234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.332577, 37.150208, 50.780212>,  <37.026386, 37.045300, 50.545177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332577, 37.150208, 50.780212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557434, -0.185867, 0.809148,
		0.321430, -0.946925, 0.003922,
		0.765473, 0.262271, 0.587592,
		37.562218, 37.228889, 50.956490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026375, 36.569183, 51.184937>,  <37.026386, 37.045300, 50.545177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026375, 36.569183, 51.184937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.273777, 36.868866, 51.279701>,  <37.422218, 37.048676, 51.336559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.273777, 36.868866, 51.279701>,  <37.026375, 36.569183, 51.184937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273777, 36.868866, 51.279701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390702, 0.031629, 0.919973,
		0.681761, -0.661576, 0.312281,
		0.618509, 0.749211, 0.236916,
		37.459332, 37.093628, 51.350777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400764, 36.411621, 51.868092>,  <37.026375, 36.569183, 51.184937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400764, 36.411621, 51.868092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384800, 36.808708, 51.822617>,  <37.375221, 37.046959, 51.795334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384800, 36.808708, 51.822617>,  <37.400764, 36.411621, 51.868092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384800, 36.808708, 51.822617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629372, 0.063393, 0.774514,
		0.776078, 0.102462, 0.622257,
		-0.039911, 0.992715, -0.113685,
		37.372826, 37.106522, 51.788509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480042, 36.720833, 52.598801>,  <37.400764, 36.411621, 51.868092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480042, 36.720833, 52.598801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.308590, 37.011864, 52.384548>,  <37.205719, 37.186481, 52.255997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.308590, 37.011864, 52.384548>,  <37.480042, 36.720833, 52.598801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308590, 37.011864, 52.384548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654789, 0.158331, 0.739042,
		0.622521, 0.667500, 0.408548,
		-0.428625, 0.727582, -0.535636,
		37.180004, 37.230137, 52.223858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405773, 37.187386, 53.068436>,  <37.480042, 36.720833, 52.598801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405773, 37.187386, 53.068436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155937, 37.308708, 52.780575>,  <37.006035, 37.381500, 52.607861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155937, 37.308708, 52.780575>,  <37.405773, 37.187386, 53.068436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155937, 37.308708, 52.780575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670349, 0.264534, 0.693292,
		0.400651, 0.915438, 0.038097,
		-0.624588, 0.303307, -0.719649,
		36.968559, 37.399700, 52.564678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296555, 37.929073, 53.154018>,  <37.405773, 37.187386, 53.068436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296555, 37.929073, 53.154018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.992847, 37.754814, 52.960636>,  <36.810623, 37.650261, 52.844608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.992847, 37.754814, 52.960636>,  <37.296555, 37.929073, 53.154018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992847, 37.754814, 52.960636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619741, 0.257346, 0.741413,
		-0.198578, 0.862547, -0.465382,
		-0.759268, -0.435645, -0.483452,
		36.765068, 37.624123, 52.815601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751205, 38.344921, 53.357780>,  <37.296555, 37.929073, 53.154018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751205, 38.344921, 53.357780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.548653, 38.023945, 53.231495>,  <36.427120, 37.831360, 53.155724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.548653, 38.023945, 53.231495>,  <36.751205, 38.344921, 53.357780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548653, 38.023945, 53.231495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697776, 0.166190, 0.696771,
		-0.506645, 0.573130, -0.644075,
		-0.506379, -0.802436, -0.315716,
		36.396740, 37.783215, 53.136780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880550, 38.529922, 53.252018>,  <36.751205, 38.344921, 53.357780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880550, 38.529922, 53.252018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.964314, 38.140724, 53.290859>,  <36.014572, 37.907204, 53.314163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.964314, 38.140724, 53.290859>,  <35.880550, 38.529922, 53.252018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964314, 38.140724, 53.290859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568104, -0.040236, 0.821973,
		-0.795869, -0.227292, -0.561188,
		0.209408, -0.972995, 0.097103,
		36.027138, 37.848827, 53.319988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301804, 38.168556, 53.261532>,  <35.880550, 38.529922, 53.252018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301804, 38.168556, 53.261532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569695, 37.967361, 53.480061>,  <35.730427, 37.846645, 53.611179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569695, 37.967361, 53.480061>,  <35.301804, 38.168556, 53.261532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569695, 37.967361, 53.480061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694564, -0.163951, 0.700500,
		-0.262776, -0.848598, -0.459162,
		0.669723, -0.502993, 0.546324,
		35.770611, 37.816463, 53.643959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642269, 37.861691, 53.261204>,  <35.301804, 38.168556, 53.261532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642269, 37.861691, 53.261204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.295395, 38.044765, 53.182709>,  <34.087269, 38.154610, 53.135612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.295395, 38.044765, 53.182709>,  <34.642269, 37.861691, 53.261204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295395, 38.044765, 53.182709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117252, -0.195333, -0.973703,
		-0.483988, -0.867389, 0.115725,
		-0.867184, 0.457691, -0.196242,
		34.035240, 38.182072, 53.123837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175251, 37.441383, 52.910851>,  <34.642269, 37.861691, 53.261204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175251, 37.441383, 52.910851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077068, 37.818428, 52.820312>,  <34.018158, 38.044655, 52.765991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077068, 37.818428, 52.820312>,  <34.175251, 37.441383, 52.910851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077068, 37.818428, 52.820312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116192, -0.203194, -0.972220,
		-0.962419, -0.264937, -0.059649,
		-0.245457, 0.942614, -0.226341,
		34.003429, 38.101212, 52.752411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633457, 37.469433, 52.427879>,  <34.175251, 37.441383, 52.910851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633457, 37.469433, 52.427879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844048, 37.806515, 52.382851>,  <33.970402, 38.008762, 52.355835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844048, 37.806515, 52.382851>,  <33.633457, 37.469433, 52.427879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844048, 37.806515, 52.382851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030673, -0.113493, -0.993065,
		-0.849634, 0.526282, -0.033903,
		0.526480, 0.842702, -0.112570,
		34.001991, 38.059326, 52.349079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351448, 37.650814, 51.795788>,  <33.633457, 37.469433, 52.427879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351448, 37.650814, 51.795788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676826, 37.882095, 51.821030>,  <33.872055, 38.020863, 51.836174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676826, 37.882095, 51.821030>,  <33.351448, 37.650814, 51.795788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676826, 37.882095, 51.821030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021133, 0.079048, -0.996647,
		-0.581251, 0.812056, 0.052082,
		0.813450, 0.578201, 0.063109,
		33.920860, 38.055557, 51.839962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198204, 38.232941, 51.373920>,  <33.351448, 37.650814, 51.795788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198204, 38.232941, 51.373920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.596714, 38.248409, 51.404774>,  <33.835819, 38.257690, 51.423286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.596714, 38.248409, 51.404774>,  <33.198204, 38.232941, 51.373920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596714, 38.248409, 51.404774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065850, 0.236885, -0.969303,
		-0.055755, 0.970768, 0.233455,
		0.996271, 0.038670, 0.077133,
		33.895596, 38.260010, 51.427914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415817, 38.906265, 51.039188>,  <33.198204, 38.232941, 51.373920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415817, 38.906265, 51.039188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721703, 38.648808, 51.051357>,  <33.905235, 38.494331, 51.058659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721703, 38.648808, 51.051357>,  <33.415817, 38.906265, 51.039188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721703, 38.648808, 51.051357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216627, 0.212334, -0.952883,
		0.606860, 0.735278, 0.301807,
		0.764718, -0.643647, 0.030423,
		33.951118, 38.455715, 51.060486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026131, 39.219715, 50.729179>,  <33.415817, 38.906265, 51.039188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026131, 39.219715, 50.729179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.123192, 38.831730, 50.722267>,  <34.181427, 38.598938, 50.718121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.123192, 38.831730, 50.722267>,  <34.026131, 39.219715, 50.729179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123192, 38.831730, 50.722267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269411, 0.084491, -0.959312,
		0.931954, 0.228123, 0.281820,
		0.242652, -0.969959, -0.017283,
		34.195988, 38.540741, 50.717083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642330, 39.212532, 50.455612>,  <34.026131, 39.219715, 50.729179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642330, 39.212532, 50.455612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518501, 38.834785, 50.411190>,  <34.444202, 38.608139, 50.384537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518501, 38.834785, 50.411190>,  <34.642330, 39.212532, 50.455612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518501, 38.834785, 50.411190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326483, 0.004126, -0.945194,
		0.893069, -0.328865, 0.307042,
		-0.309575, -0.944368, -0.111053,
		34.425629, 38.551476, 50.377872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061020, 38.922386, 50.070934>,  <34.642330, 39.212532, 50.455612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061020, 38.922386, 50.070934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.751945, 38.669647, 50.046505>,  <34.566502, 38.518005, 50.031845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.751945, 38.669647, 50.046505>,  <35.061020, 38.922386, 50.070934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751945, 38.669647, 50.046505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178929, -0.124472, -0.975957,
		0.609049, -0.765037, 0.209232,
		-0.772686, -0.631843, -0.061078,
		34.520138, 38.480095, 50.028183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299747, 38.415398, 49.732746>,  <35.061020, 38.922386, 50.070934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299747, 38.415398, 49.732746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.901985, 38.392822, 49.697021>,  <34.663330, 38.379276, 49.675587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.901985, 38.392822, 49.697021>,  <35.299747, 38.415398, 49.732746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901985, 38.392822, 49.697021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096197, -0.134098, -0.986288,
		0.043684, -0.989360, 0.138777,
		-0.994403, -0.056435, -0.089315,
		34.603664, 38.375893, 49.670227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146416, 37.745823, 49.402908>,  <35.299747, 38.415398, 49.732746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146416, 37.745823, 49.402908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.857742, 38.016624, 49.345184>,  <34.684536, 38.179108, 49.310551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.857742, 38.016624, 49.345184>,  <35.146416, 37.745823, 49.402908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857742, 38.016624, 49.345184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005423, -0.202941, -0.979176,
		-0.692198, -0.707442, 0.142789,
		-0.721688, 0.677009, -0.144312,
		34.641235, 38.219727, 49.301891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018501, 37.679394, 48.680389>,  <35.146416, 37.745823, 49.402908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018501, 37.679394, 48.680389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789570, 38.005245, 48.717941>,  <34.652210, 38.200756, 48.740471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789570, 38.005245, 48.717941>,  <35.018501, 37.679394, 48.680389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789570, 38.005245, 48.717941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100958, 0.043615, -0.993934,
		-0.813786, -0.578335, 0.057282,
		-0.572328, 0.814633, 0.093881,
		34.617870, 38.249634, 48.746105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381035, 37.562023, 48.322746>,  <35.018501, 37.679394, 48.680389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381035, 37.562023, 48.322746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.443569, 37.955944, 48.353001>,  <34.481091, 38.192295, 48.371155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.443569, 37.955944, 48.353001>,  <34.381035, 37.562023, 48.322746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443569, 37.955944, 48.353001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043672, 0.083394, -0.995559,
		-0.986738, 0.152342, 0.056046,
		0.156339, 0.984803, 0.075635,
		34.490471, 38.251385, 48.375690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796749, 37.865349, 47.854748>,  <34.381035, 37.562023, 48.322746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796749, 37.865349, 47.854748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.091774, 38.132633, 47.893726>,  <34.268787, 38.293003, 47.917114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.091774, 38.132633, 47.893726>,  <33.796749, 37.865349, 47.854748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091774, 38.132633, 47.893726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027936, 0.113996, -0.993088,
		-0.674702, 0.735186, 0.065412,
		0.737561, 0.668211, 0.097451,
		34.313042, 38.333096, 47.922962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032257, 38.124447, 47.690788>,  <33.796749, 37.865349, 47.854748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032257, 38.124447, 47.690788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.682468, 38.182217, 47.505558>,  <32.472595, 38.216881, 47.394421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.682468, 38.182217, 47.505558>,  <33.032257, 38.124447, 47.690788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682468, 38.182217, 47.505558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474891, -0.060349, 0.877973,
		0.098858, 0.987673, 0.121362,
		-0.874474, 0.144429, -0.463071,
		32.420128, 38.225544, 47.366638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701008, 38.675102, 48.006336>,  <33.032257, 38.124447, 47.690788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701008, 38.675102, 48.006336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.406738, 38.459713, 47.841984>,  <32.230175, 38.330479, 47.743374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.406738, 38.459713, 47.841984>,  <32.701008, 38.675102, 48.006336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406738, 38.459713, 47.841984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409114, -0.130197, 0.903147,
		-0.539818, 0.832522, -0.124514,
		-0.735678, -0.538475, -0.410879,
		32.186035, 38.298172, 47.718719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100174, 38.808456, 48.429169>,  <32.701008, 38.675102, 48.006336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100174, 38.808456, 48.429169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.016811, 38.463379, 48.244850>,  <31.966795, 38.256332, 48.134258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.016811, 38.463379, 48.244850>,  <32.100174, 38.808456, 48.429169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016811, 38.463379, 48.244850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547310, -0.287599, 0.785963,
		-0.810568, 0.415996, -0.412222,
		-0.208403, -0.862690, -0.460797,
		31.954290, 38.204571, 48.106609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348175, 38.650208, 48.547451>,  <32.100174, 38.808456, 48.429169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348175, 38.650208, 48.547451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.547733, 38.308990, 48.486237>,  <31.667469, 38.104259, 48.449509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.547733, 38.308990, 48.486237>,  <31.348175, 38.650208, 48.547451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547733, 38.308990, 48.486237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420998, -0.392890, 0.817556,
		-0.757537, -0.343447, -0.555141,
		0.498896, -0.853043, -0.153038,
		31.697403, 38.053078, 48.440327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846762, 38.206741, 48.633709>,  <31.348175, 38.650208, 48.547451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846762, 38.206741, 48.633709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.182667, 37.992413, 48.668808>,  <31.384209, 37.863815, 48.689869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.182667, 37.992413, 48.668808>,  <30.846762, 38.206741, 48.633709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182667, 37.992413, 48.668808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380462, -0.465407, 0.799153,
		-0.387359, -0.704484, -0.594689,
		0.839763, -0.535815, 0.087749,
		31.434595, 37.831669, 48.695133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597708, 37.560192, 48.822636>,  <30.846762, 38.206741, 48.633709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597708, 37.560192, 48.822636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.979828, 37.568760, 48.940578>,  <31.209101, 37.573898, 49.011345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.979828, 37.568760, 48.940578>,  <30.597708, 37.560192, 48.822636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979828, 37.568760, 48.940578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265150, -0.379045, 0.886578,
		0.130755, -0.925130, -0.356423,
		0.955300, 0.021418, 0.294860,
		31.266418, 37.575184, 49.029037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704699, 36.943459, 49.111267>,  <30.597708, 37.560192, 48.822636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704699, 36.943459, 49.111267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.006968, 37.155838, 49.264656>,  <31.188330, 37.283268, 49.356689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.006968, 37.155838, 49.264656>,  <30.704699, 36.943459, 49.111267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006968, 37.155838, 49.264656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216333, -0.350287, 0.911317,
		0.618189, -0.771615, -0.149840,
		0.755673, 0.530951, 0.383469,
		31.233669, 37.315125, 49.379696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364674, 36.599854, 48.774128>,  <30.704699, 36.943459, 49.111267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364674, 36.599854, 48.774128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.381126, 36.201935, 48.736851>,  <31.390999, 35.963184, 48.714485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.381126, 36.201935, 48.736851>,  <31.364674, 36.599854, 48.774128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381126, 36.201935, 48.736851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531851, 0.100761, -0.840822,
		0.845838, -0.014981, 0.533229,
		0.041132, -0.994798, -0.093196,
		31.393467, 35.903496, 48.708893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086369, 36.460880, 48.698929>,  <31.364674, 36.599854, 48.774128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086369, 36.460880, 48.698929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.876085, 36.151585, 48.557091>,  <31.749916, 35.966007, 48.471989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.876085, 36.151585, 48.557091>,  <32.086369, 36.460880, 48.698929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876085, 36.151585, 48.557091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479453, 0.074994, -0.874357,
		0.702678, -0.629667, 0.331306,
		-0.525708, -0.773237, -0.354593,
		31.718372, 35.919613, 48.450714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537209, 36.251999, 48.259529>,  <32.086369, 36.460880, 48.698929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537209, 36.251999, 48.259529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.217426, 36.053795, 48.123680>,  <32.025558, 35.934872, 48.042171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.217426, 36.053795, 48.123680>,  <32.537209, 36.251999, 48.259529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217426, 36.053795, 48.123680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397511, -0.012488, -0.917513,
		0.450393, -0.868514, 0.206953,
		-0.799457, -0.495507, -0.339619,
		31.977589, 35.905144, 48.021793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816456, 35.703201, 47.844307>,  <32.537209, 36.251999, 48.259529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816456, 35.703201, 47.844307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.435818, 35.705669, 47.721390>,  <32.207436, 35.707150, 47.647636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.435818, 35.705669, 47.721390>,  <32.816456, 35.703201, 47.844307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435818, 35.705669, 47.721390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306249, -0.065885, -0.949669,
		-0.026099, -0.997808, 0.060808,
		-0.951593, 0.006163, -0.307297,
		32.150341, 35.707520, 47.629200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695358, 35.080769, 47.400360>,  <32.816456, 35.703201, 47.844307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695358, 35.080769, 47.400360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432568, 35.367008, 47.305450>,  <32.274891, 35.538750, 47.248505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432568, 35.367008, 47.305450>,  <32.695358, 35.080769, 47.400360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432568, 35.367008, 47.305450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228765, -0.110658, -0.967172,
		-0.718361, -0.689692, -0.091004,
		-0.656981, 0.715597, -0.237270,
		32.235474, 35.581688, 47.234268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164520, 34.823540, 46.900227>,  <32.695358, 35.080769, 47.400360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164520, 34.823540, 46.900227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.150562, 35.221382, 46.861141>,  <32.142185, 35.460087, 46.837692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.150562, 35.221382, 46.861141>,  <32.164520, 34.823540, 46.900227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150562, 35.221382, 46.861141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074305, -0.094917, -0.992708,
		-0.996625, -0.041903, -0.070591,
		-0.034897, 0.994603, -0.097710,
		32.140095, 35.519764, 46.831829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870890, 34.869213, 46.325146>,  <32.164520, 34.823540, 46.900227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870890, 34.869213, 46.325146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.036427, 35.232506, 46.349957>,  <32.135750, 35.450481, 46.364841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.036427, 35.232506, 46.349957>,  <31.870890, 34.869213, 46.325146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036427, 35.232506, 46.349957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064885, 0.038536, -0.997148,
		-0.908034, 0.416685, -0.042983,
		0.413840, 0.908234, 0.062028,
		32.160580, 35.504974, 46.368565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.014477, 35.349049, 52.227505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.662521, 35.200584, 52.108822>,  <34.451347, 35.111507, 52.037613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.662521, 35.200584, 52.108822>,  <35.014477, 35.349049, 52.227505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662521, 35.200584, 52.108822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141450, -0.800697, 0.582131,
		-0.453636, 0.470241, 0.757025,
		-0.879890, -0.371157, -0.296709,
		34.398556, 35.089237, 52.019810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656536, 35.419563, 51.495289>,  <35.014477, 35.349049, 52.227505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656536, 35.419563, 51.495289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.026299, 35.551380, 51.572109>,  <35.248154, 35.630470, 51.618202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.026299, 35.551380, 51.572109>,  <34.656536, 35.419563, 51.495289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026299, 35.551380, 51.572109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243728, -0.123033, -0.962008,
		-0.293389, 0.936092, -0.194050,
		0.924402, 0.329538, 0.192055,
		35.303619, 35.650242, 51.629726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884834, 35.815468, 50.970627>,  <34.656536, 35.419563, 51.495289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884834, 35.815468, 50.970627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.248943, 35.753212, 51.124081>,  <35.467411, 35.715858, 51.216152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.248943, 35.753212, 51.124081>,  <34.884834, 35.815468, 50.970627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248943, 35.753212, 51.124081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376604, -0.073565, -0.923449,
		0.171944, 0.985071, -0.008351,
		0.910277, -0.155636, 0.383631,
		35.522026, 35.706520, 51.239170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331928, 36.200142, 50.562889>,  <34.884834, 35.815468, 50.970627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331928, 36.200142, 50.562889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.562927, 35.927334, 50.742374>,  <35.701527, 35.763649, 50.850067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.562927, 35.927334, 50.742374>,  <35.331928, 36.200142, 50.562889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562927, 35.927334, 50.742374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409804, -0.233191, -0.881863,
		0.706082, 0.693162, 0.144825,
		0.577502, -0.682018, 0.448713,
		35.736179, 35.722729, 50.876987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010914, 36.293003, 50.285152>,  <35.331928, 36.200142, 50.562889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010914, 36.293003, 50.285152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.978676, 35.922710, 50.432945>,  <35.959332, 35.700535, 50.521622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.978676, 35.922710, 50.432945>,  <36.010914, 36.293003, 50.285152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978676, 35.922710, 50.432945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350939, -0.373310, -0.858767,
		0.932923, 0.060453, 0.354964,
		-0.080596, -0.925735, 0.369485,
		35.954498, 35.644989, 50.543793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722767, 36.040916, 50.254627>,  <36.010914, 36.293003, 50.285152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722767, 36.040916, 50.254627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.447807, 35.750423, 50.251465>,  <36.282833, 35.576126, 50.249569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.447807, 35.750423, 50.251465>,  <36.722767, 36.040916, 50.254627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447807, 35.750423, 50.251465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424582, -0.392997, -0.815649,
		0.589247, -0.564034, 0.578493,
		-0.687400, -0.726237, -0.007906,
		36.241589, 35.532551, 50.249092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277206, 35.656788, 50.146580>,  <36.722767, 36.040916, 50.254627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277206, 35.656788, 50.146580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.930561, 35.467556, 50.083111>,  <36.722572, 35.354015, 50.045029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.930561, 35.467556, 50.083111>,  <37.277206, 35.656788, 50.146580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930561, 35.467556, 50.083111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423398, -0.528898, -0.735528,
		0.264039, -0.704601, 0.658651,
		-0.866613, -0.473080, -0.158677,
		36.670578, 35.325634, 50.035507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369072, 34.903854, 50.012383>,  <37.277206, 35.656788, 50.146580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369072, 34.903854, 50.012383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.022335, 35.016590, 49.847870>,  <36.814293, 35.084232, 49.749161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.022335, 35.016590, 49.847870>,  <37.369072, 34.903854, 50.012383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022335, 35.016590, 49.847870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322060, -0.313203, -0.893410,
		-0.380614, -0.906902, 0.180728,
		-0.866840, 0.281839, -0.411287,
		36.762283, 35.101143, 49.724483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370049, 34.415482, 49.489056>,  <37.369072, 34.903854, 50.012383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370049, 34.415482, 49.489056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.092319, 34.691017, 49.405704>,  <36.925682, 34.856339, 49.355694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.092319, 34.691017, 49.405704>,  <37.370049, 34.415482, 49.489056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092319, 34.691017, 49.405704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080232, -0.213653, -0.973609,
		-0.715177, -0.692718, 0.093078,
		-0.694323, 0.688835, -0.208378,
		36.884022, 34.897667, 49.343189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951370, 34.089081, 49.082458>,  <37.370049, 34.415482, 49.489056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951370, 34.089081, 49.082458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.915794, 34.472927, 48.975704>,  <36.894447, 34.703236, 48.911652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.915794, 34.472927, 48.975704>,  <36.951370, 34.089081, 49.082458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915794, 34.472927, 48.975704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076927, -0.260528, -0.962397,
		-0.993062, -0.106124, -0.050650,
		-0.088938, 0.959616, -0.266884,
		36.889114, 34.760811, 48.895638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523438, 34.153587, 48.420723>,  <36.951370, 34.089081, 49.082458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523438, 34.153587, 48.420723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.718845, 34.501347, 48.450375>,  <36.836090, 34.710003, 48.468166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.718845, 34.501347, 48.450375>,  <36.523438, 34.153587, 48.420723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718845, 34.501347, 48.450375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030017, 0.068162, -0.997222,
		-0.872037, 0.489387, 0.007202,
		0.488519, 0.869399, 0.074129,
		36.865402, 34.762165, 48.472614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120422, 34.513908, 48.041775>,  <36.523438, 34.153587, 48.420723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120422, 34.513908, 48.041775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.486195, 34.675705, 48.036102>,  <36.705658, 34.772781, 48.032700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.486195, 34.675705, 48.036102>,  <36.120422, 34.513908, 48.041775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486195, 34.675705, 48.036102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001162, -0.032420, -0.999474,
		-0.404736, 0.913968, -0.029176,
		0.914433, 0.404489, -0.014184,
		36.760525, 34.797050, 48.031849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408539, 34.721169, 48.034023>,  <36.120422, 34.513908, 48.041775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408539, 34.721169, 48.034023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.187973, 34.438133, 47.857265>,  <35.055634, 34.268314, 47.751213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.187973, 34.438133, 47.857265>,  <35.408539, 34.721169, 48.034023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187973, 34.438133, 47.857265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583264, -0.051719, 0.810634,
		-0.596447, 0.704732, -0.384191,
		-0.551410, -0.707586, -0.441893,
		35.022549, 34.225857, 47.724697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703213, 34.955833, 48.166153>,  <35.408539, 34.721169, 48.034023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703213, 34.955833, 48.166153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.717484, 34.559925, 48.110889>,  <34.726044, 34.322380, 48.077732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.717484, 34.559925, 48.110889>,  <34.703213, 34.955833, 48.166153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717484, 34.559925, 48.110889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410347, -0.140566, 0.901031,
		-0.911232, 0.024551, -0.411162,
		0.035674, -0.989767, -0.138163,
		34.728188, 34.262997, 48.069439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061619, 34.786041, 48.288116>,  <34.703213, 34.955833, 48.166153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061619, 34.786041, 48.288116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.217907, 34.417889, 48.294304>,  <34.311680, 34.196999, 48.298016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.217907, 34.417889, 48.294304>,  <34.061619, 34.786041, 48.288116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217907, 34.417889, 48.294304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502413, -0.199146, 0.841381,
		-0.771311, -0.336512, -0.540222,
		0.390718, -0.920380, 0.015465,
		34.335121, 34.141773, 48.298943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497002, 34.398827, 48.504368>,  <34.061619, 34.786041, 48.288116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497002, 34.398827, 48.504368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.820370, 34.172714, 48.570000>,  <34.014389, 34.037048, 48.609379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.820370, 34.172714, 48.570000>,  <33.497002, 34.398827, 48.504368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820370, 34.172714, 48.570000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348131, -0.234413, 0.907665,
		-0.474621, -0.790892, -0.386294,
		0.808418, -0.565278, 0.164077,
		34.062897, 34.003132, 48.619225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268833, 33.739990, 48.605415>,  <33.497002, 34.398827, 48.504368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268833, 33.739990, 48.605415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.624882, 33.770409, 48.785149>,  <33.838509, 33.788658, 48.892990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.624882, 33.770409, 48.785149>,  <33.268833, 33.739990, 48.605415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624882, 33.770409, 48.785149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401456, -0.335798, 0.852099,
		0.215686, -0.938859, -0.268371,
		0.890119, 0.076047, 0.449337,
		33.891918, 33.793224, 48.919949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228043, 33.162548, 49.044083>,  <33.268833, 33.739990, 48.605415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228043, 33.162548, 49.044083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.530270, 33.385952, 49.181007>,  <33.711605, 33.519997, 49.263161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.530270, 33.385952, 49.181007>,  <33.228043, 33.162548, 49.044083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530270, 33.385952, 49.181007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418836, 0.010097, 0.908006,
		0.503678, -0.829433, 0.241555,
		0.755569, 0.558515, 0.342311,
		33.756939, 33.553505, 49.283699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448257, 32.849499, 49.693146>,  <33.228043, 33.162548, 49.044083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448257, 32.849499, 49.693146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.587933, 33.223885, 49.711220>,  <33.671738, 33.448517, 49.722065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.587933, 33.223885, 49.711220>,  <33.448257, 32.849499, 49.693146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587933, 33.223885, 49.711220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085609, -0.016153, 0.996198,
		0.933133, -0.351731, 0.074487,
		0.349190, 0.935962, 0.045184,
		33.692688, 33.504673, 49.724773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772575, 32.804768, 50.279617>,  <33.448257, 32.849499, 49.693146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772575, 32.804768, 50.279617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.717056, 33.197239, 50.225918>,  <33.683746, 33.432720, 50.193699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.717056, 33.197239, 50.225918>,  <33.772575, 32.804768, 50.279617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717056, 33.197239, 50.225918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116713, 0.118413, 0.986081,
		0.983419, 0.152534, 0.098081,
		-0.138797, 0.981179, -0.134252,
		33.675419, 33.491592, 50.185642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003819, 33.027752, 50.848721>,  <33.772575, 32.804768, 50.279617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003819, 33.027752, 50.848721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.769096, 33.326931, 50.724632>,  <33.628265, 33.506439, 50.650181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.769096, 33.326931, 50.724632>,  <34.003819, 33.027752, 50.848721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769096, 33.326931, 50.724632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365992, 0.096751, 0.925575,
		0.722296, 0.656668, 0.216969,
		-0.586803, 0.747948, -0.310218,
		33.593056, 33.551315, 50.631565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867447, 33.378464, 51.449207>,  <34.003819, 33.027752, 50.848721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867447, 33.378464, 51.449207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.604565, 33.541790, 51.195797>,  <33.446835, 33.639786, 51.043751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.604565, 33.541790, 51.195797>,  <33.867447, 33.378464, 51.449207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604565, 33.541790, 51.195797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601737, 0.221899, 0.767250,
		0.453858, 0.885460, 0.099864,
		-0.657210, 0.408314, -0.633525,
		33.407402, 33.664284, 51.005741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713387, 34.121037, 51.688599>,  <33.867447, 33.378464, 51.449207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713387, 34.121037, 51.688599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.408203, 33.982723, 51.470119>,  <33.225094, 33.899734, 51.339031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.408203, 33.982723, 51.470119>,  <33.713387, 34.121037, 51.688599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408203, 33.982723, 51.470119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628489, 0.198995, 0.751932,
		-0.151316, 0.916970, -0.369146,
		-0.762958, -0.345784, -0.546195,
		33.179317, 33.878986, 51.306259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229706, 34.607277, 51.779270>,  <33.713387, 34.121037, 51.688599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229706, 34.607277, 51.779270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.999172, 34.319851, 51.623581>,  <32.860851, 34.147396, 51.530167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.999172, 34.319851, 51.623581>,  <33.229706, 34.607277, 51.779270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999172, 34.319851, 51.623581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759353, 0.294867, 0.580031,
		-0.302021, 0.629854, -0.715589,
		-0.576338, -0.718566, -0.389226,
		32.826271, 34.104282, 51.506813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637482, 34.902180, 51.530651>,  <33.229706, 34.607277, 51.779270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637482, 34.902180, 51.530651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.542324, 34.518425, 51.591290>,  <32.485229, 34.288174, 51.627674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.542324, 34.518425, 51.591290>,  <32.637482, 34.902180, 51.530651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542324, 34.518425, 51.591290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821162, 0.282015, 0.496145,
		-0.518748, -0.006454, -0.854903,
		-0.237894, -0.959388, 0.151595,
		32.470955, 34.230610, 51.636768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879597, 34.735699, 51.242210>,  <32.637482, 34.902180, 51.530651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879597, 34.735699, 51.242210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.972677, 34.463093, 51.519737>,  <32.028526, 34.299530, 51.686253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.972677, 34.463093, 51.519737>,  <31.879597, 34.735699, 51.242210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972677, 34.463093, 51.519737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889357, 0.139582, 0.435386,
		-0.393567, -0.718368, -0.573631,
		0.232699, -0.681516, 0.693820,
		32.042488, 34.258636, 51.727882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923952, 34.751678, 50.559643>,  <31.879597, 34.735699, 51.242210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923952, 34.751678, 50.559643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.547049, 34.764145, 50.693012>,  <31.320906, 34.771626, 50.773033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.547049, 34.764145, 50.693012>,  <31.923952, 34.751678, 50.559643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547049, 34.764145, 50.693012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326031, 0.141986, -0.934636,
		-0.076475, -0.989378, -0.123625,
		-0.942261, 0.031171, 0.333427,
		31.264370, 34.773495, 50.793041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552240, 34.176826, 50.234657>,  <31.923952, 34.751678, 50.559643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552240, 34.176826, 50.234657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.306057, 34.467762, 50.356110>,  <31.158346, 34.642323, 50.428982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.306057, 34.467762, 50.356110>,  <31.552240, 34.176826, 50.234657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306057, 34.467762, 50.356110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419227, 0.024121, -0.907561,
		-0.667428, -0.685855, 0.290074,
		-0.615458, 0.727338, 0.303628,
		31.121420, 34.685963, 50.447197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914595, 33.968117, 49.875607>,  <31.552240, 34.176826, 50.234657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914595, 33.968117, 49.875607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.861567, 34.353409, 49.969086>,  <30.829750, 34.584583, 50.025173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.861567, 34.353409, 49.969086>,  <30.914595, 33.968117, 49.875607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861567, 34.353409, 49.969086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290432, 0.187676, -0.938311,
		-0.947668, -0.192266, 0.254872,
		-0.132572, 0.963230, 0.233694,
		30.821795, 34.642376, 50.039192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323444, 34.153053, 49.519485>,  <30.914595, 33.968117, 49.875607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323444, 34.153053, 49.519485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.514439, 34.488983, 49.622795>,  <30.629036, 34.690540, 49.684780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.514439, 34.488983, 49.622795>,  <30.323444, 34.153053, 49.519485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514439, 34.488983, 49.622795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372660, 0.459765, -0.806065,
		-0.795696, 0.288637, 0.532500,
		0.477485, 0.839824, 0.258270,
		30.657684, 34.740929, 49.700275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909952, 34.882267, 49.636936>,  <30.323444, 34.153053, 49.519485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909952, 34.882267, 49.636936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.280382, 34.976059, 49.518677>,  <30.502640, 35.032333, 49.447723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.280382, 34.976059, 49.518677>,  <29.909952, 34.882267, 49.636936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280382, 34.976059, 49.518677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376152, 0.511515, -0.772569,
		-0.029924, 0.826663, 0.561901,
		0.926075, 0.234478, -0.295644,
		30.558205, 35.046402, 49.429985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125011, 35.650963, 49.691593>,  <29.909952, 34.882267, 49.636936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125011, 35.650963, 49.691593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.300299, 35.437550, 49.402233>,  <30.405470, 35.309502, 49.228615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.300299, 35.437550, 49.402233>,  <30.125011, 35.650963, 49.691593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300299, 35.437550, 49.402233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535887, 0.491059, -0.686794,
		0.721659, 0.688627, -0.070721,
		0.438217, -0.533529, -0.723404,
		30.431765, 35.277493, 49.185211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568975, 36.115070, 49.327507>,  <30.125011, 35.650963, 49.691593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568975, 36.115070, 49.327507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.465540, 35.825382, 49.071808>,  <30.403479, 35.651569, 48.918388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.465540, 35.825382, 49.071808>,  <30.568975, 36.115070, 49.327507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465540, 35.825382, 49.071808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090082, 0.676951, -0.730495,
		0.961779, -0.131312, -0.240290,
		-0.258587, -0.724220, -0.639248,
		30.387964, 35.608116, 48.880032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205370, 36.489006, 49.682529>,  <30.568975, 36.115070, 49.327507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205370, 36.489006, 49.682529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.289225, 36.869576, 49.772720>,  <31.339537, 37.097919, 49.826836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.289225, 36.869576, 49.772720>,  <31.205370, 36.489006, 49.682529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289225, 36.869576, 49.772720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130954, -0.201209, 0.970755,
		0.968971, -0.233032, 0.082413,
		0.209635, 0.951426, 0.225482,
		31.352116, 37.155003, 49.840366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701336, 36.392357, 50.233276>,  <31.205370, 36.489006, 49.682529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701336, 36.392357, 50.233276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.595177, 36.777718, 50.248367>,  <31.531481, 37.008934, 50.257423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.595177, 36.777718, 50.248367>,  <31.701336, 36.392357, 50.233276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595177, 36.777718, 50.248367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134650, -0.001710, 0.990892,
		0.954690, 0.268061, -0.129269,
		-0.265398, 0.963400, 0.037727,
		31.515556, 37.066738, 50.259686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116104, 36.695602, 50.656242>,  <31.701336, 36.392357, 50.233276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116104, 36.695602, 50.656242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.813112, 36.956570, 50.665928>,  <31.631317, 37.113148, 50.671741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.813112, 36.956570, 50.665928>,  <32.116104, 36.695602, 50.656242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813112, 36.956570, 50.665928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128660, 0.112806, 0.985252,
		0.640060, 0.749421, -0.169387,
		-0.757476, 0.652414, 0.024218,
		31.585869, 37.152294, 50.673195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402126, 37.283279, 50.989365>,  <32.116104, 36.695602, 50.656242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402126, 37.283279, 50.989365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.004723, 37.312382, 51.024345>,  <31.766281, 37.329842, 51.045334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.004723, 37.312382, 51.024345>,  <32.402126, 37.283279, 50.989365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004723, 37.312382, 51.024345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104601, 0.282055, 0.953679,
		0.044715, 0.956636, -0.287834,
		-0.993508, 0.072752, 0.087453,
		31.706671, 37.334206, 51.050583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235622, 37.920601, 51.021420>,  <32.402126, 37.283279, 50.989365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235622, 37.920601, 51.021420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.935890, 37.732285, 51.207695>,  <31.756052, 37.619293, 51.319458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.935890, 37.732285, 51.207695>,  <32.235622, 37.920601, 51.021420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935890, 37.732285, 51.207695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210051, 0.497940, 0.841388,
		-0.628000, 0.728294, -0.274231,
		-0.749329, -0.470790, 0.465685,
		31.711092, 37.591049, 51.347401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020130, 38.358292, 51.500477>,  <32.235622, 37.920601, 51.021420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020130, 38.358292, 51.500477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.858599, 38.006424, 51.600960>,  <31.761681, 37.795303, 51.661251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.858599, 38.006424, 51.600960>,  <32.020130, 38.358292, 51.500477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858599, 38.006424, 51.600960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137536, 0.213094, 0.967303,
		-0.904438, 0.425173, 0.034933,
		-0.403827, -0.879670, 0.251206,
		31.737452, 37.742523, 51.676323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512133, 38.552067, 51.962383>,  <32.020130, 38.358292, 51.500477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512133, 38.552067, 51.962383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.562410, 38.163029, 52.040630>,  <31.592577, 37.929607, 52.087578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.562410, 38.163029, 52.040630>,  <31.512133, 38.552067, 51.962383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562410, 38.163029, 52.040630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008490, 0.196120, 0.980543,
		-0.992033, -0.124908, 0.016394,
		0.125693, -0.972592, 0.195618,
		31.600119, 37.871250, 52.099316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950682, 38.411568, 52.254986>,  <31.512133, 38.552067, 51.962383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950682, 38.411568, 52.254986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.203976, 38.137409, 52.398788>,  <31.355951, 37.972912, 52.485069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.203976, 38.137409, 52.398788>,  <30.950682, 38.411568, 52.254986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203976, 38.137409, 52.398788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125473, 0.367444, 0.921543,
		-0.763722, -0.628660, 0.146678,
		0.633233, -0.685399, 0.359505,
		31.393946, 37.931789, 52.506641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608641, 38.121208, 52.897221>,  <30.950682, 38.411568, 52.254986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608641, 38.121208, 52.897221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.003078, 38.058304, 52.918701>,  <31.239742, 38.020561, 52.931591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.003078, 38.058304, 52.918701>,  <30.608641, 38.121208, 52.897221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003078, 38.058304, 52.918701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010250, 0.264986, 0.964198,
		-0.165857, -0.951342, 0.259690,
		0.986097, -0.157257, 0.053701,
		31.298908, 38.011127, 52.934811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.425674, 38.457825, 37.297657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792641, 38.465366, 37.456650>,  <36.012821, 38.469891, 37.552048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792641, 38.465366, 37.456650>,  <35.425674, 38.457825, 37.297657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792641, 38.465366, 37.456650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325364, -0.539539, 0.776554,
		0.229103, -0.841749, -0.488845,
		0.917415, 0.018858, 0.397485,
		36.067863, 38.471024, 37.575897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505051, 37.842358, 37.476212>,  <35.425674, 38.457825, 37.297657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505051, 37.842358, 37.476212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756302, 38.039871, 37.716755>,  <35.907051, 38.158379, 37.861080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756302, 38.039871, 37.716755>,  <35.505051, 37.842358, 37.476212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756302, 38.039871, 37.716755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367579, -0.492875, 0.788645,
		0.685817, -0.716414, -0.128082,
		0.628125, 0.493786, 0.601361,
		35.944740, 38.188007, 37.897163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735088, 37.295795, 37.978512>,  <35.505051, 37.842358, 37.476212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735088, 37.295795, 37.978512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814487, 37.666927, 38.104832>,  <35.862129, 37.889606, 38.180622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814487, 37.666927, 38.104832>,  <35.735088, 37.295795, 37.978512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814487, 37.666927, 38.104832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500204, -0.181182, 0.846740,
		0.842848, -0.326042, 0.428140,
		0.198502, 0.927830, 0.315797,
		35.874039, 37.945278, 38.199570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182991, 37.249996, 38.583542>,  <35.735088, 37.295795, 37.978512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182991, 37.249996, 38.583542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986340, 37.598118, 38.595299>,  <35.868347, 37.806992, 38.602352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986340, 37.598118, 38.595299>,  <36.182991, 37.249996, 38.583542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986340, 37.598118, 38.595299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345166, -0.225748, 0.910987,
		0.799474, 0.437725, 0.411386,
		-0.491631, 0.870308, 0.029392,
		35.838852, 37.859211, 38.604115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367115, 37.556713, 39.176720>,  <36.182991, 37.249996, 38.583542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367115, 37.556713, 39.176720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033203, 37.767643, 39.113377>,  <35.832855, 37.894199, 39.075371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033203, 37.767643, 39.113377>,  <36.367115, 37.556713, 39.176720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033203, 37.767643, 39.113377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232091, -0.076197, 0.969705,
		0.499280, 0.846242, 0.185994,
		-0.834777, 0.527322, -0.158362,
		35.782768, 37.925838, 39.065868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351025, 37.906898, 39.703968>,  <36.367115, 37.556713, 39.176720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351025, 37.906898, 39.703968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977695, 37.958397, 39.569904>,  <35.753696, 37.989296, 39.489464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977695, 37.958397, 39.569904>,  <36.351025, 37.906898, 39.703968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977695, 37.958397, 39.569904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345862, -0.071823, 0.935533,
		0.096370, 0.989074, 0.111561,
		-0.933323, 0.128742, -0.335161,
		35.697697, 37.997021, 39.469357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062122, 38.380135, 40.109943>,  <36.351025, 37.906898, 39.703968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062122, 38.380135, 40.109943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734264, 38.211838, 39.954426>,  <35.537548, 38.110859, 39.861115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734264, 38.211838, 39.954426>,  <36.062122, 38.380135, 40.109943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734264, 38.211838, 39.954426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432948, 0.010523, 0.901357,
		-0.375144, 0.907121, -0.190783,
		-0.819648, -0.420737, -0.388789,
		35.488369, 38.085617, 39.837788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479546, 38.827579, 40.142921>,  <36.062122, 38.380135, 40.109943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479546, 38.827579, 40.142921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304577, 38.468025, 40.132656>,  <35.199596, 38.252293, 40.126495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304577, 38.468025, 40.132656>,  <35.479546, 38.827579, 40.142921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304577, 38.468025, 40.132656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572699, 0.256459, 0.778617,
		-0.693307, 0.355286, -0.626974,
		-0.437425, -0.898889, -0.025667,
		35.173351, 38.198360, 40.124954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839867, 39.035229, 40.287544>,  <35.479546, 38.827579, 40.142921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839867, 39.035229, 40.287544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842701, 38.643547, 40.368641>,  <34.844402, 38.408539, 40.417297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842701, 38.643547, 40.368641>,  <34.839867, 39.035229, 40.287544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842701, 38.643547, 40.368641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602418, 0.157644, 0.782458,
		-0.798149, -0.127680, -0.588774,
		0.007088, -0.979207, 0.202741,
		34.844826, 38.349785, 40.429462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042522, 38.813549, 40.424419>,  <34.839867, 39.035229, 40.287544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042522, 38.813549, 40.424419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302063, 38.555378, 40.585621>,  <34.457787, 38.400475, 40.682343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302063, 38.555378, 40.585621>,  <34.042522, 38.813549, 40.424419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302063, 38.555378, 40.585621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608568, -0.122248, 0.784028,
		-0.456767, -0.753975, -0.472108,
		0.648852, -0.645428, 0.403007,
		34.496719, 38.361752, 40.706524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834606, 38.135792, 40.628712>,  <34.042522, 38.813549, 40.424419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834606, 38.135792, 40.628712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066319, 38.337456, 40.884914>,  <34.205345, 38.458454, 41.038635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066319, 38.337456, 40.884914>,  <33.834606, 38.135792, 40.628712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066319, 38.337456, 40.884914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756121, 0.038835, 0.653278,
		0.304484, -0.862735, 0.403704,
		0.579284, 0.504162, 0.640508,
		34.240105, 38.488705, 41.077068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876659, 37.740444, 41.159779>,  <33.834606, 38.135792, 40.628712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876659, 37.740444, 41.159779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893272, 38.127438, 41.259583>,  <33.903240, 38.359634, 41.319466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893272, 38.127438, 41.259583>,  <33.876659, 37.740444, 41.159779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893272, 38.127438, 41.259583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818452, -0.110290, 0.563891,
		0.573072, -0.227630, 0.787256,
		0.041533, 0.967482, 0.249509,
		33.905731, 38.417683, 41.334435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353455, 37.439053, 40.888107>,  <33.876659, 37.740444, 41.159779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353455, 37.439053, 40.888107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228481, 37.063309, 40.831554>,  <33.153500, 36.837864, 40.797623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228481, 37.063309, 40.831554>,  <33.353455, 37.439053, 40.888107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228481, 37.063309, 40.831554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356567, 0.021988, -0.934011,
		0.880482, -0.342226, 0.328075,
		-0.312429, -0.939360, -0.141387,
		33.134754, 36.781502, 40.789139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821117, 37.106266, 40.606968>,  <33.353455, 37.439053, 40.888107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821117, 37.106266, 40.606968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508301, 36.878910, 40.504719>,  <33.320610, 36.742496, 40.443367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508301, 36.878910, 40.504719>,  <33.821117, 37.106266, 40.606968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508301, 36.878910, 40.504719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343890, -0.051485, -0.937597,
		0.519760, -0.821147, 0.235727,
		-0.782042, -0.568390, -0.255625,
		33.273689, 36.708393, 40.428032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033813, 36.524685, 40.175583>,  <33.821117, 37.106266, 40.606968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033813, 36.524685, 40.175583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649906, 36.561905, 40.069607>,  <33.419563, 36.584236, 40.006020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649906, 36.561905, 40.069607>,  <34.033813, 36.524685, 40.175583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649906, 36.561905, 40.069607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245640, -0.178979, -0.952695,
		-0.136065, -0.979443, 0.148921,
		-0.959764, 0.093048, -0.264944,
		33.361977, 36.589821, 39.990124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969925, 36.156319, 39.546124>,  <34.033813, 36.524685, 40.175583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969925, 36.156319, 39.546124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620132, 36.350338, 39.546024>,  <33.410255, 36.466751, 39.545967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620132, 36.350338, 39.546024>,  <33.969925, 36.156319, 39.546124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620132, 36.350338, 39.546024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123313, -0.222805, -0.967033,
		-0.469117, -0.845625, 0.254653,
		-0.874484, 0.485054, -0.000245,
		33.357788, 36.495853, 39.545952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440121, 35.666763, 39.293331>,  <33.969925, 36.156319, 39.546124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440121, 35.666763, 39.293331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315868, 36.043293, 39.240536>,  <33.241318, 36.269211, 39.208858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315868, 36.043293, 39.240536>,  <33.440121, 35.666763, 39.293331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315868, 36.043293, 39.240536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061345, -0.158419, -0.985464,
		-0.948549, -0.298019, 0.106955,
		-0.310631, 0.941323, -0.131986,
		33.222679, 36.325691, 39.200939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983246, 35.625847, 38.649094>,  <33.440121, 35.666763, 39.293331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983246, 35.625847, 38.649094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094986, 36.006950, 38.696774>,  <33.162029, 36.235615, 38.725380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094986, 36.006950, 38.696774>,  <32.983246, 35.625847, 38.649094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094986, 36.006950, 38.696774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121418, 0.088090, -0.988685,
		-0.952481, 0.290662, -0.091074,
		0.279351, 0.952762, 0.119196,
		33.178791, 36.292778, 38.732533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521240, 36.074844, 38.279079>,  <32.983246, 35.625847, 38.649094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521240, 36.074844, 38.279079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861065, 36.277012, 38.339489>,  <33.064960, 36.398312, 38.375736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861065, 36.277012, 38.339489>,  <32.521240, 36.074844, 38.279079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861065, 36.277012, 38.339489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065976, 0.182248, -0.981037,
		-0.523354, 0.843411, 0.121485,
		0.849558, 0.505414, 0.151025,
		33.115932, 36.428635, 38.384796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528328, 36.585354, 37.734566>,  <32.521240, 36.074844, 38.279079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528328, 36.585354, 37.734566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905823, 36.608421, 37.864822>,  <33.132320, 36.622261, 37.942974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905823, 36.608421, 37.864822>,  <32.528328, 36.585354, 37.734566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905823, 36.608421, 37.864822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317481, 0.117686, -0.940933,
		-0.092587, 0.991375, 0.092756,
		0.943734, 0.057670, 0.325639,
		33.188942, 36.625721, 37.962513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875355, 37.092796, 37.290047>,  <32.528328, 36.585354, 37.734566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875355, 37.092796, 37.290047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143242, 36.844902, 37.453712>,  <33.303974, 36.696167, 37.551910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143242, 36.844902, 37.453712>,  <32.875355, 37.092796, 37.290047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143242, 36.844902, 37.453712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473777, -0.067711, -0.878038,
		0.571855, 0.781885, 0.248269,
		0.669714, -0.619735, 0.409160,
		33.344154, 36.658981, 37.576462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528587, 37.294788, 37.000240>,  <32.875355, 37.092796, 37.290047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528587, 37.294788, 37.000240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606216, 36.930134, 37.145161>,  <33.652794, 36.711342, 37.232113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606216, 36.930134, 37.145161>,  <33.528587, 37.294788, 37.000240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606216, 36.930134, 37.145161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562530, -0.199144, -0.802435,
		0.803676, 0.359534, 0.474173,
		0.194073, -0.911634, 0.362296,
		33.664440, 36.656643, 37.253849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183323, 37.226677, 36.957554>,  <33.528587, 37.294788, 37.000240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183323, 37.226677, 36.957554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045353, 36.852642, 36.924984>,  <33.962570, 36.628220, 36.905441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045353, 36.852642, 36.924984>,  <34.183323, 37.226677, 36.957554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045353, 36.852642, 36.924984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544255, -0.128572, -0.829009,
		0.764729, -0.330266, 0.553276,
		-0.344929, -0.935090, -0.081427,
		33.941875, 36.572117, 36.900555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704437, 36.854725, 36.646263>,  <34.183323, 37.226677, 36.957554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704437, 36.854725, 36.646263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412781, 36.584892, 36.600151>,  <34.237785, 36.422993, 36.572483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412781, 36.584892, 36.600151>,  <34.704437, 36.854725, 36.646263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412781, 36.584892, 36.600151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379181, -0.257990, -0.888630,
		0.569709, -0.691654, 0.443900,
		-0.729145, -0.674579, -0.115283,
		34.194038, 36.382519, 36.565567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031548, 36.228626, 36.457016>,  <34.704437, 36.854725, 36.646263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031548, 36.228626, 36.457016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654331, 36.230839, 36.323963>,  <34.428001, 36.232166, 36.244133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654331, 36.230839, 36.323963>,  <35.031548, 36.228626, 36.457016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654331, 36.230839, 36.323963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332125, -0.041999, -0.942300,
		-0.019182, -0.999102, 0.037770,
		-0.943040, 0.005531, -0.332632,
		34.371418, 36.232498, 36.224174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224239, 35.479618, 36.202946>,  <35.031548, 36.228626, 36.457016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224239, 35.479618, 36.202946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484032, 35.359322, 35.923595>,  <35.639908, 35.287144, 35.755985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484032, 35.359322, 35.923595>,  <35.224239, 35.479618, 36.202946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484032, 35.359322, 35.923595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648661, 0.698375, 0.302509,
		0.396753, -0.649484, 0.648658,
		0.649481, -0.300738, -0.698377,
		35.678875, 35.269100, 35.714081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870865, 35.264931, 36.521492>,  <35.224239, 35.479618, 36.202946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870865, 35.264931, 36.521492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929749, 35.419785, 36.157413>,  <35.965076, 35.512695, 35.938965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929749, 35.419785, 36.157413>,  <35.870865, 35.264931, 36.521492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929749, 35.419785, 36.157413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641271, 0.663263, 0.385815,
		0.753062, -0.640478, -0.150619,
		0.147206, 0.387130, -0.910198,
		35.973911, 35.535923, 35.884354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062103, 34.667473, 36.918274>,  <35.870865, 35.264931, 36.521492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062103, 34.667473, 36.918274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384373, 34.500526, 37.086414>,  <36.577736, 34.400356, 37.187298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384373, 34.500526, 37.086414>,  <36.062103, 34.667473, 36.918274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384373, 34.500526, 37.086414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498841, -0.095368, 0.861431,
		-0.319447, -0.903719, -0.285036,
		0.805675, -0.417369, 0.420347,
		36.626076, 34.375317, 37.212517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763897, 34.168129, 37.319374>,  <36.062103, 34.667473, 36.918274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763897, 34.168129, 37.319374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120407, 34.290813, 37.452980>,  <36.334312, 34.364426, 37.533142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120407, 34.290813, 37.452980>,  <35.763897, 34.168129, 37.319374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120407, 34.290813, 37.452980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383612, 0.117172, 0.916031,
		0.241823, -0.944562, 0.222091,
		0.891271, 0.306714, 0.334010,
		36.387787, 34.382828, 37.553185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977291, 33.707287, 37.906261>,  <35.763897, 34.168129, 37.319374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977291, 33.707287, 37.906261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145802, 34.070004, 37.912682>,  <36.246906, 34.287632, 37.916534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145802, 34.070004, 37.912682>,  <35.977291, 33.707287, 37.906261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145802, 34.070004, 37.912682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199991, 0.075619, 0.976875,
		0.884608, -0.414744, 0.213207,
		0.421275, 0.906790, 0.016052,
		36.272182, 34.342041, 37.917496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377941, 33.725948, 38.532387>,  <35.977291, 33.707287, 37.906261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377941, 33.725948, 38.532387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332047, 34.111137, 38.434795>,  <36.304512, 34.342251, 38.376240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332047, 34.111137, 38.434795>,  <36.377941, 33.725948, 38.532387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332047, 34.111137, 38.434795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231114, 0.212990, 0.949327,
		0.966138, 0.165308, 0.198118,
		-0.114734, 0.962969, -0.243982,
		36.297626, 34.400028, 38.361599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707611, 34.082489, 39.027031>,  <36.377941, 33.725948, 38.532387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707611, 34.082489, 39.027031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458439, 34.353188, 38.870075>,  <36.308937, 34.515606, 38.775902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458439, 34.353188, 38.870075>,  <36.707611, 34.082489, 39.027031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458439, 34.353188, 38.870075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301505, 0.255149, 0.918691,
		0.721843, 0.690586, 0.045104,
		-0.622927, 0.676750, -0.392392,
		36.271561, 34.556213, 38.752357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849262, 34.817493, 39.447590>,  <36.707611, 34.082489, 39.027031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849262, 34.817493, 39.447590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488018, 34.868908, 39.283699>,  <36.271271, 34.899757, 39.185364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488018, 34.868908, 39.283699>,  <36.849262, 34.817493, 39.447590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488018, 34.868908, 39.283699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327083, 0.412328, 0.850295,
		0.278237, 0.901922, -0.330334,
		-0.903106, 0.128537, -0.409729,
		36.217087, 34.907471, 39.160782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690670, 35.474518, 39.660259>,  <36.849262, 34.817493, 39.447590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690670, 35.474518, 39.660259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344212, 35.300884, 39.561169>,  <36.136337, 35.196705, 39.501717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344212, 35.300884, 39.561169>,  <36.690670, 35.474518, 39.660259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344212, 35.300884, 39.561169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408098, 0.328107, 0.851940,
		-0.288534, 0.838998, -0.461336,
		-0.866143, -0.434084, -0.247724,
		36.084370, 35.170658, 39.486851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289223, 35.949852, 39.904293>,  <36.690670, 35.474518, 39.660259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289223, 35.949852, 39.904293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054050, 35.628136, 39.869778>,  <35.912949, 35.435104, 39.849068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054050, 35.628136, 39.869778>,  <36.289223, 35.949852, 39.904293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054050, 35.628136, 39.869778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444258, 0.231909, 0.865363,
		-0.675996, 0.547108, -0.493661,
		-0.587931, -0.804295, -0.086287,
		35.877670, 35.386848, 39.843891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624569, 36.182842, 39.987244>,  <36.289223, 35.949852, 39.904293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624569, 36.182842, 39.987244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668407, 35.797520, 40.085243>,  <35.694710, 35.566326, 40.144043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668407, 35.797520, 40.085243>,  <35.624569, 36.182842, 39.987244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668407, 35.797520, 40.085243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457687, 0.169888, 0.872732,
		-0.882333, -0.207781, -0.422275,
		0.109598, -0.963310, 0.244996,
		35.701286, 35.508526, 40.158741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067123, 36.083172, 40.395496>,  <35.624569, 36.182842, 39.987244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067123, 36.083172, 40.395496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287251, 35.767647, 40.504990>,  <35.419327, 35.578331, 40.570686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287251, 35.767647, 40.504990>,  <35.067123, 36.083172, 40.395496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287251, 35.767647, 40.504990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397741, 0.040589, 0.916600,
		-0.734137, -0.613291, -0.291407,
		0.550314, -0.788814, 0.273729,
		35.452343, 35.531002, 40.587109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582405, 35.657299, 40.756706>,  <35.067123, 36.083172, 40.395496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582405, 35.657299, 40.756706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959358, 35.573307, 40.860882>,  <35.185528, 35.522911, 40.923389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959358, 35.573307, 40.860882>,  <34.582405, 35.657299, 40.756706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959358, 35.573307, 40.860882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283025, -0.085310, 0.955311,
		-0.178385, -0.973975, -0.139826,
		0.942378, -0.209987, 0.260441,
		35.242073, 35.510311, 40.939014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466450, 35.277248, 41.287754>,  <34.582405, 35.657299, 40.756706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466450, 35.277248, 41.287754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858467, 35.312538, 41.359009>,  <35.093678, 35.333714, 41.401764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858467, 35.312538, 41.359009>,  <34.466450, 35.277248, 41.287754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858467, 35.312538, 41.359009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176796, -0.022886, 0.983981,
		0.090890, -0.995837, -0.006831,
		0.980042, 0.088227, 0.178140,
		35.152481, 35.339005, 41.412453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517471, 34.938915, 41.890621>,  <34.466450, 35.277248, 41.287754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517471, 34.938915, 41.890621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851875, 35.157131, 41.867020>,  <35.052517, 35.288059, 41.852859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851875, 35.157131, 41.867020>,  <34.517471, 34.938915, 41.890621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851875, 35.157131, 41.867020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088272, -0.027577, 0.995715,
		0.541571, -0.837634, -0.071210,
		0.836008, 0.545536, -0.059005,
		35.102676, 35.320793, 41.849319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031128, 34.525173, 42.304787>,  <34.517471, 34.938915, 41.890621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031128, 34.525173, 42.304787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139999, 34.909023, 42.276398>,  <35.205322, 35.139332, 42.259365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139999, 34.909023, 42.276398>,  <35.031128, 34.525173, 42.304787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139999, 34.909023, 42.276398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041043, 0.062108, 0.997225,
		0.961372, -0.274334, -0.022481,
		0.272176, 0.959627, -0.070968,
		35.221653, 35.196911, 42.255108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536903, 34.546337, 42.734749>,  <35.031128, 34.525173, 42.304787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536903, 34.546337, 42.734749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440556, 34.931873, 42.689144>,  <35.382748, 35.163193, 42.661781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440556, 34.931873, 42.689144>,  <35.536903, 34.546337, 42.734749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440556, 34.931873, 42.689144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028186, 0.124368, 0.991836,
		0.970149, 0.235688, -0.057123,
		-0.240868, 0.963838, -0.114012,
		35.368294, 35.221024, 42.654942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994900, 34.913761, 43.121284>,  <35.536903, 34.546337, 42.734749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994900, 34.913761, 43.121284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658810, 35.123871, 43.067467>,  <35.457153, 35.249935, 43.035175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658810, 35.123871, 43.067467>,  <35.994900, 34.913761, 43.121284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658810, 35.123871, 43.067467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155723, 0.003924, 0.987793,
		0.519389, 0.850925, 0.078500,
		-0.840229, 0.525273, -0.134547,
		35.406742, 35.281452, 43.027103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031406, 35.455364, 43.611561>,  <35.994900, 34.913761, 43.121284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031406, 35.455364, 43.611561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642075, 35.402378, 43.536648>,  <35.408474, 35.370586, 43.491699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642075, 35.402378, 43.536648>,  <36.031406, 35.455364, 43.611561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642075, 35.402378, 43.536648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178990, -0.072065, 0.981208,
		-0.143468, 0.988565, 0.046434,
		-0.973334, -0.132461, -0.187282,
		35.350075, 35.362640, 43.480465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830559, 35.829712, 44.122345>,  <36.031406, 35.455364, 43.611561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830559, 35.829712, 44.122345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507469, 35.617500, 44.019485>,  <35.313614, 35.490173, 43.957771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507469, 35.617500, 44.019485>,  <35.830559, 35.829712, 44.122345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507469, 35.617500, 44.019485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160337, -0.222059, 0.961760,
		-0.567339, 0.818067, 0.094299,
		-0.807724, -0.530525, -0.257149,
		35.265152, 35.458344, 43.942341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225201, 35.989758, 44.650898>,  <35.830559, 35.829712, 44.122345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225201, 35.989758, 44.650898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089943, 35.655586, 44.477592>,  <35.008789, 35.455086, 44.373608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089943, 35.655586, 44.477592>,  <35.225201, 35.989758, 44.650898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089943, 35.655586, 44.477592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409154, -0.284091, 0.867113,
		-0.847497, 0.470483, -0.245754,
		-0.338146, -0.835426, -0.433267,
		34.988499, 35.404957, 44.347614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531242, 35.869431, 44.909302>,  <35.225201, 35.989758, 44.650898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531242, 35.869431, 44.909302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675888, 35.522022, 44.773708>,  <34.762676, 35.313580, 44.692352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675888, 35.522022, 44.773708>,  <34.531242, 35.869431, 44.909302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675888, 35.522022, 44.773708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238650, -0.437708, 0.866867,
		-0.901266, -0.232572, -0.365553,
		0.361615, -0.868517, -0.338988,
		34.784374, 35.261467, 44.672012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017612, 35.266411, 45.020348>,  <34.531242, 35.869431, 44.909302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017612, 35.266411, 45.020348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391071, 35.123329, 45.012962>,  <34.615147, 35.037479, 45.008530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391071, 35.123329, 45.012962>,  <34.017612, 35.266411, 45.020348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391071, 35.123329, 45.012962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136085, -0.401939, 0.905498,
		-0.331327, -0.842905, -0.423949,
		0.933651, -0.357709, -0.018467,
		34.671165, 35.016018, 45.007423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872078, 34.521084, 45.246525>,  <34.017612, 35.266411, 45.020348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872078, 34.521084, 45.246525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263531, 34.599655, 45.270851>,  <34.498402, 34.646797, 45.285446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263531, 34.599655, 45.270851>,  <33.872078, 34.521084, 45.246525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263531, 34.599655, 45.270851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058042, -0.547600, 0.834725,
		0.197263, -0.813358, -0.547299,
		0.978631, 0.196426, 0.060812,
		34.557121, 34.658585, 45.289093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178463, 33.853134, 45.515289>,  <33.872078, 34.521084, 45.246525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178463, 33.853134, 45.515289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463818, 34.125515, 45.581470>,  <34.635033, 34.288944, 45.621178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463818, 34.125515, 45.581470>,  <34.178463, 33.853134, 45.515289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463818, 34.125515, 45.581470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151015, -0.379944, 0.912599,
		0.684302, -0.626053, -0.373883,
		0.713390, 0.680955, 0.165454,
		34.677834, 34.329800, 45.631107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811394, 33.518353, 45.660412>,  <34.178463, 33.853134, 45.515289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811394, 33.518353, 45.660412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842159, 33.878361, 45.832012>,  <34.860619, 34.094368, 45.934971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842159, 33.878361, 45.832012>,  <34.811394, 33.518353, 45.660412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842159, 33.878361, 45.832012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239558, -0.434350, 0.868304,
		0.967831, 0.035989, -0.249014,
		0.076910, 0.900025, 0.428999,
		34.865231, 34.148369, 45.960712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240036, 33.389412, 46.193340>,  <34.811394, 33.518353, 45.660412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240036, 33.389412, 46.193340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097153, 33.750893, 46.287769>,  <35.011421, 33.967781, 46.344425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097153, 33.750893, 46.287769>,  <35.240036, 33.389412, 46.193340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097153, 33.750893, 46.287769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278043, -0.138402, 0.950545,
		0.891680, 0.405181, -0.201829,
		-0.357209, 0.903700, 0.236069,
		34.989990, 34.022003, 46.358589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792763, 33.818108, 46.723896>,  <35.240036, 33.389412, 46.193340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792763, 33.818108, 46.723896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429806, 33.978699, 46.773617>,  <35.212032, 34.075054, 46.803448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429806, 33.978699, 46.773617>,  <35.792763, 33.818108, 46.723896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429806, 33.978699, 46.773617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113828, -0.049944, 0.992244,
		0.404568, 0.914508, -0.000380,
		-0.907396, 0.401473, 0.124302,
		35.157585, 34.099140, 46.810909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843742, 34.305546, 47.334335>,  <35.792763, 33.818108, 46.723896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843742, 34.305546, 47.334335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454033, 34.228416, 47.287666>,  <35.220207, 34.182140, 47.259666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454033, 34.228416, 47.287666>,  <35.843742, 34.305546, 47.334335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454033, 34.228416, 47.287666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070456, -0.231133, 0.970368,
		-0.214071, 0.953624, 0.211602,
		-0.974274, -0.192819, -0.116668,
		35.161751, 34.170570, 47.252666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182289, 34.999523, 47.333797>,  <35.843742, 34.305546, 47.334335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182289, 34.999523, 47.333797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559586, 34.953766, 47.458515>,  <36.785961, 34.926311, 47.533344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559586, 34.953766, 47.458515>,  <36.182289, 34.999523, 47.333797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559586, 34.953766, 47.458515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307572, -0.053327, -0.950029,
		0.125307, 0.992003, -0.015114,
		0.943238, -0.114396, 0.311794,
		36.842556, 34.919445, 47.552055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473423, 35.396042, 46.928871>,  <36.182289, 34.999523, 47.333797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473423, 35.396042, 46.928871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758972, 35.151844, 47.066093>,  <36.930302, 35.005325, 47.148426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758972, 35.151844, 47.066093>,  <36.473423, 35.396042, 46.928871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758972, 35.151844, 47.066093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401097, -0.045101, -0.914924,
		0.574026, 0.790738, 0.212670,
		0.713873, -0.610492, 0.343052,
		36.973133, 34.968697, 47.169010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137760, 35.617874, 46.680611>,  <36.473423, 35.396042, 46.928871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137760, 35.617874, 46.680611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201324, 35.240086, 46.795650>,  <37.239464, 35.013412, 46.864674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201324, 35.240086, 46.795650>,  <37.137760, 35.617874, 46.680611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201324, 35.240086, 46.795650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549049, -0.157565, -0.820804,
		0.820545, 0.288339, 0.493525,
		0.158907, -0.944476, 0.287601,
		37.248997, 34.956741, 46.881931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793121, 35.509487, 46.603500>,  <37.137760, 35.617874, 46.680611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793121, 35.509487, 46.603500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643547, 35.138523, 46.599751>,  <37.553802, 34.915947, 46.597500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643547, 35.138523, 46.599751>,  <37.793121, 35.509487, 46.603500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643547, 35.138523, 46.599751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626409, -0.245095, -0.739960,
		0.683947, -0.282570, 0.672586,
		-0.373938, -0.927407, -0.009372,
		37.531364, 34.860302, 46.596939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313725, 35.012562, 46.659756>,  <37.793121, 35.509487, 46.603500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313725, 35.012562, 46.659756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018581, 34.778931, 46.524445>,  <37.841496, 34.638752, 46.443260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018581, 34.778931, 46.524445>,  <38.313725, 35.012562, 46.659756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018581, 34.778931, 46.524445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607907, -0.357286, -0.709081,
		0.293294, -0.728838, 0.618687,
		-0.737853, -0.584073, -0.338276,
		37.797226, 34.603710, 46.422962>
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
