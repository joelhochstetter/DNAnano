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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<35.670902, 53.604755, 50.346687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769878, 53.723961, 49.977913>,  <35.829266, 53.795483, 49.756649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769878, 53.723961, 49.977913>,  <35.670902, 53.604755, 50.346687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769878, 53.723961, 49.977913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482102, 0.787502, 0.383952,
		0.840447, -0.539471, 0.051188,
		0.247442, 0.298013, -0.921934,
		35.844112, 53.813366, 49.701332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421124, 53.566177, 50.303864>,  <35.670902, 53.604755, 50.346687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421124, 53.566177, 50.303864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232990, 53.856525, 50.103104>,  <36.120110, 54.030735, 49.982647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232990, 53.856525, 50.103104>,  <36.421124, 53.566177, 50.303864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232990, 53.856525, 50.103104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381117, 0.680028, 0.626348,
		0.795952, 0.103310, -0.596480,
		-0.470331, 0.725871, -0.501897,
		36.091892, 54.074287, 49.952534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999294, 53.954323, 50.011322>,  <36.421124, 53.566177, 50.303864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999294, 53.954323, 50.011322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689728, 54.207520, 50.019047>,  <36.503986, 54.359440, 50.023682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689728, 54.207520, 50.019047>,  <36.999294, 53.954323, 50.011322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689728, 54.207520, 50.019047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550373, 0.657187, 0.514970,
		0.313279, 0.409175, -0.856990,
		-0.773916, 0.632993, 0.019316,
		36.457554, 54.397419, 50.024841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240105, 54.629906, 49.693386>,  <36.999294, 53.954323, 50.011322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240105, 54.629906, 49.693386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947582, 54.625568, 49.966171>,  <36.772068, 54.622967, 50.129845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947582, 54.625568, 49.966171>,  <37.240105, 54.629906, 49.693386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947582, 54.625568, 49.966171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559918, 0.561411, 0.609352,
		-0.389472, 0.827466, -0.404489,
		-0.731303, -0.010845, 0.681967,
		36.728191, 54.622314, 50.170761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821507, 55.126804, 49.479939>,  <37.240105, 54.629906, 49.693386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821507, 55.126804, 49.479939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677235, 55.492626, 49.553154>,  <37.590672, 55.712120, 49.597084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677235, 55.492626, 49.553154>,  <37.821507, 55.126804, 49.479939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677235, 55.492626, 49.553154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431492, -0.010368, 0.902057,
		0.826878, 0.404330, -0.390884,
		-0.360676, 0.914554, 0.183039,
		37.569031, 55.766991, 49.608067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443069, 55.331020, 49.554955>,  <37.821507, 55.126804, 49.479939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443069, 55.331020, 49.554955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705143, 55.251392, 49.263447>,  <38.862385, 55.203617, 49.088543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705143, 55.251392, 49.263447>,  <38.443069, 55.331020, 49.554955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705143, 55.251392, 49.263447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424777, -0.700658, 0.573275,
		-0.624741, -0.685164, -0.374498,
		0.655183, -0.199070, -0.728771,
		38.901699, 55.191669, 49.044815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487942, 54.605343, 49.511063>,  <38.443069, 55.331020, 49.554955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487942, 54.605343, 49.511063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827518, 54.734612, 49.343803>,  <39.031265, 54.812172, 49.243446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827518, 54.734612, 49.343803>,  <38.487942, 54.605343, 49.511063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827518, 54.734612, 49.343803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524499, -0.612168, 0.591735,
		-0.064745, -0.721671, -0.689202,
		0.848945, 0.323174, -0.418151,
		39.082203, 54.831562, 49.218357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891853, 54.072800, 49.221481>,  <38.487942, 54.605343, 49.511063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891853, 54.072800, 49.221481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152767, 54.355026, 49.332264>,  <39.309315, 54.524361, 49.398735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152767, 54.355026, 49.332264>,  <38.891853, 54.072800, 49.221481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152767, 54.355026, 49.332264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518871, -0.682001, 0.515410,
		0.552542, -0.192486, -0.810954,
		0.652281, 0.705566, 0.276959,
		39.348450, 54.566696, 49.415352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642376, 53.876228, 49.090122>,  <38.891853, 54.072800, 49.221481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642376, 53.876228, 49.090122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615608, 54.114395, 49.410370>,  <39.599548, 54.257298, 49.602520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615608, 54.114395, 49.410370>,  <39.642376, 53.876228, 49.090122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615608, 54.114395, 49.410370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386096, -0.724456, 0.571046,
		0.920028, 0.347330, -0.181411,
		-0.066917, 0.595421, 0.800622,
		39.595531, 54.293022, 49.650558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270958, 53.906235, 49.436985>,  <39.642376, 53.876228, 49.090122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270958, 53.906235, 49.436985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974167, 53.952637, 49.701107>,  <39.796093, 53.980480, 49.859581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974167, 53.952637, 49.701107>,  <40.270958, 53.906235, 49.436985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974167, 53.952637, 49.701107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494825, -0.569773, 0.656131,
		0.452342, 0.813573, 0.365357,
		-0.741981, 0.116008, 0.660308,
		39.751572, 53.987438, 49.899200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683083, 53.434807, 49.729668>,  <40.270958, 53.906235, 49.436985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683083, 53.434807, 49.729668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860771, 53.180656, 49.982323>,  <40.967384, 53.028168, 50.133915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860771, 53.180656, 49.982323>,  <40.683083, 53.434807, 49.729668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860771, 53.180656, 49.982323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238882, -0.763496, -0.600007,
		0.863481, 0.115652, -0.490943,
		0.444225, -0.635372, 0.631637,
		40.994038, 52.990044, 50.171814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299976, 53.230705, 49.408699>,  <40.683083, 53.434807, 49.729668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299976, 53.230705, 49.408699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375500, 53.215500, 49.016190>,  <41.420815, 53.206379, 48.780682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375500, 53.215500, 49.016190>,  <41.299976, 53.230705, 49.408699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375500, 53.215500, 49.016190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256170, 0.966559, 0.011850,
		0.948013, -0.253612, 0.192232,
		0.188809, -0.038010, -0.981278,
		41.432144, 53.204098, 48.721806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010292, 53.491600, 49.156925>,  <41.299976, 53.230705, 49.408699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010292, 53.491600, 49.156925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729668, 53.578552, 48.885468>,  <41.561295, 53.630726, 48.722591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729668, 53.578552, 48.885468>,  <42.010292, 53.491600, 49.156925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729668, 53.578552, 48.885468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268445, 0.962800, 0.030895,
		0.660117, -0.160504, -0.733815,
		-0.701558, 0.217383, -0.678647,
		41.519199, 53.643768, 48.681873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323265, 54.003685, 48.647537>,  <42.010292, 53.491600, 49.156925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323265, 54.003685, 48.647537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926617, 54.034714, 48.688873>,  <41.688629, 54.053329, 48.713676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926617, 54.034714, 48.688873>,  <42.323265, 54.003685, 48.647537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926617, 54.034714, 48.688873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086186, 0.992924, 0.081688,
		-0.096277, 0.089910, -0.991285,
		-0.991616, 0.077570, 0.103344,
		41.629131, 54.057983, 48.719875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032318, 53.784389, 48.272682>,  <42.323265, 54.003685, 48.647537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032318, 53.784389, 48.272682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125931, 53.638199, 48.633049>,  <43.182098, 53.550484, 48.849270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125931, 53.638199, 48.633049>,  <43.032318, 53.784389, 48.272682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125931, 53.638199, 48.633049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547522, -0.716194, -0.432765,
		0.803399, 0.594553, 0.032495,
		0.234029, -0.365475, 0.900921,
		43.196140, 53.528557, 48.903324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712009, 53.569683, 48.265774>,  <43.032318, 53.784389, 48.272682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712009, 53.569683, 48.265774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563187, 53.356739, 48.569923>,  <43.473892, 53.228973, 48.752415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563187, 53.356739, 48.569923>,  <43.712009, 53.569683, 48.265774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563187, 53.356739, 48.569923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577755, -0.773969, -0.259175,
		0.726479, 0.342881, 0.595534,
		-0.372059, -0.532358, 0.760373,
		43.451569, 53.197033, 48.798035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.248158, 53.111607, 48.305622>,  <43.712009, 53.569683, 48.265774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.248158, 53.111607, 48.305622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015652, 52.953873, 48.590336>,  <43.876148, 52.859234, 48.761166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015652, 52.953873, 48.590336>,  <44.248158, 53.111607, 48.305622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015652, 52.953873, 48.590336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419430, -0.894769, -0.153192,
		0.697290, 0.209498, 0.685490,
		-0.581262, -0.394334, 0.711783,
		43.841274, 52.835571, 48.803871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769962, 53.661800, 48.262302>,  <44.248158, 53.111607, 48.305622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769962, 53.661800, 48.262302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422020, 53.856949, 48.291534>,  <44.213257, 53.974037, 48.309074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422020, 53.856949, 48.291534>,  <44.769962, 53.661800, 48.262302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422020, 53.856949, 48.291534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436746, 0.692737, 0.573906,
		0.229365, 0.531131, -0.815654,
		-0.869853, 0.487867, 0.073079,
		44.161064, 54.003307, 48.313457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867992, 54.292450, 48.075233>,  <44.769962, 53.661800, 48.262302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.867992, 54.292450, 48.075233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574429, 54.318451, 48.345688>,  <44.398293, 54.334053, 48.507961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574429, 54.318451, 48.345688>,  <44.867992, 54.292450, 48.075233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.574429, 54.318451, 48.345688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440657, 0.803080, 0.401104,
		-0.516915, 0.592315, -0.618030,
		-0.733907, 0.065003, 0.676132,
		44.354256, 54.337952, 48.548527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.264893, 54.747250, 48.140316>,  <44.867992, 54.292450, 48.075233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.264893, 54.747250, 48.140316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212681, 55.018082, 47.850616>,  <44.181355, 55.180580, 47.676796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212681, 55.018082, 47.850616>,  <44.264893, 54.747250, 48.140316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212681, 55.018082, 47.850616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804703, 0.354370, 0.476315,
		0.579152, 0.644973, 0.498591,
		-0.130525, 0.677076, -0.724245,
		44.173523, 55.221203, 47.633343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944134, 55.428856, 48.456589>,  <44.264893, 54.747250, 48.140316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944134, 55.428856, 48.456589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854782, 55.395004, 48.068169>,  <43.801170, 55.374695, 47.835117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854782, 55.395004, 48.068169>,  <43.944134, 55.428856, 48.456589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854782, 55.395004, 48.068169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934306, 0.302519, 0.188558,
		0.277804, 0.949379, -0.146644,
		-0.223376, -0.084628, -0.971052,
		43.787769, 55.369617, 47.776852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297886, 55.056683, 49.022804>,  <43.944134, 55.428856, 48.456589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297886, 55.056683, 49.022804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489697, 54.708450, 49.066895>,  <44.604782, 54.499512, 49.093349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489697, 54.708450, 49.066895>,  <44.297886, 55.056683, 49.022804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489697, 54.708450, 49.066895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873460, 0.461447, -0.155353,
		0.084383, 0.170774, 0.981690,
		0.479528, -0.870576, 0.110226,
		44.633556, 54.447277, 49.099960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885113, 55.077564, 49.552170>,  <44.297886, 55.056683, 49.022804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885113, 55.077564, 49.552170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.927567, 54.820030, 49.249062>,  <44.953041, 54.665512, 49.067196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.927567, 54.820030, 49.249062>,  <44.885113, 55.077564, 49.552170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.927567, 54.820030, 49.249062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815172, 0.492737, -0.304474,
		0.569411, -0.585397, 0.577132,
		0.106136, -0.643833, -0.757770,
		44.959408, 54.626881, 49.021732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125668, 55.656143, 49.070366>,  <44.885113, 55.077564, 49.552170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125668, 55.656143, 49.070366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319439, 55.698311, 49.417747>,  <45.435703, 55.723610, 49.626175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319439, 55.698311, 49.417747>,  <45.125668, 55.656143, 49.070366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.319439, 55.698311, 49.417747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873637, -0.110082, -0.473962,
		0.045639, 0.988317, -0.145422,
		0.484433, 0.105415, 0.868454,
		45.464767, 55.729935, 49.678284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664890, 56.072845, 48.976566>,  <45.125668, 55.656143, 49.070366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664890, 56.072845, 48.976566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776146, 55.883156, 49.310692>,  <45.842899, 55.769344, 49.511169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776146, 55.883156, 49.310692>,  <45.664890, 56.072845, 48.976566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.776146, 55.883156, 49.310692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876978, -0.229396, -0.422240,
		0.391853, 0.849995, 0.352078,
		0.278137, -0.474221, 0.835317,
		45.859589, 55.740891, 49.561287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.310970, 56.415257, 49.363293>,  <45.664890, 56.072845, 48.976566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.310970, 56.415257, 49.363293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.272045, 56.024548, 49.439655>,  <46.248688, 55.790123, 49.485474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.272045, 56.024548, 49.439655>,  <46.310970, 56.415257, 49.363293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.272045, 56.024548, 49.439655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880983, -0.173782, -0.440079,
		0.463033, 0.125358, 0.877432,
		-0.097314, -0.976773, 0.190905,
		46.242851, 55.731514, 49.496925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.777016, 56.094372, 49.834576>,  <46.310970, 56.415257, 49.363293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.777016, 56.094372, 49.834576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.661495, 55.838356, 49.549774>,  <46.592182, 55.684746, 49.378895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.661495, 55.838356, 49.549774>,  <46.777016, 56.094372, 49.834576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.661495, 55.838356, 49.549774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940192, -0.049275, -0.337062,
		0.180648, -0.766763, 0.615988,
		-0.288800, -0.640036, -0.712003,
		46.574856, 55.646347, 49.336174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.146206, 55.407139, 49.780327>,  <46.777016, 56.094372, 49.834576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.146206, 55.407139, 49.780327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.006458, 55.543388, 49.431175>,  <46.922607, 55.625137, 49.221684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.006458, 55.543388, 49.431175>,  <47.146206, 55.407139, 49.780327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.006458, 55.543388, 49.431175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922233, -0.039641, -0.384597,
		-0.165607, -0.939362, -0.300289,
		-0.349372, 0.340629, -0.872876,
		46.901646, 55.645576, 49.169312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.354507, 55.075592, 49.183167>,  <47.146206, 55.407139, 49.780327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.354507, 55.075592, 49.183167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.277050, 55.439915, 49.037323>,  <47.230576, 55.658508, 48.949818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.277050, 55.439915, 49.037323>,  <47.354507, 55.075592, 49.183167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.277050, 55.439915, 49.037323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931341, 0.053833, -0.360148,
		-0.308396, -0.409314, -0.858693,
		-0.193639, 0.910804, -0.364609,
		47.218960, 55.713158, 48.927940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.016026, 55.348141, 49.037605>,  <47.354507, 55.075592, 49.183167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.016026, 55.348141, 49.037605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.989498, 55.747231, 49.032768>,  <47.973583, 55.986683, 49.029865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.989498, 55.747231, 49.032768>,  <48.016026, 55.348141, 49.037605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.989498, 55.747231, 49.032768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977503, 0.062532, -0.201438,
		-0.200224, -0.025178, -0.979427,
		-0.066317, 0.997725, -0.012091,
		47.969604, 56.046547, 49.029140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.523224, 55.527618, 48.622429>,  <48.016026, 55.348141, 49.037605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.523224, 55.527618, 48.622429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.456894, 55.863441, 48.829369>,  <48.417095, 56.064934, 48.953533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.456894, 55.863441, 48.829369>,  <48.523224, 55.527618, 48.622429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.456894, 55.863441, 48.829369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979742, 0.199990, -0.010501,
		-0.112280, 0.505126, -0.855711,
		-0.165829, 0.839554, 0.517348,
		48.407146, 56.115307, 48.984573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.202301, 55.883335, 48.658600>,  <48.523224, 55.527618, 48.622429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.202301, 55.883335, 48.658600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.998428, 56.079475, 48.941383>,  <48.876106, 56.197159, 49.111053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.998428, 56.079475, 48.941383>,  <49.202301, 55.883335, 48.658600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.998428, 56.079475, 48.941383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849063, 0.419415, 0.321222,
		-0.138996, 0.763969, -0.630104,
		-0.509679, 0.490349, 0.706955,
		48.845524, 56.226582, 49.153469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.202251, 56.645870, 48.610382>,  <49.202301, 55.883335, 48.658600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.202251, 56.645870, 48.610382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.136490, 56.552170, 48.993652>,  <49.097034, 56.495949, 49.223614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.136490, 56.552170, 48.993652>,  <49.202251, 56.645870, 48.610382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.136490, 56.552170, 48.993652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890119, 0.383344, 0.246447,
		-0.425041, 0.893405, 0.145492,
		-0.164403, -0.234255, 0.958173,
		49.087170, 56.481892, 49.281105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.343002, 57.193398, 49.096684>,  <49.202251, 56.645870, 48.610382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.343002, 57.193398, 49.096684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.405891, 56.855274, 49.300934>,  <49.443626, 56.652401, 49.423485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.405891, 56.855274, 49.300934>,  <49.343002, 57.193398, 49.096684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.405891, 56.855274, 49.300934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781525, 0.422594, 0.458948,
		-0.603739, 0.326909, 0.727070,
		0.157221, -0.845308, 0.510624,
		49.453056, 56.601681, 49.454121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.402676, 57.259632, 49.814877>,  <49.343002, 57.193398, 49.096684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.402676, 57.259632, 49.814877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.629509, 56.941238, 49.730179>,  <49.765610, 56.750202, 49.679359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.629509, 56.941238, 49.730179>,  <49.402676, 57.259632, 49.814877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.629509, 56.941238, 49.730179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779362, 0.435372, 0.450607,
		-0.266489, -0.420552, 0.867248,
		0.567079, -0.795982, -0.211740,
		49.799633, 56.702442, 49.666656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.816936, 57.036812, 50.423103>,  <49.402676, 57.259632, 49.814877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.816936, 57.036812, 50.423103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.997631, 56.956608, 50.075371>,  <50.106049, 56.908485, 49.866734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.997631, 56.956608, 50.075371>,  <49.816936, 57.036812, 50.423103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.997631, 56.956608, 50.075371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825885, 0.462513, 0.322485,
		0.337415, -0.863643, 0.374530,
		0.451736, -0.200507, -0.869328,
		50.133152, 56.896454, 49.814571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.420891, 56.722015, 50.539711>,  <49.816936, 57.036812, 50.423103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.420891, 56.722015, 50.539711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.375587, 56.945122, 50.210815>,  <50.348408, 57.078987, 50.013477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.375587, 56.945122, 50.210815>,  <50.420891, 56.722015, 50.539711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.375587, 56.945122, 50.210815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864021, 0.463879, 0.195662,
		0.490551, -0.688269, -0.534458,
		-0.113257, 0.557765, -0.822235,
		50.341610, 57.112450, 49.964146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.123909, 56.640182, 50.112755>,  <50.420891, 56.722015, 50.539711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.123909, 56.640182, 50.112755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.899155, 56.963806, 50.043812>,  <50.764301, 57.157982, 50.002445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.899155, 56.963806, 50.043812>,  <51.123909, 56.640182, 50.112755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.899155, 56.963806, 50.043812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718674, 0.580616, 0.382613,
		0.409630, 0.091117, -0.907690,
		-0.561881, 0.809063, -0.172354,
		50.730591, 57.206524, 49.992104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.581631, 57.137508, 49.707714>,  <51.123909, 56.640182, 50.112755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.581631, 57.137508, 49.707714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.280415, 57.310024, 49.906479>,  <51.099686, 57.413536, 50.025738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.280415, 57.310024, 49.906479>,  <51.581631, 57.137508, 49.707714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.280415, 57.310024, 49.906479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652140, 0.589580, 0.476559,
		-0.087431, 0.682922, -0.725240,
		-0.753040, 0.431292, 0.496909,
		51.054504, 57.439411, 50.055550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.467384, 57.893776, 49.555088>,  <51.581631, 57.137508, 49.707714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.467384, 57.893776, 49.555088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.364410, 57.796898, 49.929268>,  <51.302624, 57.738773, 50.153778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.364410, 57.796898, 49.929268>,  <51.467384, 57.893776, 49.555088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.364410, 57.796898, 49.929268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780986, 0.517924, 0.349021,
		-0.569023, 0.820425, 0.055817,
		-0.257437, -0.242193, 0.935451,
		51.287178, 57.724239, 50.209904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.488297, 58.397514, 50.131813>,  <51.467384, 57.893776, 49.555088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.488297, 58.397514, 50.131813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.614311, 58.055279, 50.296116>,  <51.689919, 57.849937, 50.394699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.614311, 58.055279, 50.296116>,  <51.488297, 58.397514, 50.131813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.614311, 58.055279, 50.296116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847687, 0.448303, 0.283641,
		-0.426825, 0.258840, 0.866500,
		0.315037, -0.855585, 0.410762,
		51.708824, 57.798603, 50.419346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.507179, 58.308277, 50.954052>,  <51.488297, 58.397514, 50.131813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.507179, 58.308277, 50.954052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.777359, 58.090736, 50.754856>,  <51.939468, 57.960213, 50.635338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.777359, 58.090736, 50.754856>,  <51.507179, 58.308277, 50.954052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.777359, 58.090736, 50.754856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736607, 0.529050, 0.421327,
		0.034319, -0.651406, 0.757953,
		0.675450, -0.543854, -0.497986,
		51.979996, 57.927582, 50.605461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.013912, 57.898762, 51.403721>,  <51.507179, 58.308277, 50.954052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.013912, 57.898762, 51.403721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.200924, 57.987503, 51.061447>,  <52.313129, 58.040749, 50.856083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.200924, 57.987503, 51.061447>,  <52.013912, 57.898762, 51.403721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.200924, 57.987503, 51.061447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615108, 0.613563, 0.495160,
		0.634871, -0.757840, 0.150391,
		0.467527, 0.221856, -0.855686,
		52.341183, 58.054058, 50.804741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.653095, 57.728924, 51.556293>,  <52.013912, 57.898762, 51.403721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.653095, 57.728924, 51.556293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.628433, 58.053741, 51.324165>,  <52.613636, 58.248634, 51.184887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.628433, 58.053741, 51.324165>,  <52.653095, 57.728924, 51.556293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.628433, 58.053741, 51.324165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320230, 0.566785, 0.759083,
		0.945332, -0.139037, -0.294987,
		-0.061653, 0.812049, -0.580324,
		52.609936, 58.297356, 51.150066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.244740, 57.989590, 51.028149>,  <52.653095, 57.728924, 51.556293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.244740, 57.989590, 51.028149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.466286, 57.844498, 51.327927>,  <53.599213, 57.757442, 51.507793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.466286, 57.844498, 51.327927>,  <53.244740, 57.989590, 51.028149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.466286, 57.844498, 51.327927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830780, 0.181126, -0.526306,
		0.055162, 0.914123, 0.401666,
		0.553861, -0.362728, 0.749444,
		53.632442, 57.735680, 51.552761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.731003, 58.436024, 51.013512>,  <53.244740, 57.989590, 51.028149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.731003, 58.436024, 51.013512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.883270, 58.114063, 51.195602>,  <53.974628, 57.920887, 51.304855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.883270, 58.114063, 51.195602>,  <53.731003, 58.436024, 51.013512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.883270, 58.114063, 51.195602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807874, 0.049953, -0.587235,
		0.449926, 0.591303, 0.669274,
		0.380667, -0.804901, 0.455223,
		53.997471, 57.872593, 51.332169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.390259, 58.600067, 51.202888>,  <53.731003, 58.436024, 51.013512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.390259, 58.600067, 51.202888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.391052, 58.200127, 51.196144>,  <54.391529, 57.960163, 51.192097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.391052, 58.200127, 51.196144>,  <54.390259, 58.600067, 51.202888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.391052, 58.200127, 51.196144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759263, 0.012484, -0.650664,
		0.650781, -0.011512, 0.759178,
		0.001988, -0.999856, -0.016865,
		54.391647, 57.900169, 51.191086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.062447, 58.540607, 51.217144>,  <54.390259, 58.600067, 51.202888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.062447, 58.540607, 51.217144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.882912, 58.241631, 51.021233>,  <54.775192, 58.062244, 50.903687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.882912, 58.241631, 51.021233>,  <55.062447, 58.540607, 51.217144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.882912, 58.241631, 51.021233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633943, 0.119958, -0.764020,
		0.629811, -0.653410, 0.419993,
		-0.448837, -0.747440, -0.489775,
		54.748260, 58.017399, 50.874302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.521904, 58.027401, 50.997993>,  <55.062447, 58.540607, 51.217144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.521904, 58.027401, 50.997993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.204338, 58.036659, 50.754959>,  <55.013798, 58.042213, 50.609138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.204338, 58.036659, 50.754959>,  <55.521904, 58.027401, 50.997993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.204338, 58.036659, 50.754959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589612, 0.273382, -0.760013,
		0.148510, -0.961627, -0.230691,
		-0.793916, 0.023149, -0.607587,
		54.966164, 58.043602, 50.572681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.911964, 58.302158, 50.426128>,  <55.521904, 58.027401, 50.997993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.911964, 58.302158, 50.426128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.088821, 58.632767, 50.565483>,  <56.194935, 58.831131, 50.649094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.088821, 58.632767, 50.565483>,  <55.911964, 58.302158, 50.426128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.088821, 58.632767, 50.565483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690929, -0.561522, 0.455314,
		0.571952, 0.039395, -0.819340,
		0.442140, 0.826524, 0.348383,
		56.221462, 58.880722, 50.669998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.710396, 58.405010, 50.260471>,  <55.911964, 58.302158, 50.426128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.710396, 58.405010, 50.260471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.590332, 58.546959, 50.614639>,  <56.518291, 58.632126, 50.827141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.590332, 58.546959, 50.614639>,  <56.710396, 58.405010, 50.260471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.590332, 58.546959, 50.614639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740660, -0.498224, 0.450773,
		0.601103, 0.791101, -0.113288,
		-0.300164, 0.354869, 0.885421,
		56.500282, 58.653419, 50.880264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.331203, 58.705906, 50.603706>,  <56.710396, 58.405010, 50.260471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.331203, 58.705906, 50.603706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.054108, 58.561600, 50.853493>,  <56.887848, 58.475014, 51.003365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.054108, 58.561600, 50.853493>,  <57.331203, 58.705906, 50.603706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.054108, 58.561600, 50.853493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721120, -0.334781, 0.606553,
		-0.009766, 0.870499, 0.492074,
		-0.692741, -0.360768, 0.624464,
		56.846287, 58.453369, 51.040833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.592587, 58.801010, 51.217651>,  <57.331203, 58.705906, 50.603706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.592587, 58.801010, 51.217651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.323677, 58.511078, 51.277870>,  <57.162331, 58.337120, 51.314003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.323677, 58.511078, 51.277870>,  <57.592587, 58.801010, 51.217651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.323677, 58.511078, 51.277870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607182, -0.423525, 0.672277,
		-0.423525, 0.543367, 0.724830,
		-0.672277, -0.724830, 0.150549,
		57.121994, 58.293629, 51.323036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.481995, 58.751793, 51.981766>,  <57.592587, 58.801010, 51.217651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.481995, 58.751793, 51.981766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.440567, 58.423298, 51.757324>,  <57.415710, 58.226200, 51.622658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.440567, 58.423298, 51.757324>,  <57.481995, 58.751793, 51.981766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.440567, 58.423298, 51.757324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742757, -0.439058, 0.505511,
		-0.661503, -0.364413, 0.655451,
		-0.103566, -0.821238, -0.561108,
		57.409496, 58.176926, 51.588993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.419319, 58.137444, 52.457905>,  <57.481995, 58.751793, 51.981766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.419319, 58.137444, 52.457905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.582253, 58.054848, 52.102051>,  <57.680012, 58.005291, 51.888538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.582253, 58.054848, 52.102051>,  <57.419319, 58.137444, 52.457905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.582253, 58.054848, 52.102051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727773, -0.515107, 0.452782,
		-0.551748, -0.831883, -0.059546,
		0.407335, -0.206485, -0.889630,
		57.704453, 57.992901, 51.835163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.728687, 57.525642, 52.515976>,  <57.419319, 58.137444, 52.457905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.728687, 57.525642, 52.515976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.958206, 57.711967, 52.246525>,  <58.095917, 57.823761, 52.084854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.958206, 57.711967, 52.246525>,  <57.728687, 57.525642, 52.515976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.958206, 57.711967, 52.246525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809679, -0.446349, 0.381041,
		-0.123179, -0.764063, -0.633273,
		0.573800, 0.465812, -0.673626,
		58.130344, 57.851711, 52.044437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.293049, 57.090012, 52.497810>,  <57.728687, 57.525642, 52.515976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.293049, 57.090012, 52.497810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.399216, 57.421429, 52.300606>,  <58.462914, 57.620281, 52.182281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.399216, 57.421429, 52.300606>,  <58.293049, 57.090012, 52.497810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.399216, 57.421429, 52.300606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937805, -0.103174, 0.331477,
		0.223778, -0.550331, -0.804400,
		0.265415, 0.828547, -0.493015,
		58.478840, 57.669994, 52.152702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.054623, 57.011543, 52.460033>,  <58.293049, 57.090012, 52.497810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.054623, 57.011543, 52.460033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.938011, 57.382698, 52.367054>,  <58.868046, 57.605392, 52.311264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.938011, 57.382698, 52.367054>,  <59.054623, 57.011543, 52.460033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.938011, 57.382698, 52.367054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863732, 0.359774, 0.352889,
		0.411072, -0.097900, -0.906331,
		-0.291526, 0.927889, -0.232452,
		58.850552, 57.661064, 52.297318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.562149, 57.363808, 52.050323>,  <59.054623, 57.011543, 52.460033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.562149, 57.363808, 52.050323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.379173, 57.669422, 52.232311>,  <59.269386, 57.852791, 52.341503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.379173, 57.669422, 52.232311>,  <59.562149, 57.363808, 52.050323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.379173, 57.669422, 52.232311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886039, 0.348260, 0.306021,
		0.075361, 0.543111, -0.836272,
		-0.457444, 0.764032, 0.454973,
		59.241940, 57.898632, 52.368805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.277306, 57.363209, 52.266342>,  <59.562149, 57.363808, 52.050323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.277306, 57.363209, 52.266342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.262589, 57.757851, 52.329903>,  <60.253757, 57.994637, 52.368038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.262589, 57.757851, 52.329903>,  <60.277306, 57.363209, 52.266342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.262589, 57.757851, 52.329903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716023, 0.136946, -0.684512,
		-0.697107, 0.088595, -0.711472,
		-0.036789, 0.986609, 0.158903,
		60.251553, 58.053833, 52.377575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.607433, 57.843369, 52.767262>,  <60.277306, 57.363209, 52.266342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.607433, 57.843369, 52.767262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.734482, 58.139446, 53.004318>,  <60.810711, 58.317093, 53.146553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.734482, 58.139446, 53.004318>,  <60.607433, 57.843369, 52.767262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.734482, 58.139446, 53.004318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932692, -0.356520, -0.054581,
		0.170888, 0.570089, -0.803614,
		0.317621, 0.740197, 0.592643,
		60.829769, 58.361504, 53.182110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.184364, 57.983959, 52.476433>,  <60.607433, 57.843369, 52.767262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.184364, 57.983959, 52.476433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.171661, 58.076191, 52.865448>,  <61.164040, 58.131531, 53.098858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.171661, 58.076191, 52.865448>,  <61.184364, 57.983959, 52.476433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.171661, 58.076191, 52.865448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858417, -0.492116, 0.144713,
		0.511968, 0.839436, -0.182307,
		-0.031761, 0.230584, 0.972534,
		61.162132, 58.145367, 53.157207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.929951, 58.197453, 52.693542>,  <61.184364, 57.983959, 52.476433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.929951, 58.197453, 52.693542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.700073, 58.061752, 52.991436>,  <61.562145, 57.980331, 53.170174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.700073, 58.061752, 52.991436>,  <61.929951, 58.197453, 52.693542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.700073, 58.061752, 52.991436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758548, -0.562356, 0.329182,
		0.307134, 0.754099, 0.580521,
		-0.574695, -0.339250, 0.744738,
		61.527664, 57.959976, 53.214859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.339138, 58.188206, 53.360653>,  <61.929951, 58.197453, 52.693542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.339138, 58.188206, 53.360653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.039810, 57.926613, 53.316246>,  <61.860214, 57.769657, 53.289600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.039810, 57.926613, 53.316246>,  <62.339138, 58.188206, 53.360653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.039810, 57.926613, 53.316246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586592, -0.730552, 0.349577,
		-0.309723, 0.196472, 0.930307,
		-0.748320, -0.653982, -0.111019,
		61.815315, 57.730419, 53.282940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.809856, 58.031605, 53.988674>,  <62.339138, 58.188206, 53.360653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.809856, 58.031605, 53.988674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.522545, 57.988846, 54.263672>,  <62.350159, 57.963192, 54.428669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.522545, 57.988846, 54.263672>,  <62.809856, 58.031605, 53.988674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.522545, 57.988846, 54.263672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192410, -0.980109, 0.048628,
		0.668622, 0.167209, 0.724559,
		-0.718278, -0.106899, 0.687495,
		62.307060, 57.956776, 54.469921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.089508, 57.618408, 54.459625>,  <62.809856, 58.031605, 53.988674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.089508, 57.618408, 54.459625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.692062, 57.581444, 54.485497>,  <62.453594, 57.559265, 54.501019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.692062, 57.581444, 54.485497>,  <63.089508, 57.618408, 54.459625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.692062, 57.581444, 54.485497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090457, -0.995372, -0.032452,
		0.067375, -0.026394, 0.997379,
		-0.993619, -0.092407, 0.064676,
		62.393978, 57.553722, 54.504898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.008228, 57.073784, 54.876610>,  <63.089508, 57.618408, 54.459625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.008228, 57.073784, 54.876610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.660522, 57.110477, 54.682304>,  <62.451900, 57.132492, 54.565720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.660522, 57.110477, 54.682304>,  <63.008228, 57.073784, 54.876610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.660522, 57.110477, 54.682304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086183, -0.995706, -0.033805,
		-0.486783, 0.012480, 0.873434,
		-0.869261, 0.091731, -0.485768,
		62.399746, 57.137997, 54.536575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.279797, 56.822693, 55.287136>,  <63.008228, 57.073784, 54.876610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.279797, 56.822693, 55.287136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.305786, 56.765877, 54.892044>,  <62.321381, 56.731785, 54.654991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.305786, 56.765877, 54.892044>,  <62.279797, 56.822693, 55.287136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.305786, 56.765877, 54.892044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119499, -0.983802, 0.133617,
		-0.990706, 0.109350, -0.080898,
		0.064976, -0.142042, -0.987726,
		62.325279, 56.723263, 54.595726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.828293, 56.606720, 55.618584>,  <62.279797, 56.822693, 55.287136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.828293, 56.606720, 55.618584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.529564, 56.456543, 55.399017>,  <62.350327, 56.366436, 55.267277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.529564, 56.456543, 55.399017>,  <62.828293, 56.606720, 55.618584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.529564, 56.456543, 55.399017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653484, -0.261187, -0.710451,
		0.123362, -0.889285, 0.440403,
		-0.746821, -0.375439, -0.548912,
		62.305519, 56.343910, 55.234344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.865135, 55.777752, 55.583817>,  <62.828293, 56.606720, 55.618584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.865135, 55.777752, 55.583817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.716087, 56.013973, 55.297485>,  <62.626659, 56.155704, 55.125687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.716087, 56.013973, 55.297485>,  <62.865135, 55.777752, 55.583817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.716087, 56.013973, 55.297485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675717, -0.356043, -0.645476,
		-0.636050, -0.724213, -0.266375,
		-0.372622, 0.590549, -0.715825,
		62.604301, 56.191139, 55.082737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.583305, 56.226414, 55.725338>,  <62.865135, 55.777752, 55.583817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.583305, 56.226414, 55.725338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.954697, 56.165993, 55.861053>,  <64.177528, 56.129738, 55.942482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.954697, 56.165993, 55.861053>,  <63.583305, 56.226414, 55.725338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.954697, 56.165993, 55.861053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365181, 0.537724, -0.759931,
		-0.067651, 0.829479, 0.554426,
		0.928475, -0.151056, 0.339287,
		64.233238, 56.120674, 55.962841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.954285, 56.829784, 55.734406>,  <63.583305, 56.226414, 55.725338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.954285, 56.829784, 55.734406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.184814, 56.509003, 55.671516>,  <64.323135, 56.316536, 55.633781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.184814, 56.509003, 55.671516>,  <63.954285, 56.829784, 55.734406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.184814, 56.509003, 55.671516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329138, 0.403879, -0.853551,
		0.748007, 0.440176, 0.496719,
		0.576327, -0.801952, -0.157225,
		64.357712, 56.268417, 55.624348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.645187, 56.988411, 55.562870>,  <63.954285, 56.829784, 55.734406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.645187, 56.988411, 55.562870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.534508, 56.649704, 55.381134>,  <64.468102, 56.446480, 55.272091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.534508, 56.649704, 55.381134>,  <64.645187, 56.988411, 55.562870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.534508, 56.649704, 55.381134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518335, 0.266606, -0.812557,
		0.809174, -0.460338, 0.365137,
		-0.276703, -0.846764, -0.454341,
		64.451500, 56.395676, 55.244831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.146034, 56.988026, 55.119553>,  <64.645187, 56.988411, 55.562870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.146034, 56.988026, 55.119553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.881630, 56.727867, 54.969856>,  <64.722992, 56.571770, 54.880039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.881630, 56.727867, 54.969856>,  <65.146034, 56.988026, 55.119553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.881630, 56.727867, 54.969856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348278, 0.175849, -0.920750,
		0.664664, -0.738958, 0.110283,
		-0.661002, -0.650398, -0.374243,
		64.683327, 56.532749, 54.857582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.412903, 56.374393, 54.837112>,  <65.146034, 56.988026, 55.119553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.412903, 56.374393, 54.837112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.094505, 56.515594, 54.640419>,  <64.903465, 56.600315, 54.522404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.094505, 56.515594, 54.640419>,  <65.412903, 56.374393, 54.837112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.094505, 56.515594, 54.640419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586036, 0.246018, -0.772034,
		-0.151555, -0.902699, -0.402699,
		-0.795986, 0.353002, -0.491729,
		64.855713, 56.621494, 54.492901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.757027, 55.780716, 54.618793>,  <65.412903, 56.374393, 54.837112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.757027, 55.780716, 54.618793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.372437, 55.689022, 54.679489>,  <65.141685, 55.634007, 54.715908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.372437, 55.689022, 54.679489>,  <65.757027, 55.780716, 54.618793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.372437, 55.689022, 54.679489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235055, -0.971748, 0.021343,
		0.142559, 0.056188, 0.988190,
		-0.961471, -0.229237, 0.151739,
		65.083992, 55.620251, 54.725010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.680954, 55.416931, 55.161171>,  <65.757027, 55.780716, 54.618793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.680954, 55.416931, 55.161171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.386261, 55.290222, 54.922211>,  <65.209450, 55.214195, 54.778835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.386261, 55.290222, 54.922211>,  <65.680954, 55.416931, 55.161171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.386261, 55.290222, 54.922211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233096, -0.948301, 0.215386,
		-0.634743, 0.019430, 0.772479,
		-0.736728, -0.316776, -0.597399,
		65.165245, 55.195190, 54.742992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.018005, 55.323635, 55.849792>,  <65.680954, 55.416931, 55.161171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.018005, 55.323635, 55.849792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.176857, 54.972992, 55.958488>,  <66.272163, 54.762604, 56.023708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.176857, 54.972992, 55.958488>,  <66.018005, 55.323635, 55.849792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.176857, 54.972992, 55.958488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256195, 0.390207, 0.884365,
		-0.881282, -0.281583, 0.379544,
		0.397123, -0.876612, 0.271742,
		66.295998, 54.710007, 56.040012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.794945, 55.001900, 56.523758>,  <66.018005, 55.323635, 55.849792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.794945, 55.001900, 56.523758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.169731, 54.910324, 56.418159>,  <66.394600, 54.855381, 56.354801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.169731, 54.910324, 56.418159>,  <65.794945, 55.001900, 56.523758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.169731, 54.910324, 56.418159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338088, 0.402909, 0.850506,
		-0.088345, -0.886145, 0.454910,
		0.936959, -0.228937, -0.264000,
		66.450821, 54.841644, 56.338959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.089401, 54.656147, 57.007160>,  <65.794945, 55.001900, 56.523758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.089401, 54.656147, 57.007160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.048752, 54.398186, 56.704170>,  <66.024361, 54.243408, 56.522377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.048752, 54.398186, 56.704170>,  <66.089401, 54.656147, 57.007160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.048752, 54.398186, 56.704170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976258, 0.081766, -0.200587,
		0.191295, -0.759878, 0.621282,
		-0.101622, -0.644903, -0.757478,
		66.018265, 54.204716, 56.476925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.075279, 54.861153, 57.764259>,  <66.089401, 54.656147, 57.007160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.075279, 54.861153, 57.764259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.716927, 54.742870, 57.896896>,  <65.501915, 54.671902, 57.976479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.716927, 54.742870, 57.896896>,  <66.075279, 54.861153, 57.764259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.716927, 54.742870, 57.896896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034799, 0.697340, 0.715895,
		-0.442931, 0.652895, -0.614443,
		-0.895880, -0.295710, 0.331593,
		65.448166, 54.654156, 57.996376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.128922, 55.643921, 57.712284>,  <66.075279, 54.861153, 57.764259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.128922, 55.643921, 57.712284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.889572, 55.585926, 57.397087>,  <65.745964, 55.551128, 57.207970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.889572, 55.585926, 57.397087>,  <66.128922, 55.643921, 57.712284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.889572, 55.585926, 57.397087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787249, 0.076449, -0.611877,
		0.148956, -0.986476, 0.068396,
		-0.598374, -0.144987, -0.787990,
		65.710060, 55.542431, 57.160690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.018623, 56.304310, 57.415478>,  <66.128922, 55.643921, 57.712284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.018623, 56.304310, 57.415478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.351112, 56.097176, 57.334572>,  <66.550606, 55.972897, 57.286026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.351112, 56.097176, 57.334572>,  <66.018623, 56.304310, 57.415478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.351112, 56.097176, 57.334572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158522, 0.127955, -0.979029,
		0.532856, 0.845858, 0.024271,
		0.831225, -0.517834, -0.202269,
		66.600479, 55.941826, 57.273891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.554405, 56.738091, 57.135403>,  <66.018623, 56.304310, 57.415478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.554405, 56.738091, 57.135403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.648926, 56.373280, 57.001320>,  <66.705635, 56.154392, 56.920872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.648926, 56.373280, 57.001320>,  <66.554405, 56.738091, 57.135403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.648926, 56.373280, 57.001320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215333, 0.287248, -0.933338,
		0.947522, 0.292722, -0.128516,
		0.236293, -0.912032, -0.335207,
		66.719810, 56.099670, 56.900757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.235451, 56.463070, 56.695824>,  <66.554405, 56.738091, 57.135403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.235451, 56.463070, 56.695824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.869080, 56.309792, 56.648117>,  <66.649254, 56.217823, 56.619495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.869080, 56.309792, 56.648117>,  <67.235451, 56.463070, 56.695824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.869080, 56.309792, 56.648117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156799, 0.615239, -0.772590,
		0.369433, -0.688940, -0.623603,
		-0.915933, -0.383200, -0.119264,
		66.594299, 56.194832, 56.612339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.539284, 56.775639, 57.379356>,  <67.235451, 56.463070, 56.695824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.539284, 56.775639, 57.379356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.409119, 56.979584, 57.060822>,  <67.331024, 57.101952, 56.869701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.409119, 56.979584, 57.060822>,  <67.539284, 56.775639, 57.379356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.409119, 56.979584, 57.060822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772534, 0.342274, 0.534827,
		0.545255, 0.789230, 0.282512,
		-0.325405, 0.509867, -0.796333,
		67.311501, 57.132545, 56.821922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.942818, 56.529999, 56.836815>,  <67.539284, 56.775639, 57.379356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.942818, 56.529999, 56.836815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.991478, 56.143997, 56.743881>,  <68.020676, 55.912395, 56.688122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.991478, 56.143997, 56.743881>,  <67.942818, 56.529999, 56.836815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.991478, 56.143997, 56.743881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742475, 0.243810, -0.623929,
		0.658736, -0.096604, 0.746146,
		0.121644, -0.965000, -0.232333,
		68.027969, 55.854496, 56.674183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.533875, 56.308071, 57.173058>,  <67.942818, 56.529999, 56.836815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.533875, 56.308071, 57.173058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.574081, 56.470280, 57.536476>,  <68.598206, 56.567604, 57.754528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.574081, 56.470280, 57.536476>,  <68.533875, 56.308071, 57.173058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.574081, 56.470280, 57.536476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673234, -0.700084, 0.237989,
		0.732565, 0.587739, -0.343383,
		0.100521, 0.405519, 0.908543,
		68.604240, 56.591934, 57.809040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.199150, 56.610153, 57.361263>,  <68.533875, 56.308071, 57.173058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.199150, 56.610153, 57.361263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.039543, 56.517078, 57.716034>,  <68.943779, 56.461231, 57.928898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.039543, 56.517078, 57.716034>,  <69.199150, 56.610153, 57.361263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.039543, 56.517078, 57.716034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808891, -0.544858, 0.220964,
		0.431833, 0.805596, 0.405630,
		-0.399019, -0.232691, 0.886927,
		68.919838, 56.447269, 57.982113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.748032, 56.861042, 57.721630>,  <69.199150, 56.610153, 57.361263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.748032, 56.861042, 57.721630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.519173, 56.589413, 57.905594>,  <69.381859, 56.426434, 58.015972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.519173, 56.589413, 57.905594>,  <69.748032, 56.861042, 57.721630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.519173, 56.589413, 57.905594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813354, -0.541854, 0.211776,
		0.105391, 0.495233, 0.862344,
		-0.572143, -0.679072, 0.459906,
		69.347527, 56.385693, 58.043564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.996460, 56.747616, 58.509144>,  <69.748032, 56.861042, 57.721630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.996460, 56.747616, 58.509144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.827438, 56.453094, 58.297745>,  <69.726028, 56.276382, 58.170906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.827438, 56.453094, 58.297745>,  <69.996460, 56.747616, 58.509144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.827438, 56.453094, 58.297745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735341, -0.619391, 0.275004,
		-0.529834, -0.272425, 0.803157,
		-0.422551, -0.736301, -0.528500,
		69.700676, 56.232204, 58.139194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.389900, 56.141678, 58.674828>,  <69.996460, 56.747616, 58.509144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.389900, 56.141678, 58.674828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.117905, 55.946068, 58.456299>,  <69.954704, 55.828701, 58.325180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.117905, 55.946068, 58.456299>,  <70.389900, 56.141678, 58.674828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.117905, 55.946068, 58.456299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451366, -0.866372, 0.213702,
		-0.577822, -0.101275, 0.809855,
		-0.679993, -0.489023, -0.546321,
		69.913910, 55.799362, 58.292404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.832985, 56.620007, 59.053276>,  <70.389900, 56.141678, 58.674828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.832985, 56.620007, 59.053276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.172043, 56.505363, 58.874672>,  <71.375473, 56.436577, 58.767509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.172043, 56.505363, 58.874672>,  <70.832985, 56.620007, 59.053276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.172043, 56.505363, 58.874672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451007, -0.054062, 0.890882,
		-0.279474, -0.956521, 0.083438,
		0.847636, -0.286609, -0.446506,
		71.426331, 56.419380, 58.740719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.207214, 57.160870, 58.760979>,  <70.832985, 56.620007, 59.053276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.207214, 57.160870, 58.760979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.339790, 57.197250, 58.385345>,  <71.419334, 57.219078, 58.159966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.339790, 57.197250, 58.385345>,  <71.207214, 57.160870, 58.760979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.339790, 57.197250, 58.385345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890467, -0.298787, -0.343213,
		-0.311801, 0.949976, -0.018041,
		0.331435, 0.090949, -0.939084,
		71.439224, 57.224537, 58.103619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.738167, 56.990242, 59.244450>,  <71.207214, 57.160870, 58.760979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.738167, 56.990242, 59.244450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.829285, 57.185066, 59.581703>,  <71.883957, 57.301960, 59.784054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.829285, 57.185066, 59.581703>,  <71.738167, 56.990242, 59.244450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.829285, 57.185066, 59.581703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819674, -0.563318, 0.103958,
		0.525587, 0.667414, -0.527558,
		0.227800, 0.487065, 0.843134,
		71.897621, 57.331184, 59.834644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.488808, 57.269714, 59.247227>,  <71.738167, 56.990242, 59.244450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.488808, 57.269714, 59.247227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.375977, 57.211838, 59.626595>,  <72.308281, 57.177113, 59.854214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.375977, 57.211838, 59.626595>,  <72.488808, 57.269714, 59.247227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.375977, 57.211838, 59.626595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774360, -0.617951, 0.136031,
		0.566395, 0.772789, 0.286345,
		-0.282071, -0.144687, 0.948421,
		72.291359, 57.168430, 59.911121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.134491, 57.241516, 59.713074>,  <72.488808, 57.269714, 59.247227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.134491, 57.241516, 59.713074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.806282, 57.062759, 59.855637>,  <72.609352, 56.955505, 59.941174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.806282, 57.062759, 59.855637>,  <73.134491, 57.241516, 59.713074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.806282, 57.062759, 59.855637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532139, -0.824879, 0.190798,
		0.208725, 0.346212, 0.914643,
		-0.820526, -0.446892, 0.356405,
		72.560127, 56.928692, 59.962559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.151726, 56.947044, 60.359638>,  <73.134491, 57.241516, 59.713074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.151726, 56.947044, 60.359638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.887505, 56.735935, 60.146049>,  <72.728973, 56.609268, 60.017895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.887505, 56.735935, 60.146049>,  <73.151726, 56.947044, 60.359638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.887505, 56.735935, 60.146049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448331, -0.847777, 0.283325,
		-0.602220, -0.052245, 0.796619,
		-0.660553, -0.527773, -0.533972,
		72.689339, 56.577602, 59.985859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.447914, 57.038204, 60.674271>,  <73.151726, 56.947044, 60.359638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.447914, 57.038204, 60.674271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.624161, 57.220634, 60.983551>,  <72.729912, 57.330093, 61.169121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.624161, 57.220634, 60.983551>,  <72.447914, 57.038204, 60.674271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.624161, 57.220634, 60.983551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896937, -0.188364, -0.400028,
		-0.036801, 0.869777, -0.492071,
		0.440624, 0.456079, 0.773203,
		72.756348, 57.357456, 61.215511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.836449, 57.688824, 60.445869>,  <72.447914, 57.038204, 60.674271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.836449, 57.688824, 60.445869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.984642, 57.487740, 60.758286>,  <73.073555, 57.367088, 60.945736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.984642, 57.487740, 60.758286>,  <72.836449, 57.688824, 60.445869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.984642, 57.487740, 60.758286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773863, -0.297986, -0.558874,
		0.513693, 0.811469, 0.278634,
		0.370480, -0.502715, 0.781039,
		73.095787, 57.336926, 60.992596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
