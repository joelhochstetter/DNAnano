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
	<24.319588, 34.482853, 34.681854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.294806, 34.780693, 34.947708>,  <24.279936, 34.959396, 35.107220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.294806, 34.780693, 34.947708>,  <24.319588, 34.482853, 34.681854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.294806, 34.780693, 34.947708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545660, -0.532310, 0.647225,
		0.835713, 0.402763, -0.373318,
		-0.061957, 0.744599, 0.664630,
		24.276218, 35.004074, 35.147099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.969929, 34.472832, 35.041759>,  <24.319588, 34.482853, 34.681854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.969929, 34.472832, 35.041759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.710943, 34.673725, 35.271038>,  <24.555552, 34.794262, 35.408604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.710943, 34.673725, 35.271038>,  <24.969929, 34.472832, 35.041759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.710943, 34.673725, 35.271038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350286, -0.471848, 0.809110,
		0.676825, 0.724650, 0.129578,
		-0.647462, 0.502236, 0.573194,
		24.516705, 34.824394, 35.442997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.421394, 34.840103, 35.591450>,  <24.969929, 34.472832, 35.041759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.421394, 34.840103, 35.591450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.043587, 34.767620, 35.701031>,  <24.816902, 34.724129, 35.766777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.043587, 34.767620, 35.701031>,  <25.421394, 34.840103, 35.591450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.043587, 34.767620, 35.701031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326366, -0.611750, 0.720589,
		0.037013, 0.770017, 0.636949,
		-0.944519, -0.181207, 0.273950,
		24.760231, 34.713257, 35.783215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307039, 35.005116, 36.397289>,  <25.421394, 34.840103, 35.591450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.307039, 35.005116, 36.397289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079451, 34.728138, 36.219845>,  <24.942898, 34.561951, 36.113377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079451, 34.728138, 36.219845>,  <25.307039, 35.005116, 36.397289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.079451, 34.728138, 36.219845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387926, -0.701644, 0.597670,
		-0.725111, 0.167968, 0.667833,
		-0.568970, -0.692447, -0.443611,
		24.908760, 34.520405, 36.086761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.856361, 34.740105, 36.872051>,  <25.307039, 35.005116, 36.397289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.856361, 34.740105, 36.872051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944941, 34.476898, 36.584167>,  <24.998087, 34.318974, 36.411438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944941, 34.476898, 36.584167>,  <24.856361, 34.740105, 36.872051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.944941, 34.476898, 36.584167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471109, -0.574008, 0.669755,
		-0.853826, -0.487376, 0.182883,
		0.221446, -0.658012, -0.719709,
		25.011375, 34.279495, 36.368256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.374495, 34.459175, 37.338135>,  <24.856361, 34.740105, 36.872051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.374495, 34.459175, 37.338135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569883, 34.803001, 37.278072>,  <25.687117, 35.009296, 37.242035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569883, 34.803001, 37.278072>,  <25.374495, 34.459175, 37.338135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.569883, 34.803001, 37.278072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390083, -0.061178, 0.918745,
		0.780532, -0.507356, -0.365184,
		0.488472, 0.859563, -0.150160,
		25.716425, 35.060871, 37.233025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092157, 34.380234, 37.391541>,  <25.374495, 34.459175, 37.338135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092157, 34.380234, 37.391541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.999680, 34.751514, 37.508152>,  <25.944193, 34.974281, 37.578121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.999680, 34.751514, 37.508152>,  <26.092157, 34.380234, 37.391541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.999680, 34.751514, 37.508152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534639, -0.129141, 0.835155,
		0.812841, 0.348945, -0.466397,
		-0.231192, 0.928203, 0.291531,
		25.930323, 35.029976, 37.595612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741879, 34.703732, 37.624462>,  <26.092157, 34.380234, 37.391541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741879, 34.703732, 37.624462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431429, 34.888004, 37.796692>,  <26.245159, 34.998569, 37.900032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431429, 34.888004, 37.796692>,  <26.741879, 34.703732, 37.624462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431429, 34.888004, 37.796692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377073, -0.208232, 0.902472,
		0.505416, 0.862791, -0.012098,
		-0.776126, 0.460685, 0.430579,
		26.198591, 35.026211, 37.925865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081615, 35.031475, 38.141605>,  <26.741879, 34.703732, 37.624462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081615, 35.031475, 38.141605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694475, 35.005608, 38.238831>,  <26.462191, 34.990086, 38.297165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694475, 35.005608, 38.238831>,  <27.081615, 35.031475, 38.141605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694475, 35.005608, 38.238831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250429, -0.337766, 0.907303,
		0.023423, 0.939006, 0.343102,
		-0.967852, -0.064671, 0.243066,
		26.404119, 34.986206, 38.311749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902311, 35.554424, 38.659058>,  <27.081615, 35.031475, 38.141605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902311, 35.554424, 38.659058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638390, 35.255787, 38.693142>,  <26.480036, 35.076607, 38.713593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638390, 35.255787, 38.693142>,  <26.902311, 35.554424, 38.659058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638390, 35.255787, 38.693142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299538, -0.157314, 0.941025,
		-0.689154, 0.646418, 0.327429,
		-0.659805, -0.746589, 0.085213,
		26.440449, 35.031811, 38.718704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752829, 35.453655, 39.360558>,  <26.902311, 35.554424, 38.659058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752829, 35.453655, 39.360558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581415, 35.099312, 39.289433>,  <26.478567, 34.886707, 39.246758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581415, 35.099312, 39.289433>,  <26.752829, 35.453655, 39.360558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581415, 35.099312, 39.289433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031461, -0.182052, 0.982785,
		-0.902978, 0.426750, 0.050145,
		-0.428533, -0.885856, -0.177815,
		26.452856, 34.833553, 39.236088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.315599, 35.285095, 39.940979>,  <26.752829, 35.453655, 39.360558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.315599, 35.285095, 39.940979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353748, 34.927650, 39.765541>,  <26.376638, 34.713184, 39.660278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353748, 34.927650, 39.765541>,  <26.315599, 35.285095, 39.940979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353748, 34.927650, 39.765541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049922, -0.444341, 0.894465,
		-0.994189, -0.063413, -0.086989,
		0.095374, -0.893610, -0.438594,
		26.382360, 34.659569, 39.633965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773281, 34.869446, 40.133736>,  <26.315599, 35.285095, 39.940979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773281, 34.869446, 40.133736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057575, 34.600658, 40.050484>,  <26.228151, 34.439388, 40.000534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057575, 34.600658, 40.050484>,  <25.773281, 34.869446, 40.133736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.057575, 34.600658, 40.050484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215920, -0.489970, 0.844576,
		-0.669503, -0.555330, -0.493330,
		0.710735, -0.671966, -0.208129,
		26.270796, 34.399071, 39.988045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627285, 34.250015, 40.567768>,  <25.773281, 34.869446, 40.133736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.627285, 34.250015, 40.567768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986990, 34.165058, 40.414818>,  <26.202814, 34.114082, 40.323048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986990, 34.165058, 40.414818>,  <25.627285, 34.250015, 40.567768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986990, 34.165058, 40.414818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226106, -0.522614, 0.822040,
		-0.374431, -0.825689, -0.421945,
		0.899265, -0.212393, -0.382377,
		26.256769, 34.101341, 40.300106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693851, 33.577579, 40.634132>,  <25.627285, 34.250015, 40.567768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693851, 33.577579, 40.634132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063511, 33.729706, 40.619682>,  <26.285307, 33.820984, 40.611012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063511, 33.729706, 40.619682>,  <25.693851, 33.577579, 40.634132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063511, 33.729706, 40.619682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266572, -0.574223, 0.774085,
		0.273655, -0.725001, -0.632050,
		0.924150, 0.380319, -0.036126,
		26.340755, 33.843803, 40.608845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013935, 32.945053, 40.648819>,  <25.693851, 33.577579, 40.634132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013935, 32.945053, 40.648819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265642, 33.235798, 40.758869>,  <26.416666, 33.410244, 40.824902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265642, 33.235798, 40.758869>,  <26.013935, 32.945053, 40.648819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265642, 33.235798, 40.758869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290967, -0.548590, 0.783829,
		0.720667, -0.413185, -0.556702,
		0.629267, 0.726861, 0.275128,
		26.454422, 33.453857, 40.841408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542204, 32.593510, 40.850582>,  <26.013935, 32.945053, 40.648819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542204, 32.593510, 40.850582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625425, 32.952892, 41.005234>,  <26.675358, 33.168522, 41.098026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625425, 32.952892, 41.005234>,  <26.542204, 32.593510, 40.850582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625425, 32.952892, 41.005234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491133, -0.437796, 0.753075,
		0.845873, 0.033206, -0.532349,
		0.208054, 0.898461, 0.386629,
		26.687841, 33.222431, 41.121223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273350, 32.557102, 41.025944>,  <26.542204, 32.593510, 40.850582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273350, 32.557102, 41.025944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090551, 32.832726, 41.250927>,  <26.980871, 32.998100, 41.385918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090551, 32.832726, 41.250927>,  <27.273350, 32.557102, 41.025944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090551, 32.832726, 41.250927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517872, -0.307994, 0.798090,
		0.723160, 0.656007, -0.216089,
		-0.456998, 0.689054, 0.562457,
		26.953451, 33.039440, 41.419662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760765, 32.735580, 41.481262>,  <27.273350, 32.557102, 41.025944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760765, 32.735580, 41.481262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412794, 32.843216, 41.646584>,  <27.204012, 32.907799, 41.745777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412794, 32.843216, 41.646584>,  <27.760765, 32.735580, 41.481262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412794, 32.843216, 41.646584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274798, -0.431407, 0.859287,
		0.409528, 0.861091, 0.301346,
		-0.869927, 0.269093, 0.413300,
		27.151815, 32.923943, 41.770573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026316, 32.844742, 42.079033>,  <27.760765, 32.735580, 41.481262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026316, 32.844742, 42.079033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.629429, 32.816254, 42.119884>,  <27.391296, 32.799160, 42.144398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.629429, 32.816254, 42.119884>,  <28.026316, 32.844742, 42.079033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629429, 32.816254, 42.119884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124513, -0.562164, 0.817599,
		-0.000817, 0.823953, 0.566658,
		-0.992218, -0.071224, 0.102133,
		27.331764, 32.794888, 42.150524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866499, 33.118057, 42.707844>,  <28.026316, 32.844742, 42.079033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866499, 33.118057, 42.707844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551691, 32.893761, 42.604950>,  <27.362806, 32.759182, 42.543213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551691, 32.893761, 42.604950>,  <27.866499, 33.118057, 42.707844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551691, 32.893761, 42.604950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021826, -0.391387, 0.919968,
		-0.616545, 0.729645, 0.295789,
		-0.787018, -0.560745, -0.257233,
		27.315586, 32.725536, 42.527779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407600, 33.146709, 43.283092>,  <27.866499, 33.118057, 42.707844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407600, 33.146709, 43.283092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276937, 32.821850, 43.089718>,  <27.198540, 32.626934, 42.973694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276937, 32.821850, 43.089718>,  <27.407600, 33.146709, 43.283092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276937, 32.821850, 43.089718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137208, -0.546825, 0.825928,
		-0.935131, 0.203463, 0.290057,
		-0.326656, -0.812149, -0.483436,
		27.178940, 32.578205, 42.944687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976604, 32.772926, 43.777378>,  <27.407600, 33.146709, 43.283092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976604, 32.772926, 43.777378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048956, 32.483402, 43.511028>,  <27.092367, 32.309689, 43.351219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048956, 32.483402, 43.511028>,  <26.976604, 32.772926, 43.777378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048956, 32.483402, 43.511028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136116, -0.652100, 0.745814,
		-0.974040, -0.225539, -0.019430,
		0.180880, -0.723808, -0.665871,
		27.103220, 32.266258, 43.311268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499357, 32.081543, 43.936672>,  <26.976604, 32.772926, 43.777378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499357, 32.081543, 43.936672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845270, 32.011402, 43.748459>,  <27.052818, 31.969316, 43.635532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845270, 32.011402, 43.748459>,  <26.499357, 32.081543, 43.936672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845270, 32.011402, 43.748459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147258, -0.807282, 0.571499,
		-0.480068, -0.563512, -0.672301,
		0.864783, -0.175357, -0.470532,
		27.104706, 31.958796, 43.607300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531017, 31.340578, 43.911957>,  <26.499357, 32.081543, 43.936672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531017, 31.340578, 43.911957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905565, 31.463585, 43.844265>,  <27.130295, 31.537390, 43.803650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905565, 31.463585, 43.844265>,  <26.531017, 31.340578, 43.911957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905565, 31.463585, 43.844265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346924, -0.737456, 0.579484,
		0.053399, -0.601324, -0.797219,
		0.936372, 0.307518, -0.169234,
		27.186478, 31.555840, 43.793495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061186, 30.688612, 43.725094>,  <26.531017, 31.340578, 43.911957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061186, 30.688612, 43.725094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258520, 31.002817, 43.874542>,  <27.376921, 31.191339, 43.964211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258520, 31.002817, 43.874542>,  <27.061186, 30.688612, 43.725094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258520, 31.002817, 43.874542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294622, -0.555038, 0.777901,
		0.818424, -0.273689, -0.505249,
		0.493335, 0.785511, 0.373622,
		27.406521, 31.238470, 43.986629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819260, 30.545076, 43.781315>,  <27.061186, 30.688612, 43.725094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819260, 30.545076, 43.781315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662979, 30.791710, 44.054718>,  <27.569210, 30.939690, 44.218758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662979, 30.791710, 44.054718>,  <27.819260, 30.545076, 43.781315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662979, 30.791710, 44.054718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367348, -0.576399, 0.729944,
		0.844043, 0.536275, -0.001300,
		-0.390701, 0.616582, 0.683505,
		27.545769, 30.976685, 44.259769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162378, 30.822029, 44.368931>,  <27.819260, 30.545076, 43.781315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162378, 30.822029, 44.368931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795778, 30.816557, 44.528851>,  <27.575819, 30.813272, 44.624802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795778, 30.816557, 44.528851>,  <28.162378, 30.822029, 44.368931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795778, 30.816557, 44.528851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369308, -0.413052, 0.832466,
		0.153748, 0.910605, 0.383615,
		-0.916500, -0.013682, 0.399800,
		27.520828, 30.812452, 44.648792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201847, 31.143766, 44.935703>,  <28.162378, 30.822029, 44.368931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201847, 31.143766, 44.935703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910032, 30.870493, 44.948593>,  <27.734943, 30.706530, 44.956326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910032, 30.870493, 44.948593>,  <28.201847, 31.143766, 44.935703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910032, 30.870493, 44.948593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432936, -0.424812, 0.795048,
		-0.529475, 0.593966, 0.605690,
		-0.729535, -0.683183, 0.032222,
		27.691172, 30.665537, 44.958260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011549, 30.914074, 45.693359>,  <28.201847, 31.143766, 44.935703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.011549, 30.914074, 45.693359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868301, 30.612633, 45.472874>,  <27.782352, 30.431768, 45.340584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868301, 30.612633, 45.472874>,  <28.011549, 30.914074, 45.693359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868301, 30.612633, 45.472874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204259, -0.639303, 0.741329,
		-0.911060, 0.152893, 0.382876,
		-0.358118, -0.753601, -0.551214,
		27.760866, 30.386553, 45.307510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653614, 31.575695, 45.588474>,  <28.011549, 30.914074, 45.693359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653614, 31.575695, 45.588474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732883, 31.721897, 45.952263>,  <27.780445, 31.809620, 46.170536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732883, 31.721897, 45.952263>,  <27.653614, 31.575695, 45.588474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732883, 31.721897, 45.952263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034940, 0.929915, -0.366112,
		-0.979544, 0.040776, 0.197055,
		0.198173, 0.365508, 0.909468,
		27.792336, 31.831549, 46.225101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218542, 32.018154, 45.896267>,  <27.653614, 31.575695, 45.588474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218542, 32.018154, 45.896267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557114, 32.126511, 46.079647>,  <27.760256, 32.191525, 46.189674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557114, 32.126511, 46.079647>,  <27.218542, 32.018154, 45.896267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557114, 32.126511, 46.079647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096682, 0.924803, -0.367955,
		-0.523653, 0.267124, 0.808970,
		0.846428, 0.270893, 0.458450,
		27.811043, 32.207779, 46.217182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025070, 32.658981, 46.058662>,  <27.218542, 32.018154, 45.896267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025070, 32.658981, 46.058662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421261, 32.651085, 46.004154>,  <27.658976, 32.646347, 45.971451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421261, 32.651085, 46.004154>,  <27.025070, 32.658981, 46.058662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421261, 32.651085, 46.004154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069177, 0.784336, -0.616467,
		0.119049, 0.620022, 0.775500,
		0.990475, -0.019743, -0.136266,
		27.718403, 32.645161, 45.963276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217327, 33.324711, 46.292912>,  <27.025070, 32.658981, 46.058662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217327, 33.324711, 46.292912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437094, 33.127937, 46.022758>,  <27.568953, 33.009872, 45.860664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437094, 33.127937, 46.022758>,  <27.217327, 33.324711, 46.292912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437094, 33.127937, 46.022758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001709, 0.808971, -0.587846,
		0.835548, 0.321817, 0.445301,
		0.549414, -0.491935, -0.675384,
		27.601917, 32.980358, 45.820145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980665, 33.545609, 46.255848>,  <27.217327, 33.324711, 46.292912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980665, 33.545609, 46.255848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791218, 33.414703, 45.928780>,  <27.677549, 33.336159, 45.732540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791218, 33.414703, 45.928780>,  <27.980665, 33.545609, 46.255848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791218, 33.414703, 45.928780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237731, 0.846438, -0.476474,
		0.848062, -0.420036, -0.323049,
		-0.473577, -0.327280, -0.817687,
		27.649134, 33.316525, 45.683479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396040, 33.717545, 45.675213>,  <27.980665, 33.545609, 46.255848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396040, 33.717545, 45.675213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027538, 33.683521, 45.523396>,  <27.806437, 33.663109, 45.432304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027538, 33.683521, 45.523396>,  <28.396040, 33.717545, 45.675213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027538, 33.683521, 45.523396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221681, 0.686991, -0.692027,
		0.319606, -0.721671, -0.614038,
		-0.921254, -0.085055, -0.379547,
		27.751162, 33.658005, 45.409531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385185, 33.441326, 44.991222>,  <28.396040, 33.717545, 45.675213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385185, 33.441326, 44.991222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050364, 33.654835, 45.039276>,  <27.849470, 33.782940, 45.068108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050364, 33.654835, 45.039276>,  <28.385185, 33.441326, 44.991222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050364, 33.654835, 45.039276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155008, 0.441935, -0.883553,
		-0.524703, -0.720960, -0.452662,
		-0.837054, 0.533769, 0.120130,
		27.799248, 33.814964, 45.075314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052738, 33.354042, 44.321007>,  <28.385185, 33.441326, 44.991222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052738, 33.354042, 44.321007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934631, 33.694996, 44.493633>,  <27.863768, 33.899570, 44.597210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934631, 33.694996, 44.493633>,  <28.052738, 33.354042, 44.321007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934631, 33.694996, 44.493633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072734, 0.470450, -0.879424,
		-0.952642, -0.228275, -0.200906,
		-0.295267, 0.852389, 0.431568,
		27.846052, 33.950714, 44.623104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622131, 33.620193, 43.867817>,  <28.052738, 33.354042, 44.321007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622131, 33.620193, 43.867817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743256, 33.934822, 44.083076>,  <27.815929, 34.123600, 44.212234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743256, 33.934822, 44.083076>,  <27.622131, 33.620193, 43.867817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743256, 33.934822, 44.083076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000941, 0.564909, -0.825153,
		-0.953051, 0.249357, 0.171800,
		0.302809, 0.786574, 0.538152,
		27.834099, 34.170795, 44.244522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283022, 34.129177, 43.571598>,  <27.622131, 33.620193, 43.867817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283022, 34.129177, 43.571598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573410, 34.321003, 43.768772>,  <27.747643, 34.436100, 43.887077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573410, 34.321003, 43.768772>,  <27.283022, 34.129177, 43.571598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573410, 34.321003, 43.768772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011459, 0.725093, -0.688555,
		-0.687631, 0.494222, 0.531891,
		0.725970, 0.479566, 0.492933,
		27.791201, 34.464874, 43.916653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165880, 34.721096, 43.392738>,  <27.283022, 34.129177, 43.571598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165880, 34.721096, 43.392738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530735, 34.797043, 43.538044>,  <27.749647, 34.842609, 43.625229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530735, 34.797043, 43.538044>,  <27.165880, 34.721096, 43.392738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530735, 34.797043, 43.538044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110913, 0.738857, -0.664672,
		-0.394599, 0.646561, 0.652879,
		0.912135, 0.189866, 0.363264,
		27.804375, 34.854004, 43.647022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142826, 35.493542, 43.561035>,  <27.165880, 34.721096, 43.392738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142826, 35.493542, 43.561035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511120, 35.356049, 43.487167>,  <27.732096, 35.273552, 43.442848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511120, 35.356049, 43.487167>,  <27.142826, 35.493542, 43.561035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511120, 35.356049, 43.487167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103711, 0.671822, -0.733416,
		0.376160, 0.656128, 0.654217,
		0.920732, -0.343731, -0.184665,
		27.787340, 35.252930, 43.431767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444201, 36.088074, 43.365276>,  <27.142826, 35.493542, 43.561035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444201, 36.088074, 43.365276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675018, 35.794006, 43.222988>,  <27.813509, 35.617565, 43.137615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675018, 35.794006, 43.222988>,  <27.444201, 36.088074, 43.365276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675018, 35.794006, 43.222988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233360, 0.565817, -0.790818,
		0.782663, 0.373326, 0.498062,
		0.577045, -0.735172, -0.355725,
		27.848131, 35.573456, 43.116272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132484, 36.451103, 43.230530>,  <27.444201, 36.088074, 43.365276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132484, 36.451103, 43.230530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160450, 36.118786, 43.009663>,  <28.177229, 35.919395, 42.877144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160450, 36.118786, 43.009663>,  <28.132484, 36.451103, 43.230530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160450, 36.118786, 43.009663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127104, 0.556429, -0.821116,
		0.989422, -0.012774, 0.144501,
		0.069915, -0.830797, -0.552167,
		28.181425, 35.869545, 42.844013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832424, 36.477737, 42.828644>,  <28.132484, 36.451103, 43.230530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832424, 36.477737, 42.828644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.604025, 36.212669, 42.634811>,  <28.466986, 36.053627, 42.518513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.604025, 36.212669, 42.634811>,  <28.832424, 36.477737, 42.828644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604025, 36.212669, 42.634811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231260, 0.436529, -0.869461,
		0.787704, -0.608527, -0.096007,
		-0.571000, -0.662675, -0.484583,
		28.432724, 36.013866, 42.489437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207111, 36.371864, 42.203037>,  <28.832424, 36.477737, 42.828644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207111, 36.371864, 42.203037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838154, 36.230316, 42.141109>,  <28.616779, 36.145390, 42.103951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838154, 36.230316, 42.141109>,  <29.207111, 36.371864, 42.203037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838154, 36.230316, 42.141109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103482, 0.159783, -0.981713,
		0.372136, -0.921546, -0.110763,
		-0.922392, -0.353869, -0.154824,
		28.561436, 36.124157, 42.094662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270506, 35.926075, 41.590363>,  <29.207111, 36.371864, 42.203037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270506, 35.926075, 41.590363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894648, 36.060524, 41.615925>,  <28.669132, 36.141193, 41.631264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894648, 36.060524, 41.615925>,  <29.270506, 35.926075, 41.590363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894648, 36.060524, 41.615925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085521, 0.411591, -0.907347,
		-0.331286, -0.847120, -0.415496,
		-0.939647, 0.336125, 0.063907,
		28.612753, 36.161362, 41.635098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022329, 35.644009, 40.951897>,  <29.270506, 35.926075, 41.590363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022329, 35.644009, 40.951897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772383, 35.932610, 41.071217>,  <28.622416, 36.105770, 41.142807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772383, 35.932610, 41.071217>,  <29.022329, 35.644009, 40.951897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772383, 35.932610, 41.071217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183507, 0.235642, -0.954357,
		-0.758859, -0.651086, -0.014845,
		-0.624867, 0.721498, 0.298298,
		28.584923, 36.149059, 41.160706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656374, 35.636936, 40.372368>,  <29.022329, 35.644009, 40.951897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656374, 35.636936, 40.372368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527836, 35.971493, 40.549988>,  <28.450714, 36.172226, 40.656559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527836, 35.971493, 40.549988>,  <28.656374, 35.636936, 40.372368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527836, 35.971493, 40.549988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231793, 0.385184, -0.893255,
		-0.918156, -0.389969, 0.070094,
		-0.321343, 0.836395, 0.444051,
		28.431433, 36.222412, 40.683205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096001, 35.793591, 40.076462>,  <28.656374, 35.636936, 40.372368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096001, 35.793591, 40.076462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179710, 36.149651, 40.238373>,  <28.229937, 36.363285, 40.335518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179710, 36.149651, 40.238373>,  <28.096001, 35.793591, 40.076462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179710, 36.149651, 40.238373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371942, 0.455288, -0.808933,
		-0.904358, 0.018735, 0.426362,
		0.209273, 0.890147, 0.404775,
		28.242493, 36.416695, 40.359806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407133, 36.232357, 40.150860>,  <28.096001, 35.793591, 40.076462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407133, 36.232357, 40.150860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.759117, 36.416130, 40.102539>,  <27.970308, 36.526394, 40.073547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.759117, 36.416130, 40.102539>,  <27.407133, 36.232357, 40.150860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.759117, 36.416130, 40.102539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285516, 0.308255, -0.907447,
		-0.379670, 0.833009, 0.402427,
		0.879961, 0.459430, -0.120802,
		28.023106, 36.553959, 40.066299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254202, 36.794460, 39.844418>,  <27.407133, 36.232357, 40.150860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254202, 36.794460, 39.844418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645947, 36.781830, 39.764561>,  <27.880993, 36.774254, 39.716648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645947, 36.781830, 39.764561>,  <27.254202, 36.794460, 39.844418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645947, 36.781830, 39.764561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175339, 0.358634, -0.916863,
		0.100547, 0.932944, 0.345695,
		0.979360, -0.031575, -0.199641,
		27.939754, 36.772358, 39.704670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412642, 37.460968, 39.636841>,  <27.254202, 36.794460, 39.844418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412642, 37.460968, 39.636841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691168, 37.206398, 39.504108>,  <27.858284, 37.053658, 39.424469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691168, 37.206398, 39.504108>,  <27.412642, 37.460968, 39.636841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691168, 37.206398, 39.504108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241418, 0.227710, -0.943327,
		0.675914, 0.736964, 0.004915,
		0.696317, -0.636422, -0.331829,
		27.900063, 37.015472, 39.404560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668562, 37.849686, 39.170807>,  <27.412642, 37.460968, 39.636841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668562, 37.849686, 39.170807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822241, 37.488148, 39.095490>,  <27.914448, 37.271225, 39.050301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822241, 37.488148, 39.095490>,  <27.668562, 37.849686, 39.170807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822241, 37.488148, 39.095490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113070, 0.156346, -0.981209,
		0.916301, 0.398268, -0.042130,
		0.384197, -0.903847, -0.188292,
		27.937500, 37.216995, 39.039001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205196, 37.914883, 38.676880>,  <27.668562, 37.849686, 39.170807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205196, 37.914883, 38.676880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103371, 37.529530, 38.643204>,  <28.042276, 37.298317, 38.622997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103371, 37.529530, 38.643204>,  <28.205196, 37.914883, 38.676880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103371, 37.529530, 38.643204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151482, 0.125711, -0.980433,
		0.955118, -0.236827, -0.177937,
		-0.254562, -0.963384, -0.084194,
		28.027002, 37.240513, 38.617947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659428, 37.740044, 38.122761>,  <28.205196, 37.914883, 38.676880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659428, 37.740044, 38.122761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362400, 37.473022, 38.144543>,  <28.184183, 37.312809, 38.157612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362400, 37.473022, 38.144543>,  <28.659428, 37.740044, 38.122761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362400, 37.473022, 38.144543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132932, 0.067208, -0.988844,
		0.656444, -0.741525, -0.138645,
		-0.742570, -0.667551, 0.054454,
		28.139629, 37.272758, 38.160877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861231, 37.233131, 37.667324>,  <28.659428, 37.740044, 38.122761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861231, 37.233131, 37.667324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467112, 37.176762, 37.705948>,  <28.230640, 37.142941, 37.729122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467112, 37.176762, 37.705948>,  <28.861231, 37.233131, 37.667324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467112, 37.176762, 37.705948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106808, 0.067075, -0.992015,
		0.133326, -0.987745, -0.081141,
		-0.985300, -0.140928, 0.096556,
		28.171522, 37.134483, 37.734917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270065, 36.697041, 37.330738>,  <28.861231, 37.233131, 37.667324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270065, 36.697041, 37.330738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126690, 36.497978, 37.014797>,  <29.040665, 36.378540, 36.825233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126690, 36.497978, 37.014797>,  <29.270065, 36.697041, 37.330738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126690, 36.497978, 37.014797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819786, -0.572558, -0.011277,
		-0.446623, -0.651550, 0.613197,
		-0.358438, -0.497654, -0.789850,
		29.019159, 36.348682, 36.777843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050308, 36.417999, 37.315128>,  <29.270065, 36.697041, 37.330738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050308, 36.417999, 37.315128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274345, 36.729584, 37.202332>,  <30.408768, 36.916534, 37.134655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274345, 36.729584, 37.202332>,  <30.050308, 36.417999, 37.315128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274345, 36.729584, 37.202332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479692, -0.027430, 0.877008,
		0.675420, -0.626472, -0.389025,
		0.560092, 0.778961, -0.281987,
		30.442373, 36.963272, 37.117737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724434, 36.297886, 37.366676>,  <30.050308, 36.417999, 37.315128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724434, 36.297886, 37.366676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644699, 36.681416, 37.447594>,  <30.596859, 36.911533, 37.496143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644699, 36.681416, 37.447594>,  <30.724434, 36.297886, 37.366676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644699, 36.681416, 37.447594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528354, -0.068694, 0.846241,
		0.825292, 0.275569, -0.492904,
		-0.199338, 0.958824, 0.202290,
		30.584898, 36.969063, 37.508282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383474, 36.711323, 37.406986>,  <30.724434, 36.297886, 37.366676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383474, 36.711323, 37.406986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116287, 36.834538, 37.677963>,  <30.955975, 36.908466, 37.840549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116287, 36.834538, 37.677963>,  <31.383474, 36.711323, 37.406986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116287, 36.834538, 37.677963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650541, -0.200391, 0.732557,
		0.361411, 0.930029, -0.066539,
		-0.667966, 0.308040, 0.677446,
		30.915897, 36.926949, 37.881199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735527, 36.981186, 38.040653>,  <31.383474, 36.711323, 37.406986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735527, 36.981186, 38.040653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356016, 36.937824, 38.159359>,  <31.128309, 36.911808, 38.230583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356016, 36.937824, 38.159359>,  <31.735527, 36.981186, 38.040653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356016, 36.937824, 38.159359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313327, -0.202101, 0.927891,
		-0.040614, 0.973346, 0.225716,
		-0.948776, -0.108409, 0.296768,
		31.071383, 36.905300, 38.248390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606958, 37.430992, 38.563824>,  <31.735527, 36.981186, 38.040653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606958, 37.430992, 38.563824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358070, 37.119377, 38.594658>,  <31.208736, 36.932407, 38.613159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358070, 37.119377, 38.594658>,  <31.606958, 37.430992, 38.563824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358070, 37.119377, 38.594658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334886, -0.175875, 0.925700,
		-0.707595, 0.601807, 0.370321,
		-0.622222, -0.779036, 0.077088,
		31.171404, 36.885666, 38.617783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089067, 37.453358, 39.235863>,  <31.606958, 37.430992, 38.563824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089067, 37.453358, 39.235863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192223, 37.093246, 39.095581>,  <31.254116, 36.877178, 39.011414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192223, 37.093246, 39.095581>,  <31.089067, 37.453358, 39.235863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192223, 37.093246, 39.095581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294273, -0.272547, 0.916036,
		-0.920270, -0.339438, 0.194641,
		0.257888, -0.900278, -0.350704,
		31.269588, 36.823162, 38.990368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937460, 37.092236, 39.753120>,  <31.089067, 37.453358, 39.235863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937460, 37.092236, 39.753120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175186, 36.826721, 39.571495>,  <31.317822, 36.667412, 39.462521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175186, 36.826721, 39.571495>,  <30.937460, 37.092236, 39.753120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175186, 36.826721, 39.571495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425928, -0.219119, 0.877823,
		-0.682182, -0.715102, 0.152500,
		0.594318, -0.663789, -0.454061,
		31.353481, 36.627586, 39.435276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891054, 36.517204, 40.132259>,  <30.937460, 37.092236, 39.753120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891054, 36.517204, 40.132259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238478, 36.473785, 39.938839>,  <31.446932, 36.447735, 39.822788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238478, 36.473785, 39.938839>,  <30.891054, 36.517204, 40.132259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238478, 36.473785, 39.938839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470035, -0.128810, 0.873198,
		-0.157076, -0.985710, -0.060854,
		0.868559, -0.108555, -0.483551,
		31.499046, 36.441219, 39.793774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287878, 36.044357, 40.526577>,  <30.891054, 36.517204, 40.132259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287878, 36.044357, 40.526577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573370, 36.208214, 40.299320>,  <31.744665, 36.306526, 40.162968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573370, 36.208214, 40.299320>,  <31.287878, 36.044357, 40.526577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573370, 36.208214, 40.299320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669257, -0.159595, 0.725689,
		0.206599, -0.898178, -0.388062,
		0.713730, 0.409640, -0.568140,
		31.787489, 36.331104, 40.128880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839312, 35.668793, 40.663284>,  <31.287878, 36.044357, 40.526577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839312, 35.668793, 40.663284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010471, 36.001877, 40.522717>,  <32.113167, 36.201729, 40.438374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010471, 36.001877, 40.522717>,  <31.839312, 35.668793, 40.663284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010471, 36.001877, 40.522717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706080, -0.065250, 0.705119,
		0.564229, -0.549852, -0.615880,
		0.427898, 0.832709, -0.351424,
		32.138840, 36.251690, 40.417290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631428, 35.633472, 40.573215>,  <31.839312, 35.668793, 40.663284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631428, 35.633472, 40.573215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537930, 36.017673, 40.633602>,  <32.481831, 36.248196, 40.669834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537930, 36.017673, 40.633602>,  <32.631428, 35.633472, 40.573215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537930, 36.017673, 40.633602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642242, 0.035952, 0.765658,
		0.729991, 0.275930, -0.625280,
		-0.233748, 0.960505, 0.150970,
		32.467804, 36.305824, 40.678894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233871, 35.993946, 40.666683>,  <32.631428, 35.633472, 40.573215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233871, 35.993946, 40.666683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966160, 36.246525, 40.823318>,  <32.805534, 36.398071, 40.917297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966160, 36.246525, 40.823318>,  <33.233871, 35.993946, 40.666683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966160, 36.246525, 40.823318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575557, 0.107296, 0.810692,
		0.469894, 0.767959, -0.435246,
		-0.669278, 0.631448, 0.391586,
		32.765377, 36.435959, 40.940796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694057, 36.528553, 40.925510>,  <33.233871, 35.993946, 40.666683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694057, 36.528553, 40.925510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341068, 36.553814, 41.111954>,  <33.129276, 36.568970, 41.223820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341068, 36.553814, 41.111954>,  <33.694057, 36.528553, 40.925510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341068, 36.553814, 41.111954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469549, 0.059921, 0.880870,
		0.027701, 0.996203, -0.082533,
		-0.882472, 0.063154, 0.466107,
		33.076328, 36.572762, 41.251785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803600, 37.018322, 41.478786>,  <33.694057, 36.528553, 40.925510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803600, 37.018322, 41.478786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460724, 36.842785, 41.586597>,  <33.254997, 36.737461, 41.651283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460724, 36.842785, 41.586597>,  <33.803600, 37.018322, 41.478786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460724, 36.842785, 41.586597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280480, 0.041115, 0.958979,
		-0.431927, 0.897620, 0.087845,
		-0.857187, -0.438847, 0.269523,
		33.203568, 36.711132, 41.667454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518253, 37.405174, 42.124332>,  <33.803600, 37.018322, 41.478786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518253, 37.405174, 42.124332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354256, 37.040600, 42.110554>,  <33.255856, 36.821854, 42.102287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354256, 37.040600, 42.110554>,  <33.518253, 37.405174, 42.124332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354256, 37.040600, 42.110554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182149, -0.118824, 0.976065,
		-0.893716, 0.393906, 0.214734,
		-0.409993, -0.911438, -0.034446,
		33.231258, 36.767170, 42.100220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224567, 37.401905, 42.744339>,  <33.518253, 37.405174, 42.124332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224567, 37.401905, 42.744339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226448, 37.010635, 42.661247>,  <33.227577, 36.775875, 42.611393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226448, 37.010635, 42.661247>,  <33.224567, 37.401905, 42.744339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226448, 37.010635, 42.661247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010769, -0.207673, 0.978139,
		-0.999931, -0.006835, 0.009557,
		0.004701, -0.978175, -0.207732,
		33.227859, 36.717182, 42.598927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813168, 37.117306, 43.257454>,  <33.224567, 37.401905, 42.744339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813168, 37.117306, 43.257454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000530, 36.795429, 43.111542>,  <33.112949, 36.602303, 43.023994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000530, 36.795429, 43.111542>,  <32.813168, 37.117306, 43.257454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000530, 36.795429, 43.111542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112890, -0.354981, 0.928032,
		-0.876272, -0.475876, -0.075433,
		0.468405, -0.804693, -0.364781,
		33.141052, 36.554020, 43.002106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484367, 36.575863, 43.603897>,  <32.813168, 37.117306, 43.257454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484367, 36.575863, 43.603897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845894, 36.441193, 43.498245>,  <33.062809, 36.360390, 43.434853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845894, 36.441193, 43.498245>,  <32.484367, 36.575863, 43.603897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845894, 36.441193, 43.498245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120707, -0.391592, 0.912187,
		-0.410548, -0.856330, -0.313287,
		0.903814, -0.336680, -0.264132,
		33.117039, 36.340191, 43.419006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451859, 35.982208, 43.868507>,  <32.484367, 36.575863, 43.603897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451859, 35.982208, 43.868507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846855, 36.032078, 43.829884>,  <33.083851, 36.062000, 43.806709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846855, 36.032078, 43.829884>,  <32.451859, 35.982208, 43.868507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846855, 36.032078, 43.829884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142695, -0.445848, 0.883662,
		0.067116, -0.886384, -0.458060,
		0.987488, 0.124670, -0.096560,
		33.143101, 36.069477, 43.800915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738930, 35.365978, 44.130825>,  <32.451859, 35.982208, 43.868507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738930, 35.365978, 44.130825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022823, 35.645699, 44.164906>,  <33.193161, 35.813530, 44.185352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022823, 35.645699, 44.164906>,  <32.738930, 35.365978, 44.130825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022823, 35.645699, 44.164906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260258, -0.372667, 0.890721,
		0.654632, -0.610001, -0.446493,
		0.709734, 0.699298, 0.085202,
		33.235744, 35.855488, 44.190468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284676, 34.989052, 44.266594>,  <32.738930, 35.365978, 44.130825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284676, 34.989052, 44.266594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378986, 35.346874, 44.418476>,  <33.435574, 35.561569, 44.509605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378986, 35.346874, 44.418476>,  <33.284676, 34.989052, 44.266594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378986, 35.346874, 44.418476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289412, -0.437628, 0.851306,
		0.927711, -0.090830, -0.362080,
		0.235781, 0.894556, 0.379706,
		33.449722, 35.615242, 44.532387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904774, 34.893566, 44.659740>,  <33.284676, 34.989052, 44.266594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904774, 34.893566, 44.659740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748623, 35.240604, 44.782955>,  <33.654934, 35.448826, 44.856884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748623, 35.240604, 44.782955>,  <33.904774, 34.893566, 44.659740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748623, 35.240604, 44.782955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260306, -0.216916, 0.940845,
		0.883089, 0.447469, -0.141160,
		-0.390378, 0.867594, 0.308035,
		33.631508, 35.500881, 44.875366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258896, 34.984531, 45.290417>,  <33.904774, 34.893566, 44.659740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258896, 34.984531, 45.290417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966862, 35.256413, 45.318645>,  <33.791641, 35.419540, 45.335583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966862, 35.256413, 45.318645>,  <34.258896, 34.984531, 45.290417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966862, 35.256413, 45.318645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001193, -0.104539, 0.994520,
		0.683355, 0.726000, 0.077133,
		-0.730085, 0.679703, 0.070572,
		33.747837, 35.460323, 45.339817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483051, 35.529976, 45.669506>,  <34.258896, 34.984531, 45.290417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483051, 35.529976, 45.669506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087917, 35.482468, 45.709675>,  <33.850838, 35.453964, 45.733776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087917, 35.482468, 45.709675>,  <34.483051, 35.529976, 45.669506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087917, 35.482468, 45.709675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083939, 0.136464, 0.987082,
		-0.130941, 0.983499, -0.124834,
		-0.987830, -0.118771, 0.100423,
		33.791569, 35.446835, 45.739803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310654, 36.067783, 46.167458>,  <34.483051, 35.529976, 45.669506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310654, 36.067783, 46.167458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015244, 35.798630, 46.150425>,  <33.837997, 35.637138, 46.140205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015244, 35.798630, 46.150425>,  <34.310654, 36.067783, 46.167458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015244, 35.798630, 46.150425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004198, -0.058564, 0.998275,
		-0.674217, 0.737426, 0.040426,
		-0.738521, -0.672884, -0.042581,
		33.793686, 35.596764, 46.137650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719978, 36.341618, 46.690582>,  <34.310654, 36.067783, 46.167458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719978, 36.341618, 46.690582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629211, 35.960506, 46.609859>,  <33.574753, 35.731838, 46.561428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629211, 35.960506, 46.609859>,  <33.719978, 36.341618, 46.690582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629211, 35.960506, 46.609859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063142, -0.221165, 0.973190,
		-0.971866, 0.208088, 0.110345,
		-0.226914, -0.952778, -0.201804,
		33.561138, 35.674675, 46.549316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217232, 36.152409, 47.088669>,  <33.719978, 36.341618, 46.690582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217232, 36.152409, 47.088669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382870, 35.801640, 46.991077>,  <33.482254, 35.591179, 46.932522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382870, 35.801640, 46.991077>,  <33.217232, 36.152409, 47.088669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382870, 35.801640, 46.991077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311592, -0.388416, 0.867205,
		-0.855239, -0.283084, -0.434084,
		0.414097, -0.876924, -0.243982,
		33.507099, 35.538563, 46.917881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977543, 35.716503, 47.504562>,  <33.217232, 36.152409, 47.088669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977543, 35.716503, 47.504562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264809, 35.465469, 47.384312>,  <33.437168, 35.314850, 47.312160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264809, 35.465469, 47.384312>,  <32.977543, 35.716503, 47.504562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264809, 35.465469, 47.384312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035263, -0.464281, 0.884986,
		-0.694978, -0.624966, -0.355561,
		0.718166, -0.627584, -0.300627,
		33.480259, 35.277195, 47.294125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792187, 34.945805, 47.659660>,  <32.977543, 35.716503, 47.504562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792187, 34.945805, 47.659660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189781, 34.968040, 47.621910>,  <33.428337, 34.981380, 47.599262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189781, 34.968040, 47.621910>,  <32.792187, 34.945805, 47.659660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189781, 34.968040, 47.621910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109428, -0.467304, 0.877298,
		0.004666, -0.882347, -0.470575,
		0.993984, 0.055587, -0.094373,
		33.487976, 34.984718, 47.593597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992416, 34.272636, 47.944527>,  <32.792187, 34.945805, 47.659660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992416, 34.272636, 47.944527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293194, 34.536327, 47.943745>,  <33.473660, 34.694542, 47.943275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293194, 34.536327, 47.943745>,  <32.992416, 34.272636, 47.944527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293194, 34.536327, 47.943745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397540, -0.451078, 0.799056,
		0.525879, -0.601619, -0.601253,
		0.751940, 0.659229, -0.001955,
		33.518776, 34.734097, 47.943157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617561, 33.916046, 47.980282>,  <32.992416, 34.272636, 47.944527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617561, 33.916046, 47.980282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691093, 34.280426, 48.128002>,  <33.735214, 34.499054, 48.216633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691093, 34.280426, 48.128002>,  <33.617561, 33.916046, 47.980282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691093, 34.280426, 48.128002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350857, -0.411764, 0.841041,
		0.918208, -0.025039, -0.395307,
		0.183832, 0.910947, 0.369299,
		33.746243, 34.553711, 48.238792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159119, 33.791790, 48.437176>,  <33.617561, 33.916046, 47.980282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159119, 33.791790, 48.437176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053047, 34.158592, 48.556362>,  <33.989403, 34.378674, 48.627872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053047, 34.158592, 48.556362>,  <34.159119, 33.791790, 48.437176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053047, 34.158592, 48.556362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070244, -0.289836, 0.954495,
		0.961636, 0.274045, 0.012445,
		-0.265182, 0.917003, 0.297967,
		33.973492, 34.433693, 48.645752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688534, 33.980152, 48.756657>,  <34.159119, 33.791790, 48.437176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688534, 33.980152, 48.756657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383366, 34.202553, 48.888599>,  <34.200264, 34.335995, 48.967766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383366, 34.202553, 48.888599>,  <34.688534, 33.980152, 48.756657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383366, 34.202553, 48.888599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282058, -0.172833, 0.943701,
		0.581713, 0.813011, -0.024967,
		-0.762924, 0.556006, 0.329856,
		34.154488, 34.369354, 48.987556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960926, 34.257069, 49.359150>,  <34.688534, 33.980152, 48.756657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960926, 34.257069, 49.359150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566132, 34.310284, 49.395279>,  <34.329254, 34.342213, 49.416958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566132, 34.310284, 49.395279>,  <34.960926, 34.257069, 49.359150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566132, 34.310284, 49.395279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074144, -0.121911, 0.989768,
		0.142691, 0.983584, 0.110460,
		-0.986986, 0.133041, 0.090323,
		34.270035, 34.350197, 49.422375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816761, 34.729408, 49.966827>,  <34.960926, 34.257069, 49.359150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816761, 34.729408, 49.966827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458366, 34.555122, 49.932518>,  <34.243328, 34.450550, 49.911934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458366, 34.555122, 49.932518>,  <34.816761, 34.729408, 49.966827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458366, 34.555122, 49.932518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000644, -0.191869, 0.981420,
		-0.444077, 0.879396, 0.171632,
		-0.895988, -0.435716, -0.085771,
		34.189571, 34.424408, 49.906788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303745, 35.032413, 50.440758>,  <34.816761, 34.729408, 49.966827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303745, 35.032413, 50.440758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190689, 34.662006, 50.340672>,  <34.122856, 34.439762, 50.280621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190689, 34.662006, 50.340672>,  <34.303745, 35.032413, 50.440758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190689, 34.662006, 50.340672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070539, -0.280208, 0.957344,
		-0.956628, 0.252937, 0.144519,
		-0.282644, -0.926016, -0.250213,
		34.105896, 34.384201, 50.265606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743786, 34.947575, 50.893124>,  <34.303745, 35.032413, 50.440758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743786, 34.947575, 50.893124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859173, 34.583973, 50.772793>,  <33.928406, 34.365810, 50.700596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859173, 34.583973, 50.772793>,  <33.743786, 34.947575, 50.893124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859173, 34.583973, 50.772793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114923, -0.279041, 0.953378,
		-0.950569, -0.309586, 0.023973,
		0.288463, -0.909006, -0.300826,
		33.945713, 34.311272, 50.682545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289227, 34.374504, 51.170044>,  <33.743786, 34.947575, 50.893124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289227, 34.374504, 51.170044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644505, 34.202866, 51.104332>,  <33.857670, 34.099884, 51.064903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644505, 34.202866, 51.104332>,  <33.289227, 34.374504, 51.170044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644505, 34.202866, 51.104332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060635, -0.244954, 0.967637,
		-0.455447, -0.869411, -0.191549,
		0.888195, -0.429093, -0.164280,
		33.910965, 34.074139, 51.055046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152351, 33.701981, 51.552166>,  <33.289227, 34.374504, 51.170044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152351, 33.701981, 51.552166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535061, 33.780476, 51.466309>,  <33.764687, 33.827572, 51.414795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535061, 33.780476, 51.466309>,  <33.152351, 33.701981, 51.552166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535061, 33.780476, 51.466309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273831, -0.359205, 0.892182,
		0.097981, -0.912393, -0.397415,
		0.956774, 0.196241, -0.214646,
		33.822094, 33.839348, 51.401917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469414, 33.208088, 51.955269>,  <33.152351, 33.701981, 51.552166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469414, 33.208088, 51.955269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791168, 33.425194, 51.858631>,  <33.984222, 33.555458, 51.800648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791168, 33.425194, 51.858631>,  <33.469414, 33.208088, 51.955269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791168, 33.425194, 51.858631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498699, -0.395854, 0.771102,
		0.322893, -0.740746, -0.589097,
		0.804388, 0.542766, -0.241591,
		34.032486, 33.588024, 51.786156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967701, 32.660839, 51.839184>,  <33.469414, 33.208088, 51.955269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967701, 32.660839, 51.839184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101112, 33.022884, 51.944656>,  <34.181160, 33.240112, 52.007938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101112, 33.022884, 51.944656>,  <33.967701, 32.660839, 51.839184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101112, 33.022884, 51.944656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295673, -0.366017, 0.882388,
		0.895173, -0.216340, -0.389695,
		0.333531, 0.905113, 0.263683,
		34.201172, 33.294418, 52.023762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680645, 32.602757, 52.030769>,  <33.967701, 32.660839, 51.839184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680645, 32.602757, 52.030769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563488, 32.949097, 52.193012>,  <34.493195, 33.156902, 52.290356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563488, 32.949097, 52.193012>,  <34.680645, 32.602757, 52.030769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563488, 32.949097, 52.193012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342334, -0.301124, 0.890018,
		0.892761, 0.399529, -0.208215,
		-0.292890, 0.865853, 0.405604,
		34.475620, 33.208851, 52.314693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193207, 32.863956, 52.375832>,  <34.680645, 32.602757, 52.030769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193207, 32.863956, 52.375832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879181, 33.029522, 52.560158>,  <34.690765, 33.128860, 52.670753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879181, 33.029522, 52.560158>,  <35.193207, 32.863956, 52.375832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879181, 33.029522, 52.560158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381169, -0.263585, 0.886134,
		0.488250, 0.871318, 0.049159,
		-0.785062, 0.413917, 0.460815,
		34.643661, 33.153698, 52.698402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475601, 33.032314, 52.979225>,  <35.193207, 32.863956, 52.375832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475601, 33.032314, 52.979225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088596, 33.101517, 53.052971>,  <34.856392, 33.143036, 53.097218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088596, 33.101517, 53.052971>,  <35.475601, 33.032314, 52.979225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088596, 33.101517, 53.052971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109626, -0.370047, 0.922522,
		0.227823, 0.912763, 0.339059,
		-0.967512, 0.173002, 0.184368,
		34.798344, 33.153416, 53.108280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502266, 33.349472, 53.539242>,  <35.475601, 33.032314, 52.979225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502266, 33.349472, 53.539242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129406, 33.204868, 53.531231>,  <34.905689, 33.118107, 53.526424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129406, 33.204868, 53.531231>,  <35.502266, 33.349472, 53.539242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129406, 33.204868, 53.531231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100751, -0.312120, 0.944685,
		-0.347768, 0.878572, 0.327366,
		-0.932152, -0.361514, -0.020028,
		34.849762, 33.096413, 53.525223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159733, 33.711533, 54.089767>,  <35.502266, 33.349472, 53.539242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159733, 33.711533, 54.089767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962753, 33.371975, 54.012955>,  <34.844566, 33.168240, 53.966869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962753, 33.371975, 54.012955>,  <35.159733, 33.711533, 54.089767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962753, 33.371975, 54.012955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100692, -0.163584, 0.981377,
		-0.864496, 0.502615, -0.004920,
		-0.492451, -0.848892, -0.192027,
		34.815018, 33.117306, 53.955345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617645, 33.673111, 54.576817>,  <35.159733, 33.711533, 54.089767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617645, 33.673111, 54.576817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664410, 33.297680, 54.446953>,  <34.692467, 33.072422, 54.369034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664410, 33.297680, 54.446953>,  <34.617645, 33.673111, 54.576817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664410, 33.297680, 54.446953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010470, -0.325715, 0.945410,
		-0.993087, -0.113928, -0.028253,
		0.116911, -0.938579, -0.324656,
		34.699482, 33.016106, 54.349556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402187, 33.331932, 55.152798>,  <34.617645, 33.673111, 54.576817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402187, 33.331932, 55.152798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541771, 33.051735, 54.903786>,  <34.625523, 32.883617, 54.754379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541771, 33.051735, 54.903786>,  <34.402187, 33.331932, 55.152798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541771, 33.051735, 54.903786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073027, -0.641941, 0.763268,
		-0.934287, -0.311813, -0.172858,
		0.348962, -0.700489, -0.622528,
		34.646458, 32.841587, 54.717026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048904, 32.675327, 55.195576>,  <34.402187, 33.331932, 55.152798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048904, 32.675327, 55.195576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427792, 32.615257, 55.082279>,  <34.655125, 32.579216, 55.014301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427792, 32.615257, 55.082279>,  <34.048904, 32.675327, 55.195576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427792, 32.615257, 55.082279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076503, -0.752087, 0.654609,
		-0.311329, -0.641726, -0.700901,
		0.947218, -0.150178, -0.283241,
		34.711956, 32.570206, 54.997307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268749, 31.946346, 54.937164>,  <34.048904, 32.675327, 55.195576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268749, 31.946346, 54.937164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618130, 32.083233, 55.075714>,  <34.827759, 32.165367, 55.158844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618130, 32.083233, 55.075714>,  <34.268749, 31.946346, 54.937164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618130, 32.083233, 55.075714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067536, -0.789629, 0.609857,
		0.482208, -0.509287, -0.712813,
		0.873450, 0.342218, 0.346370,
		34.880165, 32.185898, 55.179626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688774, 31.332909, 54.806282>,  <34.268749, 31.946346, 54.937164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688774, 31.332909, 54.806282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762917, 31.552193, 55.132500>,  <34.807400, 31.683764, 55.328232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762917, 31.552193, 55.132500>,  <34.688774, 31.332909, 54.806282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762917, 31.552193, 55.132500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081864, -0.818425, 0.568751,
		0.979256, -0.172184, -0.106820,
		0.185354, 0.548208, 0.815544,
		34.818523, 31.716656, 55.377163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417938, 31.110916, 55.066936>,  <34.688774, 31.332909, 54.806282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417938, 31.110916, 55.066936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107220, 31.248055, 55.278236>,  <34.920788, 31.330338, 55.405014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107220, 31.248055, 55.278236>,  <35.417938, 31.110916, 55.066936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107220, 31.248055, 55.278236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185990, -0.926297, 0.327693,
		0.601663, 0.156302, 0.783308,
		-0.776795, 0.342848, 0.528248,
		34.874180, 31.350908, 55.436710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547592, 30.982849, 55.697842>,  <35.417938, 31.110916, 55.066936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547592, 30.982849, 55.697842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157631, 30.971619, 55.609505>,  <34.923653, 30.964880, 55.556503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157631, 30.971619, 55.609505>,  <35.547592, 30.982849, 55.697842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157631, 30.971619, 55.609505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071843, -0.899252, 0.431492,
		-0.210705, 0.436530, 0.874669,
		-0.974906, -0.028079, -0.220838,
		34.865158, 30.963196, 55.543255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094818, 30.474684, 55.615547>,  <35.547592, 30.982849, 55.697842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094818, 30.474684, 55.615547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125099, 30.075871, 55.609974>,  <35.143269, 29.836582, 55.606632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125099, 30.075871, 55.609974>,  <35.094818, 30.474684, 55.615547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125099, 30.075871, 55.609974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141017, 0.003123, -0.990002,
		0.987109, 0.076912, -0.140362,
		0.075704, -0.997033, -0.013929,
		35.147812, 29.776760, 55.605797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587334, 30.335978, 55.170109>,  <35.094818, 30.474684, 55.615547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587334, 30.335978, 55.170109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392361, 29.986725, 55.172894>,  <35.275379, 29.777172, 55.174564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392361, 29.986725, 55.172894>,  <35.587334, 30.335978, 55.170109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392361, 29.986725, 55.172894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047500, -0.034478, -0.998276,
		0.871869, -0.486260, 0.058280,
		-0.487431, -0.873134, 0.006963,
		35.246132, 29.724785, 55.174984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938148, 29.815531, 54.688725>,  <35.587334, 30.335978, 55.170109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938148, 29.815531, 54.688725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543705, 29.755318, 54.716782>,  <35.307037, 29.719189, 54.733616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543705, 29.755318, 54.716782>,  <35.938148, 29.815531, 54.688725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543705, 29.755318, 54.716782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057158, -0.088928, -0.994397,
		0.155930, -0.984597, 0.079089,
		-0.986113, -0.150536, 0.070145,
		35.247871, 29.710157, 54.737823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596260, 29.211590, 54.441162>,  <35.938148, 29.815531, 54.688725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596260, 29.211590, 54.441162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316727, 29.490213, 54.376122>,  <35.149006, 29.657387, 54.337097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316727, 29.490213, 54.376122>,  <35.596260, 29.211590, 54.441162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316727, 29.490213, 54.376122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228847, 0.002356, -0.973459,
		-0.677689, -0.717495, -0.161052,
		-0.698832, 0.696559, -0.162600,
		35.107079, 29.699181, 54.327343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253700, 29.000669, 53.814152>,  <35.596260, 29.211590, 54.441162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253700, 29.000669, 53.814152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139801, 29.383835, 53.828663>,  <35.071461, 29.613735, 53.837372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139801, 29.383835, 53.828663>,  <35.253700, 29.000669, 53.814152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139801, 29.383835, 53.828663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016543, 0.032932, -0.999321,
		-0.958459, -0.285158, 0.006469,
		-0.284752, 0.957914, 0.036281,
		35.054375, 29.671209, 53.839546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635273, 29.160500, 53.337933>,  <35.253700, 29.000669, 53.814152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635273, 29.160500, 53.337933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808277, 29.516266, 53.397095>,  <34.912079, 29.729725, 53.432590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808277, 29.516266, 53.397095>,  <34.635273, 29.160500, 53.337933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808277, 29.516266, 53.397095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055814, 0.190140, -0.980169,
		-0.899901, 0.415676, 0.131879,
		0.432508, 0.889416, 0.147907,
		34.938030, 29.783091, 53.441467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122482, 29.660780, 53.024792>,  <34.635273, 29.160500, 53.337933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122482, 29.660780, 53.024792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480434, 29.836502, 53.056305>,  <34.695206, 29.941936, 53.075211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480434, 29.836502, 53.056305>,  <34.122482, 29.660780, 53.024792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480434, 29.836502, 53.056305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079758, 0.331078, -0.940227,
		-0.439130, 0.835103, 0.331312,
		0.894876, 0.439306, 0.078780,
		34.748898, 29.968294, 53.079941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094212, 30.347158, 52.679081>,  <34.122482, 29.660780, 53.024792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094212, 30.347158, 52.679081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482048, 30.249384, 52.683861>,  <34.714748, 30.190720, 52.686729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482048, 30.249384, 52.683861>,  <34.094212, 30.347158, 52.679081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482048, 30.249384, 52.683861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063353, 0.203550, -0.977013,
		0.236387, 0.948060, 0.212846,
		0.969592, -0.244437, 0.011946,
		34.772926, 30.176052, 52.687443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297302, 30.742895, 52.231106>,  <34.094212, 30.347158, 52.679081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297302, 30.742895, 52.231106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627243, 30.517019, 52.241993>,  <34.825207, 30.381495, 52.248528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627243, 30.517019, 52.241993>,  <34.297302, 30.742895, 52.231106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627243, 30.517019, 52.241993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183897, 0.222468, -0.957439,
		0.534599, 0.794755, 0.287348,
		0.824855, -0.564689, 0.027222,
		34.874699, 30.347612, 52.250160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712181, 31.199310, 51.942307>,  <34.297302, 30.742895, 52.231106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712181, 31.199310, 51.942307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895252, 30.844904, 51.912628>,  <35.005096, 30.632259, 51.894821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895252, 30.844904, 51.912628>,  <34.712181, 31.199310, 51.942307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895252, 30.844904, 51.912628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307370, 0.235968, -0.921869,
		0.834298, 0.399116, 0.380333,
		0.457679, -0.886016, -0.074191,
		35.032555, 30.579100, 51.890369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423668, 31.313662, 51.717907>,  <34.712181, 31.199310, 51.942307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423668, 31.313662, 51.717907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292347, 30.953041, 51.605179>,  <35.213554, 30.736668, 51.537544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292347, 30.953041, 51.605179>,  <35.423668, 31.313662, 51.717907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292347, 30.953041, 51.605179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334015, 0.168274, -0.927426,
		0.883546, -0.398604, 0.245888,
		-0.328299, -0.901554, -0.281818,
		35.193859, 30.682575, 51.520634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934025, 30.966164, 51.272091>,  <35.423668, 31.313662, 51.717907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934025, 30.966164, 51.272091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562187, 30.847105, 51.185131>,  <35.339085, 30.775669, 51.132954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562187, 30.847105, 51.185131>,  <35.934025, 30.966164, 51.272091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562187, 30.847105, 51.185131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178504, 0.152503, -0.972049,
		0.322482, -0.942417, -0.088635,
		-0.929592, -0.297647, -0.217404,
		35.283310, 30.757811, 51.119911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947021, 30.984018, 50.495480>,  <35.934025, 30.966164, 51.272091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947021, 30.984018, 50.495480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581871, 30.838011, 50.568604>,  <35.362782, 30.750406, 50.612480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581871, 30.838011, 50.568604>,  <35.947021, 30.984018, 50.495480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581871, 30.838011, 50.568604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141965, -0.136019, -0.980482,
		0.382760, -0.921011, 0.072349,
		-0.912875, -0.365018, 0.182814,
		35.308010, 30.728506, 50.623447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900429, 30.325409, 50.201538>,  <35.947021, 30.984018, 50.495480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900429, 30.325409, 50.201538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517532, 30.434669, 50.239655>,  <35.287796, 30.500227, 50.262524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517532, 30.434669, 50.239655>,  <35.900429, 30.325409, 50.201538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517532, 30.434669, 50.239655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087990, 0.038892, -0.995362,
		-0.275593, -0.961184, -0.013194,
		-0.957239, 0.273154, 0.095293,
		35.230362, 30.516615, 50.268242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657288, 30.022205, 49.610065>,  <35.900429, 30.325409, 50.201538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657288, 30.022205, 49.610065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369606, 30.274591, 49.726433>,  <35.196999, 30.426023, 49.796253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369606, 30.274591, 49.726433>,  <35.657288, 30.022205, 49.610065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369606, 30.274591, 49.726433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275427, 0.125493, -0.953096,
		-0.637879, -0.765593, 0.083530,
		-0.719201, 0.630967, 0.290914,
		35.153847, 30.463881, 49.813705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873795, 29.836962, 49.305279>,  <35.657288, 30.022205, 49.610065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873795, 29.836962, 49.305279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921013, 30.226284, 49.384010>,  <34.949345, 30.459877, 49.431248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921013, 30.226284, 49.384010>,  <34.873795, 29.836962, 49.305279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921013, 30.226284, 49.384010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195298, 0.217098, -0.956414,
		-0.973614, 0.074463, 0.215713,
		0.118049, 0.973306, 0.196827,
		34.956429, 30.518276, 49.443058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316483, 30.175421, 48.885757>,  <34.873795, 29.836962, 49.305279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316483, 30.175421, 48.885757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591797, 30.450001, 48.979607>,  <34.756985, 30.614750, 49.035915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591797, 30.450001, 48.979607>,  <34.316483, 30.175421, 48.885757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591797, 30.450001, 48.979607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033415, 0.353080, -0.934996,
		-0.724671, 0.635704, 0.265957,
		0.688285, 0.686451, 0.234625,
		34.798283, 30.655935, 49.049995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050526, 30.846951, 48.683273>,  <34.316483, 30.175421, 48.885757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050526, 30.846951, 48.683273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447826, 30.893345, 48.682983>,  <34.686207, 30.921183, 48.682808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447826, 30.893345, 48.682983>,  <34.050526, 30.846951, 48.683273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447826, 30.893345, 48.682983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048900, 0.413070, -0.909386,
		-0.105178, 0.903283, 0.415954,
		0.993251, 0.115987, -0.000724,
		34.745800, 30.928141, 48.682766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170414, 31.511118, 48.528030>,  <34.050526, 30.846951, 48.683273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170414, 31.511118, 48.528030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513359, 31.334747, 48.421818>,  <34.719128, 31.228924, 48.358089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513359, 31.334747, 48.421818>,  <34.170414, 31.511118, 48.528030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513359, 31.334747, 48.421818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036588, 0.566796, -0.823045,
		0.513407, 0.695935, 0.502084,
		0.857365, -0.440928, -0.265534,
		34.770569, 31.202469, 48.342159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556389, 32.007030, 48.434166>,  <34.170414, 31.511118, 48.528030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556389, 32.007030, 48.434166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721161, 31.706591, 48.227802>,  <34.820023, 31.526327, 48.103985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721161, 31.706591, 48.227802>,  <34.556389, 32.007030, 48.434166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721161, 31.706591, 48.227802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096863, 0.526876, -0.844404,
		0.906052, 0.397809, 0.144283,
		0.411931, -0.751099, -0.515910,
		34.844742, 31.481260, 48.073029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117649, 32.335682, 47.995975>,  <34.556389, 32.007030, 48.434166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117649, 32.335682, 47.995975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023350, 31.984346, 47.829636>,  <34.966770, 31.773544, 47.729832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023350, 31.984346, 47.829636>,  <35.117649, 32.335682, 47.995975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023350, 31.984346, 47.829636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008970, 0.429864, -0.902849,
		0.971772, -0.209117, -0.109220,
		-0.235751, -0.878343, -0.415854,
		34.952625, 31.720844, 47.704880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581104, 32.335846, 47.420876>,  <35.117649, 32.335682, 47.995975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581104, 32.335846, 47.420876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301331, 32.059528, 47.347561>,  <35.133465, 31.893738, 47.303574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301331, 32.059528, 47.347561>,  <35.581104, 32.335846, 47.420876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301331, 32.059528, 47.347561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003990, 0.252669, -0.967545,
		0.714686, -0.677465, -0.173969,
		-0.699434, -0.690796, -0.183282,
		35.091499, 31.852289, 47.292576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769932, 32.000713, 46.757641>,  <35.581104, 32.335846, 47.420876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769932, 32.000713, 46.757641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381817, 31.930309, 46.824062>,  <35.148949, 31.888067, 46.863914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381817, 31.930309, 46.824062>,  <35.769932, 32.000713, 46.757641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381817, 31.930309, 46.824062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186351, 0.105795, -0.976770,
		0.154356, -0.978686, -0.135451,
		-0.970282, -0.176012, 0.166049,
		35.090733, 31.877506, 46.873878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549984, 31.539515, 46.276520>,  <35.769932, 32.000713, 46.757641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549984, 31.539515, 46.276520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202400, 31.703268, 46.387749>,  <34.993851, 31.801519, 46.454487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202400, 31.703268, 46.387749>,  <35.549984, 31.539515, 46.276520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202400, 31.703268, 46.387749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252626, 0.116231, -0.960558,
		-0.425555, -0.904929, 0.002421,
		-0.868955, 0.409382, 0.278071,
		34.941715, 31.826082, 46.471169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078686, 31.309477, 45.922554>,  <35.549984, 31.539515, 46.276520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078686, 31.309477, 45.922554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864662, 31.619152, 46.057812>,  <34.736248, 31.804956, 46.138966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864662, 31.619152, 46.057812>,  <35.078686, 31.309477, 45.922554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864662, 31.619152, 46.057812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421094, 0.102591, -0.901196,
		-0.732386, -0.624586, 0.271114,
		-0.535061, 0.774188, 0.338146,
		34.704144, 31.851408, 46.159256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347824, 31.142679, 45.810505>,  <35.078686, 31.309477, 45.922554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347824, 31.142679, 45.810505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361401, 31.541523, 45.837700>,  <34.369545, 31.780828, 45.854019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361401, 31.541523, 45.837700>,  <34.347824, 31.142679, 45.810505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361401, 31.541523, 45.837700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572078, 0.075164, -0.816748,
		-0.819497, -0.011176, 0.572975,
		0.033939, 0.997109, 0.067990,
		34.371582, 31.840656, 45.858097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722889, 31.329411, 45.612064>,  <34.347824, 31.142679, 45.810505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722889, 31.329411, 45.612064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905392, 31.684278, 45.584476>,  <34.014893, 31.897200, 45.567924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905392, 31.684278, 45.584476>,  <33.722889, 31.329411, 45.612064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905392, 31.684278, 45.584476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512680, 0.198728, -0.835264,
		-0.727314, 0.416460, 0.545505,
		0.456261, 0.887169, -0.068973,
		34.042271, 31.950430, 45.563786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221626, 31.771500, 45.447372>,  <33.722889, 31.329411, 45.612064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221626, 31.771500, 45.447372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543362, 31.989189, 45.351994>,  <33.736404, 32.119804, 45.294765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543362, 31.989189, 45.351994>,  <33.221626, 31.771500, 45.447372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543362, 31.989189, 45.351994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512597, 0.432652, -0.741658,
		-0.300465, 0.718772, 0.626967,
		0.804341, 0.544224, -0.238444,
		33.784664, 32.152458, 45.280460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908367, 32.440670, 45.358879>,  <33.221626, 31.771500, 45.447372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908367, 32.440670, 45.358879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256493, 32.428913, 45.162228>,  <33.465366, 32.421860, 45.044239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256493, 32.428913, 45.162228>,  <32.908367, 32.440670, 45.358879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256493, 32.428913, 45.162228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411437, 0.505271, -0.758565,
		0.270702, 0.862460, 0.427648,
		0.870310, -0.029395, -0.491626,
		33.517586, 32.420094, 45.014740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038471, 33.131130, 45.054695>,  <32.908367, 32.440670, 45.358879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038471, 33.131130, 45.054695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254749, 32.884624, 44.825657>,  <33.384514, 32.736721, 44.688232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254749, 32.884624, 44.825657>,  <33.038471, 33.131130, 45.054695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254749, 32.884624, 44.825657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329637, 0.471021, -0.818217,
		0.773946, 0.631151, 0.051532,
		0.540691, -0.616269, -0.572596,
		33.416958, 32.699745, 44.653877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232967, 33.514091, 44.491367>,  <33.038471, 33.131130, 45.054695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232967, 33.514091, 44.491367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311531, 33.153973, 44.335991>,  <33.358669, 32.937901, 44.242764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311531, 33.153973, 44.335991>,  <33.232967, 33.514091, 44.491367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311531, 33.153973, 44.335991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210070, 0.348323, -0.913533,
		0.957754, 0.261029, -0.120710,
		0.196412, -0.900297, -0.388442,
		33.370453, 32.883884, 44.219460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687874, 33.586449, 43.933151>,  <33.232967, 33.514091, 44.491367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687874, 33.586449, 43.933151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521099, 33.228447, 43.869732>,  <33.421036, 33.013645, 43.831680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521099, 33.228447, 43.869732>,  <33.687874, 33.586449, 43.933151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521099, 33.228447, 43.869732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176560, 0.250853, -0.951788,
		0.891623, -0.368842, -0.262611,
		-0.416936, -0.895002, -0.158544,
		33.396019, 32.959946, 43.822170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019035, 33.283340, 43.351357>,  <33.687874, 33.586449, 43.933151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019035, 33.283340, 43.351357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673477, 33.086296, 43.393349>,  <33.466141, 32.968071, 43.418545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673477, 33.086296, 43.393349>,  <34.019035, 33.283340, 43.351357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673477, 33.086296, 43.393349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208542, 0.160105, -0.964820,
		0.458472, -0.855396, -0.241043,
		-0.863894, -0.492610, 0.104983,
		33.414310, 32.938515, 43.424843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066536, 32.851582, 42.801357>,  <34.019035, 33.283340, 43.351357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066536, 32.851582, 42.801357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682465, 32.824574, 42.909801>,  <33.452023, 32.808369, 42.974869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682465, 32.824574, 42.909801>,  <34.066536, 32.851582, 42.801357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682465, 32.824574, 42.909801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275551, 0.068422, -0.958848,
		0.046173, -0.995371, -0.084297,
		-0.960177, -0.067501, 0.271116,
		33.394413, 32.804317, 42.991135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802620, 32.392212, 42.442993>,  <34.066536, 32.851582, 42.801357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802620, 32.392212, 42.442993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486954, 32.616776, 42.542625>,  <33.297554, 32.751514, 42.602406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486954, 32.616776, 42.542625>,  <33.802620, 32.392212, 42.442993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486954, 32.616776, 42.542625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221451, 0.118176, -0.967984,
		-0.572868, -0.819059, 0.031063,
		-0.789165, 0.561406, 0.249081,
		33.250202, 32.785198, 42.617352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284458, 32.165588, 42.045807>,  <33.802620, 32.392212, 42.442993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284458, 32.165588, 42.045807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153530, 32.529758, 42.146996>,  <33.074974, 32.748260, 42.207706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153530, 32.529758, 42.146996>,  <33.284458, 32.165588, 42.045807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153530, 32.529758, 42.146996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200925, 0.194532, -0.960097,
		-0.923304, -0.365087, 0.119252,
		-0.327320, 0.910422, 0.252967,
		33.055332, 32.802887, 42.222885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576565, 32.318859, 41.786602>,  <33.284458, 32.165588, 42.045807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576565, 32.318859, 41.786602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711239, 32.688675, 41.858006>,  <32.792046, 32.910564, 41.900848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711239, 32.688675, 41.858006>,  <32.576565, 32.318859, 41.786602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711239, 32.688675, 41.858006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174722, 0.247627, -0.952971,
		-0.925264, 0.289663, 0.244910,
		0.336687, 0.924541, 0.178510,
		32.812244, 32.966038, 41.911560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240898, 32.657578, 41.271523>,  <32.576565, 32.318859, 41.786602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240898, 32.657578, 41.271523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521755, 32.908566, 41.406151>,  <32.690269, 33.059158, 41.486927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521755, 32.908566, 41.406151>,  <32.240898, 32.657578, 41.271523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521755, 32.908566, 41.406151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039735, 0.437416, -0.898381,
		-0.710930, 0.644162, 0.282194,
		0.702139, 0.627473, 0.336568,
		32.732399, 33.096806, 41.507122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082142, 33.307930, 41.036228>,  <32.240898, 32.657578, 41.271523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082142, 33.307930, 41.036228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476944, 33.335255, 41.094395>,  <32.713825, 33.351650, 41.129295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476944, 33.335255, 41.094395>,  <32.082142, 33.307930, 41.036228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476944, 33.335255, 41.094395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120464, 0.284261, -0.951149,
		-0.106312, 0.956310, 0.272340,
		0.987009, 0.068311, 0.145421,
		32.773048, 33.355747, 41.138020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247101, 34.003574, 41.024055>,  <32.082142, 33.307930, 41.036228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247101, 34.003574, 41.024055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586086, 33.818222, 40.920460>,  <32.789478, 33.707008, 40.858303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586086, 33.818222, 40.920460>,  <32.247101, 34.003574, 41.024055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586086, 33.818222, 40.920460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044268, 0.547866, -0.835394,
		0.528998, 0.696505, 0.484812,
		0.847468, -0.463383, -0.258987,
		32.840328, 33.679207, 40.842762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696259, 34.590157, 40.761566>,  <32.247101, 34.003574, 41.024055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696259, 34.590157, 40.761566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902138, 34.271938, 40.633698>,  <33.025665, 34.081005, 40.556976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902138, 34.271938, 40.633698>,  <32.696259, 34.590157, 40.761566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902138, 34.271938, 40.633698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221608, 0.483621, -0.846759,
		0.828238, 0.364981, 0.425218,
		0.514695, -0.795550, -0.319671,
		33.056545, 34.033272, 40.537796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294788, 34.819946, 40.498066>,  <32.696259, 34.590157, 40.761566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294788, 34.819946, 40.498066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226070, 34.457825, 40.342674>,  <33.184837, 34.240551, 40.249439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226070, 34.457825, 40.342674>,  <33.294788, 34.819946, 40.498066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226070, 34.457825, 40.342674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195137, 0.355258, -0.914174,
		0.965612, -0.232861, 0.115624,
		-0.171799, -0.905300, -0.388481,
		33.174530, 34.186234, 40.226131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881771, 34.547211, 40.143009>,  <33.294788, 34.819946, 40.498066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881771, 34.547211, 40.143009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528847, 34.417282, 40.006760>,  <33.317093, 34.339325, 39.925011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528847, 34.417282, 40.006760>,  <33.881771, 34.547211, 40.143009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528847, 34.417282, 40.006760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106485, 0.567174, -0.816685,
		0.458465, -0.756840, -0.465836,
		-0.882310, -0.324816, -0.340622,
		33.264153, 34.319836, 39.904572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446510, 34.401096, 40.721729>,  <33.881771, 34.547211, 40.143009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446510, 34.401096, 40.721729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579533, 34.285046, 40.362789>,  <34.659348, 34.215416, 40.147427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579533, 34.285046, 40.362789>,  <34.446510, 34.401096, 40.721729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579533, 34.285046, 40.362789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748769, -0.497257, 0.438269,
		-0.573366, -0.817655, 0.051873,
		0.332559, -0.290130, -0.897346,
		34.679302, 34.198006, 40.093586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455902, 33.696533, 40.609867>,  <34.446510, 34.401096, 40.721729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455902, 33.696533, 40.609867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751701, 33.877880, 40.410828>,  <34.929180, 33.986691, 40.291405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751701, 33.877880, 40.410828>,  <34.455902, 33.696533, 40.609867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751701, 33.877880, 40.410828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665072, -0.606320, 0.435953,
		-0.104055, -0.653323, -0.749894,
		0.739494, 0.453371, -0.497597,
		34.973549, 34.013893, 40.261547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980110, 33.238934, 40.615406>,  <34.455902, 33.696533, 40.609867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980110, 33.238934, 40.615406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192219, 33.539562, 40.458458>,  <35.319485, 33.719940, 40.364288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192219, 33.539562, 40.458458>,  <34.980110, 33.238934, 40.615406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192219, 33.539562, 40.458458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847812, -0.467441, 0.250427,
		0.004803, -0.465451, -0.885061,
		0.530275, 0.751568, -0.392370,
		35.351303, 33.765034, 40.340748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500031, 33.040291, 39.957161>,  <34.980110, 33.238934, 40.615406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500031, 33.040291, 39.957161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635769, 33.342251, 40.181652>,  <35.717213, 33.523426, 40.316345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635769, 33.342251, 40.181652>,  <35.500031, 33.040291, 39.957161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635769, 33.342251, 40.181652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832250, -0.519014, 0.194896,
		0.438409, 0.400941, -0.804390,
		0.339348, 0.754898, 0.561224,
		35.737572, 33.568722, 40.350018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301800, 33.091824, 39.814259>,  <35.500031, 33.040291, 39.957161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301800, 33.091824, 39.814259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231415, 33.304573, 40.145596>,  <36.189186, 33.432224, 40.344398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231415, 33.304573, 40.145596>,  <36.301800, 33.091824, 39.814259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231415, 33.304573, 40.145596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680462, -0.542341, 0.492786,
		0.711344, 0.650363, -0.266492,
		-0.175960, 0.531878, 0.828338,
		36.178627, 33.464138, 40.394096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950539, 33.454865, 39.975971>,  <36.301800, 33.091824, 39.814259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950539, 33.454865, 39.975971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731594, 33.415600, 40.308418>,  <36.600227, 33.392040, 40.507889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731594, 33.415600, 40.308418>,  <36.950539, 33.454865, 39.975971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731594, 33.415600, 40.308418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775728, -0.432205, 0.459831,
		0.314076, 0.896416, 0.312721,
		-0.547360, -0.098165, 0.831120,
		36.567387, 33.386150, 40.557755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453777, 33.470051, 40.544094>,  <36.950539, 33.454865, 39.975971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453777, 33.470051, 40.544094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117107, 33.358807, 40.729240>,  <36.915104, 33.292061, 40.840328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117107, 33.358807, 40.729240>,  <37.453777, 33.470051, 40.544094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117107, 33.358807, 40.729240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539983, -0.436874, 0.719416,
		0.002137, 0.855451, 0.517879,
		-0.841673, -0.278108, 0.462863,
		36.864605, 33.275375, 40.868099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460064, 33.746624, 41.159676>,  <37.453777, 33.470051, 40.544094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460064, 33.746624, 41.159676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209629, 33.436863, 41.196163>,  <37.059368, 33.251007, 41.218056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209629, 33.436863, 41.196163>,  <37.460064, 33.746624, 41.159676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209629, 33.436863, 41.196163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472992, -0.284172, 0.833982,
		-0.619914, 0.565289, 0.544201,
		-0.626087, -0.774399, 0.091215,
		37.021801, 33.204544, 41.223526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263145, 33.676041, 41.933342>,  <37.460064, 33.746624, 41.159676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263145, 33.676041, 41.933342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159981, 33.329887, 41.761482>,  <37.098083, 33.122196, 41.658367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159981, 33.329887, 41.761482>,  <37.263145, 33.676041, 41.933342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159981, 33.329887, 41.761482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111128, -0.468310, 0.876548,
		-0.959757, 0.178323, 0.216949,
		-0.257908, -0.865383, -0.429647,
		37.082607, 33.070274, 41.632587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702995, 33.326687, 42.298748>,  <37.263145, 33.676041, 41.933342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702995, 33.326687, 42.298748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912182, 33.051392, 42.097622>,  <37.037693, 32.886215, 41.976944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912182, 33.051392, 42.097622>,  <36.702995, 33.326687, 42.298748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912182, 33.051392, 42.097622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242094, -0.445684, 0.861833,
		-0.817248, -0.572441, -0.066459,
		0.522969, -0.688242, -0.502819,
		37.069073, 32.844917, 41.946777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531357, 32.709171, 42.620003>,  <36.702995, 33.326687, 42.298748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531357, 32.709171, 42.620003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878586, 32.648266, 42.431000>,  <37.086922, 32.611725, 42.317596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878586, 32.648266, 42.431000>,  <36.531357, 32.709171, 42.620003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878586, 32.648266, 42.431000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331193, -0.531403, 0.779694,
		-0.369809, -0.833323, -0.410870,
		0.868074, -0.152261, -0.472508,
		37.139008, 32.602589, 42.289246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631603, 32.004765, 42.665054>,  <36.531357, 32.709171, 42.620003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631603, 32.004765, 42.665054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991982, 32.138035, 42.553844>,  <37.208206, 32.217999, 42.487118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991982, 32.138035, 42.553844>,  <36.631603, 32.004765, 42.665054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991982, 32.138035, 42.553844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432789, -0.643247, 0.631607,
		0.031600, -0.689366, -0.723724,
		0.900941, 0.333179, -0.278023,
		37.262264, 32.237988, 42.470436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961430, 31.415751, 42.592033>,  <36.631603, 32.004765, 42.665054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961430, 31.415751, 42.592033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265842, 31.671724, 42.634571>,  <37.448490, 31.825310, 42.660091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265842, 31.671724, 42.634571>,  <36.961430, 31.415751, 42.592033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265842, 31.671724, 42.634571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352818, -0.545870, 0.759964,
		0.544377, -0.540840, -0.641207,
		0.761034, 0.639937, 0.106341,
		37.494152, 31.863705, 42.666473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482471, 30.984385, 42.702362>,  <36.961430, 31.415751, 42.592033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482471, 30.984385, 42.702362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626904, 31.328934, 42.845280>,  <37.713562, 31.535664, 42.931030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626904, 31.328934, 42.845280>,  <37.482471, 30.984385, 42.702362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626904, 31.328934, 42.845280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404210, -0.489848, 0.772440,
		0.840376, -0.134495, -0.525051,
		0.361084, 0.861371, 0.357292,
		37.735229, 31.587345, 42.952469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091171, 30.773224, 43.014328>,  <37.482471, 30.984385, 42.702362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091171, 30.773224, 43.014328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018326, 31.136538, 43.164986>,  <37.974621, 31.354527, 43.255379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018326, 31.136538, 43.164986>,  <38.091171, 30.773224, 43.014328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018326, 31.136538, 43.164986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387319, -0.285813, 0.876524,
		0.903781, 0.305503, -0.299746,
		-0.182109, 0.908284, 0.376639,
		37.963692, 31.409023, 43.277977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557682, 30.820717, 43.605648>,  <38.091171, 30.773224, 43.014328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557682, 30.820717, 43.605648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284637, 31.099632, 43.693130>,  <38.120811, 31.266981, 43.745621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284637, 31.099632, 43.693130>,  <38.557682, 30.820717, 43.605648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284637, 31.099632, 43.693130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018426, -0.282755, 0.959015,
		0.730547, 0.658666, 0.180164,
		-0.682613, 0.697286, 0.218702,
		38.079853, 31.308819, 43.758739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757725, 31.270327, 44.266571>,  <38.557682, 30.820717, 43.605648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757725, 31.270327, 44.266571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358185, 31.271582, 44.247410>,  <38.118462, 31.272335, 44.235912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358185, 31.271582, 44.247410>,  <38.757725, 31.270327, 44.266571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358185, 31.271582, 44.247410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047823, -0.151280, 0.987333,
		-0.004147, 0.988486, 0.151256,
		-0.998847, 0.003139, -0.047899,
		38.058529, 31.272524, 44.233040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573425, 31.571411, 44.905140>,  <38.757725, 31.270327, 44.266571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573425, 31.571411, 44.905140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233818, 31.407927, 44.771198>,  <38.030056, 31.309835, 44.690834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233818, 31.407927, 44.771198>,  <38.573425, 31.571411, 44.905140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233818, 31.407927, 44.771198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251472, -0.244800, 0.936394,
		-0.464687, 0.879220, 0.105060,
		-0.849016, -0.408710, -0.334855,
		37.979115, 31.285313, 44.670742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087879, 31.911482, 45.240284>,  <38.573425, 31.571411, 44.905140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087879, 31.911482, 45.240284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925228, 31.561756, 45.134285>,  <37.827637, 31.351921, 45.070686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925228, 31.561756, 45.134285>,  <38.087879, 31.911482, 45.240284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925228, 31.561756, 45.134285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418489, -0.079587, 0.904728,
		-0.812108, 0.478790, -0.333528,
		-0.406630, -0.874315, -0.265001,
		37.803238, 31.299461, 45.054783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374523, 31.990591, 45.317219>,  <38.087879, 31.911482, 45.240284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374523, 31.990591, 45.317219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419044, 31.593483, 45.335205>,  <37.445759, 31.355219, 45.345997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419044, 31.593483, 45.335205>,  <37.374523, 31.990591, 45.317219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419044, 31.593483, 45.335205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313759, 0.007827, 0.949470,
		-0.942956, -0.119789, -0.310619,
		0.111305, -0.992769, 0.044965,
		37.452435, 31.295652, 45.348694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881687, 31.756422, 45.815903>,  <37.374523, 31.990591, 45.317219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881687, 31.756422, 45.815903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107555, 31.427742, 45.785019>,  <37.243076, 31.230534, 45.766487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107555, 31.427742, 45.785019>,  <36.881687, 31.756422, 45.815903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107555, 31.427742, 45.785019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011166, -0.101149, 0.994809,
		-0.825243, -0.560875, -0.066291,
		0.564668, -0.821699, -0.077210,
		37.276955, 31.181232, 45.761856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508816, 31.235859, 46.250271>,  <36.881687, 31.756422, 45.815903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508816, 31.235859, 46.250271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882401, 31.100540, 46.204182>,  <37.106552, 31.019348, 46.176529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882401, 31.100540, 46.204182>,  <36.508816, 31.235859, 46.250271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882401, 31.100540, 46.204182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056169, -0.457353, 0.887510,
		-0.352940, -0.822425, -0.446151,
		0.933958, -0.338297, -0.115223,
		37.162586, 30.999050, 46.169613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551357, 30.556095, 46.436855>,  <36.508816, 31.235859, 46.250271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551357, 30.556095, 46.436855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928356, 30.677752, 46.492279>,  <37.154556, 30.750746, 46.525536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928356, 30.677752, 46.492279>,  <36.551357, 30.556095, 46.436855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928356, 30.677752, 46.492279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040116, -0.308640, 0.950332,
		0.331803, -0.901243, -0.278691,
		0.942496, 0.304143, 0.138562,
		37.211105, 30.768993, 46.533848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875374, 30.025534, 46.812397>,  <36.551357, 30.556095, 46.436855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875374, 30.025534, 46.812397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130184, 30.326176, 46.880848>,  <37.283070, 30.506561, 46.921917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130184, 30.326176, 46.880848>,  <36.875374, 30.025534, 46.812397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130184, 30.326176, 46.880848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005455, -0.217596, 0.976024,
		0.770822, -0.622688, -0.134515,
		0.637028, 0.751606, 0.171125,
		37.321293, 30.551657, 46.932186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480122, 29.710951, 47.138329>,  <36.875374, 30.025534, 46.812397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480122, 29.710951, 47.138329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443562, 30.097265, 47.235409>,  <37.421627, 30.329054, 47.293659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443562, 30.097265, 47.235409>,  <37.480122, 29.710951, 47.138329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443562, 30.097265, 47.235409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023171, -0.241594, 0.970101,
		0.995544, 0.094291, -0.000297,
		-0.091400, 0.965785, 0.242702,
		37.416142, 30.387001, 47.308220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889008, 29.827120, 47.809978>,  <37.480122, 29.710951, 47.138329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889008, 29.827120, 47.809978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696659, 30.177456, 47.793636>,  <37.581249, 30.387657, 47.783829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696659, 30.177456, 47.793636>,  <37.889008, 29.827120, 47.809978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696659, 30.177456, 47.793636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068541, 0.084007, 0.994105,
		0.874108, 0.475236, -0.100428,
		-0.480871, 0.875839, -0.040858,
		37.552399, 30.440208, 47.781380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239944, 30.235163, 48.410492>,  <37.889008, 29.827120, 47.809978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239944, 30.235163, 48.410492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925682, 30.464439, 48.317375>,  <37.737125, 30.602005, 48.261505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925682, 30.464439, 48.317375>,  <38.239944, 30.235163, 48.410492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925682, 30.464439, 48.317375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111160, 0.239367, 0.964545,
		0.608593, 0.783679, -0.124344,
		-0.785658, 0.573193, -0.232791,
		37.689983, 30.636396, 48.247540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352856, 30.929020, 48.582535>,  <38.239944, 30.235163, 48.410492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352856, 30.929020, 48.582535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959152, 30.858351, 48.584312>,  <37.722931, 30.815948, 48.585377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959152, 30.858351, 48.584312>,  <38.352856, 30.929020, 48.582535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959152, 30.858351, 48.584312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090777, 0.526970, 0.845022,
		-0.151633, 0.831318, -0.534713,
		-0.984260, -0.176672, 0.004442,
		37.663876, 30.805349, 48.585644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030724, 31.604473, 48.704674>,  <38.352856, 30.929020, 48.582535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030724, 31.604473, 48.704674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778259, 31.312382, 48.809284>,  <37.626781, 31.137127, 48.872051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778259, 31.312382, 48.809284>,  <38.030724, 31.604473, 48.704674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778259, 31.312382, 48.809284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174922, 0.462486, 0.869200,
		-0.755667, 0.502862, -0.419638,
		-0.631165, -0.730230, 0.261524,
		37.588909, 31.093313, 48.887741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470985, 31.985620, 48.946217>,  <38.030724, 31.604473, 48.704674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470985, 31.985620, 48.946217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443420, 31.620300, 49.106781>,  <37.426880, 31.401108, 49.203121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443420, 31.620300, 49.106781>,  <37.470985, 31.985620, 48.946217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443420, 31.620300, 49.106781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243361, 0.405604, 0.881057,
		-0.967485, -0.036973, -0.250212,
		-0.068912, -0.913301, 0.401414,
		37.422749, 31.346310, 49.227203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850849, 31.925268, 49.335842>,  <37.470985, 31.985620, 48.946217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850849, 31.925268, 49.335842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077545, 31.630650, 49.483521>,  <37.213562, 31.453878, 49.572128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077545, 31.630650, 49.483521>,  <36.850849, 31.925268, 49.335842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077545, 31.630650, 49.483521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152835, 0.346350, 0.925572,
		-0.809596, -0.580986, 0.083721,
		0.566741, -0.736544, 0.369199,
		37.247566, 31.409687, 49.594280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573597, 31.770494, 49.964294>,  <36.850849, 31.925268, 49.335842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573597, 31.770494, 49.964294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935982, 31.605574, 50.002754>,  <37.153412, 31.506620, 50.025829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935982, 31.605574, 50.002754>,  <36.573597, 31.770494, 49.964294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935982, 31.605574, 50.002754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078534, 0.386822, 0.918804,
		-0.416016, -0.824849, 0.382825,
		0.905960, -0.412302, 0.096145,
		37.207771, 31.481882, 50.031597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555542, 31.667160, 50.713070>,  <36.573597, 31.770494, 49.964294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555542, 31.667160, 50.713070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934010, 31.618422, 50.593124>,  <37.161091, 31.589178, 50.521156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934010, 31.618422, 50.593124>,  <36.555542, 31.667160, 50.713070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934010, 31.618422, 50.593124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322516, 0.276713, 0.905214,
		-0.027322, -0.953196, 0.301115,
		0.946169, -0.121847, -0.299860,
		37.217861, 31.581867, 50.503166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986179, 31.074354, 51.141087>,  <36.555542, 31.667160, 50.713070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986179, 31.074354, 51.141087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223347, 31.364567, 51.001343>,  <37.365646, 31.538694, 50.917496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223347, 31.364567, 51.001343>,  <36.986179, 31.074354, 51.141087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223347, 31.364567, 51.001343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176119, 0.306507, 0.935433,
		0.785768, -0.616163, 0.053954,
		0.592917, 0.725531, -0.349362,
		37.401222, 31.582226, 50.896534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594002, 31.012625, 51.521275>,  <36.986179, 31.074354, 51.141087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594002, 31.012625, 51.521275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597065, 31.387392, 51.381489>,  <37.598904, 31.612253, 51.297619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597065, 31.387392, 51.381489>,  <37.594002, 31.012625, 51.521275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597065, 31.387392, 51.381489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353148, 0.324423, 0.877516,
		0.935536, -0.130130, -0.328388,
		0.007654, 0.936918, -0.349465,
		37.599361, 31.668467, 51.276649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952675, 31.298841, 52.002285>,  <37.594002, 31.012625, 51.521275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952675, 31.298841, 52.002285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802673, 31.617493, 51.812653>,  <37.712673, 31.808683, 51.698872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802673, 31.617493, 51.812653>,  <37.952675, 31.298841, 52.002285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802673, 31.617493, 51.812653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068319, 0.533760, 0.842872,
		0.924502, 0.283693, -0.254587,
		-0.375005, 0.796630, -0.474080,
		37.690170, 31.856482, 51.670429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453659, 31.848780, 52.030479>,  <37.952675, 31.298841, 52.002285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453659, 31.848780, 52.030479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108410, 32.040127, 51.965755>,  <37.901260, 32.154934, 51.926922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108410, 32.040127, 51.965755>,  <38.453659, 31.848780, 52.030479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108410, 32.040127, 51.965755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225342, 0.651588, 0.724330,
		0.451926, 0.588725, -0.670198,
		-0.863124, 0.478367, -0.161805,
		37.849472, 32.183636, 51.917213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596161, 32.617249, 51.903481>,  <38.453659, 31.848780, 52.030479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596161, 32.617249, 51.903481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213570, 32.582775, 52.014992>,  <37.984013, 32.562092, 52.081898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213570, 32.582775, 52.014992>,  <38.596161, 32.617249, 51.903481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213570, 32.582775, 52.014992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170686, 0.609631, 0.774091,
		-0.236668, 0.787986, -0.568389,
		-0.956480, -0.086187, 0.278778,
		37.926624, 32.556919, 52.098625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470848, 33.353550, 52.112411>,  <38.596161, 32.617249, 51.903481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470848, 33.353550, 52.112411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210854, 33.105984, 52.288799>,  <38.054855, 32.957443, 52.394630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210854, 33.105984, 52.288799>,  <38.470848, 33.353550, 52.112411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210854, 33.105984, 52.288799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081893, 0.519842, 0.850328,
		-0.755517, 0.588817, -0.287207,
		-0.649990, -0.618917, 0.440969,
		38.015858, 32.920307, 52.421089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100456, 33.112988, 52.446259>,  <38.470848, 33.353550, 52.112411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100456, 33.112988, 52.446259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438740, 33.024147, 52.640347>,  <39.641712, 32.970840, 52.756802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438740, 33.024147, 52.640347>,  <39.100456, 33.112988, 52.446259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438740, 33.024147, 52.640347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477997, -0.088972, -0.873844,
		0.237255, 0.970955, 0.030920,
		0.845712, -0.222104, 0.485222,
		39.692455, 32.957516, 52.785912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596474, 33.608826, 52.230949>,  <39.100456, 33.112988, 52.446259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596474, 33.608826, 52.230949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780365, 33.275505, 52.353752>,  <39.890701, 33.075512, 52.427433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780365, 33.275505, 52.353752>,  <39.596474, 33.608826, 52.230949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780365, 33.275505, 52.353752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534940, -0.016093, -0.844737,
		0.708864, 0.552579, 0.438370,
		0.459729, -0.833305, 0.307004,
		39.918285, 33.025513, 52.445854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248573, 33.715611, 51.948582>,  <39.596474, 33.608826, 52.230949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248573, 33.715611, 51.948582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250603, 33.326214, 52.040043>,  <40.251820, 33.092575, 52.094917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250603, 33.326214, 52.040043>,  <40.248573, 33.715611, 51.948582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250603, 33.326214, 52.040043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654595, -0.169621, -0.736704,
		0.755962, 0.153410, 0.636385,
		0.005073, -0.973496, 0.228649,
		40.252125, 33.034164, 52.108639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879044, 33.591858, 51.971809>,  <40.248573, 33.715611, 51.948582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879044, 33.591858, 51.971809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690411, 33.245293, 51.906162>,  <40.577232, 33.037354, 51.866776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690411, 33.245293, 51.906162>,  <40.879044, 33.591858, 51.971809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690411, 33.245293, 51.906162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570278, -0.157693, -0.806174,
		0.672603, -0.473766, 0.568463,
		-0.471580, -0.866417, -0.164114,
		40.548935, 32.985367, 51.856930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337955, 33.179043, 51.724529>,  <40.879044, 33.591858, 51.971809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337955, 33.179043, 51.724529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006512, 32.999969, 51.590069>,  <40.807648, 32.892525, 51.509392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006512, 32.999969, 51.590069>,  <41.337955, 33.179043, 51.724529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006512, 32.999969, 51.590069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449317, -0.173622, -0.876339,
		0.333956, -0.877177, 0.345014,
		-0.828606, -0.447679, -0.336148,
		40.757931, 32.865665, 51.489223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551231, 32.808071, 51.176941>,  <41.337955, 33.179043, 51.724529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551231, 32.808071, 51.176941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158257, 32.767391, 51.114357>,  <40.922474, 32.742981, 51.076805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158257, 32.767391, 51.114357>,  <41.551231, 32.808071, 51.176941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158257, 32.767391, 51.114357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177167, -0.245017, -0.953194,
		0.058609, -0.964169, 0.258732,
		-0.982434, -0.101704, -0.156459,
		40.863525, 32.736881, 51.067421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537136, 32.182247, 50.903645>,  <41.551231, 32.808071, 51.176941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537136, 32.182247, 50.903645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203751, 32.374939, 50.795368>,  <41.003719, 32.490555, 50.730404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203751, 32.374939, 50.795368>,  <41.537136, 32.182247, 50.903645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203751, 32.374939, 50.795368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155502, -0.265597, -0.951461,
		-0.530242, -0.835101, 0.146455,
		-0.833464, 0.481730, -0.270690,
		40.953712, 32.519459, 50.714161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187927, 31.754248, 50.428024>,  <41.537136, 32.182247, 50.903645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187927, 31.754248, 50.428024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021912, 32.108433, 50.344410>,  <40.922302, 32.320946, 50.294243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021912, 32.108433, 50.344410>,  <41.187927, 31.754248, 50.428024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021912, 32.108433, 50.344410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106375, -0.180952, -0.977722,
		-0.903563, -0.428029, -0.019089,
		-0.415040, 0.885465, -0.209033,
		40.897400, 32.374073, 50.281700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758926, 31.680250, 49.923195>,  <41.187927, 31.754248, 50.428024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758926, 31.680250, 49.923195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832706, 32.072075, 49.891102>,  <40.876976, 32.307171, 49.871845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832706, 32.072075, 49.891102>,  <40.758926, 31.680250, 49.923195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832706, 32.072075, 49.891102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083832, -0.097021, -0.991745,
		-0.979260, 0.176204, -0.100014,
		0.184453, 0.979561, -0.080237,
		40.888042, 32.365944, 49.867031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371616, 31.906755, 49.358444>,  <40.758926, 31.680250, 49.923195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371616, 31.906755, 49.358444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627731, 32.212448, 49.389393>,  <40.781399, 32.395863, 49.407963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627731, 32.212448, 49.389393>,  <40.371616, 31.906755, 49.358444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627731, 32.212448, 49.389393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088586, 0.173516, -0.980839,
		-0.763011, 0.621164, 0.178800,
		0.640286, 0.764230, 0.077368,
		40.819817, 32.441715, 49.412601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118389, 32.391853, 48.829079>,  <40.371616, 31.906755, 49.358444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118389, 32.391853, 48.829079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496304, 32.503685, 48.897449>,  <40.723053, 32.570786, 48.938473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496304, 32.503685, 48.897449>,  <40.118389, 32.391853, 48.829079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496304, 32.503685, 48.897449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101933, 0.244984, -0.964154,
		-0.311432, 0.928341, 0.202959,
		0.944785, 0.279580, 0.170925,
		40.779739, 32.587559, 48.948727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153591, 33.091660, 48.697483>,  <40.118389, 32.391853, 48.829079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153591, 33.091660, 48.697483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531063, 32.959354, 48.694153>,  <40.757545, 32.879971, 48.692154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531063, 32.959354, 48.694153>,  <40.153591, 33.091660, 48.697483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531063, 32.959354, 48.694153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057360, 0.188327, -0.980430,
		0.325860, 0.924731, 0.196692,
		0.943677, -0.330765, -0.008326,
		40.814167, 32.860126, 48.691654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518196, 33.494102, 48.375782>,  <40.153591, 33.091660, 48.697483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518196, 33.494102, 48.375782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760715, 33.178028, 48.339993>,  <40.906227, 32.988384, 48.318520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760715, 33.178028, 48.339993>,  <40.518196, 33.494102, 48.375782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760715, 33.178028, 48.339993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141894, 0.218196, -0.965534,
		0.782475, 0.572707, 0.244414,
		0.606299, -0.790188, -0.089469,
		40.942604, 32.940971, 48.313152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025097, 33.655861, 47.905773>,  <40.518196, 33.494102, 48.375782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025097, 33.655861, 47.905773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023918, 33.255970, 47.915058>,  <41.023212, 33.016037, 47.920628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023918, 33.255970, 47.915058>,  <41.025097, 33.655861, 47.905773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023918, 33.255970, 47.915058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138677, -0.023396, -0.990062,
		0.990333, 0.000302, 0.138707,
		-0.002947, -0.999726, 0.023212,
		41.023033, 32.956051, 47.922020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514668, 33.542110, 47.406590>,  <41.025097, 33.655861, 47.905773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514668, 33.542110, 47.406590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281761, 33.217556, 47.427094>,  <41.142017, 33.022823, 47.439396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281761, 33.217556, 47.427094>,  <41.514668, 33.542110, 47.406590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281761, 33.217556, 47.427094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078922, -0.006344, -0.996861,
		0.809161, -0.584481, -0.060342,
		-0.582263, -0.811383, 0.051262,
		41.107082, 32.974140, 47.442471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783188, 33.161324, 46.769024>,  <41.514668, 33.542110, 47.406590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783188, 33.161324, 46.769024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445827, 32.965172, 46.856838>,  <41.243412, 32.847481, 46.909527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445827, 32.965172, 46.856838>,  <41.783188, 33.161324, 46.769024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445827, 32.965172, 46.856838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295014, 0.081185, -0.952038,
		0.449039, -0.867718, -0.213142,
		-0.843404, -0.490382, 0.219533,
		41.192806, 32.818058, 46.922699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706337, 32.758457, 46.178474>,  <41.783188, 33.161324, 46.769024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706337, 32.758457, 46.178474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348423, 32.775383, 46.356274>,  <41.133675, 32.785538, 46.462952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348423, 32.775383, 46.356274>,  <41.706337, 32.758457, 46.178474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348423, 32.775383, 46.356274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443446, 0.032087, -0.895726,
		-0.052173, -0.998589, -0.009943,
		-0.894781, 0.042324, 0.444494,
		41.079990, 32.788078, 46.489620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323940, 32.071766, 46.106514>,  <41.706337, 32.758457, 46.178474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323940, 32.071766, 46.106514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073112, 32.381310, 46.142120>,  <40.922615, 32.567036, 46.163483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073112, 32.381310, 46.142120>,  <41.323940, 32.071766, 46.106514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073112, 32.381310, 46.142120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280601, -0.117807, -0.952567,
		-0.726670, -0.622300, 0.291020,
		-0.627067, 0.773863, 0.089011,
		40.884991, 32.613468, 46.168823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798950, 32.025352, 45.485226>,  <41.323940, 32.071766, 46.106514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798950, 32.025352, 45.485226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698383, 32.388672, 45.618958>,  <40.638042, 32.606663, 45.699196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698383, 32.388672, 45.618958>,  <40.798950, 32.025352, 45.485226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698383, 32.388672, 45.618958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447523, 0.197192, -0.872260,
		-0.858203, -0.368922, 0.356909,
		-0.251416, 0.908302, 0.334332,
		40.622959, 32.661163, 45.719257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146111, 32.162609, 45.205822>,  <40.798950, 32.025352, 45.485226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146111, 32.162609, 45.205822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307758, 32.517559, 45.294594>,  <40.404747, 32.730530, 45.347858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307758, 32.517559, 45.294594>,  <40.146111, 32.162609, 45.205822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307758, 32.517559, 45.294594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483911, 0.413299, -0.771371,
		-0.776221, 0.204329, 0.596432,
		0.404118, 0.887375, 0.221934,
		40.428993, 32.783772, 45.361176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609901, 32.555405, 45.191383>,  <40.146111, 32.162609, 45.205822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609901, 32.555405, 45.191383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921951, 32.804745, 45.170086>,  <40.109180, 32.954350, 45.157307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921951, 32.804745, 45.170086>,  <39.609901, 32.555405, 45.191383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921951, 32.804745, 45.170086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450997, 0.501354, -0.738407,
		-0.433594, 0.600064, 0.672250,
		0.780127, 0.623351, -0.053243,
		40.155991, 32.991749, 45.154114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339478, 33.196747, 45.288265>,  <39.609901, 32.555405, 45.191383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339478, 33.196747, 45.288265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694813, 33.262115, 45.116615>,  <39.908012, 33.301338, 45.013626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694813, 33.262115, 45.116615>,  <39.339478, 33.196747, 45.288265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694813, 33.262115, 45.116615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451560, 0.480602, -0.751742,
		0.083387, 0.861577, 0.500732,
		0.888336, 0.163425, -0.429129,
		39.961315, 33.311142, 44.987877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274872, 33.831146, 44.923225>,  <39.339478, 33.196747, 45.288265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274872, 33.831146, 44.923225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593182, 33.679955, 44.733967>,  <39.784168, 33.589237, 44.620411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593182, 33.679955, 44.733967>,  <39.274872, 33.831146, 44.923225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593182, 33.679955, 44.733967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443813, 0.167569, -0.880313,
		0.412028, 0.910521, -0.034406,
		0.795778, -0.377983, -0.473144,
		39.831917, 33.566559, 44.592022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407322, 34.295025, 44.422661>,  <39.274872, 33.831146, 44.923225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407322, 34.295025, 44.422661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625240, 33.987972, 44.287640>,  <39.755989, 33.803741, 44.206627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625240, 33.987972, 44.287640>,  <39.407322, 34.295025, 44.422661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625240, 33.987972, 44.287640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347002, 0.160085, -0.924101,
		0.763408, 0.620573, -0.179157,
		0.544791, -0.767634, -0.337551,
		39.788677, 33.757683, 44.186375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839149, 34.443279, 43.743145>,  <39.407322, 34.295025, 44.422661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839149, 34.443279, 43.743145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824383, 34.043827, 43.728359>,  <39.815521, 33.804153, 43.719490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824383, 34.043827, 43.728359>,  <39.839149, 34.443279, 43.743145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824383, 34.043827, 43.728359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151927, 0.042166, -0.987492,
		0.987702, -0.030842, -0.153276,
		-0.036919, -0.998635, -0.036962,
		39.813309, 33.744236, 43.717270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238903, 34.241402, 43.044498>,  <39.839149, 34.443279, 43.743145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238903, 34.241402, 43.044498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023411, 33.921844, 43.151493>,  <39.894115, 33.730110, 43.215691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023411, 33.921844, 43.151493>,  <40.238903, 34.241402, 43.044498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023411, 33.921844, 43.151493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121625, -0.240422, -0.963018,
		0.833655, -0.551337, 0.032357,
		-0.538727, -0.798890, 0.267485,
		39.861794, 33.682178, 43.231739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541405, 33.748909, 42.726074>,  <40.238903, 34.241402, 43.044498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541405, 33.748909, 42.726074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173969, 33.611469, 42.804188>,  <39.953506, 33.529007, 42.851055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173969, 33.611469, 42.804188>,  <40.541405, 33.748909, 42.726074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173969, 33.611469, 42.804188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104643, -0.265026, -0.958546,
		0.381110, -0.900944, 0.207495,
		-0.918589, -0.343599, 0.195282,
		39.898392, 33.508389, 42.862774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474693, 33.174824, 42.265121>,  <40.541405, 33.748909, 42.726074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474693, 33.174824, 42.265121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119659, 33.321880, 42.376141>,  <39.906639, 33.410114, 42.442753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119659, 33.321880, 42.376141>,  <40.474693, 33.174824, 42.265121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119659, 33.321880, 42.376141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337866, -0.110039, -0.934739,
		-0.313109, -0.923434, 0.221883,
		-0.887586, 0.367642, 0.277543,
		39.853382, 33.432171, 42.459404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923000, 32.672169, 41.975361>,  <40.474693, 33.174824, 42.265121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923000, 32.672169, 41.975361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768608, 33.033115, 42.052052>,  <39.675972, 33.249683, 42.098068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768608, 33.033115, 42.052052>,  <39.923000, 32.672169, 41.975361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768608, 33.033115, 42.052052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183169, 0.128733, -0.974616,
		-0.904140, -0.411302, 0.115596,
		-0.385980, 0.902363, 0.191731,
		39.652813, 33.303825, 42.109570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281933, 32.717716, 41.536957>,  <39.923000, 32.672169, 41.975361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281933, 32.717716, 41.536957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325024, 33.102890, 41.635880>,  <39.350880, 33.333992, 41.695232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325024, 33.102890, 41.635880>,  <39.281933, 32.717716, 41.536957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325024, 33.102890, 41.635880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088818, 0.257080, -0.962300,
		-0.990205, 0.081704, 0.113221,
		0.107731, 0.962930, 0.247305,
		39.357342, 33.391769, 41.710072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729588, 33.179489, 41.177170>,  <39.281933, 32.717716, 41.536957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729588, 33.179489, 41.177170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042091, 33.413620, 41.263908>,  <39.229595, 33.554100, 41.315952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042091, 33.413620, 41.263908>,  <38.729588, 33.179489, 41.177170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042091, 33.413620, 41.263908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009044, 0.357968, -0.933690,
		-0.624138, 0.727496, 0.284960,
		0.781262, 0.585328, 0.216842,
		39.276470, 33.589218, 41.328960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461315, 33.930244, 40.982727>,  <38.729588, 33.179489, 41.177170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461315, 33.930244, 40.982727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860836, 33.943039, 40.997585>,  <39.100548, 33.950718, 41.006500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860836, 33.943039, 40.997585>,  <38.461315, 33.930244, 40.982727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860836, 33.943039, 40.997585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016646, 0.491401, -0.870774,
		-0.046109, 0.870346, 0.490278,
		0.998798, 0.031990, 0.037146,
		39.160477, 33.952637, 41.008728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624725, 34.635075, 40.792290>,  <38.461315, 33.930244, 40.982727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624725, 34.635075, 40.792290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945797, 34.405811, 40.726318>,  <39.138439, 34.268253, 40.686733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945797, 34.405811, 40.726318>,  <38.624725, 34.635075, 40.792290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945797, 34.405811, 40.726318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260894, 0.586106, -0.767082,
		0.536324, 0.572690, 0.619987,
		0.802678, -0.573155, -0.164931,
		39.186600, 34.233864, 40.676838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160400, 35.063572, 40.745522>,  <38.624725, 34.635075, 40.792290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160400, 35.063572, 40.745522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316746, 34.741379, 40.567345>,  <39.410553, 34.548061, 40.460438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316746, 34.741379, 40.567345>,  <39.160400, 35.063572, 40.745522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316746, 34.741379, 40.567345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340482, 0.576140, -0.743058,
		0.855160, 0.138768, 0.499444,
		0.390863, -0.805485, -0.445444,
		39.434006, 34.499733, 40.433712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875523, 35.275135, 40.661896>,  <39.160400, 35.063572, 40.745522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875523, 35.275135, 40.661896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810387, 34.945469, 40.444923>,  <39.771305, 34.747669, 40.314739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810387, 34.945469, 40.444923>,  <39.875523, 35.275135, 40.661896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810387, 34.945469, 40.444923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509259, 0.400668, -0.761656,
		0.845067, -0.400269, 0.354467,
		-0.162844, -0.824166, -0.542431,
		39.761532, 34.698219, 40.282192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462887, 35.184319, 40.399162>,  <39.875523, 35.275135, 40.661896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462887, 35.184319, 40.399162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190704, 35.002792, 40.169022>,  <40.027393, 34.893875, 40.030937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190704, 35.002792, 40.169022>,  <40.462887, 35.184319, 40.399162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190704, 35.002792, 40.169022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320026, 0.522284, -0.790444,
		0.659216, -0.721989, -0.210157,
		-0.680454, -0.453818, -0.575354,
		39.986568, 34.866646, 39.996414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803196, 35.018387, 39.772038>,  <40.462887, 35.184319, 40.399162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803196, 35.018387, 39.772038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418671, 35.016899, 39.661869>,  <40.187954, 35.016006, 39.595768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418671, 35.016899, 39.661869>,  <40.803196, 35.018387, 39.772038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418671, 35.016899, 39.661869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241358, 0.470450, -0.848778,
		0.132728, -0.882419, -0.451354,
		-0.961317, -0.003719, -0.275421,
		40.130276, 35.015781, 39.579243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748013, 34.690174, 39.036221>,  <40.803196, 35.018387, 39.772038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748013, 34.690174, 39.036221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426697, 34.921387, 39.093643>,  <40.233910, 35.060116, 39.128098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426697, 34.921387, 39.093643>,  <40.748013, 34.690174, 39.036221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426697, 34.921387, 39.093643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185985, 0.472424, -0.861525,
		-0.565809, -0.665352, -0.486998,
		-0.803287, 0.578033, 0.143557,
		40.185711, 35.094795, 39.136711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477081, 34.774063, 38.428169>,  <40.748013, 34.690174, 39.036221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477081, 34.774063, 38.428169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287460, 35.078495, 38.605270>,  <40.173687, 35.261154, 38.711533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287460, 35.078495, 38.605270>,  <40.477081, 34.774063, 38.428169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287460, 35.078495, 38.605270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030156, 0.516583, -0.855706,
		-0.879980, -0.392297, -0.267838,
		-0.474052, 0.761081, 0.442753,
		40.145245, 35.306820, 38.738094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958927, 35.045269, 37.885624>,  <40.477081, 34.774063, 38.428169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958927, 35.045269, 37.885624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004890, 35.359577, 38.128723>,  <40.032467, 35.548161, 38.274582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004890, 35.359577, 38.128723>,  <39.958927, 35.045269, 37.885624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004890, 35.359577, 38.128723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057944, 0.616062, -0.785563,
		-0.991685, 0.055051, 0.116320,
		0.114907, 0.785771, 0.607750,
		40.039364, 35.595310, 38.311047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470016, 35.650658, 37.585670>,  <39.958927, 35.045269, 37.885624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470016, 35.650658, 37.585670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789974, 35.755203, 37.801765>,  <39.981949, 35.817932, 37.931423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789974, 35.755203, 37.801765>,  <39.470016, 35.650658, 37.585670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789974, 35.755203, 37.801765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272102, 0.644402, -0.714638,
		-0.534912, 0.718634, 0.444335,
		0.799893, 0.261364, 0.540240,
		40.029942, 35.833614, 37.963837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455803, 36.358803, 37.807587>,  <39.470016, 35.650658, 37.585670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455803, 36.358803, 37.807587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799488, 36.186775, 37.696732>,  <40.005699, 36.083561, 37.630219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799488, 36.186775, 37.696732>,  <39.455803, 36.358803, 37.807587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799488, 36.186775, 37.696732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086963, 0.656560, -0.749244,
		0.504181, 0.619656, 0.601522,
		0.859208, -0.430064, -0.277138,
		40.057251, 36.057755, 37.613590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947937, 36.900280, 37.625610>,  <39.455803, 36.358803, 37.807587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947937, 36.900280, 37.625610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008816, 36.557899, 37.427948>,  <40.045345, 36.352470, 37.309353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008816, 36.557899, 37.427948>,  <39.947937, 36.900280, 37.625610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008816, 36.557899, 37.427948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358236, 0.513756, -0.779565,
		0.921142, -0.058374, 0.384825,
		0.152200, -0.855949, -0.494153,
		40.054474, 36.301113, 37.279701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587151, 37.028297, 37.237911>,  <39.947937, 36.900280, 37.625610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587151, 37.028297, 37.237911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395435, 36.716915, 37.075779>,  <40.280407, 36.530087, 36.978500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395435, 36.716915, 37.075779>,  <40.587151, 37.028297, 37.237911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395435, 36.716915, 37.075779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248796, 0.322383, -0.913329,
		0.841657, -0.538591, 0.039163,
		-0.479285, -0.778453, -0.405335,
		40.251648, 36.483379, 36.954178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022667, 36.756821, 36.770721>,  <40.587151, 37.028297, 37.237911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022667, 36.756821, 36.770721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650970, 36.646835, 36.672005>,  <40.427952, 36.580845, 36.612774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650970, 36.646835, 36.672005>,  <41.022667, 36.756821, 36.770721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650970, 36.646835, 36.672005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187914, 0.223407, -0.956440,
		0.318125, -0.935138, -0.155929,
		-0.929239, -0.274966, -0.246796,
		40.372200, 36.564346, 36.597965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051270, 36.203094, 36.295105>,  <41.022667, 36.756821, 36.770721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051270, 36.203094, 36.295105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724430, 36.432034, 36.267509>,  <40.528324, 36.569397, 36.250950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724430, 36.432034, 36.267509>,  <41.051270, 36.203094, 36.295105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724430, 36.432034, 36.267509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231523, 0.216194, -0.948503,
		-0.527961, -0.790996, -0.309165,
		-0.817101, 0.572351, -0.068991,
		40.479301, 36.603737, 36.246811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840294, 36.217197, 35.602222>,  <41.051270, 36.203094, 36.295105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840294, 36.217197, 35.602222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708916, 36.574280, 35.725643>,  <40.630089, 36.788528, 35.799694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708916, 36.574280, 35.725643>,  <40.840294, 36.217197, 35.602222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708916, 36.574280, 35.725643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355047, 0.419406, -0.835488,
		-0.875251, -0.164863, -0.454704,
		-0.328447, 0.892703, 0.308551,
		40.610382, 36.842091, 35.818207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379112, 36.216328, 35.040340>,  <40.840294, 36.217197, 35.602222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379112, 36.216328, 35.040340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775700, 36.203133, 34.989902>,  <41.013653, 36.195213, 34.959641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775700, 36.203133, 34.989902>,  <40.379112, 36.216328, 35.040340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775700, 36.203133, 34.989902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088364, -0.881296, -0.464229,
		-0.095813, 0.471411, -0.876693,
		0.991469, -0.032989, -0.126095,
		41.073139, 36.193237, 34.952072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479610, 35.963348, 34.478546>,  <40.379112, 36.216328, 35.040340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479610, 35.963348, 34.478546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860619, 35.888008, 34.574230>,  <41.089226, 35.842804, 34.631641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860619, 35.888008, 34.574230>,  <40.479610, 35.963348, 34.478546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860619, 35.888008, 34.574230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057435, -0.882732, -0.466353,
		0.298999, 0.430473, -0.851641,
		0.952523, -0.188353, 0.239211,
		41.146378, 35.831501, 34.645992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783669, 35.743122, 33.884216>,  <40.479610, 35.963348, 34.478546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783669, 35.743122, 33.884216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987057, 35.608994, 34.201462>,  <41.109089, 35.528519, 34.391808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987057, 35.608994, 34.201462>,  <40.783669, 35.743122, 33.884216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987057, 35.608994, 34.201462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207285, -0.941642, -0.265224,
		0.835760, -0.029542, -0.548299,
		0.508466, -0.335318, 0.793110,
		41.139595, 35.508400, 34.439396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366989, 35.455776, 33.651043>,  <40.783669, 35.743122, 33.884216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366989, 35.455776, 33.651043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305637, 35.275532, 34.002819>,  <41.268826, 35.167385, 34.213886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305637, 35.275532, 34.002819>,  <41.366989, 35.455776, 33.651043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305637, 35.275532, 34.002819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111891, -0.892172, -0.437618,
		0.981812, 0.031279, 0.187263,
		-0.153383, -0.450612, 0.879445,
		41.259621, 35.140347, 34.266651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789017, 34.885235, 33.623230>,  <41.366989, 35.455776, 33.651043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789017, 34.885235, 33.623230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570549, 34.788422, 33.944012>,  <41.439468, 34.730335, 34.136478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570549, 34.788422, 33.944012>,  <41.789017, 34.885235, 33.623230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570549, 34.788422, 33.944012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057069, -0.944374, -0.323885,
		0.835732, -0.222661, 0.501971,
		-0.546165, -0.242034, 0.801950,
		41.406700, 34.715813, 34.184597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038891, 34.246567, 33.880318>,  <41.789017, 34.885235, 33.623230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038891, 34.246567, 33.880318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671501, 34.247162, 34.038513>,  <41.451069, 34.247520, 34.133430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671501, 34.247162, 34.038513>,  <42.038891, 34.246567, 33.880318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671501, 34.247162, 34.038513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057689, -0.989802, -0.130246,
		0.391262, -0.142442, 0.909189,
		-0.918470, 0.001489, 0.395489,
		41.395962, 34.247608, 34.157162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977448, 33.585323, 34.347973>,  <42.038891, 34.246567, 33.880318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977448, 33.585323, 34.347973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602699, 33.676079, 34.241539>,  <41.377850, 33.730530, 34.177681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602699, 33.676079, 34.241539>,  <41.977448, 33.585323, 34.347973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602699, 33.676079, 34.241539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178140, -0.964458, -0.195157,
		-0.300902, -0.135437, 0.943989,
		-0.936869, 0.226886, -0.266081,
		41.321640, 33.744144, 34.161716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623203, 33.054638, 34.687950>,  <41.977448, 33.585323, 34.347973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623203, 33.054638, 34.687950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387581, 33.205063, 34.401848>,  <41.246208, 33.295319, 34.230186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387581, 33.205063, 34.401848>,  <41.623203, 33.054638, 34.687950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387581, 33.205063, 34.401848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262406, -0.926167, -0.270845,
		-0.764298, 0.028143, 0.644249,
		-0.589060, 0.376061, -0.715252,
		41.210861, 33.317883, 34.187271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979523, 32.603561, 34.678417>,  <41.623203, 33.054638, 34.687950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979523, 32.603561, 34.678417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978458, 32.798744, 34.329273>,  <40.977818, 32.915855, 34.119785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978458, 32.798744, 34.329273>,  <40.979523, 32.603561, 34.678417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978458, 32.798744, 34.329273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411705, -0.795993, -0.443725,
		-0.911313, 0.358181, 0.203015,
		-0.002665, 0.487955, -0.872864,
		40.977657, 32.945129, 34.067413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279541, 32.460781, 34.414627>,  <40.979523, 32.603561, 34.678417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279541, 32.460781, 34.414627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525158, 32.563160, 34.115978>,  <40.672527, 32.624588, 33.936790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525158, 32.563160, 34.115978>,  <40.279541, 32.460781, 34.414627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525158, 32.563160, 34.115978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376471, -0.736438, -0.562075,
		-0.693705, 0.626217, -0.355844,
		0.614038, 0.255950, -0.746623,
		40.709370, 32.639946, 33.891991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949074, 32.377815, 33.774071>,  <40.279541, 32.460781, 34.414627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949074, 32.377815, 33.774071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320976, 32.385952, 33.627029>,  <40.544117, 32.390835, 33.538803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320976, 32.385952, 33.627029>,  <39.949074, 32.377815, 33.774071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320976, 32.385952, 33.627029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266113, -0.652874, -0.709182,
		-0.254427, 0.757193, -0.601603,
		0.929758, 0.020341, -0.367607,
		40.599903, 32.392056, 33.516747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891502, 32.295135, 32.975109>,  <39.949074, 32.377815, 33.774071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891502, 32.295135, 32.975109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272469, 32.213348, 33.065525>,  <40.501049, 32.164276, 33.119774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272469, 32.213348, 33.065525>,  <39.891502, 32.295135, 32.975109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272469, 32.213348, 33.065525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055480, -0.612911, -0.788202,
		0.299707, 0.763237, -0.572403,
		0.952417, -0.204472, 0.226038,
		40.558193, 32.152008, 33.133335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277184, 32.355835, 32.337208>,  <39.891502, 32.295135, 32.975109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277184, 32.355835, 32.337208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485733, 32.114079, 32.578167>,  <40.610863, 31.969025, 32.722744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485733, 32.114079, 32.578167>,  <40.277184, 32.355835, 32.337208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485733, 32.114079, 32.578167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178216, -0.613251, -0.769520,
		0.834512, 0.508564, -0.212020,
		0.521372, -0.604389, 0.602400,
		40.642143, 31.932762, 32.758888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741356, 32.082397, 31.996569>,  <40.277184, 32.355835, 32.337208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741356, 32.082397, 31.996569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729782, 31.814663, 32.293530>,  <40.722836, 31.654024, 32.471706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729782, 31.814663, 32.293530>,  <40.741356, 32.082397, 31.996569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729782, 31.814663, 32.293530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248821, -0.724156, -0.643185,
		0.968117, 0.166113, 0.187499,
		-0.028938, -0.669332, 0.742400,
		40.721100, 31.613863, 32.516251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305473, 31.600376, 31.754633>,  <40.741356, 32.082397, 31.996569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305473, 31.600376, 31.754633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108284, 31.417974, 32.051022>,  <40.989971, 31.308533, 32.228855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108284, 31.417974, 32.051022>,  <41.305473, 31.600376, 31.754633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108284, 31.417974, 32.051022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227298, -0.889570, -0.396234,
		0.839831, -0.026910, 0.542181,
		-0.492970, -0.456006, 0.740971,
		40.960392, 31.281172, 32.273312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787575, 31.067072, 32.034542>,  <41.305473, 31.600376, 31.754633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787575, 31.067072, 32.034542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452808, 30.925766, 32.201763>,  <41.251949, 30.840982, 32.302097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452808, 30.925766, 32.201763>,  <41.787575, 31.067072, 32.034542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452808, 30.925766, 32.201763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146903, -0.880773, -0.450177,
		0.527243, -0.315348, 0.789031,
		-0.836920, -0.353263, 0.418055,
		41.201733, 30.819786, 32.327179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980679, 30.400627, 32.399796>,  <41.787575, 31.067072, 32.034542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980679, 30.400627, 32.399796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589561, 30.400528, 32.315960>,  <41.354893, 30.400469, 32.265659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589561, 30.400528, 32.315960>,  <41.980679, 30.400627, 32.399796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589561, 30.400528, 32.315960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103055, -0.871337, -0.479742,
		-0.182502, -0.490686, 0.852010,
		-0.977790, -0.000250, -0.209588,
		41.296223, 30.400454, 32.253082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758205, 29.863956, 32.643982>,  <41.980679, 30.400627, 32.399796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758205, 29.863956, 32.643982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459854, 29.932512, 32.386520>,  <41.280846, 29.973646, 32.232044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459854, 29.932512, 32.386520>,  <41.758205, 29.863956, 32.643982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459854, 29.932512, 32.386520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117141, -0.917515, -0.380057,
		-0.655704, -0.358874, 0.664275,
		-0.745875, 0.171391, -0.643657,
		41.236092, 29.983931, 32.193424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310513, 29.185951, 32.730602>,  <41.758205, 29.863956, 32.643982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310513, 29.185951, 32.730602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204151, 29.393318, 32.405506>,  <41.140335, 29.517738, 32.210449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204151, 29.393318, 32.405506>,  <41.310513, 29.185951, 32.730602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204151, 29.393318, 32.405506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039507, -0.848238, -0.528139,
		-0.963191, -0.108324, 0.246027,
		-0.265899, 0.518419, -0.812736,
		41.124382, 29.548843, 32.161686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721333, 28.811712, 32.420967>,  <41.310513, 29.185951, 32.730602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721333, 28.811712, 32.420967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861317, 29.023823, 32.112076>,  <40.945305, 29.151089, 31.926741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861317, 29.023823, 32.112076>,  <40.721333, 28.811712, 32.420967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861317, 29.023823, 32.112076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054082, -0.834417, -0.548474,
		-0.935203, 0.150178, -0.320689,
		0.349957, 0.530278, -0.772227,
		40.966305, 29.182907, 31.880407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458145, 28.434460, 31.886097>,  <40.721333, 28.811712, 32.420967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458145, 28.434460, 31.886097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737198, 28.657043, 31.705582>,  <40.904629, 28.790594, 31.597273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737198, 28.657043, 31.705582>,  <40.458145, 28.434460, 31.886097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737198, 28.657043, 31.705582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171935, -0.741512, -0.648535,
		-0.695520, 0.374847, -0.612978,
		0.697632, 0.556462, -0.451287,
		40.946487, 28.823982, 31.570196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332489, 28.605139, 31.163088>,  <40.458145, 28.434460, 31.886097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332489, 28.605139, 31.163088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724625, 28.581532, 31.238407>,  <40.959904, 28.567368, 31.283598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724625, 28.581532, 31.238407>,  <40.332489, 28.605139, 31.163088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724625, 28.581532, 31.238407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089668, -0.716790, -0.691500,
		0.175779, 0.694788, -0.697404,
		0.980337, -0.059016, 0.188297,
		41.018726, 28.563828, 31.294897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767899, 28.828241, 30.592485>,  <40.332489, 28.605139, 31.163088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767899, 28.828241, 30.592485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980335, 28.571663, 30.813931>,  <41.107796, 28.417715, 30.946798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980335, 28.571663, 30.813931>,  <40.767899, 28.828241, 30.592485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980335, 28.571663, 30.813931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243668, -0.510154, -0.824845,
		0.811522, 0.572967, -0.114639,
		0.531092, -0.641445, 0.553615,
		41.139664, 28.379229, 30.980015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404461, 28.711571, 30.254131>,  <40.767899, 28.828241, 30.592485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404461, 28.711571, 30.254131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328545, 28.397625, 30.490086>,  <41.282993, 28.209257, 30.631659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328545, 28.397625, 30.490086>,  <41.404461, 28.711571, 30.254131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328545, 28.397625, 30.490086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261828, -0.619510, -0.740037,
		0.946270, 0.013998, 0.323076,
		-0.189790, -0.784864, 0.589888,
		41.271606, 28.162167, 30.667051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025780, 28.470310, 30.579166>,  <41.404461, 28.711571, 30.254131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025780, 28.470310, 30.579166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210606, 28.485092, 30.933598>,  <42.321499, 28.493961, 31.146255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210606, 28.485092, 30.933598>,  <42.025780, 28.470310, 30.579166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210606, 28.485092, 30.933598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770565, 0.477863, -0.421754,
		-0.439009, 0.877657, 0.192328,
		0.462061, 0.036953, 0.886078,
		42.349224, 28.496178, 31.199421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386742, 28.345304, 30.019161>,  <42.025780, 28.470310, 30.579166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386742, 28.345304, 30.019161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287632, 28.732758, 30.011621>,  <42.228168, 28.965229, 30.007097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287632, 28.732758, 30.011621>,  <42.386742, 28.345304, 30.019161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287632, 28.732758, 30.011621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642713, 0.149781, -0.751322,
		-0.724934, -0.198273, -0.659666,
		-0.247772, 0.968635, -0.018851,
		42.213299, 29.023348, 30.005966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380356, 28.554859, 29.355947>,  <42.386742, 28.345304, 30.019161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380356, 28.554859, 29.355947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438999, 28.881290, 29.579563>,  <42.474186, 29.077148, 29.713732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438999, 28.881290, 29.579563>,  <42.380356, 28.554859, 29.355947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438999, 28.881290, 29.579563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572760, 0.390739, -0.720603,
		-0.806506, 0.425839, -0.410133,
		0.146606, 0.816079, 0.559037,
		42.482983, 29.126114, 29.747274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194817, 29.152119, 28.982903>,  <42.380356, 28.554859, 29.355947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194817, 29.152119, 28.982903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488861, 29.213518, 29.247040>,  <42.665287, 29.250359, 29.405523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488861, 29.213518, 29.247040>,  <42.194817, 29.152119, 28.982903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488861, 29.213518, 29.247040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522847, 0.491681, -0.696334,
		-0.431565, 0.857139, 0.281183,
		0.735107, 0.153498, 0.660345,
		42.709393, 29.259567, 29.445143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316788, 29.867817, 29.071381>,  <42.194817, 29.152119, 28.982903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316788, 29.867817, 29.071381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641090, 29.639164, 29.121834>,  <42.835670, 29.501972, 29.152105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641090, 29.639164, 29.121834>,  <42.316788, 29.867817, 29.071381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641090, 29.639164, 29.121834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493469, 0.551493, -0.672565,
		0.314898, 0.607529, 0.729210,
		0.810757, -0.571632, 0.126133,
		42.884319, 29.467674, 29.159674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949272, 30.259773, 29.452940>,  <42.316788, 29.867817, 29.071381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949272, 30.259773, 29.452940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062538, 30.002876, 29.168028>,  <43.130497, 29.848738, 28.997082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062538, 30.002876, 29.168028>,  <42.949272, 30.259773, 29.452940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062538, 30.002876, 29.168028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436587, 0.747582, -0.500512,
		0.853937, -0.169244, 0.492085,
		0.283165, -0.642244, -0.712278,
		43.147488, 29.810204, 28.954344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703186, 30.162882, 29.449341>,  <42.949272, 30.259773, 29.452940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703186, 30.162882, 29.449341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521736, 30.168314, 29.092905>,  <43.412865, 30.171574, 28.879044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521736, 30.168314, 29.092905>,  <43.703186, 30.162882, 29.449341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521736, 30.168314, 29.092905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660235, 0.676719, -0.325794,
		0.598592, -0.736117, -0.315943,
		-0.453627, 0.013579, -0.891088,
		43.385647, 30.172388, 28.825579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028618, 30.841715, 29.275188>,  <43.703186, 30.162882, 29.449341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028618, 30.841715, 29.275188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631557, 30.874531, 29.239594>,  <43.393322, 30.894220, 29.218237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631557, 30.874531, 29.239594>,  <44.028618, 30.841715, 29.275188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631557, 30.874531, 29.239594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036784, 0.904934, 0.423959,
		0.115310, 0.417569, -0.901299,
		-0.992648, 0.082040, -0.088988,
		43.333763, 30.899143, 29.212896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891708, 31.574806, 29.071943>,  <44.028618, 30.841715, 29.275188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891708, 31.574806, 29.071943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556126, 31.426350, 29.231144>,  <43.354774, 31.337276, 29.326664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556126, 31.426350, 29.231144>,  <43.891708, 31.574806, 29.071943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556126, 31.426350, 29.231144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136858, 0.851744, 0.505769,
		-0.526708, 0.369849, -0.765370,
		-0.838957, -0.371140, 0.398004,
		43.304440, 31.315008, 29.350546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286171, 32.015541, 28.959644>,  <43.891708, 31.574806, 29.071943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286171, 32.015541, 28.959644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196842, 31.796778, 29.282387>,  <43.143246, 31.665520, 29.476032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196842, 31.796778, 29.282387>,  <43.286171, 32.015541, 28.959644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196842, 31.796778, 29.282387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226762, 0.834200, 0.502683,
		-0.948000, -0.070701, -0.310317,
		-0.223326, -0.546912, 0.806854,
		43.129845, 31.632704, 29.524443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718811, 32.279747, 29.160618>,  <43.286171, 32.015541, 28.959644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718811, 32.279747, 29.160618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845467, 32.084969, 29.486223>,  <42.921459, 31.968102, 29.681587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845467, 32.084969, 29.486223>,  <42.718811, 32.279747, 29.160618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845467, 32.084969, 29.486223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059333, 0.846323, 0.529355,
		-0.946688, -0.215913, 0.239088,
		0.316640, -0.486948, 0.814015,
		42.940460, 31.938885, 29.730427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349667, 32.614624, 29.677742>,  <42.718811, 32.279747, 29.160618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349667, 32.614624, 29.677742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621796, 32.396969, 29.874136>,  <42.785072, 32.266376, 29.991972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621796, 32.396969, 29.874136>,  <42.349667, 32.614624, 29.677742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621796, 32.396969, 29.874136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028183, 0.688841, 0.724364,
		-0.732367, -0.478967, 0.483973,
		0.680327, -0.544140, 0.490986,
		42.825893, 32.233727, 30.021431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170410, 32.563366, 30.398188>,  <42.349667, 32.614624, 29.677742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170410, 32.563366, 30.398188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564804, 32.503933, 30.367828>,  <42.801441, 32.468273, 30.349613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564804, 32.503933, 30.367828>,  <42.170410, 32.563366, 30.398188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564804, 32.503933, 30.367828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148073, 0.569616, 0.808462,
		-0.076893, -0.808368, 0.583633,
		0.985983, -0.148585, -0.075899,
		42.860600, 32.459358, 30.345058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398556, 32.545109, 31.109106>,  <42.170410, 32.563366, 30.398188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398556, 32.545109, 31.109106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737450, 32.609703, 30.906675>,  <42.940784, 32.648460, 30.785217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737450, 32.609703, 30.906675>,  <42.398556, 32.545109, 31.109106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737450, 32.609703, 30.906675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324115, 0.597660, 0.733315,
		0.420880, -0.785319, 0.454021,
		0.847237, 0.161483, -0.506077,
		42.991619, 32.658150, 30.754852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896873, 32.457535, 31.599123>,  <42.398556, 32.545109, 31.109106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896873, 32.457535, 31.599123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083504, 32.649712, 31.302074>,  <43.195480, 32.765018, 31.123844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083504, 32.649712, 31.302074>,  <42.896873, 32.457535, 31.599123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083504, 32.649712, 31.302074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451347, 0.592740, 0.667042,
		0.760656, -0.646404, 0.059711,
		0.466572, 0.480439, -0.742624,
		43.223476, 32.793842, 31.079287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577576, 32.594444, 31.826279>,  <42.896873, 32.457535, 31.599123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577576, 32.594444, 31.826279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524712, 32.865772, 31.537167>,  <43.492992, 33.028568, 31.363699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524712, 32.865772, 31.537167>,  <43.577576, 32.594444, 31.826279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524712, 32.865772, 31.537167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355673, 0.713069, 0.604176,
		0.925219, -0.177224, -0.335503,
		-0.132162, 0.678325, -0.722779,
		43.485062, 33.069271, 31.320333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228973, 32.934994, 31.763353>,  <43.577576, 32.594444, 31.826279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228973, 32.934994, 31.763353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.975742, 33.192551, 31.591488>,  <43.823803, 33.347084, 31.488369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.975742, 33.192551, 31.591488>,  <44.228973, 32.934994, 31.763353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.975742, 33.192551, 31.591488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375596, 0.740856, 0.556830,
		0.676857, 0.191140, -0.710866,
		-0.633082, 0.643893, -0.429662,
		43.785816, 33.385719, 31.462589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486828, 33.689487, 31.926895>,  <44.228973, 32.934994, 31.763353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486828, 33.689487, 31.926895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124783, 33.800468, 31.798025>,  <43.907555, 33.867058, 31.720703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124783, 33.800468, 31.798025>,  <44.486828, 33.689487, 31.926895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124783, 33.800468, 31.798025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070374, 0.649523, 0.757078,
		0.419315, 0.707911, -0.568364,
		-0.905109, 0.277456, -0.322173,
		43.853249, 33.883705, 31.701374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479042, 34.387272, 31.709948>,  <44.486828, 33.689487, 31.926895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479042, 34.387272, 31.709948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092731, 34.316959, 31.786236>,  <43.860943, 34.274773, 31.832008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092731, 34.316959, 31.786236>,  <44.479042, 34.387272, 31.709948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.092731, 34.316959, 31.786236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024748, 0.794418, 0.606866,
		-0.258185, 0.581379, -0.771582,
		-0.965778, -0.175779, 0.190719,
		43.802998, 34.264225, 31.843452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205414, 35.026955, 31.639946>,  <44.479042, 34.387272, 31.709948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205414, 35.026955, 31.639946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924473, 34.827042, 31.842691>,  <43.755909, 34.707092, 31.964338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924473, 34.827042, 31.842691>,  <44.205414, 35.026955, 31.639946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924473, 34.827042, 31.842691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136002, 0.793163, 0.593629,
		-0.698712, 0.348005, -0.625056,
		-0.702357, -0.499785, 0.506863,
		43.713764, 34.677105, 31.994751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649757, 35.459499, 31.730171>,  <44.205414, 35.026955, 31.639946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649757, 35.459499, 31.730171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587158, 35.173374, 32.002594>,  <43.549599, 35.001698, 32.166046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587158, 35.173374, 32.002594>,  <43.649757, 35.459499, 31.730171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587158, 35.173374, 32.002594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207056, 0.697990, 0.685520,
		-0.965731, -0.033734, -0.257344,
		-0.156498, -0.715313, 0.681055,
		43.540207, 34.958782, 32.206909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214512, 35.707573, 32.184666>,  <43.649757, 35.459499, 31.730171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214512, 35.707573, 32.184666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.367760, 35.412422, 32.406933>,  <43.459709, 35.235332, 32.540291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.367760, 35.412422, 32.406933>,  <43.214512, 35.707573, 32.184666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367760, 35.412422, 32.406933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138369, 0.548930, 0.824336,
		-0.913276, -0.392706, 0.108206,
		0.383119, -0.737874, 0.555663,
		43.482697, 35.191059, 32.573631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832455, 35.571224, 32.796841>,  <43.214512, 35.707573, 32.184666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832455, 35.571224, 32.796841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198200, 35.435772, 32.885632>,  <43.417648, 35.354500, 32.938904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198200, 35.435772, 32.885632>,  <42.832455, 35.571224, 32.796841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198200, 35.435772, 32.885632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038749, 0.472523, 0.880466,
		-0.403039, -0.813666, 0.418935,
		0.914362, -0.338629, 0.221974,
		43.472507, 35.334183, 32.952225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775681, 35.233860, 33.412579>,  <42.832455, 35.571224, 32.796841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775681, 35.233860, 33.412579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.160965, 35.338028, 33.386032>,  <43.392136, 35.400528, 33.370106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.160965, 35.338028, 33.386032>,  <42.775681, 35.233860, 33.412579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160965, 35.338028, 33.386032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030765, 0.352176, 0.935428,
		0.266979, -0.898973, 0.347231,
		0.963211, 0.260422, -0.066367,
		43.449928, 35.416157, 33.366123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073555, 34.876621, 33.954071>,  <42.775681, 35.233860, 33.412579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073555, 34.876621, 33.954071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321182, 35.177406, 33.863468>,  <43.469757, 35.357880, 33.809105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321182, 35.177406, 33.863468>,  <43.073555, 34.876621, 33.954071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321182, 35.177406, 33.863468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042069, 0.256254, 0.965694,
		0.784211, -0.607358, 0.127004,
		0.619067, 0.751965, -0.226508,
		43.506901, 35.402996, 33.795517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782967, 34.680626, 34.267109>,  <43.073555, 34.876621, 33.954071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782967, 34.680626, 34.267109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802124, 35.078171, 34.227211>,  <43.813618, 35.316696, 34.203270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802124, 35.078171, 34.227211>,  <43.782967, 34.680626, 34.267109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802124, 35.078171, 34.227211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246830, 0.084989, 0.965325,
		0.967875, -0.070852, -0.241244,
		0.047892, 0.993860, -0.099747,
		43.816490, 35.376328, 34.197289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280830, 34.806190, 34.704060>,  <43.782967, 34.680626, 34.267109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280830, 34.806190, 34.704060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118374, 35.165524, 34.637070>,  <44.020901, 35.381123, 34.596874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118374, 35.165524, 34.637070>,  <44.280830, 34.806190, 34.704060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118374, 35.165524, 34.637070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033479, 0.197776, 0.979675,
		0.913196, 0.392281, -0.110401,
		-0.406143, 0.898332, -0.167475,
		43.996532, 35.435024, 34.586826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.834175, 35.251251, 35.116253>,  <44.280830, 34.806190, 34.704060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.834175, 35.251251, 35.116253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469524, 35.414852, 35.132568>,  <44.250736, 35.513012, 35.142357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469524, 35.414852, 35.132568>,  <44.834175, 35.251251, 35.116253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469524, 35.414852, 35.132568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159566, 0.260695, 0.952143,
		0.378791, 0.874505, -0.302917,
		-0.911623, 0.408998, 0.040793,
		44.196037, 35.537552, 35.144806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587467, 35.346424, 35.166561>,  <44.834175, 35.251251, 35.116253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587467, 35.346424, 35.166561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.425232, 35.041126, 34.965385>,  <45.327888, 34.857948, 34.844681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.425232, 35.041126, 34.965385>,  <45.587467, 35.346424, 35.166561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425232, 35.041126, 34.965385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612725, 0.181274, -0.769225,
		0.678279, -0.620155, 0.394138,
		-0.405592, -0.763248, -0.502939,
		45.303555, 34.812153, 34.814503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.391415, 35.096760, 35.221012>,  <45.587467, 35.346424, 35.166561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.391415, 35.096760, 35.221012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.400356, 35.388145, 34.947124>,  <46.405720, 35.562977, 34.782791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.400356, 35.388145, 34.947124>,  <46.391415, 35.096760, 35.221012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.400356, 35.388145, 34.947124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883971, 0.305528, 0.353903,
		0.467006, -0.613188, -0.637107,
		0.022355, 0.728460, -0.684724,
		46.407063, 35.606682, 34.741707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.062664, 35.169468, 35.174267>,  <46.391415, 35.096760, 35.221012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.062664, 35.169468, 35.174267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.910324, 35.483528, 34.978924>,  <46.818920, 35.671963, 34.861717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.910324, 35.483528, 34.978924>,  <47.062664, 35.169468, 35.174267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.910324, 35.483528, 34.978924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843822, 0.511071, 0.163615,
		0.378049, -0.349775, -0.857168,
		-0.380845, 0.785152, -0.488358,
		46.796070, 35.719074, 34.832417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.829395, 35.211857, 35.327839>,  <47.062664, 35.169468, 35.174267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.829395, 35.211857, 35.327839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.869026, 34.915989, 35.061584>,  <47.892807, 34.738468, 34.901833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.869026, 34.915989, 35.061584>,  <47.829395, 35.211857, 35.327839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.869026, 34.915989, 35.061584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839547, 0.296956, -0.454948,
		0.534176, 0.603911, -0.591564,
		0.099080, -0.739668, -0.665638,
		47.898750, 34.694088, 34.861893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.565548, 37.597431, 48.154938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.168800, 37.558365, 48.122314>,  <35.930752, 37.534924, 48.102741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.168800, 37.558365, 48.122314>,  <36.565548, 37.597431, 48.154938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168800, 37.558365, 48.122314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094877, -0.140561, -0.985516,
		0.084788, -0.985243, 0.148685,
		-0.991872, -0.097667, -0.081559,
		35.871239, 37.529064, 48.097847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391354, 37.056702, 47.684006>,  <36.565548, 37.597431, 48.154938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391354, 37.056702, 47.684006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.052567, 37.269196, 47.692276>,  <35.849293, 37.396690, 47.697239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.052567, 37.269196, 47.692276>,  <36.391354, 37.056702, 47.684006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052567, 37.269196, 47.692276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045052, -0.032971, -0.998440,
		-0.529725, -0.846582, 0.051859,
		-0.846972, 0.531235, 0.020675,
		35.798473, 37.428566, 47.698479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978470, 36.684849, 47.258316>,  <36.391354, 37.056702, 47.684006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978470, 36.684849, 47.258316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.811317, 37.048119, 47.267990>,  <35.711025, 37.266083, 47.273796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.811317, 37.048119, 47.267990>,  <35.978470, 36.684849, 47.258316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811317, 37.048119, 47.267990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061854, -0.001877, -0.998083,
		-0.906393, -0.418578, 0.056959,
		-0.417883, 0.908179, 0.024189,
		35.685951, 37.320572, 47.275246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387352, 36.617756, 46.757725>,  <35.978470, 36.684849, 47.258316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387352, 36.617756, 46.757725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.414310, 37.014606, 46.799965>,  <35.430485, 37.252716, 46.825310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.414310, 37.014606, 46.799965>,  <35.387352, 36.617756, 46.757725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414310, 37.014606, 46.799965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091501, 0.111536, -0.989539,
		-0.993522, 0.057027, 0.098297,
		0.067394, 0.992123, 0.105596,
		35.434528, 37.312244, 46.831642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888508, 36.893745, 46.353840>,  <35.387352, 36.617756, 46.757725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888508, 36.893745, 46.353840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.121437, 37.215260, 46.402546>,  <35.261196, 37.408169, 46.431770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.121437, 37.215260, 46.402546>,  <34.888508, 36.893745, 46.353840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121437, 37.215260, 46.402546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017244, 0.137529, -0.990348,
		-0.812775, 0.578802, 0.066225,
		0.582323, 0.803787, 0.121761,
		35.296135, 37.456394, 46.439075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487820, 37.457920, 46.019508>,  <34.888508, 36.893745, 46.353840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487820, 37.457920, 46.019508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.877670, 37.543564, 46.045628>,  <35.111580, 37.594948, 46.061298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.877670, 37.543564, 46.045628>,  <34.487820, 37.457920, 46.019508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877670, 37.543564, 46.045628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035800, 0.138849, -0.989666,
		-0.220961, 0.966891, 0.127660,
		0.974625, 0.214108, 0.065295,
		35.170059, 37.607796, 46.065216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570564, 37.918579, 45.564732>,  <34.487820, 37.457920, 46.019508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570564, 37.918579, 45.564732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.951256, 37.803005, 45.606174>,  <35.179668, 37.733662, 45.631039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.951256, 37.803005, 45.606174>,  <34.570564, 37.918579, 45.564732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951256, 37.803005, 45.606174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115912, 0.025769, -0.992925,
		0.284225, 0.957001, 0.058017,
		0.951725, -0.288939, 0.103604,
		35.236774, 37.716324, 45.637257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961689, 38.397629, 45.218151>,  <34.570564, 37.918579, 45.564732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961689, 38.397629, 45.218151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.174755, 38.059120, 45.221870>,  <35.302597, 37.856014, 45.224102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.174755, 38.059120, 45.221870>,  <34.961689, 38.397629, 45.218151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174755, 38.059120, 45.221870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078415, 0.038409, -0.996181,
		0.842683, 0.531363, 0.086820,
		0.532669, -0.846273, 0.009300,
		35.334557, 37.805237, 45.224659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404541, 38.496876, 44.673965>,  <34.961689, 38.397629, 45.218151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404541, 38.496876, 44.673965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.474155, 38.110455, 44.750340>,  <35.515923, 37.878601, 44.796162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.474155, 38.110455, 44.750340>,  <35.404541, 38.496876, 44.673965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474155, 38.110455, 44.750340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297876, -0.133161, -0.945272,
		0.938607, 0.221383, 0.264589,
		0.174035, -0.966053, 0.190931,
		35.526367, 37.820641, 44.807617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129116, 38.261158, 44.658134>,  <35.404541, 38.496876, 44.673965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129116, 38.261158, 44.658134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.905720, 37.939491, 44.576744>,  <35.771683, 37.746490, 44.527912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.905720, 37.939491, 44.576744>,  <36.129116, 38.261158, 44.658134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905720, 37.939491, 44.576744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452704, -0.089938, -0.887113,
		0.695091, -0.587555, 0.414280,
		-0.558488, -0.804170, -0.203473,
		35.738174, 37.698238, 44.515701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547966, 37.777863, 44.360809>,  <36.129116, 38.261158, 44.658134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547966, 37.777863, 44.360809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.190880, 37.636066, 44.249535>,  <35.976627, 37.550987, 44.182770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.190880, 37.636066, 44.249535>,  <36.547966, 37.777863, 44.360809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190880, 37.636066, 44.249535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391973, -0.306368, -0.867465,
		0.222284, -0.883443, 0.412453,
		-0.892719, -0.354494, -0.278185,
		35.923065, 37.529716, 44.166080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723835, 37.164112, 44.048927>,  <36.547966, 37.777863, 44.360809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723835, 37.164112, 44.048927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.351288, 37.222076, 43.915329>,  <36.127758, 37.256855, 43.835171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.351288, 37.222076, 43.915329>,  <36.723835, 37.164112, 44.048927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351288, 37.222076, 43.915329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281430, -0.295431, -0.912972,
		-0.230973, -0.944310, 0.234373,
		-0.931369, 0.144912, -0.333993,
		36.071877, 37.265549, 43.815132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503368, 36.545551, 43.665916>,  <36.723835, 37.164112, 44.048927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503368, 36.545551, 43.665916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.289536, 36.853729, 43.526981>,  <36.161236, 37.038635, 43.443619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.289536, 36.853729, 43.526981>,  <36.503368, 36.545551, 43.665916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289536, 36.853729, 43.526981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184883, -0.294429, -0.937619,
		-0.824648, -0.565448, 0.014954,
		-0.534578, 0.770441, -0.347342,
		36.129162, 37.084862, 43.422779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274139, 36.262695, 43.058815>,  <36.503368, 36.545551, 43.665916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274139, 36.262695, 43.058815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.177151, 36.650139, 43.036865>,  <36.118958, 36.882603, 43.023697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.177151, 36.650139, 43.036865>,  <36.274139, 36.262695, 43.058815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177151, 36.650139, 43.036865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220318, -0.000110, -0.975428,
		-0.944811, -0.248602, -0.213374,
		-0.242470, 0.968606, -0.054876,
		36.104408, 36.940720, 43.020401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862019, 36.260494, 42.444546>,  <36.274139, 36.262695, 43.058815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862019, 36.260494, 42.444546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.008377, 36.629040, 42.497017>,  <36.096191, 36.850166, 42.528500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.008377, 36.629040, 42.497017>,  <35.862019, 36.260494, 42.444546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008377, 36.629040, 42.497017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289042, 0.021474, -0.957075,
		-0.884631, 0.388110, -0.258455,
		0.365900, 0.921363, 0.131176,
		36.118149, 36.905449, 42.536369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569103, 36.815670, 41.959244>,  <35.862019, 36.260494, 42.444546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569103, 36.815670, 41.959244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.916447, 36.982113, 42.067181>,  <36.124851, 37.081978, 42.131943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.916447, 36.982113, 42.067181>,  <35.569103, 36.815670, 41.959244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916447, 36.982113, 42.067181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289256, 0.017029, -0.957100,
		-0.402848, 0.909157, -0.105573,
		0.868357, 0.416104, 0.269839,
		36.176952, 37.106945, 42.148132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780937, 37.285679, 41.430084>,  <35.569103, 36.815670, 41.959244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780937, 37.285679, 41.430084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129051, 37.245514, 41.622967>,  <36.337921, 37.221416, 41.738697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129051, 37.245514, 41.622967>,  <35.780937, 37.285679, 41.430084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129051, 37.245514, 41.622967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491086, 0.101506, -0.865177,
		0.037926, 0.989755, 0.137649,
		0.870285, -0.100411, 0.482205,
		36.390137, 37.215389, 41.767628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265179, 37.812428, 41.109856>,  <35.780937, 37.285679, 41.430084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265179, 37.812428, 41.109856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.496880, 37.551773, 41.305748>,  <36.635899, 37.395378, 41.423283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.496880, 37.551773, 41.305748>,  <36.265179, 37.812428, 41.109856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496880, 37.551773, 41.305748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682291, 0.058846, -0.728708,
		0.446036, 0.756243, 0.478694,
		0.579250, -0.651639, 0.489730,
		36.670654, 37.356281, 41.452667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864178, 38.118256, 41.138680>,  <36.265179, 37.812428, 41.109856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864178, 38.118256, 41.138680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920597, 37.722626, 41.155792>,  <36.954449, 37.485249, 41.166061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920597, 37.722626, 41.155792>,  <36.864178, 38.118256, 41.138680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920597, 37.722626, 41.155792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558394, 0.043800, -0.828419,
		0.817497, 0.140739, 0.558473,
		0.141052, -0.989077, 0.042781,
		36.962914, 37.425903, 41.168625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582470, 38.032600, 40.955368>,  <36.864178, 38.118256, 41.138680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582470, 38.032600, 40.955368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.451763, 37.658455, 40.901230>,  <37.373341, 37.433968, 40.868748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.451763, 37.658455, 40.901230>,  <37.582470, 38.032600, 40.955368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451763, 37.658455, 40.901230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471078, -0.037043, -0.881313,
		0.819336, -0.351738, 0.452734,
		-0.326762, -0.935365, -0.135346,
		37.353733, 37.377846, 40.860626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171753, 37.674194, 40.658249>,  <37.582470, 38.032600, 40.955368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171753, 37.674194, 40.658249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.857513, 37.447765, 40.558327>,  <37.668972, 37.311909, 40.498375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.857513, 37.447765, 40.558327>,  <38.171753, 37.674194, 40.658249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857513, 37.447765, 40.558327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332489, -0.045733, -0.941998,
		0.521816, -0.823085, 0.224141,
		-0.785595, -0.566074, -0.249802,
		37.621834, 37.277943, 40.483387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437469, 37.073078, 40.241016>,  <38.171753, 37.674194, 40.658249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437469, 37.073078, 40.241016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.055756, 37.164688, 40.164185>,  <37.826729, 37.219654, 40.118088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.055756, 37.164688, 40.164185>,  <38.437469, 37.073078, 40.241016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055756, 37.164688, 40.164185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211200, 0.061900, -0.975481,
		-0.211524, -0.971449, -0.107441,
		-0.954281, 0.229029, -0.192076,
		37.769470, 37.233398, 40.106560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971313, 37.579563, 40.309540>,  <38.437469, 37.073078, 40.241016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971313, 37.579563, 40.309540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.365517, 37.635082, 40.348557>,  <39.602039, 37.668392, 40.371967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.365517, 37.635082, 40.348557>,  <38.971313, 37.579563, 40.309540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365517, 37.635082, 40.348557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062365, -0.238269, 0.969195,
		0.157763, -0.961230, -0.226159,
		0.985506, 0.138799, 0.097538,
		39.661167, 37.676723, 40.377819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051765, 36.961708, 40.692585>,  <38.971313, 37.579563, 40.309540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051765, 36.961708, 40.692585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.341629, 37.233429, 40.738911>,  <39.515549, 37.396461, 40.766705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.341629, 37.233429, 40.738911>,  <39.051765, 36.961708, 40.692585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341629, 37.233429, 40.738911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121275, -0.291158, 0.948957,
		0.678349, -0.673628, -0.293374,
		0.724662, 0.679302, 0.115813,
		39.559029, 37.437222, 40.773655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687992, 36.646328, 40.778488>,  <39.051765, 36.961708, 40.692585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687992, 36.646328, 40.778488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.689945, 37.011448, 40.941837>,  <39.691116, 37.230522, 41.039848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.689945, 37.011448, 40.941837>,  <39.687992, 36.646328, 40.778488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689945, 37.011448, 40.941837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395317, -0.376873, 0.837670,
		0.918532, 0.157350, -0.362685,
		0.004879, 0.912802, 0.408373,
		39.691410, 37.285290, 41.064350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195099, 36.596970, 41.218513>,  <39.687992, 36.646328, 40.778488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195099, 36.596970, 41.218513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.017689, 36.930851, 41.349083>,  <39.911243, 37.131180, 41.427425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.017689, 36.930851, 41.349083>,  <40.195099, 36.596970, 41.218513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017689, 36.930851, 41.349083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141627, -0.294359, 0.945143,
		0.884999, 0.465429, 0.012340,
		-0.443529, 0.834703, 0.326424,
		39.884628, 37.181263, 41.447010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612118, 36.757763, 41.843391>,  <40.195099, 36.596970, 41.218513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612118, 36.757763, 41.843391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.271282, 36.964336, 41.877434>,  <40.066780, 37.088280, 41.897858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.271282, 36.964336, 41.877434>,  <40.612118, 36.757763, 41.843391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271282, 36.964336, 41.877434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045755, -0.235474, 0.970803,
		0.521391, 0.823318, 0.224274,
		-0.852091, 0.516429, 0.085102,
		40.015656, 37.119267, 41.902966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706028, 37.132385, 42.376320>,  <40.612118, 36.757763, 41.843391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706028, 37.132385, 42.376320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.311600, 37.078316, 42.337555>,  <40.074944, 37.045876, 42.314297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.311600, 37.078316, 42.337555>,  <40.706028, 37.132385, 42.376320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311600, 37.078316, 42.337555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078425, -0.135969, 0.987604,
		-0.146675, 0.981448, 0.123474,
		-0.986071, -0.135173, -0.096913,
		40.015778, 37.037766, 42.308479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450584, 37.649597, 42.794090>,  <40.706028, 37.132385, 42.376320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450584, 37.649597, 42.794090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.194633, 37.345943, 42.746311>,  <40.041061, 37.163750, 42.717644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.194633, 37.345943, 42.746311>,  <40.450584, 37.649597, 42.794090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194633, 37.345943, 42.746311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067043, -0.209985, 0.975403,
		-0.765545, 0.616133, 0.185260,
		-0.639880, -0.759135, -0.119445,
		40.002670, 37.118202, 42.710476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177315, 37.624252, 43.460838>,  <40.450584, 37.649597, 42.794090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177315, 37.624252, 43.460838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.020931, 37.289856, 43.306812>,  <39.927101, 37.089218, 43.214397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.020931, 37.289856, 43.306812>,  <40.177315, 37.624252, 43.460838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020931, 37.289856, 43.306812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191580, -0.335283, 0.922433,
		-0.900250, 0.434400, -0.029078,
		-0.390956, -0.835992, -0.385061,
		39.903645, 37.039059, 43.191296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598602, 37.515980, 43.912109>,  <40.177315, 37.624252, 43.460838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598602, 37.515980, 43.912109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.626614, 37.169456, 43.714275>,  <39.643421, 36.961544, 43.595573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.626614, 37.169456, 43.714275>,  <39.598602, 37.515980, 43.912109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626614, 37.169456, 43.714275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295862, -0.491529, 0.819063,
		-0.952660, 0.088971, -0.290728,
		0.070028, -0.866304, -0.494584,
		39.647621, 36.909565, 43.565899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886086, 37.221325, 43.882359>,  <39.598602, 37.515980, 43.912109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886086, 37.221325, 43.882359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171349, 36.944195, 43.839645>,  <39.342506, 36.777916, 43.814018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171349, 36.944195, 43.839645>,  <38.886086, 37.221325, 43.882359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171349, 36.944195, 43.839645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336731, -0.472180, 0.814652,
		-0.614831, -0.545018, -0.570033,
		0.713159, -0.692821, -0.106786,
		39.385296, 36.736347, 43.807610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556637, 36.556541, 44.011269>,  <38.886086, 37.221325, 43.882359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556637, 36.556541, 44.011269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.940815, 36.454491, 44.055889>,  <39.171322, 36.393261, 44.082661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.940815, 36.454491, 44.055889>,  <38.556637, 36.556541, 44.011269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940815, 36.454491, 44.055889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210692, -0.403916, 0.890203,
		-0.182057, -0.878499, -0.441695,
		0.960450, -0.255129, 0.111556,
		39.228951, 36.377953, 44.089355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627884, 35.750069, 44.301056>,  <38.556637, 36.556541, 44.011269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627884, 35.750069, 44.301056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.965305, 35.952358, 44.373344>,  <39.167759, 36.073730, 44.416718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.965305, 35.952358, 44.373344>,  <38.627884, 35.750069, 44.301056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965305, 35.952358, 44.373344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028223, -0.294297, 0.955297,
		0.536299, -0.810947, -0.233984,
		0.843556, 0.505721, 0.180718,
		39.218372, 36.104076, 44.427559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977036, 35.393810, 44.727329>,  <38.627884, 35.750069, 44.301056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977036, 35.393810, 44.727329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.149818, 35.747410, 44.798836>,  <39.253487, 35.959572, 44.841740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.149818, 35.747410, 44.798836>,  <38.977036, 35.393810, 44.727329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149818, 35.747410, 44.798836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037992, -0.180198, 0.982896,
		0.901095, -0.431358, -0.044252,
		0.431954, 0.884002, 0.178764,
		39.279404, 36.012611, 44.852467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229389, 35.339783, 45.330532>,  <38.977036, 35.393810, 44.727329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229389, 35.339783, 45.330532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.222927, 35.738853, 45.304066>,  <39.219051, 35.978294, 45.288185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.222927, 35.738853, 45.304066>,  <39.229389, 35.339783, 45.330532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222927, 35.738853, 45.304066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330661, 0.057122, 0.942019,
		0.943611, 0.037097, 0.328970,
		-0.016155, 0.997678, -0.066168,
		39.218082, 36.038158, 45.284214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521290, 35.615696, 45.892796>,  <39.229389, 35.339783, 45.330532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521290, 35.615696, 45.892796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.304096, 35.926643, 45.765759>,  <39.173779, 36.113213, 45.689537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.304096, 35.926643, 45.765759>,  <39.521290, 35.615696, 45.892796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304096, 35.926643, 45.765759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486702, 0.016871, 0.873405,
		0.684313, 0.628822, 0.369185,
		-0.542988, 0.777366, -0.317595,
		39.141201, 36.159855, 45.670479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520081, 36.221802, 46.399395>,  <39.521290, 35.615696, 45.892796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520081, 36.221802, 46.399395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.201565, 36.289890, 46.167206>,  <39.010456, 36.330746, 46.027893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.201565, 36.289890, 46.167206>,  <39.520081, 36.221802, 46.399395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201565, 36.289890, 46.167206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580361, 0.055650, 0.812456,
		0.170602, 0.983833, 0.054478,
		-0.796289, 0.170223, -0.580472,
		38.962677, 36.340958, 45.993065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278919, 36.823700, 46.604946>,  <39.520081, 36.221802, 46.399395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278919, 36.823700, 46.604946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.978985, 36.636044, 46.418335>,  <38.799023, 36.523449, 46.306366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.978985, 36.636044, 46.418335>,  <39.278919, 36.823700, 46.604946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978985, 36.636044, 46.418335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536416, 0.018309, 0.843755,
		-0.387295, 0.882936, -0.265381,
		-0.749840, -0.469137, -0.466530,
		38.754032, 36.495304, 46.278378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837025, 37.130180, 47.017117>,  <39.278919, 36.823700, 46.604946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837025, 37.130180, 47.017117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.649460, 36.829056, 46.832333>,  <38.536922, 36.648380, 46.721462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.649460, 36.829056, 46.832333>,  <38.837025, 37.130180, 47.017117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649460, 36.829056, 46.832333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581241, -0.130804, 0.803149,
		-0.665044, 0.645111, -0.376229,
		-0.468908, -0.752809, -0.461956,
		38.508789, 36.603214, 46.693745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.110397, 37.360493, 46.885475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.130913, 36.961090, 46.877964>,  <38.143223, 36.721447, 46.873459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.130913, 36.961090, 46.877964>,  <38.110397, 37.360493, 46.885475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130913, 36.961090, 46.877964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464195, -0.040485, 0.884807,
		-0.884247, -0.036665, -0.465579,
		0.051290, -0.998507, -0.018779,
		38.146301, 36.661537, 46.872330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441414, 37.161839, 47.149750>,  <38.110397, 37.360493, 46.885475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441414, 37.161839, 47.149750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.689842, 36.851223, 47.192200>,  <37.838898, 36.664856, 47.217670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.689842, 36.851223, 47.192200>,  <37.441414, 37.161839, 47.149750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689842, 36.851223, 47.192200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336281, -0.141713, 0.931038,
		-0.707946, -0.613929, -0.349148,
		0.621070, -0.776537, 0.106127,
		37.876163, 36.618263, 47.224037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019299, 36.581562, 47.581501>,  <37.441414, 37.161839, 47.149750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019299, 36.581562, 47.581501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407558, 36.500122, 47.632706>,  <37.640514, 36.451260, 47.663429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407558, 36.500122, 47.632706>,  <37.019299, 36.581562, 47.581501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407558, 36.500122, 47.632706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139314, -0.042138, 0.989351,
		-0.196039, -0.978147, -0.069266,
		0.970650, -0.203601, 0.128009,
		37.698753, 36.439041, 47.671108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926319, 36.063824, 48.024487>,  <37.019299, 36.581562, 47.581501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926319, 36.063824, 48.024487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.308750, 36.173851, 48.064980>,  <37.538208, 36.239868, 48.089275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.308750, 36.173851, 48.064980>,  <36.926319, 36.063824, 48.024487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308750, 36.173851, 48.064980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062360, -0.146583, 0.987231,
		0.286397, -0.950184, -0.122992,
		0.956080, 0.275071, 0.101234,
		37.595573, 36.256371, 48.095348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179016, 35.631695, 48.535339>,  <36.926319, 36.063824, 48.024487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179016, 35.631695, 48.535339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.412041, 35.956619, 48.524292>,  <37.551857, 36.151573, 48.517666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.412041, 35.956619, 48.524292>,  <37.179016, 35.631695, 48.535339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412041, 35.956619, 48.524292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107621, -0.043415, 0.993243,
		0.805627, -0.581602, -0.112715,
		0.582566, 0.812314, -0.027616,
		37.586811, 36.200314, 48.516006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800900, 35.467861, 48.948708>,  <37.179016, 35.631695, 48.535339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800900, 35.467861, 48.948708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.775478, 35.866699, 48.931942>,  <37.760227, 36.106003, 48.921883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.775478, 35.866699, 48.931942>,  <37.800900, 35.467861, 48.948708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775478, 35.866699, 48.931942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209633, 0.054402, 0.976265,
		0.975713, 0.053255, -0.212482,
		-0.063550, 0.997098, -0.041917,
		37.756413, 36.165829, 48.919369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378674, 35.708427, 49.167419>,  <37.800900, 35.467861, 48.948708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378674, 35.708427, 49.167419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.139294, 36.021957, 49.233723>,  <37.995667, 36.210075, 49.273502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.139294, 36.021957, 49.233723>,  <38.378674, 35.708427, 49.167419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139294, 36.021957, 49.233723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309196, 0.035103, 0.950350,
		0.739090, 0.619989, -0.263362,
		-0.598452, 0.783825, 0.165754,
		37.959759, 36.257103, 49.283447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766788, 36.187740, 49.633472>,  <38.378674, 35.708427, 49.167419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766788, 36.187740, 49.633472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.377163, 36.271408, 49.667992>,  <38.143387, 36.321609, 49.688702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.377163, 36.271408, 49.667992>,  <38.766788, 36.187740, 49.633472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377163, 36.271408, 49.667992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113725, 0.122860, 0.985887,
		0.195618, 0.970130, -0.143462,
		-0.974064, 0.209172, 0.086295,
		38.084946, 36.334160, 49.693878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736931, 36.754360, 49.996658>,  <38.766788, 36.187740, 49.633472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736931, 36.754360, 49.996658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.381069, 36.582130, 50.057480>,  <38.167553, 36.478794, 50.093971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.381069, 36.582130, 50.057480>,  <38.736931, 36.754360, 49.996658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381069, 36.582130, 50.057480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104613, 0.131949, 0.985721,
		-0.444488, 0.892859, -0.072345,
		-0.889655, -0.430573, 0.152055,
		38.114174, 36.452957, 50.103096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688400, 36.848587, 50.669891>,  <38.736931, 36.754360, 49.996658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688400, 36.848587, 50.669891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.359951, 36.629086, 50.607121>,  <38.162884, 36.497383, 50.569458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.359951, 36.629086, 50.607121>,  <38.688400, 36.848587, 50.669891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359951, 36.629086, 50.607121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132302, -0.084458, 0.987605,
		-0.555210, 0.831704, -0.003251,
		-0.821120, -0.548758, -0.156928,
		38.113613, 36.464458, 50.560043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191856, 37.037716, 51.160488>,  <38.688400, 36.848587, 50.669891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191856, 37.037716, 51.160488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123276, 36.657215, 51.057941>,  <38.082127, 36.428913, 50.996414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123276, 36.657215, 51.057941>,  <38.191856, 37.037716, 51.160488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123276, 36.657215, 51.057941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117374, -0.278085, 0.953358,
		-0.978176, 0.133363, 0.159330,
		-0.171450, -0.951253, -0.256363,
		38.071842, 36.371838, 50.981033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795521, 36.770618, 51.703316>,  <38.191856, 37.037716, 51.160488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795521, 36.770618, 51.703316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.918900, 36.441799, 51.511856>,  <37.992928, 36.244507, 51.396980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.918900, 36.441799, 51.511856>,  <37.795521, 36.770618, 51.703316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918900, 36.441799, 51.511856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059460, -0.485535, 0.872193,
		-0.949381, -0.297487, -0.100883,
		0.308449, -0.822045, -0.478646,
		38.011433, 36.195187, 51.368263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324306, 36.347042, 51.990917>,  <37.795521, 36.770618, 51.703316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324306, 36.347042, 51.990917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.602013, 36.106422, 51.832863>,  <37.768635, 35.962051, 51.738029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.602013, 36.106422, 51.832863>,  <37.324306, 36.347042, 51.990917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602013, 36.106422, 51.832863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000115, -0.549113, 0.835748,
		-0.719719, -0.580185, -0.381299,
		0.694265, -0.601548, -0.395140,
		37.810291, 35.925957, 51.714321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137238, 35.593040, 52.055237>,  <37.324306, 36.347042, 51.990917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137238, 35.593040, 52.055237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.535988, 35.592945, 52.023621>,  <37.775238, 35.592888, 52.004650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.535988, 35.592945, 52.023621>,  <37.137238, 35.593040, 52.055237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535988, 35.592945, 52.023621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068525, -0.495742, 0.865762,
		-0.039390, -0.868470, -0.494175,
		0.996871, -0.000239, -0.079040,
		37.835049, 35.592873, 51.999908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358585, 34.886692, 52.187809>,  <37.137238, 35.593040, 52.055237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358585, 34.886692, 52.187809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.687069, 35.107811, 52.244408>,  <37.884159, 35.240482, 52.278366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.687069, 35.107811, 52.244408>,  <37.358585, 34.886692, 52.187809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687069, 35.107811, 52.244408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216847, -0.531699, 0.818703,
		0.527815, -0.641644, -0.556510,
		0.821212, 0.552801, 0.141500,
		37.933434, 35.273651, 52.286858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970490, 34.434772, 52.289742>,  <37.358585, 34.886692, 52.187809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970490, 34.434772, 52.289742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.116592, 34.778397, 52.433189>,  <38.204254, 34.984570, 52.519257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.116592, 34.778397, 52.433189>,  <37.970490, 34.434772, 52.289742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116592, 34.778397, 52.433189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394196, -0.491726, 0.776411,
		0.843323, -0.142227, -0.518245,
		0.365262, 0.859056, 0.358619,
		38.226170, 35.036114, 52.540775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632351, 34.203148, 52.615597>,  <37.970490, 34.434772, 52.289742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632351, 34.203148, 52.615597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568172, 34.564854, 52.773865>,  <38.529667, 34.781879, 52.868828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.568172, 34.564854, 52.773865>,  <38.632351, 34.203148, 52.615597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568172, 34.564854, 52.773865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458980, -0.286540, 0.840971,
		0.873839, 0.316536, -0.369067,
		-0.160445, 0.904268, 0.395674,
		38.520039, 34.836136, 52.892567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285831, 34.474598, 52.973824>,  <38.632351, 34.203148, 52.615597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285831, 34.474598, 52.973824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.974297, 34.683628, 53.112579>,  <38.787376, 34.809044, 53.195835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.974297, 34.683628, 53.112579>,  <39.285831, 34.474598, 52.973824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974297, 34.683628, 53.112579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273522, -0.214736, 0.937590,
		0.564449, 0.825110, 0.024308,
		-0.778834, 0.522573, 0.346893,
		38.740646, 34.840401, 53.216648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559895, 34.861015, 53.419964>,  <39.285831, 34.474598, 52.973824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559895, 34.861015, 53.419964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.172962, 34.837761, 53.518669>,  <38.940804, 34.823811, 53.577892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.172962, 34.837761, 53.518669>,  <39.559895, 34.861015, 53.419964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172962, 34.837761, 53.518669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251144, -0.352532, 0.901470,
		0.034587, 0.933992, 0.355615,
		-0.967332, -0.058132, 0.246759,
		38.882763, 34.820320, 53.592697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552658, 35.129250, 54.161079>,  <39.559895, 34.861015, 53.419964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552658, 35.129250, 54.161079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.224957, 34.914238, 54.081188>,  <39.028336, 34.785233, 54.033253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.224957, 34.914238, 54.081188>,  <39.552658, 35.129250, 54.161079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224957, 34.914238, 54.081188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133794, -0.517876, 0.844928,
		-0.557606, 0.665486, 0.496188,
		-0.819252, -0.537524, -0.199732,
		38.979179, 34.752979, 54.021267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224419, 35.111134, 54.794273>,  <39.552658, 35.129250, 54.161079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224419, 35.111134, 54.794273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078911, 34.802750, 54.585163>,  <38.991608, 34.617722, 54.459698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078911, 34.802750, 54.585163>,  <39.224419, 35.111134, 54.794273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078911, 34.802750, 54.585163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023349, -0.568600, 0.822283,
		-0.931197, 0.286914, 0.224839,
		-0.363768, -0.770957, -0.522779,
		38.969780, 34.571461, 54.428329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638050, 34.870281, 55.109276>,  <39.224419, 35.111134, 54.794273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638050, 34.870281, 55.109276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.817337, 34.578030, 54.903252>,  <38.924908, 34.402679, 54.779636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.817337, 34.578030, 54.903252>,  <38.638050, 34.870281, 55.109276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817337, 34.578030, 54.903252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167903, -0.497117, 0.851283,
		-0.878015, -0.468040, -0.100141,
		0.448216, -0.730625, -0.515062,
		38.951801, 34.358841, 54.748734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882252, 34.843742, 55.470016>,  <38.638050, 34.870281, 55.109276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882252, 34.843742, 55.470016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.755672, 34.484425, 55.591957>,  <37.679726, 34.268833, 55.665119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.755672, 34.484425, 55.591957>,  <37.882252, 34.843742, 55.470016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755672, 34.484425, 55.591957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804393, -0.083763, 0.588163,
		-0.502808, 0.431340, 0.749086,
		-0.316444, -0.898293, 0.304850,
		37.660740, 34.214935, 55.683411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229164, 34.479290, 55.605991>,  <37.882252, 34.843742, 55.470016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229164, 34.479290, 55.605991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.978642, 34.174927, 55.538151>,  <36.828331, 33.992310, 55.497448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.978642, 34.174927, 55.538151>,  <37.229164, 34.479290, 55.605991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978642, 34.174927, 55.538151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194398, 0.363117, -0.911238,
		0.754954, -0.537740, -0.375340,
		-0.626302, -0.760909, -0.169602,
		36.790752, 33.946655, 55.487270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438095, 34.032257, 55.079006>,  <37.229164, 34.479290, 55.605991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438095, 34.032257, 55.079006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043972, 34.079620, 55.128246>,  <36.807499, 34.108040, 55.157791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043972, 34.079620, 55.128246>,  <37.438095, 34.032257, 55.079006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043972, 34.079620, 55.128246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077851, 0.330138, -0.940717,
		-0.152028, -0.936477, -0.316068,
		-0.985305, 0.118409, 0.123096,
		36.748379, 34.115143, 55.165176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117764, 33.896187, 54.476601>,  <37.438095, 34.032257, 55.079006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117764, 33.896187, 54.476601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.834736, 34.101799, 54.670559>,  <36.664921, 34.225166, 54.786934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.834736, 34.101799, 54.670559>,  <37.117764, 33.896187, 54.476601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834736, 34.101799, 54.670559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222149, 0.489592, -0.843178,
		-0.670821, -0.704323, -0.232226,
		-0.707566, 0.514033, 0.484893,
		36.622467, 34.256008, 54.816029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574551, 33.843391, 53.976006>,  <37.117764, 33.896187, 54.476601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574551, 33.843391, 53.976006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479195, 34.142899, 54.223396>,  <36.421982, 34.322601, 54.371830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479195, 34.142899, 54.223396>,  <36.574551, 33.843391, 53.976006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479195, 34.142899, 54.223396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435099, 0.487009, -0.757306,
		-0.868251, -0.449633, 0.209691,
		-0.238388, 0.748768, 0.618481,
		36.407677, 34.367527, 54.408939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953098, 34.040047, 53.766132>,  <36.574551, 33.843391, 53.976006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953098, 34.040047, 53.766132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097939, 34.355408, 53.965054>,  <36.184845, 34.544624, 54.084404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097939, 34.355408, 53.965054>,  <35.953098, 34.040047, 53.766132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097939, 34.355408, 53.965054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488843, 0.614869, -0.618845,
		-0.793671, -0.019015, 0.608050,
		0.362104, 0.788400, 0.497299,
		36.206570, 34.591927, 54.114243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363029, 34.424908, 54.034504>,  <35.953098, 34.040047, 53.766132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363029, 34.424908, 54.034504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667221, 34.682590, 54.001831>,  <35.849735, 34.837200, 53.982227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667221, 34.682590, 54.001831>,  <35.363029, 34.424908, 54.034504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667221, 34.682590, 54.001831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535376, 0.550820, -0.640289,
		-0.367485, 0.530657, 0.763778,
		0.760478, 0.644205, -0.081683,
		35.895363, 34.875851, 53.977325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034630, 35.084858, 53.992863>,  <35.363029, 34.424908, 54.034504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034630, 35.084858, 53.992863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.409138, 35.136440, 53.862156>,  <35.633842, 35.167389, 53.783733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.409138, 35.136440, 53.862156>,  <35.034630, 35.084858, 53.992863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409138, 35.136440, 53.862156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335528, 0.603787, -0.723092,
		0.104047, 0.786645, 0.608575,
		0.936267, 0.128958, -0.326764,
		35.690018, 35.175129, 53.764126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051182, 35.734936, 53.765156>,  <35.034630, 35.084858, 53.992863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051182, 35.734936, 53.765156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.380878, 35.574890, 53.604889>,  <35.578697, 35.478863, 53.508728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.380878, 35.574890, 53.604889>,  <35.051182, 35.734936, 53.765156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380878, 35.574890, 53.604889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137133, 0.545473, -0.826834,
		0.549377, 0.736457, 0.394735,
		0.824245, -0.400113, -0.400662,
		35.628151, 35.454857, 53.484692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435371, 36.297775, 53.514114>,  <35.051182, 35.734936, 53.765156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435371, 36.297775, 53.514114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.552368, 35.985909, 53.292637>,  <35.622566, 35.798790, 53.159752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.552368, 35.985909, 53.292637>,  <35.435371, 36.297775, 53.514114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552368, 35.985909, 53.292637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160430, 0.530796, -0.832176,
		0.942713, 0.332237, 0.030175,
		0.292497, -0.779663, -0.553689,
		35.640118, 35.752010, 53.126530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737244, 36.547302, 52.929932>,  <35.435371, 36.297775, 53.514114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737244, 36.547302, 52.929932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.703594, 36.166874, 52.811008>,  <35.683403, 35.938618, 52.739655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.703594, 36.166874, 52.811008>,  <35.737244, 36.547302, 52.929932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703594, 36.166874, 52.811008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152105, 0.307127, -0.939434,
		0.984778, -0.033807, -0.170499,
		-0.084125, -0.951068, -0.297310,
		35.678356, 35.881554, 52.721817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196766, 36.488747, 52.363098>,  <35.737244, 36.547302, 52.929932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196766, 36.488747, 52.363098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.951244, 36.177677, 52.308723>,  <35.803932, 35.991035, 52.276100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.951244, 36.177677, 52.308723>,  <36.196766, 36.488747, 52.363098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951244, 36.177677, 52.308723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024202, 0.190642, -0.981361,
		0.789089, -0.599071, -0.135837,
		-0.613802, -0.777669, -0.135934,
		35.767105, 35.944378, 52.267944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488064, 36.173664, 51.822178>,  <36.196766, 36.488747, 52.363098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488064, 36.173664, 51.822178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097061, 36.094902, 51.852390>,  <35.862457, 36.047646, 51.870518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097061, 36.094902, 51.852390>,  <36.488064, 36.173664, 51.822178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097061, 36.094902, 51.852390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123399, 0.243589, -0.961996,
		0.171023, -0.949681, -0.262408,
		-0.977509, -0.196905, 0.075530,
		35.803810, 36.035831, 51.875050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300274, 35.780357, 51.271507>,  <36.488064, 36.173664, 51.822178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300274, 35.780357, 51.271507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.951397, 35.930241, 51.397282>,  <35.742069, 36.020172, 51.472744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.951397, 35.930241, 51.397282>,  <36.300274, 35.780357, 51.271507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951397, 35.930241, 51.397282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275328, 0.155251, -0.948732,
		-0.404315, -0.914051, -0.032241,
		-0.872195, 0.374709, 0.314434,
		35.689739, 36.042652, 51.491611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701328, 35.395428, 50.892765>,  <36.300274, 35.780357, 51.271507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701328, 35.395428, 50.892765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568256, 35.749207, 51.023663>,  <35.488415, 35.961472, 51.102200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568256, 35.749207, 51.023663>,  <35.701328, 35.395428, 50.892765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568256, 35.749207, 51.023663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322541, 0.219366, -0.920785,
		-0.886167, -0.411874, 0.212291,
		-0.332678, 0.884443, 0.327241,
		35.468452, 36.014538, 51.121834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107365, 35.444813, 50.481625>,  <35.701328, 35.395428, 50.892765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107365, 35.444813, 50.481625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.187706, 35.820175, 50.594093>,  <35.235912, 36.045391, 50.661575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.187706, 35.820175, 50.594093>,  <35.107365, 35.444813, 50.481625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187706, 35.820175, 50.594093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147765, 0.312758, -0.938269,
		-0.968413, 0.146906, 0.201482,
		0.200852, 0.938403, 0.281171,
		35.247963, 36.101696, 50.678444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567036, 35.853619, 50.156216>,  <35.107365, 35.444813, 50.481625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567036, 35.853619, 50.156216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.857536, 36.117504, 50.233501>,  <35.031837, 36.275837, 50.279873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.857536, 36.117504, 50.233501>,  <34.567036, 35.853619, 50.156216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857536, 36.117504, 50.233501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145826, 0.422523, -0.894544,
		-0.671780, 0.621492, 0.403063,
		0.726256, 0.659714, 0.193213,
		35.075413, 36.315418, 50.291466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426743, 36.639362, 49.839172>,  <34.567036, 35.853619, 50.156216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426743, 36.639362, 49.839172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824486, 36.661667, 49.875282>,  <35.063129, 36.675049, 49.896950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824486, 36.661667, 49.875282>,  <34.426743, 36.639362, 49.839172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824486, 36.661667, 49.875282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038475, 0.603417, -0.796497,
		-0.098893, 0.795474, 0.597864,
		0.994354, 0.055765, 0.090280,
		35.122791, 36.678398, 49.902367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617573, 37.399498, 49.761391>,  <34.426743, 36.639362, 49.839172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617573, 37.399498, 49.761391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.957291, 37.208187, 49.671989>,  <35.161121, 37.093399, 49.618347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.957291, 37.208187, 49.671989>,  <34.617573, 37.399498, 49.761391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957291, 37.208187, 49.671989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182579, 0.663337, -0.725706,
		0.495349, 0.575527, 0.650690,
		0.849290, -0.478280, -0.223505,
		35.212078, 37.064705, 49.604939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107014, 37.885204, 49.664085>,  <34.617573, 37.399498, 49.761391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107014, 37.885204, 49.664085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.273872, 37.582470, 49.462814>,  <35.373985, 37.400829, 49.342052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.273872, 37.582470, 49.462814>,  <35.107014, 37.885204, 49.664085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273872, 37.582470, 49.462814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216094, 0.620362, -0.753959,
		0.882776, 0.205777, 0.422329,
		0.417144, -0.756840, -0.503174,
		35.399017, 37.355419, 49.311863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558636, 38.225590, 49.217827>,  <35.107014, 37.885204, 49.664085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558636, 38.225590, 49.217827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553581, 37.856003, 49.064922>,  <35.550549, 37.634251, 48.973179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553581, 37.856003, 49.064922>,  <35.558636, 38.225590, 49.217827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553581, 37.856003, 49.064922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076996, 0.380258, -0.921670,
		0.996951, -0.041082, 0.066336,
		-0.012640, -0.923967, -0.382262,
		35.549789, 37.578812, 48.950245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077343, 38.208160, 48.689606>,  <35.558636, 38.225590, 49.217827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077343, 38.208160, 48.689606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.855141, 37.886284, 48.605816>,  <35.721821, 37.693157, 48.555542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.855141, 37.886284, 48.605816>,  <36.077343, 38.208160, 48.689606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855141, 37.886284, 48.605816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034469, 0.229416, -0.972718,
		0.830798, -0.547571, -0.099706,
		-0.555506, -0.804695, -0.209473,
		35.688488, 37.644875, 48.542973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.063461, 29.377382, 31.110338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.699398, 29.244293, 31.209063>,  <41.480961, 29.164440, 31.268297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.699398, 29.244293, 31.209063>,  <42.063461, 29.377382, 31.110338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699398, 29.244293, 31.209063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185148, 0.859657, 0.476141,
		-0.370595, 0.387665, -0.844023,
		-0.910154, -0.332725, 0.246809,
		41.426353, 29.144476, 31.283106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562553, 29.889811, 30.954275>,  <42.063461, 29.377382, 31.110338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562553, 29.889811, 30.954275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.378292, 29.664457, 31.228619>,  <41.267735, 29.529245, 31.393225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.378292, 29.664457, 31.228619>,  <41.562553, 29.889811, 30.954275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378292, 29.664457, 31.228619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144678, 0.810054, 0.568226,
		-0.875711, 0.162524, -0.454661,
		-0.460650, -0.563381, 0.685860,
		41.240097, 29.495443, 31.434376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883377, 30.151608, 30.952667>,  <41.562553, 29.889811, 30.954275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883377, 30.151608, 30.952667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957668, 29.984041, 31.308199>,  <41.002243, 29.883501, 31.521517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957668, 29.984041, 31.308199>,  <40.883377, 30.151608, 30.952667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957668, 29.984041, 31.308199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314463, 0.831651, 0.457679,
		-0.930923, -0.364507, 0.022726,
		0.185727, -0.418918, 0.888827,
		41.013386, 29.858366, 31.574846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401951, 30.533392, 31.344973>,  <40.883377, 30.151608, 30.952667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401951, 30.533392, 31.344973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.635529, 30.331234, 31.599085>,  <40.775677, 30.209938, 31.751553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.635529, 30.331234, 31.599085>,  <40.401951, 30.533392, 31.344973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635529, 30.331234, 31.599085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207370, 0.663738, 0.718645,
		-0.784862, -0.551387, 0.282781,
		0.583944, -0.505396, 0.635283,
		40.810711, 30.179615, 31.789669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012543, 30.533211, 31.924534>,  <40.401951, 30.533392, 31.344973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012543, 30.533211, 31.924534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.401295, 30.486507, 32.006332>,  <40.634544, 30.458485, 32.055412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.401295, 30.486507, 32.006332>,  <40.012543, 30.533211, 31.924534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401295, 30.486507, 32.006332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087849, 0.625947, 0.774902,
		-0.218479, -0.771075, 0.598088,
		0.971879, -0.116758, 0.204495,
		40.692860, 30.451481, 32.067680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988499, 30.695105, 32.630032>,  <40.012543, 30.533211, 31.924534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988499, 30.695105, 32.630032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.372398, 30.706635, 32.518288>,  <40.602737, 30.713552, 32.451241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.372398, 30.706635, 32.518288>,  <39.988499, 30.695105, 32.630032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372398, 30.706635, 32.518288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177491, 0.708636, 0.682885,
		0.217649, -0.704985, 0.675000,
		0.959753, 0.028823, -0.279362,
		40.660324, 30.715282, 32.434479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397892, 30.619570, 33.284985>,  <39.988499, 30.695105, 32.630032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397892, 30.619570, 33.284985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.566639, 30.811331, 32.977165>,  <40.667885, 30.926388, 32.792473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.566639, 30.811331, 32.977165>,  <40.397892, 30.619570, 33.284985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566639, 30.811331, 32.977165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112072, 0.814691, 0.568962,
		0.899706, -0.326269, 0.289961,
		0.421863, 0.479402, -0.769548,
		40.693199, 30.955151, 32.746300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935463, 30.970280, 33.599861>,  <40.397892, 30.619570, 33.284985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935463, 30.970280, 33.599861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.892406, 31.151995, 33.246132>,  <40.866573, 31.261024, 33.033894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.892406, 31.151995, 33.246132>,  <40.935463, 30.970280, 33.599861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892406, 31.151995, 33.246132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159389, 0.885875, 0.435684,
		0.981330, -0.094055, -0.167764,
		-0.107640, 0.454290, -0.884327,
		40.860115, 31.288282, 32.980835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510681, 31.330681, 33.460281>,  <40.935463, 30.970280, 33.599861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510681, 31.330681, 33.460281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.224041, 31.521856, 33.257084>,  <41.052059, 31.636562, 33.135166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.224041, 31.521856, 33.257084>,  <41.510681, 31.330681, 33.460281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224041, 31.521856, 33.257084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018428, 0.741044, 0.671204,
		0.697244, 0.471621, -0.539838,
		-0.716597, 0.477941, -0.507997,
		41.009064, 31.665239, 33.104683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843430, 31.961292, 33.358765>,  <41.510681, 31.330681, 33.460281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843430, 31.961292, 33.358765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.453022, 32.010822, 33.287144>,  <41.218777, 32.040539, 33.244171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.453022, 32.010822, 33.287144>,  <41.843430, 31.961292, 33.358765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453022, 32.010822, 33.287144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018514, 0.866714, 0.498462,
		0.216909, 0.483192, -0.848219,
		-0.976016, 0.123825, -0.179052,
		41.160217, 32.047970, 33.233429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814373, 32.629082, 33.133865>,  <41.843430, 31.961292, 33.358765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814373, 32.629082, 33.133865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.438190, 32.542606, 33.238789>,  <41.212482, 32.490719, 33.301743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.438190, 32.542606, 33.238789>,  <41.814373, 32.629082, 33.133865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438190, 32.542606, 33.238789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119515, 0.932713, 0.340239,
		-0.318211, 0.288630, -0.903014,
		-0.940456, -0.216191, 0.262304,
		41.156052, 32.477749, 33.317478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405991, 33.083088, 32.865734>,  <41.814373, 32.629082, 33.133865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405991, 33.083088, 32.865734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.209614, 32.941101, 33.183971>,  <41.091789, 32.855907, 33.374916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.209614, 32.941101, 33.183971>,  <41.405991, 33.083088, 32.865734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209614, 32.941101, 33.183971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144665, 0.933765, 0.327346,
		-0.859098, 0.045613, -0.509775,
		-0.490941, -0.354969, 0.795596,
		41.062332, 32.834610, 33.422649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799175, 33.505924, 32.902061>,  <41.405991, 33.083088, 32.865734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799175, 33.505924, 32.902061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836189, 33.365784, 33.274876>,  <40.858398, 33.281700, 33.498566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836189, 33.365784, 33.274876>,  <40.799175, 33.505924, 32.902061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836189, 33.365784, 33.274876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072412, 0.935940, 0.344634,
		-0.993073, 0.035599, 0.111980,
		0.092538, -0.350356, 0.932034,
		40.863949, 33.260677, 33.554485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344749, 33.858261, 33.390858>,  <40.799175, 33.505924, 32.902061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344749, 33.858261, 33.390858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.633175, 33.701668, 33.619526>,  <40.806229, 33.607712, 33.756725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.633175, 33.701668, 33.619526>,  <40.344749, 33.858261, 33.390858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633175, 33.701668, 33.619526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210383, 0.909833, 0.357692,
		-0.660155, -0.137649, 0.738410,
		0.721065, -0.391481, 0.571671,
		40.849495, 33.584225, 33.791027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125473, 34.123089, 33.985210>,  <40.344749, 33.858261, 33.390858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125473, 34.123089, 33.985210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.508656, 34.011665, 34.012707>,  <40.738564, 33.944813, 34.029205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.508656, 34.011665, 34.012707>,  <40.125473, 34.123089, 33.985210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508656, 34.011665, 34.012707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225451, 0.879011, 0.420133,
		-0.177455, -0.386972, 0.904855,
		0.957957, -0.278556, 0.068741,
		40.796043, 33.928101, 34.033329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186977, 34.234467, 34.638760>,  <40.125473, 34.123089, 33.985210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186977, 34.234467, 34.638760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.552143, 34.248199, 34.476078>,  <40.771244, 34.256439, 34.378468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.552143, 34.248199, 34.476078>,  <40.186977, 34.234467, 34.638760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552143, 34.248199, 34.476078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165002, 0.880360, 0.444680,
		0.373312, -0.473062, 0.798030,
		0.912914, 0.034328, -0.406705,
		40.826019, 34.258499, 34.354065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606625, 34.473709, 35.189789>,  <40.186977, 34.234467, 34.638760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606625, 34.473709, 35.189789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.824348, 34.540600, 34.860970>,  <40.954983, 34.580734, 34.663677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.824348, 34.540600, 34.860970>,  <40.606625, 34.473709, 35.189789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824348, 34.540600, 34.860970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288005, 0.883115, 0.370353,
		0.787896, -0.438340, 0.432524,
		0.544309, 0.167230, -0.822047,
		40.987640, 34.590771, 34.614357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210949, 34.632469, 35.454124>,  <40.606625, 34.473709, 35.189789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210949, 34.632469, 35.454124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.240677, 34.783039, 35.084740>,  <41.258514, 34.873379, 34.863110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.240677, 34.783039, 35.084740>,  <41.210949, 34.632469, 35.454124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240677, 34.783039, 35.084740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347184, 0.858324, 0.377812,
		0.934847, -0.348691, -0.066897,
		0.074320, 0.376423, -0.923462,
		41.262974, 34.895966, 34.807701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790691, 34.983059, 35.443947>,  <41.210949, 34.632469, 35.454124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790691, 34.983059, 35.443947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.591629, 35.134609, 35.131847>,  <41.472191, 35.225540, 34.944588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.591629, 35.134609, 35.131847>,  <41.790691, 34.983059, 35.443947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591629, 35.134609, 35.131847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256626, 0.923596, 0.284805,
		0.828539, -0.058495, -0.556867,
		-0.497660, 0.378879, -0.780247,
		41.442329, 35.248272, 34.897774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266773, 35.463997, 35.122810>,  <41.790691, 34.983059, 35.443947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266773, 35.463997, 35.122810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.908676, 35.572029, 34.981049>,  <41.693817, 35.636848, 34.895992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.908676, 35.572029, 34.981049>,  <42.266773, 35.463997, 35.122810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908676, 35.572029, 34.981049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230547, 0.961388, 0.150273,
		0.381308, 0.052823, -0.922938,
		-0.895239, 0.270081, -0.354406,
		41.640106, 35.653053, 34.874725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374016, 36.019768, 34.792202>,  <42.266773, 35.463997, 35.122810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374016, 36.019768, 34.792202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.985199, 36.056469, 34.878654>,  <41.751907, 36.078487, 34.930527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.985199, 36.056469, 34.878654>,  <42.374016, 36.019768, 34.792202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985199, 36.056469, 34.878654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170022, 0.909893, 0.378401,
		-0.161941, 0.404570, -0.900055,
		-0.972043, 0.091751, 0.216134,
		41.693584, 36.083996, 34.943493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072109, 36.259453, 35.077099>,  <42.374016, 36.019768, 34.792202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072109, 36.259453, 35.077099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.403969, 36.036369, 35.066914>,  <43.603085, 35.902519, 35.060802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.403969, 36.036369, 35.066914>,  <43.072109, 36.259453, 35.077099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403969, 36.036369, 35.066914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242302, -0.318603, -0.916396,
		0.502969, 0.766454, -0.399462,
		0.829646, -0.557709, -0.025465,
		43.652863, 35.869057, 35.059273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351074, 36.539715, 34.369934>,  <43.072109, 36.259453, 35.077099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351074, 36.539715, 34.369934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.540596, 36.196297, 34.448330>,  <43.654308, 35.990246, 34.495369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.540596, 36.196297, 34.448330>,  <43.351074, 36.539715, 34.369934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540596, 36.196297, 34.448330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134213, -0.149561, -0.979601,
		0.870341, 0.490447, 0.044364,
		0.473808, -0.858541, 0.195993,
		43.682739, 35.938736, 34.507130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.011803, 36.624504, 33.959229>,  <43.351074, 36.539715, 34.369934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.011803, 36.624504, 33.959229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.937428, 36.239799, 34.039677>,  <43.892803, 36.008976, 34.087944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.937428, 36.239799, 34.039677>,  <44.011803, 36.624504, 33.959229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.937428, 36.239799, 34.039677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222302, -0.240556, -0.944836,
		0.957084, -0.130970, 0.258529,
		-0.185936, -0.961759, 0.201117,
		43.881645, 35.951271, 34.100010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521187, 36.229515, 33.622093>,  <44.011803, 36.624504, 33.959229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521187, 36.229515, 33.622093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.217644, 35.977669, 33.688698>,  <44.035519, 35.826561, 33.728661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.217644, 35.977669, 33.688698>,  <44.521187, 36.229515, 33.622093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217644, 35.977669, 33.688698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066487, -0.329236, -0.941904,
		0.647857, -0.703698, 0.291703,
		-0.758855, -0.629614, 0.166511,
		43.989986, 35.788784, 33.738651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748081, 35.621738, 33.358658>,  <44.521187, 36.229515, 33.622093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748081, 35.621738, 33.358658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.349377, 35.590721, 33.367146>,  <44.110153, 35.572109, 33.372238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.349377, 35.590721, 33.367146>,  <44.748081, 35.621738, 33.358658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349377, 35.590721, 33.367146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018193, -0.474671, -0.879975,
		0.078310, -0.876741, 0.474546,
		-0.996763, -0.077544, 0.021221,
		44.050346, 35.567459, 33.373512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633987, 34.909637, 33.265846>,  <44.748081, 35.621738, 33.358658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633987, 34.909637, 33.265846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.265976, 35.027035, 33.161999>,  <44.045170, 35.097473, 33.099689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.265976, 35.027035, 33.161999>,  <44.633987, 34.909637, 33.265846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.265976, 35.027035, 33.161999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021477, -0.699329, -0.714477,
		-0.391253, -0.651767, 0.649709,
		-0.920033, 0.293495, -0.259616,
		43.989967, 35.115082, 33.084114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211754, 34.354126, 33.288700>,  <44.633987, 34.909637, 33.265846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211754, 34.354126, 33.288700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.990929, 34.598034, 33.061226>,  <43.858433, 34.744377, 32.924740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.990929, 34.598034, 33.061226>,  <44.211754, 34.354126, 33.288700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990929, 34.598034, 33.061226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180113, -0.753150, -0.632712,
		-0.814116, -0.246870, 0.525614,
		-0.552064, 0.609771, -0.568687,
		43.825310, 34.780964, 32.890621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.562649, 34.072975, 33.196892>,  <44.211754, 34.354126, 33.288700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.562649, 34.072975, 33.196892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.570057, 34.321476, 32.883533>,  <43.574501, 34.470577, 32.695518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.570057, 34.321476, 32.883533>,  <43.562649, 34.072975, 33.196892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570057, 34.321476, 32.883533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364544, -0.725395, -0.583875,
		-0.931002, 0.296395, 0.213040,
		0.018519, 0.621251, -0.783393,
		43.575611, 34.507851, 32.648514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941181, 33.882439, 32.737999>,  <43.562649, 34.072975, 33.196892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941181, 33.882439, 32.737999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.168774, 34.117485, 32.507877>,  <43.305328, 34.258511, 32.369804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.168774, 34.117485, 32.507877>,  <42.941181, 33.882439, 32.737999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168774, 34.117485, 32.507877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039589, -0.679198, -0.732887,
		-0.821396, 0.439776, -0.363189,
		0.568983, 0.587612, -0.575301,
		43.339470, 34.293770, 32.335289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568920, 33.970512, 32.105564>,  <42.941181, 33.882439, 32.737999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568920, 33.970512, 32.105564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.955727, 34.042599, 32.033558>,  <43.187809, 34.085850, 31.990355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.955727, 34.042599, 32.033558>,  <42.568920, 33.970512, 32.105564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955727, 34.042599, 32.033558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021221, -0.647269, -0.761966,
		-0.253835, 0.740653, -0.622094,
		0.967015, 0.180212, -0.180017,
		43.245831, 34.096661, 31.979553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584606, 33.989204, 31.413052>,  <42.568920, 33.970512, 32.105564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584606, 33.989204, 31.413052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.971359, 33.959393, 31.510685>,  <43.203411, 33.941505, 31.569265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.971359, 33.959393, 31.510685>,  <42.584606, 33.989204, 31.413052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.971359, 33.959393, 31.510685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153893, -0.592699, -0.790585,
		0.203587, 0.801968, -0.561604,
		0.966886, -0.074526, 0.244083,
		43.261425, 33.937035, 31.583910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948120, 34.162834, 30.873198>,  <42.584606, 33.989204, 31.413052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948120, 34.162834, 30.873198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.205463, 33.923996, 31.064848>,  <43.359871, 33.780693, 31.179838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.205463, 33.923996, 31.064848>,  <42.948120, 34.162834, 30.873198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205463, 33.923996, 31.064848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005166, -0.622449, -0.782643,
		0.765546, 0.505997, -0.397374,
		0.643360, -0.597097, 0.479127,
		43.398472, 33.744865, 31.208586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422150, 33.916317, 30.339230>,  <42.948120, 34.162834, 30.873198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422150, 33.916317, 30.339230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.464195, 33.643314, 30.628540>,  <43.489422, 33.479511, 30.802126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.464195, 33.643314, 30.628540>,  <43.422150, 33.916317, 30.339230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464195, 33.643314, 30.628540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016261, -0.726029, -0.687471,
		0.994327, 0.084025, -0.065219,
		0.105116, -0.682511, 0.723277,
		43.495731, 33.438560, 30.845524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921680, 33.469315, 30.168715>,  <43.422150, 33.916317, 30.339230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921680, 33.469315, 30.168715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.714577, 33.255096, 30.435583>,  <43.590317, 33.126564, 30.595705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.714577, 33.255096, 30.435583>,  <43.921680, 33.469315, 30.168715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714577, 33.255096, 30.435583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090226, -0.741308, -0.665072,
		0.850758, -0.404541, 0.335496,
		-0.517755, -0.535545, 0.667174,
		43.559250, 33.094433, 30.635735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132626, 32.777359, 30.152412>,  <43.921680, 33.469315, 30.168715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132626, 32.777359, 30.152412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.772625, 32.751575, 30.324850>,  <43.556625, 32.736103, 30.428312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.772625, 32.751575, 30.324850>,  <44.132626, 32.777359, 30.152412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772625, 32.751575, 30.324850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275134, -0.683078, -0.676539,
		0.338084, -0.727495, 0.597035,
		-0.900000, -0.064463, 0.431096,
		43.502625, 32.732235, 30.454180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113537, 32.032227, 30.263500>,  <44.132626, 32.777359, 30.152412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113537, 32.032227, 30.263500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.742004, 32.175137, 30.302748>,  <43.519085, 32.260883, 30.326296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.742004, 32.175137, 30.302748>,  <44.113537, 32.032227, 30.263500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742004, 32.175137, 30.302748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363447, -0.827192, -0.428555,
		-0.071948, -0.433716, 0.898172,
		-0.928832, 0.357272, 0.098118,
		43.463356, 32.282318, 30.332184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707020, 31.609531, 30.726431>,  <44.113537, 32.032227, 30.263500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707020, 31.609531, 30.726431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.439659, 31.806110, 30.503105>,  <43.279243, 31.924059, 30.369110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.439659, 31.806110, 30.503105>,  <43.707020, 31.609531, 30.726431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439659, 31.806110, 30.503105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335151, -0.869102, -0.363780,
		-0.664013, -0.056031, 0.745619,
		-0.668401, 0.491450, -0.558316,
		43.239140, 31.953545, 30.335609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157364, 31.233753, 30.758684>,  <43.707020, 31.609531, 30.726431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157364, 31.233753, 30.758684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.093956, 31.459969, 30.434946>,  <43.055912, 31.595697, 30.240704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.093956, 31.459969, 30.434946>,  <43.157364, 31.233753, 30.758684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093956, 31.459969, 30.434946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225717, -0.818758, -0.527907,
		-0.961209, 0.098999, 0.257441,
		-0.158520, 0.565538, -0.809344,
		43.046398, 31.629631, 30.192142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632446, 30.861609, 30.440378>,  <43.157364, 31.233753, 30.758684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632446, 30.861609, 30.440378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.793400, 31.107101, 30.168669>,  <42.889973, 31.254398, 30.005642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.793400, 31.107101, 30.168669>,  <42.632446, 30.861609, 30.440378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793400, 31.107101, 30.168669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177616, -0.675560, -0.715592,
		-0.898074, 0.408596, -0.162828,
		0.402388, 0.613734, -0.679275,
		42.914116, 31.291222, 29.964886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190765, 30.753248, 29.921841>,  <42.632446, 30.861609, 30.440378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190765, 30.753248, 29.921841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.531822, 30.896418, 29.769579>,  <42.736458, 30.982319, 29.678223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.531822, 30.896418, 29.769579>,  <42.190765, 30.753248, 29.921841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531822, 30.896418, 29.769579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044867, -0.675679, -0.735829,
		-0.520568, 0.644476, -0.560053,
		0.852641, 0.357921, -0.380653,
		42.787613, 31.003794, 29.655384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085838, 30.718580, 29.186487>,  <42.190765, 30.753248, 29.921841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085838, 30.718580, 29.186487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.480301, 30.744234, 29.247658>,  <42.716976, 30.759626, 29.284361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.480301, 30.744234, 29.247658>,  <42.085838, 30.718580, 29.186487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480301, 30.744234, 29.247658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155508, -0.677937, -0.718484,
		0.057595, 0.732317, -0.678524,
		0.986154, 0.064135, 0.152927,
		42.776146, 30.763475, 29.293535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.405602, 36.560368, 44.676140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034996, 36.437756, 44.588863>,  <39.812634, 36.364189, 44.536499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034996, 36.437756, 44.588863>,  <40.405602, 36.560368, 44.676140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034996, 36.437756, 44.588863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214048, 0.047508, -0.975667,
		0.309437, -0.950675, 0.021595,
		-0.926516, -0.306530, -0.218191,
		39.757042, 36.345798, 44.523407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475697, 36.269413, 44.080513>,  <40.405602, 36.560368, 44.676140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475697, 36.269413, 44.080513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076115, 36.252174, 44.074333>,  <39.836365, 36.241833, 44.070625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076115, 36.252174, 44.074333>,  <40.475697, 36.269413, 44.080513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076115, 36.252174, 44.074333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011618, 0.087810, -0.996070,
		0.044277, -0.995205, -0.087217,
		-0.998952, -0.043089, -0.015450,
		39.776428, 36.239246, 44.069698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256973, 35.822380, 43.565475>,  <40.475697, 36.269413, 44.080513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256973, 35.822380, 43.565475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973072, 36.097527, 43.626270>,  <39.802731, 36.262615, 43.662746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973072, 36.097527, 43.626270>,  <40.256973, 35.822380, 43.565475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973072, 36.097527, 43.626270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042405, 0.257074, -0.965461,
		-0.703178, -0.678790, -0.211627,
		-0.709748, 0.687865, 0.151984,
		39.760147, 36.303886, 43.671867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911453, 35.810059, 43.007423>,  <40.256973, 35.822380, 43.565475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911453, 35.810059, 43.007423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803699, 36.159824, 43.168835>,  <39.739048, 36.369682, 43.265682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803699, 36.159824, 43.168835>,  <39.911453, 35.810059, 43.007423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803699, 36.159824, 43.168835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066545, 0.401113, -0.913608,
		-0.960730, -0.272967, -0.049867,
		-0.269387, 0.874412, 0.403526,
		39.722881, 36.422150, 43.289894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287033, 35.972214, 42.705467>,  <39.911453, 35.810059, 43.007423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287033, 35.972214, 42.705467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461243, 36.302948, 42.847820>,  <39.565769, 36.501389, 42.933231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461243, 36.302948, 42.847820>,  <39.287033, 35.972214, 42.705467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461243, 36.302948, 42.847820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054492, 0.418842, -0.906423,
		-0.898526, 0.375377, 0.227472,
		0.435525, 0.826839, 0.355885,
		39.591900, 36.550999, 42.954586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881977, 36.462852, 42.610306>,  <39.287033, 35.972214, 42.705467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881977, 36.462852, 42.610306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231155, 36.652954, 42.654308>,  <39.440662, 36.767014, 42.680710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231155, 36.652954, 42.654308>,  <38.881977, 36.462852, 42.610306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231155, 36.652954, 42.654308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119162, 0.426422, -0.896641,
		-0.473041, 0.769609, 0.428875,
		0.872945, 0.475254, 0.110007,
		39.493038, 36.795528, 42.687309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739849, 36.976551, 42.211388>,  <38.881977, 36.462852, 42.610306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739849, 36.976551, 42.211388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129910, 37.057102, 42.248318>,  <39.363945, 37.105434, 42.270477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129910, 37.057102, 42.248318>,  <38.739849, 36.976551, 42.211388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129910, 37.057102, 42.248318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009186, 0.453155, -0.891384,
		-0.221342, 0.868388, 0.443745,
		0.975153, 0.201377, 0.092325,
		39.422455, 37.117516, 42.276016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883186, 37.758392, 42.086475>,  <38.739849, 36.976551, 42.211388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883186, 37.758392, 42.086475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227993, 37.561344, 42.038715>,  <39.434875, 37.443115, 42.010059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227993, 37.561344, 42.038715>,  <38.883186, 37.758392, 42.086475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227993, 37.561344, 42.038715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142004, 0.460818, -0.876060,
		0.486584, 0.738223, 0.467186,
		0.862016, -0.492619, -0.119396,
		39.486599, 37.413559, 42.002895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369328, 38.207981, 41.973755>,  <38.883186, 37.758392, 42.086475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369328, 38.207981, 41.973755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533733, 37.888020, 41.798840>,  <39.632378, 37.696041, 41.693890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533733, 37.888020, 41.798840>,  <39.369328, 38.207981, 41.973755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533733, 37.888020, 41.798840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226247, 0.554177, -0.801062,
		0.883107, 0.230314, 0.408751,
		0.411016, -0.799902, -0.437290,
		39.657040, 37.648048, 41.667652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885109, 38.423885, 41.580101>,  <39.369328, 38.207981, 41.973755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885109, 38.423885, 41.580101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851757, 38.067043, 41.402473>,  <39.831749, 37.852940, 41.295898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851757, 38.067043, 41.402473>,  <39.885109, 38.423885, 41.580101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851757, 38.067043, 41.402473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102119, 0.435623, -0.894318,
		0.991272, -0.119911, 0.054781,
		-0.083375, -0.892107, -0.444066,
		39.826744, 37.799412, 41.269253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472248, 38.338188, 41.042358>,  <39.885109, 38.423885, 41.580101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472248, 38.338188, 41.042358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183395, 38.072575, 40.964806>,  <40.010082, 37.913208, 40.918274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183395, 38.072575, 40.964806>,  <40.472248, 38.338188, 41.042358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183395, 38.072575, 40.964806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068616, 0.210135, -0.975261,
		0.688345, -0.717570, -0.106182,
		-0.722131, -0.664031, -0.193883,
		39.966755, 37.873367, 40.906639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903767, 37.891006, 40.511562>,  <40.472248, 38.338188, 41.042358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903767, 37.891006, 40.511562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507404, 37.852810, 40.473656>,  <40.269585, 37.829891, 40.450912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507404, 37.852810, 40.473656>,  <40.903767, 37.891006, 40.511562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507404, 37.852810, 40.473656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088257, 0.070191, -0.993622,
		0.101531, -0.992953, -0.061125,
		-0.990910, -0.095489, -0.094762,
		40.210133, 37.824162, 40.445229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803394, 37.441315, 39.949162>,  <40.903767, 37.891006, 40.511562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803394, 37.441315, 39.949162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493000, 37.679066, 40.033600>,  <40.306763, 37.821716, 40.084263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493000, 37.679066, 40.033600>,  <40.803394, 37.441315, 39.949162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493000, 37.679066, 40.033600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120182, 0.189212, -0.974554,
		-0.619194, -0.781610, -0.075393,
		-0.775986, 0.594377, 0.211095,
		40.260204, 37.857380, 40.096928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232517, 37.250965, 39.580448>,  <40.803394, 37.441315, 39.949162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232517, 37.250965, 39.580448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154671, 37.628742, 39.686401>,  <40.107964, 37.855408, 39.749973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154671, 37.628742, 39.686401>,  <40.232517, 37.250965, 39.580448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154671, 37.628742, 39.686401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406370, 0.168149, -0.898103,
		-0.892743, -0.282423, 0.351068,
		-0.194613, 0.944438, 0.264882,
		40.096287, 37.912075, 39.765865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125229, 36.654034, 39.128593>,  <40.232517, 37.250965, 39.580448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125229, 36.654034, 39.128593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050705, 36.331802, 38.903618>,  <40.005989, 36.138466, 38.768631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050705, 36.331802, 38.903618>,  <40.125229, 36.654034, 39.128593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050705, 36.331802, 38.903618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179942, -0.534803, 0.825595,
		-0.965872, 0.255023, -0.045317,
		-0.186310, -0.805574, -0.562441,
		39.994812, 36.090130, 38.734886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485008, 36.237885, 39.349045>,  <40.125229, 36.654034, 39.128593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485008, 36.237885, 39.349045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682568, 35.958683, 39.141640>,  <39.801102, 35.791161, 39.017197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682568, 35.958683, 39.141640>,  <39.485008, 36.237885, 39.349045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682568, 35.958683, 39.141640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115609, -0.643738, 0.756462,
		-0.861800, -0.313671, -0.398637,
		0.493899, -0.698005, -0.518510,
		39.830738, 35.749283, 38.986088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038799, 35.595913, 39.358109>,  <39.485008, 36.237885, 39.349045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038799, 35.595913, 39.358109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414661, 35.466888, 39.312504>,  <39.640179, 35.389473, 39.285141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414661, 35.466888, 39.312504>,  <39.038799, 35.595913, 39.358109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414661, 35.466888, 39.312504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113229, -0.607683, 0.786067,
		-0.322837, -0.725724, -0.607537,
		0.939657, -0.322562, -0.114009,
		39.696560, 35.370121, 39.278301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886692, 34.920818, 39.265781>,  <39.038799, 35.595913, 39.358109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886692, 34.920818, 39.265781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277248, 34.943012, 39.349277>,  <39.511581, 34.956329, 39.399376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277248, 34.943012, 39.349277>,  <38.886692, 34.920818, 39.265781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277248, 34.943012, 39.349277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089171, -0.776681, 0.623550,
		0.196726, -0.627445, -0.753400,
		0.976395, 0.055488, 0.208743,
		39.570168, 34.959660, 39.411900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148804, 34.259979, 39.224396>,  <38.886692, 34.920818, 39.265781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148804, 34.259979, 39.224396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415085, 34.446064, 39.457775>,  <39.574856, 34.557716, 39.597801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415085, 34.446064, 39.457775>,  <39.148804, 34.259979, 39.224396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415085, 34.446064, 39.457775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073135, -0.737439, 0.671443,
		0.742622, -0.489653, -0.456893,
		0.665705, 0.465213, 0.583449,
		39.614796, 34.585629, 39.632809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700287, 33.712612, 39.376770>,  <39.148804, 34.259979, 39.224396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700287, 33.712612, 39.376770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716057, 33.997784, 39.656822>,  <39.725517, 34.168884, 39.824852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716057, 33.997784, 39.656822>,  <39.700287, 33.712612, 39.376770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716057, 33.997784, 39.656822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316513, -0.655686, 0.685489,
		0.947769, -0.248625, 0.199801,
		0.039423, 0.712925, 0.700131,
		39.727882, 34.211662, 39.866863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931099, 33.327145, 40.002426>,  <39.700287, 33.712612, 39.376770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931099, 33.327145, 40.002426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803234, 33.681026, 40.138134>,  <39.726517, 33.893356, 40.219559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803234, 33.681026, 40.138134>,  <39.931099, 33.327145, 40.002426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803234, 33.681026, 40.138134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233457, -0.420561, 0.876713,
		0.918321, 0.201047, 0.340980,
		-0.319664, 0.884708, 0.339274,
		39.707336, 33.946438, 40.239918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355682, 33.571892, 40.572140>,  <39.931099, 33.327145, 40.002426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355682, 33.571892, 40.572140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005737, 33.762939, 40.604385>,  <39.795769, 33.877567, 40.623734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005737, 33.762939, 40.604385>,  <40.355682, 33.571892, 40.572140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005737, 33.762939, 40.604385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113782, -0.364415, 0.924259,
		0.470820, 0.799427, 0.373157,
		-0.874861, 0.477618, 0.080613,
		39.743279, 33.906223, 40.628571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409519, 34.162701, 41.048660>,  <40.355682, 33.571892, 40.572140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409519, 34.162701, 41.048660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029453, 34.038109, 41.043423>,  <39.801414, 33.963356, 41.040279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029453, 34.038109, 41.043423>,  <40.409519, 34.162701, 41.048660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029453, 34.038109, 41.043423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093195, -0.323858, 0.941504,
		-0.297497, 0.893363, 0.336746,
		-0.950163, -0.311478, -0.013090,
		39.744404, 33.944664, 41.039497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277035, 34.300224, 41.665169>,  <40.409519, 34.162701, 41.048660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277035, 34.300224, 41.665169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965828, 34.077763, 41.548286>,  <39.779106, 33.944286, 41.478157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965828, 34.077763, 41.548286>,  <40.277035, 34.300224, 41.665169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965828, 34.077763, 41.548286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173397, -0.256950, 0.950742,
		-0.603844, 0.790358, 0.103474,
		-0.778015, -0.556157, -0.292203,
		39.732422, 33.910915, 41.460625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689938, 34.577419, 42.092331>,  <40.277035, 34.300224, 41.665169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689938, 34.577419, 42.092331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586494, 34.208496, 41.977463>,  <39.524429, 33.987141, 41.908543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586494, 34.208496, 41.977463>,  <39.689938, 34.577419, 42.092331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586494, 34.208496, 41.977463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226963, -0.230943, 0.946125,
		-0.938942, 0.309848, -0.149608,
		-0.258604, -0.922312, -0.287166,
		39.508915, 33.931801, 41.891312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986809, 34.420746, 42.323257>,  <39.689938, 34.577419, 42.092331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986809, 34.420746, 42.323257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205509, 34.089119, 42.276409>,  <39.336731, 33.890144, 42.248302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205509, 34.089119, 42.276409>,  <38.986809, 34.420746, 42.323257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205509, 34.089119, 42.276409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147678, -0.233167, 0.961158,
		-0.824170, -0.508218, -0.249919,
		0.546750, -0.829064, -0.117117,
		39.369534, 33.840401, 42.241276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632847, 33.860989, 42.621952>,  <38.986809, 34.420746, 42.323257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632847, 33.860989, 42.621952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008781, 33.728394, 42.588928>,  <39.234344, 33.648838, 42.569115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008781, 33.728394, 42.588928>,  <38.632847, 33.860989, 42.621952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008781, 33.728394, 42.588928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023432, -0.303662, 0.952492,
		-0.340817, -0.893253, -0.293161,
		0.939838, -0.331494, -0.082563,
		39.290733, 33.628948, 42.564159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618473, 33.317528, 42.987968>,  <38.632847, 33.860989, 42.621952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618473, 33.317528, 42.987968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011093, 33.386795, 42.955547>,  <39.246666, 33.428356, 42.936096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011093, 33.386795, 42.955547>,  <38.618473, 33.317528, 42.987968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011093, 33.386795, 42.955547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122349, -0.243096, 0.962255,
		0.146930, -0.954419, -0.259798,
		0.981551, 0.173170, -0.081054,
		39.305557, 33.438747, 42.931232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566025, 32.585823, 42.805004>,  <38.618473, 33.317528, 42.987968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566025, 32.585823, 42.805004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224567, 32.380898, 42.767414>,  <38.019695, 32.257942, 42.744858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224567, 32.380898, 42.767414>,  <38.566025, 32.585823, 42.805004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224567, 32.380898, 42.767414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159179, 0.428391, -0.889462,
		0.495949, -0.744319, -0.447241,
		-0.853637, -0.512319, -0.093980,
		37.968475, 32.227203, 42.739220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492477, 32.544071, 42.107540>,  <38.566025, 32.585823, 42.805004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492477, 32.544071, 42.107540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122589, 32.435642, 42.214428>,  <37.900654, 32.370586, 42.278561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122589, 32.435642, 42.214428>,  <38.492477, 32.544071, 42.107540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122589, 32.435642, 42.214428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373894, 0.515261, -0.771174,
		0.071353, -0.813035, -0.577826,
		-0.924723, -0.271071, 0.267223,
		37.845173, 32.354321, 42.294594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138474, 32.215343, 41.504749>,  <38.492477, 32.544071, 42.107540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138474, 32.215343, 41.504749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857857, 32.356289, 41.752514>,  <37.689487, 32.440857, 41.901173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857857, 32.356289, 41.752514>,  <38.138474, 32.215343, 41.504749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857857, 32.356289, 41.752514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480906, 0.407348, -0.776400,
		-0.525891, -0.842560, -0.116320,
		-0.701547, 0.352363, 0.619414,
		37.647392, 32.461998, 41.938339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624950, 31.909889, 41.271633>,  <38.138474, 32.215343, 41.504749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624950, 31.909889, 41.271633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466599, 32.219490, 41.469296>,  <37.371586, 32.405251, 41.587894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466599, 32.219490, 41.469296>,  <37.624950, 31.909889, 41.271633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466599, 32.219490, 41.469296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543946, 0.235910, -0.805276,
		-0.739864, -0.587592, 0.327624,
		-0.395884, 0.774004, 0.494159,
		37.347832, 32.451691, 41.617542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878407, 31.896471, 41.177559>,  <37.624950, 31.909889, 41.271633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878407, 31.896471, 41.177559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912643, 32.268131, 41.321423>,  <36.933186, 32.491127, 41.407742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912643, 32.268131, 41.321423>,  <36.878407, 31.896471, 41.177559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912643, 32.268131, 41.321423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651024, 0.325417, -0.685763,
		-0.754216, -0.175447, 0.632753,
		0.085593, 0.929151, 0.359655,
		36.938320, 32.546875, 41.429317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191753, 32.187103, 41.241215>,  <36.878407, 31.896471, 41.177559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191753, 32.187103, 41.241215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440392, 32.500191, 41.228725>,  <36.589573, 32.688042, 41.221233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440392, 32.500191, 41.228725>,  <36.191753, 32.187103, 41.241215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440392, 32.500191, 41.228725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641053, 0.485376, -0.594525,
		-0.450191, 0.389568, 0.803470,
		0.621593, 0.782718, -0.031222,
		36.626869, 32.735004, 41.219360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817078, 32.747787, 41.413029>,  <36.191753, 32.187103, 41.241215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817078, 32.747787, 41.413029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146114, 32.924587, 41.269928>,  <36.343536, 33.030666, 41.184067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146114, 32.924587, 41.269928>,  <35.817078, 32.747787, 41.413029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146114, 32.924587, 41.269928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556872, 0.753491, -0.349492,
		0.115084, 0.486708, 0.865951,
		0.822587, 0.442003, -0.357749,
		36.392891, 33.057190, 41.162605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855022, 33.513279, 41.594509>,  <35.817078, 32.747787, 41.413029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855022, 33.513279, 41.594509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077236, 33.441315, 41.269791>,  <36.210564, 33.398136, 41.074959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077236, 33.441315, 41.269791>,  <35.855022, 33.513279, 41.594509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077236, 33.441315, 41.269791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393108, 0.803482, -0.447083,
		0.732701, 0.567493, 0.375635,
		0.555532, -0.179913, -0.811798,
		36.243896, 33.387341, 41.026253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222626, 34.165775, 41.417862>,  <35.855022, 33.513279, 41.594509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222626, 34.165775, 41.417862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161617, 33.943432, 41.090996>,  <36.125011, 33.810024, 40.894875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161617, 33.943432, 41.090996>,  <36.222626, 34.165775, 41.417862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161617, 33.943432, 41.090996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436247, 0.779792, -0.449013,
		0.886807, 0.288001, -0.361427,
		-0.152522, -0.555859, -0.817164,
		36.115860, 33.776672, 40.845848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148651, 34.652878, 40.962334>,  <36.222626, 34.165775, 41.417862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148651, 34.652878, 40.962334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033104, 34.328407, 40.758945>,  <35.963776, 34.133724, 40.636913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033104, 34.328407, 40.758945>,  <36.148651, 34.652878, 40.962334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033104, 34.328407, 40.758945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602611, 0.566759, -0.561822,
		0.743920, 0.144119, -0.652543,
		-0.288865, -0.811181, -0.508471,
		35.946445, 34.085052, 40.606403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028183, 34.874962, 40.242405>,  <36.148651, 34.652878, 40.962334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028183, 34.874962, 40.242405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830788, 34.530376, 40.290340>,  <35.712353, 34.323627, 40.319099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830788, 34.530376, 40.290340>,  <36.028183, 34.874962, 40.242405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830788, 34.530376, 40.290340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742317, 0.345359, -0.574189,
		0.453255, -0.372308, -0.809905,
		-0.493484, -0.861460, 0.119835,
		35.682743, 34.271938, 40.326290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997826, 34.533524, 39.597393>,  <36.028183, 34.874962, 40.242405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997826, 34.533524, 39.597393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691780, 34.397278, 39.815964>,  <35.508152, 34.315529, 39.947105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691780, 34.397278, 39.815964>,  <35.997826, 34.533524, 39.597393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691780, 34.397278, 39.815964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641765, 0.334397, -0.690157,
		0.052355, -0.878726, -0.474447,
		-0.765112, -0.340617, 0.546428,
		35.462246, 34.295094, 39.979893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.371887, 30.658804, 46.185055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.984116, 30.756926, 46.187317>,  <37.751453, 30.815798, 46.188675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.984116, 30.756926, 46.187317>,  <38.371887, 30.658804, 46.185055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984116, 30.756926, 46.187317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021621, -0.062434, -0.997815,
		-0.244417, -0.967433, 0.065829,
		-0.969429, 0.245306, 0.005657,
		37.693287, 30.830517, 46.189014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137169, 30.210459, 45.704601>,  <38.371887, 30.658804, 46.185055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137169, 30.210459, 45.704601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.849083, 30.487860, 45.712025>,  <37.676231, 30.654301, 45.716476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.849083, 30.487860, 45.712025>,  <38.137169, 30.210459, 45.704601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849083, 30.487860, 45.712025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005548, 0.032501, -0.999456,
		-0.693729, -0.719720, -0.027255,
		-0.720214, 0.693503, 0.018554,
		37.633018, 30.695911, 45.717590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667042, 30.020647, 45.262486>,  <38.137169, 30.210459, 45.704601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667042, 30.020647, 45.262486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.570080, 30.408247, 45.281601>,  <37.511902, 30.640806, 45.293072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.570080, 30.408247, 45.281601>,  <37.667042, 30.020647, 45.262486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570080, 30.408247, 45.281601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018013, 0.044753, -0.998836,
		-0.970008, -0.242983, 0.006607,
		-0.242405, 0.968997, 0.047787,
		37.497360, 30.698946, 45.295937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207726, 30.144781, 44.667999>,  <37.667042, 30.020647, 45.262486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207726, 30.144781, 44.667999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.383961, 30.486101, 44.779545>,  <37.489700, 30.690893, 44.846470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.383961, 30.486101, 44.779545>,  <37.207726, 30.144781, 44.667999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383961, 30.486101, 44.779545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148526, 0.237065, -0.960073,
		-0.885339, 0.464411, -0.022290,
		0.440585, 0.853301, 0.278860,
		37.516136, 30.742092, 44.863201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884884, 30.677704, 44.319656>,  <37.207726, 30.144781, 44.667999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884884, 30.677704, 44.319656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.224316, 30.852600, 44.438812>,  <37.427975, 30.957539, 44.510303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.224316, 30.852600, 44.438812>,  <36.884884, 30.677704, 44.319656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224316, 30.852600, 44.438812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121482, 0.386965, -0.914057,
		-0.514935, 0.811836, 0.275253,
		0.848578, 0.437242, 0.297885,
		37.478889, 30.983772, 44.528179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830540, 31.296963, 43.969437>,  <36.884884, 30.677704, 44.319656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830540, 31.296963, 43.969437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.215324, 31.304688, 44.078438>,  <37.446194, 31.309322, 44.143837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.215324, 31.304688, 44.078438>,  <36.830540, 31.296963, 43.969437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215324, 31.304688, 44.078438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208019, 0.594808, -0.776487,
		-0.177078, 0.803636, 0.568166,
		0.961962, 0.019310, 0.272499,
		37.503914, 31.310480, 44.160187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067593, 32.044685, 44.003090>,  <36.830540, 31.296963, 43.969437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067593, 32.044685, 44.003090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.395992, 31.833576, 43.915989>,  <37.593033, 31.706911, 43.863728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.395992, 31.833576, 43.915989>,  <37.067593, 32.044685, 44.003090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395992, 31.833576, 43.915989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117539, 0.529483, -0.840139,
		0.558698, 0.664159, 0.496739,
		0.821000, -0.527770, -0.217756,
		37.642292, 31.675245, 43.850662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595135, 32.521797, 43.854061>,  <37.067593, 32.044685, 44.003090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595135, 32.521797, 43.854061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725784, 32.182041, 43.688244>,  <37.804176, 31.978188, 43.588753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725784, 32.182041, 43.688244>,  <37.595135, 32.521797, 43.854061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725784, 32.182041, 43.688244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084276, 0.463024, -0.882330,
		0.941388, 0.253258, 0.222820,
		0.326629, -0.849393, -0.414541,
		37.823772, 31.927223, 43.563881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165257, 32.680576, 43.475559>,  <37.595135, 32.521797, 43.854061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165257, 32.680576, 43.475559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.015675, 32.349277, 43.308632>,  <37.925926, 32.150497, 43.208473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.015675, 32.349277, 43.308632>,  <38.165257, 32.680576, 43.475559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015675, 32.349277, 43.308632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155541, 0.499603, -0.852176,
		0.914310, -0.253768, -0.315657,
		-0.373958, -0.828251, -0.417321,
		37.903488, 32.100803, 43.183437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911453, 32.987034, 43.644680>,  <38.165257, 32.680576, 43.475559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911453, 32.987034, 43.644680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.220203, 33.202057, 43.508888>,  <39.405453, 33.331070, 43.427414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.220203, 33.202057, 43.508888>,  <38.911453, 32.987034, 43.644680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220203, 33.202057, 43.508888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567409, -0.341568, 0.749252,
		0.286811, -0.770949, -0.568662,
		0.771872, 0.537557, -0.339478,
		39.451767, 33.363323, 43.407043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508732, 32.523403, 43.738686>,  <38.911453, 32.987034, 43.644680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508732, 32.523403, 43.738686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.625107, 32.905998, 43.729843>,  <39.694931, 33.135555, 43.724537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.625107, 32.905998, 43.729843>,  <39.508732, 32.523403, 43.738686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625107, 32.905998, 43.729843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597277, -0.163530, 0.785187,
		0.747407, -0.241641, -0.618865,
		0.290936, 0.956487, -0.022103,
		39.712387, 33.192944, 43.723213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229946, 32.652020, 43.709686>,  <39.508732, 32.523403, 43.738686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229946, 32.652020, 43.709686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.086433, 32.992767, 43.862316>,  <40.000328, 33.197216, 43.953896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.086433, 32.992767, 43.862316>,  <40.229946, 32.652020, 43.709686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086433, 32.992767, 43.862316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682573, -0.039400, 0.729754,
		0.636687, 0.522276, -0.567325,
		-0.358780, 0.851866, 0.381577,
		39.978798, 33.248325, 43.976788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807648, 33.126507, 43.888317>,  <40.229946, 32.652020, 43.709686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807648, 33.126507, 43.888317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.502457, 33.254246, 44.113132>,  <40.319344, 33.330887, 44.248020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.502457, 33.254246, 44.113132>,  <40.807648, 33.126507, 43.888317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502457, 33.254246, 44.113132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611481, 0.074562, 0.787738,
		0.209652, 0.944701, -0.252161,
		-0.762979, 0.319343, 0.562035,
		40.273563, 33.350048, 44.281742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241756, 33.473743, 44.475594>,  <40.807648, 33.126507, 43.888317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241756, 33.473743, 44.475594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.868439, 33.419640, 44.608665>,  <40.644447, 33.387177, 44.688507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.868439, 33.419640, 44.608665>,  <41.241756, 33.473743, 44.475594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868439, 33.419640, 44.608665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346404, -0.094724, 0.933291,
		-0.094724, 0.986272, 0.135260,
		-0.933291, -0.135260, 0.332675,
		40.588451, 33.379063, 44.708469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218525, 33.791985, 45.138145>,  <41.241756, 33.473743, 44.475594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218525, 33.791985, 45.138145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.896080, 33.555637, 45.125134>,  <40.702614, 33.413830, 45.117325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.896080, 33.555637, 45.125134>,  <41.218525, 33.791985, 45.138145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896080, 33.555637, 45.125134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252335, -0.392937, 0.884267,
		-0.535266, 0.704610, 0.465848,
		-0.806113, -0.590868, -0.032528,
		40.654247, 33.378376, 45.115376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000904, 33.807377, 45.820728>,  <41.218525, 33.791985, 45.138145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000904, 33.807377, 45.820728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.812885, 33.489155, 45.667809>,  <40.700073, 33.298222, 45.576057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.812885, 33.489155, 45.667809>,  <41.000904, 33.807377, 45.820728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812885, 33.489155, 45.667809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065478, -0.463368, 0.883744,
		-0.880212, 0.390365, 0.269894,
		-0.470043, -0.795554, -0.382302,
		40.671871, 33.250488, 45.553120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414967, 33.756744, 46.244236>,  <41.000904, 33.807377, 45.820728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414967, 33.756744, 46.244236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.451530, 33.400337, 46.066372>,  <40.473469, 33.186493, 45.959652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.451530, 33.400337, 46.066372>,  <40.414967, 33.756744, 46.244236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451530, 33.400337, 46.066372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125018, -0.432732, 0.892812,
		-0.987935, -0.137201, 0.071839,
		0.091408, -0.891021, -0.444663,
		40.478954, 33.133030, 45.932972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945847, 33.421391, 46.578724>,  <40.414967, 33.756744, 46.244236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945847, 33.421391, 46.578724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.209091, 33.162224, 46.425316>,  <40.367039, 33.006721, 46.333271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.209091, 33.162224, 46.425316>,  <39.945847, 33.421391, 46.578724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209091, 33.162224, 46.425316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143329, -0.392255, 0.908621,
		-0.739153, -0.652943, -0.165282,
		0.658110, -0.647921, -0.383523,
		40.406525, 32.967846, 46.310261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866676, 32.833412, 46.942860>,  <39.945847, 33.421391, 46.578724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866676, 32.833412, 46.942860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.235386, 32.802261, 46.790928>,  <40.456612, 32.783569, 46.699768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.235386, 32.802261, 46.790928>,  <39.866676, 32.833412, 46.942860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235386, 32.802261, 46.790928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349046, -0.259859, 0.900356,
		-0.168819, -0.962501, -0.212348,
		0.921774, -0.077878, -0.379827,
		40.511917, 32.778896, 46.676979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011036, 32.374531, 47.320835>,  <39.866676, 32.833412, 46.942860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011036, 32.374531, 47.320835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.361797, 32.513596, 47.188068>,  <40.572254, 32.597034, 47.108410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.361797, 32.513596, 47.188068>,  <40.011036, 32.374531, 47.320835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361797, 32.513596, 47.188068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410330, -0.181825, 0.893627,
		0.250335, -0.919819, -0.302101,
		0.876904, 0.347667, -0.331912,
		40.624870, 32.617897, 47.088493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504944, 31.888386, 47.497192>,  <40.011036, 32.374531, 47.320835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504944, 31.888386, 47.497192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.698143, 32.238049, 47.476971>,  <40.814064, 32.447845, 47.464836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.698143, 32.238049, 47.476971>,  <40.504944, 31.888386, 47.497192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698143, 32.238049, 47.476971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341734, -0.135033, 0.930045,
		0.806180, -0.466491, -0.363950,
		0.483003, 0.874158, -0.050555,
		40.843044, 32.500298, 47.461803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188892, 31.723709, 47.707973>,  <40.504944, 31.888386, 47.497192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188892, 31.723709, 47.707973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.125862, 32.108791, 47.795944>,  <41.088043, 32.339840, 47.848728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.125862, 32.108791, 47.795944>,  <41.188892, 31.723709, 47.707973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125862, 32.108791, 47.795944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351531, -0.153438, 0.923517,
		0.922819, 0.222839, -0.314242,
		-0.157579, 0.962704, 0.219930,
		41.078590, 32.397602, 47.861923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721519, 31.890572, 48.223301>,  <41.188892, 31.723709, 47.707973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721519, 31.890572, 48.223301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.501308, 32.223785, 48.245090>,  <41.369183, 32.423714, 48.258163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.501308, 32.223785, 48.245090>,  <41.721519, 31.890572, 48.223301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501308, 32.223785, 48.245090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249275, 0.101765, 0.963071,
		0.796729, 0.543779, -0.263680,
		-0.550531, 0.833036, 0.054471,
		41.336147, 32.473698, 48.261433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.125675, 35.075840, 49.361900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.436756, 34.854622, 49.242355>,  <33.623405, 34.721889, 49.170628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.436756, 34.854622, 49.242355>,  <33.125675, 35.075840, 49.361900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436756, 34.854622, 49.242355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066493, 0.400380, -0.913934,
		0.625107, 0.730640, 0.274602,
		0.777702, -0.553047, -0.298862,
		33.670067, 34.688709, 49.152695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613426, 35.580849, 49.083332>,  <33.125675, 35.075840, 49.361900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613426, 35.580849, 49.083332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.679050, 35.216770, 48.931217>,  <33.718426, 34.998322, 48.839947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.679050, 35.216770, 48.931217>,  <33.613426, 35.580849, 49.083332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679050, 35.216770, 48.931217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034805, 0.379930, -0.924360,
		0.985836, 0.164888, 0.030653,
		0.164062, -0.910200, -0.380288,
		33.728268, 34.943710, 48.817131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101379, 35.750076, 48.603199>,  <33.613426, 35.580849, 49.083332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101379, 35.750076, 48.603199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944920, 35.396057, 48.502247>,  <33.851044, 35.183647, 48.441673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944920, 35.396057, 48.502247>,  <34.101379, 35.750076, 48.603199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944920, 35.396057, 48.502247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043897, 0.255977, -0.965686,
		0.919281, -0.388804, -0.061274,
		-0.391147, -0.885046, -0.252382,
		33.827576, 35.130543, 48.426533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571072, 35.463715, 48.074135>,  <34.101379, 35.750076, 48.603199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571072, 35.463715, 48.074135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228703, 35.259388, 48.041985>,  <34.023281, 35.136791, 48.022694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228703, 35.259388, 48.041985>,  <34.571072, 35.463715, 48.074135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228703, 35.259388, 48.041985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026390, 0.198375, -0.979771,
		0.516429, -0.836487, -0.183275,
		-0.855923, -0.510819, -0.080372,
		33.971924, 35.106144, 48.017872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710724, 35.181263, 47.413822>,  <34.571072, 35.463715, 48.074135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710724, 35.181263, 47.413822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.331669, 35.077923, 47.488903>,  <34.104237, 35.015919, 47.533951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.331669, 35.077923, 47.488903>,  <34.710724, 35.181263, 47.413822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331669, 35.077923, 47.488903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202904, 0.033244, -0.978634,
		0.246590, -0.965479, -0.083923,
		-0.947641, -0.258350, 0.187702,
		34.047375, 35.000420, 47.545212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475117, 34.689156, 46.814365>,  <34.710724, 35.181263, 47.413822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475117, 34.689156, 46.814365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.142990, 34.833157, 46.984528>,  <33.943714, 34.919556, 47.086624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.142990, 34.833157, 46.984528>,  <34.475117, 34.689156, 46.814365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142990, 34.833157, 46.984528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419255, 0.099382, -0.902413,
		-0.367145, -0.927645, 0.068412,
		-0.830319, 0.359998, 0.425407,
		33.893894, 34.941154, 47.112148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901058, 34.358227, 46.479511>,  <34.475117, 34.689156, 46.814365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901058, 34.358227, 46.479511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.771255, 34.712749, 46.611668>,  <33.693375, 34.925465, 46.690964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.771255, 34.712749, 46.611668>,  <33.901058, 34.358227, 46.479511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771255, 34.712749, 46.611668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367532, 0.203702, -0.907428,
		-0.871560, -0.415894, 0.259644,
		-0.324504, 0.886305, 0.330393,
		33.673904, 34.978642, 46.710785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270565, 34.468109, 46.194988>,  <33.901058, 34.358227, 46.479511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270565, 34.468109, 46.194988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.361988, 34.840672, 46.308304>,  <33.416843, 35.064209, 46.376293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.361988, 34.840672, 46.308304>,  <33.270565, 34.468109, 46.194988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361988, 34.840672, 46.308304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342667, 0.349336, -0.872092,
		-0.911230, 0.102251, 0.399004,
		0.228559, 0.931402, 0.283287,
		33.430557, 35.120090, 46.393291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662758, 34.903797, 46.083282>,  <33.270565, 34.468109, 46.194988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662758, 34.903797, 46.083282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.999363, 35.119522, 46.095860>,  <33.201328, 35.248959, 46.103405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.999363, 35.119522, 46.095860>,  <32.662758, 34.903797, 46.083282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999363, 35.119522, 46.095860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184647, 0.341835, -0.921442,
		-0.507696, 0.769602, 0.387242,
		0.841516, 0.539316, 0.031444,
		33.251820, 35.281319, 46.105293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506420, 35.592941, 45.900551>,  <32.662758, 34.903797, 46.083282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506420, 35.592941, 45.900551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.900417, 35.566708, 45.836697>,  <33.136814, 35.550968, 45.798382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.900417, 35.566708, 45.836697>,  <32.506420, 35.592941, 45.900551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900417, 35.566708, 45.836697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127662, 0.345556, -0.929674,
		0.116139, 0.936103, 0.331998,
		0.984994, -0.065588, -0.159637,
		33.195915, 35.547031, 45.788807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668510, 36.195038, 45.499897>,  <32.506420, 35.592941, 45.900551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668510, 36.195038, 45.499897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.987186, 35.955524, 45.467072>,  <33.178394, 35.811817, 45.447376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.987186, 35.955524, 45.467072>,  <32.668510, 36.195038, 45.499897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987186, 35.955524, 45.467072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149355, 0.326631, -0.933276,
		0.585638, 0.731279, 0.349657,
		0.796694, -0.598785, -0.082067,
		33.226196, 35.775890, 45.442451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050415, 36.611130, 45.139469>,  <32.668510, 36.195038, 45.499897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050415, 36.611130, 45.139469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.226486, 36.256481, 45.082699>,  <33.332130, 36.043694, 45.048637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.226486, 36.256481, 45.082699>,  <33.050415, 36.611130, 45.139469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226486, 36.256481, 45.082699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045864, 0.180062, -0.982585,
		0.896737, 0.426006, 0.119924,
		0.440181, -0.886621, -0.141930,
		33.358540, 35.990494, 45.040119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721535, 36.788513, 45.000710>,  <33.050415, 36.611130, 45.139469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721535, 36.788513, 45.000710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.631393, 36.425129, 44.859901>,  <33.577309, 36.207100, 44.775417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.631393, 36.425129, 44.859901>,  <33.721535, 36.788513, 45.000710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631393, 36.425129, 44.859901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115821, 0.333776, -0.935510,
		0.967367, -0.251595, 0.029999,
		-0.225357, -0.908457, -0.352024,
		33.563786, 36.152592, 44.754295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257664, 36.597610, 44.440384>,  <33.721535, 36.788513, 45.000710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257664, 36.597610, 44.440384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.920692, 36.398563, 44.357738>,  <33.718510, 36.279137, 44.308151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.920692, 36.398563, 44.357738>,  <34.257664, 36.597610, 44.440384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920692, 36.398563, 44.357738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009503, 0.397130, -0.917713,
		0.538723, -0.771145, -0.339282,
		-0.842429, -0.497618, -0.206615,
		33.667965, 36.249279, 44.295753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097061, 36.624184, 44.455631>,  <34.257664, 36.597610, 44.440384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097061, 36.624184, 44.455631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.336277, 36.944424, 44.470551>,  <35.479805, 37.136566, 44.479500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.336277, 36.944424, 44.470551>,  <35.097061, 36.624184, 44.455631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336277, 36.944424, 44.470551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040276, -0.016454, 0.999053,
		0.800454, -0.598975, 0.022404,
		0.598039, 0.800598, 0.037295,
		35.515690, 37.184605, 44.481739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462715, 36.499992, 45.071247>,  <35.097061, 36.624184, 44.455631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462715, 36.499992, 45.071247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.496372, 36.889999, 44.989025>,  <35.516567, 37.124004, 44.939690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.496372, 36.889999, 44.989025>,  <35.462715, 36.499992, 45.071247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496372, 36.889999, 44.989025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035310, 0.203243, 0.978492,
		0.995828, -0.089593, -0.017326,
		0.084145, 0.975021, -0.205559,
		35.521614, 37.182507, 44.927357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031738, 36.716286, 45.534443>,  <35.462715, 36.499992, 45.071247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031738, 36.716286, 45.534443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.846802, 37.051342, 45.418106>,  <35.735840, 37.252377, 45.348305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.846802, 37.051342, 45.418106>,  <36.031738, 36.716286, 45.534443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846802, 37.051342, 45.418106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149239, 0.249815, 0.956724,
		0.874052, 0.485739, 0.009509,
		-0.462343, 0.837645, -0.290843,
		35.708099, 37.302635, 45.330853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400417, 37.206104, 45.691174>,  <36.031738, 36.716286, 45.534443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400417, 37.206104, 45.691174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.026863, 37.349121, 45.689587>,  <35.802731, 37.434933, 45.688633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.026863, 37.349121, 45.689587>,  <36.400417, 37.206104, 45.691174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026863, 37.349121, 45.689587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049397, 0.140001, 0.988918,
		0.354139, 0.923342, -0.148407,
		-0.933887, 0.357545, -0.003970,
		35.746696, 37.456387, 45.688396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440540, 37.831615, 46.005638>,  <36.400417, 37.206104, 45.691174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440540, 37.831615, 46.005638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.045040, 37.775871, 46.027378>,  <35.807739, 37.742424, 46.040421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.045040, 37.775871, 46.027378>,  <36.440540, 37.831615, 46.005638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045040, 37.775871, 46.027378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003658, 0.340697, 0.940166,
		-0.149535, 0.929788, -0.336354,
		-0.988750, -0.139357, 0.054348,
		35.748417, 37.734062, 46.043682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155037, 38.457809, 46.500221>,  <36.440540, 37.831615, 46.005638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155037, 38.457809, 46.500221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.893467, 38.155193, 46.498089>,  <35.736523, 37.973625, 46.496811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.893467, 38.155193, 46.498089>,  <36.155037, 38.457809, 46.500221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893467, 38.155193, 46.498089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304160, 0.256442, 0.917455,
		-0.692723, 0.601571, -0.397803,
		-0.653928, -0.756538, -0.005331,
		35.697289, 37.928230, 46.496490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552845, 38.635548, 46.961628>,  <36.155037, 38.457809, 46.500221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552845, 38.635548, 46.961628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.516281, 38.239536, 46.918747>,  <35.494343, 38.001930, 46.893021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.516281, 38.239536, 46.918747>,  <35.552845, 38.635548, 46.961628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516281, 38.239536, 46.918747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144482, -0.093324, 0.985097,
		-0.985276, 0.105539, -0.134510,
		-0.091413, -0.990027, -0.107199,
		35.488857, 37.942528, 46.886589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930733, 38.371986, 47.168232>,  <35.552845, 38.635548, 46.961628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930733, 38.371986, 47.168232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.189034, 38.071121, 47.220787>,  <35.344013, 37.890602, 47.252319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.189034, 38.071121, 47.220787>,  <34.930733, 38.371986, 47.168232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189034, 38.071121, 47.220787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336059, -0.125461, 0.933447,
		-0.685620, -0.646925, -0.333787,
		0.645747, -0.752162, 0.131386,
		35.382759, 37.845474, 47.260204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696941, 38.117626, 47.789822>,  <34.930733, 38.371986, 47.168232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696941, 38.117626, 47.789822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.026592, 37.899315, 47.729237>,  <35.224384, 37.768330, 47.692886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.026592, 37.899315, 47.729237>,  <34.696941, 38.117626, 47.789822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026592, 37.899315, 47.729237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052759, -0.340213, 0.938867,
		-0.563941, -0.765756, -0.309174,
		0.824128, -0.545778, -0.151459,
		35.273830, 37.735580, 47.683800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580662, 37.434406, 48.050144>,  <34.696941, 38.117626, 47.789822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580662, 37.434406, 48.050144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.980450, 37.447392, 48.048645>,  <35.220322, 37.455185, 48.047745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.980450, 37.447392, 48.048645>,  <34.580662, 37.434406, 48.050144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980450, 37.447392, 48.048645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019870, -0.512476, 0.858472,
		0.025948, -0.858088, -0.512847,
		0.999466, 0.032466, -0.003752,
		35.280289, 37.457130, 48.047520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828156, 36.707638, 48.081947>,  <34.580662, 37.434406, 48.050144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828156, 36.707638, 48.081947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.106998, 36.955959, 48.225414>,  <35.274303, 37.104950, 48.311493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.106998, 36.955959, 48.225414>,  <34.828156, 36.707638, 48.081947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106998, 36.955959, 48.225414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019917, -0.516834, 0.855854,
		0.716686, -0.589482, -0.372655,
		0.697112, 0.620801, 0.358666,
		35.316132, 37.142200, 48.333015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331757, 36.321518, 48.443535>,  <34.828156, 36.707638, 48.081947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331757, 36.321518, 48.443535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.383568, 36.688038, 48.595127>,  <35.414654, 36.907948, 48.686081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.383568, 36.688038, 48.595127>,  <35.331757, 36.321518, 48.443535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383568, 36.688038, 48.595127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009778, -0.383357, 0.923548,
		0.991528, -0.115920, -0.058615,
		0.129528, 0.916297, 0.378976,
		35.422428, 36.962929, 48.708820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004238, 36.402531, 48.736649>,  <35.331757, 36.321518, 48.443535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004238, 36.402531, 48.736649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.810261, 36.700699, 48.919594>,  <35.693874, 36.879601, 49.029362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.810261, 36.700699, 48.919594>,  <36.004238, 36.402531, 48.736649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810261, 36.700699, 48.919594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117742, -0.462564, 0.878732,
		0.866586, 0.479983, 0.136549,
		-0.484939, 0.745420, 0.457366,
		35.664780, 36.924324, 49.056805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332523, 36.396599, 49.333363>,  <36.004238, 36.402531, 48.736649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332523, 36.396599, 49.333363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.989231, 36.586803, 49.410645>,  <35.783257, 36.700928, 49.457012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.989231, 36.586803, 49.410645>,  <36.332523, 36.396599, 49.333363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989231, 36.586803, 49.410645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041595, -0.439620, 0.897220,
		0.511574, 0.761987, 0.397075,
		-0.858232, 0.475510, 0.193203,
		35.731762, 36.729458, 49.468605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792080, 36.713291, 49.755722>,  <36.332523, 36.396599, 49.333363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792080, 36.713291, 49.755722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.182228, 36.625790, 49.744423>,  <37.416317, 36.573288, 49.737644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.182228, 36.625790, 49.744423>,  <36.792080, 36.713291, 49.755722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182228, 36.625790, 49.744423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031197, 0.263603, -0.964127,
		0.218357, 0.939499, 0.263935,
		0.975370, -0.218758, -0.028250,
		37.474838, 36.560162, 49.735947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195065, 37.288319, 49.324409>,  <36.792080, 36.713291, 49.755722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195065, 37.288319, 49.324409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.408653, 36.950573, 49.306850>,  <37.536804, 36.747925, 49.296314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.408653, 36.950573, 49.306850>,  <37.195065, 37.288319, 49.324409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408653, 36.950573, 49.306850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164364, 0.154586, -0.974211,
		0.829375, 0.512983, 0.221327,
		0.533967, -0.844365, -0.043894,
		37.568844, 36.697262, 49.293682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786968, 37.432404, 48.988861>,  <37.195065, 37.288319, 49.324409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786968, 37.432404, 48.988861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.756733, 37.034615, 48.959690>,  <37.738590, 36.795940, 48.942188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.756733, 37.034615, 48.959690>,  <37.786968, 37.432404, 48.988861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756733, 37.034615, 48.959690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202401, 0.056309, -0.977682,
		0.976381, -0.088661, 0.197025,
		-0.075588, -0.994469, -0.072924,
		37.734055, 36.736275, 48.937813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349693, 37.243580, 48.583355>,  <37.786968, 37.432404, 48.988861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349693, 37.243580, 48.583355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.119728, 36.917175, 48.559364>,  <37.981750, 36.721333, 48.544971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.119728, 36.917175, 48.559364>,  <38.349693, 37.243580, 48.583355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119728, 36.917175, 48.559364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254740, -0.108853, -0.960863,
		0.777548, -0.567692, 0.270452,
		-0.574914, -0.816013, -0.059976,
		37.947254, 36.672371, 48.541370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779789, 36.717449, 48.223091>,  <38.349693, 37.243580, 48.583355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779789, 36.717449, 48.223091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.414043, 36.562168, 48.177086>,  <38.194595, 36.468998, 48.149483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.414043, 36.562168, 48.177086>,  <38.779789, 36.717449, 48.223091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414043, 36.562168, 48.177086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219328, -0.236129, -0.946646,
		0.340333, -0.890809, 0.301053,
		-0.914368, -0.388204, -0.115017,
		38.139732, 36.445705, 48.142582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872658, 36.008926, 47.895962>,  <38.779789, 36.717449, 48.223091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872658, 36.008926, 47.895962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.498432, 36.124939, 47.815361>,  <38.273895, 36.194546, 47.766998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.498432, 36.124939, 47.815361>,  <38.872658, 36.008926, 47.895962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498432, 36.124939, 47.815361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146870, -0.199369, -0.968856,
		-0.321172, -0.936020, 0.143925,
		-0.935563, 0.290031, -0.201506,
		38.217762, 36.211948, 47.754910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685291, 35.613415, 47.367222>,  <38.872658, 36.008926, 47.895962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685291, 35.613415, 47.367222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.445686, 35.931103, 47.326427>,  <38.301922, 36.121716, 47.301949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.445686, 35.931103, 47.326427>,  <38.685291, 35.613415, 47.367222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445686, 35.931103, 47.326427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165971, -0.001457, -0.986130,
		-0.783349, -0.607633, -0.130944,
		-0.599014, 0.794217, -0.101991,
		38.265984, 36.169369, 47.295830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230263, 35.366436, 46.882580>,  <38.685291, 35.613415, 47.367222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230263, 35.366436, 46.882580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.222031, 35.766315, 46.887848>,  <38.217091, 36.006245, 46.891006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.222031, 35.766315, 46.887848>,  <38.230263, 35.366436, 46.882580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222031, 35.766315, 46.887848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296150, 0.018673, -0.954959,
		-0.954920, -0.015750, -0.296446,
		-0.020576, 0.999702, 0.013167,
		38.215858, 36.066227, 46.891796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003868, 35.531441, 46.107620>,  <38.230263, 35.366436, 46.882580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003868, 35.531441, 46.107620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.140743, 35.863861, 46.283009>,  <38.222870, 36.063313, 46.388241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.140743, 35.863861, 46.283009>,  <38.003868, 35.531441, 46.107620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140743, 35.863861, 46.283009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476265, 0.248854, -0.843353,
		-0.809986, 0.497416, -0.310645,
		0.342191, 0.831053, 0.438470,
		38.243401, 36.113178, 46.414551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668198, 36.151436, 45.735119>,  <38.003868, 35.531441, 46.107620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668198, 36.151436, 45.735119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.017281, 36.248867, 45.904373>,  <38.226730, 36.307327, 46.005928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.017281, 36.248867, 45.904373>,  <37.668198, 36.151436, 45.735119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017281, 36.248867, 45.904373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401024, 0.136728, -0.905807,
		-0.278491, 0.960195, 0.021643,
		0.872710, 0.243580, 0.423138,
		38.279095, 36.321941, 46.031315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918728, 36.666241, 45.311787>,  <37.668198, 36.151436, 45.735119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918728, 36.666241, 45.311787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.245850, 36.537266, 45.502464>,  <38.442123, 36.459881, 45.616871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.245850, 36.537266, 45.502464>,  <37.918728, 36.666241, 45.311787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245850, 36.537266, 45.502464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519560, 0.057419, -0.852502,
		0.247503, 0.944849, 0.214481,
		0.817801, -0.322433, 0.476695,
		38.491192, 36.440536, 45.645473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502293, 37.166004, 45.186958>,  <37.918728, 36.666241, 45.311787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502293, 37.166004, 45.186958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.675243, 36.835667, 45.331753>,  <38.779015, 36.637466, 45.418629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.675243, 36.835667, 45.331753>,  <38.502293, 37.166004, 45.186958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675243, 36.835667, 45.331753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678834, 0.033891, -0.733509,
		0.593494, 0.562884, 0.575263,
		0.432377, -0.825841, 0.361990,
		38.804955, 36.587914, 45.440350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198566, 37.305233, 45.130600>,  <38.502293, 37.166004, 45.186958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198566, 37.305233, 45.130600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.195015, 36.907650, 45.174377>,  <39.192886, 36.669102, 45.200642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.195015, 36.907650, 45.174377>,  <39.198566, 37.305233, 45.130600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195015, 36.907650, 45.174377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553869, -0.096010, -0.827050,
		0.832556, 0.053275, 0.551372,
		-0.008876, -0.993954, 0.109441,
		39.192352, 36.609463, 45.207211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927090, 37.120338, 45.056694>,  <39.198566, 37.305233, 45.130600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927090, 37.120338, 45.056694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.696117, 36.801876, 44.984337>,  <39.557533, 36.610798, 44.940922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.696117, 36.801876, 44.984337>,  <39.927090, 37.120338, 45.056694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696117, 36.801876, 44.984337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428455, -0.106892, -0.897218,
		0.694986, -0.595580, 0.402838,
		-0.577426, -0.796152, -0.180890,
		39.522888, 36.563030, 44.930069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.466108, 31.857273, 43.600239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.077700, 31.773499, 43.646294>,  <27.844654, 31.723234, 43.673927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.077700, 31.773499, 43.646294>,  <28.466108, 31.857273, 43.600239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077700, 31.773499, 43.646294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176953, 0.306218, -0.935370,
		0.160646, -0.928637, -0.334405,
		-0.971020, -0.209437, 0.115132,
		27.786394, 31.710667, 43.680832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192524, 31.627470, 42.936195>,  <28.466108, 31.857273, 43.600239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192524, 31.627470, 42.936195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.848402, 31.726704, 43.114334>,  <27.641930, 31.786243, 43.221218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.848402, 31.726704, 43.114334>,  <28.192524, 31.627470, 42.936195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848402, 31.726704, 43.114334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275892, 0.508022, -0.815964,
		-0.428674, -0.824844, -0.368608,
		-0.860304, 0.248086, 0.445343,
		27.590311, 31.801130, 43.247936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681562, 31.469074, 42.501076>,  <28.192524, 31.627470, 42.936195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.681562, 31.469074, 42.501076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.498796, 31.736135, 42.736183>,  <27.389137, 31.896372, 42.877247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.498796, 31.736135, 42.736183>,  <27.681562, 31.469074, 42.501076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498796, 31.736135, 42.736183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480166, 0.371102, -0.794810,
		-0.748778, -0.645387, 0.151022,
		-0.456916, 0.667652, 0.587766,
		27.361721, 31.936432, 42.912514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015444, 31.472166, 42.267307>,  <27.681562, 31.469074, 42.501076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015444, 31.472166, 42.267307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.077053, 31.814766, 42.464359>,  <27.114019, 32.020325, 42.582592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.077053, 31.814766, 42.464359>,  <27.015444, 31.472166, 42.267307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077053, 31.814766, 42.464359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398423, 0.510086, -0.762281,
		-0.904177, -0.078865, 0.419815,
		0.154024, 0.856500, 0.492630,
		27.123260, 32.071716, 42.612148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379086, 31.846287, 42.307381>,  <27.015444, 31.472166, 42.267307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379086, 31.846287, 42.307381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.653681, 32.132816, 42.357365>,  <26.818438, 32.304733, 42.387356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.653681, 32.132816, 42.357365>,  <26.379086, 31.846287, 42.307381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.653681, 32.132816, 42.357365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428520, 0.537377, -0.726358,
		-0.587458, 0.445089, 0.675862,
		0.686487, 0.716325, 0.124957,
		26.859627, 32.347713, 42.394852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998743, 32.531761, 42.337582>,  <26.379086, 31.846287, 42.307381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998743, 32.531761, 42.337582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.384344, 32.624233, 42.285030>,  <26.615704, 32.679714, 42.253498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.384344, 32.624233, 42.285030>,  <25.998743, 32.531761, 42.337582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.384344, 32.624233, 42.285030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262276, 0.745417, -0.612834,
		-0.043742, 0.625229, 0.779214,
		0.964001, 0.231176, -0.131377,
		26.673544, 32.693584, 42.245617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131781, 33.208813, 42.485516>,  <25.998743, 32.531761, 42.337582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131781, 33.208813, 42.485516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.431059, 33.108963, 42.239624>,  <26.610626, 33.049053, 42.092091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.431059, 33.108963, 42.239624>,  <26.131781, 33.208813, 42.485516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431059, 33.108963, 42.239624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340172, 0.651151, -0.678443,
		0.569634, 0.716723, 0.402275,
		0.748198, -0.249622, -0.614727,
		26.655518, 33.034077, 42.055206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445868, 33.861507, 42.203583>,  <26.131781, 33.208813, 42.485516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445868, 33.861507, 42.203583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.623646, 33.619320, 41.939499>,  <26.730312, 33.474007, 41.781048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.623646, 33.619320, 41.939499>,  <26.445868, 33.861507, 42.203583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623646, 33.619320, 41.939499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193944, 0.654488, -0.730774,
		0.874560, 0.452832, 0.173457,
		0.444444, -0.605465, -0.660214,
		26.756979, 33.437679, 41.741436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036911, 34.254368, 41.835709>,  <26.445868, 33.861507, 42.203583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036911, 34.254368, 41.835709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.920265, 33.957047, 41.594887>,  <26.850277, 33.778656, 41.450394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.920265, 33.957047, 41.594887>,  <27.036911, 34.254368, 41.835709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920265, 33.957047, 41.594887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039170, 0.638161, -0.768906,
		0.955734, -0.200642, -0.215212,
		-0.291615, -0.743299, -0.602053,
		26.832781, 33.734058, 41.414272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287224, 34.456543, 41.140057>,  <27.036911, 34.254368, 41.835709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287224, 34.456543, 41.140057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.049770, 34.144100, 41.062634>,  <26.907297, 33.956635, 41.016178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.049770, 34.144100, 41.062634>,  <27.287224, 34.456543, 41.140057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049770, 34.144100, 41.062634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223304, 0.390971, -0.892904,
		0.773131, -0.486837, -0.406519,
		-0.593636, -0.781110, -0.193559,
		26.871679, 33.909767, 41.004566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558441, 34.238274, 40.565006>,  <27.287224, 34.456543, 41.140057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558441, 34.238274, 40.565006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.187206, 34.089333, 40.565884>,  <26.964466, 33.999966, 40.566410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.187206, 34.089333, 40.565884>,  <27.558441, 34.238274, 40.565006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.187206, 34.089333, 40.565884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090442, 0.219692, -0.971368,
		0.361212, -0.901713, -0.237570,
		-0.928087, -0.372356, 0.002198,
		26.908779, 33.977627, 40.566544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456820, 33.870331, 39.885971>,  <27.558441, 34.238274, 40.565006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456820, 33.870331, 39.885971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.084522, 33.959995, 40.001534>,  <26.861143, 34.013794, 40.070873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.084522, 33.959995, 40.001534>,  <27.456820, 33.870331, 39.885971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084522, 33.959995, 40.001534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237175, 0.231288, -0.943533,
		-0.278327, -0.946708, -0.162103,
		-0.930743, 0.224164, 0.288910,
		26.805300, 34.027245, 40.088207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966835, 33.519379, 39.466068>,  <27.456820, 33.870331, 39.885971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966835, 33.519379, 39.466068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.769115, 33.828194, 39.625877>,  <26.650484, 34.013485, 39.721764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.769115, 33.828194, 39.625877>,  <26.966835, 33.519379, 39.466068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769115, 33.828194, 39.625877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400047, 0.206009, -0.893041,
		-0.771770, -0.601259, 0.207022,
		-0.494301, 0.772041, 0.399524,
		26.620825, 34.059807, 39.745735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460323, 33.517296, 39.024731>,  <26.966835, 33.519379, 39.466068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460323, 33.517296, 39.024731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.415823, 33.861095, 39.224285>,  <26.389122, 34.067375, 39.344017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.415823, 33.861095, 39.224285>,  <26.460323, 33.517296, 39.024731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415823, 33.861095, 39.224285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419946, 0.414321, -0.807455,
		-0.900704, -0.299336, 0.314849,
		-0.111252, 0.859497, 0.498886,
		26.382448, 34.118946, 39.373951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773087, 33.776756, 38.935982>,  <26.460323, 33.517296, 39.024731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773087, 33.776756, 38.935982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.008772, 34.091217, 39.010590>,  <26.150183, 34.279896, 39.055355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.008772, 34.091217, 39.010590>,  <25.773087, 33.776756, 38.935982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.008772, 34.091217, 39.010590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446228, 0.509067, -0.736024,
		-0.673577, 0.350448, 0.650753,
		0.589215, 0.786154, 0.186516,
		26.185535, 34.327065, 39.066544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.358322, 34.399033, 38.884357>,  <25.773087, 33.776756, 38.935982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.358322, 34.399033, 38.884357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.723427, 34.549583, 38.820850>,  <25.942490, 34.639915, 38.782745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.723427, 34.549583, 38.820850>,  <25.358322, 34.399033, 38.884357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.723427, 34.549583, 38.820850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308629, 0.380792, -0.871634,
		-0.267607, 0.844593, 0.463733,
		0.912762, 0.376377, -0.158763,
		25.997255, 34.662495, 38.773220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.136827, 35.046616, 38.634998>,  <25.358322, 34.399033, 38.884357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.136827, 35.046616, 38.634998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.511713, 34.995800, 38.505081>,  <25.736645, 34.965309, 38.427132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.511713, 34.995800, 38.505081>,  <25.136827, 35.046616, 38.634998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.511713, 34.995800, 38.505081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233961, 0.461613, -0.855673,
		0.258636, 0.877937, 0.402907,
		0.937214, -0.127043, -0.324792,
		25.792877, 34.957687, 38.407642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426598, 35.837494, 38.468109>,  <25.136827, 35.046616, 38.634998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426598, 35.837494, 38.468109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.661573, 35.560951, 38.299854>,  <25.802559, 35.395023, 38.198902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.661573, 35.560951, 38.299854>,  <25.426598, 35.837494, 38.468109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.661573, 35.560951, 38.299854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078583, 0.566048, -0.820619,
		0.805442, 0.449011, 0.386849,
		0.587442, -0.691361, -0.420634,
		25.837807, 35.353542, 38.173664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921812, 36.251865, 38.157299>,  <25.426598, 35.837494, 38.468109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921812, 36.251865, 38.157299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.906071, 35.900120, 37.967491>,  <25.896626, 35.689072, 37.853607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.906071, 35.900120, 37.967491>,  <25.921812, 36.251865, 38.157299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906071, 35.900120, 37.967491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110460, 0.468148, -0.876718,
		0.993101, -0.086919, 0.078711,
		-0.039355, -0.879364, -0.474520,
		25.894264, 35.636311, 37.825134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429224, 36.221016, 37.630379>,  <25.921812, 36.251865, 38.157299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429224, 36.221016, 37.630379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.183817, 35.930740, 37.505814>,  <26.036572, 35.756577, 37.431076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.183817, 35.930740, 37.505814>,  <26.429224, 36.221016, 37.630379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183817, 35.930740, 37.505814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112702, 0.309849, -0.944082,
		0.781597, -0.614309, -0.108312,
		-0.613518, -0.725685, -0.311411,
		25.999762, 35.713036, 37.412392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849430, 36.930378, 37.880486>,  <26.429224, 36.221016, 37.630379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849430, 36.930378, 37.880486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.243210, 36.981400, 37.832169>,  <27.479477, 37.012012, 37.803177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.243210, 36.981400, 37.832169>,  <26.849430, 36.930378, 37.880486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243210, 36.981400, 37.832169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151675, -0.270248, 0.950769,
		0.088628, -0.954304, -0.285392,
		0.984449, 0.127551, -0.120793,
		27.538544, 37.019665, 37.795929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107346, 36.426003, 38.311954>,  <26.849430, 36.930378, 37.880486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107346, 36.426003, 38.311954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.421360, 36.665459, 38.248280>,  <27.609770, 36.809132, 38.210075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.421360, 36.665459, 38.248280>,  <27.107346, 36.426003, 38.311954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421360, 36.665459, 38.248280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325221, -0.179598, 0.928427,
		0.527207, -0.780622, -0.335683,
		0.785038, 0.598644, -0.159190,
		27.656872, 36.845051, 38.200523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667027, 36.023518, 38.469707>,  <27.107346, 36.426003, 38.311954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667027, 36.023518, 38.469707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.781536, 36.403214, 38.521843>,  <27.850243, 36.631031, 38.553123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.781536, 36.403214, 38.521843>,  <27.667027, 36.023518, 38.469707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781536, 36.403214, 38.521843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410758, -0.244483, 0.878354,
		0.865636, -0.197911, -0.459898,
		0.286273, 0.949241, 0.130339,
		27.867418, 36.687984, 38.560944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375887, 36.107018, 38.540325>,  <27.667027, 36.023518, 38.469707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375887, 36.107018, 38.540325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.268850, 36.451027, 38.714104>,  <28.204628, 36.657433, 38.818371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.268850, 36.451027, 38.714104>,  <28.375887, 36.107018, 38.540325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268850, 36.451027, 38.714104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693782, -0.140910, 0.706265,
		0.668626, 0.490404, -0.558965,
		-0.267591, 0.860028, 0.434450,
		28.188574, 36.709034, 38.844440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989750, 36.461624, 38.889950>,  <28.375887, 36.107018, 38.540325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989750, 36.461624, 38.889950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.672682, 36.642452, 39.053566>,  <28.482441, 36.750950, 39.151733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.672682, 36.642452, 39.053566>,  <28.989750, 36.461624, 38.889950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672682, 36.642452, 39.053566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406175, -0.108739, 0.907302,
		0.454642, 0.885330, -0.097425,
		-0.792668, 0.452069, 0.409036,
		28.434881, 36.778072, 39.176277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193132, 36.676483, 39.516747>,  <28.989750, 36.461624, 38.889950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193132, 36.676483, 39.516747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.808704, 36.761871, 39.586918>,  <28.578047, 36.813107, 39.629021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.808704, 36.761871, 39.586918>,  <29.193132, 36.676483, 39.516747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808704, 36.761871, 39.586918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127812, -0.219407, 0.967225,
		0.244967, 0.951992, 0.183581,
		-0.961070, 0.213475, 0.175424,
		28.520384, 36.825912, 39.639545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133562, 37.267086, 40.014240>,  <29.193132, 36.676483, 39.516747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133562, 37.267086, 40.014240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.794777, 37.055370, 40.034256>,  <28.591505, 36.928341, 40.046265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.794777, 37.055370, 40.034256>,  <29.133562, 37.267086, 40.014240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794777, 37.055370, 40.034256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146159, -0.141315, 0.979116,
		-0.511167, 0.836588, 0.197050,
		-0.846963, -0.529292, 0.050039,
		28.540688, 36.896584, 40.049267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991381, 37.447277, 40.669518>,  <29.133562, 37.267086, 40.014240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991381, 37.447277, 40.669518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.764153, 37.125816, 40.598602>,  <28.627815, 36.932938, 40.556053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.764153, 37.125816, 40.598602>,  <28.991381, 37.447277, 40.669518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764153, 37.125816, 40.598602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050676, -0.249173, 0.967132,
		-0.821418, 0.540416, 0.182274,
		-0.568071, -0.803656, -0.177289,
		28.593731, 36.884720, 40.545414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350578, 37.457855, 41.158638>,  <28.991381, 37.447277, 40.669518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350578, 37.457855, 41.158638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.379660, 37.084194, 41.018879>,  <28.397108, 36.859997, 40.935024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.379660, 37.084194, 41.018879>,  <28.350578, 37.457855, 41.158638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379660, 37.084194, 41.018879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271226, -0.355638, 0.894404,
		-0.959766, 0.029740, -0.279221,
		0.072702, -0.934151, -0.349396,
		28.401470, 36.803947, 40.914059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813314, 37.122238, 41.463554>,  <28.350578, 37.457855, 41.158638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813314, 37.122238, 41.463554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.072321, 36.827347, 41.386383>,  <28.227724, 36.650414, 41.340080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.072321, 36.827347, 41.386383>,  <27.813314, 37.122238, 41.463554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072321, 36.827347, 41.386383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202619, -0.410617, 0.889010,
		-0.734622, -0.536556, -0.415257,
		0.647515, -0.737225, -0.192931,
		28.266575, 36.606178, 41.328503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337849, 36.431229, 41.569580>,  <27.813314, 37.122238, 41.463554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337849, 36.431229, 41.569580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.733110, 36.384640, 41.609554>,  <27.970268, 36.356686, 41.633537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.733110, 36.384640, 41.609554>,  <27.337849, 36.431229, 41.569580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733110, 36.384640, 41.609554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139099, -0.404627, 0.903841,
		-0.064834, -0.907035, -0.416034,
		0.988154, -0.116469, 0.099934,
		28.029556, 36.349697, 41.639534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394638, 35.744354, 41.678997>,  <27.337849, 36.431229, 41.569580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394638, 35.744354, 41.678997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.753321, 35.862415, 41.810940>,  <27.968531, 35.933250, 41.890106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.753321, 35.862415, 41.810940>,  <27.394638, 35.744354, 41.678997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753321, 35.862415, 41.810940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100176, -0.590553, 0.800757,
		0.431142, -0.751087, -0.499985,
		0.896706, 0.295154, 0.329853,
		28.022333, 35.950962, 41.909897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613857, 35.141212, 41.968029>,  <27.394638, 35.744354, 41.678997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613857, 35.141212, 41.968029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.858253, 35.419544, 42.119034>,  <28.004890, 35.586544, 42.209637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.858253, 35.419544, 42.119034>,  <27.613857, 35.141212, 41.968029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858253, 35.419544, 42.119034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009532, -0.483303, 0.875401,
		0.791581, -0.531263, -0.301926,
		0.610990, 0.695829, 0.377509,
		28.041550, 35.628292, 42.232288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041807, 34.745876, 42.310215>,  <27.613857, 35.141212, 41.968029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041807, 34.745876, 42.310215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.128019, 35.107635, 42.457520>,  <28.179747, 35.324692, 42.545902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.128019, 35.107635, 42.457520>,  <28.041807, 34.745876, 42.310215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128019, 35.107635, 42.457520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280727, -0.418590, 0.863698,
		0.935275, -0.082773, -0.344107,
		0.215531, 0.904395, 0.368260,
		28.192678, 35.378956, 42.567997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637283, 34.735031, 42.569427>,  <28.041807, 34.745876, 42.310215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637283, 34.735031, 42.569427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.393341, 34.987896, 42.760612>,  <28.246975, 35.139614, 42.875324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.393341, 34.987896, 42.760612>,  <28.637283, 34.735031, 42.569427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393341, 34.987896, 42.760612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098507, -0.537957, 0.837197,
		0.786366, 0.557653, 0.265804,
		-0.609857, 0.632160, 0.477963,
		28.210384, 35.177544, 42.904003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001574, 34.840469, 43.234230>,  <28.637283, 34.735031, 42.569427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001574, 34.840469, 43.234230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.627047, 34.967262, 43.294666>,  <28.402330, 35.043339, 43.330929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.627047, 34.967262, 43.294666>,  <29.001574, 34.840469, 43.234230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627047, 34.967262, 43.294666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013016, -0.461300, 0.887149,
		0.350909, 0.828688, 0.436050,
		-0.936319, 0.316984, 0.151088,
		28.346151, 35.062359, 43.339993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026722, 35.062012, 43.883327>,  <29.001574, 34.840469, 43.234230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026722, 35.062012, 43.883327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.634693, 34.999729, 43.833988>,  <28.399477, 34.962360, 43.804382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.634693, 34.999729, 43.833988>,  <29.026722, 35.062012, 43.883327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634693, 34.999729, 43.833988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033676, -0.481733, 0.875671,
		-0.195773, 0.862373, 0.466889,
		-0.980071, -0.155710, -0.123352,
		28.340672, 34.953018, 43.796982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586109, 35.256302, 44.481316>,  <29.026722, 35.062012, 43.883327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586109, 35.256302, 44.481316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.364309, 34.983654, 44.290352>,  <28.231230, 34.820065, 44.175774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.364309, 34.983654, 44.290352>,  <28.586109, 35.256302, 44.481316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364309, 34.983654, 44.290352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228902, -0.426626, 0.874983,
		-0.800083, 0.594458, 0.080540,
		-0.554501, -0.681623, -0.477409,
		28.197960, 34.779167, 44.147129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081535, 35.222607, 45.027462>,  <28.586109, 35.256302, 44.481316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081535, 35.222607, 45.027462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.987806, 34.923340, 44.779156>,  <27.931570, 34.743782, 44.630173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.987806, 34.923340, 44.779156>,  <28.081535, 35.222607, 45.027462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987806, 34.923340, 44.779156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412434, -0.501723, 0.760376,
		-0.880337, 0.434195, -0.191004,
		-0.234320, -0.748164, -0.620762,
		27.917511, 34.698891, 44.592926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418159, 35.029396, 45.137299>,  <28.081535, 35.222607, 45.027462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418159, 35.029396, 45.137299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.609661, 34.704441, 45.004139>,  <27.724562, 34.509468, 44.924244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.609661, 34.704441, 45.004139>,  <27.418159, 35.029396, 45.137299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609661, 34.704441, 45.004139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417399, -0.544200, 0.727753,
		-0.772382, -0.209462, -0.599627,
		0.478754, -0.812387, -0.332901,
		27.753288, 34.460724, 44.904270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724825, 34.518402, 45.070946>,  <27.418159, 35.029396, 45.137299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724825, 34.518402, 45.070946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062639, 34.304199, 45.071079>,  <27.265327, 34.175678, 45.071159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062639, 34.304199, 45.071079>,  <26.724825, 34.518402, 45.070946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062639, 34.304199, 45.071079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464002, -0.731462, 0.499665,
		-0.267330, -0.422138, -0.866219,
		0.844534, -0.535502, 0.000331,
		27.316000, 34.143547, 45.071178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673544, 33.771275, 44.784725>,  <26.724825, 34.518402, 45.070946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673544, 33.771275, 44.784725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.980623, 33.791813, 45.040226>,  <27.164871, 33.804134, 45.193527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.980623, 33.791813, 45.040226>,  <26.673544, 33.771275, 44.784725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980623, 33.791813, 45.040226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360889, -0.789042, 0.497164,
		0.529527, -0.612190, -0.587217,
		0.767698, 0.051342, 0.638752,
		27.210932, 33.807217, 45.231853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.033112, 32.391914, 48.634758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.663116, 32.541130, 48.663689>,  <41.441120, 32.630661, 48.681046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.663116, 32.541130, 48.663689>,  <42.033112, 32.391914, 48.634758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663116, 32.541130, 48.663689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042808, -0.086824, 0.995303,
		0.377567, 0.923744, 0.064342,
		-0.924992, 0.373040, 0.072326,
		41.385620, 32.653042, 48.685387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047913, 32.958157, 49.150459>,  <42.033112, 32.391914, 48.634758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047913, 32.958157, 49.150459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.655476, 32.895386, 49.105167>,  <41.420013, 32.857723, 49.077991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.655476, 32.895386, 49.105167>,  <42.047913, 32.958157, 49.150459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655476, 32.895386, 49.105167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129026, 0.094392, 0.987138,
		-0.144225, 0.983088, -0.112856,
		-0.981097, -0.156932, -0.113230,
		41.361145, 32.848305, 49.071198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641209, 33.457954, 49.519627>,  <42.047913, 32.958157, 49.150459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641209, 33.457954, 49.519627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.381889, 33.155376, 49.484982>,  <41.226295, 32.973831, 49.464195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.381889, 33.155376, 49.484982>,  <41.641209, 33.457954, 49.519627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381889, 33.155376, 49.484982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176879, 0.038982, 0.983460,
		-0.740553, 0.652899, -0.159070,
		-0.648301, -0.756441, -0.086616,
		41.187401, 32.928444, 49.458996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992786, 33.638653, 49.824276>,  <41.641209, 33.457954, 49.519627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992786, 33.638653, 49.824276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.979710, 33.238895, 49.828995>,  <40.971863, 32.999039, 49.831825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.979710, 33.238895, 49.828995>,  <40.992786, 33.638653, 49.824276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979710, 33.238895, 49.828995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439942, 0.024987, 0.897678,
		-0.897431, 0.024160, -0.440493,
		-0.032695, -0.999396, 0.011795,
		40.969902, 32.939075, 49.832535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294510, 33.527874, 50.060337>,  <40.992786, 33.638653, 49.824276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294510, 33.527874, 50.060337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.494514, 33.190182, 50.137554>,  <40.614517, 32.987568, 50.183884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.494514, 33.190182, 50.137554>,  <40.294510, 33.527874, 50.060337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494514, 33.190182, 50.137554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301344, 0.039375, 0.952702,
		-0.811900, -0.534535, -0.234716,
		0.500010, -0.844229, 0.193047,
		40.644516, 32.936913, 50.195469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851795, 33.223019, 50.315319>,  <40.294510, 33.527874, 50.060337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851795, 33.223019, 50.315319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.181252, 33.019127, 50.414757>,  <40.378925, 32.896793, 50.474419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.181252, 33.019127, 50.414757>,  <39.851795, 33.223019, 50.315319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181252, 33.019127, 50.414757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284883, 0.007150, 0.958536,
		-0.490369, -0.860307, -0.139323,
		0.823638, -0.509726, 0.248593,
		40.428345, 32.866211, 50.489334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595379, 32.769657, 50.888939>,  <39.851795, 33.223019, 50.315319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595379, 32.769657, 50.888939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.991013, 32.734394, 50.936153>,  <40.228394, 32.713238, 50.964481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.991013, 32.734394, 50.936153>,  <39.595379, 32.769657, 50.888939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991013, 32.734394, 50.936153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130114, -0.146996, 0.980542,
		-0.069093, -0.985201, -0.156863,
		0.989089, -0.088159, 0.118031,
		40.287739, 32.707947, 50.971561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806675, 32.085243, 51.218845>,  <39.595379, 32.769657, 50.888939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806675, 32.085243, 51.218845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.085777, 32.360054, 51.299965>,  <40.253239, 32.524940, 51.348637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.085777, 32.360054, 51.299965>,  <39.806675, 32.085243, 51.218845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085777, 32.360054, 51.299965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098789, -0.188116, 0.977166,
		0.709488, -0.701861, -0.063389,
		0.697760, 0.687025, 0.202802,
		40.295105, 32.566162, 51.360806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068817, 31.711035, 51.712715>,  <39.806675, 32.085243, 51.218845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068817, 31.711035, 51.712715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.185760, 32.091080, 51.756187>,  <40.255928, 32.319107, 51.782272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.185760, 32.091080, 51.756187>,  <40.068817, 31.711035, 51.712715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185760, 32.091080, 51.756187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010432, -0.110469, 0.993825,
		0.956251, -0.291690, -0.022386,
		0.292362, 0.950112, 0.108679,
		40.273468, 32.376114, 51.788792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383804, 31.674347, 52.380009>,  <40.068817, 31.711035, 51.712715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383804, 31.674347, 52.380009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.373592, 32.069244, 52.317142>,  <40.367466, 32.306183, 52.279423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.373592, 32.069244, 52.317142>,  <40.383804, 31.674347, 52.380009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373592, 32.069244, 52.317142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109839, 0.153493, 0.982026,
		0.993621, 0.042337, 0.104519,
		-0.025533, 0.987242, -0.157164,
		40.365932, 32.365417, 52.269993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739124, 32.077251, 52.813614>,  <40.383804, 31.674347, 52.380009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739124, 32.077251, 52.813614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.483330, 32.367512, 52.712036>,  <40.329853, 32.541668, 52.651089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.483330, 32.367512, 52.712036>,  <40.739124, 32.077251, 52.813614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483330, 32.367512, 52.712036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273561, 0.093918, 0.957258,
		0.718485, 0.681623, 0.138450,
		-0.639487, 0.725651, -0.253945,
		40.291485, 32.585209, 52.635853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860722, 32.553452, 53.300724>,  <40.739124, 32.077251, 52.813614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860722, 32.553452, 53.300724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.495087, 32.622219, 53.153820>,  <40.275703, 32.663479, 53.065678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.495087, 32.622219, 53.153820>,  <40.860722, 32.553452, 53.300724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495087, 32.622219, 53.153820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369011, 0.022856, 0.929144,
		0.168132, 0.984846, 0.042547,
		-0.914091, 0.171919, -0.367261,
		40.220860, 32.673794, 53.043640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507187, 32.807774, 53.870373>,  <40.860722, 32.553452, 53.300724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507187, 32.807774, 53.870373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.229877, 32.694191, 53.605419>,  <40.063492, 32.626041, 53.446449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.229877, 32.694191, 53.605419>,  <40.507187, 32.807774, 53.870373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229877, 32.694191, 53.605419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654600, -0.136350, 0.743578,
		-0.301457, 0.949094, -0.091349,
		-0.693269, -0.283954, -0.662380,
		40.021896, 32.609005, 53.406704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832493, 33.105576, 53.965027>,  <40.507187, 32.807774, 53.870373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832493, 33.105576, 53.965027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.778034, 32.753468, 53.783215>,  <39.745361, 32.542202, 53.674126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.778034, 32.753468, 53.783215>,  <39.832493, 33.105576, 53.965027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778034, 32.753468, 53.783215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683117, -0.248875, 0.686595,
		-0.717507, 0.403973, -0.567441,
		-0.136144, -0.880266, -0.454530,
		39.737190, 32.489388, 53.646854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147739, 33.416786, 53.882641>,  <39.832493, 33.105576, 53.965027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147739, 33.416786, 53.882641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.994747, 33.668896, 54.152889>,  <38.902950, 33.820160, 54.315041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.994747, 33.668896, 54.152889>,  <39.147739, 33.416786, 53.882641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994747, 33.668896, 54.152889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258670, 0.628941, -0.733159,
		-0.887017, -0.455182, -0.077525,
		-0.382480, 0.630271, 0.675624,
		38.880005, 33.857979, 54.355576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455418, 33.595737, 53.693638>,  <39.147739, 33.416786, 53.882641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455418, 33.595737, 53.693638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.584423, 33.885178, 53.937733>,  <38.661827, 34.058842, 54.084190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.584423, 33.885178, 53.937733>,  <38.455418, 33.595737, 53.693638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584423, 33.885178, 53.937733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417708, 0.687313, -0.594239,
		-0.849416, -0.063253, 0.523919,
		0.322509, 0.723602, 0.610237,
		38.681175, 34.102257, 54.120804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916370, 34.031349, 53.863274>,  <38.455418, 33.595737, 53.693638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916370, 34.031349, 53.863274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.250134, 34.248852, 53.899269>,  <38.450390, 34.379353, 53.920868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.250134, 34.248852, 53.899269>,  <37.916370, 34.031349, 53.863274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250134, 34.248852, 53.899269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336613, 0.632054, -0.697997,
		-0.436419, 0.552121, 0.710424,
		0.834405, 0.543757, 0.089989,
		38.500454, 34.411980, 53.926266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639034, 34.709038, 53.958221>,  <37.916370, 34.031349, 53.863274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639034, 34.709038, 53.958221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.020233, 34.745834, 53.842754>,  <38.248955, 34.767914, 53.773476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.020233, 34.745834, 53.842754>,  <37.639034, 34.709038, 53.958221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020233, 34.745834, 53.842754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267436, 0.703158, -0.658822,
		0.142372, 0.705057, 0.694712,
		0.953000, 0.091993, -0.288668,
		38.306133, 34.773434, 53.756153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714989, 35.438400, 53.727009>,  <37.639034, 34.709038, 53.958221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714989, 35.438400, 53.727009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.045990, 35.269302, 53.579208>,  <38.244591, 35.167843, 53.490528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.045990, 35.269302, 53.579208>,  <37.714989, 35.438400, 53.727009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045990, 35.269302, 53.579208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203431, 0.387641, -0.899083,
		0.523318, 0.819158, 0.234773,
		0.827499, -0.422746, -0.369502,
		38.294239, 35.142479, 53.468357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032463, 35.995689, 53.416000>,  <37.714989, 35.438400, 53.727009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032463, 35.995689, 53.416000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.172077, 35.656860, 53.255684>,  <38.255844, 35.453564, 53.159492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.172077, 35.656860, 53.255684>,  <38.032463, 35.995689, 53.416000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172077, 35.656860, 53.255684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077263, 0.452248, -0.888539,
		0.933920, 0.279164, 0.223297,
		0.349034, -0.847077, -0.400795,
		38.276787, 35.402737, 53.135445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625172, 36.158520, 53.111126>,  <38.032463, 35.995689, 53.416000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625172, 36.158520, 53.111126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.482273, 35.827557, 52.937798>,  <38.396534, 35.628979, 52.833801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.482273, 35.827557, 52.937798>,  <38.625172, 36.158520, 53.111126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482273, 35.827557, 52.937798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043615, 0.448657, -0.892639,
		0.932990, -0.337795, -0.124195,
		-0.357250, -0.827407, -0.433325,
		38.375099, 35.579334, 52.807800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964916, 36.012001, 52.464489>,  <38.625172, 36.158520, 53.111126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964916, 36.012001, 52.464489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.659988, 35.762775, 52.394447>,  <38.477032, 35.613239, 52.352421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.659988, 35.762775, 52.394447>,  <38.964916, 36.012001, 52.464489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659988, 35.762775, 52.394447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111210, 0.392640, -0.912944,
		0.637579, -0.676478, -0.368607,
		-0.762316, -0.623066, -0.175108,
		38.431293, 35.575855, 52.341915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102222, 35.570469, 51.885853>,  <38.964916, 36.012001, 52.464489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102222, 35.570469, 51.885853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.705116, 35.585476, 51.931473>,  <38.466854, 35.594479, 51.958847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.705116, 35.585476, 51.931473>,  <39.102222, 35.570469, 51.885853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705116, 35.585476, 51.931473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105280, 0.184676, -0.977144,
		-0.057722, -0.982083, -0.179390,
		-0.992766, 0.037516, 0.114053,
		38.407288, 35.596729, 51.965691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867722, 35.178192, 51.321770>,  <39.102222, 35.570469, 51.885853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867722, 35.178192, 51.321770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.554028, 35.401955, 51.429127>,  <38.365810, 35.536213, 51.493542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.554028, 35.401955, 51.429127>,  <38.867722, 35.178192, 51.321770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554028, 35.401955, 51.429127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156411, 0.240362, -0.957999,
		-0.600424, -0.793278, -0.101003,
		-0.784237, 0.559407, 0.268396,
		38.318756, 35.569778, 51.509647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422630, 35.139256, 50.793816>,  <38.867722, 35.178192, 51.321770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422630, 35.139256, 50.793816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.268940, 35.461445, 50.974293>,  <38.176727, 35.654758, 51.082581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.268940, 35.461445, 50.974293>,  <38.422630, 35.139256, 50.793816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268940, 35.461445, 50.974293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356199, 0.321538, -0.877346,
		-0.851758, -0.497814, 0.163367,
		-0.384226, 0.805478, 0.451194,
		38.153671, 35.703087, 51.109650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730335, 35.160923, 50.657173>,  <38.422630, 35.139256, 50.793816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730335, 35.160923, 50.657173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.846340, 35.532490, 50.749268>,  <37.915943, 35.755428, 50.804523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.846340, 35.532490, 50.749268>,  <37.730335, 35.160923, 50.657173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846340, 35.532490, 50.749268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335471, 0.323987, -0.884586,
		-0.896298, 0.179307, 0.405585,
		0.290017, 0.928914, 0.230237,
		37.933346, 35.811165, 50.818340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148849, 35.536125, 50.525112>,  <37.730335, 35.160923, 50.657173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148849, 35.536125, 50.525112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.448948, 35.799919, 50.506271>,  <37.629005, 35.958195, 50.494968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.448948, 35.799919, 50.506271>,  <37.148849, 35.536125, 50.525112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448948, 35.799919, 50.506271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369590, 0.359252, -0.856937,
		-0.548214, 0.660319, 0.513265,
		0.750243, 0.659482, -0.047101,
		37.674023, 35.997765, 50.492142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877655, 36.094200, 50.291397>,  <37.148849, 35.536125, 50.525112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877655, 36.094200, 50.291397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.254772, 36.204628, 50.216648>,  <37.481045, 36.270885, 50.171799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.254772, 36.204628, 50.216648>,  <36.877655, 36.094200, 50.291397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254772, 36.204628, 50.216648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288379, 0.394167, -0.872622,
		-0.167244, 0.876596, 0.451231,
		0.942797, 0.276066, -0.186870,
		37.537613, 36.287449, 50.160587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300140, 36.615803, 50.353077>,  <36.877655, 36.094200, 50.291397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300140, 36.615803, 50.353077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.930546, 36.646729, 50.203262>,  <35.708790, 36.665283, 50.113373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.930546, 36.646729, 50.203262>,  <36.300140, 36.615803, 50.353077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930546, 36.646729, 50.203262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382378, -0.203561, 0.901304,
		-0.006561, 0.976005, 0.217649,
		-0.923983, 0.077311, -0.374539,
		35.653351, 36.669922, 50.090900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992115, 37.158787, 50.639732>,  <36.300140, 36.615803, 50.353077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992115, 37.158787, 50.639732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.697029, 36.908665, 50.537933>,  <35.519978, 36.758591, 50.476852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.697029, 36.908665, 50.537933>,  <35.992115, 37.158787, 50.639732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697029, 36.908665, 50.537933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118313, -0.251393, 0.960627,
		-0.664664, 0.738779, 0.111475,
		-0.737715, -0.625305, -0.254499,
		35.475716, 36.721073, 50.461582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504341, 37.309502, 51.071533>,  <35.992115, 37.158787, 50.639732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504341, 37.309502, 51.071533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.419449, 36.936832, 50.953590>,  <35.368515, 36.713230, 50.882824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.419449, 36.936832, 50.953590>,  <35.504341, 37.309502, 51.071533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419449, 36.936832, 50.953590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043506, -0.310443, 0.949596,
		-0.976251, 0.188704, 0.106419,
		-0.212230, -0.931674, -0.294861,
		35.355782, 36.657330, 50.865131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034008, 37.176373, 51.471790>,  <35.504341, 37.309502, 51.071533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034008, 37.176373, 51.471790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171902, 36.818092, 51.359447>,  <35.254639, 36.603123, 51.292042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171902, 36.818092, 51.359447>,  <35.034008, 37.176373, 51.471790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171902, 36.818092, 51.359447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071273, -0.273354, 0.959269,
		-0.935990, -0.350713, -0.030396,
		0.344737, -0.895700, -0.280853,
		35.275322, 36.549381, 51.275192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592743, 36.612404, 51.743958>,  <35.034008, 37.176373, 51.471790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592743, 36.612404, 51.743958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949413, 36.448326, 51.667377>,  <35.163414, 36.349880, 51.621429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949413, 36.448326, 51.667377>,  <34.592743, 36.612404, 51.743958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949413, 36.448326, 51.667377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019543, -0.457423, 0.889034,
		-0.452250, -0.788990, -0.415890,
		0.891677, -0.410194, -0.191450,
		35.216915, 36.325268, 51.609943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558113, 35.916088, 52.125076>,  <34.592743, 36.612404, 51.743958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558113, 35.916088, 52.125076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940273, 35.927670, 52.007519>,  <35.169567, 35.934620, 51.936985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940273, 35.927670, 52.007519>,  <34.558113, 35.916088, 52.125076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940273, 35.927670, 52.007519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258662, -0.562277, 0.785455,
		-0.142505, -0.826442, -0.544689,
		0.955398, 0.028959, -0.293897,
		35.226894, 35.936356, 51.919350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832123, 35.131969, 52.027058>,  <34.558113, 35.916088, 52.125076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832123, 35.131969, 52.027058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.115730, 35.391411, 52.137768>,  <35.285896, 35.547077, 52.204193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.115730, 35.391411, 52.137768>,  <34.832123, 35.131969, 52.027058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115730, 35.391411, 52.137768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169979, -0.538100, 0.825564,
		0.684394, -0.538297, -0.491773,
		0.709022, 0.648602, 0.276773,
		35.328438, 35.585991, 52.220798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029373, 34.395138, 51.664734>,  <34.832123, 35.131969, 52.027058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029373, 34.395138, 51.664734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712269, 34.154232, 51.702274>,  <34.522007, 34.009689, 51.724800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712269, 34.154232, 51.702274>,  <35.029373, 34.395138, 51.664734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712269, 34.154232, 51.702274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183833, 0.089439, -0.978880,
		0.581153, -0.793269, -0.181620,
		-0.792760, -0.602267, 0.093851,
		34.474442, 33.973553, 51.730431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100449, 33.766483, 51.205330>,  <35.029373, 34.395138, 51.664734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100449, 33.766483, 51.205330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.703770, 33.787292, 51.252384>,  <34.465763, 33.799778, 51.280617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.703770, 33.787292, 51.252384>,  <35.100449, 33.766483, 51.205330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703770, 33.787292, 51.252384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121640, -0.081945, -0.989186,
		-0.041817, -0.995278, 0.087592,
		-0.991693, 0.052020, 0.117638,
		34.406261, 33.802898, 51.287674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896000, 33.255100, 50.740063>,  <35.100449, 33.766483, 51.205330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896000, 33.255100, 50.740063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578972, 33.481819, 50.830013>,  <34.388756, 33.617851, 50.883984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578972, 33.481819, 50.830013>,  <34.896000, 33.255100, 50.740063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578972, 33.481819, 50.830013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249280, 0.035389, -0.967785,
		-0.556498, -0.823095, 0.113243,
		-0.792571, 0.566800, 0.224875,
		34.341202, 33.651859, 50.897476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421974, 33.120804, 50.272278>,  <34.896000, 33.255100, 50.740063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421974, 33.120804, 50.272278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249485, 33.457085, 50.403282>,  <34.145992, 33.658855, 50.481884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249485, 33.457085, 50.403282>,  <34.421974, 33.120804, 50.272278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249485, 33.457085, 50.403282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336875, 0.186715, -0.922850,
		-0.836995, -0.508284, 0.202696,
		-0.431224, 0.840705, 0.327508,
		34.120117, 33.709297, 50.501534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711262, 33.199463, 50.000683>,  <34.421974, 33.120804, 50.272278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711262, 33.199463, 50.000683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816425, 33.571732, 50.102455>,  <33.879524, 33.795094, 50.163517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816425, 33.571732, 50.102455>,  <33.711262, 33.199463, 50.000683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816425, 33.571732, 50.102455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447725, 0.351281, -0.822280,
		-0.854646, 0.102273, 0.509039,
		0.262913, 0.930667, 0.254431,
		33.895298, 33.850933, 50.178783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083618, 33.736855, 49.780510>,  <33.711262, 33.199463, 50.000683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083618, 33.736855, 49.780510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.433624, 33.928696, 49.806843>,  <33.643627, 34.043800, 49.822643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.433624, 33.928696, 49.806843>,  <33.083618, 33.736855, 49.780510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433624, 33.928696, 49.806843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169294, 0.430555, -0.886545,
		-0.453537, 0.764592, 0.457934,
		0.875011, 0.479607, 0.065832,
		33.696129, 34.072578, 49.826591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038536, 34.433174, 49.753895>,  <33.083618, 33.736855, 49.780510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038536, 34.433174, 49.753895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412895, 34.407005, 49.615440>,  <33.637512, 34.391304, 49.532368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412895, 34.407005, 49.615440>,  <33.038536, 34.433174, 49.753895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412895, 34.407005, 49.615440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273757, 0.483291, -0.831557,
		0.221687, 0.873012, 0.434403,
		0.935902, -0.065424, -0.346132,
		33.693665, 34.387379, 49.511600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.993393, 32.377029, 52.984524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.300373, 32.541958, 52.788151>,  <37.484562, 32.640915, 52.670326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.300373, 32.541958, 52.788151>,  <36.993393, 32.377029, 52.984524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300373, 32.541958, 52.788151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248178, -0.514994, -0.820481,
		-0.591127, 0.751516, -0.292903,
		0.767448, 0.412317, -0.490936,
		37.530609, 32.665653, 52.640869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686745, 32.627922, 52.375988>,  <36.993393, 32.377029, 52.984524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686745, 32.627922, 52.375988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.077797, 32.635670, 52.292210>,  <37.312428, 32.640320, 52.241943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.077797, 32.635670, 52.292210>,  <36.686745, 32.627922, 52.375988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077797, 32.635670, 52.292210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183151, -0.411254, -0.892931,
		-0.103432, 0.911315, -0.398506,
		0.977629, 0.019372, -0.209445,
		37.371086, 32.641479, 52.229378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759506, 32.865364, 51.679646>,  <36.686745, 32.627922, 52.375988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759506, 32.865364, 51.679646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.093143, 32.657013, 51.752285>,  <37.293324, 32.532001, 51.795868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.093143, 32.657013, 51.752285>,  <36.759506, 32.865364, 51.679646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093143, 32.657013, 51.752285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032502, -0.282236, -0.958794,
		0.550670, 0.805623, -0.218480,
		0.834090, -0.520879, 0.181603,
		37.343369, 32.500748, 51.806767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155369, 32.960659, 51.092606>,  <36.759506, 32.865364, 51.679646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155369, 32.960659, 51.092606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.320667, 32.641117, 51.267448>,  <37.419846, 32.449390, 51.372353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.320667, 32.641117, 51.267448>,  <37.155369, 32.960659, 51.092606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320667, 32.641117, 51.267448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204442, -0.386364, -0.899403,
		0.887375, 0.461035, 0.003658,
		0.413243, -0.798855, 0.437105,
		37.444641, 32.401459, 51.398579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722351, 32.786263, 50.695999>,  <37.155369, 32.960659, 51.092606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722351, 32.786263, 50.695999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.699226, 32.437843, 50.891113>,  <37.685352, 32.228790, 51.008183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.699226, 32.437843, 50.891113>,  <37.722351, 32.786263, 50.695999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699226, 32.437843, 50.891113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192807, -0.489143, -0.850626,
		0.979532, 0.044870, 0.196223,
		-0.057814, -0.871049, 0.487782,
		37.681881, 32.176529, 51.037449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322178, 32.347813, 50.467274>,  <37.722351, 32.786263, 50.695999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322178, 32.347813, 50.467274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.022297, 32.111794, 50.587128>,  <37.842369, 31.970182, 50.659042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.022297, 32.111794, 50.587128>,  <38.322178, 32.347813, 50.467274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022297, 32.111794, 50.587128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067991, -0.519063, -0.852028,
		0.658270, -0.618397, 0.429262,
		-0.749705, -0.590050, 0.299638,
		37.797386, 31.934778, 50.677017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468433, 31.658854, 50.221424>,  <38.322178, 32.347813, 50.467274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468433, 31.658854, 50.221424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.072777, 31.649265, 50.279411>,  <37.835381, 31.643513, 50.314205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.072777, 31.649265, 50.279411>,  <38.468433, 31.658854, 50.221424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072777, 31.649265, 50.279411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118523, -0.453004, -0.883595,
		0.086854, -0.891186, 0.445246,
		-0.989145, -0.023971, 0.144971,
		37.776031, 31.642075, 50.322903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364849, 31.017485, 50.169277>,  <38.468433, 31.658854, 50.221424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364849, 31.017485, 50.169277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.996746, 31.169258, 50.131008>,  <37.775883, 31.260323, 50.108047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.996746, 31.169258, 50.131008>,  <38.364849, 31.017485, 50.169277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996746, 31.169258, 50.131008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153032, -0.574001, -0.804428,
		-0.360143, -0.725641, 0.586295,
		-0.920259, 0.379431, -0.095676,
		37.720669, 31.283087, 50.102306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848236, 30.411591, 50.106861>,  <38.364849, 31.017485, 50.169277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848236, 30.411591, 50.106861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.666798, 30.732933, 49.952530>,  <37.557934, 30.925739, 49.859932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.666798, 30.732933, 49.952530>,  <37.848236, 30.411591, 50.106861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666798, 30.732933, 49.952530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229529, -0.523637, -0.820440,
		-0.861140, -0.283592, 0.421915,
		-0.453601, 0.803355, -0.385832,
		37.530716, 30.973940, 49.836781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278511, 30.136744, 49.710701>,  <37.848236, 30.411591, 50.106861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278511, 30.136744, 49.710701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.310169, 30.506596, 49.561680>,  <37.329166, 30.728508, 49.472267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.310169, 30.506596, 49.561680>,  <37.278511, 30.136744, 49.710701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310169, 30.506596, 49.561680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082683, -0.366344, -0.926798,
		-0.993428, 0.104159, 0.047456,
		0.079149, 0.924631, -0.372549,
		37.333916, 30.783985, 49.449917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888134, 30.068117, 49.118767>,  <37.278511, 30.136744, 49.710701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888134, 30.068117, 49.118767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.083393, 30.412477, 49.061413>,  <37.200550, 30.619095, 49.027000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.083393, 30.412477, 49.061413>,  <36.888134, 30.068117, 49.118767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083393, 30.412477, 49.061413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062294, -0.129501, -0.989621,
		-0.870535, 0.492013, -0.009587,
		0.488148, 0.860902, -0.143385,
		37.229836, 30.670748, 49.018398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466736, 30.419592, 48.783920>,  <36.888134, 30.068117, 49.118767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466736, 30.419592, 48.783920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.841972, 30.537937, 48.711861>,  <37.067116, 30.608944, 48.668625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.841972, 30.537937, 48.711861>,  <36.466736, 30.419592, 48.783920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841972, 30.537937, 48.711861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169211, -0.062394, -0.983603,
		-0.302250, 0.953191, -0.008468,
		0.938090, 0.295861, -0.180149,
		37.123398, 30.626696, 48.657814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007458, 31.070999, 48.796356>,  <36.466736, 30.419592, 48.783920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007458, 31.070999, 48.796356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.609680, 31.055740, 48.757095>,  <35.371014, 31.046585, 48.733540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.609680, 31.055740, 48.757095>,  <36.007458, 31.070999, 48.796356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609680, 31.055740, 48.757095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092832, -0.122525, 0.988114,
		-0.049720, 0.991732, 0.118303,
		-0.994440, -0.038147, -0.098157,
		35.311348, 31.044296, 48.727650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668594, 31.586018, 49.281208>,  <36.007458, 31.070999, 48.796356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668594, 31.586018, 49.281208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.412315, 31.284683, 49.221893>,  <35.258549, 31.103882, 49.186306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.412315, 31.284683, 49.221893>,  <35.668594, 31.586018, 49.281208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412315, 31.284683, 49.221893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061691, -0.141993, 0.987943,
		-0.765310, 0.642122, 0.044501,
		-0.640699, -0.753338, -0.148282,
		35.220104, 31.058681, 49.177410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078121, 31.776766, 49.661545>,  <35.668594, 31.586018, 49.281208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078121, 31.776766, 49.661545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.035519, 31.382662, 49.608002>,  <35.009956, 31.146198, 49.575878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.035519, 31.382662, 49.608002>,  <35.078121, 31.776766, 49.661545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035519, 31.382662, 49.608002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272222, -0.100581, 0.956963,
		-0.956322, 0.138363, -0.257497,
		-0.106509, -0.985261, -0.133854,
		35.003567, 31.087084, 49.567844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353508, 31.469173, 49.954273>,  <35.078121, 31.776766, 49.661545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353508, 31.469173, 49.954273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.585899, 31.144621, 49.928562>,  <34.725334, 30.949890, 49.913136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.585899, 31.144621, 49.928562>,  <34.353508, 31.469173, 49.954273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585899, 31.144621, 49.928562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067618, -0.126813, 0.989619,
		-0.811108, -0.570597, -0.128539,
		0.580974, -0.811380, -0.064276,
		34.760193, 30.901207, 49.909279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018215, 30.920362, 50.382408>,  <34.353508, 31.469173, 49.954273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018215, 30.920362, 50.382408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.403099, 30.818729, 50.343235>,  <34.634029, 30.757750, 50.319729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.403099, 30.818729, 50.343235>,  <34.018215, 30.920362, 50.382408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403099, 30.818729, 50.343235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034575, -0.242749, 0.969473,
		-0.270107, -0.936222, -0.224790,
		0.962210, -0.254089, -0.097938,
		34.691761, 30.742504, 50.313854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076565, 30.414196, 50.898277>,  <34.018215, 30.920362, 50.382408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076565, 30.414196, 50.898277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.452919, 30.530090, 50.828091>,  <34.678730, 30.599627, 50.785980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.452919, 30.530090, 50.828091>,  <34.076565, 30.414196, 50.898277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452919, 30.530090, 50.828091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252679, -0.255363, 0.933243,
		0.225588, -0.922411, -0.313478,
		0.940885, 0.289738, -0.175468,
		34.735184, 30.617012, 50.775452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461590, 29.804596, 51.064236>,  <34.076565, 30.414196, 50.898277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461590, 29.804596, 51.064236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.669250, 30.142820, 51.114056>,  <34.793846, 30.345755, 51.143948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.669250, 30.142820, 51.114056>,  <34.461590, 29.804596, 51.064236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669250, 30.142820, 51.114056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303444, -0.318586, 0.898012,
		0.799004, -0.428405, -0.421973,
		0.519147, 0.845560, 0.124554,
		34.824993, 30.396488, 51.151421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050743, 29.453302, 51.203568>,  <34.461590, 29.804596, 51.064236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050743, 29.453302, 51.203568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.095360, 29.840620, 51.292980>,  <35.122128, 30.073009, 51.346630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.095360, 29.840620, 51.292980>,  <35.050743, 29.453302, 51.203568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095360, 29.840620, 51.292980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005532, -0.224330, 0.974498,
		0.993745, -0.109929, -0.019664,
		0.111537, 0.968293, 0.223535,
		35.128822, 30.131107, 51.360039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617588, 29.450083, 51.611202>,  <35.050743, 29.453302, 51.203568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617588, 29.450083, 51.611202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.410503, 29.778412, 51.707726>,  <35.286251, 29.975409, 51.765640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.410503, 29.778412, 51.707726>,  <35.617588, 29.450083, 51.611202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410503, 29.778412, 51.707726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168113, -0.178952, 0.969389,
		0.838877, 0.542429, -0.045345,
		-0.517710, 0.820821, 0.241308,
		35.255192, 30.024658, 51.780117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891258, 29.540977, 52.238857>,  <35.617588, 29.450083, 51.611202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891258, 29.540977, 52.238857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.593502, 29.808029, 52.243839>,  <35.414848, 29.968260, 52.246830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.593502, 29.808029, 52.243839>,  <35.891258, 29.540977, 52.238857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593502, 29.808029, 52.243839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014567, -0.002416, 0.999891,
		0.667586, 0.744490, -0.007927,
		-0.744390, 0.667629, 0.012458,
		35.370186, 30.008318, 52.247578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033451, 30.026165, 52.768051>,  <35.891258, 29.540977, 52.238857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033451, 30.026165, 52.768051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.638012, 30.069223, 52.725922>,  <35.400749, 30.095058, 52.700645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.638012, 30.069223, 52.725922>,  <36.033451, 30.026165, 52.768051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638012, 30.069223, 52.725922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103177, 0.025329, 0.994340,
		0.109705, 0.993867, -0.013933,
		-0.988595, 0.107646, -0.105323,
		35.341434, 30.101517, 52.694324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952007, 30.508453, 53.246052>,  <36.033451, 30.026165, 52.768051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952007, 30.508453, 53.246052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.592075, 30.353333, 53.166126>,  <35.376118, 30.260262, 53.118172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.592075, 30.353333, 53.166126>,  <35.952007, 30.508453, 53.246052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592075, 30.353333, 53.166126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202164, -0.035188, 0.978719,
		-0.386578, 0.921072, -0.046736,
		-0.899826, -0.387800, -0.199811,
		35.322128, 30.236992, 53.106182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490376, 30.973572, 53.593483>,  <35.952007, 30.508453, 53.246052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490376, 30.973572, 53.593483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.340355, 30.606270, 53.542660>,  <35.250343, 30.385889, 53.512165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.340355, 30.606270, 53.542660>,  <35.490376, 30.973572, 53.593483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340355, 30.606270, 53.542660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294153, -0.012091, 0.955682,
		-0.879096, 0.395806, -0.265572,
		-0.375053, -0.918254, -0.127057,
		35.227840, 30.330793, 53.504543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771748, 30.952843, 53.836323>,  <35.490376, 30.973572, 53.593483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771748, 30.952843, 53.836323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.902103, 30.576057, 53.868580>,  <34.980316, 30.349987, 53.887932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.902103, 30.576057, 53.868580>,  <34.771748, 30.952843, 53.836323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902103, 30.576057, 53.868580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228428, 0.004314, 0.973551,
		-0.917395, -0.335695, -0.213764,
		0.325894, -0.941961, 0.080640,
		34.999870, 30.293468, 53.892773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750748, 31.862104, 53.897041>,  <34.771748, 30.952843, 53.836323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750748, 31.862104, 53.897041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.723286, 32.226742, 54.059170>,  <34.706810, 32.445526, 54.156445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.723286, 32.226742, 54.059170>,  <34.750748, 31.862104, 53.897041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723286, 32.226742, 54.059170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406732, 0.345402, -0.845734,
		-0.910964, -0.222921, 0.347060,
		-0.068657, 0.911594, 0.405318,
		34.702690, 32.500221, 54.180767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077957, 32.030930, 53.674870>,  <34.750748, 31.862104, 53.897041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077957, 32.030930, 53.674870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.264957, 32.366482, 53.786385>,  <34.377159, 32.567814, 53.853294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.264957, 32.366482, 53.786385>,  <34.077957, 32.030930, 53.674870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264957, 32.366482, 53.786385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217750, 0.414933, -0.883411,
		-0.856754, 0.352291, 0.376648,
		0.467501, 0.838881, 0.278784,
		34.405209, 32.618145, 53.870018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637592, 32.556477, 53.494801>,  <34.077957, 32.030930, 53.674870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637592, 32.556477, 53.494801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.996227, 32.731693, 53.520885>,  <34.211407, 32.836823, 53.536537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.996227, 32.731693, 53.520885>,  <33.637592, 32.556477, 53.494801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996227, 32.731693, 53.520885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137700, 0.415689, -0.899023,
		-0.420918, 0.797071, 0.433019,
		0.896586, 0.438042, 0.065214,
		34.265202, 32.863106, 53.540451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554379, 33.276340, 53.344006>,  <33.637592, 32.556477, 53.494801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554379, 33.276340, 53.344006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.946152, 33.238800, 53.272556>,  <34.181213, 33.216274, 53.229687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.946152, 33.238800, 53.272556>,  <33.554379, 33.276340, 53.344006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946152, 33.238800, 53.272556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096229, 0.560830, -0.822320,
		0.177353, 0.822595, 0.540264,
		0.979431, -0.093852, -0.178622,
		34.239983, 33.210644, 53.218971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791378, 33.940987, 53.255920>,  <33.554379, 33.276340, 53.344006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791378, 33.940987, 53.255920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.054874, 33.693241, 53.085068>,  <34.212975, 33.544594, 52.982555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.054874, 33.693241, 53.085068>,  <33.791378, 33.940987, 53.255920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054874, 33.693241, 53.085068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127343, 0.467737, -0.874646,
		0.741512, 0.630560, 0.229247,
		0.658744, -0.619368, -0.427130,
		34.252499, 33.507431, 52.956928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190750, 34.387001, 52.746376>,  <33.791378, 33.940987, 53.255920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190750, 34.387001, 52.746376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.273514, 34.015503, 52.623337>,  <34.323170, 33.792603, 52.549515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.273514, 34.015503, 52.623337>,  <34.190750, 34.387001, 52.746376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273514, 34.015503, 52.623337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060882, 0.301566, -0.951499,
		0.976465, 0.215597, 0.005852,
		0.206906, -0.928749, -0.307594,
		34.335587, 33.736877, 52.531059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638729, 34.424500, 52.306629>,  <34.190750, 34.387001, 52.746376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638729, 34.424500, 52.306629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.441422, 34.085728, 52.227238>,  <34.323036, 33.882465, 52.179604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.441422, 34.085728, 52.227238>,  <34.638729, 34.424500, 52.306629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441422, 34.085728, 52.227238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045912, 0.253195, -0.966325,
		0.868662, -0.467550, -0.163779,
		-0.493273, -0.846930, -0.198474,
		34.293438, 33.831650, 52.167694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367317, 34.657227, 52.311714>,  <34.638729, 34.424500, 52.306629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367317, 34.657227, 52.311714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.482388, 35.022861, 52.426044>,  <35.551430, 35.242241, 52.494640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.482388, 35.022861, 52.426044>,  <35.367317, 34.657227, 52.311714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482388, 35.022861, 52.426044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403035, -0.386269, 0.829674,
		0.868795, -0.123481, -0.479528,
		0.287676, 0.914084, 0.285821,
		35.568691, 35.297085, 52.511791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976189, 34.593163, 52.590038>,  <35.367317, 34.657227, 52.311714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976189, 34.593163, 52.590038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.892185, 34.957886, 52.731178>,  <35.841785, 35.176720, 52.815861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.892185, 34.957886, 52.731178>,  <35.976189, 34.593163, 52.590038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892185, 34.957886, 52.731178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348602, -0.267347, 0.898333,
		0.913441, 0.311660, -0.261714,
		-0.210006, 0.911808, 0.352851,
		35.829182, 35.231426, 52.837032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563595, 34.816109, 52.820625>,  <35.976189, 34.593163, 52.590038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563595, 34.816109, 52.820625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.270798, 35.004333, 53.017708>,  <36.095119, 35.117268, 53.135956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.270798, 35.004333, 53.017708>,  <36.563595, 34.816109, 52.820625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270798, 35.004333, 53.017708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425467, -0.249110, 0.870013,
		0.532132, 0.846473, -0.017861,
		-0.731993, 0.470561, 0.492705,
		36.051201, 35.145500, 53.165520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886589, 35.237144, 53.319607>,  <36.563595, 34.816109, 52.820625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886589, 35.237144, 53.319607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.507137, 35.218441, 53.444775>,  <36.279469, 35.207218, 53.519875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.507137, 35.218441, 53.444775>,  <36.886589, 35.237144, 53.319607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507137, 35.218441, 53.444775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315649, -0.207848, 0.925832,
		0.021746, 0.977043, 0.211931,
		-0.948627, -0.046763, 0.312922,
		36.222549, 35.204411, 53.538651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956272, 35.675709, 53.946526>,  <36.886589, 35.237144, 53.319607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956272, 35.675709, 53.946526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.636333, 35.435966, 53.959335>,  <36.444370, 35.292122, 53.967022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.636333, 35.435966, 53.959335>,  <36.956272, 35.675709, 53.946526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636333, 35.435966, 53.959335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305241, -0.360247, 0.881504,
		-0.516797, 0.714840, 0.471089,
		-0.799843, -0.599354, 0.032025,
		36.396381, 35.256161, 53.968945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708672, 35.658401, 54.640850>,  <36.956272, 35.675709, 53.946526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708672, 35.658401, 54.640850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.577263, 35.321930, 54.469040>,  <36.498417, 35.120049, 54.365955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.577263, 35.321930, 54.469040>,  <36.708672, 35.658401, 54.640850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577263, 35.321930, 54.469040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264667, -0.518535, 0.813064,
		-0.906657, 0.153425, 0.392981,
		-0.328519, -0.841179, -0.429527,
		36.478706, 35.069576, 54.340183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067001, 35.423306, 55.041077>,  <36.708672, 35.658401, 54.640850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067001, 35.423306, 55.041077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.205547, 35.103065, 54.845497>,  <36.288673, 34.910919, 54.728149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.205547, 35.103065, 54.845497>,  <36.067001, 35.423306, 55.041077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205547, 35.103065, 54.845497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020275, -0.514697, 0.857133,
		-0.937882, -0.306792, -0.162039,
		0.346363, -0.800603, -0.488945,
		36.309456, 34.862885, 54.698814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667812, 34.932384, 55.371593>,  <36.067001, 35.423306, 55.041077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667812, 34.932384, 55.371593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.971516, 34.727734, 55.210716>,  <36.153736, 34.604942, 55.114189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.971516, 34.727734, 55.210716>,  <35.667812, 34.932384, 55.371593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971516, 34.727734, 55.210716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045174, -0.657956, 0.751700,
		-0.649206, -0.552575, -0.522678,
		0.759270, -0.511620, -0.402187,
		36.199291, 34.574245, 55.090057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427483, 34.275314, 55.340740>,  <35.667812, 34.932384, 55.371593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427483, 34.275314, 55.340740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.824593, 34.240662, 55.307518>,  <36.062859, 34.219868, 55.287586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.824593, 34.240662, 55.307518>,  <35.427483, 34.275314, 55.340740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824593, 34.240662, 55.307518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035007, -0.452906, 0.890871,
		-0.114798, -0.887339, -0.446599,
		0.992772, -0.086636, -0.083056,
		36.122425, 34.214672, 55.282600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.611645, 37.376419, 39.980534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975079, 37.210365, 39.998993>,  <37.193138, 37.110733, 40.010067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975079, 37.210365, 39.998993>,  <36.611645, 37.376419, 39.980534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975079, 37.210365, 39.998993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176225, -0.280815, 0.943445,
		-0.378701, -0.865334, -0.328302,
		0.908587, -0.415138, 0.046149,
		37.247654, 37.085823, 40.012836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529366, 36.639778, 40.218323>,  <36.611645, 37.376419, 39.980534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529366, 36.639778, 40.218323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880260, 36.808834, 40.309395>,  <37.090797, 36.910267, 40.364040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880260, 36.808834, 40.309395>,  <36.529366, 36.639778, 40.218323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880260, 36.808834, 40.309395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244969, -0.013793, 0.969433,
		0.412858, -0.906194, 0.091433,
		0.877233, 0.422637, 0.227684,
		37.143429, 36.935623, 40.377701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835079, 36.197720, 40.772472>,  <36.529366, 36.639778, 40.218323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835079, 36.197720, 40.772472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985001, 36.568535, 40.776997>,  <37.074951, 36.791023, 40.779713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985001, 36.568535, 40.776997>,  <36.835079, 36.197720, 40.772472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985001, 36.568535, 40.776997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183401, 0.062180, 0.981070,
		0.908785, -0.369779, 0.193325,
		0.374800, 0.927037, 0.011309,
		37.097439, 36.846645, 40.780388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311909, 36.203506, 41.275620>,  <36.835079, 36.197720, 40.772472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311909, 36.203506, 41.275620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188065, 36.583073, 41.251263>,  <37.113758, 36.810810, 41.236649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188065, 36.583073, 41.251263>,  <37.311909, 36.203506, 41.275620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188065, 36.583073, 41.251263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275568, -0.028257, 0.960867,
		0.910057, 0.314275, 0.270238,
		-0.309612, 0.948912, -0.060889,
		37.095181, 36.867744, 41.232998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457745, 36.444557, 41.896862>,  <37.311909, 36.203506, 41.275620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457745, 36.444557, 41.896862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186863, 36.708298, 41.766232>,  <37.024334, 36.866543, 41.687855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186863, 36.708298, 41.766232>,  <37.457745, 36.444557, 41.896862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186863, 36.708298, 41.766232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326908, 0.128008, 0.936347,
		0.659183, 0.740860, 0.128859,
		-0.677207, 0.659349, -0.326574,
		36.983700, 36.906101, 41.668259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506546, 37.039356, 42.378109>,  <37.457745, 36.444557, 41.896862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506546, 37.039356, 42.378109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160202, 37.061867, 42.179264>,  <36.952396, 37.075375, 42.059956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160202, 37.061867, 42.179264>,  <37.506546, 37.039356, 42.378109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160202, 37.061867, 42.179264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458550, 0.308062, 0.833564,
		0.200054, 0.949700, -0.240932,
		-0.865858, 0.056278, -0.497114,
		36.900444, 37.078751, 42.030128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241032, 37.626961, 42.603592>,  <37.506546, 37.039356, 42.378109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241032, 37.626961, 42.603592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901409, 37.468132, 42.464203>,  <36.697636, 37.372833, 42.380569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901409, 37.468132, 42.464203>,  <37.241032, 37.626961, 42.603592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901409, 37.468132, 42.464203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421819, 0.112408, 0.899685,
		-0.318068, 0.910878, -0.262933,
		-0.849059, -0.397071, -0.348472,
		36.646690, 37.349010, 42.359661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777515, 38.058483, 42.847668>,  <37.241032, 37.626961, 42.603592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777515, 38.058483, 42.847668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593365, 37.712719, 42.766830>,  <36.482872, 37.505260, 42.718327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593365, 37.712719, 42.766830>,  <36.777515, 38.058483, 42.847668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593365, 37.712719, 42.766830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493483, 0.059966, 0.867686,
		-0.737920, 0.499193, -0.454180,
		-0.460379, -0.864413, -0.202093,
		36.455250, 37.453396, 42.706203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043289, 38.213341, 42.844238>,  <36.777515, 38.058483, 42.847668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043289, 38.213341, 42.844238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077126, 37.817505, 42.890823>,  <36.097427, 37.580006, 42.918774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077126, 37.817505, 42.890823>,  <36.043289, 38.213341, 42.844238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077126, 37.817505, 42.890823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559138, 0.049597, 0.827590,
		-0.824748, -0.135126, -0.549119,
		0.084595, -0.989586, 0.116459,
		36.102505, 37.520630, 42.925762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419880, 38.055397, 42.941406>,  <36.043289, 38.213341, 42.844238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419880, 38.055397, 42.941406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641506, 37.757000, 43.089188>,  <35.774483, 37.577961, 43.177856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641506, 37.757000, 43.089188>,  <35.419880, 38.055397, 42.941406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641506, 37.757000, 43.089188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388574, 0.160736, 0.907290,
		-0.736218, -0.646264, -0.200815,
		0.554070, -0.745994, 0.369457,
		35.807728, 37.533203, 43.200024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910007, 37.685047, 43.410728>,  <35.419880, 38.055397, 42.941406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910007, 37.685047, 43.410728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273685, 37.563709, 43.524815>,  <35.491890, 37.490906, 43.593266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273685, 37.563709, 43.524815>,  <34.910007, 37.685047, 43.410728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273685, 37.563709, 43.524815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286135, 0.042437, 0.957249,
		-0.302481, -0.951935, -0.048215,
		0.909193, -0.303346, 0.285218,
		35.546444, 37.472706, 43.610378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719707, 37.076393, 43.834061>,  <34.910007, 37.685047, 43.410728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719707, 37.076393, 43.834061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076077, 37.235893, 43.921005>,  <35.289898, 37.331593, 43.973171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076077, 37.235893, 43.921005>,  <34.719707, 37.076393, 43.834061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076077, 37.235893, 43.921005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215161, -0.050882, 0.975252,
		0.399947, -0.915645, 0.040465,
		0.890926, 0.398755, 0.217361,
		35.343353, 37.355518, 43.986214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260838, 36.485706, 43.569092>,  <34.719707, 37.076393, 43.834061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260838, 36.485706, 43.569092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917484, 36.286758, 43.619366>,  <33.711472, 36.167389, 43.649529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917484, 36.286758, 43.619366>,  <34.260838, 36.485706, 43.569092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917484, 36.286758, 43.619366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258379, 0.207497, -0.943496,
		0.443191, -0.842357, -0.306623,
		-0.858383, -0.497373, 0.125686,
		33.659969, 36.137547, 43.657070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328545, 36.016727, 43.043533>,  <34.260838, 36.485706, 43.569092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328545, 36.016727, 43.043533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946953, 36.069691, 43.151150>,  <33.717999, 36.101471, 43.215721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946953, 36.069691, 43.151150>,  <34.328545, 36.016727, 43.043533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946953, 36.069691, 43.151150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260050, 0.081384, -0.962160,
		-0.149299, -0.987848, -0.043205,
		-0.953983, 0.132414, 0.269040,
		33.660759, 36.109413, 43.231861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866325, 35.526981, 42.663597>,  <34.328545, 36.016727, 43.043533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866325, 35.526981, 42.663597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635731, 35.837330, 42.766117>,  <33.497375, 36.023540, 42.827629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635731, 35.837330, 42.766117>,  <33.866325, 35.526981, 42.663597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635731, 35.837330, 42.766117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350048, 0.048926, -0.935453,
		-0.738332, -0.628990, 0.243387,
		-0.576483, 0.775872, 0.256301,
		33.462784, 36.070091, 42.843006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254498, 35.509998, 42.149868>,  <33.866325, 35.526981, 42.663597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254498, 35.509998, 42.149868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235802, 35.872921, 42.317017>,  <33.224583, 36.090675, 42.417305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235802, 35.872921, 42.317017>,  <33.254498, 35.509998, 42.149868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235802, 35.872921, 42.317017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536586, 0.330042, -0.776626,
		-0.842550, -0.260526, 0.471419,
		-0.046743, 0.907303, 0.417871,
		33.221779, 36.145111, 42.442379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565044, 35.724670, 42.137348>,  <33.254498, 35.509998, 42.149868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565044, 35.724670, 42.137348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774021, 36.065361, 42.121300>,  <32.899406, 36.269775, 42.111671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774021, 36.065361, 42.121300>,  <32.565044, 35.724670, 42.137348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774021, 36.065361, 42.121300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568375, 0.312790, -0.760994,
		-0.635610, 0.420384, 0.647516,
		0.522446, 0.851727, -0.040123,
		32.930756, 36.320881, 42.109264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082657, 36.192936, 42.090595>,  <32.565044, 35.724670, 42.137348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082657, 36.192936, 42.090595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423695, 36.367565, 41.975712>,  <32.628319, 36.472343, 41.906784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423695, 36.367565, 41.975712>,  <32.082657, 36.192936, 42.090595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423695, 36.367565, 41.975712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450595, 0.335817, -0.827159,
		-0.264669, 0.834643, 0.483034,
		0.852593, 0.436576, -0.287205,
		32.679474, 36.498539, 41.889549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912613, 36.811577, 41.831600>,  <32.082657, 36.192936, 42.090595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912613, 36.811577, 41.831600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269463, 36.740841, 41.665302>,  <32.483574, 36.698399, 41.565525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269463, 36.740841, 41.665302>,  <31.912613, 36.811577, 41.831600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269463, 36.740841, 41.665302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347562, 0.319275, -0.881626,
		0.288645, 0.931016, 0.223370,
		0.892124, -0.176842, -0.415742,
		32.537098, 36.687790, 41.540581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048756, 37.386768, 41.436371>,  <31.912613, 36.811577, 41.831600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048756, 37.386768, 41.436371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263615, 37.098690, 41.260738>,  <32.392529, 36.925842, 41.155361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263615, 37.098690, 41.260738>,  <32.048756, 37.386768, 41.436371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263615, 37.098690, 41.260738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413646, 0.228745, -0.881234,
		0.735101, 0.654972, -0.175038,
		0.537144, -0.720200, -0.439077,
		32.424759, 36.882629, 41.129017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172596, 37.599144, 40.727135>,  <32.048756, 37.386768, 41.436371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172596, 37.599144, 40.727135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273243, 37.212032, 40.723183>,  <32.333633, 36.979767, 40.720810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273243, 37.212032, 40.723183>,  <32.172596, 37.599144, 40.727135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273243, 37.212032, 40.723183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165032, -0.032843, -0.985741,
		0.953651, 0.249665, -0.167978,
		0.251622, -0.967775, -0.009882,
		32.348728, 36.921700, 40.720219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420216, 37.486881, 40.087273>,  <32.172596, 37.599144, 40.727135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420216, 37.486881, 40.087273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342453, 37.107647, 40.187946>,  <32.295795, 36.880108, 40.248348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342453, 37.107647, 40.187946>,  <32.420216, 37.486881, 40.087273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342453, 37.107647, 40.187946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214230, -0.209347, -0.954085,
		0.957241, -0.239400, -0.162409,
		-0.194408, -0.948083, 0.251682,
		32.284130, 36.823223, 40.263451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612480, 37.071049, 39.492943>,  <32.420216, 37.486881, 40.087273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612480, 37.071049, 39.492943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375969, 36.826832, 39.703705>,  <32.234062, 36.680302, 39.830162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375969, 36.826832, 39.703705>,  <32.612480, 37.071049, 39.492943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375969, 36.826832, 39.703705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432963, -0.310895, -0.846101,
		0.680392, -0.728412, -0.080516,
		-0.591279, -0.610540, 0.526906,
		32.198586, 36.643669, 39.861778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639011, 36.443306, 39.120724>,  <32.612480, 37.071049, 39.492943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639011, 36.443306, 39.120724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305256, 36.475899, 39.338776>,  <32.105003, 36.495453, 39.469604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305256, 36.475899, 39.338776>,  <32.639011, 36.443306, 39.120724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305256, 36.475899, 39.338776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550965, -0.095573, -0.829038,
		-0.015451, -0.992082, 0.124637,
		-0.834386, 0.081480, 0.545125,
		32.054939, 36.500343, 39.502312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271667, 35.844296, 38.877792>,  <32.639011, 36.443306, 39.120724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271667, 35.844296, 38.877792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986599, 36.085972, 39.020370>,  <31.815557, 36.230976, 39.105915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986599, 36.085972, 39.020370>,  <32.271667, 35.844296, 38.877792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986599, 36.085972, 39.020370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453491, -0.009146, -0.891214,
		-0.535203, -0.796788, 0.280512,
		-0.712674, 0.604190, 0.356441,
		31.772797, 36.267227, 39.127304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625809, 35.579266, 38.602104>,  <32.271667, 35.844296, 38.877792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625809, 35.579266, 38.602104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552217, 35.954967, 38.718006>,  <31.508062, 36.180389, 38.787548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552217, 35.954967, 38.718006>,  <31.625809, 35.579266, 38.602104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552217, 35.954967, 38.718006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624481, 0.115957, -0.772385,
		-0.759063, -0.323049, 0.565211,
		-0.183978, 0.939252, 0.289756,
		31.497025, 36.236744, 38.804932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083038, 34.966618, 38.556042>,  <31.625809, 35.579266, 38.602104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083038, 34.966618, 38.556042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434101, 34.820583, 38.680248>,  <32.644741, 34.732964, 38.754772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434101, 34.820583, 38.680248>,  <32.083038, 34.966618, 38.556042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434101, 34.820583, 38.680248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470914, -0.777416, 0.416969,
		0.089170, -0.512185, -0.854234,
		0.877661, -0.365090, 0.310517,
		32.697399, 34.711056, 38.773403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370819, 34.209476, 38.272659>,  <32.083038, 34.966618, 38.556042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370819, 34.209476, 38.272659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511536, 34.275307, 38.641258>,  <32.595966, 34.314804, 38.862419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511536, 34.275307, 38.641258>,  <32.370819, 34.209476, 38.272659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511536, 34.275307, 38.641258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518688, -0.785206, 0.338251,
		0.779235, -0.596963, -0.190863,
		0.351790, 0.164579, 0.921498,
		32.617073, 34.324680, 38.917709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789909, 33.652931, 38.736721>,  <32.370819, 34.209476, 38.272659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789909, 33.652931, 38.736721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597298, 33.911770, 38.973160>,  <32.481731, 34.067074, 39.115025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597298, 33.911770, 38.973160>,  <32.789909, 33.652931, 38.736721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597298, 33.911770, 38.973160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426304, -0.762209, 0.487136,
		0.765765, -0.017418, 0.642884,
		-0.481527, 0.647096, 0.591098,
		32.452839, 34.105900, 39.150490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470490, 33.450581, 39.368523>,  <32.789909, 33.652931, 38.736721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470490, 33.450581, 39.368523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738132, 33.693352, 39.540073>,  <32.898716, 33.839016, 39.643005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738132, 33.693352, 39.540073>,  <32.470490, 33.450581, 39.368523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738132, 33.693352, 39.540073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048632, -0.611615, 0.789660,
		0.741576, -0.507507, -0.438750,
		0.669104, 0.606930, 0.428878,
		32.938862, 33.875431, 39.668736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871307, 32.942333, 39.797016>,  <32.470490, 33.450581, 39.368523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871307, 32.942333, 39.797016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984280, 33.310802, 39.904102>,  <33.052063, 33.531883, 39.968353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984280, 33.310802, 39.904102>,  <32.871307, 32.942333, 39.797016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984280, 33.310802, 39.904102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149638, -0.317967, 0.936219,
		0.947544, -0.224360, -0.227647,
		0.282434, 0.921173, 0.267715,
		33.069012, 33.587154, 39.984417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570965, 32.895638, 40.189716>,  <32.871307, 32.942333, 39.797016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570965, 32.895638, 40.189716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382744, 33.225216, 40.316017>,  <33.269810, 33.422962, 40.391796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382744, 33.225216, 40.316017>,  <33.570965, 32.895638, 40.189716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382744, 33.225216, 40.316017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350335, -0.153971, 0.923882,
		0.809842, 0.545354, -0.216204,
		-0.470554, 0.823943, 0.315749,
		33.241577, 33.472397, 40.410744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037548, 33.072792, 40.735668>,  <33.570965, 32.895638, 40.189716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037548, 33.072792, 40.735668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691067, 33.269688, 40.770058>,  <33.483177, 33.387825, 40.790691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691067, 33.269688, 40.770058>,  <34.037548, 33.072792, 40.735668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691067, 33.269688, 40.770058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050092, -0.085643, 0.995066,
		0.497177, 0.866234, 0.049527,
		-0.866202, 0.492243, 0.085971,
		33.431206, 33.417362, 40.795849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092373, 33.424465, 41.298847>,  <34.037548, 33.072792, 40.735668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092373, 33.424465, 41.298847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695915, 33.395969, 41.254032>,  <33.458038, 33.378872, 41.227142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695915, 33.395969, 41.254032>,  <34.092373, 33.424465, 41.298847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695915, 33.395969, 41.254032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111795, -0.007358, 0.993704,
		-0.071617, 0.997432, -0.000672,
		-0.991147, -0.071241, -0.112035,
		33.398571, 33.374596, 41.220421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811092, 33.828896, 41.874825>,  <34.092373, 33.424465, 41.298847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811092, 33.828896, 41.874825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492191, 33.614601, 41.763557>,  <33.300850, 33.486023, 41.696796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492191, 33.614601, 41.763557>,  <33.811092, 33.828896, 41.874825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492191, 33.614601, 41.763557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241945, -0.138582, 0.960343,
		-0.553039, 0.832936, -0.019134,
		-0.797252, -0.535736, -0.278166,
		33.253017, 33.453880, 41.680107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187000, 34.184006, 42.154064>,  <33.811092, 33.828896, 41.874825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187000, 34.184006, 42.154064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098434, 33.800495, 42.082829>,  <33.045296, 33.570389, 42.040085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098434, 33.800495, 42.082829>,  <33.187000, 34.184006, 42.154064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098434, 33.800495, 42.082829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099142, -0.159547, 0.982199,
		-0.970128, 0.235126, -0.059730,
		-0.221411, -0.958781, -0.178092,
		33.032013, 33.512859, 42.029400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598660, 33.980892, 42.606174>,  <33.187000, 34.184006, 42.154064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598660, 33.980892, 42.606174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738354, 33.622890, 42.495174>,  <32.822170, 33.408089, 42.428574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738354, 33.622890, 42.495174>,  <32.598660, 33.980892, 42.606174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738354, 33.622890, 42.495174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240533, -0.371849, 0.896589,
		-0.905638, -0.246369, -0.345140,
		0.349232, -0.895003, -0.277501,
		32.843124, 33.354389, 42.411922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226814, 33.501785, 43.009361>,  <32.598660, 33.980892, 42.606174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226814, 33.501785, 43.009361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529686, 33.271049, 42.886768>,  <32.711411, 33.132607, 42.813213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529686, 33.271049, 42.886768>,  <32.226814, 33.501785, 43.009361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529686, 33.271049, 42.886768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129304, -0.327551, 0.935944,
		-0.640278, -0.748309, -0.173427,
		0.757182, -0.576840, -0.306483,
		32.756840, 33.097996, 42.794823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129158, 32.774914, 43.247360>,  <32.226814, 33.501785, 43.009361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129158, 32.774914, 43.247360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520195, 32.799866, 43.166939>,  <32.754818, 32.814838, 43.118687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520195, 32.799866, 43.166939>,  <32.129158, 32.774914, 43.247360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520195, 32.799866, 43.166939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206291, -0.474035, 0.855999,
		-0.041907, -0.878294, -0.476282,
		0.977593, 0.062380, -0.201050,
		32.813473, 32.818581, 43.106625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380695, 32.211052, 43.617142>,  <32.129158, 32.774914, 43.247360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380695, 32.211052, 43.617142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699280, 32.442104, 43.545589>,  <32.890430, 32.580734, 43.502659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699280, 32.442104, 43.545589>,  <32.380695, 32.211052, 43.617142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699280, 32.442104, 43.545589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435249, -0.342263, 0.832715,
		0.419780, -0.741078, -0.524011,
		0.796457, 0.577633, -0.178878,
		32.938217, 32.615395, 43.491924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944790, 31.771408, 43.645439>,  <32.380695, 32.211052, 43.617142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944790, 31.771408, 43.645439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061508, 32.146751, 43.719563>,  <33.131538, 32.371956, 43.764038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061508, 32.146751, 43.719563>,  <32.944790, 31.771408, 43.645439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061508, 32.146751, 43.719563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581055, -0.327800, 0.744932,
		0.759756, -0.109694, -0.640888,
		0.291798, 0.938357, 0.185309,
		33.149048, 32.428257, 43.775154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564137, 31.625454, 43.839233>,  <32.944790, 31.771408, 43.645439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564137, 31.625454, 43.839233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506855, 32.006569, 43.946331>,  <33.472485, 32.235237, 44.010590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506855, 32.006569, 43.946331>,  <33.564137, 31.625454, 43.839233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506855, 32.006569, 43.946331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559775, -0.145125, 0.815838,
		0.816177, 0.266708, -0.512564,
		-0.143205, 0.952788, 0.267744,
		33.463894, 32.292404, 44.026653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167542, 31.854240, 44.010502>,  <33.564137, 31.625454, 43.839233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167542, 31.854240, 44.010502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932152, 32.115177, 44.201561>,  <33.790916, 32.271740, 44.316196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932152, 32.115177, 44.201561>,  <34.167542, 31.854240, 44.010502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932152, 32.115177, 44.201561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554296, -0.104564, 0.825725,
		0.588599, 0.750678, -0.300057,
		-0.588478, 0.652341, 0.477644,
		33.755608, 32.310879, 44.344852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590618, 32.257008, 44.333256>,  <34.167542, 31.854240, 44.010502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590618, 32.257008, 44.333256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254242, 32.273357, 44.549088>,  <34.052414, 32.283169, 44.678585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254242, 32.273357, 44.549088>,  <34.590618, 32.257008, 44.333256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254242, 32.273357, 44.549088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519942, -0.215213, 0.826646,
		0.149914, 0.975711, 0.159729,
		-0.840943, 0.040876, 0.539577,
		34.001961, 32.285622, 44.710960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871532, 32.625214, 44.822906>,  <34.590618, 32.257008, 44.333256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871532, 32.625214, 44.822906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520893, 32.491505, 44.961376>,  <34.310509, 32.411282, 45.044456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520893, 32.491505, 44.961376>,  <34.871532, 32.625214, 44.822906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520893, 32.491505, 44.961376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421391, -0.185823, 0.887637,
		-0.232383, 0.923977, 0.303751,
		-0.876600, -0.334270, 0.346174,
		34.257912, 32.391224, 45.065228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733131, 33.033531, 45.400940>,  <34.871532, 32.625214, 44.822906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733131, 33.033531, 45.400940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545933, 32.682022, 45.438328>,  <34.433613, 32.471115, 45.460762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545933, 32.682022, 45.438328>,  <34.733131, 33.033531, 45.400940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545933, 32.682022, 45.438328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284702, -0.049796, 0.957322,
		-0.836614, 0.474635, 0.273493,
		-0.467997, -0.878773, 0.093469,
		34.405533, 32.418388, 45.466370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481602, 33.193203, 46.081425>,  <34.733131, 33.033531, 45.400940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481602, 33.193203, 46.081425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430622, 32.807709, 45.987637>,  <34.400036, 32.576412, 45.931362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430622, 32.807709, 45.987637>,  <34.481602, 33.193203, 46.081425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430622, 32.807709, 45.987637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127454, -0.250354, 0.959728,
		-0.983623, 0.092428, 0.154738,
		-0.127445, -0.963732, -0.234473,
		34.392387, 32.518589, 45.917294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185474, 32.940018, 46.608734>,  <34.481602, 33.193203, 46.081425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185474, 32.940018, 46.608734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348740, 32.600342, 46.474705>,  <34.446701, 32.396534, 46.394287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348740, 32.600342, 46.474705>,  <34.185474, 32.940018, 46.608734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348740, 32.600342, 46.474705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126174, -0.311038, 0.941985,
		-0.904146, -0.426764, -0.019810,
		0.408167, -0.849192, -0.335070,
		34.471191, 32.345585, 46.374184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904488, 32.392620, 46.961712>,  <34.185474, 32.940018, 46.608734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904488, 32.392620, 46.961712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218086, 32.203400, 46.800926>,  <34.406246, 32.089867, 46.704456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218086, 32.203400, 46.800926>,  <33.904488, 32.392620, 46.961712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218086, 32.203400, 46.800926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163610, -0.467165, 0.868901,
		-0.598820, -0.746977, -0.288858,
		0.783994, -0.473056, -0.401961,
		34.453285, 32.061481, 46.680340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825260, 31.674877, 47.123337>,  <33.904488, 32.392620, 46.961712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825260, 31.674877, 47.123337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208328, 31.717628, 47.016426>,  <34.438171, 31.743280, 46.952282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208328, 31.717628, 47.016426>,  <33.825260, 31.674877, 47.123337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208328, 31.717628, 47.016426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282015, -0.534416, 0.796786,
		-0.057674, -0.838437, -0.541939,
		0.957675, 0.106881, -0.267274,
		34.495632, 31.749693, 46.936245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181450, 30.995195, 47.063663>,  <33.825260, 31.674877, 47.123337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181450, 30.995195, 47.063663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465153, 31.271059, 47.122078>,  <34.635372, 31.436577, 47.157127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465153, 31.271059, 47.122078>,  <34.181450, 30.995195, 47.063663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465153, 31.271059, 47.122078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392829, -0.558664, 0.730465,
		0.585356, -0.460720, -0.667154,
		0.709255, 0.689660, 0.146033,
		34.677929, 31.477957, 47.165890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784420, 30.559338, 47.131466>,  <34.181450, 30.995195, 47.063663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784420, 30.559338, 47.131466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839828, 30.908598, 47.318409>,  <34.873074, 31.118155, 47.430573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839828, 30.908598, 47.318409>,  <34.784420, 30.559338, 47.131466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839828, 30.908598, 47.318409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354652, -0.484341, 0.799772,
		0.924681, 0.054966, -0.376754,
		0.138518, 0.873151, 0.467355,
		34.881382, 31.170544, 47.458614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328381, 30.414049, 47.493729>,  <34.784420, 30.559338, 47.131466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328381, 30.414049, 47.493729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182175, 30.740524, 47.672718>,  <35.094452, 30.936409, 47.780113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182175, 30.740524, 47.672718>,  <35.328381, 30.414049, 47.493729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182175, 30.740524, 47.672718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258353, -0.372888, 0.891183,
		0.894232, 0.441348, -0.074569,
		-0.365516, 0.816190, 0.447472,
		35.072521, 30.985382, 47.806961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844986, 30.561022, 47.894745>,  <35.328381, 30.414049, 47.493729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844986, 30.561022, 47.894745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511127, 30.732763, 48.032745>,  <35.310814, 30.835808, 48.115547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511127, 30.732763, 48.032745>,  <35.844986, 30.561022, 47.894745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511127, 30.732763, 48.032745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295357, -0.179816, 0.938312,
		0.464904, 0.885055, 0.023269,
		-0.834643, 0.429352, 0.345005,
		35.260735, 30.861568, 48.136246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475014, 30.940367, 48.158222>,  <35.844986, 30.561022, 47.894745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475014, 30.940367, 48.158222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865868, 30.859566, 48.184780>,  <37.100380, 30.811085, 48.200714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865868, 30.859566, 48.184780>,  <36.475014, 30.940367, 48.158222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865868, 30.859566, 48.184780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098868, 0.155178, -0.982927,
		0.188252, 0.967013, 0.171601,
		0.977132, -0.202003, 0.066394,
		37.159008, 30.798965, 48.204697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829880, 31.452494, 47.865795>,  <36.475014, 30.940367, 48.158222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829880, 31.452494, 47.865795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080162, 31.141348, 47.842403>,  <37.230331, 30.954660, 47.828369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080162, 31.141348, 47.842403>,  <36.829880, 31.452494, 47.865795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080162, 31.141348, 47.842403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161947, 0.202872, -0.965721,
		0.763064, 0.594785, 0.252911,
		0.625704, -0.777865, -0.058481,
		37.267872, 30.907988, 47.824860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447445, 31.664062, 47.550323>,  <36.829880, 31.452494, 47.865795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447445, 31.664062, 47.550323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463657, 31.267498, 47.500580>,  <37.473385, 31.029560, 47.470734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463657, 31.267498, 47.500580>,  <37.447445, 31.664062, 47.550323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463657, 31.267498, 47.500580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292964, 0.130784, -0.947137,
		0.955264, 0.001951, 0.295747,
		0.040527, -0.991409, -0.124362,
		37.475815, 30.970076, 47.463272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108589, 31.564716, 47.175385>,  <37.447445, 31.664062, 47.550323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108589, 31.564716, 47.175385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860771, 31.256319, 47.116425>,  <37.712078, 31.071280, 47.081051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860771, 31.256319, 47.116425>,  <38.108589, 31.564716, 47.175385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860771, 31.256319, 47.116425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128751, 0.085419, -0.987991,
		0.774327, -0.631086, 0.046345,
		-0.619549, -0.770995, -0.147395,
		37.674908, 31.025021, 47.072205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414120, 31.201113, 46.698906>,  <38.108589, 31.564716, 47.175385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414120, 31.201113, 46.698906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034538, 31.082550, 46.655773>,  <37.806789, 31.011412, 46.629894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034538, 31.082550, 46.655773>,  <38.414120, 31.201113, 46.698906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034538, 31.082550, 46.655773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107124, 0.018668, -0.994070,
		0.296665, -0.954878, 0.014037,
		-0.948954, -0.296410, -0.107829,
		37.749851, 30.993628, 46.623425>
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
