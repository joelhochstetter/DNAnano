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
	<23.992346, 34.974518, 35.002800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.368320, 34.953556, 34.867878>,  <24.593904, 34.940979, 34.786922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.368320, 34.953556, 34.867878>,  <23.992346, 34.974518, 35.002800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.368320, 34.953556, 34.867878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027597, -0.973247, 0.228097,
		-0.340238, -0.223705, -0.913343,
		0.939934, -0.052401, -0.337309,
		24.650301, 34.937836, 34.766685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.124285, 34.538406, 34.338776>,  <23.992346, 34.974518, 35.002800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.124285, 34.538406, 34.338776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.410999, 34.535770, 34.617680>,  <24.583029, 34.534187, 34.785023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.410999, 34.535770, 34.617680>,  <24.124285, 34.538406, 34.338776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.410999, 34.535770, 34.617680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239323, -0.941539, 0.237127,
		0.654935, -0.336840, -0.676460,
		0.716787, -0.006590, 0.697261,
		24.626036, 34.533794, 34.826859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.826403, 34.021145, 34.278210>,  <24.124285, 34.538406, 34.338776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.826403, 34.021145, 34.278210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.674225, 34.079514, 34.643497>,  <24.582918, 34.114532, 34.862671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.674225, 34.079514, 34.643497>,  <24.826403, 34.021145, 34.278210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.674225, 34.079514, 34.643497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165475, -0.982278, 0.088018,
		0.909879, -0.117629, 0.397849,
		-0.380445, 0.145920, 0.913219,
		24.560091, 34.123291, 34.917461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.726778, 33.295380, 34.635395>,  <24.826403, 34.021145, 34.278210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.726778, 33.295380, 34.635395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544947, 33.559605, 34.874397>,  <24.435848, 33.718140, 35.017799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544947, 33.559605, 34.874397>,  <24.726778, 33.295380, 34.635395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.544947, 33.559605, 34.874397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463672, -0.748260, 0.474463,
		0.760504, -0.061368, 0.646427,
		-0.454579, 0.660561, 0.597510,
		24.408573, 33.757774, 35.053650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940166, 32.908138, 35.214073>,  <24.726778, 33.295380, 34.635395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940166, 32.908138, 35.214073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.620455, 33.144688, 35.256844>,  <24.428627, 33.286617, 35.282505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.620455, 33.144688, 35.256844>,  <24.940166, 32.908138, 35.214073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.620455, 33.144688, 35.256844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500831, -0.753820, 0.425351,
		0.332146, 0.286421, 0.898689,
		-0.799279, 0.591371, 0.106929,
		24.380671, 33.322098, 35.288921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593037, 32.975464, 35.349407>,  <24.940166, 32.908138, 35.214073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593037, 32.975464, 35.349407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788900, 33.321114, 35.302902>,  <25.906418, 33.528503, 35.274998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788900, 33.321114, 35.302902>,  <25.593037, 32.975464, 35.349407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788900, 33.321114, 35.302902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156244, 0.044226, 0.986728,
		0.857801, -0.501326, -0.113359,
		0.489659, 0.864128, -0.116266,
		25.935799, 33.580353, 35.268021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225668, 32.887199, 35.669201>,  <25.593037, 32.975464, 35.349407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225668, 32.887199, 35.669201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156862, 33.281101, 35.679485>,  <26.115580, 33.517445, 35.685658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156862, 33.281101, 35.679485>,  <26.225668, 32.887199, 35.669201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156862, 33.281101, 35.679485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257733, 0.019798, 0.966013,
		0.950781, 0.172794, -0.257211,
		-0.172014, 0.984759, 0.025711,
		26.105259, 33.576530, 35.687199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782898, 33.179108, 35.972622>,  <26.225668, 32.887199, 35.669201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.782898, 33.179108, 35.972622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486803, 33.444210, 36.017883>,  <26.309147, 33.603271, 36.045040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486803, 33.444210, 36.017883>,  <26.782898, 33.179108, 35.972622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486803, 33.444210, 36.017883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225995, 0.086763, 0.970257,
		0.633228, 0.743790, -0.214005,
		-0.740235, 0.662758, 0.113152,
		26.264732, 33.643036, 36.051830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972857, 33.607838, 36.520119>,  <26.782898, 33.179108, 35.972622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972857, 33.607838, 36.520119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593409, 33.730736, 36.489861>,  <26.365740, 33.804474, 36.471706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593409, 33.730736, 36.489861>,  <26.972857, 33.607838, 36.520119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593409, 33.730736, 36.489861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028599, 0.154830, 0.987527,
		0.315125, 0.938950, -0.138088,
		-0.948619, 0.307245, -0.075644,
		26.308823, 33.822910, 36.467167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964029, 34.224796, 36.866905>,  <26.972857, 33.607838, 36.520119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964029, 34.224796, 36.866905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595280, 34.070244, 36.855202>,  <26.374029, 33.977512, 36.848179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595280, 34.070244, 36.855202>,  <26.964029, 34.224796, 36.866905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595280, 34.070244, 36.855202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083713, 0.124872, 0.988635,
		-0.378341, 0.913845, -0.147462,
		-0.921873, -0.386385, -0.029257,
		26.318718, 33.954327, 36.846424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497364, 34.684784, 37.244793>,  <26.964029, 34.224796, 36.866905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497364, 34.684784, 37.244793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310020, 34.332069, 37.222542>,  <26.197615, 34.120441, 37.209190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310020, 34.332069, 37.222542>,  <26.497364, 34.684784, 37.244793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.310020, 34.332069, 37.222542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103583, -0.007724, 0.994591,
		-0.877445, 0.471588, -0.087720,
		-0.468359, -0.881785, -0.055626,
		26.169512, 34.067535, 37.205853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875568, 34.727345, 37.700783>,  <26.497364, 34.684784, 37.244793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875568, 34.727345, 37.700783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.970201, 34.343231, 37.641609>,  <26.026981, 34.112762, 37.606106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.970201, 34.343231, 37.641609>,  <25.875568, 34.727345, 37.700783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.970201, 34.343231, 37.641609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106151, -0.125797, 0.986361,
		-0.965795, -0.249059, 0.072173,
		0.236583, -0.960284, -0.147932,
		26.041176, 34.055145, 37.597229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.473959, 34.337833, 38.206741>,  <25.875568, 34.727345, 37.700783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.473959, 34.337833, 38.206741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777880, 34.097065, 38.108444>,  <25.960232, 33.952602, 38.049465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777880, 34.097065, 38.108444>,  <25.473959, 34.337833, 38.206741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.777880, 34.097065, 38.108444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013323, -0.363484, 0.931505,
		-0.650019, -0.711033, -0.268157,
		0.759802, -0.601923, -0.245745,
		26.005819, 33.916489, 38.034721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.279509, 33.720852, 38.550991>,  <25.473959, 34.337833, 38.206741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.279509, 33.720852, 38.550991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.671942, 33.707672, 38.474689>,  <25.907402, 33.699764, 38.428909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.671942, 33.707672, 38.474689>,  <25.279509, 33.720852, 38.550991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.671942, 33.707672, 38.474689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155991, -0.448935, 0.879844,
		-0.114629, -0.892957, -0.435303,
		0.981085, -0.032952, -0.190754,
		25.966267, 33.697788, 38.417465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481712, 33.042877, 38.835979>,  <25.279509, 33.720852, 38.550991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.481712, 33.042877, 38.835979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816973, 33.255592, 38.787483>,  <26.018129, 33.383221, 38.758385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816973, 33.255592, 38.787483>,  <25.481712, 33.042877, 38.835979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816973, 33.255592, 38.787483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400601, -0.449341, 0.798506,
		0.370160, -0.717839, -0.589652,
		0.838153, 0.531790, -0.121239,
		26.068419, 33.415131, 38.751110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922018, 32.628345, 39.053040>,  <25.481712, 33.042877, 38.835979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922018, 32.628345, 39.053040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152134, 32.954414, 39.079979>,  <26.290203, 33.150055, 39.096142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152134, 32.954414, 39.079979>,  <25.922018, 32.628345, 39.053040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.152134, 32.954414, 39.079979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448190, -0.383036, 0.807719,
		0.684228, -0.434485, -0.585708,
		0.575289, 0.815172, 0.067352,
		26.324720, 33.198967, 39.100185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621429, 32.376415, 39.124977>,  <25.922018, 32.628345, 39.053040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621429, 32.376415, 39.124977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634281, 32.745781, 39.277962>,  <26.641993, 32.967400, 39.369751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634281, 32.745781, 39.277962>,  <26.621429, 32.376415, 39.124977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634281, 32.745781, 39.277962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320764, -0.371941, 0.871074,
		0.946614, 0.094694, -0.308147,
		0.032127, 0.923414, 0.382459,
		26.643919, 33.022804, 39.392700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274511, 32.461258, 39.412632>,  <26.621429, 32.376415, 39.124977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274511, 32.461258, 39.412632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041428, 32.726418, 39.600681>,  <26.901577, 32.885513, 39.713509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041428, 32.726418, 39.600681>,  <27.274511, 32.461258, 39.412632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041428, 32.726418, 39.600681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392884, -0.276601, 0.877003,
		0.711403, 0.695739, -0.099266,
		-0.582708, 0.662902, 0.470120,
		26.866615, 32.925289, 39.741718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679337, 32.801872, 40.008823>,  <27.274511, 32.461258, 39.412632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679337, 32.801872, 40.008823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296679, 32.878555, 40.096527>,  <27.067083, 32.924564, 40.149151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296679, 32.878555, 40.096527>,  <27.679337, 32.801872, 40.008823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296679, 32.878555, 40.096527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209161, -0.071681, 0.975251,
		0.202684, 0.978830, 0.028474,
		-0.956646, 0.191712, 0.219261,
		27.009686, 32.936069, 40.162304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571524, 33.131531, 40.613323>,  <27.679337, 32.801872, 40.008823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571524, 33.131531, 40.613323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196524, 32.992359, 40.610928>,  <26.971523, 32.908855, 40.609489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196524, 32.992359, 40.610928>,  <27.571524, 33.131531, 40.613323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196524, 32.992359, 40.610928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100230, -0.286474, 0.952831,
		-0.333235, 0.892680, 0.303443,
		-0.937501, -0.347931, -0.005989,
		26.915274, 32.887981, 40.609131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252588, 33.380245, 41.328373>,  <27.571524, 33.131531, 40.613323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252588, 33.380245, 41.328373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035479, 33.081287, 41.175121>,  <26.905212, 32.901913, 41.083168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035479, 33.081287, 41.175121>,  <27.252588, 33.380245, 41.328373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035479, 33.081287, 41.175121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055117, -0.486892, 0.871721,
		-0.838067, 0.452032, 0.305467,
		-0.542775, -0.747398, -0.383134,
		26.872646, 32.857067, 41.060181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675753, 33.339325, 41.783417>,  <27.252588, 33.380245, 41.328373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675753, 33.339325, 41.783417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684362, 32.979111, 41.609718>,  <26.689528, 32.762981, 41.505501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684362, 32.979111, 41.609718>,  <26.675753, 33.339325, 41.783417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684362, 32.979111, 41.609718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015457, -0.433992, 0.900784,
		-0.999649, -0.026100, 0.004579,
		0.021523, -0.900539, -0.434243,
		26.690819, 32.708950, 41.479446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284430, 33.029881, 42.294750>,  <26.675753, 33.339325, 41.783417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284430, 33.029881, 42.294750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.442936, 32.730400, 42.082180>,  <26.538040, 32.550713, 41.954636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.442936, 32.730400, 42.082180>,  <26.284430, 33.029881, 42.294750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.442936, 32.730400, 42.082180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068447, -0.553110, 0.830292,
		-0.915581, -0.365390, -0.167931,
		0.396265, -0.748705, -0.531427,
		26.561815, 32.505787, 41.922752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.887239, 32.468319, 42.460697>,  <26.284430, 33.029881, 42.294750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.887239, 32.468319, 42.460697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.241226, 32.335495, 42.330116>,  <26.453619, 32.255802, 42.251766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.241226, 32.335495, 42.330116>,  <25.887239, 32.468319, 42.460697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.241226, 32.335495, 42.330116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109637, -0.532772, 0.839127,
		-0.452559, -0.778392, -0.435081,
		0.884969, -0.332054, -0.326451,
		26.506716, 32.235878, 42.232182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.887512, 31.891939, 42.596497>,  <25.887239, 32.468319, 42.460697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.887512, 31.891939, 42.596497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277981, 31.968195, 42.637962>,  <26.512262, 32.013947, 42.662842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277981, 31.968195, 42.637962>,  <25.887512, 31.891939, 42.596497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277981, 31.968195, 42.637962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028904, -0.587678, 0.808578,
		0.215066, -0.786315, -0.579185,
		0.976172, 0.190638, 0.103662,
		26.570833, 32.025387, 42.669060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149914, 31.368038, 42.996407>,  <25.887512, 31.891939, 42.596497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149914, 31.368038, 42.996407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437962, 31.644453, 43.021362>,  <26.610790, 31.810303, 43.036335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437962, 31.644453, 43.021362>,  <26.149914, 31.368038, 42.996407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.437962, 31.644453, 43.021362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252922, -0.345171, 0.903818,
		0.646108, -0.635078, -0.423343,
		0.720121, 0.691037, 0.062393,
		26.653997, 31.851765, 43.040081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791174, 31.025774, 43.090710>,  <26.149914, 31.368038, 42.996407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791174, 31.025774, 43.090710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786333, 31.396658, 43.240448>,  <26.783428, 31.619188, 43.330292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786333, 31.396658, 43.240448>,  <26.791174, 31.025774, 43.090710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786333, 31.396658, 43.240448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153825, -0.368193, 0.916936,
		0.988024, 0.068681, -0.138172,
		-0.012103, 0.927209, 0.374348,
		26.782701, 31.674820, 43.352753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554836, 31.172283, 43.380009>,  <26.791174, 31.025774, 43.090710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554836, 31.172283, 43.380009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.264435, 31.367353, 43.573952>,  <27.090193, 31.484396, 43.690319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.264435, 31.367353, 43.573952>,  <27.554836, 31.172283, 43.380009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264435, 31.367353, 43.573952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127023, -0.597825, 0.791499,
		0.675856, 0.636220, 0.372078,
		-0.726005, 0.487677, 0.484859,
		27.046633, 31.513657, 43.719410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222729, 30.676842, 43.333332>,  <27.554836, 31.172283, 43.380009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222729, 30.676842, 43.333332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342333, 30.682409, 43.714993>,  <28.414095, 30.685749, 43.943989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342333, 30.682409, 43.714993>,  <28.222729, 30.676842, 43.333332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342333, 30.682409, 43.714993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183839, 0.980322, -0.071909,
		-0.936374, 0.196912, 0.290566,
		0.299008, 0.013917, 0.954149,
		28.432035, 30.686584, 44.001236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918051, 30.934530, 43.514481>,  <28.222729, 30.676842, 43.333332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918051, 30.934530, 43.514481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152830, 30.622725, 43.601974>,  <29.293697, 30.435640, 43.654472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152830, 30.622725, 43.601974>,  <28.918051, 30.934530, 43.514481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152830, 30.622725, 43.601974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186174, -0.392880, -0.900547,
		0.787927, 0.487854, -0.375727,
		0.586951, -0.779515, 0.218735,
		29.328915, 30.388870, 43.667595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675928, 30.940929, 43.080437>,  <28.918051, 30.934530, 43.514481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675928, 30.940929, 43.080437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503252, 30.599987, 43.198505>,  <29.399647, 30.395422, 43.269348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503252, 30.599987, 43.198505>,  <29.675928, 30.940929, 43.080437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503252, 30.599987, 43.198505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243386, -0.205034, -0.948011,
		0.868566, -0.481089, -0.118941,
		-0.431691, -0.852358, 0.295176,
		29.373745, 30.344280, 43.287060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645853, 30.499264, 42.500908>,  <29.675928, 30.940929, 43.080437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645853, 30.499264, 42.500908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734432, 30.870897, 42.382408>,  <29.787580, 31.093878, 42.311306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734432, 30.870897, 42.382408>,  <29.645853, 30.499264, 42.500908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734432, 30.870897, 42.382408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213319, -0.250286, -0.944379,
		-0.951554, 0.272327, 0.142765,
		0.221448, 0.929083, -0.296254,
		29.800867, 31.149622, 42.293533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178402, 30.469955, 41.912434>,  <29.645853, 30.499264, 42.500908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178402, 30.469955, 41.912434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.437481, 30.773306, 41.883175>,  <29.592928, 30.955317, 41.865620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.437481, 30.773306, 41.883175>,  <29.178402, 30.469955, 41.912434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437481, 30.773306, 41.883175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147610, -0.219091, -0.964474,
		-0.747461, 0.613892, -0.253849,
		0.647699, 0.758377, -0.073146,
		29.631790, 31.000818, 41.861233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930805, 30.997316, 41.329178>,  <29.178402, 30.469955, 41.912434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930805, 30.997316, 41.329178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323408, 31.045240, 41.388893>,  <29.558969, 31.073996, 41.424721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323408, 31.045240, 41.388893>,  <28.930805, 30.997316, 41.329178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323408, 31.045240, 41.388893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168850, -0.174513, -0.970069,
		-0.090174, 0.977338, -0.191517,
		0.981508, 0.119812, 0.149287,
		29.617861, 31.081184, 41.433678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210302, 31.485027, 40.836086>,  <28.930805, 30.997316, 41.329178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210302, 31.485027, 40.836086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505201, 31.241201, 40.952637>,  <29.682140, 31.094906, 41.022568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505201, 31.241201, 40.952637>,  <29.210302, 31.485027, 40.836086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505201, 31.241201, 40.952637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327957, -0.054170, -0.943138,
		0.590688, 0.790883, 0.159974,
		0.737247, -0.609565, 0.291373,
		29.726376, 31.058332, 41.040051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877216, 31.774200, 40.570606>,  <29.210302, 31.485027, 40.836086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877216, 31.774200, 40.570606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964878, 31.389551, 40.636642>,  <30.017475, 31.158762, 40.676262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964878, 31.389551, 40.636642>,  <29.877216, 31.774200, 40.570606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964878, 31.389551, 40.636642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422944, -0.058848, -0.904243,
		0.879255, 0.267992, 0.393816,
		0.219154, -0.961622, 0.165088,
		30.030624, 31.101065, 40.686169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609102, 31.584137, 40.574757>,  <29.877216, 31.774200, 40.570606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609102, 31.584137, 40.574757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380018, 31.284828, 40.440834>,  <30.242569, 31.105244, 40.360481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380018, 31.284828, 40.440834>,  <30.609102, 31.584137, 40.574757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380018, 31.284828, 40.440834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344053, 0.151309, -0.926679,
		0.744065, -0.645909, 0.170789,
		-0.572708, -0.748270, -0.334810,
		30.208206, 31.060347, 40.340389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027136, 31.178402, 40.006573>,  <30.609102, 31.584137, 40.574757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027136, 31.178402, 40.006573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648031, 31.073568, 39.933849>,  <30.420568, 31.010668, 39.890213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648031, 31.073568, 39.933849>,  <31.027136, 31.178402, 40.006573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648031, 31.073568, 39.933849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080868, 0.353934, -0.931768,
		0.308549, -0.897799, -0.314252,
		-0.947765, -0.262083, -0.181809,
		30.363703, 30.994944, 39.879307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962988, 30.649918, 39.393650>,  <31.027136, 31.178402, 40.006573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962988, 30.649918, 39.393650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600788, 30.812626, 39.441994>,  <30.383469, 30.910250, 39.471001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600788, 30.812626, 39.441994>,  <30.962988, 30.649918, 39.393650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600788, 30.812626, 39.441994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088048, 0.458719, -0.884208,
		-0.415109, -0.790010, -0.451186,
		-0.905501, 0.406769, 0.120859,
		30.329138, 30.934656, 39.478252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560076, 30.636644, 38.745350>,  <30.962988, 30.649918, 39.393650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560076, 30.636644, 38.745350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371000, 30.926722, 38.945614>,  <30.257555, 31.100767, 39.065773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371000, 30.926722, 38.945614>,  <30.560076, 30.636644, 38.745350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371000, 30.926722, 38.945614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041064, 0.549396, -0.834552,
		-0.880273, -0.415042, -0.229914,
		-0.472688, 0.725192, 0.500662,
		30.229195, 31.144279, 39.095814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000542, 30.858452, 38.255859>,  <30.560076, 30.636644, 38.745350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000542, 30.858452, 38.255859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059023, 31.162916, 38.508606>,  <30.094110, 31.345594, 38.660255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059023, 31.162916, 38.508606>,  <30.000542, 30.858452, 38.255859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059023, 31.162916, 38.508606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019261, 0.640803, -0.767464,
		-0.989067, 0.100034, 0.108347,
		0.146202, 0.761160, 0.631871,
		30.102884, 31.391264, 38.698166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434763, 31.373161, 38.038231>,  <30.000542, 30.858452, 38.255859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434763, 31.373161, 38.038231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715584, 31.575951, 38.238274>,  <29.884077, 31.697624, 38.358299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715584, 31.575951, 38.238274>,  <29.434763, 31.373161, 38.038231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715584, 31.575951, 38.238274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057797, 0.740514, -0.669550,
		-0.709777, 0.441154, 0.549181,
		0.702052, 0.506973, 0.500102,
		29.926199, 31.728043, 38.388306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260593, 31.997627, 37.969467>,  <29.434763, 31.373161, 38.038231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260593, 31.997627, 37.969467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648895, 32.056263, 38.045513>,  <29.881878, 32.091446, 38.091141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648895, 32.056263, 38.045513>,  <29.260593, 31.997627, 37.969467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648895, 32.056263, 38.045513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010299, 0.816626, -0.577076,
		-0.239843, 0.558242, 0.794255,
		0.970757, 0.146588, 0.190113,
		29.940123, 32.100239, 38.102547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256119, 32.660892, 38.086956>,  <29.260593, 31.997627, 37.969467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256119, 32.660892, 38.086956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625788, 32.535568, 37.999561>,  <29.847589, 32.460373, 37.947124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625788, 32.535568, 37.999561>,  <29.256119, 32.660892, 38.086956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625788, 32.535568, 37.999561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083330, 0.723599, -0.685172,
		0.372770, 0.615012, 0.694840,
		0.924175, -0.313312, -0.218488,
		29.903040, 32.441574, 37.934013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674046, 33.243095, 38.068966>,  <29.256119, 32.660892, 38.086956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674046, 33.243095, 38.068966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887419, 32.982883, 37.852722>,  <30.015442, 32.826756, 37.722977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887419, 32.982883, 37.852722>,  <29.674046, 33.243095, 38.068966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887419, 32.982883, 37.852722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001263, 0.639750, -0.768582,
		0.845842, 0.409303, 0.342085,
		0.533432, -0.650531, -0.540610,
		30.047449, 32.787724, 37.690540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239960, 33.644836, 37.865173>,  <29.674046, 33.243095, 38.068966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239960, 33.644836, 37.865173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201439, 33.330967, 37.620220>,  <30.178326, 33.142643, 37.473248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201439, 33.330967, 37.620220>,  <30.239960, 33.644836, 37.865173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201439, 33.330967, 37.620220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153629, 0.619583, -0.769750,
		0.983425, 0.019950, -0.180216,
		-0.096302, -0.784677, -0.612378,
		30.172548, 33.095562, 37.436508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664541, 33.796349, 37.237129>,  <30.239960, 33.644836, 37.865173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664541, 33.796349, 37.237129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392000, 33.527782, 37.120537>,  <30.228476, 33.366642, 37.050583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392000, 33.527782, 37.120537>,  <30.664541, 33.796349, 37.237129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392000, 33.527782, 37.120537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337112, 0.641321, -0.689248,
		0.649711, -0.371353, -0.663305,
		-0.681345, -0.671420, -0.291485,
		30.187593, 33.326359, 37.033092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614758, 33.907814, 36.535751>,  <30.664541, 33.796349, 37.237129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614758, 33.907814, 36.535751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276299, 33.718414, 36.633598>,  <30.073223, 33.604774, 36.692307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276299, 33.718414, 36.633598>,  <30.614758, 33.907814, 36.535751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276299, 33.718414, 36.633598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517476, 0.620125, -0.589630,
		0.127495, -0.625497, -0.769739,
		-0.846146, -0.473496, 0.244617,
		30.022455, 33.576366, 36.706982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274681, 33.769394, 35.875320>,  <30.614758, 33.907814, 36.535751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274681, 33.769394, 35.875320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986584, 33.754433, 36.152405>,  <29.813725, 33.745457, 36.318657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986584, 33.754433, 36.152405>,  <30.274681, 33.769394, 35.875320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986584, 33.754433, 36.152405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586759, 0.565547, -0.579543,
		-0.370083, -0.823868, -0.429280,
		-0.720245, -0.037405, 0.692711,
		29.770510, 33.743210, 36.360218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708441, 33.721378, 35.447243>,  <30.274681, 33.769394, 35.875320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708441, 33.721378, 35.447243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535414, 33.779755, 35.803127>,  <29.431597, 33.814781, 36.016659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535414, 33.779755, 35.803127>,  <29.708441, 33.721378, 35.447243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535414, 33.779755, 35.803127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723747, 0.532265, -0.439186,
		-0.537657, -0.833904, -0.124617,
		-0.432568, 0.145940, 0.889712,
		29.405643, 33.823536, 36.070042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959396, 33.502495, 35.391117>,  <29.708441, 33.721378, 35.447243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959396, 33.502495, 35.391117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003857, 33.772999, 35.682407>,  <29.030533, 33.935303, 35.857182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003857, 33.772999, 35.682407>,  <28.959396, 33.502495, 35.391117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003857, 33.772999, 35.682407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679236, 0.586598, -0.441069,
		-0.725455, -0.445612, 0.524543,
		0.111150, 0.676263, 0.728226,
		29.037201, 33.975880, 35.900875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222567, 33.739651, 35.456249>,  <28.959396, 33.502495, 35.391117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222567, 33.739651, 35.456249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460449, 34.004097, 35.639225>,  <28.603180, 34.162766, 35.749008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460449, 34.004097, 35.639225>,  <28.222567, 33.739651, 35.456249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460449, 34.004097, 35.639225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674809, 0.719776, -0.162955,
		-0.436984, -0.211771, 0.874184,
		0.594708, 0.661116, 0.457436,
		28.638861, 34.202431, 35.776455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769217, 33.986134, 35.932400>,  <28.222567, 33.739651, 35.456249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769217, 33.986134, 35.932400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083769, 34.221813, 35.858162>,  <28.272501, 34.363220, 35.813618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083769, 34.221813, 35.858162>,  <27.769217, 33.986134, 35.932400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083769, 34.221813, 35.858162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616502, 0.729517, -0.296192,
		-0.039120, 0.347341, 0.936923,
		0.786381, 0.589202, -0.185598,
		28.319683, 34.398575, 35.802483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697609, 34.675121, 36.313946>,  <27.769217, 33.986134, 35.932400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697609, 34.675121, 36.313946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950712, 34.743587, 36.011868>,  <28.102575, 34.784668, 35.830620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950712, 34.743587, 36.011868>,  <27.697609, 34.675121, 36.313946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950712, 34.743587, 36.011868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609051, 0.712281, -0.348873,
		0.478195, 0.680704, 0.554951,
		0.632760, 0.171164, -0.755193,
		28.140541, 34.794937, 35.785309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593092, 35.361858, 36.208019>,  <27.697609, 34.675121, 36.313946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593092, 35.361858, 36.208019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773560, 35.221378, 35.879848>,  <27.881840, 35.137089, 35.682945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773560, 35.221378, 35.879848>,  <27.593092, 35.361858, 36.208019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773560, 35.221378, 35.879848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491069, 0.669924, -0.556824,
		0.745183, 0.654108, 0.129783,
		0.451168, -0.351204, -0.820429,
		27.908911, 35.116016, 35.633720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840496, 35.981136, 35.823978>,  <27.593092, 35.361858, 36.208019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840496, 35.981136, 35.823978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820948, 35.675327, 35.566883>,  <27.809217, 35.491840, 35.412624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820948, 35.675327, 35.566883>,  <27.840496, 35.981136, 35.823978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820948, 35.675327, 35.566883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618474, 0.528461, -0.581566,
		0.784284, 0.369094, -0.498667,
		-0.048874, -0.764525, -0.642739,
		27.806286, 35.445969, 35.374062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061493, 36.185402, 35.175526>,  <27.840496, 35.981136, 35.823978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061493, 36.185402, 35.175526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814985, 35.875637, 35.118252>,  <27.667080, 35.689777, 35.083889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814985, 35.875637, 35.118252>,  <28.061493, 36.185402, 35.175526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814985, 35.875637, 35.118252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541379, 0.548627, -0.637116,
		0.571949, -0.315111, -0.757350,
		-0.616265, -0.774412, -0.143193,
		27.630104, 35.643314, 35.075294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432138, 36.422901, 34.598980>,  <28.061493, 36.185402, 35.175526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432138, 36.422901, 34.598980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561954, 36.657131, 34.301853>,  <28.639845, 36.797668, 34.123577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561954, 36.657131, 34.301853>,  <28.432138, 36.422901, 34.598980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561954, 36.657131, 34.301853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728322, 0.346363, 0.591253,
		0.603507, -0.732894, -0.314078,
		0.324540, 0.585576, -0.742815,
		28.659317, 36.832806, 34.079010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080547, 36.159325, 34.621143>,  <28.432138, 36.422901, 34.598980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080547, 36.159325, 34.621143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095013, 36.522469, 34.454056>,  <29.103691, 36.740356, 34.353806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095013, 36.522469, 34.454056>,  <29.080547, 36.159325, 34.621143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095013, 36.522469, 34.454056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566586, 0.325690, 0.756905,
		0.823208, -0.264043, -0.502602,
		0.036163, 0.907858, -0.417714,
		29.105862, 36.794827, 34.328743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826006, 36.212494, 34.387928>,  <29.080547, 36.159325, 34.621143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826006, 36.212494, 34.387928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618614, 36.541061, 34.482964>,  <29.494179, 36.738201, 34.539986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618614, 36.541061, 34.482964>,  <29.826006, 36.212494, 34.387928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618614, 36.541061, 34.482964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618690, 0.168573, 0.767337,
		0.590254, 0.544843, -0.595606,
		-0.518481, 0.821419, 0.237589,
		29.463070, 36.787487, 34.554241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251347, 36.849655, 34.423847>,  <29.826006, 36.212494, 34.387928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251347, 36.849655, 34.423847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948252, 36.837086, 34.684566>,  <29.766394, 36.829544, 34.841000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948252, 36.837086, 34.684566>,  <30.251347, 36.849655, 34.423847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948252, 36.837086, 34.684566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642902, 0.135253, 0.753912,
		-0.111850, 0.990313, -0.082284,
		-0.757738, -0.031424, 0.651802,
		29.720930, 36.827660, 34.880108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325035, 37.459499, 34.920124>,  <30.251347, 36.849655, 34.423847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325035, 37.459499, 34.920124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139593, 37.137878, 35.069027>,  <30.028328, 36.944904, 35.158367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139593, 37.137878, 35.069027>,  <30.325035, 37.459499, 34.920124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139593, 37.137878, 35.069027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598859, 0.025299, 0.800455,
		-0.653024, 0.594022, 0.469784,
		-0.463603, -0.804051, 0.372256,
		30.000513, 36.896664, 35.180702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065287, 37.584862, 35.586117>,  <30.325035, 37.459499, 34.920124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065287, 37.584862, 35.586117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129004, 37.193184, 35.535839>,  <30.167234, 36.958176, 35.505672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129004, 37.193184, 35.535839>,  <30.065287, 37.584862, 35.586117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129004, 37.193184, 35.535839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622137, 0.000713, 0.782907,
		-0.766532, -0.202908, 0.609309,
		0.159293, -0.979198, -0.125690,
		30.176792, 36.899426, 35.498131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964138, 37.220066, 36.281113>,  <30.065287, 37.584862, 35.586117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964138, 37.220066, 36.281113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212029, 37.067253, 36.006889>,  <30.360764, 36.975567, 35.842358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212029, 37.067253, 36.006889>,  <29.964138, 37.220066, 36.281113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212029, 37.067253, 36.006889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763977, 0.093700, 0.638404,
		-0.179655, -0.919386, 0.349933,
		0.619728, -0.382033, -0.685556,
		30.397947, 36.952644, 35.801224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451496, 36.859661, 36.675926>,  <29.964138, 37.220066, 36.281113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451496, 36.859661, 36.675926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647562, 36.903660, 36.330063>,  <30.765202, 36.930061, 36.122543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647562, 36.903660, 36.330063>,  <30.451496, 36.859661, 36.675926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647562, 36.903660, 36.330063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871329, -0.035702, 0.489400,
		0.022963, -0.993290, -0.113345,
		0.490162, 0.109999, -0.864662,
		30.794611, 36.936661, 36.070663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981718, 36.396507, 36.727646>,  <30.451496, 36.859661, 36.675926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981718, 36.396507, 36.727646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081673, 36.641651, 36.427792>,  <31.141645, 36.788738, 36.247879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081673, 36.641651, 36.427792>,  <30.981718, 36.396507, 36.727646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081673, 36.641651, 36.427792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884924, 0.169698, 0.433718,
		0.393023, -0.771751, -0.499933,
		0.249885, 0.612864, -0.749637,
		31.156639, 36.825512, 36.202900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665461, 36.284077, 36.579773>,  <30.981718, 36.396507, 36.727646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665461, 36.284077, 36.579773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611208, 36.658421, 36.449688>,  <31.578657, 36.883026, 36.371635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611208, 36.658421, 36.449688>,  <31.665461, 36.284077, 36.579773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611208, 36.658421, 36.449688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827715, 0.287435, 0.481942,
		0.544510, -0.203819, -0.813614,
		-0.135632, 0.935863, -0.325215,
		31.570518, 36.939178, 36.352123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245548, 36.413998, 36.262173>,  <31.665461, 36.284077, 36.579773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245548, 36.413998, 36.262173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075779, 36.765579, 36.349174>,  <31.973917, 36.976528, 36.401375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075779, 36.765579, 36.349174>,  <32.245548, 36.413998, 36.262173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075779, 36.765579, 36.349174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838714, 0.291100, 0.460239,
		0.341212, 0.377762, -0.860738,
		-0.424422, 0.878952, 0.217508,
		31.948452, 37.029266, 36.414425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817116, 36.719452, 36.182163>,  <32.245548, 36.413998, 36.262173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817116, 36.719452, 36.182163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628689, 37.003555, 36.391399>,  <32.515633, 37.174019, 36.516941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628689, 37.003555, 36.391399>,  <32.817116, 36.719452, 36.182163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628689, 37.003555, 36.391399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823825, 0.142282, 0.548696,
		0.315291, 0.689408, -0.652156,
		-0.471066, 0.710262, 0.523091,
		32.487370, 37.216633, 36.548328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262714, 37.283836, 36.315552>,  <32.817116, 36.719452, 36.182163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262714, 37.283836, 36.315552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989075, 37.329781, 36.603668>,  <32.824890, 37.357346, 36.776539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989075, 37.329781, 36.603668>,  <33.262714, 37.283836, 36.315552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989075, 37.329781, 36.603668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729383, 0.103923, 0.676166,
		0.002809, 0.987931, -0.154869,
		-0.684100, 0.114858, 0.720288,
		32.783844, 37.364239, 36.819756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428303, 37.862656, 36.747368>,  <33.262714, 37.283836, 36.315552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428303, 37.862656, 36.747368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182323, 37.642426, 36.973186>,  <33.034737, 37.510288, 37.108677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182323, 37.642426, 36.973186>,  <33.428303, 37.862656, 36.747368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182323, 37.642426, 36.973186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580205, 0.168936, 0.796758,
		-0.534046, 0.817514, 0.215559,
		-0.614945, -0.550574, 0.564545,
		32.997841, 37.477253, 37.142551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343208, 38.213108, 37.445305>,  <33.428303, 37.862656, 36.747368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343208, 38.213108, 37.445305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232906, 37.837528, 37.527599>,  <33.166725, 37.612179, 37.576977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232906, 37.837528, 37.527599>,  <33.343208, 38.213108, 37.445305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232906, 37.837528, 37.527599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548185, 0.022200, 0.836063,
		-0.789589, 0.343334, 0.508597,
		-0.275758, -0.938951, 0.205739,
		33.150177, 37.555843, 37.589321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002407, 38.296631, 38.090313>,  <33.343208, 38.213108, 37.445305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002407, 38.296631, 38.090313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111351, 37.914749, 38.042381>,  <33.176716, 37.685619, 38.013622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111351, 37.914749, 38.042381>,  <33.002407, 38.296631, 38.090313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111351, 37.914749, 38.042381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466746, 0.022187, 0.884113,
		-0.841408, -0.296727, 0.451647,
		0.272361, -0.954704, -0.119828,
		33.193058, 37.628338, 38.006432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775425, 37.966003, 38.716164>,  <33.002407, 38.296631, 38.090313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775425, 37.966003, 38.716164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048454, 37.724224, 38.551853>,  <33.212273, 37.579155, 38.453266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048454, 37.724224, 38.551853>,  <32.775425, 37.966003, 38.716164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048454, 37.724224, 38.551853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439760, -0.109227, 0.891449,
		-0.583702, -0.789122, 0.191257,
		0.682571, -0.604448, -0.410780,
		33.253227, 37.542889, 38.428619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913216, 37.433002, 39.147186>,  <32.775425, 37.966003, 38.716164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913216, 37.433002, 39.147186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249996, 37.426666, 38.931458>,  <33.452065, 37.422867, 38.802021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249996, 37.426666, 38.931458>,  <32.913216, 37.433002, 39.147186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249996, 37.426666, 38.931458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539472, 0.006961, 0.841975,
		-0.009601, -0.999850, 0.014418,
		0.841949, -0.015862, -0.539324,
		33.502583, 37.421917, 38.769661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329411, 37.021545, 39.490589>,  <32.913216, 37.433002, 39.147186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329411, 37.021545, 39.490589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599812, 37.201553, 39.257179>,  <33.762051, 37.309559, 39.117134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599812, 37.201553, 39.257179>,  <33.329411, 37.021545, 39.490589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599812, 37.201553, 39.257179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660256, -0.018238, 0.750819,
		0.327244, -0.892831, -0.309459,
		0.675998, 0.450023, -0.583529,
		33.802612, 37.336559, 39.082119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918121, 36.606773, 39.409344>,  <33.329411, 37.021545, 39.490589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918121, 36.606773, 39.409344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034767, 36.982944, 39.339417>,  <34.104755, 37.208645, 39.297459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034767, 36.982944, 39.339417>,  <33.918121, 36.606773, 39.409344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034767, 36.982944, 39.339417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847626, -0.169363, 0.502838,
		0.443273, -0.294817, -0.846517,
		0.291613, 0.940425, -0.174821,
		34.122250, 37.265072, 39.286972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639500, 36.578384, 39.381248>,  <33.918121, 36.606773, 39.409344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639500, 36.578384, 39.381248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596432, 36.967136, 39.465019>,  <34.570591, 37.200386, 39.515282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596432, 36.967136, 39.465019>,  <34.639500, 36.578384, 39.381248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596432, 36.967136, 39.465019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644080, -0.092281, 0.759371,
		0.757343, 0.216652, -0.616031,
		-0.107672, 0.971877, 0.209430,
		34.564129, 37.258701, 39.527847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349155, 36.779469, 39.654110>,  <34.639500, 36.578384, 39.381248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349155, 36.779469, 39.654110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109028, 37.086327, 39.744537>,  <34.964951, 37.270443, 39.798794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109028, 37.086327, 39.744537>,  <35.349155, 36.779469, 39.654110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109028, 37.086327, 39.744537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509510, 0.148970, 0.847471,
		0.616457, 0.623935, -0.480298,
		-0.600317, 0.767146, 0.226067,
		34.928932, 37.316471, 39.812359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811188, 37.282845, 40.113892>,  <35.349155, 36.779469, 39.654110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811188, 37.282845, 40.113892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432117, 37.399452, 40.165928>,  <35.204674, 37.469418, 40.197151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432117, 37.399452, 40.165928>,  <35.811188, 37.282845, 40.113892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432117, 37.399452, 40.165928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194986, 0.205945, 0.958941,
		0.252755, 0.934133, -0.252011,
		-0.947679, 0.291516, 0.130090,
		35.147812, 37.486908, 40.204956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832821, 37.919338, 40.492367>,  <35.811188, 37.282845, 40.113892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832821, 37.919338, 40.492367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488823, 37.730171, 40.569061>,  <35.282425, 37.616673, 40.615078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488823, 37.730171, 40.569061>,  <35.832821, 37.919338, 40.492367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488823, 37.730171, 40.569061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126388, 0.166627, 0.977886,
		-0.494405, 0.865209, -0.083527,
		-0.859994, -0.472915, 0.191734,
		35.230824, 37.588295, 40.626583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408810, 38.221363, 41.042824>,  <35.832821, 37.919338, 40.492367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408810, 38.221363, 41.042824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248997, 37.854755, 41.050442>,  <35.153111, 37.634789, 41.055012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248997, 37.854755, 41.050442>,  <35.408810, 38.221363, 41.042824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248997, 37.854755, 41.050442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027931, 0.032938, 0.999067,
		-0.916294, 0.398627, -0.038759,
		-0.399532, -0.916521, 0.019046,
		35.129139, 37.579800, 41.056156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932926, 38.254196, 41.667015>,  <35.408810, 38.221363, 41.042824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932926, 38.254196, 41.667015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986149, 37.869041, 41.573074>,  <35.018082, 37.637951, 41.516712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986149, 37.869041, 41.573074>,  <34.932926, 38.254196, 41.667015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986149, 37.869041, 41.573074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065711, -0.245004, 0.967293,
		-0.988928, -0.113272, -0.095871,
		0.133056, -0.962882, -0.234848,
		35.026066, 37.580177, 41.502621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383686, 37.865589, 42.010418>,  <34.932926, 38.254196, 41.667015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383686, 37.865589, 42.010418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655663, 37.581268, 41.938370>,  <34.818848, 37.410675, 41.895142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655663, 37.581268, 41.938370>,  <34.383686, 37.865589, 42.010418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655663, 37.581268, 41.938370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039323, -0.280629, 0.959011,
		-0.732213, -0.644987, -0.218762,
		0.679940, -0.710802, -0.180118,
		34.859646, 37.368027, 41.884335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102623, 37.266739, 42.301411>,  <34.383686, 37.865589, 42.010418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102623, 37.266739, 42.301411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497730, 37.213657, 42.268673>,  <34.734795, 37.181808, 42.249031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497730, 37.213657, 42.268673>,  <34.102623, 37.266739, 42.301411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497730, 37.213657, 42.268673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038161, -0.303196, 0.952164,
		-0.151171, -0.943643, -0.294424,
		0.987771, -0.132704, -0.081845,
		34.794060, 37.173847, 42.244118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270935, 36.608227, 42.589077>,  <34.102623, 37.266739, 42.301411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270935, 36.608227, 42.589077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629227, 36.784882, 42.568615>,  <34.844204, 36.890877, 42.556339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629227, 36.784882, 42.568615>,  <34.270935, 36.608227, 42.589077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629227, 36.784882, 42.568615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244461, -0.393158, 0.886378,
		0.371349, -0.806463, -0.460128,
		0.895733, 0.441639, -0.051150,
		34.897945, 36.917374, 42.553268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802040, 36.030689, 42.792458>,  <34.270935, 36.608227, 42.589077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802040, 36.030689, 42.792458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995235, 36.375580, 42.853497>,  <35.111153, 36.582516, 42.890121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995235, 36.375580, 42.853497>,  <34.802040, 36.030689, 42.792458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995235, 36.375580, 42.853497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517606, -0.421701, 0.744481,
		0.706264, -0.280587, -0.649970,
		0.482985, 0.862229, 0.152599,
		35.140129, 36.634247, 42.899277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418194, 35.825985, 43.028439>,  <34.802040, 36.030689, 42.792458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418194, 35.825985, 43.028439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433578, 36.204941, 43.155544>,  <35.442810, 36.432312, 43.231808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433578, 36.204941, 43.155544>,  <35.418194, 35.825985, 43.028439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433578, 36.204941, 43.155544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372875, -0.308641, 0.875046,
		0.927084, 0.084835, -0.365128,
		0.038459, 0.947388, 0.317769,
		35.445118, 36.489159, 43.250874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069752, 35.989822, 43.284199>,  <35.418194, 35.825985, 43.028439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069752, 35.989822, 43.284199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850048, 36.277515, 43.454384>,  <35.718227, 36.450130, 43.556496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850048, 36.277515, 43.454384>,  <36.069752, 35.989822, 43.284199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850048, 36.277515, 43.454384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392835, -0.227142, 0.891115,
		0.737562, 0.656588, -0.157781,
		-0.549257, 0.719235, 0.425462,
		35.685272, 36.493286, 43.582024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530502, 36.268639, 43.831791>,  <36.069752, 35.989822, 43.284199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530502, 36.268639, 43.831791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151516, 36.363380, 43.917770>,  <35.924122, 36.420223, 43.969357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151516, 36.363380, 43.917770>,  <36.530502, 36.268639, 43.831791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151516, 36.363380, 43.917770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179465, -0.162608, 0.970232,
		0.264755, 0.957841, 0.111559,
		-0.947469, 0.236853, 0.214950,
		35.867275, 36.434437, 43.982254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533180, 36.674271, 44.481697>,  <36.530502, 36.268639, 43.831791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533180, 36.674271, 44.481697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156693, 36.540924, 44.459885>,  <35.930801, 36.460915, 44.446796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156693, 36.540924, 44.459885>,  <36.533180, 36.674271, 44.481697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156693, 36.540924, 44.459885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037172, -0.058229, 0.997611,
		-0.335748, 0.940996, 0.042414,
		-0.941218, -0.333370, -0.054529,
		35.874329, 36.440914, 44.443527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105965, 37.170898, 44.930080>,  <36.533180, 36.674271, 44.481697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105965, 37.170898, 44.930080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882816, 36.840206, 44.900963>,  <35.748928, 36.641792, 44.883492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882816, 36.840206, 44.900963>,  <36.105965, 37.170898, 44.930080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882816, 36.840206, 44.900963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087675, -0.028518, 0.995741,
		-0.825287, 0.561873, -0.056575,
		-0.557866, -0.826732, -0.072798,
		35.715458, 36.592186, 44.879124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472908, 37.223183, 45.364105>,  <36.105965, 37.170898, 44.930080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472908, 37.223183, 45.364105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557159, 36.836323, 45.307178>,  <35.607708, 36.604206, 45.273022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557159, 36.836323, 45.307178>,  <35.472908, 37.223183, 45.364105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557159, 36.836323, 45.307178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220123, -0.188761, 0.957035,
		-0.952462, -0.170248, -0.252650,
		0.210624, -0.967153, -0.142312,
		35.620346, 36.546177, 45.264484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930424, 36.847382, 45.690395>,  <35.472908, 37.223183, 45.364105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930424, 36.847382, 45.690395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240154, 36.595325, 45.667274>,  <35.425995, 36.444092, 45.653404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240154, 36.595325, 45.667274>,  <34.930424, 36.847382, 45.690395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240154, 36.595325, 45.667274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202833, -0.333688, 0.920604,
		-0.599393, -0.701128, -0.386197,
		0.774330, -0.630137, -0.057798,
		35.472454, 36.406284, 45.649937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757767, 36.386021, 46.187756>,  <34.930424, 36.847382, 45.690395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757767, 36.386021, 46.187756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124763, 36.254284, 46.098537>,  <35.344959, 36.175240, 46.045006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124763, 36.254284, 46.098537>,  <34.757767, 36.386021, 46.187756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124763, 36.254284, 46.098537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043287, -0.474742, 0.879060,
		-0.395400, -0.816182, -0.421314,
		0.917489, -0.329343, -0.223043,
		35.400009, 36.155479, 46.031624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773869, 35.663445, 46.187721>,  <34.757767, 36.386021, 46.187756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773869, 35.663445, 46.187721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145977, 35.792057, 46.258396>,  <35.369240, 35.869225, 46.300800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145977, 35.792057, 46.258396>,  <34.773869, 35.663445, 46.187721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145977, 35.792057, 46.258396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002750, -0.487688, 0.873014,
		0.366868, -0.811652, -0.454565,
		0.930269, 0.321531, 0.176685,
		35.425056, 35.888515, 46.311401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027027, 35.074455, 46.468597>,  <34.773869, 35.663445, 46.187721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027027, 35.074455, 46.468597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305260, 35.348370, 46.555531>,  <35.472198, 35.512718, 46.607693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305260, 35.348370, 46.555531>,  <35.027027, 35.074455, 46.468597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305260, 35.348370, 46.555531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117354, -0.406740, 0.905975,
		0.708802, -0.604671, -0.363282,
		0.695578, 0.684789, 0.217337,
		35.513931, 35.553806, 46.620731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620975, 34.766521, 46.782230>,  <35.027027, 35.074455, 46.468597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620975, 34.766521, 46.782230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609032, 35.140491, 46.923660>,  <35.601864, 35.364876, 47.008518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609032, 35.140491, 46.923660>,  <35.620975, 34.766521, 46.782230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609032, 35.140491, 46.923660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059191, -0.354769, 0.933079,
		0.997800, 0.006931, 0.065932,
		-0.029858, 0.934928, 0.353578,
		35.600075, 35.420971, 47.029732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156898, 34.818859, 47.307747>,  <35.620975, 34.766521, 46.782230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156898, 34.818859, 47.307747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827423, 35.042732, 47.344154>,  <35.629738, 35.177055, 47.366001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827423, 35.042732, 47.344154>,  <36.156898, 34.818859, 47.307747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827423, 35.042732, 47.344154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221297, -0.465084, 0.857161,
		0.522073, 0.685893, 0.506943,
		-0.823691, 0.559686, 0.091021,
		35.580315, 35.210636, 47.371460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191669, 35.203468, 47.892673>,  <36.156898, 34.818859, 47.307747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191669, 35.203468, 47.892673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804916, 35.148029, 47.806953>,  <35.572865, 35.114765, 47.755524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804916, 35.148029, 47.806953>,  <36.191669, 35.203468, 47.892673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804916, 35.148029, 47.806953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125211, -0.474066, 0.871541,
		-0.222384, 0.869512, 0.441014,
		-0.966886, -0.138597, -0.214298,
		35.514851, 35.106449, 47.742664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906982, 35.255730, 48.512875>,  <36.191669, 35.203468, 47.892673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906982, 35.255730, 48.512875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613445, 35.102428, 48.288521>,  <35.437325, 35.010448, 48.153908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613445, 35.102428, 48.288521>,  <35.906982, 35.255730, 48.512875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613445, 35.102428, 48.288521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408093, -0.411359, 0.815012,
		-0.543079, 0.826985, 0.145471,
		-0.733843, -0.383250, -0.560887,
		35.393291, 34.987453, 48.120255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336983, 35.347862, 48.932369>,  <35.906982, 35.255730, 48.512875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336983, 35.347862, 48.932369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216923, 35.065098, 48.676186>,  <35.144886, 34.895439, 48.522476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216923, 35.065098, 48.676186>,  <35.336983, 35.347862, 48.932369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216923, 35.065098, 48.676186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404289, -0.513850, 0.756643,
		-0.863979, 0.486037, -0.131565,
		-0.300152, -0.706913, -0.640455,
		35.126877, 34.853024, 48.484051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758827, 35.151546, 49.162949>,  <35.336983, 35.347862, 48.932369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758827, 35.151546, 49.162949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835850, 34.852612, 48.908573>,  <34.882061, 34.673252, 48.755947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835850, 34.852612, 48.908573>,  <34.758827, 35.151546, 49.162949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835850, 34.852612, 48.908573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366929, -0.655888, 0.659677,
		-0.910102, 0.106321, -0.400512,
		0.192554, -0.747333, -0.635938,
		34.893616, 34.628410, 48.717793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233051, 34.661736, 49.306164>,  <34.758827, 35.151546, 49.162949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233051, 34.661736, 49.306164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514164, 34.441982, 49.125374>,  <34.682831, 34.310131, 49.016899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514164, 34.441982, 49.125374>,  <34.233051, 34.661736, 49.306164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514164, 34.441982, 49.125374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118735, -0.716996, 0.686891,
		-0.701420, -0.429075, -0.569127,
		0.702789, -0.549374, -0.451969,
		34.724998, 34.277168, 48.989780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000229, 34.066315, 49.118267>,  <34.233051, 34.661736, 49.306164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000229, 34.066315, 49.118267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390221, 34.052650, 49.206127>,  <34.624218, 34.044453, 49.258842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390221, 34.052650, 49.206127>,  <34.000229, 34.066315, 49.118267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390221, 34.052650, 49.206127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187424, -0.657614, 0.729668,
		0.119517, -0.752580, -0.647564,
		0.974981, -0.034161, 0.219648,
		34.682716, 34.042400, 49.272022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264416, 33.356152, 49.138241>,  <34.000229, 34.066315, 49.118267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264416, 33.356152, 49.138241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482216, 33.588501, 49.380268>,  <34.612896, 33.727909, 49.525486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482216, 33.588501, 49.380268>,  <34.264416, 33.356152, 49.138241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482216, 33.588501, 49.380268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261013, -0.568221, 0.780383,
		0.797113, -0.582851, -0.157782,
		0.544502, 0.580870, 0.605068,
		34.645565, 33.762760, 49.561787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803360, 32.822113, 49.406250>,  <34.264416, 33.356152, 49.138241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803360, 32.822113, 49.406250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708328, 33.131477, 49.641331>,  <34.651310, 33.317097, 49.782379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708328, 33.131477, 49.641331>,  <34.803360, 32.822113, 49.406250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708328, 33.131477, 49.641331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404940, -0.628804, 0.663799,
		0.882937, -0.080276, 0.462578,
		-0.237584, 0.773409, 0.587701,
		34.637054, 33.363499, 49.817642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283855, 32.817097, 49.982800>,  <34.803360, 32.822113, 49.406250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283855, 32.817097, 49.982800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905296, 32.936111, 50.033073>,  <34.678162, 33.007519, 50.063236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905296, 32.936111, 50.033073>,  <35.283855, 32.817097, 49.982800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905296, 32.936111, 50.033073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177533, -0.804261, 0.567139,
		0.269828, 0.514428, 0.813976,
		-0.946401, 0.297537, 0.125685,
		34.621376, 33.025372, 50.070778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882816, 33.236889, 50.299053>,  <35.283855, 32.817097, 49.982800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882816, 33.236889, 50.299053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217110, 33.019535, 50.267323>,  <36.417686, 32.889122, 50.248283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217110, 33.019535, 50.267323>,  <35.882816, 33.236889, 50.299053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217110, 33.019535, 50.267323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033769, 0.093324, -0.995063,
		0.548102, 0.834282, 0.059644,
		0.835730, -0.543382, -0.079324,
		36.467827, 32.856522, 50.243526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267452, 33.486164, 49.746925>,  <35.882816, 33.236889, 50.299053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267452, 33.486164, 49.746925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457367, 33.134960, 49.771194>,  <36.571316, 32.924240, 49.785755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457367, 33.134960, 49.771194>,  <36.267452, 33.486164, 49.746925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457367, 33.134960, 49.771194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158987, 0.017763, -0.987121,
		0.865621, 0.478319, 0.148026,
		0.474788, -0.878007, 0.060670,
		36.599804, 32.871559, 49.789394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979668, 33.492100, 49.486465>,  <36.267452, 33.486164, 49.746925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979668, 33.492100, 49.486465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810097, 33.133423, 49.435509>,  <36.708355, 32.918217, 49.404934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810097, 33.133423, 49.435509>,  <36.979668, 33.492100, 49.486465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810097, 33.133423, 49.435509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300813, -0.006730, -0.953659,
		0.854280, -0.442607, 0.272589,
		-0.423931, -0.896690, -0.127393,
		36.682919, 32.864414, 49.397289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415417, 32.870918, 49.258091>,  <36.979668, 33.492100, 49.486465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415417, 32.870918, 49.258091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049831, 32.793320, 49.115520>,  <36.830479, 32.746761, 49.029980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049831, 32.793320, 49.115520>,  <37.415417, 32.870918, 49.258091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049831, 32.793320, 49.115520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402162, -0.315666, -0.859430,
		0.054213, -0.928828, 0.366524,
		-0.913962, -0.193994, -0.356426,
		36.775642, 32.735123, 49.008595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351585, 32.190857, 49.008720>,  <37.415417, 32.870918, 49.258091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351585, 32.190857, 49.008720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079182, 32.408039, 48.812180>,  <36.915741, 32.538349, 48.694256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079182, 32.408039, 48.812180>,  <37.351585, 32.190857, 49.008720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079182, 32.408039, 48.812180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427151, -0.250468, -0.868797,
		-0.594786, -0.801539, -0.061353,
		-0.681008, 0.542955, -0.491353,
		36.874878, 32.570927, 48.664772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068390, 31.781574, 48.465992>,  <37.351585, 32.190857, 49.008720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068390, 31.781574, 48.465992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993526, 32.164856, 48.379440>,  <36.948608, 32.394825, 48.327511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993526, 32.164856, 48.379440>,  <37.068390, 31.781574, 48.465992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993526, 32.164856, 48.379440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393235, -0.128774, -0.910376,
		-0.900189, -0.255470, -0.352698,
		-0.187156, 0.958203, -0.216380,
		36.937378, 32.452316, 48.314526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717167, 31.762774, 47.867428>,  <37.068390, 31.781574, 48.465992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717167, 31.762774, 47.867428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927174, 32.101543, 47.901073>,  <37.053177, 32.304806, 47.921261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927174, 32.101543, 47.901073>,  <36.717167, 31.762774, 47.867428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927174, 32.101543, 47.901073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393367, -0.153828, -0.906421,
		-0.754732, 0.508973, -0.413915,
		0.525016, 0.846926, 0.084114,
		37.084679, 32.355621, 47.926308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196777, 31.553972, 48.497395>,  <36.717167, 31.762774, 47.867428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196777, 31.553972, 48.497395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211216, 31.952408, 48.529648>,  <36.219879, 32.191471, 48.549000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211216, 31.952408, 48.529648>,  <36.196777, 31.553972, 48.497395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211216, 31.952408, 48.529648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198573, 0.086229, -0.976285,
		-0.979421, 0.019229, 0.200909,
		0.036097, 0.996090, 0.080636,
		36.222046, 32.251236, 48.553837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952499, 31.790438, 47.835880>,  <36.196777, 31.553972, 48.497395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952499, 31.790438, 47.835880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097145, 32.140083, 47.965591>,  <36.183933, 32.349873, 48.043419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097145, 32.140083, 47.965591>,  <35.952499, 31.790438, 47.835880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097145, 32.140083, 47.965591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182638, 0.407492, -0.894759,
		-0.914264, 0.264332, 0.307001,
		0.361614, 0.874116, 0.324278,
		36.205627, 32.402317, 48.062874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478798, 32.326550, 47.555225>,  <35.952499, 31.790438, 47.835880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478798, 32.326550, 47.555225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840065, 32.477589, 47.636906>,  <36.056828, 32.568211, 47.685913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840065, 32.477589, 47.636906>,  <35.478798, 32.326550, 47.555225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840065, 32.477589, 47.636906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084085, 0.310864, -0.946728,
		-0.420963, 0.872229, 0.249013,
		0.903172, 0.377599, 0.204204,
		36.111015, 32.590870, 47.698166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417976, 32.993771, 47.361427>,  <35.478798, 32.326550, 47.555225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417976, 32.993771, 47.361427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811890, 32.926888, 47.342457>,  <36.048237, 32.886757, 47.331074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811890, 32.926888, 47.342457>,  <35.417976, 32.993771, 47.361427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811890, 32.926888, 47.342457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034553, 0.455790, -0.889417,
		0.170331, 0.874242, 0.454630,
		0.984781, -0.167204, -0.047427,
		36.107323, 32.876728, 47.328228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604015, 33.498634, 46.854042>,  <35.417976, 32.993771, 47.361427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604015, 33.498634, 46.854042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896301, 33.227665, 46.887894>,  <36.071671, 33.065083, 46.908207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896301, 33.227665, 46.887894>,  <35.604015, 33.498634, 46.854042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896301, 33.227665, 46.887894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276828, 0.180697, -0.943777,
		0.624041, 0.713057, 0.319566,
		0.730711, -0.677421, 0.084631,
		36.115513, 33.024437, 46.913284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188839, 33.796864, 46.665367>,  <35.604015, 33.498634, 46.854042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188839, 33.796864, 46.665367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264553, 33.408749, 46.605080>,  <36.309982, 33.175880, 46.568909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264553, 33.408749, 46.605080>,  <36.188839, 33.796864, 46.665367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264553, 33.408749, 46.605080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259028, 0.197397, -0.945484,
		0.947140, 0.139929, 0.288696,
		0.189288, -0.970286, -0.150717,
		36.321339, 33.117664, 46.559864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940254, 33.758762, 46.423073>,  <36.188839, 33.796864, 46.665367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940254, 33.758762, 46.423073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724304, 33.454670, 46.278530>,  <36.594734, 33.272213, 46.191803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724304, 33.454670, 46.278530>,  <36.940254, 33.758762, 46.423073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724304, 33.454670, 46.278530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454940, 0.097657, -0.885151,
		0.708210, -0.642269, 0.293138,
		-0.539878, -0.760233, -0.361355,
		36.562340, 33.226601, 46.170124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479973, 33.373890, 46.084480>,  <36.940254, 33.758762, 46.423073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479973, 33.373890, 46.084480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136116, 33.212444, 45.959190>,  <36.929802, 33.115578, 45.884018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136116, 33.212444, 45.959190>,  <37.479973, 33.373890, 46.084480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136116, 33.212444, 45.959190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388163, -0.117358, -0.914088,
		0.332179, -0.907371, 0.257554,
		-0.859643, -0.403614, -0.313224,
		36.878223, 33.091362, 45.865223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679344, 32.947018, 45.562767>,  <37.479973, 33.373890, 46.084480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679344, 32.947018, 45.562767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288750, 32.972694, 45.480453>,  <37.054394, 32.988102, 45.431065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288750, 32.972694, 45.480453>,  <37.679344, 32.947018, 45.562767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288750, 32.972694, 45.480453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198603, -0.103287, -0.974622,
		-0.083812, -0.992579, 0.088111,
		-0.976489, 0.064186, -0.205786,
		36.995804, 32.991951, 45.418716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582066, 32.410732, 45.011036>,  <37.679344, 32.947018, 45.562767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582066, 32.410732, 45.011036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277302, 32.669468, 44.997799>,  <37.094444, 32.824707, 44.989857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277302, 32.669468, 44.997799>,  <37.582066, 32.410732, 45.011036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277302, 32.669468, 44.997799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035389, -0.009442, -0.999329,
		-0.646716, -0.762570, -0.015697,
		-0.761910, 0.646838, -0.033093,
		37.048729, 32.863518, 44.987869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265545, 32.159046, 44.499245>,  <37.582066, 32.410732, 45.011036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265545, 32.159046, 44.499245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082054, 32.513306, 44.528103>,  <36.971962, 32.725861, 44.545418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082054, 32.513306, 44.528103>,  <37.265545, 32.159046, 44.499245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082054, 32.513306, 44.528103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101110, 0.028644, -0.994463,
		-0.882808, -0.463478, 0.076408,
		-0.458723, 0.885646, 0.072149,
		36.944439, 32.778999, 44.549747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703606, 32.135090, 44.067478>,  <37.265545, 32.159046, 44.499245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703606, 32.135090, 44.067478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780430, 32.524868, 44.114075>,  <36.826523, 32.758736, 44.142033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780430, 32.524868, 44.114075>,  <36.703606, 32.135090, 44.067478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780430, 32.524868, 44.114075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193804, 0.154023, -0.968874,
		-0.962057, 0.163503, 0.218432,
		0.192057, 0.974445, 0.116492,
		36.838047, 32.817200, 44.149021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205036, 32.428921, 43.746494>,  <36.703606, 32.135090, 44.067478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205036, 32.428921, 43.746494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466705, 32.731247, 43.757877>,  <36.623707, 32.912643, 43.764706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466705, 32.731247, 43.757877>,  <36.205036, 32.428921, 43.746494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466705, 32.731247, 43.757877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236671, 0.240284, -0.941409,
		-0.718366, 0.609107, 0.336065,
		0.654169, 0.755813, 0.028454,
		36.662956, 32.957993, 43.766415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867958, 32.952282, 43.526489>,  <36.205036, 32.428921, 43.746494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867958, 32.952282, 43.526489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247135, 33.078438, 43.508904>,  <36.474640, 33.154133, 43.498352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247135, 33.078438, 43.508904>,  <35.867958, 32.952282, 43.526489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247135, 33.078438, 43.508904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216973, 0.538659, -0.814107,
		-0.233080, 0.781266, 0.579049,
		0.947943, 0.315390, -0.043963,
		36.531517, 33.173054, 43.495716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970158, 33.691681, 43.629436>,  <35.867958, 32.952282, 43.526489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970158, 33.691681, 43.629436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260559, 33.553616, 43.391518>,  <36.434799, 33.470776, 43.248764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260559, 33.553616, 43.391518>,  <35.970158, 33.691681, 43.629436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260559, 33.553616, 43.391518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358717, 0.547852, -0.755764,
		0.586725, 0.762049, 0.273924,
		0.726000, -0.345165, -0.594799,
		36.478359, 33.450066, 43.213078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143898, 34.239750, 43.258934>,  <35.970158, 33.691681, 43.629436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143898, 34.239750, 43.258934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313381, 33.947639, 43.044582>,  <36.415070, 33.772373, 42.915970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313381, 33.947639, 43.044582>,  <36.143898, 34.239750, 43.258934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313381, 33.947639, 43.044582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254592, 0.471749, -0.844177,
		0.869285, 0.494114, 0.013961,
		0.423706, -0.730276, -0.535882,
		36.440495, 33.728558, 42.883820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380726, 34.577312, 42.738705>,  <36.143898, 34.239750, 43.258934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380726, 34.577312, 42.738705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390411, 34.197491, 42.613644>,  <36.396225, 33.969597, 42.538609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390411, 34.197491, 42.613644>,  <36.380726, 34.577312, 42.738705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390411, 34.197491, 42.613644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329450, 0.287694, -0.899275,
		0.943862, 0.124782, -0.305864,
		0.024218, -0.949558, -0.312653,
		36.397678, 33.912624, 42.519848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575443, 34.671803, 42.052292>,  <36.380726, 34.577312, 42.738705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575443, 34.671803, 42.052292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425900, 34.301304, 42.071415>,  <36.336174, 34.079002, 42.082890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425900, 34.301304, 42.071415>,  <36.575443, 34.671803, 42.052292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425900, 34.301304, 42.071415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454520, 0.138041, -0.879975,
		0.808479, -0.350718, -0.472608,
		-0.373863, -0.926251, 0.047805,
		36.313740, 34.023430, 42.085758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574669, 34.372005, 41.276428>,  <36.575443, 34.671803, 42.052292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574669, 34.372005, 41.276428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308830, 34.164238, 41.491280>,  <36.149326, 34.039577, 41.620190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308830, 34.164238, 41.491280>,  <36.574669, 34.372005, 41.276428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308830, 34.164238, 41.491280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639517, 0.023655, -0.768413,
		0.386424, -0.854191, -0.347899,
		-0.664601, -0.519421, 0.537129,
		36.109451, 34.008411, 41.652420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437870, 33.739445, 40.880424>,  <36.574669, 34.372005, 41.276428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437870, 33.739445, 40.880424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123322, 33.823101, 41.112934>,  <35.934593, 33.873295, 41.252441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123322, 33.823101, 41.112934>,  <36.437870, 33.739445, 40.880424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123322, 33.823101, 41.112934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617667, -0.250123, -0.745604,
		-0.010544, -0.945357, 0.325868,
		-0.786369, 0.209139, 0.581279,
		35.887409, 33.885841, 41.287319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865395, 33.303288, 40.723499>,  <36.437870, 33.739445, 40.880424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865395, 33.303288, 40.723499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661079, 33.579746, 40.928017>,  <35.538490, 33.745621, 41.050728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661079, 33.579746, 40.928017>,  <35.865395, 33.303288, 40.723499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661079, 33.579746, 40.928017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767141, -0.097966, -0.633954,
		-0.388066, -0.716044, 0.580246,
		-0.510783, 0.691147, 0.511290,
		35.507843, 33.787090, 41.081402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213505, 33.050076, 40.898136>,  <35.865395, 33.303288, 40.723499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213505, 33.050076, 40.898136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180538, 33.448185, 40.877571>,  <35.160759, 33.687050, 40.865234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180538, 33.448185, 40.877571>,  <35.213505, 33.050076, 40.898136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180538, 33.448185, 40.877571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818487, -0.097030, -0.566272,
		-0.568582, -0.004596, 0.822614,
		-0.082421, 0.995271, -0.051408,
		35.155811, 33.746765, 40.862148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449959, 33.211941, 40.963169>,  <35.213505, 33.050076, 40.898136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449959, 33.211941, 40.963169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622349, 33.537495, 40.807301>,  <34.725784, 33.732826, 40.713779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622349, 33.537495, 40.807301>,  <34.449959, 33.211941, 40.963169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622349, 33.537495, 40.807301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755074, 0.088821, -0.649596,
		-0.494088, 0.574191, 0.652826,
		0.430976, 0.813890, -0.389671,
		34.751640, 33.781662, 40.690399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835171, 33.746834, 40.831181>,  <34.449959, 33.211941, 40.963169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835171, 33.746834, 40.831181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142681, 33.879837, 40.612671>,  <34.327187, 33.959641, 40.481564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142681, 33.879837, 40.612671>,  <33.835171, 33.746834, 40.831181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142681, 33.879837, 40.612671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631169, 0.256940, -0.731852,
		-0.102986, 0.907425, 0.407398,
		0.768778, 0.332508, -0.546277,
		34.373314, 33.979588, 40.448788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608551, 34.230495, 40.431652>,  <33.835171, 33.746834, 40.831181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608551, 34.230495, 40.431652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953636, 34.189480, 40.233578>,  <34.160686, 34.164871, 40.114731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953636, 34.189480, 40.233578>,  <33.608551, 34.230495, 40.431652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953636, 34.189480, 40.233578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446412, 0.305623, -0.841018,
		0.237576, 0.946616, 0.217892,
		0.862713, -0.102536, -0.495190,
		34.212452, 34.158718, 40.085022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557228, 34.759403, 39.835106>,  <33.608551, 34.230495, 40.431652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557228, 34.759403, 39.835106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832947, 34.503529, 39.699062>,  <33.998379, 34.350002, 39.617435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832947, 34.503529, 39.699062>,  <33.557228, 34.759403, 39.835106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832947, 34.503529, 39.699062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372568, 0.089632, -0.923666,
		0.621344, 0.763389, -0.176545,
		0.689293, -0.639690, -0.340107,
		34.039734, 34.311623, 39.597031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853794, 35.113026, 39.233673>,  <33.557228, 34.759403, 39.835106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853794, 35.113026, 39.233673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944313, 34.724953, 39.198959>,  <33.998627, 34.492107, 39.178131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944313, 34.724953, 39.198959>,  <33.853794, 35.113026, 39.233673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944313, 34.724953, 39.198959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236725, 0.031647, -0.971061,
		0.944854, 0.240295, -0.222505,
		0.226300, -0.970184, -0.086785,
		34.012203, 34.433899, 39.172924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342903, 35.043163, 38.647728>,  <33.853794, 35.113026, 39.233673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342903, 35.043163, 38.647728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158806, 34.690655, 38.690701>,  <34.048347, 34.479149, 38.716484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158806, 34.690655, 38.690701>,  <34.342903, 35.043163, 38.647728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158806, 34.690655, 38.690701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198613, -0.015733, -0.979952,
		0.865292, -0.472352, -0.167791,
		-0.460243, -0.881270, 0.107428,
		34.020733, 34.426273, 38.722931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416584, 34.826950, 38.044106>,  <34.342903, 35.043163, 38.647728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416584, 34.826950, 38.044106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139549, 34.577351, 38.188854>,  <33.973328, 34.427589, 38.275703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139549, 34.577351, 38.188854>,  <34.416584, 34.826950, 38.044106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139549, 34.577351, 38.188854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351572, -0.146033, -0.924701,
		0.629860, -0.767656, -0.118241,
		-0.692585, -0.624002, 0.361867,
		33.931774, 34.390148, 38.297413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566547, 34.343410, 37.700459>,  <34.416584, 34.826950, 38.044106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566547, 34.343410, 37.700459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193428, 34.298210, 37.837345>,  <33.969555, 34.271088, 37.919476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193428, 34.298210, 37.837345>,  <34.566547, 34.343410, 37.700459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193428, 34.298210, 37.837345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340148, -0.037722, -0.939615,
		0.119092, -0.992878, -0.003252,
		-0.932801, -0.113007, 0.342218,
		33.913589, 34.264309, 37.940010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290012, 33.717873, 37.396828>,  <34.566547, 34.343410, 37.700459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290012, 33.717873, 37.396828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978535, 33.941730, 37.510265>,  <33.791649, 34.076046, 37.578327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978535, 33.941730, 37.510265>,  <34.290012, 33.717873, 37.396828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978535, 33.941730, 37.510265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311824, 0.047012, -0.948976,
		-0.544422, -0.827398, 0.137903,
		-0.778698, 0.559645, 0.283597,
		33.744926, 34.109623, 37.595345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827396, 33.462193, 37.020966>,  <34.290012, 33.717873, 37.396828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827396, 33.462193, 37.020966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677174, 33.824333, 37.100262>,  <33.587040, 34.041618, 37.147839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677174, 33.824333, 37.100262>,  <33.827396, 33.462193, 37.020966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677174, 33.824333, 37.100262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463185, 0.001922, -0.886260,
		-0.802757, -0.424660, 0.418623,
		-0.375555, 0.905351, 0.198239,
		33.564507, 34.095940, 37.159733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111816, 33.449570, 36.753426>,  <33.827396, 33.462193, 37.020966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111816, 33.449570, 36.753426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191792, 33.837425, 36.809761>,  <33.239777, 34.070137, 36.843563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191792, 33.837425, 36.809761>,  <33.111816, 33.449570, 36.753426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191792, 33.837425, 36.809761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452055, 0.218813, -0.864735,
		-0.869294, 0.109223, 0.482077,
		0.199934, 0.969635, 0.140838,
		33.251770, 34.128315, 36.852013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429661, 33.909794, 36.772324>,  <33.111816, 33.449570, 36.753426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429661, 33.909794, 36.772324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735645, 34.147099, 36.672024>,  <32.919235, 34.289482, 36.611843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735645, 34.147099, 36.672024>,  <32.429661, 33.909794, 36.772324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735645, 34.147099, 36.672024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408055, 0.145192, -0.901338,
		-0.498321, 0.791810, 0.353149,
		0.764963, 0.593260, -0.250750,
		32.965134, 34.325077, 36.596798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141571, 34.492001, 36.391460>,  <32.429661, 33.909794, 36.772324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141571, 34.492001, 36.391460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520744, 34.563911, 36.286320>,  <32.748249, 34.607059, 36.223236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520744, 34.563911, 36.286320>,  <32.141571, 34.492001, 36.391460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520744, 34.563911, 36.286320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298493, 0.213957, -0.930121,
		-0.110976, 0.960157, 0.256481,
		0.947938, 0.179779, -0.262856,
		32.805126, 34.617844, 36.207462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197830, 35.114334, 36.058479>,  <32.141571, 34.492001, 36.391460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197830, 35.114334, 36.058479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535988, 34.956444, 35.914532>,  <32.738884, 34.861710, 35.828163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535988, 34.956444, 35.914532>,  <32.197830, 35.114334, 36.058479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535988, 34.956444, 35.914532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302992, 0.200467, -0.931670,
		0.439893, 0.896664, 0.049875,
		0.845393, -0.394723, -0.359866,
		32.789604, 34.838028, 35.806572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519131, 35.688267, 35.614670>,  <32.197830, 35.114334, 36.058479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519131, 35.688267, 35.614670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681278, 35.335613, 35.518005>,  <32.778564, 35.124020, 35.460007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681278, 35.335613, 35.518005>,  <32.519131, 35.688267, 35.614670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681278, 35.335613, 35.518005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119954, 0.313371, -0.942024,
		0.906250, 0.352876, 0.232785,
		0.405366, -0.881633, -0.241664,
		32.802887, 35.071125, 35.445507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976009, 35.817352, 35.193935>,  <32.519131, 35.688267, 35.614670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976009, 35.817352, 35.193935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900986, 35.435097, 35.103096>,  <32.855972, 35.205742, 35.048592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900986, 35.435097, 35.103096>,  <32.976009, 35.817352, 35.193935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900986, 35.435097, 35.103096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181130, 0.193588, -0.964218,
		0.965408, -0.221983, 0.136786,
		-0.187560, -0.955640, -0.227099,
		32.844719, 35.148403, 35.034966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522491, 35.571320, 34.776955>,  <32.976009, 35.817352, 35.193935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522491, 35.571320, 34.776955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207100, 35.337345, 34.700905>,  <33.017864, 35.196960, 34.655273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207100, 35.337345, 34.700905>,  <33.522491, 35.571320, 34.776955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207100, 35.337345, 34.700905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130538, 0.142924, -0.981087,
		0.601047, -0.798387, -0.036336,
		-0.788481, -0.584936, -0.190124,
		32.970554, 35.161865, 34.643867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617680, 35.308250, 34.169224>,  <33.522491, 35.571320, 34.776955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617680, 35.308250, 34.169224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225845, 35.229355, 34.184746>,  <32.990746, 35.182018, 34.194057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225845, 35.229355, 34.184746>,  <33.617680, 35.308250, 34.169224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225845, 35.229355, 34.184746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051511, 0.059706, -0.996886,
		0.194308, -0.978536, -0.068647,
		-0.979587, -0.197239, 0.038804,
		32.931969, 35.170185, 34.196388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160599, 35.837051, 34.480213>,  <33.617680, 35.308250, 34.169224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160599, 35.837051, 34.480213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500034, 36.011349, 34.360203>,  <34.703697, 36.115929, 34.288197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500034, 36.011349, 34.360203>,  <34.160599, 35.837051, 34.480213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500034, 36.011349, 34.360203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524729, -0.620907, 0.582352,
		0.067469, -0.651613, -0.755545,
		0.848591, 0.435747, -0.300028,
		34.754612, 36.142075, 34.270195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717155, 35.343658, 34.320072>,  <34.160599, 35.837051, 34.480213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717155, 35.343658, 34.320072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921883, 35.681522, 34.382797>,  <35.044720, 35.884243, 34.420433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921883, 35.681522, 34.382797>,  <34.717155, 35.343658, 34.320072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921883, 35.681522, 34.382797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720876, -0.521542, 0.456434,
		0.467316, -0.120570, -0.875831,
		0.511815, 0.844664, 0.156809,
		35.075428, 35.934921, 34.429840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361504, 35.214203, 34.125866>,  <34.717155, 35.343658, 34.320072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361504, 35.214203, 34.125866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426281, 35.517242, 34.378792>,  <35.465149, 35.699066, 34.530548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426281, 35.517242, 34.378792>,  <35.361504, 35.214203, 34.125866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426281, 35.517242, 34.378792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733153, -0.521262, 0.436775,
		0.660501, 0.392849, -0.639850,
		0.161943, 0.757598, 0.632313,
		35.474865, 35.744522, 34.568485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061008, 35.405060, 34.151363>,  <35.361504, 35.214203, 34.125866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061008, 35.405060, 34.151363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934376, 35.528080, 34.510292>,  <35.858398, 35.601891, 34.725651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934376, 35.528080, 34.510292>,  <36.061008, 35.405060, 34.151363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934376, 35.528080, 34.510292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721646, -0.535868, 0.438261,
		0.615635, 0.786294, -0.052297,
		-0.316578, 0.307549, 0.897325,
		35.839401, 35.620346, 34.779488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595188, 35.321007, 34.530212>,  <36.061008, 35.405060, 34.151363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595188, 35.321007, 34.530212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337173, 35.382454, 34.829632>,  <36.182365, 35.419323, 35.009285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337173, 35.382454, 34.829632>,  <36.595188, 35.321007, 34.530212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337173, 35.382454, 34.829632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639592, -0.427505, 0.638875,
		0.418152, 0.890866, 0.177504,
		-0.645036, 0.153617, 0.748552,
		36.143661, 35.428539, 35.054199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953564, 35.533543, 35.137642>,  <36.595188, 35.321007, 34.530212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953564, 35.533543, 35.137642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623512, 35.401085, 35.320732>,  <36.425484, 35.321609, 35.430584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623512, 35.401085, 35.320732>,  <36.953564, 35.533543, 35.137642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623512, 35.401085, 35.320732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547314, -0.267696, 0.792960,
		-0.140055, 0.904810, 0.402123,
		-0.825125, -0.331146, 0.457723,
		36.375977, 35.301743, 35.458050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102882, 35.658268, 35.853317>,  <36.953564, 35.533543, 35.137642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102882, 35.658268, 35.853317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830315, 35.366760, 35.826279>,  <36.666775, 35.191856, 35.810055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830315, 35.366760, 35.826279>,  <37.102882, 35.658268, 35.853317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830315, 35.366760, 35.826279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400509, -0.448597, 0.798970,
		-0.612590, 0.517356, 0.597559,
		-0.681415, -0.728769, -0.067600,
		36.625889, 35.148129, 35.806000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749233, 35.692867, 36.447216>,  <37.102882, 35.658268, 35.853317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749233, 35.692867, 36.447216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700424, 35.321983, 36.305573>,  <36.671139, 35.099453, 36.220585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700424, 35.321983, 36.305573>,  <36.749233, 35.692867, 36.447216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700424, 35.321983, 36.305573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226861, -0.373385, 0.899509,
		-0.966252, 0.029429, 0.255910,
		-0.122025, -0.927209, -0.354108,
		36.663818, 35.043819, 36.199341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410316, 35.456268, 37.021793>,  <36.749233, 35.692867, 36.447216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410316, 35.456268, 37.021793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569920, 35.174377, 36.787136>,  <36.665680, 35.005241, 36.646343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569920, 35.174377, 36.787136>,  <36.410316, 35.456268, 37.021793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569920, 35.174377, 36.787136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542992, -0.333940, 0.770483,
		-0.738886, -0.625969, 0.249419,
		0.399007, -0.704732, -0.586640,
		36.689621, 34.962959, 36.611145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586132, 34.826881, 37.441708>,  <36.410316, 35.456268, 37.021793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586132, 34.826881, 37.441708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812546, 34.743843, 37.122581>,  <36.948395, 34.694019, 36.931107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812546, 34.743843, 37.122581>,  <36.586132, 34.826881, 37.441708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812546, 34.743843, 37.122581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704106, -0.381607, 0.598841,
		-0.428771, -0.900710, -0.069830,
		0.566030, -0.207598, -0.797818,
		36.982353, 34.681564, 36.883236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704487, 34.113083, 37.528763>,  <36.586132, 34.826881, 37.441708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704487, 34.113083, 37.528763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977180, 34.239178, 37.264683>,  <37.140797, 34.314835, 37.106236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977180, 34.239178, 37.264683>,  <36.704487, 34.113083, 37.528763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977180, 34.239178, 37.264683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727269, -0.390078, 0.564728,
		-0.079504, -0.865137, -0.495194,
		0.681732, 0.315241, -0.660201,
		37.181702, 34.333752, 37.066624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123829, 33.587791, 37.302967>,  <36.704487, 34.113083, 37.528763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123829, 33.587791, 37.302967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327717, 33.927891, 37.250408>,  <37.450050, 34.131950, 37.218872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327717, 33.927891, 37.250408>,  <37.123829, 33.587791, 37.302967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327717, 33.927891, 37.250408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792900, -0.404984, 0.455300,
		0.333904, -0.336260, -0.880589,
		0.509723, 0.850246, -0.131395,
		37.480633, 34.182964, 37.210991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795181, 33.425198, 37.140263>,  <37.123829, 33.587791, 37.302967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795181, 33.425198, 37.140263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815731, 33.792858, 37.296478>,  <37.828060, 34.013454, 37.390209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815731, 33.792858, 37.296478>,  <37.795181, 33.425198, 37.140263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815731, 33.792858, 37.296478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717412, -0.306013, 0.625841,
		0.694753, 0.248024, -0.675132,
		0.051376, 0.919152, 0.390539,
		37.831142, 34.068604, 37.413639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418003, 33.342705, 37.455959>,  <37.795181, 33.425198, 37.140263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418003, 33.342705, 37.455959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311954, 33.700840, 37.599117>,  <38.248325, 33.915722, 37.685013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311954, 33.700840, 37.599117>,  <38.418003, 33.342705, 37.455959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311954, 33.700840, 37.599117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575213, -0.151034, 0.803940,
		0.773848, 0.419007, -0.474965,
		-0.265121, 0.895333, 0.357896,
		38.232418, 33.969440, 37.706486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058437, 33.628357, 37.633549>,  <38.418003, 33.342705, 37.455959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058437, 33.628357, 37.633549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767853, 33.812809, 37.837360>,  <38.593502, 33.923481, 37.959648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767853, 33.812809, 37.837360>,  <39.058437, 33.628357, 37.633549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767853, 33.812809, 37.837360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545412, -0.064177, 0.835707,
		0.418067, 0.885011, -0.204882,
		-0.726461, 0.461127, 0.509526,
		38.549915, 33.951145, 37.990219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426682, 33.887772, 38.152660>,  <39.058437, 33.628357, 37.633549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426682, 33.887772, 38.152660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049927, 33.878822, 38.286732>,  <38.823875, 33.873451, 38.367176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049927, 33.878822, 38.286732>,  <39.426682, 33.887772, 38.152660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049927, 33.878822, 38.286732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335547, -0.110219, 0.935553,
		0.016010, 0.993655, 0.111322,
		-0.941887, -0.022376, 0.335183,
		38.767361, 33.872108, 38.387287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390549, 34.457958, 38.662903>,  <39.426682, 33.887772, 38.152660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390549, 34.457958, 38.662903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081921, 34.223438, 38.761639>,  <38.896744, 34.082726, 38.820881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081921, 34.223438, 38.761639>,  <39.390549, 34.457958, 38.662903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081921, 34.223438, 38.761639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420261, -0.178500, 0.889673,
		-0.477555, 0.790183, 0.384125,
		-0.771571, -0.586300, 0.246839,
		38.850449, 34.047546, 38.835690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181572, 34.641750, 39.305210>,  <39.390549, 34.457958, 38.662903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181572, 34.641750, 39.305210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048264, 34.266125, 39.271530>,  <38.968277, 34.040749, 39.251324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048264, 34.266125, 39.271530>,  <39.181572, 34.641750, 39.305210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048264, 34.266125, 39.271530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269243, -0.180378, 0.946030,
		-0.903569, 0.292617, 0.312951,
		-0.333273, -0.939063, -0.084199,
		38.948280, 33.984406, 39.246269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692947, 34.651871, 39.786385>,  <39.181572, 34.641750, 39.305210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692947, 34.651871, 39.786385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792912, 34.272018, 39.710770>,  <38.852890, 34.044106, 39.665401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792912, 34.272018, 39.710770>,  <38.692947, 34.651871, 39.786385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792912, 34.272018, 39.710770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210238, -0.137356, 0.967953,
		-0.945168, -0.281648, 0.165323,
		0.249914, -0.949636, -0.189038,
		38.867886, 33.987129, 39.654057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276924, 34.263168, 40.297169>,  <38.692947, 34.651871, 39.786385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276924, 34.263168, 40.297169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580765, 34.028137, 40.185631>,  <38.763069, 33.887119, 40.118710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580765, 34.028137, 40.185631>,  <38.276924, 34.263168, 40.297169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580765, 34.028137, 40.185631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114156, -0.301633, 0.946565,
		-0.640292, -0.750844, -0.162045,
		0.759602, -0.587580, -0.278846,
		38.808647, 33.851864, 40.101978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988667, 33.596634, 40.322975>,  <38.276924, 34.263168, 40.297169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988667, 33.596634, 40.322975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384476, 33.539471, 40.331127>,  <38.621964, 33.505173, 40.336018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384476, 33.539471, 40.331127>,  <37.988667, 33.596634, 40.322975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384476, 33.539471, 40.331127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075774, -0.394028, 0.915969,
		-0.122872, -0.907919, -0.400730,
		0.989526, -0.142912, 0.020382,
		38.681332, 33.496597, 40.337242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219803, 32.859634, 40.564705>,  <37.988667, 33.596634, 40.322975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219803, 32.859634, 40.564705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520870, 33.107464, 40.653809>,  <38.701511, 33.256161, 40.707272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520870, 33.107464, 40.653809>,  <38.219803, 32.859634, 40.564705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520870, 33.107464, 40.653809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005180, -0.332749, 0.943001,
		0.658377, -0.710923, -0.247241,
		0.752670, 0.619570, 0.222757,
		38.746670, 33.293335, 40.720634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721592, 32.530628, 40.954338>,  <38.219803, 32.859634, 40.564705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721592, 32.530628, 40.954338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810749, 32.909714, 41.045692>,  <38.864243, 33.137165, 41.100506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810749, 32.909714, 41.045692>,  <38.721592, 32.530628, 40.954338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810749, 32.909714, 41.045692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342447, -0.295467, 0.891868,
		0.912714, -0.120585, -0.390400,
		0.222896, 0.947712, 0.228383,
		38.877617, 33.194027, 41.114208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284855, 32.537090, 41.361549>,  <38.721592, 32.530628, 40.954338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284855, 32.537090, 41.361549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160080, 32.908089, 41.443954>,  <39.085217, 33.130688, 41.493397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160080, 32.908089, 41.443954>,  <39.284855, 32.537090, 41.361549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160080, 32.908089, 41.443954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177209, -0.156231, 0.971694,
		0.933431, 0.339614, -0.115627,
		-0.311936, 0.927499, 0.206013,
		39.066498, 33.186340, 41.505760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738720, 32.712189, 41.881134>,  <39.284855, 32.537090, 41.361549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738720, 32.712189, 41.881134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438515, 32.975487, 41.904587>,  <39.258392, 33.133465, 41.918659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438515, 32.975487, 41.904587>,  <39.738720, 32.712189, 41.881134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438515, 32.975487, 41.904587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162612, 0.097956, 0.981816,
		0.640536, 0.746400, -0.180557,
		-0.750514, 0.658249, 0.058629,
		39.213360, 33.172962, 41.922176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966984, 33.351711, 42.230400>,  <39.738720, 32.712189, 41.881134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966984, 33.351711, 42.230400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568760, 33.377312, 42.258026>,  <39.329826, 33.392673, 42.274601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568760, 33.377312, 42.258026>,  <39.966984, 33.351711, 42.230400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568760, 33.377312, 42.258026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072900, 0.059605, 0.995557,
		0.059605, 0.996168, -0.064006,
		-0.995557, 0.064006, 0.069068,
		39.270092, 33.396515, 42.278748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911297, 33.904663, 42.634441>,  <39.966984, 33.351711, 42.230400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911297, 33.904663, 42.634441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558598, 33.720036, 42.673370>,  <39.346977, 33.609261, 42.696728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558598, 33.720036, 42.673370>,  <39.911297, 33.904663, 42.634441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558598, 33.720036, 42.673370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014853, 0.233386, 0.972271,
		-0.471481, 0.855855, -0.212644,
		-0.881751, -0.461565, 0.097325,
		39.294071, 33.581566, 42.702568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531387, 34.247650, 43.106899>,  <39.911297, 33.904663, 42.634441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531387, 34.247650, 43.106899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354523, 33.890079, 43.136257>,  <39.248405, 33.675537, 43.153870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354523, 33.890079, 43.136257>,  <39.531387, 34.247650, 43.106899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354523, 33.890079, 43.136257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095127, 0.128100, 0.987189,
		-0.891877, 0.429515, -0.141677,
		-0.442161, -0.893928, 0.073391,
		39.221874, 33.621902, 43.158276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977020, 34.293720, 43.527901>,  <39.531387, 34.247650, 43.106899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977020, 34.293720, 43.527901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038044, 33.899151, 43.552238>,  <39.074657, 33.662411, 43.566841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038044, 33.899151, 43.552238>,  <38.977020, 34.293720, 43.527901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038044, 33.899151, 43.552238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110804, 0.044102, 0.992863,
		-0.982063, -0.158211, -0.102571,
		0.152558, -0.986420, 0.060842,
		39.083813, 33.603226, 43.570492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469913, 34.052643, 43.989521>,  <38.977020, 34.293720, 43.527901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469913, 34.052643, 43.989521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745224, 33.762478, 43.992531>,  <38.910408, 33.588379, 43.994335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745224, 33.762478, 43.992531>,  <38.469913, 34.052643, 43.989521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745224, 33.762478, 43.992531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022580, -0.011056, 0.999684,
		-0.725101, -0.688224, -0.023990,
		0.688272, -0.725414, 0.007523,
		38.951706, 33.544853, 43.994789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229454, 33.521515, 44.374714>,  <38.469913, 34.052643, 43.989521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229454, 33.521515, 44.374714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621552, 33.447422, 44.402451>,  <38.856812, 33.402966, 44.419090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621552, 33.447422, 44.402451>,  <38.229454, 33.521515, 44.374714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621552, 33.447422, 44.402451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097640, -0.148325, 0.984107,
		-0.172012, -0.971435, -0.163482,
		0.980244, -0.185241, 0.069337,
		38.915627, 33.391853, 44.423252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195877, 32.978020, 44.938297>,  <38.229454, 33.521515, 44.374714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195877, 32.978020, 44.938297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572445, 33.110386, 44.912308>,  <38.798386, 33.189808, 44.896713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572445, 33.110386, 44.912308>,  <38.195877, 32.978020, 44.938297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572445, 33.110386, 44.912308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141947, -0.214078, 0.966448,
		0.305906, -0.919056, -0.248510,
		0.941420, 0.330918, -0.064970,
		38.854870, 33.209660, 44.892818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483444, 32.468525, 45.241268>,  <38.195877, 32.978020, 44.938297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483444, 32.468525, 45.241268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740005, 32.775402, 45.239796>,  <38.893944, 32.959530, 45.238914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740005, 32.775402, 45.239796>,  <38.483444, 32.468525, 45.241268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740005, 32.775402, 45.239796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042047, -0.030364, 0.998654,
		0.766048, -0.640698, -0.051734,
		0.641406, 0.767193, -0.003679,
		38.932426, 33.005558, 45.238693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156372, 32.250587, 45.590870>,  <38.483444, 32.468525, 45.241268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156372, 32.250587, 45.590870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117386, 32.647614, 45.620060>,  <39.093994, 32.885830, 45.637573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117386, 32.647614, 45.620060>,  <39.156372, 32.250587, 45.590870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117386, 32.647614, 45.620060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078550, -0.065420, 0.994761,
		0.992135, 0.102683, -0.071590,
		-0.097462, 0.992561, 0.072971,
		39.088146, 32.945381, 45.641953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601894, 32.431683, 45.945889>,  <39.156372, 32.250587, 45.590870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601894, 32.431683, 45.945889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377670, 32.759125, 45.995926>,  <39.243134, 32.955589, 46.025948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377670, 32.759125, 45.995926>,  <39.601894, 32.431683, 45.945889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377670, 32.759125, 45.995926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187124, -0.021932, 0.982091,
		0.806693, 0.573931, -0.140887,
		-0.560563, 0.818609, 0.125089,
		39.209503, 33.004707, 46.033451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923637, 32.859982, 46.549831>,  <39.601894, 32.431683, 45.945889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923637, 32.859982, 46.549831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554749, 33.011127, 46.517052>,  <39.333416, 33.101814, 46.497383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554749, 33.011127, 46.517052>,  <39.923637, 32.859982, 46.549831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554749, 33.011127, 46.517052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093460, -0.012186, 0.995549,
		0.375185, 0.925780, 0.046553,
		-0.922226, 0.377866, -0.081951,
		39.278080, 33.124489, 46.492466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896931, 33.249741, 47.085617>,  <39.923637, 32.859982, 46.549831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896931, 33.249741, 47.085617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516483, 33.181396, 46.982716>,  <39.288216, 33.140392, 46.920975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516483, 33.181396, 46.982716>,  <39.896931, 33.249741, 47.085617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516483, 33.181396, 46.982716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264903, 0.023184, 0.963996,
		-0.158741, 0.985023, -0.067311,
		-0.951119, -0.170857, -0.257255,
		39.231148, 33.130138, 46.905540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483109, 33.666138, 47.556526>,  <39.896931, 33.249741, 47.085617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483109, 33.666138, 47.556526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212322, 33.394989, 47.441841>,  <39.049850, 33.232300, 47.373032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212322, 33.394989, 47.441841>,  <39.483109, 33.666138, 47.556526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212322, 33.394989, 47.441841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303932, -0.097318, 0.947710,
		-0.670331, 0.728709, -0.140146,
		-0.676966, -0.677874, -0.286713,
		39.009232, 33.191628, 47.355827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097683, 34.208710, 47.403053>,  <39.483109, 33.666138, 47.556526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097683, 34.208710, 47.403053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172554, 34.582211, 47.525082>,  <40.217476, 34.806313, 47.598297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172554, 34.582211, 47.525082>,  <40.097683, 34.208710, 47.403053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172554, 34.582211, 47.525082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508480, 0.357813, -0.783211,
		-0.840483, -0.008520, 0.541770,
		0.187179, 0.933755, 0.305068,
		40.228706, 34.862335, 47.616600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514584, 34.588280, 47.281429>,  <40.097683, 34.208710, 47.403053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514584, 34.588280, 47.281429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779819, 34.886990, 47.301971>,  <39.938961, 35.066216, 47.314297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779819, 34.886990, 47.301971>,  <39.514584, 34.588280, 47.281429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779819, 34.886990, 47.301971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334273, 0.356806, -0.872325,
		-0.669756, 0.561262, 0.486222,
		0.663090, 0.746776, 0.051358,
		39.978748, 35.111023, 47.317379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168499, 35.115131, 46.964767>,  <39.514584, 34.588280, 47.281429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168499, 35.115131, 46.964767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542446, 35.255436, 46.942879>,  <39.766815, 35.339619, 46.929745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542446, 35.255436, 46.942879>,  <39.168499, 35.115131, 46.964767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542446, 35.255436, 46.942879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255414, 0.557514, -0.789900,
		-0.246554, 0.752428, 0.610789,
		0.934866, 0.350757, -0.054724,
		39.822906, 35.360664, 46.926460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115070, 35.808266, 47.026421>,  <39.168499, 35.115131, 46.964767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115070, 35.808266, 47.026421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459324, 35.732059, 46.837521>,  <39.665874, 35.686337, 46.724182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459324, 35.732059, 46.837521>,  <39.115070, 35.808266, 47.026421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459324, 35.732059, 46.837521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280324, 0.596972, -0.751694,
		0.425126, 0.779314, 0.460368,
		0.860632, -0.190513, -0.472248,
		39.717514, 35.674904, 46.695847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380123, 36.409687, 46.874126>,  <39.115070, 35.808266, 47.026421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380123, 36.409687, 46.874126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573051, 36.162060, 46.626217>,  <39.688808, 36.013485, 46.477470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573051, 36.162060, 46.626217>,  <39.380123, 36.409687, 46.874126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573051, 36.162060, 46.626217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185682, 0.619183, -0.762978,
		0.856088, 0.483084, 0.183698,
		0.482324, -0.619066, -0.619774,
		39.717751, 35.976341, 46.440285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497139, 36.827984, 46.309830>,  <39.380123, 36.409687, 46.874126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497139, 36.827984, 46.309830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607731, 36.481190, 46.143986>,  <39.674088, 36.273113, 46.044479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607731, 36.481190, 46.143986>,  <39.497139, 36.827984, 46.309830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607731, 36.481190, 46.143986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200628, 0.369848, -0.907172,
		0.939844, 0.333998, -0.071685,
		0.276481, -0.866982, -0.414609,
		39.690674, 36.221096, 46.019604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935631, 37.028656, 45.708138>,  <39.497139, 36.827984, 46.309830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935631, 37.028656, 45.708138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817707, 36.650921, 45.649746>,  <39.746952, 36.424278, 45.614712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817707, 36.650921, 45.649746>,  <39.935631, 37.028656, 45.708138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817707, 36.650921, 45.649746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133468, 0.191961, -0.972285,
		0.946190, -0.267153, -0.182630,
		-0.294807, -0.944341, -0.145975,
		39.729263, 36.367619, 45.605953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283550, 36.791149, 45.100952>,  <39.935631, 37.028656, 45.708138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283550, 36.791149, 45.100952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975864, 36.538574, 45.140133>,  <39.791252, 36.387028, 45.163643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975864, 36.538574, 45.140133>,  <40.283550, 36.791149, 45.100952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975864, 36.538574, 45.140133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212960, 0.108800, -0.970984,
		0.602463, -0.767753, -0.218162,
		-0.769212, -0.631441, 0.097953,
		39.745102, 36.349140, 45.169518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445251, 36.228119, 44.677719>,  <40.283550, 36.791149, 45.100952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445251, 36.228119, 44.677719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046364, 36.234272, 44.706905>,  <39.807034, 36.237965, 44.724415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046364, 36.234272, 44.706905>,  <40.445251, 36.228119, 44.677719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046364, 36.234272, 44.706905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073691, -0.053923, -0.995822,
		-0.011374, -0.998427, 0.054906,
		-0.997216, 0.015373, 0.072962,
		39.747200, 36.238888, 44.728794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304672, 35.833683, 44.101162>,  <40.445251, 36.228119, 44.677719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304672, 35.833683, 44.101162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975861, 36.029884, 44.216873>,  <39.778576, 36.147606, 44.286301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975861, 36.029884, 44.216873>,  <40.304672, 35.833683, 44.101162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975861, 36.029884, 44.216873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187286, 0.246853, -0.950782,
		-0.537773, -0.835743, -0.111054,
		-0.822024, 0.490506, 0.289275,
		39.729252, 36.177036, 44.303654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796665, 35.438950, 43.696625>,  <40.304672, 35.833683, 44.101162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796665, 35.438950, 43.696625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623459, 35.789173, 43.782318>,  <39.519535, 35.999306, 43.833733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623459, 35.789173, 43.782318>,  <39.796665, 35.438950, 43.696625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623459, 35.789173, 43.782318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293564, 0.087726, -0.951906,
		-0.852242, -0.475081, 0.219045,
		-0.433017, 0.875558, 0.214231,
		39.493553, 36.051842, 43.846588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122784, 35.397034, 43.487843>,  <39.796665, 35.438950, 43.696625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122784, 35.397034, 43.487843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235737, 35.780697, 43.481113>,  <39.303509, 36.010895, 43.477074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235737, 35.780697, 43.481113>,  <39.122784, 35.397034, 43.487843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235737, 35.780697, 43.481113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074115, 0.004327, -0.997241,
		-0.956435, 0.282848, 0.072310,
		0.282380, 0.959155, -0.016825,
		39.320450, 36.068443, 43.476067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612061, 35.751911, 43.128452>,  <39.122784, 35.397034, 43.487843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612061, 35.751911, 43.128452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958954, 35.946213, 43.084724>,  <39.167088, 36.062794, 43.058487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958954, 35.946213, 43.084724>,  <38.612061, 35.751911, 43.128452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958954, 35.946213, 43.084724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149546, 0.044700, -0.987744,
		-0.474919, 0.872950, 0.111408,
		0.867230, 0.485759, -0.109317,
		39.219124, 36.091942, 43.051929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440514, 36.333630, 42.823853>,  <38.612061, 35.751911, 43.128452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440514, 36.333630, 42.823853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817829, 36.240437, 42.729259>,  <39.044220, 36.184521, 42.672504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817829, 36.240437, 42.729259>,  <38.440514, 36.333630, 42.823853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817829, 36.240437, 42.729259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228594, 0.060699, -0.971628,
		0.240728, 0.970584, 0.003998,
		0.943289, -0.232984, -0.236482,
		39.100815, 36.170540, 42.658314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532074, 36.587688, 42.175915>,  <38.440514, 36.333630, 42.823853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532074, 36.587688, 42.175915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875965, 36.384686, 42.198917>,  <39.082298, 36.262882, 42.212719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875965, 36.384686, 42.198917>,  <38.532074, 36.587688, 42.175915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875965, 36.384686, 42.198917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098921, 0.054990, -0.993575,
		0.501085, 0.859890, 0.097480,
		0.859726, -0.507508, 0.057506,
		39.133884, 36.232433, 42.216167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117313, 37.034756, 41.976749>,  <38.532074, 36.587688, 42.175915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117313, 37.034756, 41.976749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216175, 36.651478, 41.919106>,  <39.275494, 36.421509, 41.884518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216175, 36.651478, 41.919106>,  <39.117313, 37.034756, 41.976749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216175, 36.651478, 41.919106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213627, 0.198948, -0.956443,
		0.945133, 0.205608, 0.253869,
		0.247159, -0.958199, -0.144109,
		39.290321, 36.364017, 41.875874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747078, 37.052559, 41.573673>,  <39.117313, 37.034756, 41.976749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747078, 37.052559, 41.573673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606339, 36.678413, 41.559250>,  <39.521896, 36.453926, 41.550598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606339, 36.678413, 41.559250>,  <39.747078, 37.052559, 41.573673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606339, 36.678413, 41.559250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000541, 0.038314, -0.999266,
		0.936057, -0.351608, -0.012974,
		-0.351847, -0.935363, -0.036055,
		39.500786, 36.397804, 41.548435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939850, 36.847431, 40.881931>,  <39.747078, 37.052559, 41.573673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939850, 36.847431, 40.881931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693684, 36.548313, 40.981583>,  <39.545982, 36.368843, 41.041374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693684, 36.548313, 40.981583>,  <39.939850, 36.847431, 40.881931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693684, 36.548313, 40.981583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318244, -0.053423, -0.946502,
		0.721097, -0.661779, -0.205103,
		-0.615418, -0.747793, 0.249130,
		39.509060, 36.323975, 41.056320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133327, 36.398518, 40.487038>,  <39.939850, 36.847431, 40.881931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133327, 36.398518, 40.487038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763958, 36.287289, 40.592846>,  <39.542336, 36.220551, 40.656330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763958, 36.287289, 40.592846>,  <40.133327, 36.398518, 40.487038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763958, 36.287289, 40.592846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327362, 0.210952, -0.921050,
		0.200295, -0.937117, -0.285821,
		-0.923426, -0.278049, 0.264524,
		39.486931, 36.203865, 40.672203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897003, 35.794540, 40.068203>,  <40.133327, 36.398518, 40.487038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897003, 35.794540, 40.068203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572102, 35.992210, 40.192165>,  <39.377163, 36.110813, 40.266541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572102, 35.992210, 40.192165>,  <39.897003, 35.794540, 40.068203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572102, 35.992210, 40.192165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300279, 0.101236, -0.948464,
		-0.500084, -0.863446, 0.066162,
		-0.812249, 0.494178, 0.309901,
		39.328426, 36.140465, 40.285137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278828, 35.512207, 39.716534>,  <39.897003, 35.794540, 40.068203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278828, 35.512207, 39.716534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139465, 35.862923, 39.849117>,  <39.055847, 36.073353, 39.928665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139465, 35.862923, 39.849117>,  <39.278828, 35.512207, 39.716534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139465, 35.862923, 39.849117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412925, 0.173886, -0.894011,
		-0.841492, -0.448342, 0.301465,
		-0.348403, 0.876786, 0.331455,
		39.034943, 36.125957, 39.948555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632332, 35.532623, 39.434216>,  <39.278828, 35.512207, 39.716534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632332, 35.532623, 39.434216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696907, 35.915337, 39.530968>,  <38.735653, 36.144966, 39.589020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696907, 35.915337, 39.530968>,  <38.632332, 35.532623, 39.434216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696907, 35.915337, 39.530968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442297, 0.289245, -0.848947,
		-0.882220, 0.030067, 0.469876,
		0.161434, 0.956783, 0.241879,
		38.745338, 36.202370, 39.603531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014801, 35.900822, 39.323277>,  <38.632332, 35.532623, 39.434216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014801, 35.900822, 39.323277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274731, 36.204849, 39.321804>,  <38.430691, 36.387268, 39.320919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274731, 36.204849, 39.321804>,  <38.014801, 35.900822, 39.323277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274731, 36.204849, 39.321804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266609, 0.223397, -0.937557,
		-0.711789, 0.610232, 0.347812,
		0.649827, 0.760073, -0.003682,
		38.469677, 36.432873, 39.320698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616642, 36.499111, 39.205215>,  <38.014801, 35.900822, 39.323277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616642, 36.499111, 39.205215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992889, 36.560314, 39.084000>,  <38.218636, 36.597034, 39.011272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992889, 36.560314, 39.084000>,  <37.616642, 36.499111, 39.205215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992889, 36.560314, 39.084000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337194, 0.317875, -0.886147,
		-0.039258, 0.935706, 0.350590,
		0.940616, 0.153005, -0.303035,
		38.275074, 36.606216, 38.993088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519207, 37.138302, 38.784786>,  <37.616642, 36.499111, 39.205215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519207, 37.138302, 38.784786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864082, 36.962685, 38.683693>,  <38.071007, 36.857315, 38.623039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864082, 36.962685, 38.683693>,  <37.519207, 37.138302, 38.784786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864082, 36.962685, 38.683693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179077, 0.202534, -0.962762,
		0.473878, 0.875342, 0.096001,
		0.862190, -0.439040, -0.252730,
		38.122738, 36.830971, 38.607872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904427, 37.565506, 38.361588>,  <37.519207, 37.138302, 38.784786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904427, 37.565506, 38.361588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049782, 37.202225, 38.278530>,  <38.136997, 36.984257, 38.228695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049782, 37.202225, 38.278530>,  <37.904427, 37.565506, 38.361588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049782, 37.202225, 38.278530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031606, 0.210730, -0.977033,
		0.931100, 0.361609, 0.047874,
		0.363393, -0.908202, -0.207640,
		38.158798, 36.929764, 38.216240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628643, 37.681870, 38.061157>,  <37.904427, 37.565506, 38.361588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628643, 37.681870, 38.061157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556564, 37.309414, 37.934341>,  <38.513317, 37.085941, 37.858253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556564, 37.309414, 37.934341>,  <38.628643, 37.681870, 38.061157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556564, 37.309414, 37.934341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370056, 0.234460, -0.898937,
		0.911367, -0.279303, 0.302325,
		-0.180192, -0.931138, -0.317037,
		38.502506, 37.030071, 37.839230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257027, 37.367554, 37.678623>,  <38.628643, 37.681870, 38.061157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257027, 37.367554, 37.678623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927948, 37.197884, 37.527233>,  <38.730499, 37.096081, 37.436398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927948, 37.197884, 37.527233>,  <39.257027, 37.367554, 37.678623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927948, 37.197884, 37.527233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361117, 0.124244, -0.924207,
		0.439050, -0.897016, 0.050962,
		-0.822696, -0.424176, -0.378477,
		38.681137, 37.070629, 37.413689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501125, 36.882809, 37.223114>,  <39.257027, 37.367554, 37.678623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501125, 36.882809, 37.223114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123814, 36.943737, 37.105118>,  <38.897427, 36.980293, 37.034321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123814, 36.943737, 37.105118>,  <39.501125, 36.882809, 37.223114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123814, 36.943737, 37.105118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327855, 0.287441, -0.899938,
		-0.052290, -0.945608, -0.321078,
		-0.943280, 0.152325, -0.294992,
		38.840828, 36.989433, 37.016621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476566, 36.665539, 36.596035>,  <39.501125, 36.882809, 37.223114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476566, 36.665539, 36.596035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140251, 36.881351, 36.578220>,  <38.938461, 37.010838, 36.567532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140251, 36.881351, 36.578220>,  <39.476566, 36.665539, 36.596035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140251, 36.881351, 36.578220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317488, 0.424781, -0.847798,
		-0.438498, -0.726956, -0.528445,
		-0.840786, 0.539533, -0.044534,
		38.888016, 37.043213, 36.564861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441643, 36.745178, 35.948612>,  <39.476566, 36.665539, 36.596035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441643, 36.745178, 35.948612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184128, 37.007034, 36.107094>,  <39.029617, 37.164150, 36.202183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184128, 37.007034, 36.107094>,  <39.441643, 36.745178, 35.948612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184128, 37.007034, 36.107094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308161, 0.695738, -0.648834,
		-0.700409, -0.295617, -0.649644,
		-0.643789, 0.654644, 0.396204,
		38.990990, 37.203426, 36.225956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980045, 36.956192, 35.409595>,  <39.441643, 36.745178, 35.948612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980045, 36.956192, 35.409595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995808, 37.234138, 35.696819>,  <39.005264, 37.400906, 35.869152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995808, 37.234138, 35.696819>,  <38.980045, 36.956192, 35.409595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995808, 37.234138, 35.696819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215290, 0.695836, -0.685174,
		-0.975755, 0.181588, -0.122180,
		0.039402, 0.694866, 0.718059,
		39.007629, 37.442596, 35.912235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573669, 37.501888, 35.091087>,  <38.980045, 36.956192, 35.409595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573669, 37.501888, 35.091087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814266, 37.631054, 35.383369>,  <38.958626, 37.708553, 35.558739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814266, 37.631054, 35.383369>,  <38.573669, 37.501888, 35.091087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814266, 37.631054, 35.383369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367571, 0.700234, -0.612016,
		-0.709293, 0.636711, 0.302494,
		0.601494, 0.322911, 0.730707,
		38.994713, 37.727928, 35.602581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495808, 38.197933, 35.013504>,  <38.573669, 37.501888, 35.091087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495808, 38.197933, 35.013504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840996, 38.107708, 35.194351>,  <39.048107, 38.053574, 35.302860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840996, 38.107708, 35.194351>,  <38.495808, 38.197933, 35.013504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840996, 38.107708, 35.194351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471965, 0.679312, -0.561948,
		-0.180373, 0.698325, 0.692681,
		0.862969, -0.225561, 0.452114,
		39.099888, 38.040039, 35.329987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868095, 38.807266, 34.852264>,  <38.495808, 38.197933, 35.013504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868095, 38.807266, 34.852264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159145, 38.579075, 35.004646>,  <39.333775, 38.442162, 35.096073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159145, 38.579075, 35.004646>,  <38.868095, 38.807266, 34.852264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159145, 38.579075, 35.004646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685577, 0.623730, -0.375426,
		-0.023440, 0.534340, 0.844945,
		0.727623, -0.570475, 0.380951,
		39.377434, 38.407932, 35.118931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328373, 39.267754, 35.338787>,  <38.868095, 38.807266, 34.852264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328373, 39.267754, 35.338787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505764, 38.944954, 35.182800>,  <39.612198, 38.751274, 35.089211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505764, 38.944954, 35.182800>,  <39.328373, 39.267754, 35.338787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505764, 38.944954, 35.182800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730398, 0.577567, -0.364603,
		0.519466, -0.123136, 0.845572,
		0.443478, -0.807003, -0.389965,
		39.638809, 38.702854, 35.065811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061497, 39.394306, 35.535954>,  <39.328373, 39.267754, 35.338787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061497, 39.394306, 35.535954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028568, 39.128201, 35.239132>,  <40.008812, 38.968536, 35.061039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028568, 39.128201, 35.239132>,  <40.061497, 39.394306, 35.535954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028568, 39.128201, 35.239132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683547, 0.504153, -0.527820,
		0.725249, -0.550679, 0.413238,
		-0.082325, -0.665269, -0.742052,
		40.003872, 38.928619, 35.016518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852928, 39.278435, 35.369629>,  <40.061497, 39.394306, 35.535954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852928, 39.278435, 35.369629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642540, 39.132591, 35.062275>,  <40.516308, 39.045086, 34.877861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642540, 39.132591, 35.062275>,  <40.852928, 39.278435, 35.369629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642540, 39.132591, 35.062275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675907, 0.369184, -0.637850,
		0.516242, -0.854846, 0.052263,
		-0.525969, -0.364610, -0.768385,
		40.484749, 39.023209, 34.831760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339199, 39.010586, 34.990185>,  <40.852928, 39.278435, 35.369629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339199, 39.010586, 34.990185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044067, 39.046635, 34.722607>,  <40.866989, 39.068264, 34.562061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044067, 39.046635, 34.722607>,  <41.339199, 39.010586, 34.990185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044067, 39.046635, 34.722607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616005, 0.495052, -0.612749,
		0.275941, -0.864177, -0.420779,
		-0.737831, 0.090119, -0.668942,
		40.822720, 39.073669, 34.521923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496384, 38.600285, 34.299801>,  <41.339199, 39.010586, 34.990185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496384, 38.600285, 34.299801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268089, 38.926113, 34.258362>,  <41.131111, 39.121609, 34.233498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268089, 38.926113, 34.258362>,  <41.496384, 38.600285, 34.299801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268089, 38.926113, 34.258362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598483, 0.326274, -0.731685,
		-0.562207, -0.479604, -0.673724,
		-0.570737, 0.814571, -0.103601,
		41.096867, 39.170483, 34.227280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255520, 38.528904, 33.654987>,  <41.496384, 38.600285, 34.299801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255520, 38.528904, 33.654987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244251, 38.913185, 33.765453>,  <41.237492, 39.143753, 33.831734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244251, 38.913185, 33.765453>,  <41.255520, 38.528904, 33.654987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244251, 38.913185, 33.765453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413396, 0.262735, -0.871822,
		-0.910115, 0.089603, -0.404551,
		-0.028171, 0.960699, 0.276161,
		41.235798, 39.201393, 33.848301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690117, 38.901890, 33.241795>,  <41.255520, 38.528904, 33.654987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690117, 38.901890, 33.241795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032124, 39.072006, 33.360497>,  <41.237328, 39.174076, 33.431717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032124, 39.072006, 33.360497>,  <40.690117, 38.901890, 33.241795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032124, 39.072006, 33.360497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294921, 0.071930, -0.952810,
		-0.426571, 0.902192, -0.063927,
		0.855020, 0.425294, 0.296759,
		41.288631, 39.199596, 33.449524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833618, 39.518566, 32.871204>,  <40.690117, 38.901890, 33.241795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833618, 39.518566, 32.871204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191116, 39.405602, 33.010609>,  <41.405617, 39.337822, 33.094250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191116, 39.405602, 33.010609>,  <40.833618, 39.518566, 32.871204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191116, 39.405602, 33.010609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411097, 0.204803, -0.888288,
		0.179490, 0.937175, 0.299142,
		0.893747, -0.282415, 0.348509,
		41.459240, 39.320877, 33.115162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393112, 40.115986, 32.859982>,  <40.833618, 39.518566, 32.871204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393112, 40.115986, 32.859982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557079, 39.752384, 32.829838>,  <41.655460, 39.534222, 32.811752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557079, 39.752384, 32.829838>,  <41.393112, 40.115986, 32.859982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557079, 39.752384, 32.829838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326644, 0.223432, -0.918358,
		0.851629, 0.351835, 0.388510,
		0.409916, -0.909005, -0.075356,
		41.680054, 39.479683, 32.807232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136570, 40.094891, 32.647385>,  <41.393112, 40.115986, 32.859982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136570, 40.094891, 32.647385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969418, 39.752522, 32.525551>,  <41.869125, 39.547100, 32.452450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969418, 39.752522, 32.525551>,  <42.136570, 40.094891, 32.647385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969418, 39.752522, 32.525551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398366, 0.128682, -0.908155,
		0.816506, -0.500834, 0.287198,
		-0.417877, -0.855924, -0.304585,
		41.844055, 39.495743, 32.434174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618507, 39.609993, 32.344837>,  <42.136570, 40.094891, 32.647385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618507, 39.609993, 32.344837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259811, 39.564701, 32.173710>,  <42.044594, 39.537525, 32.071033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259811, 39.564701, 32.173710>,  <42.618507, 39.609993, 32.344837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259811, 39.564701, 32.173710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388526, 0.261434, -0.883572,
		0.211887, -0.958558, -0.190450,
		-0.896745, -0.113223, -0.427819,
		41.990788, 39.530731, 32.045364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604996, 39.092125, 31.803320>,  <42.618507, 39.609993, 32.344837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604996, 39.092125, 31.803320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359032, 39.402107, 31.744907>,  <42.211452, 39.588097, 31.709860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359032, 39.402107, 31.744907>,  <42.604996, 39.092125, 31.803320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359032, 39.402107, 31.744907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444549, 0.187696, -0.875869,
		-0.651351, -0.603501, -0.459923,
		-0.614913, 0.774956, -0.146029,
		42.174557, 39.634594, 31.701099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092686, 38.592014, 32.258564>,  <42.604996, 39.092125, 31.803320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092686, 38.592014, 32.258564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246578, 38.307503, 32.493870>,  <43.338913, 38.136795, 32.635056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246578, 38.307503, 32.493870>,  <43.092686, 38.592014, 32.258564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246578, 38.307503, 32.493870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144965, 0.582853, 0.799542,
		-0.911573, -0.392889, 0.121132,
		0.384734, -0.711281, 0.588268,
		43.362000, 38.094120, 32.670349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647011, 38.439938, 32.903206>,  <43.092686, 38.592014, 32.258564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647011, 38.439938, 32.903206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035576, 38.371895, 32.969440>,  <43.268715, 38.331070, 33.009182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035576, 38.371895, 32.969440>,  <42.647011, 38.439938, 32.903206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035576, 38.371895, 32.969440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078091, 0.429733, 0.899573,
		-0.224179, -0.886788, 0.404166,
		0.971414, -0.170104, 0.165587,
		43.327000, 38.320866, 33.019115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521034, 38.242413, 33.540215>,  <42.647011, 38.439938, 32.903206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521034, 38.242413, 33.540215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912254, 38.320930, 33.512276>,  <43.146988, 38.368042, 33.495514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912254, 38.320930, 33.512276>,  <42.521034, 38.242413, 33.540215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912254, 38.320930, 33.512276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008191, 0.371195, 0.928519,
		0.208194, -0.907569, 0.364657,
		0.978054, 0.196299, -0.069846,
		43.205669, 38.379822, 33.491322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714954, 38.386734, 34.206329>,  <42.521034, 38.242413, 33.540215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714954, 38.386734, 34.206329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069607, 38.498783, 34.059135>,  <43.282398, 38.566013, 33.970818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069607, 38.498783, 34.059135>,  <42.714954, 38.386734, 34.206329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069607, 38.498783, 34.059135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151922, 0.575121, 0.803838,
		0.436811, -0.768614, 0.467363,
		0.886631, 0.280122, -0.367989,
		43.335598, 38.582821, 33.948738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244293, 38.271080, 34.698383>,  <42.714954, 38.386734, 34.206329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244293, 38.271080, 34.698383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410969, 38.556095, 34.472584>,  <43.510975, 38.727104, 34.337105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410969, 38.556095, 34.472584>,  <43.244293, 38.271080, 34.698383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410969, 38.556095, 34.472584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195645, 0.536129, 0.821151,
		0.887744, -0.452609, 0.083996,
		0.416693, 0.712539, -0.564496,
		43.535976, 38.769855, 34.303234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913017, 38.472366, 34.980267>,  <43.244293, 38.271080, 34.698383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913017, 38.472366, 34.980267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796288, 38.779499, 34.752136>,  <43.726250, 38.963779, 34.615257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796288, 38.779499, 34.752136>,  <43.913017, 38.472366, 34.980267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.796288, 38.779499, 34.752136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051194, 0.607965, 0.792312,
		0.955100, 0.202022, -0.216730,
		-0.291828, 0.767832, -0.570325,
		43.708740, 39.009850, 34.581039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.428192, 38.896492, 35.211422>,  <43.913017, 38.472366, 34.980267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.428192, 38.896492, 35.211422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159901, 39.125122, 35.022346>,  <43.998928, 39.262299, 34.908901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159901, 39.125122, 35.022346>,  <44.428192, 38.896492, 35.211422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159901, 39.125122, 35.022346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089526, 0.695025, 0.713390,
		0.736283, 0.436171, -0.517341,
		-0.670725, 0.571573, -0.472686,
		43.958683, 39.296593, 34.880539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.744350, 39.588524, 35.022285>,  <44.428192, 38.896492, 35.211422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.744350, 39.588524, 35.022285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348259, 39.641003, 35.041195>,  <44.110603, 39.672489, 35.052540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348259, 39.641003, 35.041195>,  <44.744350, 39.588524, 35.022285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348259, 39.641003, 35.041195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126905, 0.707207, 0.695524,
		0.057819, 0.694727, -0.716946,
		-0.990228, 0.131199, 0.047275,
		44.051189, 39.680363, 35.055378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661526, 40.302700, 35.234238>,  <44.744350, 39.588524, 35.022285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661526, 40.302700, 35.234238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302685, 40.150517, 35.324093>,  <44.087379, 40.059204, 35.378006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302685, 40.150517, 35.324093>,  <44.661526, 40.302700, 35.234238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302685, 40.150517, 35.324093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038702, 0.438803, 0.897749,
		-0.440131, 0.814064, -0.378925,
		-0.897099, -0.380463, 0.224637,
		44.033554, 40.036377, 35.391483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292080, 40.826458, 35.611519>,  <44.661526, 40.302700, 35.234238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292080, 40.826458, 35.611519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091263, 40.489967, 35.691799>,  <43.970772, 40.288071, 35.739967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091263, 40.489967, 35.691799>,  <44.292080, 40.826458, 35.611519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091263, 40.489967, 35.691799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026257, 0.246786, 0.968714,
		-0.864442, 0.481070, -0.145986,
		-0.502047, -0.841230, 0.200701,
		43.940647, 40.237598, 35.752010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753105, 41.055313, 35.968849>,  <44.292080, 40.826458, 35.611519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753105, 41.055313, 35.968849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802086, 40.672306, 36.073280>,  <43.831474, 40.442501, 36.135941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802086, 40.672306, 36.073280>,  <43.753105, 41.055313, 35.968849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802086, 40.672306, 36.073280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153501, 0.241620, 0.958153,
		-0.980532, -0.157400, -0.117395,
		0.122448, -0.957520, 0.261077,
		43.838821, 40.385052, 36.151604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.255112, 40.907738, 36.509632>,  <43.753105, 41.055313, 35.968849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.255112, 40.907738, 36.509632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.505669, 40.599743, 36.558212>,  <43.656002, 40.414944, 36.587360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.505669, 40.599743, 36.558212>,  <43.255112, 40.907738, 36.509632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.505669, 40.599743, 36.558212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030489, 0.131482, 0.990849,
		-0.778912, -0.624362, 0.058883,
		0.626391, -0.769989, 0.121450,
		43.693584, 40.368748, 36.594646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010944, 40.409859, 37.157940>,  <43.255112, 40.907738, 36.509632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010944, 40.409859, 37.157940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402153, 40.340996, 37.110901>,  <43.636879, 40.299679, 37.082676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402153, 40.340996, 37.110901>,  <43.010944, 40.409859, 37.157940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402153, 40.340996, 37.110901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135267, 0.094726, 0.986271,
		-0.158650, -0.980505, 0.115931,
		0.978025, -0.172154, -0.117601,
		43.695560, 40.289349, 37.075619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188911, 39.846378, 37.630001>,  <43.010944, 40.409859, 37.157940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188911, 39.846378, 37.630001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544842, 40.011150, 37.551495>,  <43.758400, 40.110016, 37.504391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544842, 40.011150, 37.551495>,  <43.188911, 39.846378, 37.630001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544842, 40.011150, 37.551495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121032, 0.201634, 0.971954,
		0.439954, -0.888625, 0.129562,
		0.889827, 0.411934, -0.196262,
		43.811790, 40.134731, 37.492615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595177, 39.550869, 38.187809>,  <43.188911, 39.846378, 37.630001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595177, 39.550869, 38.187809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.755283, 39.886898, 38.041351>,  <43.851349, 40.088516, 37.953476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.755283, 39.886898, 38.041351>,  <43.595177, 39.550869, 38.187809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.755283, 39.886898, 38.041351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068330, 0.371079, 0.926084,
		0.913848, -0.395698, 0.091129,
		0.400266, 0.840073, -0.366148,
		43.875362, 40.138920, 37.931507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291382, 39.526451, 38.425014>,  <43.595177, 39.550869, 38.187809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291382, 39.526451, 38.425014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200237, 39.905186, 38.334171>,  <44.145550, 40.132427, 38.279667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200237, 39.905186, 38.334171>,  <44.291382, 39.526451, 38.425014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200237, 39.905186, 38.334171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322598, 0.293479, 0.899889,
		0.918700, 0.131788, -0.372321,
		-0.227863, 0.946838, -0.227105,
		44.131878, 40.189236, 38.266041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.854153, 39.911407, 38.750389>,  <44.291382, 39.526451, 38.425014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.854153, 39.911407, 38.750389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564537, 40.173183, 38.663242>,  <44.390766, 40.330250, 38.610954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564537, 40.173183, 38.663242>,  <44.854153, 39.911407, 38.750389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564537, 40.173183, 38.663242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158688, 0.465437, 0.870739,
		0.671251, 0.595881, -0.440849,
		-0.724044, 0.654443, -0.217866,
		44.347324, 40.369514, 38.597881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.102795, 40.566933, 38.712708>,  <44.854153, 39.911407, 38.750389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.102795, 40.566933, 38.712708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.714840, 40.567986, 38.810116>,  <44.482067, 40.568619, 38.868561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.714840, 40.567986, 38.810116>,  <45.102795, 40.566933, 38.712708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.714840, 40.567986, 38.810116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211812, 0.502624, 0.838156,
		-0.120195, 0.864501, -0.488048,
		-0.969891, 0.002632, 0.243525,
		44.423874, 40.568775, 38.883175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.982258, 41.316582, 39.047737>,  <45.102795, 40.566933, 38.712708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.982258, 41.316582, 39.047737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656330, 41.106922, 39.146801>,  <44.460773, 40.981125, 39.206238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656330, 41.106922, 39.146801>,  <44.982258, 41.316582, 39.047737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.656330, 41.106922, 39.146801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003303, 0.431397, 0.902156,
		-0.579706, 0.734276, -0.353242,
		-0.814819, -0.524153, 0.247658,
		44.411884, 40.949677, 39.221100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.578598, 41.787567, 39.525410>,  <44.982258, 41.316582, 39.047737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.578598, 41.787567, 39.525410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.413692, 41.429024, 39.590630>,  <44.314751, 41.213898, 39.629761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.413692, 41.429024, 39.590630>,  <44.578598, 41.787567, 39.525410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.413692, 41.429024, 39.590630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110343, 0.128526, 0.985548,
		-0.904360, 0.424293, 0.045920,
		-0.412260, -0.896357, 0.163052,
		44.290016, 41.160118, 39.639545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.089779, 41.957081, 39.950867>,  <44.578598, 41.787567, 39.525410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.089779, 41.957081, 39.950867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153687, 41.567249, 40.013691>,  <44.192032, 41.333351, 40.051384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153687, 41.567249, 40.013691>,  <44.089779, 41.957081, 39.950867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153687, 41.567249, 40.013691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150331, 0.181266, 0.971876,
		-0.975640, -0.131666, 0.175471,
		0.159770, -0.974580, 0.157057,
		44.201618, 41.274876, 40.060806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579426, 41.730129, 40.523785>,  <44.089779, 41.957081, 39.950867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579426, 41.730129, 40.523785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921780, 41.523495, 40.513988>,  <44.127193, 41.399513, 40.508110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921780, 41.523495, 40.513988>,  <43.579426, 41.730129, 40.523785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921780, 41.523495, 40.513988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165272, 0.228338, 0.959451,
		-0.490045, -0.825229, 0.280809,
		0.855886, -0.516584, -0.024491,
		44.178547, 41.368519, 40.506641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610775, 41.431641, 41.110432>,  <43.579426, 41.730129, 40.523785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610775, 41.431641, 41.110432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979568, 41.477669, 40.962536>,  <44.200844, 41.505287, 40.873798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979568, 41.477669, 40.962536>,  <43.610775, 41.431641, 41.110432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979568, 41.477669, 40.962536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311994, 0.344803, 0.885308,
		0.229363, -0.931595, 0.282000,
		0.921983, 0.115075, -0.369737,
		44.256165, 41.512192, 40.851616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117950, 41.594730, 41.604301>,  <43.610775, 41.431641, 41.110432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117950, 41.594730, 41.604301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410320, 41.606972, 41.331593>,  <44.585743, 41.614315, 41.167969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410320, 41.606972, 41.331593>,  <44.117950, 41.594730, 41.604301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410320, 41.606972, 41.331593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613743, 0.407389, 0.676279,
		0.298439, -0.912742, 0.278992,
		0.730926, 0.030598, -0.681770,
		44.629597, 41.616150, 41.127060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.658386, 41.195580, 41.939068>,  <44.117950, 41.594730, 41.604301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.658386, 41.195580, 41.939068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743320, 41.469807, 41.660526>,  <44.794281, 41.634342, 41.493401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743320, 41.469807, 41.660526>,  <44.658386, 41.195580, 41.939068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.743320, 41.469807, 41.660526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653681, 0.430045, 0.622706,
		0.726372, -0.587414, -0.356831,
		0.212333, 0.685570, -0.696354,
		44.807022, 41.675476, 41.451622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464149, 41.280010, 41.647774>,  <44.658386, 41.195580, 41.939068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464149, 41.280010, 41.647774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.263317, 41.625801, 41.638050>,  <45.142818, 41.833275, 41.632214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.263317, 41.625801, 41.638050>,  <45.464149, 41.280010, 41.647774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.263317, 41.625801, 41.638050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707082, 0.426529, 0.564011,
		0.497944, 0.265990, -0.825409,
		-0.502083, 0.864478, -0.024311,
		45.112694, 41.885143, 41.630756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.769951, 40.667080, 41.653690>,  <45.464149, 41.280010, 41.647774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.769951, 40.667080, 41.653690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.863171, 40.279797, 41.617344>,  <45.919102, 40.047428, 41.595535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.863171, 40.279797, 41.617344>,  <45.769951, 40.667080, 41.653690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.863171, 40.279797, 41.617344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137502, 0.059693, -0.988701,
		0.962694, 0.242913, -0.119220,
		0.233052, -0.968210, -0.090868,
		45.933086, 39.989334, 41.590084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.029228, 40.310322, 42.248627>,  <45.769951, 40.667080, 41.653690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.029228, 40.310322, 42.248627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194954, 39.946842, 42.269093>,  <46.294388, 39.728756, 42.281372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194954, 39.946842, 42.269093>,  <46.029228, 40.310322, 42.248627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.194954, 39.946842, 42.269093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440857, -0.249550, -0.862189,
		0.796236, 0.334657, -0.503996,
		0.414310, -0.908697, 0.051165,
		46.319248, 39.674232, 42.284443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.397316, 40.242245, 41.631756>,  <46.029228, 40.310322, 42.248627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.397316, 40.242245, 41.631756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.286545, 39.879555, 41.758980>,  <46.220081, 39.661942, 41.835312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.286545, 39.879555, 41.758980>,  <46.397316, 40.242245, 41.631756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.286545, 39.879555, 41.758980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330002, -0.221124, -0.917716,
		0.902447, -0.359097, -0.237987,
		-0.276925, -0.906727, 0.318055,
		46.203468, 39.607536, 41.854397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.680405, 39.716202, 41.147369>,  <46.397316, 40.242245, 41.631756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.680405, 39.716202, 41.147369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.339851, 39.632893, 41.339943>,  <46.135521, 39.582909, 41.455486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.339851, 39.632893, 41.339943>,  <46.680405, 39.716202, 41.147369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.339851, 39.632893, 41.339943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413059, -0.299516, -0.860042,
		0.323321, -0.931081, 0.168972,
		-0.851379, -0.208275, 0.481431,
		46.084438, 39.570412, 41.484371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.743572, 39.078156, 41.349964>,  <46.680405, 39.716202, 41.147369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.743572, 39.078156, 41.349964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.361389, 39.187778, 41.306160>,  <46.132080, 39.253551, 41.279877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.361389, 39.187778, 41.306160>,  <46.743572, 39.078156, 41.349964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.361389, 39.187778, 41.306160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070902, -0.573363, -0.816228,
		-0.286482, -0.772107, 0.567256,
		-0.955458, 0.274055, -0.109514,
		46.074753, 39.269997, 41.273304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.445454, 38.494259, 41.249462>,  <46.743572, 39.078156, 41.349964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.445454, 38.494259, 41.249462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.210335, 38.782909, 41.103176>,  <46.069263, 38.956100, 41.015404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.210335, 38.782909, 41.103176>,  <46.445454, 38.494259, 41.249462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.210335, 38.782909, 41.103176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130708, -0.530820, -0.837344,
		-0.798381, -0.444386, 0.406337,
		-0.587795, 0.721631, -0.365712,
		46.033997, 38.999397, 40.993462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.781162, 38.167221, 41.068024>,  <46.445454, 38.494259, 41.249462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.781162, 38.167221, 41.068024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.790112, 38.509804, 40.861732>,  <45.795483, 38.715355, 40.737957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.790112, 38.509804, 40.861732>,  <45.781162, 38.167221, 41.068024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.790112, 38.509804, 40.861732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247781, -0.495014, -0.832806,
		-0.968558, 0.146424, 0.201138,
		0.022377, 0.856459, -0.515730,
		45.796825, 38.766743, 40.707012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159904, 38.131359, 40.714661>,  <45.781162, 38.167221, 41.068024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159904, 38.131359, 40.714661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.406025, 38.380005, 40.520756>,  <45.553699, 38.529194, 40.404411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.406025, 38.380005, 40.520756>,  <45.159904, 38.131359, 40.714661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.406025, 38.380005, 40.520756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255234, -0.424726, -0.868598,
		-0.745826, 0.658180, -0.102678,
		0.615304, 0.621616, -0.484762,
		45.590614, 38.566490, 40.375328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730274, 38.456245, 40.179028>,  <45.159904, 38.131359, 40.714661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730274, 38.456245, 40.179028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100719, 38.499668, 40.034515>,  <45.322987, 38.525723, 39.947807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100719, 38.499668, 40.034515>,  <44.730274, 38.456245, 40.179028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.100719, 38.499668, 40.034515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342826, -0.157408, -0.926117,
		-0.157408, 0.981549, -0.108561,
		0.926117, 0.108561, -0.361278,
		45.378555, 38.532238, 39.926132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696697, 38.814587, 39.580074>,  <44.730274, 38.456245, 40.179028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696697, 38.814587, 39.580074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071198, 38.692196, 39.511005>,  <45.295898, 38.618763, 39.469563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071198, 38.692196, 39.511005>,  <44.696697, 38.814587, 39.580074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.071198, 38.692196, 39.511005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198537, -0.055274, -0.978534,
		0.289860, 0.950435, -0.112497,
		0.936250, -0.305973, -0.172675,
		45.352074, 38.600403, 39.459202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811462, 39.120945, 38.951103>,  <44.696697, 38.814587, 39.580074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811462, 39.120945, 38.951103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.114483, 38.861561, 38.981075>,  <45.296295, 38.705929, 38.999058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.114483, 38.861561, 38.981075>,  <44.811462, 39.120945, 38.951103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114483, 38.861561, 38.981075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014604, -0.097924, -0.995087,
		0.652616, 0.754920, -0.064712,
		0.757548, -0.648465, 0.074931,
		45.341747, 38.667023, 39.003555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235989, 39.210129, 38.323528>,  <44.811462, 39.120945, 38.951103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235989, 39.210129, 38.323528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324295, 38.851601, 38.477345>,  <45.377281, 38.636482, 38.569633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324295, 38.851601, 38.477345>,  <45.235989, 39.210129, 38.323528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324295, 38.851601, 38.477345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014289, -0.391250, -0.920174,
		0.975222, 0.208639, -0.073568,
		0.220768, -0.896322, 0.384536,
		45.390526, 38.582703, 38.592705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.842720, 39.140919, 38.098450>,  <45.235989, 39.210129, 38.323528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.842720, 39.140919, 38.098450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658825, 38.792679, 38.168530>,  <45.548489, 38.583733, 38.210579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658825, 38.792679, 38.168530>,  <45.842720, 39.140919, 38.098450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658825, 38.792679, 38.168530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014947, -0.189673, -0.981733,
		0.887931, -0.453955, 0.074186,
		-0.459734, -0.870602, 0.175202,
		45.520905, 38.531498, 38.221088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.106304, 38.725361, 37.664410>,  <45.842720, 39.140919, 38.098450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.106304, 38.725361, 37.664410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.774990, 38.524254, 37.763340>,  <45.576202, 38.403587, 37.822697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.774990, 38.524254, 37.763340>,  <46.106304, 38.725361, 37.664410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.774990, 38.524254, 37.763340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070273, -0.344702, -0.936078,
		0.555885, -0.792718, 0.250180,
		-0.828283, -0.502771, 0.247322,
		45.526505, 38.373421, 37.837536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.281151, 38.007629, 37.567669>,  <46.106304, 38.725361, 37.664410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.281151, 38.007629, 37.567669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.882416, 37.977051, 37.559032>,  <45.643173, 37.958702, 37.553848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.882416, 37.977051, 37.559032>,  <46.281151, 38.007629, 37.567669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.882416, 37.977051, 37.559032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048060, -0.363922, -0.930189,
		0.063255, -0.928286, 0.366446,
		-0.996840, -0.076451, -0.021594,
		45.583363, 37.954117, 37.552555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.081913, 37.253994, 37.315361>,  <46.281151, 38.007629, 37.567669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.081913, 37.253994, 37.315361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749493, 37.475567, 37.295334>,  <45.550041, 37.608509, 37.283318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749493, 37.475567, 37.295334>,  <46.081913, 37.253994, 37.315361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.749493, 37.475567, 37.295334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190697, -0.368341, -0.909923,
		-0.522476, -0.746649, 0.411745,
		-0.831056, 0.553932, -0.050066,
		45.500175, 37.641747, 37.280315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.559799, 36.777344, 37.124092>,  <46.081913, 37.253994, 37.315361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.559799, 36.777344, 37.124092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409664, 37.133488, 37.021034>,  <45.319584, 37.347176, 36.959198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.409664, 37.133488, 37.021034>,  <45.559799, 36.777344, 37.124092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.409664, 37.133488, 37.021034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043176, -0.294459, -0.954688,
		-0.925882, -0.347208, 0.148964,
		-0.375339, 0.890360, -0.257643,
		45.297062, 37.400597, 36.943741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895020, 36.672318, 36.831078>,  <45.559799, 36.777344, 37.124092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895020, 36.672318, 36.831078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.006100, 37.031082, 36.693424>,  <45.072750, 37.246342, 36.610832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.006100, 37.031082, 36.693424>,  <44.895020, 36.672318, 36.831078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.006100, 37.031082, 36.693424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093860, -0.331181, -0.938887,
		-0.956071, 0.293033, -0.007786,
		0.277704, 0.896912, -0.344137,
		45.089413, 37.300156, 36.590183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525921, 36.677540, 36.307514>,  <44.895020, 36.672318, 36.831078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525921, 36.677540, 36.307514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785259, 36.975121, 36.242794>,  <44.940861, 37.153671, 36.203964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785259, 36.975121, 36.242794>,  <44.525921, 36.677540, 36.307514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785259, 36.975121, 36.242794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007545, -0.218784, -0.975744,
		-0.761308, 0.631400, -0.147461,
		0.648347, 0.743954, -0.161798,
		44.979763, 37.198307, 36.194256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.165806, 37.172340, 35.760036>,  <44.525921, 36.677540, 36.307514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.165806, 37.172340, 35.760036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565281, 37.158970, 35.775558>,  <44.804966, 37.150948, 35.784870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565281, 37.158970, 35.775558>,  <44.165806, 37.172340, 35.760036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565281, 37.158970, 35.775558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032766, -0.165273, -0.985703,
		0.039363, 0.985681, -0.163961,
		0.998688, -0.033428, 0.038803,
		44.864887, 37.148941, 35.787201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325310, 37.403637, 35.100815>,  <44.165806, 37.172340, 35.760036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325310, 37.403637, 35.100815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672436, 37.239742, 35.213257>,  <44.880711, 37.141407, 35.280720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672436, 37.239742, 35.213257>,  <44.325310, 37.403637, 35.100815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672436, 37.239742, 35.213257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174109, -0.279113, -0.944342,
		0.465388, 0.868455, -0.170879,
		0.867814, -0.409734, 0.281101,
		44.932781, 37.116821, 35.297588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.988636, 37.681484, 34.646118>,  <44.325310, 37.403637, 35.100815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.988636, 37.681484, 34.646118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.084068, 37.321190, 34.791313>,  <45.141327, 37.105015, 34.878429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.084068, 37.321190, 34.791313>,  <44.988636, 37.681484, 34.646118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.084068, 37.321190, 34.791313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365076, -0.263174, -0.893005,
		0.899888, 0.345574, 0.266047,
		0.238583, -0.900732, 0.362988,
		45.155643, 37.050972, 34.900211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474632, 37.580978, 34.242744>,  <44.988636, 37.681484, 34.646118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474632, 37.580978, 34.242744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423378, 37.225433, 34.418701>,  <45.392624, 37.012108, 34.524273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423378, 37.225433, 34.418701>,  <45.474632, 37.580978, 34.242744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423378, 37.225433, 34.418701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437449, -0.448722, -0.779286,
		0.890067, 0.092573, 0.446331,
		-0.128138, -0.888864, 0.439889,
		45.384937, 36.958775, 34.550667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.118900, 37.206978, 34.106564>,  <45.474632, 37.580978, 34.242744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.118900, 37.206978, 34.106564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822819, 36.950012, 34.185966>,  <45.645168, 36.795834, 34.233608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822819, 36.950012, 34.185966>,  <46.118900, 37.206978, 34.106564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.822819, 36.950012, 34.185966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239921, -0.528147, -0.814554,
		0.628122, -0.555309, 0.545064,
		-0.740203, -0.642412, 0.198511,
		45.600758, 36.757290, 34.245522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.388786, 36.516594, 33.972576>,  <46.118900, 37.206978, 34.106564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.388786, 36.516594, 33.972576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.992138, 36.465672, 33.963821>,  <45.754150, 36.435120, 33.958569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.992138, 36.465672, 33.963821>,  <46.388786, 36.516594, 33.972576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.992138, 36.465672, 33.963821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091724, -0.574664, -0.813233,
		0.090947, -0.808428, 0.581526,
		-0.991622, -0.127301, -0.021889,
		45.694653, 36.427483, 33.957256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.227455, 35.768509, 33.895790>,  <46.388786, 36.516594, 33.972576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.227455, 35.768509, 33.895790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.887131, 35.947670, 33.785881>,  <45.682938, 36.055168, 33.719936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.887131, 35.947670, 33.785881>,  <46.227455, 35.768509, 33.895790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.887131, 35.947670, 33.785881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094904, -0.645286, -0.758023,
		-0.516829, -0.618859, 0.591525,
		-0.850812, 0.447906, -0.274770,
		45.631886, 36.082043, 33.703449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.275425, 35.220989, 34.488117>,  <46.227455, 35.768509, 33.895790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.275425, 35.220989, 34.488117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.392620, 35.454132, 34.791283>,  <46.462936, 35.594017, 34.973183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.392620, 35.454132, 34.791283>,  <46.275425, 35.220989, 34.488117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.392620, 35.454132, 34.791283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843976, -0.530161, 0.081449,
		0.449291, 0.615799, -0.647247,
		0.292989, 0.582855, 0.757916,
		46.480518, 35.628990, 35.018658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.975071, 35.501251, 34.369892>,  <46.275425, 35.220989, 34.488117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.975071, 35.501251, 34.369892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883194, 35.468361, 34.757805>,  <46.828068, 35.448627, 34.990555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883194, 35.468361, 34.757805>,  <46.975071, 35.501251, 34.369892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.883194, 35.468361, 34.757805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782061, -0.608710, 0.133617,
		0.579330, 0.789120, 0.204121,
		-0.229690, -0.082227, 0.969784,
		46.814285, 35.443691, 35.048740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.600151, 35.563297, 34.622993>,  <46.975071, 35.501251, 34.369892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.600151, 35.563297, 34.622993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.359264, 35.395401, 34.894627>,  <47.214733, 35.294662, 35.057606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.359264, 35.395401, 34.894627>,  <47.600151, 35.563297, 34.622993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.359264, 35.395401, 34.894627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717015, -0.658402, 0.228901,
		0.351032, 0.624761, 0.697460,
		-0.602218, -0.419737, 0.679083,
		47.178600, 35.269478, 35.098351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.962910, 35.516144, 35.279884>,  <47.600151, 35.563297, 34.622993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.962910, 35.516144, 35.279884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.708954, 35.212391, 35.222946>,  <47.556580, 35.030140, 35.188786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.708954, 35.212391, 35.222946>,  <47.962910, 35.516144, 35.279884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.708954, 35.212391, 35.222946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667901, -0.632063, 0.392944,
		-0.388362, 0.154405, 0.908479,
		-0.634888, -0.759378, -0.142342,
		47.518486, 34.984577, 35.180244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.832592, 40.380463, 43.032715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623505, 40.039463, 43.031548>,  <35.498051, 39.834862, 43.030846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623505, 40.039463, 43.031548>,  <35.832592, 40.380463, 43.032715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623505, 40.039463, 43.031548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007765, -0.001338, -0.999969,
		0.852468, -0.522728, 0.007319,
		-0.522721, -0.852499, -0.002918,
		35.466690, 39.783714, 43.030674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060234, 40.093678, 42.442848>,  <35.832592, 40.380463, 43.032715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060234, 40.093678, 42.442848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710167, 39.905014, 42.485950>,  <35.500126, 39.791817, 42.511810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710167, 39.905014, 42.485950>,  <36.060234, 40.093678, 42.442848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710167, 39.905014, 42.485950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099068, -0.043295, -0.994138,
		0.473561, -0.880717, -0.008836,
		-0.875172, -0.471660, 0.107753,
		35.447617, 39.763515, 42.518276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087791, 39.601536, 41.918453>,  <36.060234, 40.093678, 42.442848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087791, 39.601536, 41.918453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.704136, 39.635105, 42.026535>,  <35.473942, 39.655247, 42.091385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.704136, 39.635105, 42.026535>,  <36.087791, 39.601536, 41.918453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704136, 39.635105, 42.026535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276204, -0.070637, -0.958500,
		-0.061316, -0.993969, 0.090920,
		-0.959141, 0.083884, 0.270207,
		35.416393, 39.660282, 42.107597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683430, 38.991119, 41.675404>,  <36.087791, 39.601536, 41.918453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683430, 38.991119, 41.675404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.438156, 39.304470, 41.716061>,  <35.290993, 39.492481, 41.740456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.438156, 39.304470, 41.716061>,  <35.683430, 38.991119, 41.675404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438156, 39.304470, 41.716061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303724, -0.115017, -0.945792,
		-0.729219, -0.610814, 0.308456,
		-0.613181, 0.783376, 0.101646,
		35.254200, 39.539482, 41.746555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134151, 38.873482, 41.162994>,  <35.683430, 38.991119, 41.675404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134151, 38.873482, 41.162994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.024242, 39.241543, 41.274578>,  <34.958298, 39.462379, 41.341530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.024242, 39.241543, 41.274578>,  <35.134151, 38.873482, 41.162994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024242, 39.241543, 41.274578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480136, 0.120061, -0.868939,
		-0.833049, -0.372697, 0.408810,
		-0.274769, 0.920153, 0.278962,
		34.941811, 39.517590, 41.358265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394417, 39.057583, 41.050671>,  <35.134151, 38.873482, 41.162994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394417, 39.057583, 41.050671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.556931, 39.422966, 41.041439>,  <34.654438, 39.642197, 41.035900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.556931, 39.422966, 41.041439>,  <34.394417, 39.057583, 41.050671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556931, 39.422966, 41.041439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325867, 0.121247, -0.937609,
		-0.853664, 0.388459, 0.346925,
		0.406286, 0.913454, -0.023082,
		34.678818, 39.697002, 41.034515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866016, 39.468472, 40.689186>,  <34.394417, 39.057583, 41.050671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866016, 39.468472, 40.689186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.210903, 39.664944, 40.639660>,  <34.417835, 39.782825, 40.609943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.210903, 39.664944, 40.639660>,  <33.866016, 39.468472, 40.689186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210903, 39.664944, 40.639660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190444, 0.087831, -0.977761,
		-0.469383, 0.866618, 0.169271,
		0.862213, 0.491181, -0.123815,
		34.469566, 39.812298, 40.602516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685532, 40.100723, 40.355473>,  <33.866016, 39.468472, 40.689186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685532, 40.100723, 40.355473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.081829, 40.059731, 40.319843>,  <34.319607, 40.035137, 40.298466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.081829, 40.059731, 40.319843>,  <33.685532, 40.100723, 40.355473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081829, 40.059731, 40.319843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055173, 0.295594, -0.953719,
		0.124065, 0.949801, 0.287203,
		0.990739, -0.102477, -0.089077,
		34.379051, 40.028988, 40.293121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964664, 40.725525, 39.914581>,  <33.685532, 40.100723, 40.355473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964664, 40.725525, 39.914581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.229683, 40.425926, 39.912041>,  <34.388695, 40.246166, 39.910515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.229683, 40.425926, 39.912041>,  <33.964664, 40.725525, 39.914581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229683, 40.425926, 39.912041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110208, 0.105867, -0.988254,
		0.740869, 0.654065, 0.152687,
		0.662547, -0.748994, -0.006350,
		34.428448, 40.201229, 39.910137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379475, 40.921486, 39.339558>,  <33.964664, 40.725525, 39.914581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379475, 40.921486, 39.339558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.519550, 40.557068, 39.426609>,  <34.603596, 40.338417, 39.478840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.519550, 40.557068, 39.426609>,  <34.379475, 40.921486, 39.339558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519550, 40.557068, 39.426609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298238, -0.111800, -0.947921,
		0.887932, 0.396853, 0.232559,
		0.350186, -0.911048, 0.217627,
		34.624607, 40.283752, 39.491898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085663, 40.817272, 39.165901>,  <34.379475, 40.921486, 39.339558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085663, 40.817272, 39.165901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.929359, 40.449116, 39.160442>,  <34.835579, 40.228222, 39.157166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.929359, 40.449116, 39.160442>,  <35.085663, 40.817272, 39.165901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929359, 40.449116, 39.160442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411816, -0.161536, -0.896835,
		0.823236, -0.356065, 0.442154,
		-0.390756, -0.920393, -0.013651,
		34.812134, 40.172997, 39.156345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583694, 40.391010, 38.874043>,  <35.085663, 40.817272, 39.165901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583694, 40.391010, 38.874043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245560, 40.181999, 38.829556>,  <35.042679, 40.056591, 38.802864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245560, 40.181999, 38.829556>,  <35.583694, 40.391010, 38.874043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245560, 40.181999, 38.829556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275277, -0.247626, -0.928926,
		0.457849, -0.815872, 0.353167,
		-0.845338, -0.522527, -0.111215,
		34.991959, 40.025242, 38.796192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761795, 39.767921, 38.517353>,  <35.583694, 40.391010, 38.874043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761795, 39.767921, 38.517353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.363049, 39.768463, 38.485718>,  <35.123802, 39.768787, 38.466736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.363049, 39.768463, 38.485718>,  <35.761795, 39.767921, 38.517353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363049, 39.768463, 38.485718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068716, -0.480438, -0.874333,
		-0.039187, -0.877028, 0.478839,
		-0.996867, 0.001359, -0.079093,
		35.063988, 39.768871, 38.461990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615513, 39.267815, 38.142323>,  <35.761795, 39.767921, 38.517353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615513, 39.267815, 38.142323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.272915, 39.455372, 38.056007>,  <35.067356, 39.567905, 38.004219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.272915, 39.455372, 38.056007>,  <35.615513, 39.267815, 38.142323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272915, 39.455372, 38.056007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132312, -0.204658, -0.969850,
		-0.498916, -0.859219, 0.113248,
		-0.856491, 0.468890, -0.215792,
		35.015968, 39.596039, 37.991268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315388, 38.844994, 37.698471>,  <35.615513, 39.267815, 38.142323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315388, 38.844994, 37.698471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136871, 39.196777, 37.632298>,  <35.029762, 39.407848, 37.592594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136871, 39.196777, 37.632298>,  <35.315388, 38.844994, 37.698471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136871, 39.196777, 37.632298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089313, -0.140169, -0.986091,
		-0.890419, -0.454860, -0.015990,
		-0.446292, 0.879462, -0.165434,
		35.002983, 39.460617, 37.582668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890705, 38.766869, 37.064240>,  <35.315388, 38.844994, 37.698471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890705, 38.766869, 37.064240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.952766, 39.158615, 37.116035>,  <34.990002, 39.393661, 37.147114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.952766, 39.158615, 37.116035>,  <34.890705, 38.766869, 37.064240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952766, 39.158615, 37.116035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146619, 0.106800, -0.983411,
		-0.976950, 0.171566, -0.127023,
		0.155153, 0.979367, 0.129493,
		34.999313, 39.452427, 37.154884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482307, 39.108788, 36.518230>,  <34.890705, 38.766869, 37.064240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482307, 39.108788, 36.518230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.766663, 39.367714, 36.628227>,  <34.937275, 39.523067, 36.694225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.766663, 39.367714, 36.628227>,  <34.482307, 39.108788, 36.518230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766663, 39.367714, 36.628227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189638, 0.200095, -0.961249,
		-0.677252, 0.735493, 0.019491,
		0.710892, 0.647312, 0.274992,
		34.979931, 39.561909, 36.710724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455376, 39.673897, 36.007137>,  <34.482307, 39.108788, 36.518230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455376, 39.673897, 36.007137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.814640, 39.738483, 36.170719>,  <35.030197, 39.777237, 36.268867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.814640, 39.738483, 36.170719>,  <34.455376, 39.673897, 36.007137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814640, 39.738483, 36.170719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331720, 0.361616, -0.871318,
		-0.288576, 0.918238, 0.271224,
		0.898157, 0.161471, 0.408952,
		35.084087, 39.786926, 36.293404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601173, 40.385773, 35.893188>,  <34.455376, 39.673897, 36.007137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601173, 40.385773, 35.893188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940647, 40.188038, 35.968418>,  <35.144329, 40.069397, 36.013557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940647, 40.188038, 35.968418>,  <34.601173, 40.385773, 35.893188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940647, 40.188038, 35.968418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448370, 0.483816, -0.751589,
		0.280543, 0.722187, 0.632251,
		0.848681, -0.494336, 0.188076,
		35.195251, 40.039738, 36.024841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088131, 40.703705, 35.562283>,  <34.601173, 40.385773, 35.893188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088131, 40.703705, 35.562283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307343, 40.379875, 35.646439>,  <35.438869, 40.185577, 35.696930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307343, 40.379875, 35.646439>,  <35.088131, 40.703705, 35.562283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307343, 40.379875, 35.646439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741224, 0.353459, -0.570660,
		0.387627, 0.468680, 0.793779,
		0.548025, -0.809571, 0.210387,
		35.471748, 40.137005, 35.709553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654854, 41.008034, 35.743454>,  <35.088131, 40.703705, 35.562283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654854, 41.008034, 35.743454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.740967, 40.637371, 35.620186>,  <35.792633, 40.414974, 35.546227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.740967, 40.637371, 35.620186>,  <35.654854, 41.008034, 35.743454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740967, 40.637371, 35.620186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770152, 0.355128, -0.529858,
		0.600434, -0.123267, 0.790116,
		0.215279, -0.926655, -0.308166,
		35.805550, 40.359375, 35.527737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338223, 40.975433, 35.753654>,  <35.654854, 41.008034, 35.743454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338223, 40.975433, 35.753654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.259518, 40.663731, 35.515648>,  <36.212296, 40.476707, 35.372845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.259518, 40.663731, 35.515648>,  <36.338223, 40.975433, 35.753654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259518, 40.663731, 35.515648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796164, 0.227184, -0.560812,
		0.572195, -0.584077, 0.575715,
		-0.196764, -0.779257, -0.595014,
		36.200489, 40.429955, 35.337143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965374, 40.558582, 35.702679>,  <36.338223, 40.975433, 35.753654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965374, 40.558582, 35.702679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.719856, 40.576588, 35.387409>,  <36.572544, 40.587391, 35.198246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.719856, 40.576588, 35.387409>,  <36.965374, 40.558582, 35.702679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719856, 40.576588, 35.387409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735607, 0.395041, -0.550296,
		0.286590, -0.917560, -0.275590,
		-0.613799, 0.045017, -0.788178,
		36.535717, 40.590092, 35.150955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133995, 40.477356, 34.856827>,  <36.965374, 40.558582, 35.702679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133995, 40.477356, 34.856827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513191, 40.604446, 34.849171>,  <37.740707, 40.680702, 34.844578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513191, 40.604446, 34.849171>,  <37.133995, 40.477356, 34.856827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513191, 40.604446, 34.849171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132720, -0.339907, 0.931047,
		0.289318, -0.885161, -0.364397,
		0.947988, 0.317731, -0.019137,
		37.797588, 40.699764, 34.843430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521084, 40.088501, 35.286232>,  <37.133995, 40.477356, 34.856827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521084, 40.088501, 35.286232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.785610, 40.388428, 35.277855>,  <37.944324, 40.568386, 35.272831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.785610, 40.388428, 35.277855>,  <37.521084, 40.088501, 35.286232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785610, 40.388428, 35.277855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213564, -0.161449, 0.963496,
		0.719067, -0.641643, -0.266903,
		0.661312, 0.749819, -0.020939,
		37.984005, 40.613373, 35.271572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244221, 39.873299, 35.565327>,  <37.521084, 40.088501, 35.286232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244221, 39.873299, 35.565327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.174824, 40.260677, 35.636883>,  <38.133186, 40.493107, 35.679817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.174824, 40.260677, 35.636883>,  <38.244221, 39.873299, 35.565327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174824, 40.260677, 35.636883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142578, -0.155030, 0.977567,
		0.974459, 0.195109, -0.111183,
		-0.173496, 0.968451, 0.178889,
		38.122776, 40.551212, 35.690548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768211, 40.064392, 35.928036>,  <38.244221, 39.873299, 35.565327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768211, 40.064392, 35.928036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.461628, 40.310860, 36.000561>,  <38.277676, 40.458740, 36.044075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.461628, 40.310860, 36.000561>,  <38.768211, 40.064392, 35.928036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461628, 40.310860, 36.000561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100436, -0.163835, 0.981362,
		0.634390, 0.770385, 0.063688,
		-0.766461, 0.616169, 0.181310,
		38.231689, 40.495712, 36.054955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012844, 40.465359, 36.509151>,  <38.768211, 40.064392, 35.928036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012844, 40.465359, 36.509151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.617031, 40.517651, 36.484737>,  <38.379543, 40.549026, 36.470089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.617031, 40.517651, 36.484737>,  <39.012844, 40.465359, 36.509151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617031, 40.517651, 36.484737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060504, 0.008012, 0.998136,
		0.130979, 0.991385, -0.000019,
		-0.989537, 0.130734, -0.061032,
		38.320171, 40.556870, 36.466427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880566, 41.016136, 36.942627>,  <39.012844, 40.465359, 36.509151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880566, 41.016136, 36.942627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.546837, 40.795956, 36.930557>,  <38.346600, 40.663849, 36.923317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.546837, 40.795956, 36.930557>,  <38.880566, 41.016136, 36.942627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546837, 40.795956, 36.930557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037210, -0.110833, 0.993142,
		-0.550021, 0.827477, 0.112953,
		-0.834322, -0.550452, -0.030170,
		38.296539, 40.630821, 36.921505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422127, 41.338787, 37.329456>,  <38.880566, 41.016136, 36.942627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422127, 41.338787, 37.329456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.298771, 40.958336, 37.322968>,  <38.224758, 40.730064, 37.319073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.298771, 40.958336, 37.322968>,  <38.422127, 41.338787, 37.329456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298771, 40.958336, 37.322968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113087, 0.019725, 0.993389,
		-0.944516, 0.308181, -0.113643,
		-0.308385, -0.951123, -0.016221,
		38.206257, 40.673000, 37.318100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826649, 41.293831, 37.805050>,  <38.422127, 41.338787, 37.329456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826649, 41.293831, 37.805050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.918846, 40.906853, 37.763260>,  <37.974167, 40.674664, 37.738186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.918846, 40.906853, 37.763260>,  <37.826649, 41.293831, 37.805050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918846, 40.906853, 37.763260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288457, -0.170470, 0.942196,
		-0.929335, -0.187037, -0.318360,
		0.230496, -0.967449, -0.104471,
		37.987995, 40.616619, 37.731918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262089, 40.877216, 38.115547>,  <37.826649, 41.293831, 37.805050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262089, 40.877216, 38.115547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.587498, 40.644836, 38.105217>,  <37.782745, 40.505409, 38.099018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.587498, 40.644836, 38.105217>,  <37.262089, 40.877216, 38.115547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587498, 40.644836, 38.105217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152855, -0.256481, 0.954386,
		-0.561080, -0.772470, -0.297455,
		0.813527, -0.580954, -0.025830,
		37.831554, 40.470551, 38.097469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045532, 40.415634, 38.583416>,  <37.262089, 40.877216, 38.115547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045532, 40.415634, 38.583416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.438747, 40.344181, 38.566757>,  <37.674675, 40.301308, 38.556763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.438747, 40.344181, 38.566757>,  <37.045532, 40.415634, 38.583416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438747, 40.344181, 38.566757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001372, -0.234190, 0.972190,
		-0.183418, -0.955639, -0.230462,
		0.983034, -0.178633, -0.041643,
		37.733658, 40.290588, 38.554264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125809, 39.713638, 38.818600>,  <37.045532, 40.415634, 38.583416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125809, 39.713638, 38.818600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.463676, 39.924065, 38.858154>,  <37.666397, 40.050320, 38.881886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.463676, 39.924065, 38.858154>,  <37.125809, 39.713638, 38.818600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463676, 39.924065, 38.858154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068414, -0.289315, 0.954786,
		0.530892, -0.799717, -0.280367,
		0.844673, 0.526070, 0.098884,
		37.717079, 40.081886, 38.887821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721375, 39.288929, 39.019455>,  <37.125809, 39.713638, 38.818600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721375, 39.288929, 39.019455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.822121, 39.658543, 39.134502>,  <37.882568, 39.880310, 39.203529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.822121, 39.658543, 39.134502>,  <37.721375, 39.288929, 39.019455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822121, 39.658543, 39.134502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142162, -0.329303, 0.933461,
		0.957265, -0.194214, -0.214301,
		0.251861, 0.924035, 0.287620,
		37.897678, 39.935753, 39.220787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294609, 39.180359, 39.449615>,  <37.721375, 39.288929, 39.019455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294609, 39.180359, 39.449615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.158298, 39.542439, 39.551193>,  <38.076511, 39.759686, 39.612141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.158298, 39.542439, 39.551193>,  <38.294609, 39.180359, 39.449615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158298, 39.542439, 39.551193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221298, -0.185289, 0.957442,
		0.913729, 0.382468, -0.137177,
		-0.340773, 0.905200, 0.253943,
		38.056065, 39.813999, 39.627377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750122, 39.395679, 39.937149>,  <38.294609, 39.180359, 39.449615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750122, 39.395679, 39.937149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.434433, 39.629986, 40.010906>,  <38.245018, 39.770569, 40.055161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.434433, 39.629986, 40.010906>,  <38.750122, 39.395679, 39.937149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434433, 39.629986, 40.010906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268172, 0.058616, 0.961586,
		0.552459, 0.808356, -0.203348,
		-0.789223, 0.585769, 0.184396,
		38.197666, 39.805717, 40.066223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969006, 39.746750, 40.517757>,  <38.750122, 39.395679, 39.937149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969006, 39.746750, 40.517757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.583637, 39.853867, 40.513599>,  <38.352417, 39.918137, 40.511105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.583637, 39.853867, 40.513599>,  <38.969006, 39.746750, 40.517757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583637, 39.853867, 40.513599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004769, 0.021663, 0.999754,
		0.267954, 0.963233, -0.019593,
		-0.963420, 0.267794, -0.010399,
		38.294613, 39.934204, 40.510479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869556, 40.164139, 41.149147>,  <38.969006, 39.746750, 40.517757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869556, 40.164139, 41.149147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.497791, 40.041374, 41.067169>,  <38.274734, 39.967716, 41.017982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.497791, 40.041374, 41.067169>,  <38.869556, 40.164139, 41.149147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497791, 40.041374, 41.067169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214932, -0.001296, 0.976628,
		-0.300007, 0.951736, -0.064761,
		-0.929408, -0.306915, -0.204947,
		38.218967, 39.949299, 41.005684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409935, 40.569687, 41.583855>,  <38.869556, 40.164139, 41.149147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409935, 40.569687, 41.583855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.208042, 40.250805, 41.451366>,  <38.086906, 40.059475, 41.371872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.208042, 40.250805, 41.451366>,  <38.409935, 40.569687, 41.583855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208042, 40.250805, 41.451366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229287, -0.246102, 0.941733,
		-0.832268, 0.551270, -0.058573,
		-0.504734, -0.797205, -0.331223,
		38.056622, 40.011642, 41.352001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.605999, 40.471069, 41.874481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.712074, 40.094982, 41.789001>,  <37.775719, 39.869331, 41.737713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.712074, 40.094982, 41.789001>,  <37.605999, 40.471069, 41.874481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712074, 40.094982, 41.789001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406384, -0.309977, 0.859515,
		-0.874371, -0.141094, -0.464292,
		0.265192, -0.940217, -0.213697,
		37.791634, 39.812916, 41.724892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009922, 40.092682, 41.940029>,  <37.605999, 40.471069, 41.874481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009922, 40.092682, 41.940029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.308117, 39.830860, 41.990322>,  <37.487034, 39.673767, 42.020500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.308117, 39.830860, 41.990322>,  <37.009922, 40.092682, 41.940029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308117, 39.830860, 41.990322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385631, -0.269708, 0.882353,
		-0.543640, -0.706266, -0.453480,
		0.745483, -0.654558, 0.125734,
		37.531761, 39.634495, 42.028042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709179, 39.614231, 42.356113>,  <37.009922, 40.092682, 41.940029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709179, 39.614231, 42.356113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.103962, 39.561474, 42.393044>,  <37.340832, 39.529819, 42.415199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.103962, 39.561474, 42.393044>,  <36.709179, 39.614231, 42.356113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103962, 39.561474, 42.393044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111019, -0.142266, 0.983583,
		-0.116587, -0.981003, -0.155052,
		0.986956, -0.131886, 0.092324,
		37.400047, 39.521904, 42.420742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714973, 39.189621, 42.891922>,  <36.709179, 39.614231, 42.356113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714973, 39.189621, 42.891922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.109371, 39.252392, 42.869347>,  <37.346012, 39.290054, 42.855801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.109371, 39.252392, 42.869347>,  <36.714973, 39.189621, 42.891922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109371, 39.252392, 42.869347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100679, -0.290366, 0.951605,
		0.132942, -0.943961, -0.302099,
		0.985997, 0.156923, -0.056435,
		37.405170, 39.299469, 42.852417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961021, 38.673912, 43.224472>,  <36.714973, 39.189621, 42.891922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961021, 38.673912, 43.224472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.256950, 38.942936, 43.231571>,  <37.434509, 39.104351, 43.235832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.256950, 38.942936, 43.231571>,  <36.961021, 38.673912, 43.224472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256950, 38.942936, 43.231571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159576, -0.201038, 0.966498,
		0.653600, -0.712209, -0.256058,
		0.739826, 0.672564, 0.017746,
		37.478897, 39.144707, 43.236897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509434, 38.399513, 43.459541>,  <36.961021, 38.673912, 43.224472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509434, 38.399513, 43.459541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.570904, 38.784542, 43.548832>,  <37.607788, 39.015560, 43.602406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.570904, 38.784542, 43.548832>,  <37.509434, 38.399513, 43.459541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570904, 38.784542, 43.548832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222063, -0.253775, 0.941428,
		0.962845, -0.095105, -0.252752,
		0.153677, 0.962576, 0.223227,
		37.617008, 39.073315, 43.615799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120586, 38.394882, 43.964230>,  <37.509434, 38.399513, 43.459541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120586, 38.394882, 43.964230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.960449, 38.759232, 44.004292>,  <37.864365, 38.977840, 44.028328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.960449, 38.759232, 44.004292>,  <38.120586, 38.394882, 43.964230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960449, 38.759232, 44.004292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262733, 0.009394, 0.964823,
		0.877892, 0.412575, -0.243077,
		-0.400346, 0.910875, 0.100150,
		37.840347, 39.032494, 44.034336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643333, 38.793617, 44.113838>,  <38.120586, 38.394882, 43.964230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643333, 38.793617, 44.113838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308918, 38.952614, 44.265121>,  <38.108269, 39.048012, 44.355892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308918, 38.952614, 44.265121>,  <38.643333, 38.793617, 44.113838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308918, 38.952614, 44.265121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468019, 0.156889, 0.869680,
		0.286350, 0.904096, -0.317197,
		-0.836039, 0.397487, 0.378210,
		38.058105, 39.071861, 44.378586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900917, 39.188297, 44.622730>,  <38.643333, 38.793617, 44.113838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900917, 39.188297, 44.622730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.516632, 39.183071, 44.733631>,  <38.286060, 39.179935, 44.800171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.516632, 39.183071, 44.733631>,  <38.900917, 39.188297, 44.622730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516632, 39.183071, 44.733631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271645, 0.160802, 0.948869,
		-0.056980, 0.986900, -0.150935,
		-0.960709, -0.013065, 0.277249,
		38.228420, 39.179150, 44.816807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953171, 39.579163, 45.206799>,  <38.900917, 39.188297, 44.622730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953171, 39.579163, 45.206799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.623878, 39.352081, 45.206799>,  <38.426304, 39.215832, 45.206799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.623878, 39.352081, 45.206799>,  <38.953171, 39.579163, 45.206799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623878, 39.352081, 45.206799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081788, -0.118606, 0.989567,
		-0.561779, 0.814646, 0.144072,
		-0.823234, -0.567701, -0.000002,
		38.376907, 39.181770, 45.206799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560730, 39.751408, 45.931755>,  <38.953171, 39.579163, 45.206799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560730, 39.751408, 45.931755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.400791, 39.417641, 45.780029>,  <38.304829, 39.217381, 45.688995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.400791, 39.417641, 45.780029>,  <38.560730, 39.751408, 45.931755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400791, 39.417641, 45.780029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016662, -0.420381, 0.907195,
		-0.916431, 0.356418, 0.181991,
		-0.399846, -0.834414, -0.379311,
		38.280838, 39.167316, 45.666237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223038, 39.543930, 46.439266>,  <38.560730, 39.751408, 45.931755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223038, 39.543930, 46.439266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.221390, 39.213573, 46.213737>,  <38.220402, 39.015362, 46.078423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.221390, 39.213573, 46.213737>,  <38.223038, 39.543930, 46.439266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221390, 39.213573, 46.213737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063132, -0.562484, 0.824394,
		-0.997997, 0.038991, -0.049822,
		-0.004120, -0.825888, -0.563819,
		38.220154, 38.965809, 46.044590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606937, 39.147923, 46.545979>,  <38.223038, 39.543930, 46.439266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606937, 39.147923, 46.545979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.905502, 38.905388, 46.436260>,  <38.084641, 38.759869, 46.370430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.905502, 38.905388, 46.436260>,  <37.606937, 39.147923, 46.545979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905502, 38.905388, 46.436260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183135, -0.583398, 0.791270,
		-0.639794, -0.540378, -0.546494,
		0.746408, -0.606332, -0.274293,
		38.129425, 38.723488, 46.353973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430412, 38.472733, 46.789173>,  <37.606937, 39.147923, 46.545979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430412, 38.472733, 46.789173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811909, 38.396481, 46.696182>,  <38.040806, 38.350731, 46.640388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811909, 38.396481, 46.696182>,  <37.430412, 38.472733, 46.789173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811909, 38.396481, 46.696182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059679, -0.637832, 0.767860,
		-0.294657, -0.746211, -0.596948,
		0.953738, -0.190630, -0.232475,
		38.098030, 38.339291, 46.626438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548492, 37.665600, 46.714783>,  <37.430412, 38.472733, 46.789173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548492, 37.665600, 46.714783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.910881, 37.818741, 46.787052>,  <38.128315, 37.910625, 46.830414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.910881, 37.818741, 46.787052>,  <37.548492, 37.665600, 46.714783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910881, 37.818741, 46.787052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097145, -0.603395, 0.791503,
		0.412051, -0.699524, -0.583849,
		0.905967, 0.382858, 0.180674,
		38.182671, 37.933598, 46.841255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913616, 37.076939, 46.877300>,  <37.548492, 37.665600, 46.714783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913616, 37.076939, 46.877300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113865, 37.376431, 47.051094>,  <38.234013, 37.556126, 47.155373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113865, 37.376431, 47.051094>,  <37.913616, 37.076939, 46.877300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113865, 37.376431, 47.051094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179035, -0.580610, 0.794253,
		0.846953, -0.319828, -0.424713,
		0.500617, 0.748733, 0.434489,
		38.264050, 37.601051, 47.181442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446182, 36.689907, 47.219276>,  <37.913616, 37.076939, 46.877300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446182, 36.689907, 47.219276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.468510, 37.058338, 47.373421>,  <38.481907, 37.279396, 47.465908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.468510, 37.058338, 47.373421>,  <38.446182, 36.689907, 47.219276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468510, 37.058338, 47.373421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448064, -0.368026, 0.814737,
		0.892257, 0.127192, -0.433242,
		0.055816, 0.921075, 0.385364,
		38.485256, 37.334660, 47.489029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111042, 36.746056, 47.498409>,  <38.446182, 36.689907, 47.219276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111042, 36.746056, 47.498409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.880714, 37.020336, 47.676506>,  <38.742516, 37.184906, 47.783363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.880714, 37.020336, 47.676506>,  <39.111042, 36.746056, 47.498409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880714, 37.020336, 47.676506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358049, -0.278081, 0.891332,
		0.735003, 0.672665, -0.085391,
		-0.575822, 0.685706, 0.445237,
		38.707966, 37.226048, 47.810078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584755, 37.219692, 47.915985>,  <39.111042, 36.746056, 47.498409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584755, 37.219692, 47.915985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.220097, 37.226551, 48.080235>,  <39.001301, 37.230667, 48.178783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.220097, 37.226551, 48.080235>,  <39.584755, 37.219692, 47.915985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220097, 37.226551, 48.080235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367377, -0.413871, 0.832913,
		0.184224, 0.910174, 0.371005,
		-0.911645, 0.017144, 0.410622,
		38.946602, 37.231693, 48.203423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751022, 37.381039, 48.628525>,  <39.584755, 37.219692, 47.915985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751022, 37.381039, 48.628525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.374466, 37.246159, 48.632156>,  <39.148533, 37.165230, 48.634335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.374466, 37.246159, 48.632156>,  <39.751022, 37.381039, 48.628525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374466, 37.246159, 48.632156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155805, -0.410788, 0.898319,
		-0.299185, 0.847082, 0.439249,
		-0.941389, -0.337201, 0.009078,
		39.092049, 37.144997, 48.634880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414127, 37.558914, 49.216717>,  <39.751022, 37.381039, 48.628525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414127, 37.558914, 49.216717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.228497, 37.228447, 49.088921>,  <39.117119, 37.030167, 49.012241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.228497, 37.228447, 49.088921>,  <39.414127, 37.558914, 49.216717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228497, 37.228447, 49.088921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103236, -0.408675, 0.906822,
		-0.879757, 0.387855, 0.274948,
		-0.464080, -0.826167, -0.319494,
		39.089272, 36.980598, 48.993073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899624, 37.480728, 49.540722>,  <39.414127, 37.558914, 49.216717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899624, 37.480728, 49.540722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.004581, 37.115902, 49.414684>,  <39.067558, 36.897007, 49.339062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.004581, 37.115902, 49.414684>,  <38.899624, 37.480728, 49.540722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004581, 37.115902, 49.414684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181386, -0.274092, 0.944443,
		-0.947758, -0.304973, 0.093515,
		0.262398, -0.912066, -0.315091,
		39.083302, 36.842281, 49.320156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677727, 37.117088, 50.094044>,  <38.899624, 37.480728, 49.540722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677727, 37.117088, 50.094044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.913502, 36.865437, 49.891357>,  <39.054966, 36.714443, 49.769745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.913502, 36.865437, 49.891357>,  <38.677727, 37.117088, 50.094044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913502, 36.865437, 49.891357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244286, -0.459079, 0.854149,
		-0.769995, -0.627249, -0.116909,
		0.589435, -0.629131, -0.506716,
		39.090332, 36.676697, 49.739342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058807, 36.750854, 50.229588>,  <38.677727, 37.117088, 50.094044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058807, 36.750854, 50.229588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.821892, 36.543037, 50.475929>,  <37.679745, 36.418346, 50.623734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.821892, 36.543037, 50.475929>,  <38.058807, 36.750854, 50.229588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821892, 36.543037, 50.475929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584476, -0.249076, -0.772236,
		0.554603, -0.817336, -0.156135,
		-0.592286, -0.519542, 0.615852,
		37.644207, 36.387177, 50.660686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832298, 36.175629, 49.921913>,  <38.058807, 36.750854, 50.229588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832298, 36.175629, 49.921913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551235, 36.283707, 50.185204>,  <37.382595, 36.348553, 50.343178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551235, 36.283707, 50.185204>,  <37.832298, 36.175629, 49.921913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551235, 36.283707, 50.185204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658273, 0.104285, -0.745521,
		-0.270080, -0.957141, 0.104586,
		-0.702662, 0.270197, 0.658225,
		37.340435, 36.364765, 50.382671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293655, 35.873878, 49.662796>,  <37.832298, 36.175629, 49.921913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293655, 35.873878, 49.662796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.151241, 36.161118, 49.901989>,  <37.065792, 36.333462, 50.045506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.151241, 36.161118, 49.901989>,  <37.293655, 35.873878, 49.662796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151241, 36.161118, 49.901989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602482, 0.312762, -0.734299,
		-0.714323, -0.621706, 0.321287,
		-0.356032, 0.718096, 0.597980,
		37.044430, 36.376545, 50.081383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489883, 35.800556, 49.714165>,  <37.293655, 35.873878, 49.662796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489883, 35.800556, 49.714165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.590069, 36.176414, 49.807396>,  <36.650181, 36.401932, 49.863335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.590069, 36.176414, 49.807396>,  <36.489883, 35.800556, 49.714165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590069, 36.176414, 49.807396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606367, 0.339939, -0.718861,
		-0.754709, 0.038722, 0.654916,
		0.250467, 0.939650, 0.233076,
		36.665211, 36.458309, 49.877319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925976, 36.154152, 49.886868>,  <36.489883, 35.800556, 49.714165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925976, 36.154152, 49.886868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.169018, 36.449635, 49.770161>,  <36.314842, 36.626926, 49.700138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.169018, 36.449635, 49.770161>,  <35.925976, 36.154152, 49.886868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169018, 36.449635, 49.770161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700910, 0.325938, -0.634421,
		-0.373556, 0.589976, 0.715810,
		0.607603, 0.738710, -0.291764,
		36.351299, 36.671249, 49.682632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473862, 36.765362, 49.856640>,  <35.925976, 36.154152, 49.886868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473862, 36.765362, 49.856640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.798569, 36.885181, 49.656120>,  <35.993393, 36.957073, 49.535809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.798569, 36.885181, 49.656120>,  <35.473862, 36.765362, 49.856640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798569, 36.885181, 49.656120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583971, 0.411323, -0.699850,
		-0.003441, 0.860862, 0.508826,
		0.811767, 0.299548, -0.501303,
		36.042099, 36.975044, 49.505730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343533, 37.418015, 49.683704>,  <35.473862, 36.765362, 49.856640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343533, 37.418015, 49.683704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.637703, 37.308987, 49.435558>,  <35.814205, 37.243568, 49.286671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.637703, 37.308987, 49.435558>,  <35.343533, 37.418015, 49.683704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637703, 37.308987, 49.435558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347612, 0.634111, -0.690702,
		0.581645, 0.723607, 0.371594,
		0.735429, -0.272573, -0.620362,
		35.858330, 37.227215, 49.249451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745869, 38.006992, 49.421410>,  <35.343533, 37.418015, 49.683704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745869, 38.006992, 49.421410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.785713, 37.720737, 49.144875>,  <35.809620, 37.548985, 48.978954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.785713, 37.720737, 49.144875>,  <35.745869, 38.006992, 49.421410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785713, 37.720737, 49.144875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241748, 0.656566, -0.714478,
		0.965213, 0.238300, -0.107601,
		0.099613, -0.715635, -0.691334,
		35.815598, 37.506046, 48.937473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056973, 38.294144, 48.912357>,  <35.745869, 38.006992, 49.421410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056973, 38.294144, 48.912357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.911102, 37.961071, 48.745667>,  <35.823582, 37.761227, 48.645653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.911102, 37.961071, 48.745667>,  <36.056973, 38.294144, 48.912357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911102, 37.961071, 48.745667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266432, 0.522147, -0.810171,
		0.892204, -0.184418, -0.412265,
		-0.364672, -0.832678, -0.416727,
		35.801701, 37.711269, 48.620647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244228, 38.394859, 48.199375>,  <36.056973, 38.294144, 48.912357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244228, 38.394859, 48.199375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.895210, 38.208332, 48.257637>,  <35.685799, 38.096416, 48.292595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.895210, 38.208332, 48.257637>,  <36.244228, 38.394859, 48.199375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895210, 38.208332, 48.257637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341781, 0.369645, -0.864030,
		0.349057, -0.803694, -0.481908,
		-0.872550, -0.466303, 0.145660,
		35.633446, 38.068439, 48.301334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864799, 38.871269, 47.713490>,  <36.244228, 38.394859, 48.199375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864799, 38.871269, 47.713490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.810951, 38.554081, 47.475807>,  <35.778641, 38.363770, 47.333199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.810951, 38.554081, 47.475807>,  <35.864799, 38.871269, 47.713490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810951, 38.554081, 47.475807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074769, 0.589827, -0.804061,
		0.988073, -0.152670, -0.020113,
		-0.134620, -0.792966, -0.594207,
		35.770565, 38.316193, 47.297546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350735, 38.944466, 47.089752>,  <35.864799, 38.871269, 47.713490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350735, 38.944466, 47.089752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.081692, 38.665024, 46.992130>,  <35.920265, 38.497360, 46.933559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.081692, 38.665024, 46.992130>,  <36.350735, 38.944466, 47.089752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081692, 38.665024, 46.992130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092514, 0.247827, -0.964377,
		0.734196, -0.671223, -0.102059,
		-0.672605, -0.698600, -0.244051,
		35.879910, 38.455444, 46.918915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550304, 38.477551, 46.573956>,  <36.350735, 38.944466, 47.089752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550304, 38.477551, 46.573956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.153721, 38.478432, 46.521793>,  <35.915771, 38.478958, 46.490498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.153721, 38.478432, 46.521793>,  <36.550304, 38.477551, 46.573956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153721, 38.478432, 46.521793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129054, 0.161050, -0.978472,
		0.018850, -0.986944, -0.159958,
		-0.991458, 0.002199, -0.130405,
		35.856285, 38.479092, 46.482674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558136, 38.185040, 45.930264>,  <36.550304, 38.477551, 46.573956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558136, 38.185040, 45.930264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.197189, 38.336613, 46.012390>,  <35.980621, 38.427555, 46.061665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.197189, 38.336613, 46.012390>,  <36.558136, 38.185040, 45.930264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197189, 38.336613, 46.012390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134938, 0.204035, -0.969619,
		-0.409310, -0.902652, -0.132981,
		-0.902362, 0.378931, 0.205316,
		35.926479, 38.450291, 46.073986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133869, 37.823032, 45.516644>,  <36.558136, 38.185040, 45.930264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133869, 37.823032, 45.516644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.965809, 38.175140, 45.604824>,  <35.864975, 38.386406, 45.657730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.965809, 38.175140, 45.604824>,  <36.133869, 37.823032, 45.516644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965809, 38.175140, 45.604824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052837, 0.266249, -0.962455,
		-0.905916, -0.392726, -0.158375,
		-0.420149, 0.880271, 0.220449,
		35.839764, 38.439220, 45.670959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743534, 37.879887, 44.892082>,  <36.133869, 37.823032, 45.516644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743534, 37.879887, 44.892082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.753166, 38.246208, 45.052441>,  <35.758945, 38.466003, 45.148655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.753166, 38.246208, 45.052441>,  <35.743534, 37.879887, 44.892082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753166, 38.246208, 45.052441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190265, 0.397882, -0.897491,
		-0.981437, -0.054662, 0.183828,
		0.024083, 0.915807, 0.400896,
		35.760391, 38.520950, 45.172710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105984, 38.189056, 44.679806>,  <35.743534, 37.879887, 44.892082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105984, 38.189056, 44.679806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.371159, 38.478680, 44.755966>,  <35.530266, 38.652454, 44.801662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.371159, 38.478680, 44.755966>,  <35.105984, 38.189056, 44.679806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371159, 38.478680, 44.755966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269737, 0.468234, -0.841427,
		-0.698392, 0.506458, 0.505716,
		0.662941, 0.724056, 0.190400,
		35.570042, 38.695896, 44.813087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733604, 38.754044, 44.644047>,  <35.105984, 38.189056, 44.679806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733604, 38.754044, 44.644047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.115463, 38.859020, 44.587795>,  <35.344578, 38.922005, 44.554043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.115463, 38.859020, 44.587795>,  <34.733604, 38.754044, 44.644047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115463, 38.859020, 44.587795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270693, 0.568296, -0.777023,
		-0.123999, 0.779850, 0.613562,
		0.954646, 0.262437, -0.140631,
		35.401855, 38.937752, 44.545605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746880, 39.416786, 44.566006>,  <34.733604, 38.754044, 44.644047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746880, 39.416786, 44.566006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084099, 39.282295, 44.398094>,  <35.286430, 39.201599, 44.297348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084099, 39.282295, 44.398094>,  <34.746880, 39.416786, 44.566006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084099, 39.282295, 44.398094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202963, 0.523907, -0.827241,
		0.498067, 0.782606, 0.373439,
		0.843051, -0.336227, -0.419781,
		35.337013, 39.181427, 44.272160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995182, 40.001671, 44.271778>,  <34.746880, 39.416786, 44.566006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995182, 40.001671, 44.271778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.138271, 39.690704, 44.064835>,  <35.224125, 39.504124, 43.940670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.138271, 39.690704, 44.064835>,  <34.995182, 40.001671, 44.271778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138271, 39.690704, 44.064835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224964, 0.465961, -0.855729,
		0.906327, 0.422498, -0.008207,
		0.357720, -0.777416, -0.517360,
		35.245586, 39.457481, 43.909626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359089, 40.371994, 43.655613>,  <34.995182, 40.001671, 44.271778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359089, 40.371994, 43.655613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338383, 39.990860, 43.535999>,  <35.325958, 39.762180, 43.464233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338383, 39.990860, 43.535999>,  <35.359089, 40.371994, 43.655613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338383, 39.990860, 43.535999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007389, 0.299791, -0.953976,
		0.998632, -0.047174, -0.022560,
		-0.051767, -0.952838, -0.299032,
		35.322853, 39.705009, 43.446289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.390854, 40.045490, 40.321888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.322395, 40.434021, 40.255886>,  <44.281322, 40.667141, 40.216286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.322395, 40.434021, 40.255886>,  <44.390854, 40.045490, 40.321888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322395, 40.434021, 40.255886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341720, -0.215602, -0.914737,
		-0.924087, -0.100166, 0.368822,
		-0.171145, 0.971330, -0.165006,
		44.271053, 40.725422, 40.206383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736565, 40.045601, 40.049419>,  <44.390854, 40.045490, 40.321888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736565, 40.045601, 40.049419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.933708, 40.365833, 39.913094>,  <44.051994, 40.557972, 39.831299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.933708, 40.365833, 39.913094>,  <43.736565, 40.045601, 40.049419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.933708, 40.365833, 39.913094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388718, -0.147845, -0.909418,
		-0.778455, 0.580693, 0.238336,
		0.492856, 0.800586, -0.340816,
		44.081566, 40.606010, 39.810848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359432, 40.361416, 39.655609>,  <43.736565, 40.045601, 40.049419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.359432, 40.361416, 39.655609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.694778, 40.523434, 39.509693>,  <43.895988, 40.620644, 39.422142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.694778, 40.523434, 39.509693>,  <43.359432, 40.361416, 39.655609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694778, 40.523434, 39.509693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377405, -0.051558, -0.924612,
		-0.393320, 0.912840, 0.109642,
		0.838370, 0.405048, -0.364790,
		43.946289, 40.644947, 39.400257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148746, 40.760323, 39.026539>,  <43.359432, 40.361416, 39.655609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148746, 40.760323, 39.026539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.542713, 40.697933, 38.996586>,  <43.779095, 40.660500, 38.978615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.542713, 40.697933, 38.996586>,  <43.148746, 40.760323, 39.026539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542713, 40.697933, 38.996586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078007, -0.014012, -0.996854,
		0.154431, 0.987662, -0.025967,
		0.984919, -0.155971, -0.074880,
		43.838188, 40.651142, 38.974121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432846, 41.243507, 38.500893>,  <43.148746, 40.760323, 39.026539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432846, 41.243507, 38.500893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.686974, 40.935875, 38.528877>,  <43.839451, 40.751297, 38.545670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.686974, 40.935875, 38.528877>,  <43.432846, 41.243507, 38.500893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686974, 40.935875, 38.528877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062954, -0.038717, -0.997265,
		0.769682, 0.637983, 0.023819,
		0.635316, -0.769077, 0.069963,
		43.877567, 40.705151, 38.549866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.927055, 41.402046, 37.917561>,  <43.432846, 41.243507, 38.500893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.927055, 41.402046, 37.917561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.986023, 41.020203, 38.021091>,  <44.021404, 40.791096, 38.083210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.986023, 41.020203, 38.021091>,  <43.927055, 41.402046, 37.917561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986023, 41.020203, 38.021091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173435, -0.232687, -0.956962,
		0.973749, 0.185966, 0.131259,
		0.147420, -0.954606, 0.258832,
		44.030251, 40.733822, 38.098740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603325, 41.170731, 37.522346>,  <43.927055, 41.402046, 37.917561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603325, 41.170731, 37.522346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.396183, 40.848484, 37.637455>,  <44.271900, 40.655136, 37.706520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.396183, 40.848484, 37.637455>,  <44.603325, 41.170731, 37.522346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396183, 40.848484, 37.637455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046866, -0.362596, -0.930767,
		0.854185, -0.468513, 0.225527,
		-0.517852, -0.805617, 0.287767,
		44.240826, 40.606800, 37.723785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945625, 40.602875, 37.284943>,  <44.603325, 41.170731, 37.522346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945625, 40.602875, 37.284943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.566219, 40.485416, 37.332436>,  <44.338577, 40.414940, 37.360931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.566219, 40.485416, 37.332436>,  <44.945625, 40.602875, 37.284943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.566219, 40.485416, 37.332436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001534, -0.379101, -0.925354,
		0.316736, -0.877528, 0.360032,
		-0.948513, -0.293645, 0.118729,
		44.281666, 40.397324, 37.368053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937553, 39.999660, 36.994385>,  <44.945625, 40.602875, 37.284943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937553, 39.999660, 36.994385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.553246, 40.109818, 37.007572>,  <44.322662, 40.175911, 37.015484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.553246, 40.109818, 37.007572>,  <44.937553, 39.999660, 36.994385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553246, 40.109818, 37.007572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136526, -0.366097, -0.920507,
		-0.241426, -0.888895, 0.389331,
		-0.960768, 0.275389, 0.032972,
		44.265015, 40.192436, 37.017464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621475, 39.462360, 36.701881>,  <44.937553, 39.999660, 36.994385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621475, 39.462360, 36.701881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.316059, 39.718739, 36.670387>,  <44.132809, 39.872566, 36.651493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.316059, 39.718739, 36.670387>,  <44.621475, 39.462360, 36.701881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316059, 39.718739, 36.670387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025468, -0.151715, -0.988096,
		-0.645258, -0.752446, 0.132165,
		-0.763540, 0.640943, -0.078732,
		44.086998, 39.911022, 36.646767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988876, 39.118244, 36.457607>,  <44.621475, 39.462360, 36.701881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988876, 39.118244, 36.457607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.950523, 39.507469, 36.373741>,  <43.927513, 39.741005, 36.323421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.950523, 39.507469, 36.373741>,  <43.988876, 39.118244, 36.457607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950523, 39.507469, 36.373741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319518, -0.229574, -0.919350,
		-0.942717, -0.021157, 0.332922,
		-0.095881, 0.973061, -0.209664,
		43.921761, 39.799389, 36.310841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349831, 39.150726, 36.032372>,  <43.988876, 39.118244, 36.457607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349831, 39.150726, 36.032372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.529800, 39.495876, 35.940277>,  <43.637783, 39.702969, 35.885021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.529800, 39.495876, 35.940277>,  <43.349831, 39.150726, 36.032372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529800, 39.495876, 35.940277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162954, -0.174158, -0.971141,
		-0.878075, 0.474456, 0.062252,
		0.449922, 0.862880, -0.230238,
		43.664776, 39.754742, 35.871204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849876, 39.543457, 35.496895>,  <43.349831, 39.150726, 36.032372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849876, 39.543457, 35.496895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.215088, 39.705715, 35.479816>,  <43.434216, 39.803070, 35.469570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.215088, 39.705715, 35.479816>,  <42.849876, 39.543457, 35.496895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215088, 39.705715, 35.479816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075707, 0.065682, -0.994964,
		-0.400797, 0.911668, 0.090680,
		0.913034, 0.405644, -0.042695,
		43.488998, 39.827408, 35.467007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856880, 40.036533, 35.090355>,  <42.849876, 39.543457, 35.496895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856880, 40.036533, 35.090355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.229691, 39.892017, 35.079071>,  <43.453377, 39.805305, 35.072300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.229691, 39.892017, 35.079071>,  <42.856880, 40.036533, 35.090355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229691, 39.892017, 35.079071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130462, -0.261894, -0.956238,
		0.338095, 0.894918, -0.291227,
		0.932025, -0.361293, -0.028208,
		43.509296, 39.783630, 35.070610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987095, 39.981449, 34.345398>,  <42.856880, 40.036533, 35.090355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987095, 39.981449, 34.345398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.288422, 39.774307, 34.507553>,  <43.469219, 39.650021, 34.604847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.288422, 39.774307, 34.507553>,  <42.987095, 39.981449, 34.345398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288422, 39.774307, 34.507553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102829, -0.516085, -0.850343,
		0.649570, 0.682263, -0.335524,
		0.753316, -0.517856, 0.405390,
		43.514416, 39.618950, 34.629169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523998, 40.061867, 33.846916>,  <42.987095, 39.981449, 34.345398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523998, 40.061867, 33.846916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.553059, 39.732246, 34.071651>,  <43.570496, 39.534473, 34.206493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.553059, 39.732246, 34.071651>,  <43.523998, 40.061867, 33.846916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553059, 39.732246, 34.071651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017393, -0.564287, -0.825395,
		0.997206, 0.050191, -0.055326,
		0.072647, -0.824051, 0.561837,
		43.574852, 39.485031, 34.240204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907547, 39.670437, 33.465591>,  <43.523998, 40.061867, 33.846916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907547, 39.670437, 33.465591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.796326, 39.393288, 33.731709>,  <43.729595, 39.226997, 33.891380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.796326, 39.393288, 33.731709>,  <43.907547, 39.670437, 33.465591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.796326, 39.393288, 33.731709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060244, -0.703819, -0.707820,
		0.958676, -0.156728, 0.237438,
		-0.278049, -0.692874, 0.665293,
		43.712910, 39.185425, 33.931297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362862, 39.193108, 33.349026>,  <43.907547, 39.670437, 33.465591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362862, 39.193108, 33.349026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.052197, 39.013569, 33.525810>,  <43.865795, 38.905846, 33.631882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.052197, 39.013569, 33.525810>,  <44.362862, 39.193108, 33.349026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052197, 39.013569, 33.525810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036275, -0.732324, -0.679989,
		0.628866, -0.512093, 0.585054,
		-0.776667, -0.448845, 0.441957,
		43.819195, 38.878914, 33.658398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571941, 38.447475, 33.318222>,  <44.362862, 39.193108, 33.349026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.571941, 38.447475, 33.318222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.181183, 38.406532, 33.393276>,  <43.946728, 38.381966, 33.438309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.181183, 38.406532, 33.393276>,  <44.571941, 38.447475, 33.318222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181183, 38.406532, 33.393276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032249, -0.797239, -0.602802,
		0.211287, -0.594923, 0.775515,
		-0.976892, -0.102355, 0.187632,
		43.888115, 38.375828, 33.449566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397228, 37.789356, 33.550293>,  <44.571941, 38.447475, 33.318222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397228, 37.789356, 33.550293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.080544, 37.949547, 33.365765>,  <43.890533, 38.045662, 33.255047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.080544, 37.949547, 33.365765>,  <44.397228, 37.789356, 33.550293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080544, 37.949547, 33.365765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140591, -0.854324, -0.500365,
		-0.594501, -0.331285, 0.732679,
		-0.791709, 0.400476, -0.461320,
		43.843033, 38.069691, 33.227367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995304, 37.227455, 33.390579>,  <44.397228, 37.789356, 33.550293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.995304, 37.227455, 33.390579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.812256, 37.503307, 33.166084>,  <43.702427, 37.668819, 33.031387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.812256, 37.503307, 33.166084>,  <43.995304, 37.227455, 33.390579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812256, 37.503307, 33.166084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258699, -0.707174, -0.658012,
		-0.850681, -0.155928, 0.502025,
		-0.457621, 0.689631, -0.561241,
		43.674969, 37.710197, 32.997711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642391, 36.819386, 33.373493>,  <43.995304, 37.227455, 33.390579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642391, 36.819386, 33.373493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.920124, 36.548260, 33.470219>,  <45.086761, 36.385582, 33.528255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.920124, 36.548260, 33.470219>,  <44.642391, 36.819386, 33.373493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.920124, 36.548260, 33.470219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017059, 0.320415, 0.947124,
		-0.719457, -0.661739, 0.210910,
		0.694327, -0.677817, 0.241814,
		45.128422, 36.344913, 33.542763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363541, 36.349396, 33.951546>,  <44.642391, 36.819386, 33.373493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363541, 36.349396, 33.951546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.762867, 36.372486, 33.953629>,  <45.002464, 36.386341, 33.954880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.762867, 36.372486, 33.953629>,  <44.363541, 36.349396, 33.951546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762867, 36.372486, 33.953629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019848, 0.255984, 0.966477,
		0.054459, -0.964956, 0.256700,
		0.998318, 0.057729, 0.005212,
		45.062363, 36.389805, 33.955193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631744, 35.914364, 34.564735>,  <44.363541, 36.349396, 33.951546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631744, 35.914364, 34.564735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.900928, 36.180874, 34.436234>,  <45.062439, 36.340778, 34.359131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.900928, 36.180874, 34.436234>,  <44.631744, 35.914364, 34.564735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900928, 36.180874, 34.436234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119532, 0.330649, 0.936154,
		0.729955, -0.668396, 0.142873,
		0.672962, 0.666272, -0.321253,
		45.102818, 36.380756, 34.339859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.191437, 35.776661, 35.017181>,  <44.631744, 35.914364, 34.564735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.191437, 35.776661, 35.017181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.246651, 36.147949, 34.878998>,  <45.279781, 36.370724, 34.796085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.246651, 36.147949, 34.878998>,  <45.191437, 35.776661, 35.017181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246651, 36.147949, 34.878998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097687, 0.334342, 0.937376,
		0.985598, -0.163140, -0.044524,
		0.138037, 0.928225, -0.345463,
		45.288063, 36.426418, 34.775360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.614479, 36.034039, 35.529984>,  <45.191437, 35.776661, 35.017181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.614479, 36.034039, 35.529984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.464661, 36.343719, 35.325897>,  <45.374771, 36.529530, 35.203445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.464661, 36.343719, 35.325897>,  <45.614479, 36.034039, 35.529984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464661, 36.343719, 35.325897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025880, 0.541329, 0.840412,
		0.926847, 0.327978, -0.182717,
		-0.374547, 0.774205, -0.510217,
		45.352295, 36.575981, 35.172832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.988590, 36.551197, 35.844692>,  <45.614479, 36.034039, 35.529984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.988590, 36.551197, 35.844692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.671135, 36.728668, 35.678181>,  <45.480659, 36.835152, 35.578274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.671135, 36.728668, 35.678181>,  <45.988590, 36.551197, 35.844692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.671135, 36.728668, 35.678181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101706, 0.577844, 0.809785,
		0.599825, 0.685017, -0.413476,
		-0.793641, 0.443676, -0.416275,
		45.433044, 36.861771, 35.553299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.138237, 37.277184, 35.877502>,  <45.988590, 36.551197, 35.844692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.138237, 37.277184, 35.877502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.746521, 37.200344, 35.851902>,  <45.511494, 37.154240, 35.836540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.746521, 37.200344, 35.851902>,  <46.138237, 37.277184, 35.877502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.746521, 37.200344, 35.851902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167211, 0.588984, 0.790657,
		-0.114191, 0.784980, -0.608906,
		-0.979286, -0.192102, -0.064001,
		45.452736, 37.142712, 35.832703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.918499, 38.014336, 35.898773>,  <46.138237, 37.277184, 35.877502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.918499, 38.014336, 35.898773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.602688, 37.791710, 36.002220>,  <45.413200, 37.658134, 36.064289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.602688, 37.791710, 36.002220>,  <45.918499, 38.014336, 35.898773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602688, 37.791710, 36.002220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164369, 0.597770, 0.784636,
		-0.591296, 0.576982, -0.563437,
		-0.789527, -0.556564, 0.258621,
		45.365829, 37.624741, 36.079807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.412537, 38.498619, 36.186371>,  <45.918499, 38.014336, 35.898773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.412537, 38.498619, 36.186371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.336658, 38.123871, 36.303867>,  <45.291134, 37.899021, 36.374367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.336658, 38.123871, 36.303867>,  <45.412537, 38.498619, 36.186371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336658, 38.123871, 36.303867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203667, 0.330215, 0.921671,
		-0.960487, 0.115008, -0.253449,
		-0.189693, -0.936873, 0.293744,
		45.279751, 37.842808, 36.391991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.810749, 38.580879, 36.565971>,  <45.412537, 38.498619, 36.186371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.810749, 38.580879, 36.565971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.980789, 38.239136, 36.685547>,  <45.082813, 38.034092, 36.757294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.980789, 38.239136, 36.685547>,  <44.810749, 38.580879, 36.565971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980789, 38.239136, 36.685547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154471, 0.256949, 0.954000,
		-0.891869, -0.451721, -0.022745,
		0.425097, -0.854357, 0.298942,
		45.108318, 37.982830, 36.775230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415226, 38.337601, 37.054371>,  <44.810749, 38.580879, 36.565971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415226, 38.337601, 37.054371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756245, 38.139999, 37.122631>,  <44.960857, 38.021439, 37.163589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756245, 38.139999, 37.122631>,  <44.415226, 38.337601, 37.054371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756245, 38.139999, 37.122631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025788, 0.286358, 0.957776,
		-0.522010, -0.820952, 0.231394,
		0.852550, -0.494001, 0.170653,
		45.012009, 37.991798, 37.173828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265682, 38.018913, 37.629776>,  <44.415226, 38.337601, 37.054371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265682, 38.018913, 37.629776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.664658, 38.020863, 37.601250>,  <44.904045, 38.022030, 37.584133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.664658, 38.020863, 37.601250>,  <44.265682, 38.018913, 37.629776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664658, 38.020863, 37.601250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065681, 0.331170, 0.941282,
		0.028201, -0.943558, 0.330003,
		0.997442, 0.004870, -0.071313,
		44.963890, 38.022324, 37.579857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476616, 37.753101, 38.306534>,  <44.265682, 38.018913, 37.629776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476616, 37.753101, 38.306534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.798721, 37.928398, 38.146790>,  <44.991985, 38.033577, 38.050941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.798721, 37.928398, 38.146790>,  <44.476616, 37.753101, 38.306534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.798721, 37.928398, 38.146790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388750, 0.118325, 0.913714,
		0.447681, -0.891035, -0.075083,
		0.805267, 0.438241, -0.399362,
		45.040302, 38.059872, 38.026981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.002720, 37.346264, 38.558235>,  <44.476616, 37.753101, 38.306534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.002720, 37.346264, 38.558235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.117508, 37.720680, 38.476768>,  <45.186382, 37.945328, 38.427887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.117508, 37.720680, 38.476768>,  <45.002720, 37.346264, 38.558235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.117508, 37.720680, 38.476768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328015, 0.103744, 0.938959,
		0.900031, -0.336259, -0.277263,
		0.286969, 0.936038, -0.203671,
		45.203598, 38.001492, 38.415668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459301, 37.402466, 39.064465>,  <45.002720, 37.346264, 38.558235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459301, 37.402466, 39.064465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.439632, 37.771198, 38.910683>,  <45.427834, 37.992439, 38.818413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.439632, 37.771198, 38.910683>,  <45.459301, 37.402466, 39.064465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.439632, 37.771198, 38.910683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524688, 0.351367, 0.775399,
		0.849874, -0.163594, -0.500951,
		-0.049167, 0.921834, -0.384453,
		45.424881, 38.047749, 38.795345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.126301, 37.612202, 39.220722>,  <45.459301, 37.402466, 39.064465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.126301, 37.612202, 39.220722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.886272, 37.921906, 39.140297>,  <45.742256, 38.107727, 39.092041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.886272, 37.921906, 39.140297>,  <46.126301, 37.612202, 39.220722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.886272, 37.921906, 39.140297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363309, 0.487711, 0.793817,
		0.712682, 0.403303, -0.573960,
		-0.600076, 0.774264, -0.201060,
		45.706249, 38.154186, 39.079979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.526104, 38.140503, 39.339809>,  <46.126301, 37.612202, 39.220722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.526104, 38.140503, 39.339809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.150074, 38.269829, 39.383129>,  <45.924458, 38.347424, 39.409119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.150074, 38.269829, 39.383129>,  <46.526104, 38.140503, 39.339809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.150074, 38.269829, 39.383129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238546, 0.396684, 0.886418,
		0.243633, 0.859133, -0.450038,
		-0.940074, 0.323316, 0.108297,
		45.868053, 38.366825, 39.415619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.575939, 38.842941, 39.476795>,  <46.526104, 38.140503, 39.339809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.575939, 38.842941, 39.476795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.221531, 38.716431, 39.612404>,  <46.008884, 38.640526, 39.693771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.221531, 38.716431, 39.612404>,  <46.575939, 38.842941, 39.476795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221531, 38.716431, 39.612404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203464, 0.391817, 0.897264,
		-0.416615, 0.863974, -0.282808,
		-0.886021, -0.316272, 0.339025,
		45.955723, 38.621548, 39.714111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.362804, 39.406361, 39.754658>,  <46.575939, 38.842941, 39.476795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.362804, 39.406361, 39.754658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.127804, 39.142452, 39.942081>,  <45.986805, 38.984108, 40.054535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.127804, 39.142452, 39.942081>,  <46.362804, 39.406361, 39.754658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.127804, 39.142452, 39.942081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000325, 0.578827, 0.815450,
		-0.809223, 0.479230, -0.339848,
		-0.587502, -0.659771, 0.468556,
		45.951553, 38.944523, 40.082649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.849384, 39.869976, 40.038647>,  <46.362804, 39.406361, 39.754658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.849384, 39.869976, 40.038647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.799397, 39.529675, 40.242844>,  <45.769405, 39.325493, 40.365360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.799397, 39.529675, 40.242844>,  <45.849384, 39.869976, 40.038647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.799397, 39.529675, 40.242844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102708, 0.500665, 0.859526,
		-0.986830, 0.159845, 0.024812,
		-0.124968, -0.850755, 0.510489,
		45.761906, 39.274448, 40.395992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238358, 39.917774, 40.466171>,  <45.849384, 39.869976, 40.038647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238358, 39.917774, 40.466171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.466942, 39.635124, 40.633080>,  <45.604092, 39.465534, 40.733223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.466942, 39.635124, 40.633080>,  <45.238358, 39.917774, 40.466171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.466942, 39.635124, 40.633080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257383, 0.328482, 0.908765,
		-0.779219, -0.626724, 0.005843,
		0.571464, -0.706623, 0.417268,
		45.638382, 39.423138, 40.758259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.914268, 40.733604, 38.926685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569138, 40.531479, 38.921112>,  <38.362061, 40.410206, 38.917770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569138, 40.531479, 38.921112>,  <38.914268, 40.733604, 38.926685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569138, 40.531479, 38.921112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026385, 0.072536, -0.997017,
		0.504814, -0.859883, -0.075918,
		-0.862825, -0.505311, -0.013929,
		38.310291, 40.379887, 38.916935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992153, 40.244339, 38.477142>,  <38.914268, 40.733604, 38.926685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992153, 40.244339, 38.477142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592159, 40.244576, 38.479248>,  <38.352161, 40.244717, 38.480511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592159, 40.244576, 38.479248>,  <38.992153, 40.244339, 38.477142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592159, 40.244576, 38.479248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005263, -0.217365, -0.976076,
		0.000571, -0.976090, 0.217365,
		-0.999986, 0.000586, 0.005261,
		38.292164, 40.244751, 38.480827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863029, 39.728924, 38.010525>,  <38.992153, 40.244339, 38.477142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863029, 39.728924, 38.010525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539780, 39.962761, 38.039310>,  <38.345829, 40.103065, 38.056583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539780, 39.962761, 38.039310>,  <38.863029, 39.728924, 38.010525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539780, 39.962761, 38.039310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135775, -0.065997, -0.988539,
		-0.573145, -0.808637, 0.132707,
		-0.808127, 0.584595, 0.071967,
		38.297340, 40.138138, 38.060902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289253, 39.383419, 37.620247>,  <38.863029, 39.728924, 38.010525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289253, 39.383419, 37.620247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186043, 39.767460, 37.663391>,  <38.124115, 39.997883, 37.689278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186043, 39.767460, 37.663391>,  <38.289253, 39.383419, 37.620247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186043, 39.767460, 37.663391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226761, 0.048337, -0.972750,
		-0.939150, -0.275452, 0.205240,
		-0.258026, 0.960099, 0.107857,
		38.108635, 40.055489, 37.695747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668106, 39.513287, 37.225662>,  <38.289253, 39.383419, 37.620247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668106, 39.513287, 37.225662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859844, 39.863636, 37.247814>,  <37.974888, 40.073845, 37.261105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859844, 39.863636, 37.247814>,  <37.668106, 39.513287, 37.225662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859844, 39.863636, 37.247814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241364, 0.192238, -0.951203,
		-0.843784, 0.442588, 0.303554,
		0.479346, 0.875877, 0.055382,
		38.003647, 40.126400, 37.264427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174294, 40.031010, 36.912628>,  <37.668106, 39.513287, 37.225662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174294, 40.031010, 36.912628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535812, 40.201656, 36.899017>,  <37.752724, 40.304043, 36.890850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535812, 40.201656, 36.899017>,  <37.174294, 40.031010, 36.912628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535812, 40.201656, 36.899017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181061, 0.309116, -0.933630,
		-0.387781, 0.849969, 0.356620,
		0.903793, 0.426614, -0.034027,
		37.806950, 40.329639, 36.888809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082970, 40.761543, 36.611416>,  <37.174294, 40.031010, 36.912628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082970, 40.761543, 36.611416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469784, 40.680843, 36.549271>,  <37.701874, 40.632423, 36.511982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469784, 40.680843, 36.549271>,  <37.082970, 40.761543, 36.611416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469784, 40.680843, 36.549271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020194, 0.547450, -0.836594,
		0.253834, 0.812155, 0.525331,
		0.967037, -0.201747, -0.155362,
		37.759895, 40.620319, 36.502663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433746, 41.468071, 36.429962>,  <37.082970, 40.761543, 36.611416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433746, 41.468071, 36.429962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650948, 41.156425, 36.304661>,  <37.781269, 40.969440, 36.229481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650948, 41.156425, 36.304661>,  <37.433746, 41.468071, 36.429962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650948, 41.156425, 36.304661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013866, 0.364675, -0.931031,
		0.839614, 0.509900, 0.187218,
		0.543007, -0.779111, -0.313257,
		37.813850, 40.922691, 36.210682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022209, 41.800987, 36.087769>,  <37.433746, 41.468071, 36.429962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022209, 41.800987, 36.087769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030464, 41.418880, 35.969757>,  <38.035419, 41.189617, 35.898949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030464, 41.418880, 35.969757>,  <38.022209, 41.800987, 36.087769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030464, 41.418880, 35.969757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066197, 0.293141, -0.953775,
		0.997593, 0.039216, -0.057185,
		0.020641, -0.955265, -0.295032,
		38.036655, 41.132301, 35.881248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634975, 41.864891, 35.604679>,  <38.022209, 41.800987, 36.087769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634975, 41.864891, 35.604679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436909, 41.525921, 35.528069>,  <38.318069, 41.322540, 35.482101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436909, 41.525921, 35.528069>,  <38.634975, 41.864891, 35.604679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436909, 41.525921, 35.528069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348336, 0.008311, -0.937333,
		0.795911, -0.530851, 0.291073,
		-0.495165, -0.847425, -0.191530,
		38.288361, 41.271694, 35.470612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119991, 41.608574, 35.091503>,  <38.634975, 41.864891, 35.604679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119991, 41.608574, 35.091503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020496, 41.273689, 34.896687>,  <38.960800, 41.072758, 34.779797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020496, 41.273689, 34.896687>,  <39.119991, 41.608574, 35.091503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020496, 41.273689, 34.896687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072293, 0.485397, -0.871300,
		0.965868, -0.251939, -0.060214,
		-0.248742, -0.837207, -0.487043,
		38.945873, 41.022526, 34.750572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550404, 41.464741, 34.567818>,  <39.119991, 41.608574, 35.091503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550404, 41.464741, 34.567818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221851, 41.279976, 34.433964>,  <39.024719, 41.169117, 34.353653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221851, 41.279976, 34.433964>,  <39.550404, 41.464741, 34.567818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221851, 41.279976, 34.433964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037761, 0.541354, -0.839947,
		0.569138, -0.702547, -0.427212,
		-0.821375, -0.461914, -0.334634,
		38.975437, 41.141403, 34.333572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567020, 41.114758, 34.019787>,  <39.550404, 41.464741, 34.567818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567020, 41.114758, 34.019787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211956, 41.297390, 34.043766>,  <38.998917, 41.406971, 34.058155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211956, 41.297390, 34.043766>,  <39.567020, 41.114758, 34.019787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211956, 41.297390, 34.043766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161603, 0.430761, -0.887879,
		-0.431212, -0.778447, -0.456154,
		-0.887660, 0.456580, 0.059950,
		38.945660, 41.434364, 34.061752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975555, 40.573395, 34.465927>,  <39.567020, 41.114758, 34.019787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975555, 40.573395, 34.465927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117088, 40.855808, 34.220547>,  <40.202007, 41.025257, 34.073318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117088, 40.855808, 34.220547>,  <39.975555, 40.573395, 34.465927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117088, 40.855808, 34.220547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904763, -0.424624, 0.033156,
		-0.237076, -0.566756, -0.789039,
		0.353836, 0.706032, -0.613448,
		40.223240, 41.067619, 34.036510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199196, 40.013638, 33.959202>,  <39.975555, 40.573395, 34.465927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199196, 40.013638, 33.959202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451180, 39.704430, 33.989124>,  <40.602367, 39.518906, 34.007076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451180, 39.704430, 33.989124>,  <40.199196, 40.013638, 33.959202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451180, 39.704430, 33.989124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671029, -0.493275, 0.553534,
		-0.390991, -0.398901, -0.829460,
		0.629958, -0.773018, 0.074808,
		40.640167, 39.472523, 34.011566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897789, 39.346691, 33.709373>,  <40.199196, 40.013638, 33.959202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897789, 39.346691, 33.709373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184601, 39.248173, 33.970203>,  <40.356689, 39.189064, 34.126701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184601, 39.248173, 33.970203>,  <39.897789, 39.346691, 33.709373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184601, 39.248173, 33.970203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659627, -0.542119, 0.520576,
		0.225288, -0.803397, -0.551179,
		0.717034, -0.246293, 0.652075,
		40.399712, 39.174286, 34.165825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992992, 38.676144, 33.706287>,  <39.897789, 39.346691, 33.709373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992992, 38.676144, 33.706287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149845, 38.766685, 34.062939>,  <40.243958, 38.821011, 34.276928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149845, 38.766685, 34.062939>,  <39.992992, 38.676144, 33.706287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149845, 38.766685, 34.062939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578308, -0.693117, 0.430290,
		0.715399, -0.684364, -0.140891,
		0.392129, 0.226350, 0.891628,
		40.267483, 38.834591, 34.330425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219727, 38.031803, 34.092033>,  <39.992992, 38.676144, 33.706287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219727, 38.031803, 34.092033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135994, 38.312153, 34.364784>,  <40.085754, 38.480362, 34.528435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135994, 38.312153, 34.364784>,  <40.219727, 38.031803, 34.092033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135994, 38.312153, 34.364784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482890, -0.680463, 0.551170,
		0.850293, -0.213897, 0.480884,
		-0.209331, 0.700870, 0.681881,
		40.073196, 38.522415, 34.569347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256321, 37.670204, 34.660828>,  <40.219727, 38.031803, 34.092033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256321, 37.670204, 34.660828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080338, 38.002171, 34.798046>,  <39.974747, 38.201351, 34.880375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080338, 38.002171, 34.798046>,  <40.256321, 37.670204, 34.660828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080338, 38.002171, 34.798046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305999, -0.497685, 0.811588,
		0.844277, 0.252091, 0.472912,
		-0.439955, 0.829915, 0.343044,
		39.948353, 38.251144, 34.900959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430199, 37.785084, 35.421253>,  <40.256321, 37.670204, 34.660828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430199, 37.785084, 35.421253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086571, 37.967186, 35.327671>,  <39.880394, 38.076447, 35.271523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086571, 37.967186, 35.327671>,  <40.430199, 37.785084, 35.421253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086571, 37.967186, 35.327671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436335, -0.412398, 0.799713,
		0.267590, 0.789095, 0.552924,
		-0.859074, 0.455254, -0.233956,
		39.828850, 38.103764, 35.257484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141701, 37.818310, 36.050362>,  <40.430199, 37.785084, 35.421253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141701, 37.818310, 36.050362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822403, 37.912624, 35.828659>,  <39.630825, 37.969215, 35.695637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822403, 37.912624, 35.828659>,  <40.141701, 37.818310, 36.050362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822403, 37.912624, 35.828659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602079, -0.338763, 0.723007,
		-0.017284, 0.910847, 0.412382,
		-0.798249, 0.235790, -0.554258,
		39.582928, 37.983360, 35.662380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758469, 38.298595, 36.492104>,  <40.141701, 37.818310, 36.050362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758469, 38.298595, 36.492104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530514, 38.104797, 36.226627>,  <39.393742, 37.988518, 36.067341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530514, 38.104797, 36.226627>,  <39.758469, 38.298595, 36.492104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530514, 38.104797, 36.226627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581452, -0.332955, 0.742330,
		-0.580639, 0.808950, -0.091966,
		-0.569888, -0.484500, -0.663692,
		39.359547, 37.959446, 36.027519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017143, 38.432693, 36.727383>,  <39.758469, 38.298595, 36.492104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017143, 38.432693, 36.727383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033951, 38.121403, 36.476753>,  <39.044037, 37.934628, 36.326378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033951, 38.121403, 36.476753>,  <39.017143, 38.432693, 36.727383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033951, 38.121403, 36.476753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612697, -0.515435, 0.599107,
		-0.789200, 0.358725, -0.498477,
		0.042018, -0.778231, -0.626571,
		39.046555, 37.887932, 36.288780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305374, 38.136539, 36.766838>,  <39.017143, 38.432693, 36.727383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305374, 38.136539, 36.766838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524101, 37.845856, 36.600521>,  <38.655338, 37.671444, 36.500732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524101, 37.845856, 36.600521>,  <38.305374, 38.136539, 36.766838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524101, 37.845856, 36.600521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488182, -0.680197, 0.546818,
		-0.680197, -0.096030, -0.726712,
		-0.546818, 0.726712, 0.415788,
		38.688148, 37.627842, 36.475784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784355, 37.658031, 36.719067>,  <38.305374, 38.136539, 36.766838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784355, 37.658031, 36.719067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140064, 37.478508, 36.683830>,  <38.353489, 37.370796, 36.662689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140064, 37.478508, 36.683830>,  <37.784355, 37.658031, 36.719067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140064, 37.478508, 36.683830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335264, -0.770667, 0.541913,
		-0.311101, -0.452378, -0.835805,
		0.889277, -0.448805, -0.088089,
		38.406849, 37.343868, 36.657402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631199, 36.981617, 36.500759>,  <37.784355, 37.658031, 36.719067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631199, 36.981617, 36.500759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983204, 36.998886, 36.689949>,  <38.194408, 37.009247, 36.803463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983204, 36.998886, 36.689949>,  <37.631199, 36.981617, 36.500759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983204, 36.998886, 36.689949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279843, -0.757499, 0.589817,
		0.383746, -0.651407, -0.654528,
		0.880015, 0.043174, 0.472979,
		38.247208, 37.011837, 36.831844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652870, 36.447906, 36.969116>,  <37.631199, 36.981617, 36.500759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652870, 36.447906, 36.969116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991417, 36.610386, 37.106903>,  <38.194546, 36.707874, 37.189575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991417, 36.610386, 37.106903>,  <37.652870, 36.447906, 36.969116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991417, 36.610386, 37.106903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103278, -0.509322, 0.854356,
		0.522483, -0.758679, -0.389125,
		0.846372, 0.406199, 0.344467,
		38.245327, 36.732246, 37.210243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082951, 35.909763, 37.348747>,  <37.652870, 36.447906, 36.969116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082951, 35.909763, 37.348747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201351, 36.263592, 37.492928>,  <38.272392, 36.475887, 37.579437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201351, 36.263592, 37.492928>,  <38.082951, 35.909763, 37.348747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201351, 36.263592, 37.492928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021374, -0.383401, 0.923335,
		0.954949, -0.265602, -0.132393,
		0.295999, 0.884567, 0.360452,
		38.290150, 36.528961, 37.601063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195362, 35.310074, 36.947861>,  <38.082951, 35.909763, 37.348747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195362, 35.310074, 36.947861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990833, 34.973583, 37.018162>,  <37.868118, 34.771690, 37.060341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990833, 34.973583, 37.018162>,  <38.195362, 35.310074, 36.947861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990833, 34.973583, 37.018162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517116, 0.137833, -0.844744,
		0.686399, -0.522817, -0.505489,
		-0.511320, -0.841228, 0.175749,
		37.837437, 34.721214, 37.070885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128975, 34.897903, 36.251148>,  <38.195362, 35.310074, 36.947861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128975, 34.897903, 36.251148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860058, 34.732933, 36.497051>,  <37.698708, 34.633949, 36.644592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860058, 34.732933, 36.497051>,  <38.128975, 34.897903, 36.251148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860058, 34.732933, 36.497051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695137, 0.066117, -0.715830,
		0.254581, -0.908588, -0.331143,
		-0.672289, -0.412427, 0.614761,
		37.658371, 34.609207, 36.681480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738667, 34.454853, 35.829155>,  <38.128975, 34.897903, 36.251148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738667, 34.454853, 35.829155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509995, 34.526569, 36.149414>,  <37.372791, 34.569599, 36.341568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509995, 34.526569, 36.149414>,  <37.738667, 34.454853, 35.829155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509995, 34.526569, 36.149414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808191, 0.045191, -0.587185,
		-0.141463, -0.982757, 0.119071,
		-0.571679, 0.179297, 0.800647,
		37.338490, 34.580357, 36.389610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066845, 34.054749, 35.784504>,  <37.738667, 34.454853, 35.829155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066845, 34.054749, 35.784504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956474, 34.344131, 36.037636>,  <36.890251, 34.517761, 36.189514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956474, 34.344131, 36.037636>,  <37.066845, 34.054749, 35.784504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956474, 34.344131, 36.037636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892215, 0.052109, -0.448595,
		-0.357517, -0.688396, 0.631104,
		-0.275925, 0.723461, 0.632827,
		36.873695, 34.561169, 36.227486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319160, 33.870155, 35.869362>,  <37.066845, 34.054749, 35.784504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319160, 33.870155, 35.869362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446518, 34.237740, 35.962433>,  <36.522930, 34.458290, 36.018276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446518, 34.237740, 35.962433>,  <36.319160, 33.870155, 35.869362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446518, 34.237740, 35.962433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631932, 0.388712, -0.670497,
		-0.706604, 0.066445, 0.704483,
		0.318392, 0.918961, 0.232677,
		36.542034, 34.513428, 36.032234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716114, 34.213017, 35.732647>,  <36.319160, 33.870155, 35.869362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716114, 34.213017, 35.732647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996853, 34.497807, 35.741528>,  <36.165298, 34.668682, 35.746857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996853, 34.497807, 35.741528>,  <35.716114, 34.213017, 35.732647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996853, 34.497807, 35.741528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631842, 0.636641, -0.442113,
		-0.328906, 0.296272, 0.896685,
		0.701852, 0.711977, 0.022198,
		36.207409, 34.711399, 35.748188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285870, 34.791107, 35.716213>,  <35.716114, 34.213017, 35.732647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285870, 34.791107, 35.716213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648045, 34.944550, 35.643524>,  <35.865349, 35.036617, 35.599911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648045, 34.944550, 35.643524>,  <35.285870, 34.791107, 35.716213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648045, 34.944550, 35.643524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422927, 0.778742, -0.463351,
		-0.036231, 0.496392, 0.867342,
		0.905439, 0.383610, -0.181723,
		35.919678, 35.059631, 35.589008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207577, 35.481518, 35.911530>,  <35.285870, 34.791107, 35.716213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207577, 35.481518, 35.911530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521778, 35.470592, 35.664227>,  <35.710300, 35.464039, 35.515846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521778, 35.470592, 35.664227>,  <35.207577, 35.481518, 35.911530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521778, 35.470592, 35.664227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417399, 0.714203, -0.561865,
		0.456904, 0.699406, 0.549609,
		0.785504, -0.027312, -0.618253,
		35.757431, 35.462399, 35.478752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404198, 36.178143, 35.796165>,  <35.207577, 35.481518, 35.911530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404198, 36.178143, 35.796165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512165, 35.973904, 35.469624>,  <35.576946, 35.851360, 35.273697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512165, 35.973904, 35.469624>,  <35.404198, 36.178143, 35.796165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512165, 35.973904, 35.469624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599062, 0.574709, -0.557525,
		0.753837, 0.639534, -0.150753,
		0.269917, -0.510594, -0.816357,
		35.593140, 35.820724, 35.224716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561104, 36.782452, 35.382164>,  <35.404198, 36.178143, 35.796165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561104, 36.782452, 35.382164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521534, 36.456436, 35.153805>,  <35.497791, 36.260826, 35.016788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521534, 36.456436, 35.153805>,  <35.561104, 36.782452, 35.382164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521534, 36.456436, 35.153805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513446, 0.533251, -0.672322,
		0.852401, 0.226617, -0.471230,
		-0.098925, -0.815039, -0.570899,
		35.491856, 36.211926, 34.982536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747498, 36.942291, 34.779396>,  <35.561104, 36.782452, 35.382164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747498, 36.942291, 34.779396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520294, 36.626495, 34.686382>,  <35.383972, 36.437019, 34.630573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520294, 36.626495, 34.686382>,  <35.747498, 36.942291, 34.779396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520294, 36.626495, 34.686382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507473, 0.558404, -0.656244,
		0.647946, -0.254747, -0.717823,
		-0.568012, -0.789487, -0.232539,
		35.349892, 36.389648, 34.616623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624954, 37.050602, 34.147266>,  <35.747498, 36.942291, 34.779396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624954, 37.050602, 34.147266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343582, 36.778358, 34.229195>,  <35.174759, 36.615013, 34.278351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343582, 36.778358, 34.229195>,  <35.624954, 37.050602, 34.147266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343582, 36.778358, 34.229195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578781, 0.381251, -0.720875,
		0.412556, -0.625624, -0.662112,
		-0.703428, -0.680619, 0.204812,
		35.132553, 36.574177, 34.290642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.004314, 33.437183, 40.262882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.606003, 33.437565, 40.299610>,  <39.367016, 33.437794, 40.321648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.606003, 33.437565, 40.299610>,  <40.004314, 33.437183, 40.262882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606003, 33.437565, 40.299610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091822, -0.000873, -0.995775,
		-0.000873, -0.999999, 0.000957,
		0.995775, -0.000957, -0.091821,
		39.307270, 33.437851, 40.327156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682186, 33.010494, 39.702240>,  <40.004314, 33.437183, 40.262882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682186, 33.010494, 39.702240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.405945, 33.276337, 39.816338>,  <39.240200, 33.435844, 39.884796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.405945, 33.276337, 39.816338>,  <39.682186, 33.010494, 39.702240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405945, 33.276337, 39.816338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322213, 0.070360, -0.944049,
		-0.647493, -0.743871, 0.165555,
		-0.690602, 0.664609, 0.285242,
		39.198765, 33.475719, 39.901909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037056, 32.709984, 39.432068>,  <39.682186, 33.010494, 39.702240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037056, 32.709984, 39.432068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.969109, 33.097141, 39.506176>,  <38.928341, 33.329437, 39.550640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.969109, 33.097141, 39.506176>,  <39.037056, 32.709984, 39.432068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969109, 33.097141, 39.506176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358784, 0.114362, -0.926389,
		-0.917834, -0.223839, 0.327838,
		-0.169870, 0.967893, 0.185275,
		38.918148, 33.387508, 39.561760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371017, 32.825981, 39.195202>,  <39.037056, 32.709984, 39.432068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371017, 32.825981, 39.195202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.543762, 33.185589, 39.224201>,  <38.647408, 33.401356, 39.241600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.543762, 33.185589, 39.224201>,  <38.371017, 32.825981, 39.195202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543762, 33.185589, 39.224201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474832, 0.294957, -0.829177,
		-0.766832, 0.323666, 0.554265,
		0.431861, 0.899022, 0.072495,
		38.673321, 33.455296, 39.245949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852592, 33.300426, 39.199326>,  <38.371017, 32.825981, 39.195202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852592, 33.300426, 39.199326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.164619, 33.510239, 39.062881>,  <38.351837, 33.636127, 38.981014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.164619, 33.510239, 39.062881>,  <37.852592, 33.300426, 39.199326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164619, 33.510239, 39.062881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543406, 0.297699, -0.784911,
		-0.310164, 0.797646, 0.517261,
		0.780069, 0.524533, -0.341110,
		38.398640, 33.667599, 38.960548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636318, 33.956810, 38.984428>,  <37.852592, 33.300426, 39.199326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636318, 33.956810, 38.984428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.990822, 33.931877, 38.800838>,  <38.203526, 33.916916, 38.690685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.990822, 33.931877, 38.800838>,  <37.636318, 33.956810, 38.984428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990822, 33.931877, 38.800838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349746, 0.559599, -0.751350,
		0.303672, 0.826416, 0.474151,
		0.886262, -0.062332, -0.458970,
		38.256702, 33.913177, 38.663147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782776, 34.616386, 38.864105>,  <37.636318, 33.956810, 38.984428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782776, 34.616386, 38.864105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.005249, 34.418297, 38.597145>,  <38.138733, 34.299442, 38.436970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.005249, 34.418297, 38.597145>,  <37.782776, 34.616386, 38.864105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005249, 34.418297, 38.597145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381702, 0.561129, -0.734464,
		0.738219, 0.663241, 0.123061,
		0.556180, -0.495223, -0.667397,
		38.172104, 34.269730, 38.396927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763187, 35.021393, 38.302452>,  <37.782776, 34.616386, 38.864105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763187, 35.021393, 38.302452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925522, 34.709148, 38.112320>,  <38.022923, 34.521801, 37.998241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925522, 34.709148, 38.112320>,  <37.763187, 35.021393, 38.302452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925522, 34.709148, 38.112320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365966, 0.337769, -0.867168,
		0.837476, 0.525882, -0.148600,
		0.405835, -0.780615, -0.475328,
		38.047272, 34.474964, 37.969723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164280, 35.289993, 37.692982>,  <37.763187, 35.021393, 38.302452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164280, 35.289993, 37.692982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.054909, 34.917034, 37.598431>,  <37.989285, 34.693260, 37.541698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.054909, 34.917034, 37.598431>,  <38.164280, 35.289993, 37.692982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054909, 34.917034, 37.598431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481212, 0.345380, -0.805697,
		0.832869, -0.106552, -0.543116,
		-0.273430, -0.932394, -0.236382,
		37.972881, 34.637318, 37.527515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774269, 35.832733, 37.942638>,  <38.164280, 35.289993, 37.692982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774269, 35.832733, 37.942638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.608253, 36.189209, 38.015865>,  <38.508644, 36.403095, 38.059803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.608253, 36.189209, 38.015865>,  <38.774269, 35.832733, 37.942638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608253, 36.189209, 38.015865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325193, -0.042613, 0.944687,
		0.849700, 0.451617, -0.272124,
		-0.415041, 0.891193, 0.183071,
		38.483742, 36.456566, 38.070786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246471, 36.309361, 38.248165>,  <38.774269, 35.832733, 37.942638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246471, 36.309361, 38.248165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.910652, 36.501701, 38.349312>,  <38.709160, 36.617107, 38.410000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.910652, 36.501701, 38.349312>,  <39.246471, 36.309361, 38.248165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910652, 36.501701, 38.349312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289326, 0.001773, 0.957229,
		0.459836, 0.876800, -0.140612,
		-0.839548, 0.480851, 0.252866,
		38.658787, 36.645958, 38.425171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474720, 36.900688, 38.664650>,  <39.246471, 36.309361, 38.248165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474720, 36.900688, 38.664650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.092842, 36.827774, 38.758732>,  <38.863716, 36.784023, 38.815182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.092842, 36.827774, 38.758732>,  <39.474720, 36.900688, 38.664650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092842, 36.827774, 38.758732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246338, -0.040739, 0.968327,
		-0.166934, 0.982400, 0.083798,
		-0.954699, -0.182290, 0.235202,
		38.806431, 36.773087, 38.829292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459373, 37.244125, 39.284000>,  <39.474720, 36.900688, 38.664650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459373, 37.244125, 39.284000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.138252, 37.005871, 39.294685>,  <38.945580, 36.862915, 39.301098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.138252, 37.005871, 39.294685>,  <39.459373, 37.244125, 39.284000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138252, 37.005871, 39.294685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192305, -0.216260, 0.957210,
		-0.564377, 0.773591, 0.288160,
		-0.802806, -0.595641, 0.026713,
		38.897411, 36.827179, 39.302700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022083, 37.449028, 39.926037>,  <39.459373, 37.244125, 39.284000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022083, 37.449028, 39.926037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.959488, 37.071785, 39.808697>,  <38.921932, 36.845440, 39.738293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.959488, 37.071785, 39.808697>,  <39.022083, 37.449028, 39.926037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959488, 37.071785, 39.808697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001967, -0.296709, 0.954966,
		-0.987678, 0.150018, 0.044576,
		-0.156488, -0.943111, -0.293348,
		38.912540, 36.788853, 39.720692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529488, 37.257385, 40.376827>,  <39.022083, 37.449028, 39.926037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529488, 37.257385, 40.376827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.689739, 36.916431, 40.242401>,  <38.785892, 36.711861, 40.161747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.689739, 36.916431, 40.242401>,  <38.529488, 37.257385, 40.376827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689739, 36.916431, 40.242401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090882, -0.328006, 0.940294,
		-0.911720, -0.407255, -0.053944,
		0.400634, -0.852382, -0.336061,
		38.809929, 36.660717, 40.141582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239304, 36.664055, 40.719749>,  <38.529488, 37.257385, 40.376827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239304, 36.664055, 40.719749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.588676, 36.514248, 40.595268>,  <38.798302, 36.424366, 40.520580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.588676, 36.514248, 40.595268>,  <38.239304, 36.664055, 40.719749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588676, 36.514248, 40.595268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180828, -0.343936, 0.921417,
		-0.452117, -0.861074, -0.232684,
		0.873436, -0.374513, -0.311206,
		38.850708, 36.401894, 40.501907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223103, 35.926029, 40.922882>,  <38.239304, 36.664055, 40.719749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223103, 35.926029, 40.922882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.598812, 36.047211, 40.858410>,  <38.824238, 36.119919, 40.819729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.598812, 36.047211, 40.858410>,  <38.223103, 35.926029, 40.922882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598812, 36.047211, 40.858410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253185, -0.294754, 0.921422,
		0.231641, -0.906277, -0.353559,
		0.939276, 0.302955, -0.161178,
		38.880596, 36.138096, 40.810055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518745, 35.535736, 41.338005>,  <38.223103, 35.926029, 40.922882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518745, 35.535736, 41.338005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.831779, 35.772713, 41.261497>,  <39.019600, 35.914898, 41.215591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.831779, 35.772713, 41.261497>,  <38.518745, 35.535736, 41.338005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831779, 35.772713, 41.261497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423004, -0.280600, 0.861587,
		0.456767, -0.755169, -0.470196,
		0.782580, 0.592439, -0.191271,
		39.066555, 35.950443, 41.204117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183678, 35.138859, 41.467396>,  <38.518745, 35.535736, 41.338005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183678, 35.138859, 41.467396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.288940, 35.524471, 41.482319>,  <39.352097, 35.755840, 41.491272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.288940, 35.524471, 41.482319>,  <39.183678, 35.138859, 41.467396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288940, 35.524471, 41.482319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353751, -0.132399, 0.925922,
		0.897557, -0.230465, -0.375869,
		0.263157, 0.964031, 0.037308,
		39.367889, 35.813683, 41.493511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687119, 35.148472, 41.923283>,  <39.183678, 35.138859, 41.467396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687119, 35.148472, 41.923283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.565266, 35.527889, 41.888718>,  <39.492153, 35.755539, 41.867977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.565266, 35.527889, 41.888718>,  <39.687119, 35.148472, 41.923283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565266, 35.527889, 41.888718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098431, 0.121590, 0.987688,
		0.947371, 0.292374, -0.130406,
		-0.304631, 0.948543, -0.086412,
		39.473877, 35.812450, 41.862793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186291, 35.525677, 42.169781>,  <39.687119, 35.148472, 41.923283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186291, 35.525677, 42.169781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.872967, 35.774075, 42.180946>,  <39.684971, 35.923115, 42.187645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.872967, 35.774075, 42.180946>,  <40.186291, 35.525677, 42.169781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872967, 35.774075, 42.180946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328946, 0.375979, 0.866276,
		0.527460, 0.687750, -0.498785,
		-0.783314, 0.620999, 0.027919,
		39.637974, 35.960373, 42.189323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405598, 36.248814, 42.371204>,  <40.186291, 35.525677, 42.169781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405598, 36.248814, 42.371204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.019348, 36.209225, 42.467346>,  <39.787598, 36.185471, 42.525032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.019348, 36.209225, 42.467346>,  <40.405598, 36.248814, 42.371204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019348, 36.209225, 42.467346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185772, 0.384004, 0.904450,
		-0.181811, 0.918012, -0.352418,
		-0.965626, -0.098969, 0.240357,
		39.729660, 36.179535, 42.539452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255859, 36.773033, 42.771252>,  <40.405598, 36.248814, 42.371204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255859, 36.773033, 42.771252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.951382, 36.534664, 42.873592>,  <39.768696, 36.391644, 42.934998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.951382, 36.534664, 42.873592>,  <40.255859, 36.773033, 42.771252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951382, 36.534664, 42.873592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041013, 0.349485, 0.936044,
		-0.647229, 0.723002, -0.241584,
		-0.761191, -0.595927, 0.255849,
		39.723022, 36.355885, 42.950348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.610268, 35.983517, 44.525082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.983479, 36.118877, 44.476177>,  <35.207405, 36.200092, 44.446835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.983479, 36.118877, 44.476177>,  <34.610268, 35.983517, 44.525082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983479, 36.118877, 44.476177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219978, 0.267594, -0.938085,
		-0.284734, 0.902152, 0.324113,
		0.933025, 0.338402, -0.122260,
		35.263386, 36.220398, 44.439499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645199, 36.697685, 44.292458>,  <34.610268, 35.983517, 44.525082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645199, 36.697685, 44.292458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.021378, 36.617535, 44.182610>,  <35.247086, 36.569443, 44.116699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.021378, 36.617535, 44.182610>,  <34.645199, 36.697685, 44.292458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021378, 36.617535, 44.182610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129619, 0.535443, -0.834566,
		0.314273, 0.820457, 0.477580,
		0.940442, -0.200378, -0.274622,
		35.303509, 36.557423, 44.100224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893810, 37.345375, 44.077480>,  <34.645199, 36.697685, 44.292458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893810, 37.345375, 44.077480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.157574, 37.088860, 43.920544>,  <35.315830, 36.934952, 43.826382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.157574, 37.088860, 43.920544>,  <34.893810, 37.345375, 44.077480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157574, 37.088860, 43.920544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064377, 0.568129, -0.820417,
		0.749027, 0.515729, 0.415911,
		0.659404, -0.641290, -0.392343,
		35.355396, 36.896473, 43.802841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255817, 37.765743, 43.619099>,  <34.893810, 37.345375, 44.077480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255817, 37.765743, 43.619099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.366428, 37.393349, 43.523777>,  <35.432796, 37.169910, 43.466583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.366428, 37.393349, 43.523777>,  <35.255817, 37.765743, 43.619099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366428, 37.393349, 43.523777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136864, 0.283598, -0.949126,
		0.951209, 0.229849, 0.205843,
		0.276532, -0.930990, -0.238303,
		35.449387, 37.114052, 43.452286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791473, 37.794144, 43.049252>,  <35.255817, 37.765743, 43.619099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791473, 37.794144, 43.049252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.589870, 37.450706, 43.011738>,  <35.468910, 37.244644, 42.989227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.589870, 37.450706, 43.011738>,  <35.791473, 37.794144, 43.049252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589870, 37.450706, 43.011738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027153, 0.124287, -0.991875,
		0.863272, -0.497366, -0.085955,
		-0.504008, -0.858592, -0.093788,
		35.438667, 37.193130, 42.983601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109127, 37.446281, 42.592609>,  <35.791473, 37.794144, 43.049252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109127, 37.446281, 42.592609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.735798, 37.302792, 42.586723>,  <35.511799, 37.216698, 42.583191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.735798, 37.302792, 42.586723>,  <36.109127, 37.446281, 42.592609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735798, 37.302792, 42.586723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003121, 0.049099, -0.998789,
		0.359014, -0.932151, -0.046945,
		-0.933327, -0.358725, -0.014718,
		35.455799, 37.195175, 42.582310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071194, 36.963776, 42.102596>,  <36.109127, 37.446281, 42.592609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071194, 36.963776, 42.102596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.678677, 37.016136, 42.159058>,  <35.443165, 37.047554, 42.192936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.678677, 37.016136, 42.159058>,  <36.071194, 36.963776, 42.102596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678677, 37.016136, 42.159058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167523, -0.219359, -0.961154,
		-0.094854, -0.966823, 0.237185,
		-0.981295, 0.130903, 0.141158,
		35.384289, 37.055408, 42.201405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790222, 36.517029, 41.652988>,  <36.071194, 36.963776, 42.102596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790222, 36.517029, 41.652988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.490498, 36.769615, 41.732769>,  <35.310661, 36.921165, 41.780636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.490498, 36.769615, 41.732769>,  <35.790222, 36.517029, 41.652988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490498, 36.769615, 41.732769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203924, 0.066524, -0.976724,
		-0.630038, -0.772543, 0.078924,
		-0.749311, 0.631468, 0.199453,
		35.265705, 36.959057, 41.792606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322834, 36.303570, 41.183830>,  <35.790222, 36.517029, 41.652988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322834, 36.303570, 41.183830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.215317, 36.675030, 41.286087>,  <35.150806, 36.897907, 41.347443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.215317, 36.675030, 41.286087>,  <35.322834, 36.303570, 41.183830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215317, 36.675030, 41.286087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151055, 0.221483, -0.963394,
		-0.951280, -0.297568, 0.080745,
		-0.268792, 0.928654, 0.255642,
		35.134678, 36.953625, 41.362778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625526, 36.415268, 40.986679>,  <35.322834, 36.303570, 41.183830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625526, 36.415268, 40.986679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.775093, 36.784683, 41.020756>,  <34.864834, 37.006332, 41.041203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.775093, 36.784683, 41.020756>,  <34.625526, 36.415268, 40.986679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775093, 36.784683, 41.020756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446169, 0.259644, -0.856457,
		-0.813091, 0.282239, 0.509141,
		0.373921, 0.923540, 0.085188,
		34.887268, 37.061745, 41.046310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044769, 36.894207, 40.836975>,  <34.625526, 36.415268, 40.986679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044769, 36.894207, 40.836975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.389763, 37.085171, 40.769810>,  <34.596760, 37.199749, 40.729511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.389763, 37.085171, 40.769810>,  <34.044769, 36.894207, 40.836975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389763, 37.085171, 40.769810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343524, 0.308641, -0.886979,
		-0.371628, 0.822691, 0.430201,
		0.862487, 0.477410, -0.167914,
		34.648510, 37.228394, 40.719437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880775, 37.489258, 40.574753>,  <34.044769, 36.894207, 40.836975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880775, 37.489258, 40.574753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.257820, 37.437962, 40.451439>,  <34.484047, 37.407185, 40.377449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.257820, 37.437962, 40.451439>,  <33.880775, 37.489258, 40.574753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257820, 37.437962, 40.451439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276211, 0.219271, -0.935750,
		0.187601, 0.967199, 0.171265,
		0.942610, -0.128242, -0.308287,
		34.540604, 37.399490, 40.358952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085457, 38.135147, 40.366737>,  <33.880775, 37.489258, 40.574753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085457, 38.135147, 40.366737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.341473, 37.894558, 40.175495>,  <34.495083, 37.750202, 40.060749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.341473, 37.894558, 40.175495>,  <34.085457, 38.135147, 40.366737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341473, 37.894558, 40.175495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312858, 0.364315, -0.877151,
		0.701766, 0.710986, 0.044998,
		0.640035, -0.601476, -0.478101,
		34.533482, 37.714115, 40.032066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344234, 38.474518, 39.810028>,  <34.085457, 38.135147, 40.366737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344234, 38.474518, 39.810028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.388012, 38.087250, 39.719982>,  <34.414280, 37.854889, 39.665955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.388012, 38.087250, 39.719982>,  <34.344234, 38.474518, 39.810028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388012, 38.087250, 39.719982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516914, 0.138003, -0.844840,
		0.849012, 0.208825, -0.485356,
		0.109443, -0.968167, -0.225111,
		34.420845, 37.796799, 39.652451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735962, 39.024761, 39.716965>,  <34.344234, 38.474518, 39.810028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735962, 39.024761, 39.716965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.767899, 39.408104, 39.607292>,  <34.787060, 39.638111, 39.541489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.767899, 39.408104, 39.607292>,  <34.735962, 39.024761, 39.716965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767899, 39.408104, 39.607292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132214, 0.262444, 0.955846,
		0.988001, -0.112565, -0.105755,
		0.079840, 0.958359, -0.274178,
		34.791851, 39.695610, 39.525040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415676, 39.335999, 39.898888>,  <34.735962, 39.024761, 39.716965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415676, 39.335999, 39.898888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120846, 39.605930, 39.884312>,  <34.943947, 39.767891, 39.875565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120846, 39.605930, 39.884312>,  <35.415676, 39.335999, 39.898888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120846, 39.605930, 39.884312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228087, 0.299163, 0.926541,
		0.636160, 0.674615, -0.374425,
		-0.737073, 0.674830, -0.036444,
		34.899723, 39.808380, 39.873379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702465, 39.955391, 40.089947>,  <35.415676, 39.335999, 39.898888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702465, 39.955391, 40.089947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.307674, 39.987648, 40.145615>,  <35.070801, 40.007004, 40.179016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.307674, 39.987648, 40.145615>,  <35.702465, 39.955391, 40.089947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307674, 39.987648, 40.145615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149179, 0.135399, 0.979496,
		0.060144, 0.987504, -0.145666,
		-0.986979, 0.080641, 0.139172,
		35.011581, 40.011841, 40.187366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626389, 40.509270, 40.567699>,  <35.702465, 39.955391, 40.089947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626389, 40.509270, 40.567699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.284279, 40.302059, 40.572685>,  <35.079014, 40.177734, 40.575676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.284279, 40.302059, 40.572685>,  <35.626389, 40.509270, 40.567699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284279, 40.302059, 40.572685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056469, 0.117083, 0.991515,
		-0.515091, 0.847313, -0.129390,
		-0.855274, -0.518027, 0.012461,
		35.027699, 40.146652, 40.576424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138664, 40.912075, 41.051105>,  <35.626389, 40.509270, 40.567699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138664, 40.912075, 41.051105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.033527, 40.527187, 41.022686>,  <34.970444, 40.296253, 41.005634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.033527, 40.527187, 41.022686>,  <35.138664, 40.912075, 41.051105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033527, 40.527187, 41.022686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033508, -0.064493, 0.997356,
		-0.964257, 0.264526, -0.015290,
		-0.262841, -0.962220, -0.071052,
		34.954674, 40.238522, 41.001369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700039, 40.840168, 41.544601>,  <35.138664, 40.912075, 41.051105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700039, 40.840168, 41.544601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793846, 40.454769, 41.492943>,  <34.850132, 40.223530, 41.461948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793846, 40.454769, 41.492943>,  <34.700039, 40.840168, 41.544601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793846, 40.454769, 41.492943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131982, -0.100063, 0.986189,
		-0.963111, -0.248323, 0.103697,
		0.234517, -0.963495, -0.129146,
		34.864201, 40.165722, 41.454201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238796, 40.312000, 41.859997>,  <34.700039, 40.840168, 41.544601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238796, 40.312000, 41.859997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574200, 40.096024, 41.830715>,  <34.775444, 39.966438, 41.813148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574200, 40.096024, 41.830715>,  <34.238796, 40.312000, 41.859997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574200, 40.096024, 41.830715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021553, -0.167106, 0.985703,
		-0.544457, -0.824946, -0.151757,
		0.838511, -0.539944, -0.073202,
		34.825752, 39.934040, 41.808754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134953, 39.890373, 42.459732>,  <34.238796, 40.312000, 41.859997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134953, 39.890373, 42.459732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.516220, 39.842873, 42.348469>,  <34.744980, 39.814373, 42.281712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.516220, 39.842873, 42.348469>,  <34.134953, 39.890373, 42.459732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516220, 39.842873, 42.348469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271728, -0.067639, 0.959994,
		-0.132816, -0.990617, -0.032203,
		0.953166, -0.118752, -0.278162,
		34.802170, 39.807247, 42.265018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283936, 39.198158, 42.662140>,  <34.134953, 39.890373, 42.459732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283936, 39.198158, 42.662140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.635159, 39.383987, 42.616215>,  <34.845894, 39.495483, 42.588661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.635159, 39.383987, 42.616215>,  <34.283936, 39.198158, 42.662140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635159, 39.383987, 42.616215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263234, -0.268527, 0.926608,
		0.399645, -0.843841, -0.358074,
		0.878061, 0.464571, -0.114812,
		34.898579, 39.523357, 42.581772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744751, 38.667961, 42.787437>,  <34.283936, 39.198158, 42.662140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744751, 38.667961, 42.787437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.950287, 39.003670, 42.858540>,  <35.073608, 39.205093, 42.901199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.950287, 39.003670, 42.858540>,  <34.744751, 38.667961, 42.787437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950287, 39.003670, 42.858540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348474, -0.393529, 0.850706,
		0.783922, -0.375185, -0.494674,
		0.513841, 0.839268, 0.177753,
		35.104439, 39.255451, 42.911865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392517, 38.488895, 42.996353>,  <34.744751, 38.667961, 42.787437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392517, 38.488895, 42.996353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.343647, 38.863258, 43.128506>,  <35.314323, 39.087875, 43.207798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.343647, 38.863258, 43.128506>,  <35.392517, 38.488895, 42.996353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343647, 38.863258, 43.128506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422435, -0.252179, 0.870606,
		0.898121, 0.245933, -0.364549,
		-0.122179, 0.935908, 0.330378,
		35.306992, 39.144032, 43.227619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969852, 38.627293, 43.242943>,  <35.392517, 38.488895, 42.996353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969852, 38.627293, 43.242943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.752041, 38.891476, 43.449741>,  <35.621353, 39.049988, 43.573818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.752041, 38.891476, 43.449741>,  <35.969852, 38.627293, 43.242943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752041, 38.891476, 43.449741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580826, -0.147749, 0.800507,
		0.605089, 0.736180, -0.303160,
		-0.544526, 0.660462, 0.516993,
		35.588684, 39.089615, 43.604839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477760, 38.904678, 43.723640>,  <35.969852, 38.627293, 43.242943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477760, 38.904678, 43.723640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.125359, 38.993057, 43.890980>,  <35.913918, 39.046085, 43.991383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.125359, 38.993057, 43.890980>,  <36.477760, 38.904678, 43.723640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125359, 38.993057, 43.890980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409818, -0.085429, 0.908158,
		0.236395, 0.971537, -0.015285,
		-0.881003, 0.220948, 0.418348,
		35.861057, 39.059341, 44.016483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688210, 39.167034, 44.342686>,  <36.477760, 38.904678, 43.723640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688210, 39.167034, 44.342686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.294567, 39.124916, 44.399879>,  <36.058380, 39.099644, 44.434196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.294567, 39.124916, 44.399879>,  <36.688210, 39.167034, 44.342686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294567, 39.124916, 44.399879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155299, -0.119863, 0.980569,
		-0.086112, 0.987191, 0.134310,
		-0.984107, -0.105297, 0.142988,
		35.999336, 39.093327, 44.442776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092018, 39.864876, 44.685013>,  <36.688210, 39.167034, 44.342686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092018, 39.864876, 44.685013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.377651, 39.610161, 44.568680>,  <37.549030, 39.457333, 44.498878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.377651, 39.610161, 44.568680>,  <37.092018, 39.864876, 44.685013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377651, 39.610161, 44.568680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203769, 0.208389, -0.956584,
		0.669747, 0.742345, 0.019050,
		0.714085, -0.636787, -0.290835,
		37.591877, 39.419125, 44.481430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310791, 40.231304, 44.190765>,  <37.092018, 39.864876, 44.685013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310791, 40.231304, 44.190765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.467777, 39.866844, 44.140526>,  <37.561970, 39.648167, 44.110382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.467777, 39.866844, 44.140526>,  <37.310791, 40.231304, 44.190765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467777, 39.866844, 44.140526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010330, 0.140915, -0.989968,
		0.919708, 0.387234, 0.064717,
		0.392468, -0.911149, -0.125601,
		37.585518, 39.593498, 44.102844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817127, 40.352913, 43.730824>,  <37.310791, 40.231304, 44.190765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817127, 40.352913, 43.730824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.755722, 39.958523, 43.704655>,  <37.718880, 39.721889, 43.688953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.755722, 39.958523, 43.704655>,  <37.817127, 40.352913, 43.730824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755722, 39.958523, 43.704655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112379, 0.048359, -0.992488,
		0.981735, -0.159715, 0.103379,
		-0.153516, -0.985978, -0.065424,
		37.709667, 39.662731, 43.685028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364952, 40.102913, 43.251633>,  <37.817127, 40.352913, 43.730824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364952, 40.102913, 43.251633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.105083, 39.799129, 43.238075>,  <37.949162, 39.616859, 43.229942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.105083, 39.799129, 43.238075>,  <38.364952, 40.102913, 43.251633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105083, 39.799129, 43.238075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000716, 0.043970, -0.999033,
		0.760212, -0.649071, -0.028023,
		-0.649675, -0.759456, -0.033891,
		37.910179, 39.571293, 43.227909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635372, 39.643993, 42.865669>,  <38.364952, 40.102913, 43.251633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635372, 39.643993, 42.865669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258781, 39.509705, 42.853626>,  <38.032825, 39.429131, 42.846401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258781, 39.509705, 42.853626>,  <38.635372, 39.643993, 42.865669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258781, 39.509705, 42.853626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085110, -0.150346, -0.984963,
		0.326147, -0.929886, 0.170121,
		-0.941480, -0.335722, -0.030108,
		37.976337, 39.408989, 42.844593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643795, 39.015617, 42.416935>,  <38.635372, 39.643993, 42.865669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643795, 39.015617, 42.416935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.269810, 39.157478, 42.419991>,  <38.045418, 39.242596, 42.421822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.269810, 39.157478, 42.419991>,  <38.643795, 39.015617, 42.416935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269810, 39.157478, 42.419991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042773, -0.091343, -0.994901,
		-0.352146, -0.930526, 0.100572,
		-0.934967, 0.354652, 0.007635,
		37.989319, 39.263874, 42.422279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312191, 38.594025, 42.061337>,  <38.643795, 39.015617, 42.416935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312191, 38.594025, 42.061337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.081692, 38.920887, 42.055698>,  <37.943394, 39.117004, 42.052315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.081692, 38.920887, 42.055698>,  <38.312191, 38.594025, 42.061337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081692, 38.920887, 42.055698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061687, -0.060680, -0.996249,
		-0.814944, -0.573216, 0.085375,
		-0.576247, 0.817154, -0.014091,
		37.908817, 39.166035, 42.051472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042599, 38.602795, 41.340927>,  <38.312191, 38.594025, 42.061337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042599, 38.602795, 41.340927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.998268, 38.978111, 41.471973>,  <37.971668, 39.203300, 41.550602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.998268, 38.978111, 41.471973>,  <38.042599, 38.602795, 41.340927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998268, 38.978111, 41.471973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015444, 0.327980, -0.944559,
		-0.993720, -0.109742, -0.021858,
		-0.110827, 0.938289, 0.327615,
		37.965019, 39.259598, 41.570259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455940, 38.955223, 40.950142>,  <38.042599, 38.602795, 41.340927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455940, 38.955223, 40.950142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.665348, 39.267124, 41.087498>,  <37.790993, 39.454266, 41.169910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.665348, 39.267124, 41.087498>,  <37.455940, 38.955223, 40.950142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665348, 39.267124, 41.087498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113734, 0.463380, -0.878831,
		-0.844388, 0.421031, 0.331273,
		0.523521, 0.779751, 0.343387,
		37.822403, 39.501049, 41.190514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050205, 39.573242, 40.804981>,  <37.455940, 38.955223, 40.950142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050205, 39.573242, 40.804981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.426296, 39.701115, 40.851925>,  <37.651951, 39.777836, 40.880093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.426296, 39.701115, 40.851925>,  <37.050205, 39.573242, 40.804981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426296, 39.701115, 40.851925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005969, 0.329104, -0.944275,
		-0.340488, 0.888536, 0.307526,
		0.940230, 0.319679, 0.117359,
		37.708366, 39.797020, 40.887135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029858, 40.126259, 40.576515>,  <37.050205, 39.573242, 40.804981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029858, 40.126259, 40.576515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.426003, 40.070850, 40.577278>,  <37.663689, 40.037605, 40.577736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.426003, 40.070850, 40.577278>,  <37.029858, 40.126259, 40.576515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426003, 40.070850, 40.577278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037279, 0.253255, -0.966681,
		0.133419, 0.957432, 0.255977,
		0.990358, -0.138516, 0.001903,
		37.723110, 40.029297, 40.577850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352001, 40.744938, 40.378567>,  <37.029858, 40.126259, 40.576515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352001, 40.744938, 40.378567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.579941, 40.428230, 40.290581>,  <37.716705, 40.238205, 40.237789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.579941, 40.428230, 40.290581>,  <37.352001, 40.744938, 40.378567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579941, 40.428230, 40.290581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055988, 0.229649, -0.971662,
		0.819842, 0.566013, 0.086535,
		0.569846, -0.791764, -0.219966,
		37.750896, 40.190701, 40.224590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874397, 41.065182, 39.996696>,  <37.352001, 40.744938, 40.378567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874397, 41.065182, 39.996696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.906269, 40.682198, 39.885761>,  <37.925392, 40.452408, 39.819202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.906269, 40.682198, 39.885761>,  <37.874397, 41.065182, 39.996696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906269, 40.682198, 39.885761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020311, 0.276602, -0.960770,
		0.996613, 0.082191, 0.002594,
		0.079684, -0.957463, -0.277334,
		37.930176, 40.394958, 39.802563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328499, 41.115967, 39.484066>,  <37.874397, 41.065182, 39.996696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328499, 41.115967, 39.484066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.146194, 40.764622, 39.426434>,  <38.036812, 40.553814, 39.391853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.146194, 40.764622, 39.426434>,  <38.328499, 41.115967, 39.484066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146194, 40.764622, 39.426434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055738, 0.189717, -0.980255,
		0.888356, -0.438731, -0.135424,
		-0.455760, -0.878364, -0.144082,
		38.009468, 40.501114, 39.383209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.700104, 32.552711, 42.112408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.430874, 32.292328, 42.252819>,  <27.269335, 32.136097, 42.337067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.430874, 32.292328, 42.252819>,  <27.700104, 32.552711, 42.112408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430874, 32.292328, 42.252819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442329, -0.026062, -0.896474,
		0.592717, -0.758664, -0.270397,
		-0.673076, -0.650960, 0.351027,
		27.228951, 32.097038, 42.358128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678226, 31.915293, 41.726185>,  <27.700104, 32.552711, 42.112408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678226, 31.915293, 41.726185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.327791, 32.008514, 41.895020>,  <27.117531, 32.064449, 41.996323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.327791, 32.008514, 41.895020>,  <27.678226, 31.915293, 41.726185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327791, 32.008514, 41.895020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378704, 0.209224, -0.901559,
		-0.298424, -0.949690, -0.095040,
		-0.876086, 0.233054, 0.422089,
		27.064966, 32.078430, 42.021645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253593, 31.613279, 41.275414>,  <27.678226, 31.915293, 41.726185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253593, 31.613279, 41.275414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.047663, 31.884886, 41.484753>,  <26.924105, 32.047848, 41.610355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.047663, 31.884886, 41.484753>,  <27.253593, 31.613279, 41.275414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047663, 31.884886, 41.484753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356287, 0.385786, -0.851016,
		-0.779753, -0.624587, 0.043311,
		-0.514825, 0.679014, 0.523350,
		26.893215, 32.088589, 41.641758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687887, 31.554037, 40.869816>,  <27.253593, 31.613279, 41.275414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687887, 31.554037, 40.869816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.706139, 31.904858, 41.061108>,  <26.717089, 32.115349, 41.175880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.706139, 31.904858, 41.061108>,  <26.687887, 31.554037, 40.869816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706139, 31.904858, 41.061108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167173, 0.478678, -0.861928,
		-0.984871, -0.040619, 0.168460,
		0.045628, 0.877050, 0.478226,
		26.719828, 32.167973, 41.204575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059429, 31.989027, 40.637997>,  <26.687887, 31.554037, 40.869816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059429, 31.989027, 40.637997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.316681, 32.256073, 40.788025>,  <26.471031, 32.416302, 40.878040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.316681, 32.256073, 40.788025>,  <26.059429, 31.989027, 40.637997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316681, 32.256073, 40.788025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087970, 0.550969, -0.829877,
		-0.760689, 0.500722, 0.413073,
		0.643128, 0.667616, 0.375068,
		26.509619, 32.456356, 40.900547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.641966, 32.540329, 40.556297>,  <26.059429, 31.989027, 40.637997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.641966, 32.540329, 40.556297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.019075, 32.670872, 40.583626>,  <26.245342, 32.749195, 40.600021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.019075, 32.670872, 40.583626>,  <25.641966, 32.540329, 40.556297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.019075, 32.670872, 40.583626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115755, 0.512518, -0.850838,
		-0.312689, 0.794241, 0.520967,
		0.942776, 0.326353, 0.068322,
		26.301908, 32.768776, 40.604122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766529, 33.199467, 40.447418>,  <25.641966, 32.540329, 40.556297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766529, 33.199467, 40.447418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.153421, 33.119671, 40.384602>,  <26.385557, 33.071793, 40.346912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.153421, 33.119671, 40.384602>,  <25.766529, 33.199467, 40.447418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153421, 33.119671, 40.384602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057685, 0.429700, -0.901127,
		0.247250, 0.880659, 0.404113,
		0.967233, -0.199493, -0.157045,
		26.443592, 33.059822, 40.337486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077686, 33.786106, 40.333130>,  <25.766529, 33.199467, 40.447418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077686, 33.786106, 40.333130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.350767, 33.547455, 40.164391>,  <26.514616, 33.404266, 40.063148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.350767, 33.547455, 40.164391>,  <26.077686, 33.786106, 40.333130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350767, 33.547455, 40.164391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139425, 0.460350, -0.876720,
		0.717270, 0.657356, 0.231098,
		0.682703, -0.596625, -0.421847,
		26.555578, 33.368469, 40.037838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573929, 34.215557, 39.875584>,  <26.077686, 33.786106, 40.333130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573929, 34.215557, 39.875584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.609564, 33.849483, 39.718357>,  <26.630945, 33.629837, 39.624023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.609564, 33.849483, 39.718357>,  <26.573929, 34.215557, 39.875584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609564, 33.849483, 39.718357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286141, 0.354479, -0.890207,
		0.954037, 0.191779, -0.230292,
		0.089089, -0.915186, -0.393062,
		26.636290, 33.574928, 39.600437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086166, 34.230530, 39.271980>,  <26.573929, 34.215557, 39.875584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086166, 34.230530, 39.271980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.850143, 33.913429, 39.210827>,  <26.708530, 33.723167, 39.174133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.850143, 33.913429, 39.210827>,  <27.086166, 34.230530, 39.271980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850143, 33.913429, 39.210827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182308, 0.315304, -0.931315,
		0.786510, -0.521654, -0.330572,
		-0.590055, -0.792755, -0.152888,
		26.673126, 33.675602, 39.164959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182556, 34.097286, 38.599724>,  <27.086166, 34.230530, 39.271980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182556, 34.097286, 38.599724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.850910, 33.878593, 38.646465>,  <26.651922, 33.747379, 38.674511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.850910, 33.878593, 38.646465>,  <27.182556, 34.097286, 38.599724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850910, 33.878593, 38.646465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167222, 0.043077, -0.984978,
		0.533483, -0.836200, -0.127141,
		-0.829116, -0.546730, 0.116850,
		26.602175, 33.714573, 38.681519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179771, 33.582947, 38.044350>,  <27.182556, 34.097286, 38.599724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179771, 33.582947, 38.044350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.796209, 33.595901, 38.157097>,  <26.566072, 33.603676, 38.224747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.796209, 33.595901, 38.157097>,  <27.179771, 33.582947, 38.044350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796209, 33.595901, 38.157097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283656, -0.131536, -0.949862,
		0.006316, -0.990782, 0.135317,
		-0.958905, 0.032384, 0.281873,
		26.508537, 33.605618, 38.241657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818295, 33.027702, 37.683674>,  <27.179771, 33.582947, 38.044350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818295, 33.027702, 37.683674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.576397, 33.322540, 37.804317>,  <26.431257, 33.499443, 37.876705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.576397, 33.322540, 37.804317>,  <26.818295, 33.027702, 37.683674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576397, 33.322540, 37.804317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395760, 0.050513, -0.916964,
		-0.691128, -0.673895, 0.261167,
		-0.604745, 0.737099, 0.301612,
		26.394974, 33.543671, 37.894802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202177, 32.815048, 37.442184>,  <26.818295, 33.027702, 37.683674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202177, 32.815048, 37.442184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.129675, 33.204201, 37.499668>,  <26.086174, 33.437691, 37.534157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.129675, 33.204201, 37.499668>,  <26.202177, 32.815048, 37.442184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.129675, 33.204201, 37.499668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394517, 0.061921, -0.916800,
		-0.900835, -0.222869, 0.372594,
		-0.181255, 0.972880, 0.143706,
		26.075298, 33.496063, 37.542782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618629, 32.906967, 37.137600>,  <26.202177, 32.815048, 37.442184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618629, 32.906967, 37.137600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.781708, 33.271851, 37.153854>,  <25.879555, 33.490780, 37.163605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.781708, 33.271851, 37.153854>,  <25.618629, 32.906967, 37.137600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781708, 33.271851, 37.153854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381976, 0.210798, -0.899810,
		-0.829383, 0.351330, 0.434385,
		0.407698, 0.912213, 0.040632,
		25.904016, 33.545513, 37.166042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101025, 33.384186, 36.772915>,  <25.618629, 32.906967, 37.137600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101025, 33.384186, 36.772915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.461628, 33.555779, 36.795731>,  <25.677990, 33.658733, 36.809422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.461628, 33.555779, 36.795731>,  <25.101025, 33.384186, 36.772915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.461628, 33.555779, 36.795731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101282, 0.337291, -0.935936,
		-0.420739, 0.837979, 0.347519,
		0.901510, 0.428982, 0.057039,
		25.732080, 33.684475, 36.812843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.021751, 34.026344, 36.365650>,  <25.101025, 33.384186, 36.772915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.021751, 34.026344, 36.365650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.414505, 33.956158, 36.394268>,  <25.650156, 33.914043, 36.411438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.414505, 33.956158, 36.394268>,  <25.021751, 34.026344, 36.365650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.414505, 33.956158, 36.394268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141008, 0.424364, -0.894445,
		0.126589, 0.888327, 0.441419,
		0.981882, -0.175470, 0.071542,
		25.709070, 33.903515, 36.415730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432816, 34.664597, 36.128292>,  <25.021751, 34.026344, 36.365650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432816, 34.664597, 36.128292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.691378, 34.361324, 36.094063>,  <25.846516, 34.179363, 36.073524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.691378, 34.361324, 36.094063>,  <25.432816, 34.664597, 36.128292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691378, 34.361324, 36.094063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221581, 0.293861, -0.929811,
		0.730109, 0.582075, 0.357951,
		0.646407, -0.758178, -0.085574,
		25.885300, 34.133869, 36.068390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.032499, 34.881031, 35.744461>,  <25.432816, 34.664597, 36.128292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.032499, 34.881031, 35.744461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.039982, 34.484394, 35.693260>,  <26.044472, 34.246410, 35.662540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.039982, 34.484394, 35.693260>,  <26.032499, 34.881031, 35.744461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039982, 34.484394, 35.693260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113582, 0.129306, -0.985078,
		0.993352, 0.003890, 0.115046,
		0.018709, -0.991597, -0.128005,
		26.045595, 34.186916, 35.654858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430151, 34.761810, 35.132530>,  <26.032499, 34.881031, 35.744461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430151, 34.761810, 35.132530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.234640, 34.417908, 35.191738>,  <26.117334, 34.211567, 35.227261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.234640, 34.417908, 35.191738>,  <26.430151, 34.761810, 35.132530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234640, 34.417908, 35.191738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099243, -0.113768, -0.988538,
		0.866746, -0.497863, -0.029718,
		-0.488775, -0.859761, 0.148018,
		26.088007, 34.159981, 35.236145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023376, 34.515396, 34.891766>,  <26.430151, 34.761810, 35.132530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023376, 34.515396, 34.891766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.198999, 34.869392, 34.953751>,  <27.304373, 35.081791, 34.990940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.198999, 34.869392, 34.953751>,  <27.023376, 34.515396, 34.891766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198999, 34.869392, 34.953751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855092, -0.464540, 0.230261,
		0.275766, 0.031410, -0.960711,
		0.439056, 0.884995, 0.154963,
		27.330717, 35.134892, 35.000240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705942, 34.524303, 34.472054>,  <27.023376, 34.515396, 34.891766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705942, 34.524303, 34.472054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.726562, 34.791500, 34.769005>,  <27.738934, 34.951817, 34.947178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.726562, 34.791500, 34.769005>,  <27.705942, 34.524303, 34.472054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726562, 34.791500, 34.769005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893381, -0.363077, 0.264660,
		0.446332, 0.649587, -0.615487,
		0.051549, 0.667991, 0.742382,
		27.742027, 34.991898, 34.991718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427908, 34.634720, 34.577339>,  <27.705942, 34.524303, 34.472054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427908, 34.634720, 34.577339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.256603, 34.779045, 34.908737>,  <28.153820, 34.865639, 35.107578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.256603, 34.779045, 34.908737>,  <28.427908, 34.634720, 34.577339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256603, 34.779045, 34.908737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828449, -0.209419, 0.519438,
		0.360922, 0.908823, -0.209227,
		-0.428261, 0.360810, 0.828498,
		28.128124, 34.887287, 35.157288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891560, 35.089008, 34.812202>,  <28.427908, 34.634720, 34.577339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891560, 35.089008, 34.812202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.669827, 34.996563, 35.132027>,  <28.536787, 34.941093, 35.323921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.669827, 34.996563, 35.132027>,  <28.891560, 35.089008, 34.812202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669827, 34.996563, 35.132027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823182, -0.294011, 0.485725,
		0.122821, 0.927439, 0.353231,
		-0.554334, -0.231116, 0.799562,
		28.503527, 34.927227, 35.371895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320591, 35.187515, 35.410694>,  <28.891560, 35.089008, 34.812202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320591, 35.187515, 35.410694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.035366, 34.932247, 35.526821>,  <28.864231, 34.779087, 35.596497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.035366, 34.932247, 35.526821>,  <29.320591, 35.187515, 35.410694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035366, 34.932247, 35.526821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674956, -0.512819, 0.530520,
		-0.189679, 0.574246, 0.796406,
		-0.713061, -0.638168, 0.290320,
		28.821447, 34.740795, 35.613918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442156, 35.151184, 36.093952>,  <29.320591, 35.187515, 35.410694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442156, 35.151184, 36.093952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.196411, 34.843857, 36.022125>,  <29.048964, 34.659458, 35.979031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.196411, 34.843857, 36.022125>,  <29.442156, 35.151184, 36.093952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196411, 34.843857, 36.022125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443526, -0.524503, 0.726761,
		-0.652567, 0.366853, 0.663005,
		-0.614362, -0.768320, -0.179564,
		29.012102, 34.613361, 35.968258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111292, 34.948162, 36.702366>,  <29.442156, 35.151184, 36.093952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111292, 34.948162, 36.702366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.089153, 34.623474, 36.469799>,  <29.075871, 34.428661, 36.330261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.089153, 34.623474, 36.469799>,  <29.111292, 34.948162, 36.702366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089153, 34.623474, 36.469799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346175, -0.561790, 0.751369,
		-0.936536, -0.159685, 0.312091,
		-0.055347, -0.811722, -0.581415,
		29.072550, 34.379959, 36.295376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896585, 34.345760, 37.109478>,  <29.111292, 34.948162, 36.702366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896585, 34.345760, 37.109478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.059635, 34.166656, 36.791142>,  <29.157465, 34.059196, 36.600140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.059635, 34.166656, 36.791142>,  <28.896585, 34.345760, 37.109478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059635, 34.166656, 36.791142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482668, -0.634180, 0.604026,
		-0.775161, -0.630340, -0.042388,
		0.407623, -0.447758, -0.795837,
		29.181923, 34.032330, 36.552391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775705, 33.638557, 37.159988>,  <28.896585, 34.345760, 37.109478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775705, 33.638557, 37.159988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.078058, 33.637417, 36.898109>,  <29.259470, 33.636734, 36.740982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.078058, 33.637417, 36.898109>,  <28.775705, 33.638557, 37.159988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078058, 33.637417, 36.898109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423102, -0.760995, 0.491804,
		-0.499625, -0.648751, -0.574018,
		0.755883, -0.002849, -0.654701,
		29.304823, 33.636562, 36.701698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920488, 32.926685, 36.959152>,  <28.775705, 33.638557, 37.159988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920488, 32.926685, 36.959152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.256836, 33.119667, 36.861027>,  <29.458645, 33.235455, 36.802151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.256836, 33.119667, 36.861027>,  <28.920488, 32.926685, 36.959152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256836, 33.119667, 36.861027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536981, -0.686916, 0.489693,
		0.067745, -0.543495, -0.836674,
		0.840870, 0.482452, -0.245311,
		29.509096, 33.264404, 36.787434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328556, 32.447613, 36.789059>,  <28.920488, 32.926685, 36.959152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328556, 32.447613, 36.789059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.597393, 32.735344, 36.859318>,  <29.758696, 32.907982, 36.901474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.597393, 32.735344, 36.859318>,  <29.328556, 32.447613, 36.789059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597393, 32.735344, 36.859318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618574, -0.675818, 0.400794,
		0.407013, -0.160717, -0.899172,
		0.672092, 0.719333, 0.175651,
		29.799021, 32.951145, 36.912014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993639, 32.101681, 36.607952>,  <29.328556, 32.447613, 36.789059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993639, 32.101681, 36.607952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.064276, 32.407391, 36.856049>,  <30.106657, 32.590816, 37.004906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.064276, 32.407391, 36.856049>,  <29.993639, 32.101681, 36.607952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064276, 32.407391, 36.856049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449518, -0.623216, 0.639949,
		0.875642, 0.165801, -0.453609,
		0.176592, 0.764272, 0.620245,
		30.117254, 32.636673, 37.042122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687935, 31.959070, 36.934982>,  <29.993639, 32.101681, 36.607952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687935, 31.959070, 36.934982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.480303, 32.202801, 37.174740>,  <30.355724, 32.349041, 37.318596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.480303, 32.202801, 37.174740>,  <30.687935, 31.959070, 36.934982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480303, 32.202801, 37.174740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213391, -0.586679, 0.781199,
		0.827660, 0.533410, 0.174508,
		-0.519080, 0.609329, 0.599396,
		30.324579, 32.385601, 37.354557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073170, 31.858637, 37.630238>,  <30.687935, 31.959070, 36.934982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073170, 31.858637, 37.630238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.754848, 32.077087, 37.734886>,  <30.563856, 32.208157, 37.797676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.754848, 32.077087, 37.734886>,  <31.073170, 31.858637, 37.630238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754848, 32.077087, 37.734886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032509, -0.392876, 0.919016,
		0.604683, 0.739861, 0.294898,
		-0.795803, 0.546126, 0.261618,
		30.516108, 32.240925, 37.813370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182371, 31.966295, 38.281895>,  <31.073170, 31.858637, 37.630238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182371, 31.966295, 38.281895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.795303, 32.051407, 38.227722>,  <30.563063, 32.102474, 38.195221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.795303, 32.051407, 38.227722>,  <31.182371, 31.966295, 38.281895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795303, 32.051407, 38.227722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198185, -0.309329, 0.930074,
		0.156007, 0.926845, 0.341498,
		-0.967669, 0.212778, -0.135429,
		30.505003, 32.115242, 38.187092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925608, 32.347263, 38.839569>,  <31.182371, 31.966295, 38.281895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925608, 32.347263, 38.839569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.619947, 32.142262, 38.682896>,  <30.436550, 32.019260, 38.588894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.619947, 32.142262, 38.682896>,  <30.925608, 32.347263, 38.839569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619947, 32.142262, 38.682896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266719, -0.301830, 0.915292,
		-0.587309, 0.803891, 0.093950,
		-0.764152, -0.512501, -0.391681,
		30.390701, 31.988512, 38.565392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334476, 32.478817, 39.331863>,  <30.925608, 32.347263, 38.839569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334476, 32.478817, 39.331863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.291346, 32.129467, 39.141880>,  <30.265467, 31.919857, 39.027889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.291346, 32.129467, 39.141880>,  <30.334476, 32.478817, 39.331863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291346, 32.129467, 39.141880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324546, -0.420649, 0.847186,
		-0.939704, 0.245494, -0.238095,
		-0.107825, -0.873377, -0.474960,
		30.258999, 31.867455, 38.999393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723337, 32.145397, 39.659290>,  <30.334476, 32.478817, 39.331863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723337, 32.145397, 39.659290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.893990, 31.838375, 39.467937>,  <29.996382, 31.654161, 39.353127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.893990, 31.838375, 39.467937>,  <29.723337, 32.145397, 39.659290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893990, 31.838375, 39.467937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340293, -0.626293, 0.701397,
		-0.837966, -0.136449, -0.528389,
		0.426632, -0.767554, -0.478379,
		30.021978, 31.608109, 39.324425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187466, 31.606560, 39.727379>,  <29.723337, 32.145397, 39.659290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187466, 31.606560, 39.727379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.523565, 31.403690, 39.650696>,  <29.725225, 31.281969, 39.604687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.523565, 31.403690, 39.650696>,  <29.187466, 31.606560, 39.727379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523565, 31.403690, 39.650696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197862, -0.616016, 0.762480,
		-0.504805, -0.602743, -0.617958,
		0.840252, -0.507174, -0.191708,
		29.775640, 31.251537, 39.593182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083313, 30.862911, 39.620758>,  <29.187466, 31.606560, 39.727379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083313, 30.862911, 39.620758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471100, 30.888269, 39.715515>,  <29.703772, 30.903484, 39.772369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471100, 30.888269, 39.715515>,  <29.083313, 30.862911, 39.620758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471100, 30.888269, 39.715515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171912, -0.513181, 0.840887,
		0.174877, -0.855936, -0.486613,
		0.969466, 0.063398, 0.236889,
		29.761940, 30.907290, 39.786583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314957, 30.172356, 39.802776>,  <29.083313, 30.862911, 39.620758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314957, 30.172356, 39.802776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.571829, 30.427389, 39.972996>,  <29.725952, 30.580408, 40.075127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.571829, 30.427389, 39.972996>,  <29.314957, 30.172356, 39.802776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571829, 30.427389, 39.972996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078194, -0.606736, 0.791048,
		0.762554, -0.474721, -0.439490,
		0.642181, 0.637583, 0.425548,
		29.764482, 30.618664, 40.100658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563040, 29.476658, 40.002808>,  <29.314957, 30.172356, 39.802776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563040, 29.476658, 40.002808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.227468, 29.287113, 39.895733>,  <29.026127, 29.173386, 39.831486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.227468, 29.287113, 39.895733>,  <29.563040, 29.476658, 40.002808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227468, 29.287113, 39.895733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276102, 0.053306, -0.959649,
		0.469011, -0.878985, 0.086114,
		-0.838926, -0.473862, -0.267690,
		28.975790, 29.144955, 39.815426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.712811, 37.254246, 43.635590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.494816, 36.919533, 43.614471>,  <39.364021, 36.718704, 43.601799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.494816, 36.919533, 43.614471>,  <39.712811, 37.254246, 43.635590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494816, 36.919533, 43.614471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021304, -0.076767, 0.996821,
		-0.838177, 0.542125, 0.059664,
		-0.544982, -0.836784, -0.052795,
		39.331322, 36.668499, 43.598633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206306, 37.261517, 44.181957>,  <39.712811, 37.254246, 43.635590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206306, 37.261517, 44.181957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.264500, 36.879570, 44.078369>,  <39.299416, 36.650402, 44.016216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.264500, 36.879570, 44.078369>,  <39.206306, 37.261517, 44.181957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264500, 36.879570, 44.078369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113206, -0.243973, 0.963152,
		-0.982863, -0.169438, 0.072603,
		0.145481, -0.954866, -0.258973,
		39.308144, 36.593109, 44.000675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620892, 36.789135, 44.506428>,  <39.206306, 37.261517, 44.181957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620892, 36.789135, 44.506428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.971420, 36.600742, 44.465973>,  <39.181740, 36.487705, 44.441700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.971420, 36.600742, 44.465973>,  <38.620892, 36.789135, 44.506428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971420, 36.600742, 44.465973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045259, -0.128516, 0.990674,
		-0.479588, -0.872731, -0.091305,
		0.876326, -0.470983, -0.101133,
		39.234318, 36.459446, 44.435635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458603, 36.117577, 44.809982>,  <38.620892, 36.789135, 44.506428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458603, 36.117577, 44.809982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.853271, 36.182186, 44.802174>,  <39.090073, 36.220951, 44.797489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.853271, 36.182186, 44.802174>,  <38.458603, 36.117577, 44.809982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853271, 36.182186, 44.802174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071000, -0.319503, 0.944922,
		0.146394, -0.933717, -0.326714,
		0.986675, 0.161527, -0.019520,
		39.149273, 36.230644, 44.796318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747021, 35.546341, 45.233669>,  <38.458603, 36.117577, 44.809982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747021, 35.546341, 45.233669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.052845, 35.802612, 45.205452>,  <39.236340, 35.956375, 45.188522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.052845, 35.802612, 45.205452>,  <38.747021, 35.546341, 45.233669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052845, 35.802612, 45.205452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362324, -0.336688, 0.869116,
		0.533070, -0.690055, -0.489552,
		0.764564, 0.640676, -0.070545,
		39.282215, 35.994816, 45.184288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248585, 35.166401, 45.400726>,  <38.747021, 35.546341, 45.233669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248585, 35.166401, 45.400726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.379635, 35.534943, 45.484409>,  <39.458263, 35.756069, 45.534618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.379635, 35.534943, 45.484409>,  <39.248585, 35.166401, 45.400726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379635, 35.534943, 45.484409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553654, -0.366650, 0.747686,
		0.765591, -0.129129, -0.630235,
		0.327624, 0.921354, 0.209211,
		39.477921, 35.811348, 45.547173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936249, 35.039799, 45.621189>,  <39.248585, 35.166401, 45.400726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936249, 35.039799, 45.621189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.858345, 35.409176, 45.753445>,  <39.811604, 35.630802, 45.832798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.858345, 35.409176, 45.753445>,  <39.936249, 35.039799, 45.621189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858345, 35.409176, 45.753445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568639, -0.168360, 0.805173,
		0.799198, 0.344827, -0.492317,
		-0.194759, 0.923444, 0.330635,
		39.799919, 35.686211, 45.852634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600052, 35.352493, 45.717861>,  <39.936249, 35.039799, 45.621189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600052, 35.352493, 45.717861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.316921, 35.508282, 45.953587>,  <40.147041, 35.601753, 46.095024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.316921, 35.508282, 45.953587>,  <40.600052, 35.352493, 45.717861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316921, 35.508282, 45.953587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555340, -0.208774, 0.804992,
		0.436552, 0.897067, -0.068510,
		-0.707828, 0.389467, 0.589317,
		40.104572, 35.625122, 46.130383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919930, 35.427502, 46.317791>,  <40.600052, 35.352493, 45.717861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919930, 35.427502, 46.317791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.542007, 35.515900, 46.414536>,  <40.315254, 35.568939, 46.472584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.542007, 35.515900, 46.414536>,  <40.919930, 35.427502, 46.317791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542007, 35.515900, 46.414536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208233, -0.164869, 0.964083,
		0.252930, 0.961239, 0.109752,
		-0.944810, 0.220991, 0.241862,
		40.258564, 35.582195, 46.487095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007565, 35.826149, 46.912155>,  <40.919930, 35.427502, 46.317791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007565, 35.826149, 46.912155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.633873, 35.683800, 46.921753>,  <40.409660, 35.598389, 46.927513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.633873, 35.683800, 46.921753>,  <41.007565, 35.826149, 46.912155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633873, 35.683800, 46.921753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110159, -0.223892, 0.968368,
		-0.339244, 0.907319, 0.248368,
		-0.934226, -0.355873, 0.023996,
		40.353603, 35.577038, 46.928951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716843, 36.131016, 47.472366>,  <41.007565, 35.826149, 46.912155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716843, 36.131016, 47.472366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.499561, 35.799694, 47.417446>,  <40.369194, 35.600903, 47.384495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.499561, 35.799694, 47.417446>,  <40.716843, 36.131016, 47.472366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499561, 35.799694, 47.417446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139906, -0.250538, 0.957944,
		-0.827865, 0.501146, 0.251976,
		-0.543200, -0.828302, -0.137298,
		40.336601, 35.551205, 47.376255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454426, 36.077461, 48.037922>,  <40.716843, 36.131016, 47.472366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454426, 36.077461, 48.037922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.399479, 35.701061, 47.914211>,  <40.366512, 35.475224, 47.839985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.399479, 35.701061, 47.914211>,  <40.454426, 36.077461, 48.037922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399479, 35.701061, 47.914211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337168, -0.338014, 0.878672,
		-0.931370, 0.016417, 0.363704,
		-0.137363, -0.940998, -0.309280,
		40.358269, 35.418762, 47.821426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991772, 35.623940, 48.516579>,  <40.454426, 36.077461, 48.037922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991772, 35.623940, 48.516579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.275360, 35.412861, 48.329433>,  <40.445515, 35.286213, 48.217148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.275360, 35.412861, 48.329433>,  <39.991772, 35.623940, 48.516579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275360, 35.412861, 48.329433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328371, -0.340104, 0.881194,
		-0.624121, -0.778377, -0.067846,
		0.708975, -0.527693, -0.467862,
		40.488052, 35.254555, 48.189075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731655, 35.871716, 49.183331>,  <39.991772, 35.623940, 48.516579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731655, 35.871716, 49.183331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.427311, 36.076038, 49.343418>,  <39.244705, 36.198631, 49.439472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.427311, 36.076038, 49.343418>,  <39.731655, 35.871716, 49.183331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427311, 36.076038, 49.343418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395402, 0.124101, -0.910086,
		-0.514544, -0.850692, 0.107550,
		-0.760856, 0.510805, 0.400221,
		39.199055, 36.229279, 49.463486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186478, 35.788200, 48.743839>,  <39.731655, 35.871716, 49.183331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186478, 35.788200, 48.743839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.044212, 36.080750, 48.976597>,  <38.958855, 36.256279, 49.116249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.044212, 36.080750, 48.976597>,  <39.186478, 35.788200, 48.743839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044212, 36.080750, 48.976597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356340, 0.469456, -0.807857,
		-0.864018, -0.494673, 0.093651,
		-0.355660, 0.731375, 0.581891,
		38.937515, 36.300163, 49.151165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371147, 35.991596, 48.567066>,  <39.186478, 35.788200, 48.743839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371147, 35.991596, 48.567066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.593594, 36.298058, 48.695908>,  <38.727062, 36.481934, 48.773212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.593594, 36.298058, 48.695908>,  <38.371147, 35.991596, 48.567066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593594, 36.298058, 48.695908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403748, 0.587795, -0.701060,
		-0.726448, 0.259821, 0.636212,
		0.556112, 0.766153, 0.322101,
		38.760426, 36.527905, 48.792538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926586, 36.611919, 48.628410>,  <38.371147, 35.991596, 48.567066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926586, 36.611919, 48.628410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.296055, 36.764553, 48.614384>,  <38.517735, 36.856133, 48.605968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.296055, 36.764553, 48.614384>,  <37.926586, 36.611919, 48.628410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296055, 36.764553, 48.614384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321498, 0.721894, -0.612787,
		-0.208514, 0.577286, 0.789470,
		0.923667, 0.381588, -0.035071,
		38.573154, 36.879028, 48.603863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789787, 37.311684, 48.781258>,  <37.926586, 36.611919, 48.628410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789787, 37.311684, 48.781258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.137234, 37.261772, 48.589451>,  <38.345699, 37.231827, 48.474365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.137234, 37.261772, 48.589451>,  <37.789787, 37.311684, 48.781258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137234, 37.261772, 48.589451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259079, 0.710568, -0.654195,
		0.422359, 0.692477, 0.584883,
		0.868614, -0.124774, -0.479521,
		38.397820, 37.224339, 48.445595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976856, 38.055740, 48.539074>,  <37.789787, 37.311684, 48.781258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976856, 38.055740, 48.539074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.187176, 37.800365, 48.314243>,  <38.313366, 37.647141, 48.179344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.187176, 37.800365, 48.314243>,  <37.976856, 38.055740, 48.539074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187176, 37.800365, 48.314243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279728, 0.494256, -0.823081,
		0.803298, 0.590004, 0.081289,
		0.525799, -0.638440, -0.562076,
		38.344913, 37.608833, 48.145622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265388, 38.507103, 48.038250>,  <37.976856, 38.055740, 48.539074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265388, 38.507103, 48.038250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.355118, 38.154705, 47.871624>,  <38.408955, 37.943268, 47.771648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.355118, 38.154705, 47.871624>,  <38.265388, 38.507103, 48.038250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355118, 38.154705, 47.871624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027509, 0.433015, -0.900967,
		0.974127, 0.190648, 0.121370,
		0.224323, -0.880995, -0.416567,
		38.422413, 37.890408, 47.746655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945316, 38.579731, 47.651485>,  <38.265388, 38.507103, 48.038250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945316, 38.579731, 47.651485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.732262, 38.281456, 47.491364>,  <38.604427, 38.102489, 47.395290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.732262, 38.281456, 47.491364>,  <38.945316, 38.579731, 47.651485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732262, 38.281456, 47.491364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063702, 0.436323, -0.897532,
		0.843942, -0.503561, -0.184901,
		-0.532638, -0.745687, -0.400309,
		38.572472, 38.057751, 47.371269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335121, 38.537708, 47.030159>,  <38.945316, 38.579731, 47.651485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335121, 38.537708, 47.030159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.981979, 38.356339, 46.981228>,  <38.770092, 38.247517, 46.951870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.981979, 38.356339, 46.981228>,  <39.335121, 38.537708, 47.030159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981979, 38.356339, 46.981228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092952, 0.424026, -0.900867,
		0.460352, -0.783966, -0.416501,
		-0.882857, -0.453431, -0.122330,
		38.717121, 38.220310, 46.944530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352489, 38.192345, 46.370842>,  <39.335121, 38.537708, 47.030159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352489, 38.192345, 46.370842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.969814, 38.264725, 46.462059>,  <38.740208, 38.308155, 46.516788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.969814, 38.264725, 46.462059>,  <39.352489, 38.192345, 46.370842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969814, 38.264725, 46.462059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163307, 0.314881, -0.934976,
		-0.240993, -0.931722, -0.271692,
		-0.956689, 0.180954, 0.228041,
		38.682808, 38.319012, 46.530472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076439, 38.074078, 45.778370>,  <39.352489, 38.192345, 46.370842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076439, 38.074078, 45.778370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.768658, 38.263702, 45.949577>,  <38.583988, 38.377476, 46.052303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.768658, 38.263702, 45.949577>,  <39.076439, 38.074078, 45.778370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768658, 38.263702, 45.949577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326165, 0.284522, -0.901478,
		-0.549139, -0.833254, -0.064305,
		-0.769456, 0.474063, 0.428021,
		38.537819, 38.405922, 46.077984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514175, 37.927540, 45.380226>,  <39.076439, 38.074078, 45.778370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514175, 37.927540, 45.380226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.432220, 38.267834, 45.573833>,  <38.383049, 38.472012, 45.689999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.432220, 38.267834, 45.573833>,  <38.514175, 37.927540, 45.380226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432220, 38.267834, 45.573833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385999, 0.384204, -0.838685,
		-0.899459, -0.358664, 0.249666,
		-0.204883, 0.850734, 0.484020,
		38.370754, 38.523052, 45.719040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833241, 38.062714, 45.201492>,  <38.514175, 37.927540, 45.380226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833241, 38.062714, 45.201492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.994526, 38.403870, 45.334152>,  <38.091297, 38.608562, 45.413750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.994526, 38.403870, 45.334152>,  <37.833241, 38.062714, 45.201492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994526, 38.403870, 45.334152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387532, 0.487461, -0.782433,
		-0.828998, 0.186963, 0.527075,
		0.403214, 0.852893, 0.331649,
		38.115490, 38.659737, 45.433647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226086, 38.575485, 45.265919>,  <37.833241, 38.062714, 45.201492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226086, 38.575485, 45.265919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.570915, 38.776211, 45.237610>,  <37.777813, 38.896645, 45.220627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.570915, 38.776211, 45.237610>,  <37.226086, 38.575485, 45.265919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570915, 38.776211, 45.237610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363403, 0.514799, -0.776480,
		-0.353215, 0.695103, 0.626156,
		0.862078, 0.501811, -0.070768,
		37.829540, 38.926754, 45.216381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029869, 39.342884, 45.191193>,  <37.226086, 38.575485, 45.265919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029869, 39.342884, 45.191193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.398552, 39.271755, 45.053307>,  <37.619762, 39.229076, 44.970573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.398552, 39.271755, 45.053307>,  <37.029869, 39.342884, 45.191193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398552, 39.271755, 45.053307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175805, 0.600674, -0.779926,
		0.345750, 0.779468, 0.522385,
		0.921710, -0.177821, -0.344717,
		37.675064, 39.218410, 44.949890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348305, 39.682129, 45.102783>,  <37.029869, 39.342884, 45.191193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348305, 39.682129, 45.102783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.098877, 39.381908, 45.015297>,  <35.949223, 39.201775, 44.962803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.098877, 39.381908, 45.015297>,  <36.348305, 39.682129, 45.102783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098877, 39.381908, 45.015297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042179, -0.247065, 0.968080,
		-0.780632, 0.612887, 0.122404,
		-0.623566, -0.750552, -0.218718,
		35.911808, 39.156742, 44.949680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864994, 39.697845, 45.746090>,  <36.348305, 39.682129, 45.102783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864994, 39.697845, 45.746090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.796963, 39.342487, 45.575527>,  <35.756142, 39.129272, 45.473190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.796963, 39.342487, 45.575527>,  <35.864994, 39.697845, 45.746090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796963, 39.342487, 45.575527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270605, -0.373972, 0.887084,
		-0.947547, 0.266266, -0.176798,
		-0.170083, -0.888396, -0.426409,
		35.745937, 39.075970, 45.447605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190907, 39.523499, 45.978188>,  <35.864994, 39.697845, 45.746090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190907, 39.523499, 45.978188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382191, 39.184719, 45.885239>,  <35.496960, 38.981453, 45.829468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382191, 39.184719, 45.885239>,  <35.190907, 39.523499, 45.978188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382191, 39.184719, 45.885239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339754, -0.422391, 0.840329,
		-0.809865, -0.322906, -0.489745,
		0.478211, -0.846946, -0.232371,
		35.525654, 38.930634, 45.815529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798473, 39.136059, 46.291229>,  <35.190907, 39.523499, 45.978188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798473, 39.136059, 46.291229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137024, 38.932705, 46.227749>,  <35.340157, 38.810692, 46.189663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137024, 38.932705, 46.227749>,  <34.798473, 39.136059, 46.291229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137024, 38.932705, 46.227749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090715, -0.431239, 0.897666,
		-0.524798, -0.745369, -0.411110,
		0.846379, -0.508387, -0.158698,
		35.390938, 38.780190, 46.180141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590630, 38.487240, 46.520275>,  <34.798473, 39.136059, 46.291229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590630, 38.487240, 46.520275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.988647, 38.526768, 46.515877>,  <35.227459, 38.550484, 46.513237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.988647, 38.526768, 46.515877>,  <34.590630, 38.487240, 46.520275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988647, 38.526768, 46.515877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055604, -0.461393, 0.885452,
		0.082426, -0.881675, -0.464602,
		0.995045, 0.098818, -0.010994,
		35.287163, 38.556412, 46.512577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859924, 37.858639, 46.529518>,  <34.590630, 38.487240, 46.520275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859924, 37.858639, 46.529518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195385, 38.028542, 46.665894>,  <35.396664, 38.130482, 46.747719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195385, 38.028542, 46.665894>,  <34.859924, 37.858639, 46.529518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195385, 38.028542, 46.665894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072722, -0.707689, 0.702771,
		0.539786, -0.564589, -0.624396,
		0.838655, 0.424754, 0.340942,
		35.446983, 38.155968, 46.768177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376396, 37.304054, 46.715820>,  <34.859924, 37.858639, 46.529518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376396, 37.304054, 46.715820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.486515, 37.623470, 46.929943>,  <35.552586, 37.815121, 47.058414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.486515, 37.623470, 46.929943>,  <35.376396, 37.304054, 46.715820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486515, 37.623470, 46.929943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311770, -0.600883, 0.736029,
		0.909401, -0.035737, -0.414383,
		0.275299, 0.798537, 0.535302,
		35.569103, 37.863033, 47.090534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095818, 37.235764, 47.121601>,  <35.376396, 37.304054, 46.715820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095818, 37.235764, 47.121601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.805233, 37.442532, 47.302731>,  <35.630882, 37.566593, 47.411407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.805233, 37.442532, 47.302731>,  <36.095818, 37.235764, 47.121601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805233, 37.442532, 47.302731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028906, -0.635365, 0.771671,
		0.686599, 0.573679, 0.446626,
		-0.726462, 0.516918, 0.452824,
		35.587296, 37.597607, 47.438576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305984, 36.514748, 47.059425>,  <36.095818, 37.235764, 47.121601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305984, 36.514748, 47.059425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074883, 36.220802, 46.917336>,  <35.936222, 36.044437, 46.832081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074883, 36.220802, 46.917336>,  <36.305984, 36.514748, 47.059425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074883, 36.220802, 46.917336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195065, 0.298289, -0.934331,
		0.792562, -0.609102, -0.028991,
		-0.577751, -0.734859, -0.355227,
		35.901558, 36.000343, 46.810768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676342, 36.128941, 46.625538>,  <36.305984, 36.514748, 47.059425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676342, 36.128941, 46.625538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.292206, 36.099281, 46.518017>,  <36.061726, 36.081486, 46.453506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.292206, 36.099281, 46.518017>,  <36.676342, 36.128941, 46.625538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292206, 36.099281, 46.518017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243621, 0.245833, -0.938198,
		0.135641, -0.966472, -0.218020,
		-0.960339, -0.074144, -0.268798,
		36.004105, 36.077038, 46.437378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681408, 35.822983, 45.965996>,  <36.676342, 36.128941, 46.625538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681408, 35.822983, 45.965996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297989, 35.935791, 45.982224>,  <36.067936, 36.003475, 45.991959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297989, 35.935791, 45.982224>,  <36.681408, 35.822983, 45.965996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297989, 35.935791, 45.982224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009302, 0.111334, -0.993740,
		-0.284769, -0.952928, -0.104095,
		-0.958551, 0.282018, 0.040569,
		36.010422, 36.020397, 45.994392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297981, 35.377441, 45.480072>,  <36.681408, 35.822983, 45.965996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297981, 35.377441, 45.480072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068157, 35.701839, 45.524193>,  <35.930264, 35.896477, 45.550667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068157, 35.701839, 45.524193>,  <36.297981, 35.377441, 45.480072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068157, 35.701839, 45.524193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035331, 0.110071, -0.993295,
		-0.817700, -0.574605, -0.034589,
		-0.574560, 0.810995, 0.110306,
		35.895790, 35.945137, 45.557285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716507, 35.265644, 45.076546>,  <36.297981, 35.377441, 45.480072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716507, 35.265644, 45.076546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.738331, 35.658852, 45.146637>,  <35.751427, 35.894775, 45.188690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.738331, 35.658852, 45.146637>,  <35.716507, 35.265644, 45.076546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738331, 35.658852, 45.146637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189036, 0.182481, -0.964866,
		-0.980453, 0.019521, 0.195782,
		0.054561, 0.983016, 0.175224,
		35.754700, 35.953758, 45.199203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117321, 35.443142, 44.697678>,  <35.716507, 35.265644, 45.076546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117321, 35.443142, 44.697678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.287094, 35.799488, 44.762436>,  <35.388958, 36.013294, 44.801292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.287094, 35.799488, 44.762436>,  <35.117321, 35.443142, 44.697678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287094, 35.799488, 44.762436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194963, 0.264525, -0.944466,
		-0.884218, 0.369303, 0.285960,
		0.424437, 0.890866, 0.161897,
		35.414425, 36.066750, 44.811005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.227245, 32.240559, 46.912109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.473595, 32.517612, 47.062283>,  <38.621407, 32.683846, 47.152386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.473595, 32.517612, 47.062283>,  <38.227245, 32.240559, 46.912109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473595, 32.517612, 47.062283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128562, 0.381793, -0.915263,
		-0.777284, 0.611954, 0.146090,
		0.615875, 0.692637, 0.375436,
		38.658356, 32.725403, 47.174911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951843, 32.852070, 46.741203>,  <38.227245, 32.240559, 46.912109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951843, 32.852070, 46.741203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.338402, 32.946671, 46.781475>,  <38.570339, 33.003433, 46.805637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.338402, 32.946671, 46.781475>,  <37.951843, 32.852070, 46.741203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338402, 32.946671, 46.781475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034109, 0.270227, -0.962192,
		-0.254771, 0.933297, 0.253080,
		0.966400, 0.236506, 0.100680,
		38.628323, 33.017624, 46.811680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050667, 33.511871, 46.484375>,  <37.951843, 32.852070, 46.741203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050667, 33.511871, 46.484375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.433182, 33.395836, 46.499126>,  <38.662693, 33.326214, 46.507977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.433182, 33.395836, 46.499126>,  <38.050667, 33.511871, 46.484375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433182, 33.395836, 46.499126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128477, 0.303516, -0.944125,
		0.262687, 0.907594, 0.327519,
		0.956289, -0.290088, 0.036876,
		38.720070, 33.308811, 46.510189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440086, 34.044758, 46.218288>,  <38.050667, 33.511871, 46.484375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440086, 34.044758, 46.218288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.681793, 33.730423, 46.165642>,  <38.826817, 33.541824, 46.134056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.681793, 33.730423, 46.165642>,  <38.440086, 34.044758, 46.218288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681793, 33.730423, 46.165642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226253, 0.327613, -0.917322,
		0.763981, 0.524533, 0.375764,
		0.604270, -0.785834, -0.131612,
		38.863075, 33.494671, 46.126160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967278, 34.227280, 45.738499>,  <38.440086, 34.044758, 46.218288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967278, 34.227280, 45.738499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.003082, 33.830212, 45.706005>,  <39.024563, 33.591972, 45.686508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.003082, 33.830212, 45.706005>,  <38.967278, 34.227280, 45.738499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003082, 33.830212, 45.706005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186192, 0.096800, -0.977733,
		0.978428, 0.072391, 0.193491,
		0.089508, -0.992668, -0.081233,
		39.029934, 33.532410, 45.681637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653790, 34.101582, 45.385586>,  <38.967278, 34.227280, 45.738499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653790, 34.101582, 45.385586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.424717, 33.779064, 45.326355>,  <39.287273, 33.585552, 45.290817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.424717, 33.779064, 45.326355>,  <39.653790, 34.101582, 45.385586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424717, 33.779064, 45.326355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008054, 0.175083, -0.984521,
		0.819742, -0.565004, -0.093772,
		-0.572676, -0.806298, -0.148074,
		39.252914, 33.537174, 45.281933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979046, 33.809212, 44.843815>,  <39.653790, 34.101582, 45.385586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979046, 33.809212, 44.843815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.636375, 33.602879, 44.846043>,  <39.430775, 33.479080, 44.847382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.636375, 33.602879, 44.846043>,  <39.979046, 33.809212, 44.843815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636375, 33.602879, 44.846043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065489, -0.119466, -0.990676,
		0.511689, -0.848319, 0.136125,
		-0.856671, -0.515832, 0.005574,
		39.379375, 33.448128, 44.847713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174446, 33.205250, 44.542835>,  <39.979046, 33.809212, 44.843815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174446, 33.205250, 44.542835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.781200, 33.251911, 44.486435>,  <39.545254, 33.279907, 44.452595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.781200, 33.251911, 44.486435>,  <40.174446, 33.205250, 44.542835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781200, 33.251911, 44.486435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121750, -0.158269, -0.979861,
		-0.136612, -0.980482, 0.141395,
		-0.983114, 0.116646, -0.140995,
		39.486267, 33.286907, 44.444138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914349, 32.668777, 44.023922>,  <40.174446, 33.205250, 44.542835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914349, 32.668777, 44.023922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.632629, 32.952610, 44.015434>,  <39.463596, 33.122910, 44.010342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.632629, 32.952610, 44.015434>,  <39.914349, 32.668777, 44.023922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632629, 32.952610, 44.015434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186175, -0.213470, -0.959046,
		-0.685056, -0.671504, 0.282454,
		-0.704299, 0.709586, -0.021222,
		39.421341, 33.165485, 44.009068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285961, 32.344326, 43.705399>,  <39.914349, 32.668777, 44.023922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285961, 32.344326, 43.705399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.250210, 32.739746, 43.656765>,  <39.228760, 32.976997, 43.627583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.250210, 32.739746, 43.656765>,  <39.285961, 32.344326, 43.705399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250210, 32.739746, 43.656765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282773, -0.142236, -0.948582,
		-0.955014, -0.050398, 0.292248,
		-0.089374, 0.988549, -0.121586,
		39.223396, 33.036312, 43.620289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725262, 32.440639, 43.333218>,  <39.285961, 32.344326, 43.705399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725262, 32.440639, 43.333218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.892609, 32.799084, 43.273949>,  <38.993019, 33.014149, 43.238388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.892609, 32.799084, 43.273949>,  <38.725262, 32.440639, 43.333218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892609, 32.799084, 43.273949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227830, -0.054381, -0.972181,
		-0.879238, 0.440489, 0.181409,
		0.418370, 0.896109, -0.148170,
		39.018120, 33.067917, 43.229496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215874, 32.901249, 42.901012>,  <38.725262, 32.440639, 43.333218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215874, 32.901249, 42.901012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.558697, 33.098473, 42.841228>,  <38.764393, 33.216805, 42.805359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.558697, 33.098473, 42.841228>,  <38.215874, 32.901249, 42.901012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558697, 33.098473, 42.841228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231655, 0.109665, -0.966597,
		-0.460196, 0.863058, 0.208209,
		0.857062, 0.493056, -0.149464,
		38.815815, 33.246391, 42.796391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772942, 33.418392, 43.151054>,  <38.215874, 32.901249, 42.901012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772942, 33.418392, 43.151054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.390827, 33.360313, 43.254078>,  <37.161556, 33.325466, 43.315891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.390827, 33.360313, 43.254078>,  <37.772942, 33.418392, 43.151054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390827, 33.360313, 43.254078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269864, -0.072259, 0.960183,
		-0.120808, 0.986760, 0.108213,
		-0.955290, -0.145201, 0.257562,
		37.104240, 33.316753, 43.331345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682777, 33.738560, 43.707859>,  <37.772942, 33.418392, 43.151054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682777, 33.738560, 43.707859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.353672, 33.511707, 43.722889>,  <37.156208, 33.375595, 43.731907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.353672, 33.511707, 43.722889>,  <37.682777, 33.738560, 43.707859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353672, 33.511707, 43.722889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146075, -0.147105, 0.978275,
		-0.549286, 0.810382, 0.203877,
		-0.822768, -0.567134, 0.037574,
		37.106842, 33.341568, 43.734161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378513, 34.054852, 44.320210>,  <37.682777, 33.738560, 43.707859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378513, 34.054852, 44.320210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.205788, 33.698025, 44.266907>,  <37.102154, 33.483929, 44.234924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.205788, 33.698025, 44.266907>,  <37.378513, 34.054852, 44.320210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205788, 33.698025, 44.266907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185075, -0.056970, 0.981072,
		-0.882772, 0.448301, -0.140499,
		-0.431811, -0.892065, -0.133261,
		37.076244, 33.430405, 44.226929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679714, 34.067657, 44.636559>,  <37.378513, 34.054852, 44.320210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679714, 34.067657, 44.636559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.747108, 33.674934, 44.601540>,  <36.787544, 33.439301, 44.580528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.747108, 33.674934, 44.601540>,  <36.679714, 34.067657, 44.636559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747108, 33.674934, 44.601540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303737, -0.136210, 0.942969,
		-0.937740, -0.132284, -0.321161,
		0.168485, -0.981808, -0.087550,
		36.797653, 33.380390, 44.575275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172611, 33.791588, 44.840084>,  <36.679714, 34.067657, 44.636559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172611, 33.791588, 44.840084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.418686, 33.479149, 44.882832>,  <36.566330, 33.291683, 44.908482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.418686, 33.479149, 44.882832>,  <36.172611, 33.791588, 44.840084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418686, 33.479149, 44.882832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335675, -0.136861, 0.931983,
		-0.713347, -0.609220, -0.346392,
		0.615190, -0.781102, 0.106870,
		36.603245, 33.244820, 44.914894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735329, 33.177979, 45.109287>,  <36.172611, 33.791588, 44.840084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735329, 33.177979, 45.109287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.120323, 33.123287, 45.203037>,  <36.351318, 33.090473, 45.259285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.120323, 33.123287, 45.203037>,  <35.735329, 33.177979, 45.109287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120323, 33.123287, 45.203037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260130, -0.219261, 0.940350,
		-0.077182, -0.966039, -0.246602,
		0.962484, -0.136727, 0.234372,
		36.409069, 33.082268, 45.273350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794178, 32.484703, 45.461498>,  <35.735329, 33.177979, 45.109287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794178, 32.484703, 45.461498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.125385, 32.681034, 45.569927>,  <36.324108, 32.798832, 45.634983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.125385, 32.681034, 45.569927>,  <35.794178, 32.484703, 45.461498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125385, 32.681034, 45.569927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149582, -0.272565, 0.950439,
		0.540382, -0.827527, -0.152270,
		0.828017, 0.490823, 0.271072,
		36.373791, 32.828281, 45.651249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160198, 32.053837, 45.854435>,  <35.794178, 32.484703, 45.461498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160198, 32.053837, 45.854435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.282814, 32.420910, 45.955547>,  <36.356384, 32.641151, 46.016216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.282814, 32.420910, 45.955547>,  <36.160198, 32.053837, 45.854435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282814, 32.420910, 45.955547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185476, -0.202888, 0.961475,
		0.933613, -0.341612, 0.108016,
		0.306536, 0.917681, 0.252779,
		36.374775, 32.696213, 46.031380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606205, 31.878315, 46.412926>,  <36.160198, 32.053837, 45.854435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606205, 31.878315, 46.412926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.548756, 32.270172, 46.469032>,  <36.514286, 32.505287, 46.502697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.548756, 32.270172, 46.469032>,  <36.606205, 31.878315, 46.412926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548756, 32.270172, 46.469032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052644, -0.133975, 0.989585,
		0.988231, 0.149517, -0.032330,
		-0.143628, 0.979641, 0.140270,
		36.505669, 32.564064, 46.511112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080956, 32.055176, 46.853252>,  <36.606205, 31.878315, 46.412926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080956, 32.055176, 46.853252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.819016, 32.356487, 46.877750>,  <36.661850, 32.537273, 46.892448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.819016, 32.356487, 46.877750>,  <37.080956, 32.055176, 46.853252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819016, 32.356487, 46.877750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051660, -0.036238, 0.998007,
		0.753993, 0.656708, -0.015184,
		-0.654849, 0.753274, 0.061249,
		36.622562, 32.582470, 46.896126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312950, 32.508720, 47.392750>,  <37.080956, 32.055176, 46.853252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312950, 32.508720, 47.392750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.936420, 32.640850, 47.365021>,  <36.710503, 32.720127, 47.348385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.936420, 32.640850, 47.365021>,  <37.312950, 32.508720, 47.392750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936420, 32.640850, 47.365021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001179, 0.202166, 0.979351,
		0.337513, 0.921964, -0.189913,
		-0.941320, 0.330320, -0.069321,
		36.654026, 32.739944, 47.344223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282742, 33.096695, 47.879787>,  <37.312950, 32.508720, 47.392750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282742, 33.096695, 47.879787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.908939, 32.966991, 47.821068>,  <36.684658, 32.889168, 47.785835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.908939, 32.966991, 47.821068>,  <37.282742, 33.096695, 47.879787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908939, 32.966991, 47.821068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177362, 0.066635, 0.981887,
		-0.308605, 0.943618, -0.119782,
		-0.934508, -0.324260, -0.146798,
		36.628586, 32.869713, 47.777027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932858, 33.335754, 48.360657>,  <37.282742, 33.096695, 47.879787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932858, 33.335754, 48.360657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.642933, 33.073723, 48.275307>,  <36.468979, 32.916504, 48.224098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.642933, 33.073723, 48.275307>,  <36.932858, 33.335754, 48.360657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642933, 33.073723, 48.275307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174790, -0.124732, 0.976673,
		-0.666409, 0.745197, -0.024093,
		-0.724809, -0.655075, -0.213375,
		36.425491, 32.877201, 48.211292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325966, 33.529804, 48.728004>,  <36.932858, 33.335754, 48.360657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325966, 33.529804, 48.728004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.295620, 33.137211, 48.657646>,  <36.277412, 32.901657, 48.615433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.295620, 33.137211, 48.657646>,  <36.325966, 33.529804, 48.728004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295620, 33.137211, 48.657646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246329, -0.152485, 0.957116,
		-0.966212, 0.115942, -0.230198,
		-0.075868, -0.981481, -0.175893,
		36.272861, 32.842766, 48.604877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815392, 33.922955, 49.043327>,  <36.325966, 33.529804, 48.728004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815392, 33.922955, 49.043327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.431049, 33.812477, 49.034679>,  <35.200443, 33.746189, 49.029491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.431049, 33.812477, 49.034679>,  <35.815392, 33.922955, 49.043327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431049, 33.812477, 49.034679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170559, 0.651233, -0.739463,
		0.218312, -0.706832, -0.672850,
		-0.960859, -0.276194, -0.021616,
		35.142792, 33.729618, 49.028194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652691, 33.627907, 48.438637>,  <35.815392, 33.922955, 49.043327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652691, 33.627907, 48.438637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.339840, 33.824013, 48.592472>,  <35.152130, 33.941677, 48.684772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.339840, 33.824013, 48.592472>,  <35.652691, 33.627907, 48.438637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339840, 33.824013, 48.592472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032034, 0.648025, -0.760945,
		-0.622291, -0.582838, -0.522545,
		-0.782130, 0.490269, 0.384590,
		35.105202, 33.971092, 48.707848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269482, 33.691330, 47.855286>,  <35.652691, 33.627907, 48.438637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269482, 33.691330, 47.855286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.155106, 33.959534, 48.129120>,  <35.086479, 34.120457, 48.293419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.155106, 33.959534, 48.129120>,  <35.269482, 33.691330, 47.855286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155106, 33.959534, 48.129120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078569, 0.728412, -0.680620,
		-0.955020, -0.140831, -0.260966,
		-0.285943, 0.670509, 0.684583,
		35.069324, 34.160686, 48.334496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705025, 34.033005, 47.585049>,  <35.269482, 33.691330, 47.855286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705025, 34.033005, 47.585049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.854755, 34.283875, 47.858261>,  <34.944592, 34.434395, 48.022190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.854755, 34.283875, 47.858261>,  <34.705025, 34.033005, 47.585049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854755, 34.283875, 47.858261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034976, 0.745609, -0.665465,
		-0.926638, 0.225210, 0.301036,
		0.374324, 0.627174, 0.683032,
		34.967052, 34.472027, 48.063171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296074, 34.573586, 47.414715>,  <34.705025, 34.033005, 47.585049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296074, 34.573586, 47.414715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.603703, 34.717354, 47.626125>,  <34.788280, 34.803616, 47.752972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.603703, 34.717354, 47.626125>,  <34.296074, 34.573586, 47.414715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603703, 34.717354, 47.626125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086969, 0.760370, -0.643641,
		-0.633215, 0.540973, 0.553523,
		0.769075, 0.359423, 0.528525,
		34.834423, 34.825180, 47.784683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250362, 35.253349, 47.559151>,  <34.296074, 34.573586, 47.414715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250362, 35.253349, 47.559151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.645481, 35.193737, 47.577248>,  <34.882553, 35.157970, 47.588108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.645481, 35.193737, 47.577248>,  <34.250362, 35.253349, 47.559151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645481, 35.193737, 47.577248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145440, 0.778747, -0.610246,
		0.055709, 0.609380, 0.790919,
		0.987797, -0.149027, 0.045245,
		34.941822, 35.149029, 47.590820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482780, 35.908951, 47.439327>,  <34.250362, 35.253349, 47.559151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482780, 35.908951, 47.439327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.798000, 35.668846, 47.384674>,  <34.987133, 35.524784, 47.351883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.798000, 35.668846, 47.384674>,  <34.482780, 35.908951, 47.439327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798000, 35.668846, 47.384674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237126, 0.500802, -0.832448,
		0.568110, 0.623610, 0.536993,
		0.788050, -0.600257, -0.136637,
		35.034416, 35.488770, 47.343681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781349, 36.113522, 48.104572>,  <34.482780, 35.908951, 47.439327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781349, 36.113522, 48.104572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.673790, 36.157135, 48.487362>,  <34.609257, 36.183304, 48.717037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.673790, 36.157135, 48.487362>,  <34.781349, 36.113522, 48.104572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673790, 36.157135, 48.487362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918475, 0.270125, -0.288851,
		-0.289998, -0.956632, 0.027507,
		-0.268894, 0.109031, 0.956978,
		34.593121, 36.189846, 48.774456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347862, 36.589024, 48.038044>,  <34.781349, 36.113522, 48.104572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347862, 36.589024, 48.038044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.500488, 36.925285, 48.191776>,  <35.592064, 37.127041, 48.284016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.500488, 36.925285, 48.191776>,  <35.347862, 36.589024, 48.038044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500488, 36.925285, 48.191776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457859, -0.533090, 0.711463,
		0.802976, -0.095502, -0.588310,
		0.381568, 0.840651, 0.384332,
		35.614960, 37.177483, 48.307076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056419, 36.494907, 48.154942>,  <35.347862, 36.589024, 48.038044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056419, 36.494907, 48.154942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.998661, 36.818893, 48.382309>,  <35.964005, 37.013287, 48.518730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.998661, 36.818893, 48.382309>,  <36.056419, 36.494907, 48.154942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998661, 36.818893, 48.382309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683884, -0.333480, 0.648918,
		0.715159, 0.482437, -0.505769,
		-0.144398, 0.809967, 0.568422,
		35.955341, 37.061882, 48.552837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659431, 36.720684, 48.374348>,  <36.056419, 36.494907, 48.154942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659431, 36.720684, 48.374348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.428661, 36.894096, 48.651245>,  <36.290199, 36.998146, 48.817383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.428661, 36.894096, 48.651245>,  <36.659431, 36.720684, 48.374348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428661, 36.894096, 48.651245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617438, -0.323356, 0.717086,
		0.534723, 0.841124, -0.081128,
		-0.576925, 0.433534, 0.692247,
		36.255585, 37.024155, 48.858921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017933, 37.264214, 48.689781>,  <36.659431, 36.720684, 48.374348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017933, 37.264214, 48.689781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.732410, 37.155849, 48.948109>,  <36.561096, 37.090832, 49.103107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.732410, 37.155849, 48.948109>,  <37.017933, 37.264214, 48.689781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732410, 37.155849, 48.948109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697845, -0.197325, 0.688531,
		-0.059096, 0.942161, 0.329909,
		-0.713806, -0.270914, 0.645822,
		36.518269, 37.074574, 49.141853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277946, 37.503986, 49.363159>,  <37.017933, 37.264214, 48.689781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277946, 37.503986, 49.363159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.979111, 37.254074, 49.453938>,  <36.799809, 37.104126, 49.508404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.979111, 37.254074, 49.453938>,  <37.277946, 37.503986, 49.363159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979111, 37.254074, 49.453938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506988, -0.314770, 0.802423,
		-0.429904, 0.714541, 0.551919,
		-0.747092, -0.624781, 0.226943,
		36.754982, 37.066639, 49.522022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910820, 37.701221, 49.982880>,  <37.277946, 37.503986, 49.363159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910820, 37.701221, 49.982880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.855385, 37.306374, 49.950901>,  <36.822124, 37.069466, 49.931713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.855385, 37.306374, 49.950901>,  <36.910820, 37.701221, 49.982880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855385, 37.306374, 49.950901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478433, -0.137417, 0.867305,
		-0.867118, 0.081951, 0.491315,
		-0.138591, -0.987117, -0.079949,
		36.813808, 37.010239, 49.926918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847271, 37.513462, 50.645500>,  <36.910820, 37.701221, 49.982880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847271, 37.513462, 50.645500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.880486, 37.147263, 50.488041>,  <36.900414, 36.927544, 50.393566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.880486, 37.147263, 50.488041>,  <36.847271, 37.513462, 50.645500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880486, 37.147263, 50.488041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547602, -0.288114, 0.785571,
		-0.832609, -0.280794, 0.477407,
		0.083036, -0.915503, -0.393650,
		36.905396, 36.872612, 50.369946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527168, 37.006672, 51.110332>,  <36.847271, 37.513462, 50.645500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527168, 37.006672, 51.110332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.795547, 36.814327, 50.884556>,  <36.956577, 36.698921, 50.749088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.795547, 36.814327, 50.884556>,  <36.527168, 37.006672, 51.110332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795547, 36.814327, 50.884556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540359, -0.204194, 0.816282,
		-0.507777, -0.852686, 0.122835,
		0.670951, -0.480864, -0.564442,
		36.996834, 36.670067, 50.715221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.878853, 39.568665, 34.445183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990601, 39.823982, 34.732109>,  <36.057652, 39.977173, 34.904263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990601, 39.823982, 34.732109>,  <35.878853, 39.568665, 34.445183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990601, 39.823982, 34.732109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537768, -0.514883, 0.667608,
		0.795460, -0.572259, 0.199408,
		0.279373, 0.638291, 0.717311,
		36.074413, 40.015469, 34.947304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872093, 39.127911, 35.039154>,  <35.878853, 39.568665, 34.445183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872093, 39.127911, 35.039154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875000, 39.496098, 35.195457>,  <35.876743, 39.717010, 35.289242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875000, 39.496098, 35.195457>,  <35.872093, 39.127911, 35.039154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875000, 39.496098, 35.195457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378070, -0.359238, 0.853236,
		0.925749, -0.153936, 0.345388,
		0.007267, 0.920463, 0.390763,
		35.877182, 39.772236, 35.312687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231663, 39.088573, 35.674538>,  <35.872093, 39.127911, 35.039154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231663, 39.088573, 35.674538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016407, 39.425518, 35.686108>,  <35.887253, 39.627686, 35.693050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016407, 39.425518, 35.686108>,  <36.231663, 39.088573, 35.674538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016407, 39.425518, 35.686108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289198, -0.216771, 0.932403,
		0.791686, 0.493402, 0.360262,
		-0.538144, 0.842357, 0.028924,
		35.854965, 39.678226, 35.694786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380672, 39.443691, 36.247349>,  <36.231663, 39.088573, 35.674538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380672, 39.443691, 36.247349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014091, 39.587658, 36.177410>,  <35.794144, 39.674038, 36.135448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014091, 39.587658, 36.177410>,  <36.380672, 39.443691, 36.247349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014091, 39.587658, 36.177410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224050, -0.099527, 0.969482,
		0.331531, 0.927661, 0.171852,
		-0.916454, 0.359917, -0.174846,
		35.739155, 39.695633, 36.124958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279011, 40.017887, 36.631664>,  <36.380672, 39.443691, 36.247349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279011, 40.017887, 36.631664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907093, 39.901073, 36.542049>,  <35.683941, 39.830986, 36.488281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907093, 39.901073, 36.542049>,  <36.279011, 40.017887, 36.631664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907093, 39.901073, 36.542049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245547, 0.038710, 0.968612,
		-0.274200, 0.955623, -0.107702,
		-0.929796, -0.292039, -0.224036,
		35.628155, 39.813461, 36.474838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839722, 40.472843, 36.996719>,  <36.279011, 40.017887, 36.631664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839722, 40.472843, 36.996719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575619, 40.183441, 36.916126>,  <35.417156, 40.009800, 36.867771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575619, 40.183441, 36.916126>,  <35.839722, 40.472843, 36.996719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575619, 40.183441, 36.916126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469375, 0.188092, 0.862733,
		-0.586295, 0.664200, -0.463785,
		-0.660261, -0.723506, -0.201481,
		35.377541, 39.966389, 36.855682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247955, 40.787849, 37.156506>,  <35.839722, 40.472843, 36.996719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247955, 40.787849, 37.156506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165436, 40.396484, 37.161274>,  <35.115925, 40.161663, 37.164135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165436, 40.396484, 37.161274>,  <35.247955, 40.787849, 37.156506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165436, 40.396484, 37.161274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419782, 0.099507, 0.902154,
		-0.883868, 0.181108, -0.431250,
		-0.206300, -0.978416, 0.011925,
		35.103546, 40.102959, 37.164852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598621, 40.660503, 37.397991>,  <35.247955, 40.787849, 37.156506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598621, 40.660503, 37.397991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707375, 40.279594, 37.453503>,  <34.772629, 40.051048, 37.486809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707375, 40.279594, 37.453503>,  <34.598621, 40.660503, 37.397991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707375, 40.279594, 37.453503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455299, -0.000241, 0.890338,
		-0.847809, -0.305256, -0.433634,
		0.271886, -0.952270, 0.138779,
		34.788940, 39.993912, 37.495136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984093, 40.320072, 37.604023>,  <34.598621, 40.660503, 37.397991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984093, 40.320072, 37.604023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307198, 40.115738, 37.721706>,  <34.501060, 39.993137, 37.792316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307198, 40.115738, 37.721706>,  <33.984093, 40.320072, 37.604023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307198, 40.115738, 37.721706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347279, -0.009079, 0.937718,
		-0.476353, -0.859628, -0.184737,
		0.807766, -0.510840, 0.294206,
		34.549526, 39.962486, 37.809967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809914, 39.856426, 38.148521>,  <33.984093, 40.320072, 37.604023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809914, 39.856426, 38.148521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198009, 39.842533, 38.244385>,  <34.430866, 39.834198, 38.301903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198009, 39.842533, 38.244385>,  <33.809914, 39.856426, 38.148521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198009, 39.842533, 38.244385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238523, 0.033959, 0.970543,
		-0.041847, -0.998820, 0.024664,
		0.970235, -0.034731, 0.239662,
		34.489079, 39.832115, 38.316284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924370, 39.311390, 38.680119>,  <33.809914, 39.856426, 38.148521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924370, 39.311390, 38.680119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262405, 39.522457, 38.714500>,  <34.465225, 39.649097, 38.735130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262405, 39.522457, 38.714500>,  <33.924370, 39.311390, 38.680119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262405, 39.522457, 38.714500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102986, 0.002916, 0.994678,
		0.524611, -0.849444, 0.056807,
		0.845089, 0.527670, 0.085951,
		34.515934, 39.680759, 38.740284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296329, 39.009178, 39.139694>,  <33.924370, 39.311390, 38.680119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296329, 39.009178, 39.139694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456451, 39.375599, 39.149574>,  <34.552525, 39.595451, 39.155502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456451, 39.375599, 39.149574>,  <34.296329, 39.009178, 39.139694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456451, 39.375599, 39.149574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031994, -0.012963, 0.999404,
		0.915822, -0.400859, 0.024118,
		0.400308, 0.916048, 0.024697,
		34.576542, 39.650414, 39.156982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651020, 38.436047, 38.936314>,  <34.296329, 39.009178, 39.139694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651020, 38.436047, 38.936314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473461, 38.093388, 39.041466>,  <34.366924, 37.887791, 39.104557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473461, 38.093388, 39.041466>,  <34.651020, 38.436047, 38.936314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473461, 38.093388, 39.041466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423067, -0.058259, -0.904224,
		0.789917, -0.512600, -0.336558,
		-0.443897, -0.856649, 0.262884,
		34.340290, 37.836391, 39.120331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633301, 37.990780, 38.266350>,  <34.651020, 38.436047, 38.936314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633301, 37.990780, 38.266350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385044, 37.791084, 38.508198>,  <34.236092, 37.671268, 38.653305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385044, 37.791084, 38.508198>,  <34.633301, 37.990780, 38.266350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385044, 37.791084, 38.508198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565806, -0.248685, -0.786142,
		0.542832, -0.830010, -0.128128,
		-0.620642, -0.499239, 0.604619,
		34.198853, 37.641312, 38.689583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542942, 37.273155, 37.977600>,  <34.633301, 37.990780, 38.266350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542942, 37.273155, 37.977600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236328, 37.300476, 38.233025>,  <34.052361, 37.316868, 38.386280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236328, 37.300476, 38.233025>,  <34.542942, 37.273155, 37.977600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236328, 37.300476, 38.233025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639800, -0.167150, -0.750145,
		0.055502, -0.983563, 0.171824,
		-0.766535, 0.068299, 0.638560,
		34.006367, 37.320965, 38.424591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138210, 36.705212, 37.845039>,  <34.542942, 37.273155, 37.977600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138210, 36.705212, 37.845039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890995, 36.964046, 38.023613>,  <33.742664, 37.119347, 38.130756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890995, 36.964046, 38.023613>,  <34.138210, 36.705212, 37.845039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890995, 36.964046, 38.023613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655752, -0.111121, -0.746754,
		-0.433607, -0.754275, 0.493006,
		-0.618041, 0.647087, 0.446434,
		33.705582, 37.158173, 38.157543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438461, 36.373867, 38.038307>,  <34.138210, 36.705212, 37.845039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438461, 36.373867, 38.038307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380428, 36.767876, 38.001049>,  <33.345608, 37.004280, 37.978695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380428, 36.767876, 38.001049>,  <33.438461, 36.373867, 38.038307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380428, 36.767876, 38.001049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747137, -0.170785, -0.642354,
		-0.648642, -0.023606, 0.760727,
		-0.145084, 0.985025, -0.093142,
		33.336903, 37.063385, 37.973106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844074, 36.331142, 37.851330>,  <33.438461, 36.373867, 38.038307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844074, 36.331142, 37.851330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915176, 36.717548, 37.776272>,  <32.957840, 36.949394, 37.731236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915176, 36.717548, 37.776272>,  <32.844074, 36.331142, 37.851330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915176, 36.717548, 37.776272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694573, -0.011919, -0.719324,
		-0.697116, 0.258202, 0.668851,
		0.177759, 0.966017, -0.187650,
		32.968506, 37.007355, 37.719978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225574, 36.706379, 37.848694>,  <32.844074, 36.331142, 37.851330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225574, 36.706379, 37.848694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461273, 36.947754, 37.633789>,  <32.602692, 37.092579, 37.504845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461273, 36.947754, 37.633789>,  <32.225574, 36.706379, 37.848694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461273, 36.947754, 37.633789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768567, 0.213545, -0.603079,
		-0.249192, 0.768283, 0.589614,
		0.589244, 0.603440, -0.537263,
		32.638046, 37.128784, 37.472610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847332, 37.403233, 37.809963>,  <32.225574, 36.706379, 37.848694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847332, 37.403233, 37.809963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097729, 37.376762, 37.499157>,  <32.247967, 37.360882, 37.312672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097729, 37.376762, 37.499157>,  <31.847332, 37.403233, 37.809963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097729, 37.376762, 37.499157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748110, 0.230324, -0.622320,
		0.220148, 0.970861, 0.094675,
		0.625992, -0.066175, -0.777016,
		32.285526, 37.356911, 37.266052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556740, 37.907825, 37.301994>,  <31.847332, 37.403233, 37.809963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556740, 37.907825, 37.301994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839575, 37.714355, 37.095661>,  <32.009277, 37.598274, 36.971859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839575, 37.714355, 37.095661>,  <31.556740, 37.907825, 37.301994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839575, 37.714355, 37.095661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533712, 0.113499, -0.838015,
		0.463875, 0.867857, -0.177890,
		0.707087, -0.483676, -0.515835,
		32.051701, 37.569252, 36.940910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637411, 38.260212, 36.620346>,  <31.556740, 37.907825, 37.301994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637411, 38.260212, 36.620346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722460, 37.871326, 36.581177>,  <31.773489, 37.637997, 36.557674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722460, 37.871326, 36.581177>,  <31.637411, 38.260212, 36.620346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722460, 37.871326, 36.581177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680034, -0.075263, -0.729307,
		0.701673, 0.221662, -0.677142,
		0.212624, -0.972215, -0.097928,
		31.786247, 37.579662, 36.551800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502390, 38.177528, 35.898506>,  <31.637411, 38.260212, 36.620346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502390, 38.177528, 35.898506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547293, 37.798649, 36.018646>,  <31.574234, 37.571320, 36.090729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547293, 37.798649, 36.018646>,  <31.502390, 38.177528, 35.898506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547293, 37.798649, 36.018646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587804, -0.307001, -0.748489,
		0.801177, -0.092520, -0.591232,
		0.112258, -0.947201, 0.300346,
		31.580971, 37.514488, 36.108749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583437, 37.690716, 35.316216>,  <31.502390, 38.177528, 35.898506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583437, 37.690716, 35.316216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428095, 37.446705, 35.592491>,  <31.334890, 37.300297, 35.758255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428095, 37.446705, 35.592491>,  <31.583437, 37.690716, 35.316216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428095, 37.446705, 35.592491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624542, -0.376887, -0.684034,
		0.677590, -0.697011, -0.234621,
		-0.388353, -0.610026, 0.690688,
		31.311588, 37.263699, 35.799698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412027, 37.200180, 34.940029>,  <31.583437, 37.690716, 35.316216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412027, 37.200180, 34.940029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226807, 37.128330, 35.287205>,  <31.115673, 37.085220, 35.495510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226807, 37.128330, 35.287205>,  <31.412027, 37.200180, 34.940029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226807, 37.128330, 35.287205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767420, -0.408684, -0.494007,
		0.443450, -0.894824, 0.051393,
		-0.463053, -0.179628, 0.867938,
		31.087891, 37.074444, 35.547585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238684, 36.427849, 35.059216>,  <31.412027, 37.200180, 34.940029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238684, 36.427849, 35.059216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987272, 36.680202, 35.241177>,  <30.836426, 36.831615, 35.350353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987272, 36.680202, 35.241177>,  <31.238684, 36.427849, 35.059216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987272, 36.680202, 35.241177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762121, -0.382747, -0.522184,
		-0.155324, -0.674900, 0.721377,
		-0.628527, 0.630884, 0.454905,
		30.798714, 36.869469, 35.377647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852962, 36.314468, 34.640739>,  <31.238684, 36.427849, 35.059216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852962, 36.314468, 34.640739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191582, 36.491703, 34.758743>,  <32.394753, 36.598045, 34.829544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191582, 36.491703, 34.758743>,  <31.852962, 36.314468, 34.640739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191582, 36.491703, 34.758743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191633, 0.770719, -0.607675,
		-0.496624, 0.457892, 0.737360,
		0.846547, 0.443089, 0.295010,
		32.445545, 36.624630, 34.847248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943892, 35.542496, 34.373398>,  <31.852962, 36.314468, 34.640739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943892, 35.542496, 34.373398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117409, 35.304558, 34.102699>,  <32.221519, 35.161797, 33.940281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117409, 35.304558, 34.102699>,  <31.943892, 35.542496, 34.373398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117409, 35.304558, 34.102699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572472, -0.398039, 0.716827,
		-0.695772, -0.698372, 0.167866,
		0.433794, -0.594846, -0.676742,
		32.247547, 35.126102, 33.899677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827759, 34.908478, 34.586113>,  <31.943892, 35.542496, 34.373398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827759, 34.908478, 34.586113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151375, 34.889729, 34.351761>,  <32.345543, 34.878479, 34.211147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151375, 34.889729, 34.351761>,  <31.827759, 34.908478, 34.586113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151375, 34.889729, 34.351761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508039, -0.445480, 0.737187,
		-0.295556, -0.894064, -0.336595,
		0.809038, -0.046877, -0.585883,
		32.394085, 34.875664, 34.175995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039673, 34.143192, 34.362316>,  <31.827759, 34.908478, 34.586113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039673, 34.143192, 34.362316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312660, 34.426109, 34.436039>,  <32.476452, 34.595860, 34.480270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312660, 34.426109, 34.436039>,  <32.039673, 34.143192, 34.362316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312660, 34.426109, 34.436039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291730, -0.494794, 0.818580,
		0.670169, -0.504890, -0.544022,
		0.682471, 0.707294, 0.184304,
		32.517403, 34.638298, 34.491329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761265, 33.854549, 34.603123>,  <32.039673, 34.143192, 34.362316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761265, 33.854549, 34.603123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776432, 34.230846, 34.737923>,  <32.785530, 34.456623, 34.818802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776432, 34.230846, 34.737923>,  <32.761265, 33.854549, 34.603123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776432, 34.230846, 34.737923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224919, -0.336624, 0.914383,
		0.973639, 0.041128, -0.224354,
		0.037916, 0.940741, 0.337000,
		32.787807, 34.513069, 34.839024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261913, 33.856262, 35.143169>,  <32.761265, 33.854549, 34.603123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261913, 33.856262, 35.143169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127991, 34.224747, 35.222450>,  <33.047638, 34.445835, 35.270020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127991, 34.224747, 35.222450>,  <33.261913, 33.856262, 35.143169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127991, 34.224747, 35.222450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383703, -0.058826, 0.921581,
		0.860627, 0.384598, -0.333775,
		-0.334804, 0.921208, 0.198199,
		33.027550, 34.501110, 35.281910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830666, 34.131073, 35.533100>,  <33.261913, 33.856262, 35.143169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830666, 34.131073, 35.533100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498398, 34.342632, 35.602669>,  <33.299038, 34.469566, 35.644409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498398, 34.342632, 35.602669>,  <33.830666, 34.131073, 35.533100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498398, 34.342632, 35.602669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295573, 0.154184, 0.942796,
		0.471827, 0.834562, -0.284404,
		-0.830672, 0.528899, 0.173926,
		33.249195, 34.501301, 35.654846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040150, 34.687420, 35.877438>,  <33.830666, 34.131073, 35.533100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040150, 34.687420, 35.877438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652290, 34.664902, 35.972614>,  <33.419575, 34.651390, 36.029720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652290, 34.664902, 35.972614>,  <34.040150, 34.687420, 35.877438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652290, 34.664902, 35.972614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237688, 0.011315, 0.971276,
		-0.057372, 0.998350, 0.002409,
		-0.969646, -0.056297, 0.237945,
		33.361397, 34.648014, 36.043999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924042, 35.188435, 36.347961>,  <34.040150, 34.687420, 35.877438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924042, 35.188435, 36.347961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633968, 34.921921, 36.417435>,  <33.459923, 34.762012, 36.459118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633968, 34.921921, 36.417435>,  <33.924042, 35.188435, 36.347961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633968, 34.921921, 36.417435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183181, 0.056469, 0.981456,
		-0.663740, 0.743554, 0.081101,
		-0.725186, -0.666288, 0.173686,
		33.416412, 34.722034, 36.469540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568226, 35.403202, 37.015236>,  <33.924042, 35.188435, 36.347961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568226, 35.403202, 37.015236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473122, 35.016659, 36.976017>,  <33.416058, 34.784733, 36.952484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473122, 35.016659, 36.976017>,  <33.568226, 35.403202, 37.015236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473122, 35.016659, 36.976017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157233, -0.137905, 0.977886,
		-0.958514, 0.217084, 0.184732,
		-0.237759, -0.966363, -0.098051,
		33.401794, 34.726749, 36.946602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060734, 35.254452, 37.504086>,  <33.568226, 35.403202, 37.015236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060734, 35.254452, 37.504086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211891, 34.895504, 37.412941>,  <33.302586, 34.680134, 37.358253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211891, 34.895504, 37.412941>,  <33.060734, 35.254452, 37.504086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211891, 34.895504, 37.412941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289205, -0.119385, 0.949793,
		-0.879519, -0.424823, 0.214408,
		0.377897, -0.897370, -0.227863,
		33.325260, 34.626293, 37.344582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709698, 34.842190, 37.938725>,  <33.060734, 35.254452, 37.504086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709698, 34.842190, 37.938725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033302, 34.637100, 37.823757>,  <33.227467, 34.514046, 37.754776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033302, 34.637100, 37.823757>,  <32.709698, 34.842190, 37.938725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033302, 34.637100, 37.823757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214976, -0.197007, 0.956542,
		-0.547063, -0.835646, -0.049159,
		0.809016, -0.512721, -0.287420,
		33.276009, 34.483284, 37.737530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693981, 34.167015, 38.308590>,  <32.709698, 34.842190, 37.938725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693981, 34.167015, 38.308590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071442, 34.218914, 38.186806>,  <33.297916, 34.250053, 38.113735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071442, 34.218914, 38.186806>,  <32.693981, 34.167015, 38.308590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071442, 34.218914, 38.186806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330229, -0.308394, 0.892100,
		0.021855, -0.942369, -0.333862,
		0.943648, 0.129748, -0.304457,
		33.354534, 34.257839, 38.095467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014065, 33.507969, 38.623016>,  <32.693981, 34.167015, 38.308590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014065, 33.507969, 38.623016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292248, 33.781048, 38.533340>,  <33.459156, 33.944897, 38.479534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292248, 33.781048, 38.533340>,  <33.014065, 33.507969, 38.623016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292248, 33.781048, 38.533340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453432, -0.174911, 0.873960,
		0.557441, -0.709454, -0.431201,
		0.695456, 0.682702, -0.224187,
		33.500885, 33.985859, 38.466084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718807, 33.206703, 38.688740>,  <33.014065, 33.507969, 38.623016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718807, 33.206703, 38.688740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779480, 33.600040, 38.728809>,  <33.815884, 33.836040, 38.752853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779480, 33.600040, 38.728809>,  <33.718807, 33.206703, 38.688740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779480, 33.600040, 38.728809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420885, -0.155957, 0.893607,
		0.894342, -0.093380, -0.437529,
		0.151681, 0.983340, 0.100176,
		33.824986, 33.895042, 38.758862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169022, 33.102703, 39.169086>,  <33.718807, 33.206703, 38.688740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169022, 33.102703, 39.169086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140079, 33.500862, 39.143955>,  <34.122715, 33.739758, 39.128876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140079, 33.500862, 39.143955>,  <34.169022, 33.102703, 39.169086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140079, 33.500862, 39.143955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447426, 0.088694, 0.889912,
		0.891389, 0.036276, -0.451784,
		-0.072353, 0.995398, -0.062830,
		34.118374, 33.799480, 39.125107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855015, 33.364235, 39.281448>,  <34.169022, 33.102703, 39.169086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855015, 33.364235, 39.281448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598923, 33.653614, 39.384777>,  <34.445267, 33.827240, 39.446774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598923, 33.653614, 39.384777>,  <34.855015, 33.364235, 39.281448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598923, 33.653614, 39.384777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554676, 0.202720, 0.806994,
		0.531452, 0.659944, -0.531067,
		-0.640229, 0.723449, 0.258320,
		34.406853, 33.870647, 39.462273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260426, 33.782581, 39.449680>,  <34.855015, 33.364235, 39.281448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260426, 33.782581, 39.449680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934361, 33.910915, 39.642590>,  <34.738724, 33.987915, 39.758335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934361, 33.910915, 39.642590>,  <35.260426, 33.782581, 39.449680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934361, 33.910915, 39.642590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539125, 0.115795, 0.834228,
		0.211803, 0.940031, -0.267360,
		-0.815158, 0.320833, 0.482269,
		34.689812, 34.007164, 39.787270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345123, 34.469872, 39.748627>,  <35.260426, 33.782581, 39.449680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345123, 34.469872, 39.748627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068119, 34.307983, 39.987499>,  <34.901917, 34.210850, 40.130825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068119, 34.307983, 39.987499>,  <35.345123, 34.469872, 39.748627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068119, 34.307983, 39.987499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602035, 0.131870, 0.787505,
		-0.397469, 0.904883, 0.152333,
		-0.692512, -0.404719, 0.597185,
		34.860367, 34.186569, 40.166656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363968, 34.893623, 40.343037>,  <35.345123, 34.469872, 39.748627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363968, 34.893623, 40.343037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163723, 34.560780, 40.438515>,  <35.043575, 34.361073, 40.495800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163723, 34.560780, 40.438515>,  <35.363968, 34.893623, 40.343037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163723, 34.560780, 40.438515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403959, 0.019320, 0.914573,
		-0.765640, 0.554269, 0.326468,
		-0.500612, -0.832113, 0.238694,
		35.013538, 34.311146, 40.510124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042889, 35.046188, 41.074879>,  <35.363968, 34.893623, 40.343037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042889, 35.046188, 41.074879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068905, 34.651855, 41.013042>,  <35.084515, 34.415257, 40.975941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068905, 34.651855, 41.013042>,  <35.042889, 35.046188, 41.074879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068905, 34.651855, 41.013042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604198, -0.084387, 0.792353,
		-0.794175, -0.144936, 0.590152,
		0.065039, -0.985836, -0.154588,
		35.088417, 34.356106, 40.966667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011345, 34.751766, 41.770760>,  <35.042889, 35.046188, 41.074879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011345, 34.751766, 41.770760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148079, 34.449173, 41.547733>,  <35.230122, 34.267616, 41.413918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148079, 34.449173, 41.547733>,  <35.011345, 34.751766, 41.770760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148079, 34.449173, 41.547733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617958, -0.266052, 0.739827,
		-0.708007, -0.597457, 0.376526,
		0.341839, -0.756480, -0.557570,
		35.250629, 34.222229, 41.380463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865154, 34.036457, 42.080441>,  <35.011345, 34.751766, 41.770760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865154, 34.036457, 42.080441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179508, 34.013165, 41.834194>,  <35.368122, 33.999191, 41.686447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179508, 34.013165, 41.834194>,  <34.865154, 34.036457, 42.080441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179508, 34.013165, 41.834194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510645, -0.500353, 0.699206,
		-0.348739, -0.863862, -0.363489,
		0.785890, -0.058227, -0.615618,
		35.415276, 33.995697, 41.649509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107464, 33.371780, 42.184387>,  <34.865154, 34.036457, 42.080441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107464, 33.371780, 42.184387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430122, 33.560051, 42.041401>,  <35.623718, 33.673012, 41.955608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430122, 33.560051, 42.041401>,  <35.107464, 33.371780, 42.184387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430122, 33.560051, 42.041401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541201, -0.345161, 0.766789,
		0.237526, -0.811990, -0.533154,
		0.806649, 0.470677, -0.357465,
		35.672115, 33.701252, 41.934162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624607, 32.827427, 42.174397>,  <35.107464, 33.371780, 42.184387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624607, 32.827427, 42.174397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826736, 33.172237, 42.158600>,  <35.948013, 33.379124, 42.149120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826736, 33.172237, 42.158600>,  <35.624607, 32.827427, 42.174397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826736, 33.172237, 42.158600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543181, -0.282189, 0.790775,
		0.670525, -0.421047, -0.610832,
		0.505323, 0.862026, -0.039490,
		35.978333, 33.430843, 42.146751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245197, 32.712280, 42.081676>,  <35.624607, 32.827427, 42.174397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245197, 32.712280, 42.081676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281105, 33.078663, 42.238121>,  <36.302650, 33.298492, 42.331989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281105, 33.078663, 42.238121>,  <36.245197, 32.712280, 42.081676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281105, 33.078663, 42.238121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629700, -0.356447, 0.690234,
		0.771634, 0.184320, -0.608776,
		0.089772, 0.915954, 0.391113,
		36.308037, 33.353451, 42.355453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900211, 32.737724, 42.154739>,  <36.245197, 32.712280, 42.081676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900211, 32.737724, 42.154739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766148, 33.036018, 42.385059>,  <36.685711, 33.214996, 42.523251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766148, 33.036018, 42.385059>,  <36.900211, 32.737724, 42.154739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766148, 33.036018, 42.385059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646891, -0.262178, 0.716097,
		0.684983, 0.612484, -0.394541,
		-0.335157, 0.745739, 0.575798,
		36.665600, 33.259739, 42.557800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480766, 33.024494, 42.548157>,  <36.900211, 32.737724, 42.154739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480766, 33.024494, 42.548157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170898, 33.166168, 42.757706>,  <36.984978, 33.251171, 42.883434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170898, 33.166168, 42.757706>,  <37.480766, 33.024494, 42.548157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170898, 33.166168, 42.757706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436060, -0.300776, 0.848166,
		0.457976, 0.885487, 0.078556,
		-0.774668, 0.354185, 0.523873,
		36.938499, 33.272423, 42.914867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036018, 33.531155, 42.472542>,  <37.480766, 33.024494, 42.548157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036018, 33.531155, 42.472542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429291, 33.486698, 42.414570>,  <38.665253, 33.460026, 42.379787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429291, 33.486698, 42.414570>,  <38.036018, 33.531155, 42.472542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429291, 33.486698, 42.414570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137927, 0.068337, -0.988082,
		0.119719, 0.991453, 0.051859,
		0.983180, -0.111139, -0.144929,
		38.724243, 33.453358, 42.371090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171181, 33.978661, 41.970161>,  <38.036018, 33.531155, 42.472542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171181, 33.978661, 41.970161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517277, 33.778118, 41.969017>,  <38.724934, 33.657795, 41.968330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517277, 33.778118, 41.969017>,  <38.171181, 33.978661, 41.970161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517277, 33.778118, 41.969017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044052, 0.081703, -0.995683,
		0.499422, 0.861377, 0.092778,
		0.865238, -0.501353, -0.002859,
		38.776848, 33.627712, 41.968159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708832, 34.415676, 41.752003>,  <38.171181, 33.978661, 41.970161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708832, 34.415676, 41.752003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814819, 34.035538, 41.686726>,  <38.878410, 33.807453, 41.647560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814819, 34.035538, 41.686726>,  <38.708832, 34.415676, 41.752003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814819, 34.035538, 41.686726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106984, 0.139227, -0.984464,
		0.958304, 0.278310, -0.064782,
		0.264967, -0.950347, -0.163197,
		38.894310, 33.750435, 41.637768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379002, 34.434528, 41.343979>,  <38.708832, 34.415676, 41.752003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379002, 34.434528, 41.343979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217686, 34.075245, 41.274029>,  <39.120895, 33.859676, 41.232059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217686, 34.075245, 41.274029>,  <39.379002, 34.434528, 41.343979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217686, 34.075245, 41.274029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208418, 0.095923, -0.973325,
		0.891020, -0.428982, 0.148517,
		-0.403293, -0.898206, -0.174877,
		39.096699, 33.805782, 41.221565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852962, 33.931530, 40.935207>,  <39.379002, 34.434528, 41.343979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852962, 33.931530, 40.935207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487175, 33.780895, 40.875961>,  <39.267704, 33.690514, 40.840416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487175, 33.780895, 40.875961>,  <39.852962, 33.931530, 40.935207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487175, 33.780895, 40.875961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136767, 0.056853, -0.988970,
		0.380850, -0.924637, -0.000486,
		-0.914466, -0.376583, -0.148113,
		39.212833, 33.667919, 40.831528>
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
