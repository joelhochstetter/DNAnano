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
	<2.337785, 0.287443, 2.719539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.641797, 0.420303, 2.942978>,  <2.824204, 0.500020, 3.077041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.641797, 0.420303, 2.942978>,  <2.337785, 0.287443, 2.719539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.641797, 0.420303, 2.942978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648323, 0.447118, 0.616249,
		-0.045070, -0.830519, 0.555164,
		0.760030, 0.332151, 0.558596,
		2.869806, 0.519949, 3.110557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.332377, 0.046705, 3.466100>,  <2.337785, 0.287443, 2.719539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.332377, 0.046705, 3.466100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.487153, 0.412323, 3.417435>,  <2.580018, 0.631694, 3.388236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.487153, 0.412323, 3.417435>,  <2.332377, 0.046705, 3.466100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.487153, 0.412323, 3.417435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665172, 0.368059, 0.649676,
		0.638612, -0.170458, 0.750413,
		0.386939, 0.914044, -0.121663,
		2.603234, 0.686536, 3.380936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.498647, 0.285307, 4.129365>,  <2.332377, 0.046705, 3.466100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.498647, 0.285307, 4.129365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.439555, 0.591553, 3.878922>,  <2.404100, 0.775300, 3.728656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.439555, 0.591553, 3.878922>,  <2.498647, 0.285307, 4.129365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.439555, 0.591553, 3.878922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704910, 0.362542, 0.609644,
		0.693742, 0.531413, 0.486130,
		-0.147730, 0.765614, -0.626108,
		2.395236, 0.821237, 3.691089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.514281, 0.857989, 4.503256>,  <2.498647, 0.285307, 4.129365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.514281, 0.857989, 4.503256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.292789, 0.936699, 4.179611>,  <2.159894, 0.983925, 3.985424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.292789, 0.936699, 4.179611>,  <2.514281, 0.857989, 4.503256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.292789, 0.936699, 4.179611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717839, 0.379641, 0.583593,
		0.422009, 0.903965, -0.068965,
		-0.553729, 0.196776, -0.809113,
		2.126670, 0.995732, 3.936877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.342268, 1.630074, 4.620842>,  <2.514281, 0.857989, 4.503256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.342268, 1.630074, 4.620842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.099243, 1.458176, 4.353653>,  <1.953428, 1.355037, 4.193340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.099243, 1.458176, 4.353653>,  <2.342268, 1.630074, 4.620842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.099243, 1.458176, 4.353653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783681, 0.461219, 0.416078,
		0.129274, 0.776270, -0.617003,
		-0.607563, -0.429746, -0.667972,
		1.916974, 1.329252, 4.153261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.873198, 2.100556, 4.594595>,  <2.342268, 1.630074, 4.620842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.873198, 2.100556, 4.594595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.681490, 1.777599, 4.456947>,  <1.566466, 1.583825, 4.374359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.681490, 1.777599, 4.456947>,  <1.873198, 2.100556, 4.594595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.681490, 1.777599, 4.456947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855918, 0.343222, 0.386786,
		-0.194179, 0.479912, -0.855558,
		-0.479270, -0.807393, -0.344119,
		1.537709, 1.535382, 4.353712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.197532, 2.354996, 4.453395>,  <1.873198, 2.100556, 4.594595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.197532, 2.354996, 4.453395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.173242, 1.957798, 4.493942>,  <1.158668, 1.719479, 4.518270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.173242, 1.957798, 4.493942>,  <1.197532, 2.354996, 4.453395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.173242, 1.957798, 4.493942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706406, 0.114503, 0.698484,
		-0.705197, -0.029190, -0.708410,
		-0.060726, -0.992994, 0.101367,
		1.155024, 1.659900, 4.524353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.479129, 2.157951, 4.396853>,  <1.197532, 2.354996, 4.453395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.479129, 2.157951, 4.396853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.651712, 1.855331, 4.593414>,  <0.755262, 1.673760, 4.711351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.651712, 1.855331, 4.593414>,  <0.479129, 2.157951, 4.396853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.651712, 1.855331, 4.593414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744539, 0.008965, 0.667518,
		-0.509416, -0.653875, -0.559412,
		0.431459, -0.756549, 0.491403,
		0.781150, 1.628367, 4.740835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.310984, 2.089140, 5.853017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.353550, 1.699173, 5.931206>,  <0.379089, 1.465192, 5.978119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.353550, 1.699173, 5.931206>,  <0.310984, 2.089140, 5.853017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.353550, 1.699173, 5.931206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399591, -0.138085, -0.906234,
		0.910496, 0.174545, 0.374874,
		0.106415, -0.974919, 0.195472,
		0.385474, 1.406697, 5.989847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.018792, 1.758943, 5.928069>,  <0.310984, 2.089140, 5.853017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.018792, 1.758943, 5.928069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.759047, 1.508003, 5.756134>,  <0.603199, 1.357439, 5.652973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.759047, 1.508003, 5.756134>,  <1.018792, 1.758943, 5.928069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.759047, 1.508003, 5.756134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631870, -0.130580, -0.763995,
		0.423164, -0.767711, 0.481198,
		-0.649363, -0.627350, -0.429837,
		0.564238, 1.319798, 5.627183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.395686, 1.196881, 5.606696>,  <1.018792, 1.758943, 5.928069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.395686, 1.196881, 5.606696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.039721, 1.181824, 5.424866>,  <0.826141, 1.172790, 5.315768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.039721, 1.181824, 5.424866>,  <1.395686, 1.196881, 5.606696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.039721, 1.181824, 5.424866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450301, -0.231333, -0.862389,
		-0.072696, -0.972146, 0.222817,
		-0.889913, -0.037642, -0.454575,
		0.772747, 1.170531, 5.288493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.290089, 0.533361, 5.263285>,  <1.395686, 1.196881, 5.606696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.290089, 0.533361, 5.263285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.112152, 0.847321, 5.090752>,  <1.005390, 1.035696, 4.987232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.112152, 0.847321, 5.090752>,  <1.290089, 0.533361, 5.263285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.112152, 0.847321, 5.090752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468373, -0.206621, -0.859031,
		-0.763375, -0.584158, -0.275712,
		-0.444842, 0.784899, -0.431334,
		0.978699, 1.082790, 4.961351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.020927, 0.347424, 4.590502>,  <1.290089, 0.533361, 5.263285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.020927, 0.347424, 4.590502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.044617, 0.745140, 4.555000>,  <1.058831, 0.983770, 4.533699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.044617, 0.745140, 4.555000>,  <1.020927, 0.347424, 4.590502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.044617, 0.745140, 4.555000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536909, -0.106684, -0.836868,
		-0.841559, 0.001910, -0.540162,
		0.059225, 0.994291, -0.088755,
		1.062384, 1.043427, 4.528374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.811034, 0.520341, 3.898825>,  <1.020927, 0.347424, 4.590502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.811034, 0.520341, 3.898825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.042223, 0.818321, 4.032089>,  <1.180936, 0.997109, 4.112048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.042223, 0.818321, 4.032089>,  <0.811034, 0.520341, 3.898825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.042223, 0.818321, 4.032089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533401, -0.035890, -0.845101,
		-0.617602, 0.666153, -0.418101,
		0.577972, 0.744951, 0.333161,
		1.215615, 1.041807, 4.132038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.087654, 0.809618, 3.342494>,  <0.811034, 0.520341, 3.898825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.087654, 0.809618, 3.342494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.333332, 0.990097, 3.601471>,  <1.480739, 1.098385, 3.756857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.333332, 0.990097, 3.601471>,  <1.087654, 0.809618, 3.342494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.333332, 0.990097, 3.601471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726796, -0.003776, -0.686843,
		-0.307458, 0.892416, -0.330248,
		0.614196, 0.451198, 0.647444,
		1.517591, 1.125456, 3.795704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.360401, 1.458009, 2.955637>,  <1.087654, 0.809618, 3.342494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.360401, 1.458009, 2.955637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.596956, 1.296547, 3.234871>,  <1.738889, 1.199670, 3.402411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.596956, 1.296547, 3.234871>,  <1.360401, 1.458009, 2.955637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.596956, 1.296547, 3.234871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670145, -0.235485, -0.703884,
		0.448515, 0.884087, 0.131244,
		0.591388, -0.403655, 0.698085,
		1.774373, 1.175451, 3.444297>
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
