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
	<23.943043, 35.027050, 34.994511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.313120, 35.009743, 35.145321>,  <24.535166, 34.999359, 35.235806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.313120, 35.009743, 35.145321>,  <23.943043, 35.027050, 34.994511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.313120, 35.009743, 35.145321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010634, -0.996044, -0.088219,
		0.379350, 0.077610, -0.921992,
		0.925192, -0.043271, 0.377024,
		24.590677, 34.996761, 35.258427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.387850, 34.551636, 34.512283>,  <23.943043, 35.027050, 34.994511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.387850, 34.551636, 34.512283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506069, 34.573032, 34.893814>,  <24.577002, 34.585873, 35.122734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506069, 34.573032, 34.893814>,  <24.387850, 34.551636, 34.512283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.506069, 34.573032, 34.893814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078031, -0.993743, 0.079913,
		0.952135, -0.098047, -0.289526,
		0.295550, 0.053496, 0.953828,
		24.594734, 34.589081, 35.179962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.124552, 34.355072, 34.657272>,  <24.387850, 34.551636, 34.512283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.124552, 34.355072, 34.657272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866032, 34.272678, 34.951172>,  <24.710918, 34.223240, 35.127514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866032, 34.272678, 34.951172>,  <25.124552, 34.355072, 34.657272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.866032, 34.272678, 34.951172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201818, -0.974732, -0.095742,
		0.735909, 0.086408, 0.671544,
		-0.646303, -0.205987, 0.734753,
		24.672140, 34.210884, 35.171597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.562290, 34.131466, 35.215416>,  <25.124552, 34.355072, 34.657272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.562290, 34.131466, 35.215416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.208954, 33.948086, 35.176361>,  <24.996952, 33.838058, 35.152927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.208954, 33.948086, 35.176361>,  <25.562290, 34.131466, 35.215416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.208954, 33.948086, 35.176361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456908, -0.795672, -0.397670,
		0.104624, -0.395889, 0.912319,
		-0.883340, -0.458452, -0.097639,
		24.943953, 33.810551, 35.147068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226999, 34.142223, 34.826588>,  <25.562290, 34.131466, 35.215416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226999, 34.142223, 34.826588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043234, 34.287327, 34.502281>,  <25.932974, 34.374390, 34.307697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043234, 34.287327, 34.502281>,  <26.226999, 34.142223, 34.826588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.043234, 34.287327, 34.502281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883533, 0.092973, -0.459048,
		-0.091144, -0.927233, -0.363223,
		-0.459414, 0.362759, -0.810768,
		25.905409, 34.396156, 34.259052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190042, 33.681747, 34.270699>,  <26.226999, 34.142223, 34.826588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190042, 33.681747, 34.270699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224028, 34.059624, 34.143990>,  <26.244419, 34.286350, 34.067966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224028, 34.059624, 34.143990>,  <26.190042, 33.681747, 34.270699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224028, 34.059624, 34.143990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927613, -0.191057, -0.320985,
		-0.363752, -0.266569, -0.892539,
		0.084961, 0.944690, -0.316770,
		26.249516, 34.343029, 34.048958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426491, 33.731102, 33.580425>,  <26.190042, 33.681747, 34.270699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426491, 33.731102, 33.580425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538092, 34.063637, 33.772694>,  <26.605053, 34.263157, 33.888054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538092, 34.063637, 33.772694>,  <26.426491, 33.731102, 33.580425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538092, 34.063637, 33.772694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958152, -0.274381, -0.081610,
		0.064042, 0.483323, -0.873096,
		0.279005, 0.831333, 0.480669,
		26.621794, 34.313038, 33.916893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913273, 34.108273, 33.238419>,  <26.426491, 33.731102, 33.580425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913273, 34.108273, 33.238419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976690, 34.219738, 33.617302>,  <27.014740, 34.286617, 33.844631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976690, 34.219738, 33.617302>,  <26.913273, 34.108273, 33.238419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976690, 34.219738, 33.617302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985124, -0.109060, -0.132803,
		0.066296, 0.954177, -0.291808,
		0.158542, 0.278663, 0.947213,
		27.024252, 34.303337, 33.901466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512280, 34.503864, 33.237228>,  <26.913273, 34.108273, 33.238419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512280, 34.503864, 33.237228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481630, 34.397076, 33.621490>,  <27.463242, 34.333004, 33.852047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481630, 34.397076, 33.621490>,  <27.512280, 34.503864, 33.237228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481630, 34.397076, 33.621490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954621, -0.297749, -0.006605,
		0.287797, 0.916555, 0.277669,
		-0.076622, -0.266970, 0.960654,
		27.458643, 34.316986, 33.909687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030888, 34.854050, 33.594307>,  <27.512280, 34.503864, 33.237228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030888, 34.854050, 33.594307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944862, 34.536377, 33.821648>,  <27.893248, 34.345772, 33.958050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944862, 34.536377, 33.821648>,  <28.030888, 34.854050, 33.594307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944862, 34.536377, 33.821648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959661, -0.279782, -0.027820,
		0.181108, 0.539437, 0.822318,
		-0.215062, -0.794185, 0.568348,
		27.880344, 34.298122, 33.992153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364328, 34.999168, 34.296253>,  <28.030888, 34.854050, 33.594307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364328, 34.999168, 34.296253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311037, 34.608448, 34.229191>,  <28.279062, 34.374016, 34.188953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311037, 34.608448, 34.229191>,  <28.364328, 34.999168, 34.296253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311037, 34.608448, 34.229191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943317, -0.176864, 0.280842,
		-0.303979, -0.120735, 0.944997,
		-0.133229, -0.976802, -0.167654,
		28.271069, 34.315407, 34.178894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759546, 34.633820, 34.756500>,  <28.364328, 34.999168, 34.296253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759546, 34.633820, 34.756500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704357, 34.405937, 34.432426>,  <28.671244, 34.269207, 34.237984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704357, 34.405937, 34.432426>,  <28.759546, 34.633820, 34.756500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704357, 34.405937, 34.432426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932459, -0.350480, 0.087656,
		-0.333892, -0.743371, 0.579583,
		-0.137971, -0.569705, -0.810185,
		28.662966, 34.235027, 34.189369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004648, 33.931728, 34.812092>,  <28.759546, 34.633820, 34.756500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004648, 33.931728, 34.812092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039322, 33.987068, 34.417458>,  <29.060127, 34.020271, 34.180679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039322, 33.987068, 34.417458>,  <29.004648, 33.931728, 34.812092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039322, 33.987068, 34.417458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901884, -0.431571, 0.018724,
		-0.423190, -0.891407, -0.162185,
		0.086685, 0.138349, -0.986583,
		29.065327, 34.028572, 34.121483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169014, 33.304523, 34.436501>,  <29.004648, 33.931728, 34.812092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169014, 33.304523, 34.436501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306240, 33.606712, 34.213226>,  <29.388575, 33.788025, 34.079262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306240, 33.606712, 34.213226>,  <29.169014, 33.304523, 34.436501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306240, 33.606712, 34.213226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894727, -0.443730, -0.050656,
		-0.285953, -0.482047, -0.828167,
		0.343064, 0.755469, -0.558187,
		29.409159, 33.833355, 34.045769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937025, 33.135056, 33.718571>,  <29.169014, 33.304523, 34.436501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937025, 33.135056, 33.718571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970680, 32.809940, 33.487991>,  <28.990873, 32.614872, 33.349644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970680, 32.809940, 33.487991>,  <28.937025, 33.135056, 33.718571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970680, 32.809940, 33.487991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964366, 0.212046, -0.158225,
		0.250837, -0.542592, 0.801670,
		0.084139, -0.812791, -0.576447,
		28.995922, 32.566101, 33.315056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269140, 33.338158, 33.482346>,  <28.937025, 33.135056, 33.718571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269140, 33.338158, 33.482346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383532, 33.508297, 33.825809>,  <28.452166, 33.610382, 34.031887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383532, 33.508297, 33.825809>,  <28.269140, 33.338158, 33.482346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383532, 33.508297, 33.825809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951677, 0.230744, 0.202653,
		-0.111932, -0.875119, 0.470784,
		0.285977, 0.425351, 0.858658,
		28.469324, 33.635902, 34.083408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920282, 33.031338, 34.064213>,  <28.269140, 33.338158, 33.482346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920282, 33.031338, 34.064213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026115, 33.412540, 34.123234>,  <28.089615, 33.641262, 34.158646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026115, 33.412540, 34.123234>,  <27.920282, 33.031338, 34.064213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026115, 33.412540, 34.123234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907752, 0.194467, 0.371711,
		0.325550, -0.232284, 0.916548,
		0.264581, 0.953009, 0.147548,
		28.105490, 33.698444, 34.167500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602230, 33.240643, 34.728817>,  <27.920282, 33.031338, 34.064213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602230, 33.240643, 34.728817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698502, 33.571041, 34.524937>,  <27.756264, 33.769279, 34.402607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698502, 33.571041, 34.524937>,  <27.602230, 33.240643, 34.728817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698502, 33.571041, 34.524937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889150, 0.398213, 0.225475,
		0.389214, 0.398939, 0.830277,
		0.240676, 0.825999, -0.509706,
		27.770704, 33.818840, 34.372025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378044, 33.952187, 35.082130>,  <27.602230, 33.240643, 34.728817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378044, 33.952187, 35.082130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420338, 34.099106, 34.712502>,  <27.445713, 34.187256, 34.490723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420338, 34.099106, 34.712502>,  <27.378044, 33.952187, 35.082130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420338, 34.099106, 34.712502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857426, 0.504327, 0.102351,
		0.503629, 0.781503, 0.368254,
		0.105733, 0.367298, -0.924074,
		27.452059, 34.209293, 34.435280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169172, 34.658398, 35.194481>,  <27.378044, 33.952187, 35.082130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169172, 34.658398, 35.194481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116863, 34.528183, 34.819904>,  <27.085478, 34.450054, 34.595158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116863, 34.528183, 34.819904>,  <27.169172, 34.658398, 35.194481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116863, 34.528183, 34.819904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897635, 0.439876, -0.027564,
		0.420892, 0.836979, -0.349737,
		-0.130771, -0.325538, -0.936442,
		27.077633, 34.430523, 34.538971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627398, 34.319599, 35.744236>,  <27.169172, 34.658398, 35.194481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627398, 34.319599, 35.744236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698692, 34.123589, 36.085552>,  <27.741470, 34.005981, 36.290344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698692, 34.123589, 36.085552>,  <27.627398, 34.319599, 35.744236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698692, 34.123589, 36.085552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983803, 0.105536, -0.144894,
		-0.019052, 0.865298, 0.500896,
		0.178239, -0.490023, 0.853293,
		27.752165, 33.976582, 36.341541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250351, 34.671078, 35.900578>,  <27.627398, 34.319599, 35.744236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250351, 34.671078, 35.900578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237928, 34.341900, 36.127487>,  <28.230474, 34.144394, 36.263634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237928, 34.341900, 36.127487>,  <28.250351, 34.671078, 35.900578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237928, 34.341900, 36.127487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976158, -0.146955, -0.159747,
		0.214826, 0.548790, 0.807886,
		-0.031055, -0.822942, 0.567276,
		28.228611, 34.095016, 36.297668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821123, 34.717636, 36.296360>,  <28.250351, 34.671078, 35.900578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821123, 34.717636, 36.296360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615049, 34.985825, 36.509918>,  <28.491405, 35.146740, 36.638054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615049, 34.985825, 36.509918>,  <28.821123, 34.717636, 36.296360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615049, 34.985825, 36.509918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355979, -0.399269, 0.844904,
		0.779657, 0.625338, -0.032977,
		-0.515184, 0.670474, 0.533900,
		28.460495, 35.186966, 36.670090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217680, 35.213730, 36.722733>,  <28.821123, 34.717636, 36.296360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217680, 35.213730, 36.722733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858080, 35.176788, 36.893970>,  <28.642319, 35.154625, 36.996716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858080, 35.176788, 36.893970>,  <29.217680, 35.213730, 36.722733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858080, 35.176788, 36.893970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433596, -0.325131, 0.840408,
		0.061572, 0.941149, 0.332337,
		-0.899001, -0.092355, 0.428097,
		28.588379, 35.149082, 37.022400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067648, 35.549709, 37.253929>,  <29.217680, 35.213730, 36.722733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067648, 35.549709, 37.253929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868048, 35.213108, 37.336750>,  <28.748287, 35.011147, 37.386444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868048, 35.213108, 37.336750>,  <29.067648, 35.549709, 37.253929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868048, 35.213108, 37.336750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599353, -0.162550, 0.783807,
		-0.625920, 0.515217, 0.585470,
		-0.498999, -0.841504, 0.207054,
		28.718348, 34.960655, 37.398865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880186, 35.512470, 38.005924>,  <29.067648, 35.549709, 37.253929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880186, 35.512470, 38.005924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917000, 35.156033, 37.828171>,  <28.939089, 34.942169, 37.721519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917000, 35.156033, 37.828171>,  <28.880186, 35.512470, 38.005924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917000, 35.156033, 37.828171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509350, -0.341343, 0.789967,
		-0.855624, -0.299050, 0.422466,
		0.092034, -0.891097, -0.444382,
		28.944611, 34.888702, 37.694855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613731, 34.970741, 38.470203>,  <28.880186, 35.512470, 38.005924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613731, 34.970741, 38.470203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909449, 34.879910, 38.216629>,  <29.086880, 34.825413, 38.064484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909449, 34.879910, 38.216629>,  <28.613731, 34.970741, 38.470203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909449, 34.879910, 38.216629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534411, -0.374920, 0.757522,
		-0.409694, -0.898816, -0.155823,
		0.739294, -0.227079, -0.633940,
		29.131237, 34.811787, 38.026447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715298, 34.210670, 38.335907>,  <28.613731, 34.970741, 38.470203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715298, 34.210670, 38.335907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045071, 34.436249, 38.316830>,  <29.242935, 34.571594, 38.305382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045071, 34.436249, 38.316830>,  <28.715298, 34.210670, 38.335907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045071, 34.436249, 38.316830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430107, -0.569534, 0.700456,
		0.367853, -0.597995, -0.712100,
		0.824434, 0.563944, -0.047697,
		29.292400, 34.605431, 38.302521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313265, 33.777748, 38.342354>,  <28.715298, 34.210670, 38.335907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313265, 33.777748, 38.342354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440264, 34.130283, 38.482319>,  <29.516464, 34.341805, 38.566299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440264, 34.130283, 38.482319>,  <29.313265, 33.777748, 38.342354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440264, 34.130283, 38.482319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528818, -0.470865, 0.706143,
		0.787112, -0.039158, -0.615566,
		0.317499, 0.881336, 0.349916,
		29.535513, 34.394684, 38.587296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011606, 33.551071, 38.622536>,  <29.313265, 33.777748, 38.342354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011606, 33.551071, 38.622536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924812, 33.891720, 38.813389>,  <29.872736, 34.096111, 38.927898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924812, 33.891720, 38.813389>,  <30.011606, 33.551071, 38.622536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924812, 33.891720, 38.813389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420811, -0.359423, 0.832906,
		0.880816, 0.381508, -0.280385,
		-0.216984, 0.851626, 0.477128,
		29.859716, 34.147209, 38.956528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569742, 33.775440, 39.029686>,  <30.011606, 33.551071, 38.622536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569742, 33.775440, 39.029686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247341, 33.947674, 39.192146>,  <30.053902, 34.051014, 39.289623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247341, 33.947674, 39.192146>,  <30.569742, 33.775440, 39.029686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247341, 33.947674, 39.192146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232254, -0.401072, 0.886115,
		0.544444, 0.808539, 0.223259,
		-0.806001, 0.430587, 0.406148,
		30.005541, 34.076851, 39.313992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662842, 34.335789, 39.622532>,  <30.569742, 33.775440, 39.029686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662842, 34.335789, 39.622532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309584, 34.157536, 39.681145>,  <30.097630, 34.050583, 39.716312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309584, 34.157536, 39.681145>,  <30.662842, 34.335789, 39.622532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309584, 34.157536, 39.681145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339565, -0.391771, 0.855109,
		-0.323654, 0.804941, 0.497310,
		-0.883144, -0.445628, 0.146531,
		30.044640, 34.023846, 39.725105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459721, 34.451603, 40.332649>,  <30.662842, 34.335789, 39.622532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459721, 34.451603, 40.332649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278116, 34.113949, 40.218586>,  <30.169153, 33.911358, 40.150146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278116, 34.113949, 40.218586>,  <30.459721, 34.451603, 40.332649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278116, 34.113949, 40.218586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360854, -0.466825, 0.807378,
		-0.814652, 0.263659, 0.516553,
		-0.454013, -0.844132, -0.285157,
		30.141912, 33.860710, 40.133038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190475, 34.246265, 40.946548>,  <30.459721, 34.451603, 40.332649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190475, 34.246265, 40.946548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168570, 33.921036, 40.714718>,  <30.155426, 33.725899, 40.575619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168570, 33.921036, 40.714718>,  <30.190475, 34.246265, 40.946548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168570, 33.921036, 40.714718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398403, -0.550035, 0.733987,
		-0.915574, -0.190708, 0.354054,
		-0.054765, -0.813075, -0.579577,
		30.152140, 33.677113, 40.540844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839453, 33.747448, 41.287144>,  <30.190475, 34.246265, 40.946548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839453, 33.747448, 41.287144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072256, 33.543201, 41.033993>,  <30.211937, 33.420654, 40.882103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072256, 33.543201, 41.033993>,  <29.839453, 33.747448, 41.287144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072256, 33.543201, 41.033993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394206, -0.503552, 0.768789,
		-0.711246, -0.696926, -0.091783,
		0.582007, -0.510617, -0.632882,
		30.246859, 33.390018, 40.844128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074524, 33.154808, 41.684231>,  <29.839453, 33.747448, 41.287144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074524, 33.154808, 41.684231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288465, 32.828110, 41.597645>,  <30.416830, 32.632092, 41.545692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288465, 32.828110, 41.597645>,  <30.074524, 33.154808, 41.684231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288465, 32.828110, 41.597645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011299, 0.263083, -0.964707,
		0.844869, 0.513531, 0.149939,
		0.534854, -0.816746, -0.216468,
		30.448921, 32.583088, 41.532703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872866, 33.188553, 41.305492>,  <30.074524, 33.154808, 41.684231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872866, 33.188553, 41.305492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612516, 32.896206, 41.223328>,  <30.456306, 32.720798, 41.174026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612516, 32.896206, 41.223328>,  <30.872866, 33.188553, 41.305492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612516, 32.896206, 41.223328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108879, 0.357640, -0.927491,
		0.751340, -0.581311, -0.312354,
		-0.650871, -0.730870, -0.205416,
		30.417255, 32.676945, 41.161701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016506, 32.761024, 40.642815>,  <30.872866, 33.188553, 41.305492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016506, 32.761024, 40.642815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624372, 32.752338, 40.721275>,  <30.389091, 32.747128, 40.768353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624372, 32.752338, 40.721275>,  <31.016506, 32.761024, 40.642815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624372, 32.752338, 40.721275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180361, 0.501988, -0.845859,
		-0.080098, -0.864602, -0.496032,
		-0.980334, -0.021713, 0.196149,
		30.330273, 32.745823, 40.780121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718920, 32.572372, 40.004921>,  <31.016506, 32.761024, 40.642815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718920, 32.572372, 40.004921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461538, 32.764240, 40.243546>,  <30.307110, 32.879360, 40.386719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461538, 32.764240, 40.243546>,  <30.718920, 32.572372, 40.004921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461538, 32.764240, 40.243546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275548, 0.581942, -0.765125,
		-0.714171, -0.656704, -0.242280,
		-0.643454, 0.479671, 0.596560,
		30.268501, 32.908142, 40.422512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999063, 32.622890, 39.776546>,  <30.718920, 32.572372, 40.004921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999063, 32.622890, 39.776546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040319, 32.933342, 40.025379>,  <30.065073, 33.119614, 40.174679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040319, 32.933342, 40.025379>,  <29.999063, 32.622890, 39.776546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040319, 32.933342, 40.025379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408612, 0.603266, -0.684913,
		-0.906862, -0.183547, 0.379358,
		0.103140, 0.776132, 0.622078,
		30.071262, 33.166183, 40.212002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307419, 32.895550, 39.797520>,  <29.999063, 32.622890, 39.776546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307419, 32.895550, 39.797520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586582, 33.168190, 39.885471>,  <29.754080, 33.331772, 39.938244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586582, 33.168190, 39.885471>,  <29.307419, 32.895550, 39.797520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586582, 33.168190, 39.885471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544932, 0.704602, -0.454516,
		-0.464725, 0.197391, 0.863173,
		0.697910, 0.681596, 0.219881,
		29.795956, 33.372669, 39.951435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873369, 33.542744, 39.943466>,  <29.307419, 32.895550, 39.797520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873369, 33.542744, 39.943466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241930, 33.672821, 39.858360>,  <29.463066, 33.750866, 39.807297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241930, 33.672821, 39.858360>,  <28.873369, 33.542744, 39.943466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241930, 33.672821, 39.858360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387763, 0.805517, -0.448088,
		0.025667, 0.495369, 0.868303,
		0.921402, 0.325195, -0.212761,
		29.518351, 33.770378, 39.794533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981974, 34.194717, 40.102196>,  <28.873369, 33.542744, 39.943466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981974, 34.194717, 40.102196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259197, 34.151264, 39.817135>,  <29.425531, 34.125191, 39.646099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259197, 34.151264, 39.817135>,  <28.981974, 34.194717, 40.102196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259197, 34.151264, 39.817135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461643, 0.692400, -0.554498,
		0.553674, 0.713289, 0.429725,
		0.693059, -0.108632, -0.712649,
		29.467115, 34.118675, 39.603340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255373, 34.881317, 39.844009>,  <28.981974, 34.194717, 40.102196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255373, 34.881317, 39.844009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320681, 34.628258, 39.541195>,  <29.359865, 34.476421, 39.359505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320681, 34.628258, 39.541195>,  <29.255373, 34.881317, 39.844009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320681, 34.628258, 39.541195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319720, 0.691992, -0.647245,
		0.933339, 0.347714, -0.089289,
		0.163269, -0.632647, -0.757035,
		29.369661, 34.438465, 39.314083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799398, 35.251431, 39.470032>,  <29.255373, 34.881317, 39.844009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799398, 35.251431, 39.470032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876417, 34.924618, 39.252636>,  <29.922628, 34.728531, 39.122200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876417, 34.924618, 39.252636>,  <29.799398, 35.251431, 39.470032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876417, 34.924618, 39.252636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168455, 0.518108, -0.838562,
		0.966721, 0.253015, -0.037874,
		0.192547, -0.817036, -0.543487,
		29.934181, 34.679508, 39.089588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179441, 35.462502, 38.885410>,  <29.799398, 35.251431, 39.470032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179441, 35.462502, 38.885410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982414, 35.125500, 38.798180>,  <29.864197, 34.923298, 38.745842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982414, 35.125500, 38.798180>,  <30.179441, 35.462502, 38.885410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982414, 35.125500, 38.798180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306739, 0.402573, -0.862465,
		0.814424, -0.357933, -0.456725,
		-0.492570, -0.842508, -0.218073,
		29.834642, 34.872749, 38.732758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463423, 35.210648, 38.292591>,  <30.179441, 35.462502, 38.885410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463423, 35.210648, 38.292591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087692, 35.075768, 38.317776>,  <29.862253, 34.994839, 38.332886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087692, 35.075768, 38.317776>,  <30.463423, 35.210648, 38.292591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087692, 35.075768, 38.317776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208082, 0.414219, -0.886073,
		0.272701, -0.845413, -0.459251,
		-0.939327, -0.337195, 0.062957,
		29.805895, 34.974609, 38.336662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246120, 34.858814, 37.646652>,  <30.463423, 35.210648, 38.292591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246120, 34.858814, 37.646652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894094, 34.960102, 37.807331>,  <29.682878, 35.020874, 37.903740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894094, 34.960102, 37.807331>,  <30.246120, 34.858814, 37.646652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894094, 34.960102, 37.807331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370813, 0.161944, -0.914479,
		-0.296618, -0.953758, -0.048624,
		-0.880066, 0.253221, 0.401701,
		29.630075, 35.036068, 37.927841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756800, 34.644627, 37.139256>,  <30.246120, 34.858814, 37.646652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756800, 34.644627, 37.139256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495832, 34.857380, 37.355198>,  <29.339252, 34.985031, 37.484764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495832, 34.857380, 37.355198>,  <29.756800, 34.644627, 37.139256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495832, 34.857380, 37.355198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659763, -0.048096, -0.749933,
		-0.372914, -0.845449, 0.382297,
		-0.652417, 0.531886, 0.539860,
		29.300108, 35.016945, 37.517155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355045, 34.644985, 36.941570>,  <29.756800, 34.644627, 37.139256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355045, 34.644985, 36.941570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389009, 34.768291, 36.562569>,  <30.409388, 34.842274, 36.335167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389009, 34.768291, 36.562569>,  <30.355045, 34.644985, 36.941570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389009, 34.768291, 36.562569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990230, 0.079459, 0.114590,
		0.110612, -0.947976, -0.298508,
		0.084909, 0.308267, -0.947503,
		30.414482, 34.860771, 36.278316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959044, 34.313736, 36.661602>,  <30.355045, 34.644985, 36.941570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959044, 34.313736, 36.661602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866095, 34.661613, 36.487411>,  <30.810326, 34.870338, 36.382896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866095, 34.661613, 36.487411>,  <30.959044, 34.313736, 36.661602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866095, 34.661613, 36.487411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945823, 0.306443, 0.107296,
		0.226764, -0.386954, -0.893781,
		-0.232375, 0.869689, -0.435480,
		30.796383, 34.922520, 36.356766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468426, 34.424313, 36.115143>,  <30.959044, 34.313736, 36.661602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468426, 34.424313, 36.115143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338154, 34.772583, 36.262573>,  <31.259991, 34.981544, 36.351032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338154, 34.772583, 36.262573>,  <31.468426, 34.424313, 36.115143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338154, 34.772583, 36.262573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939423, 0.253939, 0.230217,
		0.106847, 0.421230, -0.900638,
		-0.325682, 0.870678, 0.368580,
		31.240450, 35.033787, 36.373146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870499, 34.946735, 35.869404>,  <31.468426, 34.424313, 36.115143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870499, 34.946735, 35.869404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713253, 35.083733, 36.210732>,  <31.618906, 35.165932, 36.415527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713253, 35.083733, 36.210732>,  <31.870499, 34.946735, 35.869404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713253, 35.083733, 36.210732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816996, 0.555904, 0.153260,
		-0.421875, 0.757409, -0.498350,
		-0.393115, 0.342493, 0.853322,
		31.595318, 35.186481, 36.466728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117565, 35.643040, 35.823635>,  <31.870499, 34.946735, 35.869404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117565, 35.643040, 35.823635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040325, 35.511639, 36.193459>,  <31.993982, 35.432800, 36.415352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040325, 35.511639, 36.193459>,  <32.117565, 35.643040, 35.823635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040325, 35.511639, 36.193459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840829, 0.430243, 0.328479,
		-0.505688, 0.840821, 0.193132,
		-0.193098, -0.328498, 0.924555,
		31.982395, 35.413090, 36.470825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090458, 36.148514, 36.252666>,  <32.117565, 35.643040, 35.823635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090458, 36.148514, 36.252666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220566, 35.804878, 36.410736>,  <32.298630, 35.598698, 36.505577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220566, 35.804878, 36.410736>,  <32.090458, 36.148514, 36.252666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220566, 35.804878, 36.410736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866802, 0.437909, 0.238516,
		-0.377956, 0.264953, 0.887102,
		0.325274, -0.859090, 0.395172,
		32.318150, 35.547150, 36.529289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292465, 36.199059, 36.986263>,  <32.090458, 36.148514, 36.252666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292465, 36.199059, 36.986263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511932, 35.934368, 36.781876>,  <32.643612, 35.775555, 36.659245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511932, 35.934368, 36.781876>,  <32.292465, 36.199059, 36.986263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511932, 35.934368, 36.781876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836008, 0.439774, 0.328160,
		0.007560, -0.607225, 0.794494,
		0.548665, -0.661723, -0.510970,
		32.676533, 35.735851, 36.628586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653809, 35.786182, 37.395992>,  <32.292465, 36.199059, 36.986263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653809, 35.786182, 37.395992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864830, 35.857185, 37.063683>,  <32.991444, 35.899788, 36.864296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864830, 35.857185, 37.063683>,  <32.653809, 35.786182, 37.395992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864830, 35.857185, 37.063683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742692, 0.378400, 0.552470,
		0.412429, -0.908464, 0.067794,
		0.527552, 0.177505, -0.830772,
		33.023094, 35.910435, 36.814449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235825, 35.262810, 37.669796>,  <32.653809, 35.786182, 37.395992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235825, 35.262810, 37.669796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153866, 34.871735, 37.688305>,  <33.104691, 34.637089, 37.699409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153866, 34.871735, 37.688305>,  <33.235825, 35.262810, 37.669796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153866, 34.871735, 37.688305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443015, 0.050478, -0.895092,
		0.872787, -0.203898, -0.443474,
		-0.204893, -0.977690, 0.046273,
		33.092400, 34.578426, 37.702187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564335, 34.853188, 37.138020>,  <33.235825, 35.262810, 37.669796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564335, 34.853188, 37.138020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220844, 34.671997, 37.233860>,  <33.014751, 34.563282, 37.291363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220844, 34.671997, 37.233860>,  <33.564335, 34.853188, 37.138020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220844, 34.671997, 37.233860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287838, 0.039540, -0.956863,
		0.423963, -0.890645, -0.164337,
		-0.858723, -0.452977, 0.239598,
		32.963226, 34.536102, 37.305740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539280, 34.239662, 36.874092>,  <33.564335, 34.853188, 37.138020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539280, 34.239662, 36.874092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178913, 34.412521, 36.890079>,  <32.962692, 34.516235, 36.899673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178913, 34.412521, 36.890079>,  <33.539280, 34.239662, 36.874092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178913, 34.412521, 36.890079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134633, -0.190738, -0.972365,
		-0.412579, -0.881402, 0.230020,
		-0.900917, 0.432146, 0.039972,
		32.908638, 34.542164, 36.902069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632599, 34.877052, 36.342636>,  <33.539280, 34.239662, 36.874092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632599, 34.877052, 36.342636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501556, 35.099628, 36.037205>,  <33.422932, 35.233173, 35.853947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501556, 35.099628, 36.037205>,  <33.632599, 34.877052, 36.342636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501556, 35.099628, 36.037205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684815, 0.696635, 0.213840,
		0.650922, -0.452851, -0.609284,
		-0.327611, 0.556440, -0.763574,
		33.403275, 35.266560, 35.808132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188145, 35.207840, 36.149433>,  <33.632599, 34.877052, 36.342636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188145, 35.207840, 36.149433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903194, 35.447582, 36.003395>,  <33.732224, 35.591427, 35.915771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903194, 35.447582, 36.003395>,  <34.188145, 35.207840, 36.149433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903194, 35.447582, 36.003395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604619, 0.788269, 0.114315,
		0.356309, -0.139308, -0.923925,
		-0.712377, 0.599354, -0.365095,
		33.689480, 35.627388, 35.893867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388077, 34.756542, 35.527096>,  <34.188145, 35.207840, 36.149433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388077, 34.756542, 35.527096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701584, 34.519852, 35.451653>,  <34.889687, 34.377838, 35.406387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701584, 34.519852, 35.451653>,  <34.388077, 34.756542, 35.527096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701584, 34.519852, 35.451653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102086, 0.422305, -0.900687,
		0.612612, 0.686671, 0.391394,
		0.783764, -0.591727, -0.188610,
		34.936714, 34.342335, 35.395069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155266, 35.109577, 35.412102>,  <34.388077, 34.756542, 35.527096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155266, 35.109577, 35.412102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127922, 34.781364, 35.185101>,  <35.111515, 34.584438, 35.048901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127922, 34.781364, 35.185101>,  <35.155266, 35.109577, 35.412102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127922, 34.781364, 35.185101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050585, 0.565250, -0.823367,
		0.996378, -0.084992, 0.002867,
		-0.068359, -0.820530, -0.567502,
		35.107414, 34.535206, 35.014851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647930, 35.125183, 34.899864>,  <35.155266, 35.109577, 35.412102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647930, 35.125183, 34.899864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384712, 34.870380, 34.739265>,  <35.226784, 34.717499, 34.642906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384712, 34.870380, 34.739265>,  <35.647930, 35.125183, 34.899864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384712, 34.870380, 34.739265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028011, 0.512129, -0.858452,
		0.752460, -0.576144, -0.319159,
		-0.658042, -0.637011, -0.401495,
		35.187298, 34.679276, 34.618816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906326, 34.802086, 34.222256>,  <35.647930, 35.125183, 34.899864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906326, 34.802086, 34.222256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509445, 34.849525, 34.237614>,  <35.271317, 34.877991, 34.246830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509445, 34.849525, 34.237614>,  <35.906326, 34.802086, 34.222256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509445, 34.849525, 34.237614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017081, 0.434418, -0.900550,
		-0.123487, -0.892869, -0.433055,
		-0.992199, 0.118603, 0.038394,
		35.211784, 34.885105, 34.249130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529999, 34.512814, 33.608517>,  <35.906326, 34.802086, 34.222256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529999, 34.512814, 33.608517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287918, 34.805634, 33.733627>,  <35.142670, 34.981327, 33.808693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287918, 34.805634, 33.733627>,  <35.529999, 34.512814, 33.608517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287918, 34.805634, 33.733627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051524, 0.356050, -0.933045,
		-0.794403, -0.580796, -0.177764,
		-0.605202, 0.732054, 0.312772,
		35.106358, 35.025249, 33.827457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784752, 34.546616, 33.387207>,  <35.529999, 34.512814, 33.608517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784752, 34.546616, 33.387207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872089, 34.931519, 33.452175>,  <34.924492, 35.162460, 33.491158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872089, 34.931519, 33.452175>,  <34.784752, 34.546616, 33.387207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872089, 34.931519, 33.452175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184299, 0.204102, -0.961445,
		-0.958311, 0.179990, 0.221908,
		0.218343, 0.962261, 0.162421,
		34.937592, 35.220196, 33.500900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217716, 35.053589, 33.159149>,  <34.784752, 34.546616, 33.387207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217716, 35.053589, 33.159149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571510, 35.239361, 33.141281>,  <34.783787, 35.350822, 33.130562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571510, 35.239361, 33.141281>,  <34.217716, 35.053589, 33.159149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571510, 35.239361, 33.141281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222480, 0.335676, -0.915327,
		-0.410108, 0.819530, 0.400226,
		0.884485, 0.464426, -0.044666,
		34.836857, 35.378689, 33.127880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061874, 35.641472, 32.744942>,  <34.217716, 35.053589, 33.159149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061874, 35.641472, 32.744942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459579, 35.602978, 32.763599>,  <34.698204, 35.579880, 32.774792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459579, 35.602978, 32.763599>,  <34.061874, 35.641472, 32.744942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459579, 35.602978, 32.763599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072035, 0.280318, -0.957200,
		0.079043, 0.955071, 0.285643,
		0.994265, -0.096236, 0.046641,
		34.757858, 35.574108, 32.777592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327065, 36.235298, 32.313957>,  <34.061874, 35.641472, 32.744942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327065, 36.235298, 32.313957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626656, 35.975033, 32.364021>,  <34.806412, 35.818874, 32.394062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626656, 35.975033, 32.364021>,  <34.327065, 36.235298, 32.313957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626656, 35.975033, 32.364021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311718, 0.179324, -0.933099,
		0.584691, 0.737886, 0.337135,
		0.748978, -0.650666, 0.125163,
		34.851349, 35.779835, 32.401569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865791, 36.593750, 32.067627>,  <34.327065, 36.235298, 32.313957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865791, 36.593750, 32.067627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979084, 36.210152, 32.063580>,  <35.047062, 35.979992, 32.061150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979084, 36.210152, 32.063580>,  <34.865791, 36.593750, 32.067627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979084, 36.210152, 32.063580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245892, 0.082816, -0.965753,
		0.926993, 0.271046, 0.259266,
		0.283235, -0.958997, -0.010122,
		35.064053, 35.922451, 32.060543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524025, 36.615536, 31.833038>,  <34.865791, 36.593750, 32.067627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524025, 36.615536, 31.833038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394695, 36.244732, 31.757025>,  <35.317097, 36.022247, 31.711416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394695, 36.244732, 31.757025>,  <35.524025, 36.615536, 31.833038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394695, 36.244732, 31.757025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200632, 0.129101, -0.971123,
		0.924776, -0.352110, 0.144248,
		-0.323320, -0.927012, -0.190034,
		35.297699, 35.966629, 31.700014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999390, 36.476357, 31.416014>,  <35.524025, 36.615536, 31.833038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999390, 36.476357, 31.416014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694763, 36.222153, 31.365191>,  <35.511986, 36.069630, 31.334696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694763, 36.222153, 31.365191>,  <35.999390, 36.476357, 31.416014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694763, 36.222153, 31.365191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025498, 0.166518, -0.985709,
		0.647587, -0.753921, -0.110610,
		-0.761565, -0.635512, -0.127059,
		35.466293, 36.031498, 31.327072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252548, 35.982441, 30.913225>,  <35.999390, 36.476357, 31.416014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252548, 35.982441, 30.913225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857025, 35.938751, 30.872580>,  <35.619709, 35.912537, 30.848192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857025, 35.938751, 30.872580>,  <36.252548, 35.982441, 30.913225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857025, 35.938751, 30.872580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100564, 0.015101, -0.994816,
		0.110197, -0.993902, -0.003948,
		-0.988809, -0.109228, -0.101615,
		35.560383, 35.905983, 30.842094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170956, 35.328548, 30.507235>,  <36.252548, 35.982441, 30.913225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170956, 35.328548, 30.507235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814419, 35.502464, 30.455902>,  <35.600498, 35.606812, 30.425102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814419, 35.502464, 30.455902>,  <36.170956, 35.328548, 30.507235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814419, 35.502464, 30.455902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146016, 0.007353, -0.989255,
		-0.429172, -0.900503, -0.070040,
		-0.891342, 0.434788, -0.128333,
		35.547016, 35.632900, 30.417402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905777, 35.008579, 30.051727>,  <36.170956, 35.328548, 30.507235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905777, 35.008579, 30.051727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718552, 35.362038, 30.048109>,  <35.606216, 35.574112, 30.045938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718552, 35.362038, 30.048109>,  <35.905777, 35.008579, 30.051727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718552, 35.362038, 30.048109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235597, 0.114918, -0.965033,
		-0.851709, -0.453829, -0.261974,
		-0.468065, 0.883647, -0.009044,
		35.578133, 35.627132, 30.045395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480934, 34.955940, 29.485874>,  <35.905777, 35.008579, 30.051727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480934, 34.955940, 29.485874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529083, 35.347027, 29.554661>,  <35.557972, 35.581680, 29.595932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529083, 35.347027, 29.554661>,  <35.480934, 34.955940, 29.485874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529083, 35.347027, 29.554661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154445, 0.152671, -0.976134,
		-0.980641, 0.144064, -0.132626,
		0.120377, 0.977720, 0.171965,
		35.565197, 35.640343, 29.606251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171352, 35.240154, 28.958792>,  <35.480934, 34.955940, 29.485874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171352, 35.240154, 28.958792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414970, 35.522385, 29.103695>,  <35.561142, 35.691723, 29.190638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414970, 35.522385, 29.103695>,  <35.171352, 35.240154, 28.958792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414970, 35.522385, 29.103695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237713, 0.273362, -0.932076,
		-0.756676, 0.653788, -0.001235,
		0.609043, 0.705574, 0.362260,
		35.597683, 35.734058, 29.212374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084717, 35.807983, 28.522249>,  <35.171352, 35.240154, 28.958792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084717, 35.807983, 28.522249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442753, 35.845039, 28.696709>,  <35.657574, 35.867275, 28.801384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442753, 35.845039, 28.696709>,  <35.084717, 35.807983, 28.522249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442753, 35.845039, 28.696709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335889, 0.503200, -0.796221,
		-0.293235, 0.859190, 0.419293,
		0.895093, 0.092644, 0.436148,
		35.711281, 35.872833, 28.827553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249439, 36.493744, 28.410311>,  <35.084717, 35.807983, 28.522249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249439, 36.493744, 28.410311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606846, 36.329895, 28.483883>,  <35.821289, 36.231586, 28.528027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606846, 36.329895, 28.483883>,  <35.249439, 36.493744, 28.410311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606846, 36.329895, 28.483883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382737, 0.480580, -0.789021,
		0.234808, 0.775404, 0.586186,
		0.893520, -0.409624, 0.183932,
		35.874901, 36.207008, 28.539062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692410, 37.029095, 28.548029>,  <35.249439, 36.493744, 28.410311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692410, 37.029095, 28.548029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897705, 36.714928, 28.409636>,  <36.020882, 36.526428, 28.326599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897705, 36.714928, 28.409636>,  <35.692410, 37.029095, 28.548029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897705, 36.714928, 28.409636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216990, 0.508784, -0.833100,
		0.830362, 0.352505, 0.431555,
		0.513240, -0.785417, -0.345984,
		36.051678, 36.479301, 28.305840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153316, 37.255138, 28.201628>,  <35.692410, 37.029095, 28.548029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153316, 37.255138, 28.201628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170319, 36.889729, 28.039801>,  <36.180519, 36.670483, 27.942705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170319, 36.889729, 28.039801>,  <36.153316, 37.255138, 28.201628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170319, 36.889729, 28.039801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167157, 0.405727, -0.898579,
		0.985014, -0.029436, 0.169945,
		0.042501, -0.913520, -0.404567,
		36.183067, 36.615673, 27.918430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591866, 37.319107, 27.785782>,  <36.153316, 37.255138, 28.201628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591866, 37.319107, 27.785782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443138, 36.979427, 27.635792>,  <36.353901, 36.775620, 27.545797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443138, 36.979427, 27.635792>,  <36.591866, 37.319107, 27.785782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443138, 36.979427, 27.635792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266783, 0.289147, -0.919359,
		0.889146, -0.441870, 0.119043,
		-0.371816, -0.849203, -0.374977,
		36.331593, 36.724667, 27.523298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104725, 37.042538, 27.392128>,  <36.591866, 37.319107, 27.785782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104725, 37.042538, 27.392128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772839, 36.874142, 27.245523>,  <36.573708, 36.773102, 27.157560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772839, 36.874142, 27.245523>,  <37.104725, 37.042538, 27.392128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772839, 36.874142, 27.245523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247525, 0.311022, -0.917604,
		0.500300, -0.852074, -0.153854,
		-0.829718, -0.420994, -0.366514,
		36.523922, 36.747845, 27.135569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314816, 36.674900, 26.772852>,  <37.104725, 37.042538, 27.392128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314816, 36.674900, 26.772852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921589, 36.742992, 26.745728>,  <36.685654, 36.783848, 26.729452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921589, 36.742992, 26.745728>,  <37.314816, 36.674900, 26.772852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921589, 36.742992, 26.745728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129422, 0.383076, -0.914605,
		-0.129714, -0.907896, -0.398622,
		-0.983069, 0.170228, -0.067812,
		36.626667, 36.794060, 26.725384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332207, 36.675888, 26.101217>,  <37.314816, 36.674900, 26.772852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332207, 36.675888, 26.101217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970966, 36.817379, 26.198608>,  <36.754223, 36.902275, 26.257042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970966, 36.817379, 26.198608>,  <37.332207, 36.675888, 26.101217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970966, 36.817379, 26.198608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046478, 0.483137, -0.874310,
		-0.426902, -0.800908, -0.419882,
		-0.903103, 0.353730, 0.243477,
		36.700035, 36.923496, 26.271652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894047, 36.568989, 25.497221>,  <37.332207, 36.675888, 26.101217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894047, 36.568989, 25.497221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731094, 36.858437, 25.720079>,  <36.633324, 37.032104, 25.853794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731094, 36.858437, 25.720079>,  <36.894047, 36.568989, 25.497221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731094, 36.858437, 25.720079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030158, 0.620393, -0.783711,
		-0.912759, -0.302468, -0.274560,
		-0.407383, 0.723620, 0.557147,
		36.608879, 37.075523, 25.887224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383148, 36.742146, 25.041143>,  <36.894047, 36.568989, 25.497221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383148, 36.742146, 25.041143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426197, 37.043480, 25.300652>,  <36.452026, 37.224281, 25.456356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426197, 37.043480, 25.300652>,  <36.383148, 36.742146, 25.041143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426197, 37.043480, 25.300652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014945, 0.653714, -0.756594,
		-0.994079, 0.071733, 0.081615,
		0.107626, 0.753334, 0.648772,
		36.458485, 37.269482, 25.495283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969849, 37.261005, 24.685005>,  <36.383148, 36.742146, 25.041143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969849, 37.261005, 24.685005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169804, 37.461910, 24.967237>,  <36.289776, 37.582455, 25.136578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169804, 37.461910, 24.967237>,  <35.969849, 37.261005, 24.685005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169804, 37.461910, 24.967237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067829, 0.789467, -0.610033,
		-0.863430, 0.352807, 0.360578,
		0.499889, 0.502263, 0.705580,
		36.319771, 37.612591, 25.178911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535931, 37.890636, 24.930618>,  <35.969849, 37.261005, 24.685005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535931, 37.890636, 24.930618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921692, 37.955853, 25.013895>,  <36.153149, 37.994984, 25.063860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921692, 37.955853, 25.013895>,  <35.535931, 37.890636, 24.930618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921692, 37.955853, 25.013895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031117, 0.711861, -0.701630,
		-0.262597, 0.683133, 0.681448,
		0.964404, 0.163042, 0.208190,
		36.211014, 38.004765, 25.076351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634441, 38.590813, 24.968214>,  <35.535931, 37.890636, 24.930618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634441, 38.590813, 24.968214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001976, 38.443176, 24.912346>,  <36.222496, 38.354595, 24.878824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001976, 38.443176, 24.912346>,  <35.634441, 38.590813, 24.968214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001976, 38.443176, 24.912346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196385, 0.734647, -0.649405,
		0.342296, 0.569269, 0.747506,
		0.918840, -0.369087, -0.139671,
		36.277626, 38.332451, 24.870445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117817, 39.144485, 24.987768>,  <35.634441, 38.590813, 24.968214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117817, 39.144485, 24.987768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314575, 38.852318, 24.798231>,  <36.432629, 38.677017, 24.684509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314575, 38.852318, 24.798231>,  <36.117817, 39.144485, 24.987768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314575, 38.852318, 24.798231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418286, 0.675571, -0.607158,
		0.763594, 0.100456, 0.637835,
		0.491895, -0.730419, -0.473842,
		36.462143, 38.633190, 24.656078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781364, 39.380436, 24.938055>,  <36.117817, 39.144485, 24.987768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781364, 39.380436, 24.938055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769650, 39.079140, 24.675219>,  <36.762619, 38.898361, 24.517517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769650, 39.079140, 24.675219>,  <36.781364, 39.380436, 24.938055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769650, 39.079140, 24.675219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747992, 0.419551, -0.514280,
		0.663061, -0.506561, 0.551132,
		-0.029286, -0.753241, -0.657092,
		36.760864, 38.853168, 24.478090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544624, 39.152218, 24.755711>,  <36.781364, 39.380436, 24.938055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544624, 39.152218, 24.755711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281548, 39.079258, 24.463364>,  <37.123699, 39.035480, 24.287954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281548, 39.079258, 24.463364>,  <37.544624, 39.152218, 24.755711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281548, 39.079258, 24.463364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545393, 0.553950, -0.629036,
		0.519598, -0.812324, -0.264853,
		-0.657696, -0.182397, -0.730867,
		37.084240, 39.024536, 24.244102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923958, 38.996910, 24.143332>,  <37.544624, 39.152218, 24.755711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923958, 38.996910, 24.143332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553848, 39.074329, 24.012848>,  <37.331783, 39.120781, 23.934557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553848, 39.074329, 24.012848>,  <37.923958, 38.996910, 24.143332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553848, 39.074329, 24.012848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379304, 0.475989, -0.793450,
		0.001701, -0.857889, -0.513833,
		-0.925271, 0.193549, -0.326210,
		37.276268, 39.132393, 23.914986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868797, 38.689751, 23.485237>,  <37.923958, 38.996910, 24.143332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868797, 38.689751, 23.485237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588276, 38.974689, 23.496069>,  <37.419964, 39.145653, 23.502569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588276, 38.974689, 23.496069>,  <37.868797, 38.689751, 23.485237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588276, 38.974689, 23.496069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257924, 0.288973, -0.921938,
		-0.664567, -0.639573, -0.386390,
		-0.701303, 0.712349, 0.027081,
		37.377884, 39.188393, 23.504192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464260, 38.754669, 22.769321>,  <37.868797, 38.689751, 23.485237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464260, 38.754669, 22.769321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386459, 39.097023, 22.961000>,  <37.339779, 39.302437, 23.076008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386459, 39.097023, 22.961000>,  <37.464260, 38.754669, 22.769321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386459, 39.097023, 22.961000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292280, 0.516906, -0.804600,
		-0.936344, -0.016438, -0.350699,
		-0.194505, 0.855884, 0.479197,
		37.328110, 39.353790, 23.104759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088879, 39.114216, 22.331320>,  <37.464260, 38.754669, 22.769321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088879, 39.114216, 22.331320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224701, 39.405041, 22.570009>,  <37.306194, 39.579536, 22.713223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224701, 39.405041, 22.570009>,  <37.088879, 39.114216, 22.331320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224701, 39.405041, 22.570009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185521, 0.570185, -0.800295,
		-0.922108, 0.382450, 0.058725,
		0.339557, 0.727064, 0.596724,
		37.326569, 39.623161, 22.749027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803623, 39.736649, 22.072672>,  <37.088879, 39.114216, 22.331320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803623, 39.736649, 22.072672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089432, 39.889847, 22.306858>,  <37.260918, 39.981766, 22.447369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089432, 39.889847, 22.306858>,  <36.803623, 39.736649, 22.072672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089432, 39.889847, 22.306858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325868, 0.558325, -0.762944,
		-0.619083, 0.735927, 0.274131,
		0.714525, 0.382995, 0.585464,
		37.303791, 40.004745, 22.482498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724804, 40.480133, 22.008551>,  <36.803623, 39.736649, 22.072672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724804, 40.480133, 22.008551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098976, 40.428154, 22.140057>,  <37.323479, 40.396965, 22.218960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098976, 40.428154, 22.140057>,  <36.724804, 40.480133, 22.008551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098976, 40.428154, 22.140057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346372, 0.522891, -0.778852,
		-0.070696, 0.842436, 0.534138,
		0.935429, -0.129949, 0.328763,
		37.379604, 40.389168, 22.238686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062004, 41.138664, 21.851778>,  <36.724804, 40.480133, 22.008551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062004, 41.138664, 21.851778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379776, 40.905342, 21.919474>,  <37.570438, 40.765350, 21.960091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379776, 40.905342, 21.919474>,  <37.062004, 41.138664, 21.851778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379776, 40.905342, 21.919474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553982, 0.581682, -0.595609,
		0.248976, 0.566924, 0.785244,
		0.794427, -0.583303, 0.169241,
		37.618103, 40.730350, 21.970245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551483, 41.592953, 22.123970>,  <37.062004, 41.138664, 21.851778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551483, 41.592953, 22.123970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772888, 41.295998, 21.972984>,  <37.905731, 41.117825, 21.882393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772888, 41.295998, 21.972984>,  <37.551483, 41.592953, 22.123970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772888, 41.295998, 21.972984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503847, 0.659372, -0.558003,
		0.663144, 0.118680, 0.739023,
		0.553515, -0.742391, -0.377462,
		37.938942, 41.073280, 21.859745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210487, 41.696388, 22.300417>,  <37.551483, 41.592953, 22.123970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210487, 41.696388, 22.300417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232788, 41.478146, 21.965944>,  <38.246166, 41.347198, 21.765261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232788, 41.478146, 21.965944>,  <38.210487, 41.696388, 22.300417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232788, 41.478146, 21.965944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562283, 0.709212, -0.425273,
		0.825064, -0.446462, 0.346325,
		0.055749, -0.545610, -0.836183,
		38.249512, 41.314465, 21.715090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748344, 42.009750, 21.869753>,  <38.210487, 41.696388, 22.300417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748344, 42.009750, 21.869753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608997, 41.751606, 21.597828>,  <38.525387, 41.596718, 21.434673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608997, 41.751606, 21.597828>,  <38.748344, 42.009750, 21.869753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608997, 41.751606, 21.597828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293019, 0.613921, -0.732967,
		0.890381, -0.454542, -0.024767,
		-0.348369, -0.645363, -0.679813,
		38.504486, 41.557999, 21.393885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267986, 41.703964, 21.508263>,  <38.748344, 42.009750, 21.869753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267986, 41.703964, 21.508263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947876, 41.699089, 21.268459>,  <38.755810, 41.696163, 21.124578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947876, 41.699089, 21.268459>,  <39.267986, 41.703964, 21.508263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947876, 41.699089, 21.268459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487839, 0.568123, -0.662759,
		0.348670, -0.822853, -0.448711,
		-0.800277, -0.012185, -0.599507,
		38.707794, 41.695435, 21.088608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537041, 41.587769, 20.836273>,  <39.267986, 41.703964, 21.508263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537041, 41.587769, 20.836273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170952, 41.743256, 20.793795>,  <38.951298, 41.836548, 20.768309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170952, 41.743256, 20.793795>,  <39.537041, 41.587769, 20.836273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170952, 41.743256, 20.793795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364347, 0.685695, -0.630138,
		-0.172128, -0.615405, -0.769187,
		-0.915218, 0.388715, -0.106194,
		38.896385, 41.859871, 20.761936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533783, 41.813278, 20.138893>,  <39.537041, 41.587769, 20.836273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533783, 41.813278, 20.138893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215660, 41.988804, 20.306196>,  <39.024788, 42.094120, 20.406578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215660, 41.988804, 20.306196>,  <39.533783, 41.813278, 20.138893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215660, 41.988804, 20.306196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240133, 0.861553, -0.447283,
		-0.556623, -0.255288, -0.790569,
		-0.795303, 0.438810, 0.418257,
		38.977070, 42.120445, 20.431673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273182, 42.159943, 19.568502>,  <39.533783, 41.813278, 20.138893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273182, 42.159943, 19.568502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152416, 42.332302, 19.908661>,  <39.079956, 42.435719, 20.112757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152416, 42.332302, 19.908661>,  <39.273182, 42.159943, 19.568502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152416, 42.332302, 19.908661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203842, 0.900572, -0.383951,
		-0.931288, 0.057428, -0.359728,
		-0.301911, 0.430897, 0.850399,
		39.061844, 42.461571, 20.163780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761799, 42.512550, 19.324524>,  <39.273182, 42.159943, 19.568502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761799, 42.512550, 19.324524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880917, 42.647346, 19.681793>,  <38.952389, 42.728226, 19.896154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880917, 42.647346, 19.681793>,  <38.761799, 42.512550, 19.324524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880917, 42.647346, 19.681793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124622, 0.941338, -0.313612,
		-0.946460, -0.017916, 0.322324,
		0.297797, 0.336989, 0.893171,
		38.970257, 42.748444, 19.949745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451267, 43.221493, 19.380251>,  <38.761799, 42.512550, 19.324524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451267, 43.221493, 19.380251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752045, 43.215027, 19.643864>,  <38.932510, 43.211147, 19.802031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752045, 43.215027, 19.643864>,  <38.451267, 43.221493, 19.380251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752045, 43.215027, 19.643864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232584, 0.941918, -0.242271,
		-0.616837, 0.335454, 0.712027,
		0.751941, -0.016165, 0.659032,
		38.977627, 43.210178, 19.841574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329357, 43.723015, 19.876818>,  <38.451267, 43.221493, 19.380251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329357, 43.723015, 19.876818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714062, 43.646137, 19.798756>,  <38.944885, 43.600010, 19.751919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714062, 43.646137, 19.798756>,  <38.329357, 43.723015, 19.876818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714062, 43.646137, 19.798756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117445, 0.933030, -0.340089,
		0.247448, 0.304163, 0.919921,
		0.961757, -0.192195, -0.195154,
		39.002590, 43.588478, 19.740210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807060, 43.697716, 20.530773>,  <38.329357, 43.723015, 19.876818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807060, 43.697716, 20.530773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681942, 43.798664, 20.897045>,  <37.606873, 43.859234, 21.116808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681942, 43.798664, 20.897045>,  <37.807060, 43.697716, 20.530773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681942, 43.798664, 20.897045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242531, 0.910876, -0.333892,
		-0.918334, -0.326521, -0.223711,
		-0.312795, 0.252368, 0.915680,
		37.588104, 43.874374, 21.171749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096897, 43.870026, 20.601444>,  <37.807060, 43.697716, 20.530773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096897, 43.870026, 20.601444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282871, 44.087845, 20.880672>,  <37.394455, 44.218536, 21.048210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282871, 44.087845, 20.880672>,  <37.096897, 43.870026, 20.601444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282871, 44.087845, 20.880672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443680, 0.825627, -0.348552,
		-0.766151, -0.147667, 0.625466,
		0.464931, 0.544550, 0.698071,
		37.422352, 44.251209, 21.090094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649483, 44.403702, 20.810026>,  <37.096897, 43.870026, 20.601444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649483, 44.403702, 20.810026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016083, 44.527927, 20.910881>,  <37.236042, 44.602463, 20.971394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016083, 44.527927, 20.910881>,  <36.649483, 44.403702, 20.810026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016083, 44.527927, 20.910881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234015, 0.927439, -0.291709,
		-0.324436, 0.208348, 0.922677,
		0.916503, 0.310561, 0.252138,
		37.291035, 44.621094, 20.986523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757221, 45.179203, 21.233047>,  <36.649483, 44.403702, 20.810026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757221, 45.179203, 21.233047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076057, 45.148029, 20.993525>,  <37.267361, 45.129326, 20.849810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076057, 45.148029, 20.993525>,  <36.757221, 45.179203, 21.233047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076057, 45.148029, 20.993525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014496, 0.993821, -0.110044,
		0.603684, 0.079035, 0.793296,
		0.797092, -0.077932, -0.598808,
		37.315186, 45.124649, 20.813883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269009, 45.534119, 21.638664>,  <36.757221, 45.179203, 21.233047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269009, 45.534119, 21.638664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337936, 45.555000, 21.245201>,  <37.379295, 45.567528, 21.009123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337936, 45.555000, 21.245201>,  <37.269009, 45.534119, 21.638664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337936, 45.555000, 21.245201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154202, 0.984854, 0.079279,
		0.972896, -0.165344, 0.161664,
		0.172323, 0.052201, -0.983656,
		37.389633, 45.570660, 20.950104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057129, 45.806511, 21.504646>,  <37.269009, 45.534119, 21.638664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057129, 45.806511, 21.504646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749329, 45.898392, 21.266281>,  <37.564648, 45.953522, 21.123262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749329, 45.898392, 21.266281>,  <38.057129, 45.806511, 21.504646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749329, 45.898392, 21.266281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025206, 0.943276, 0.331052,
		0.638154, 0.239723, -0.731638,
		-0.769497, 0.229703, -0.595912,
		37.518478, 45.967304, 21.087507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441715, 45.177807, 21.242830>,  <38.057129, 45.806511, 21.504646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441715, 45.177807, 21.242830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092453, 44.997303, 21.169121>,  <37.882896, 44.889000, 21.124895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092453, 44.997303, 21.169121>,  <38.441715, 45.177807, 21.242830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092453, 44.997303, 21.169121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312055, -0.807934, 0.499865,
		-0.374451, 0.378958, 0.846273,
		-0.873160, -0.451259, -0.184276,
		37.830505, 44.861927, 21.113838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107910, 44.997498, 21.857176>,  <38.441715, 45.177807, 21.242830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107910, 44.997498, 21.857176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953690, 44.737072, 21.595652>,  <37.861156, 44.580818, 21.438736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953690, 44.737072, 21.595652>,  <38.107910, 44.997498, 21.857176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953690, 44.737072, 21.595652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214568, -0.752433, 0.622741,
		-0.897393, 0.099808, 0.429795,
		-0.385547, -0.651063, -0.653812,
		37.838024, 44.541752, 21.399508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520508, 44.614468, 22.197758>,  <38.107910, 44.997498, 21.857176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520508, 44.614468, 22.197758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756618, 44.439671, 21.926285>,  <37.898285, 44.334793, 21.763401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756618, 44.439671, 21.926285>,  <37.520508, 44.614468, 22.197758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756618, 44.439671, 21.926285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313731, -0.650478, 0.691702,
		-0.743736, -0.621220, -0.246865,
		0.590280, -0.436994, -0.678680,
		37.933701, 44.308571, 21.722681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348778, 43.899635, 22.059511>,  <37.520508, 44.614468, 22.197758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348778, 43.899635, 22.059511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738911, 43.958309, 21.993521>,  <37.972988, 43.993515, 21.953926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738911, 43.958309, 21.993521>,  <37.348778, 43.899635, 22.059511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738911, 43.958309, 21.993521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220198, -0.593230, 0.774333,
		0.015717, -0.791556, -0.610895,
		0.975329, 0.146688, -0.164975,
		38.031509, 44.002316, 21.944029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556755, 43.369713, 22.421900>,  <37.348778, 43.899635, 22.059511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556755, 43.369713, 22.421900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901047, 43.571747, 22.396519>,  <38.107624, 43.692966, 22.381290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901047, 43.571747, 22.396519>,  <37.556755, 43.369713, 22.421900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901047, 43.571747, 22.396519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338476, -0.474743, 0.812437,
		0.380229, -0.720767, -0.579586,
		0.860732, 0.505088, -0.063451,
		38.159267, 43.723274, 22.377483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147739, 42.929626, 22.422338>,  <37.556755, 43.369713, 22.421900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147739, 42.929626, 22.422338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285069, 43.280693, 22.556107>,  <38.367466, 43.491333, 22.636368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285069, 43.280693, 22.556107>,  <38.147739, 42.929626, 22.422338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285069, 43.280693, 22.556107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402335, -0.459172, 0.792015,
		0.848679, -0.137367, -0.510758,
		0.343322, 0.877663, 0.334422,
		38.388065, 43.543991, 22.656433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865200, 42.771980, 22.646532>,  <38.147739, 42.929626, 22.422338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865200, 42.771980, 22.646532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764610, 43.123196, 22.809406>,  <38.704254, 43.333927, 22.907131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764610, 43.123196, 22.809406>,  <38.865200, 42.771980, 22.646532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764610, 43.123196, 22.809406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326253, -0.319181, 0.889765,
		0.911218, 0.356602, -0.206197,
		-0.251478, 0.878042, 0.407186,
		38.689167, 43.386608, 22.931562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372253, 42.991127, 23.171747>,  <38.865200, 42.771980, 22.646532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372253, 42.991127, 23.171747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070442, 43.229603, 23.281473>,  <38.889355, 43.372688, 23.347309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070442, 43.229603, 23.281473>,  <39.372253, 42.991127, 23.171747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070442, 43.229603, 23.281473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015697, -0.434266, 0.900648,
		0.656079, 0.675259, 0.337024,
		-0.754529, 0.596187, 0.274313,
		38.844082, 43.408459, 23.363768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601475, 43.406849, 23.767056>,  <39.372253, 42.991127, 23.171747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601475, 43.406849, 23.767056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202068, 43.385059, 23.767879>,  <38.962425, 43.371986, 23.768373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202068, 43.385059, 23.767879>,  <39.601475, 43.406849, 23.767056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202068, 43.385059, 23.767879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015191, -0.241786, 0.970211,
		-0.052358, 0.968799, 0.242254,
		-0.998513, -0.054478, 0.002058,
		38.902515, 43.368717, 23.768497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437698, 43.660366, 24.387976>,  <39.601475, 43.406849, 23.767056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437698, 43.660366, 24.387976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087292, 43.505177, 24.273382>,  <38.877048, 43.412064, 24.204626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087292, 43.505177, 24.273382>,  <39.437698, 43.660366, 24.387976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087292, 43.505177, 24.273382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145150, -0.354383, 0.923766,
		-0.459921, 0.850817, 0.254131,
		-0.876016, -0.387972, -0.286485,
		38.824486, 43.388786, 24.187437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008595, 43.988041, 24.831808>,  <39.437698, 43.660366, 24.387976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008595, 43.988041, 24.831808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893967, 43.634346, 24.684298>,  <38.825191, 43.422127, 24.595791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893967, 43.634346, 24.684298>,  <39.008595, 43.988041, 24.831808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893967, 43.634346, 24.684298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127345, -0.416660, 0.900099,
		-0.949558, 0.210980, 0.232006,
		-0.286571, -0.884241, -0.368775,
		38.807995, 43.369072, 24.573666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710705, 43.799385, 25.370714>,  <39.008595, 43.988041, 24.831808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710705, 43.799385, 25.370714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691360, 43.464558, 25.152735>,  <38.679752, 43.263660, 25.021946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691360, 43.464558, 25.152735>,  <38.710705, 43.799385, 25.370714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691360, 43.464558, 25.152735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015911, -0.544874, 0.838367,
		-0.998703, 0.049215, 0.013032,
		-0.048361, -0.837072, -0.544951,
		38.676853, 43.213436, 24.989250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080448, 43.364178, 25.600855>,  <38.710705, 43.799385, 25.370714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080448, 43.364178, 25.600855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353096, 43.110214, 25.455374>,  <38.516685, 42.957836, 25.368086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353096, 43.110214, 25.455374>,  <38.080448, 43.364178, 25.600855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353096, 43.110214, 25.455374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073440, -0.553913, 0.829329,
		-0.728010, -0.538578, -0.424187,
		0.681621, -0.634912, -0.363701,
		38.557583, 42.919739, 25.346264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683582, 42.854279, 25.547462>,  <38.080448, 43.364178, 25.600855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683582, 42.854279, 25.547462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068153, 42.745293, 25.562590>,  <38.298897, 42.679901, 25.571665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068153, 42.745293, 25.562590>,  <37.683582, 42.854279, 25.547462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068153, 42.745293, 25.562590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209535, -0.636332, 0.742413,
		-0.178214, -0.721697, -0.668875,
		0.961424, -0.272461, 0.037817,
		38.356579, 42.663555, 25.573935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576546, 42.156197, 25.582884>,  <37.683582, 42.854279, 25.547462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576546, 42.156197, 25.582884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940422, 42.236904, 25.728073>,  <38.158749, 42.285328, 25.815187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940422, 42.236904, 25.728073>,  <37.576546, 42.156197, 25.582884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940422, 42.236904, 25.728073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187964, -0.579344, 0.793114,
		0.370311, -0.789716, -0.489099,
		0.909692, 0.201765, 0.362976,
		38.213329, 42.297432, 25.836966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807205, 41.494499, 25.814093>,  <37.576546, 42.156197, 25.582884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807205, 41.494499, 25.814093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040638, 41.743942, 26.022146>,  <38.180698, 41.893608, 26.146978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040638, 41.743942, 26.022146>,  <37.807205, 41.494499, 25.814093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040638, 41.743942, 26.022146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022049, -0.652448, 0.757513,
		0.811753, -0.430604, -0.394509,
		0.583584, 0.623612, 0.520132,
		38.215714, 41.931026, 26.178186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185551, 41.004246, 26.259268>,  <37.807205, 41.494499, 25.814093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185551, 41.004246, 26.259268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212513, 41.353428, 26.452515>,  <38.228691, 41.562939, 26.568462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212513, 41.353428, 26.452515>,  <38.185551, 41.004246, 26.259268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212513, 41.353428, 26.452515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069052, -0.487138, 0.870591,
		0.995333, -0.025322, -0.093115,
		0.067405, 0.872958, 0.483116,
		38.232735, 41.615314, 26.597450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673637, 40.919079, 26.755196>,  <38.185551, 41.004246, 26.259268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673637, 40.919079, 26.755196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484264, 41.247383, 26.883076>,  <38.370640, 41.444366, 26.959803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484264, 41.247383, 26.883076>,  <38.673637, 40.919079, 26.755196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484264, 41.247383, 26.883076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031298, -0.347049, 0.937325,
		0.880273, 0.453768, 0.138617,
		-0.473435, 0.820763, 0.319699,
		38.342236, 41.493610, 26.978985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993835, 40.948456, 27.472559>,  <38.673637, 40.919079, 26.755196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993835, 40.948456, 27.472559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663300, 41.173622, 27.465786>,  <38.464977, 41.308723, 27.461721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663300, 41.173622, 27.465786>,  <38.993835, 40.948456, 27.472559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663300, 41.173622, 27.465786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239081, -0.323422, 0.915554,
		0.509903, 0.760608, 0.401839,
		-0.826341, 0.562916, -0.016933,
		38.415398, 41.342499, 27.460707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895241, 41.083591, 28.145578>,  <38.993835, 40.948456, 27.472559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895241, 41.083591, 28.145578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534058, 41.171856, 27.998081>,  <38.317348, 41.224815, 27.909584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534058, 41.171856, 27.998081>,  <38.895241, 41.083591, 28.145578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534058, 41.171856, 27.998081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420909, -0.281268, 0.862394,
		0.086581, 0.933915, 0.346852,
		-0.902961, 0.220660, -0.368741,
		38.263168, 41.238052, 27.887459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587051, 41.633301, 28.535456>,  <38.895241, 41.083591, 28.145578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587051, 41.633301, 28.535456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277122, 41.438194, 28.374592>,  <38.091164, 41.321129, 28.278074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277122, 41.438194, 28.374592>,  <38.587051, 41.633301, 28.535456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277122, 41.438194, 28.374592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428185, -0.063088, 0.901486,
		-0.465085, 0.870692, -0.159971,
		-0.774825, -0.487765, -0.402159,
		38.044674, 41.291866, 28.253944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075748, 41.931652, 28.907684>,  <38.587051, 41.633301, 28.535456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075748, 41.931652, 28.907684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906906, 41.611912, 28.736635>,  <37.805599, 41.420067, 28.634005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906906, 41.611912, 28.736635>,  <38.075748, 41.931652, 28.907684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906906, 41.611912, 28.736635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591067, -0.114988, 0.798384,
		-0.687362, 0.589758, -0.423934,
		-0.422106, -0.799352, -0.427625,
		37.780273, 41.372105, 28.608347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338787, 42.076576, 28.780474>,  <38.075748, 41.931652, 28.907684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338787, 42.076576, 28.780474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369259, 41.677811, 28.772867>,  <37.387543, 41.438553, 28.768303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369259, 41.677811, 28.772867>,  <37.338787, 42.076576, 28.780474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369259, 41.677811, 28.772867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680937, -0.065948, 0.729367,
		-0.728369, -0.042613, -0.683858,
		0.076180, -0.996913, -0.019017,
		37.392113, 41.378738, 28.767162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712032, 41.857769, 28.796577>,  <37.338787, 42.076576, 28.780474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712032, 41.857769, 28.796577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905510, 41.535076, 28.932354>,  <37.021595, 41.341461, 29.013821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905510, 41.535076, 28.932354>,  <36.712032, 41.857769, 28.796577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905510, 41.535076, 28.932354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653029, -0.074423, 0.753668,
		-0.582746, -0.586212, -0.562818,
		0.483695, -0.806732, 0.339443,
		37.050617, 41.293056, 29.034187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220131, 41.376953, 28.930647>,  <36.712032, 41.857769, 28.796577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220131, 41.376953, 28.930647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522675, 41.212624, 29.134272>,  <36.704201, 41.114025, 29.256447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522675, 41.212624, 29.134272>,  <36.220131, 41.376953, 28.930647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522675, 41.212624, 29.134272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611963, -0.169422, 0.772526,
		-0.231126, -0.895835, -0.379553,
		0.756361, -0.410824, 0.509061,
		36.749584, 41.089378, 29.286989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964634, 40.716019, 29.251474>,  <36.220131, 41.376953, 28.930647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964634, 40.716019, 29.251474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297756, 40.824406, 29.444561>,  <36.497631, 40.889439, 29.560413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297756, 40.824406, 29.444561>,  <35.964634, 40.716019, 29.251474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297756, 40.824406, 29.444561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423696, -0.249179, 0.870857,
		0.356256, -0.929778, -0.092709,
		0.832805, 0.270968, 0.482715,
		36.547596, 40.905697, 29.589375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067139, 40.132786, 29.665609>,  <35.964634, 40.716019, 29.251474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067139, 40.132786, 29.665609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246689, 40.447212, 29.835600>,  <36.354420, 40.635868, 29.937593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246689, 40.447212, 29.835600>,  <36.067139, 40.132786, 29.665609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246689, 40.447212, 29.835600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389691, -0.255777, 0.884714,
		0.804146, -0.562736, 0.191513,
		0.448876, 0.786070, 0.424975,
		36.381351, 40.683033, 29.963093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568352, 39.937603, 30.313303>,  <36.067139, 40.132786, 29.665609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568352, 39.937603, 30.313303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472443, 40.323967, 30.352346>,  <36.414898, 40.555786, 30.375772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472443, 40.323967, 30.352346>,  <36.568352, 39.937603, 30.313303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472443, 40.323967, 30.352346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352929, -0.180387, 0.918097,
		0.904407, 0.185684, 0.384149,
		-0.239771, 0.965910, 0.097610,
		36.400513, 40.613739, 30.381630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879208, 40.046776, 30.909851>,  <36.568352, 39.937603, 30.313303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879208, 40.046776, 30.909851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610546, 40.339539, 30.863903>,  <36.449348, 40.515198, 30.836334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610546, 40.339539, 30.863903>,  <36.879208, 40.046776, 30.909851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610546, 40.339539, 30.863903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402915, -0.230736, 0.885675,
		0.621729, 0.641147, 0.449871,
		-0.671649, 0.731909, -0.114872,
		36.409050, 40.559113, 30.829441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910221, 40.365578, 31.567276>,  <36.879208, 40.046776, 30.909851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910221, 40.365578, 31.567276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567772, 40.464584, 31.385820>,  <36.362301, 40.523987, 31.276947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567772, 40.464584, 31.385820>,  <36.910221, 40.365578, 31.567276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567772, 40.464584, 31.385820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508360, -0.245646, 0.825365,
		0.092855, 0.937227, 0.336130,
		-0.856124, 0.247515, -0.453639,
		36.310936, 40.538837, 31.249729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528599, 40.670357, 32.105453>,  <36.910221, 40.365578, 31.567276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528599, 40.670357, 32.105453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251579, 40.561691, 31.838150>,  <36.085365, 40.496494, 31.677767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251579, 40.561691, 31.838150>,  <36.528599, 40.670357, 32.105453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251579, 40.561691, 31.838150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575294, -0.350902, 0.738854,
		-0.435212, 0.896141, 0.086732,
		-0.692552, -0.271662, -0.668261,
		36.043816, 40.480194, 31.637672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818001, 40.877007, 32.414062>,  <36.528599, 40.670357, 32.105453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818001, 40.877007, 32.414062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802696, 40.578808, 32.147900>,  <35.793514, 40.399887, 31.988201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802696, 40.578808, 32.147900>,  <35.818001, 40.877007, 32.414062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802696, 40.578808, 32.147900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553046, -0.538813, 0.635469,
		-0.832272, 0.392317, -0.391678,
		-0.038264, -0.745498, -0.665408,
		35.791218, 40.355160, 31.948277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146523, 40.797012, 32.292274>,  <35.818001, 40.877007, 32.414062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146523, 40.797012, 32.292274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328129, 40.462376, 32.169651>,  <35.437092, 40.261593, 32.096077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328129, 40.462376, 32.169651>,  <35.146523, 40.797012, 32.292274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328129, 40.462376, 32.169651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599298, -0.541343, 0.589737,
		-0.659325, -0.084027, -0.747147,
		0.454017, -0.836593, -0.306564,
		35.464333, 40.211399, 32.077682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606594, 40.419525, 32.447933>,  <35.146523, 40.797012, 32.292274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606594, 40.419525, 32.447933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899982, 40.163780, 32.355637>,  <35.076015, 40.010334, 32.300259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899982, 40.163780, 32.355637>,  <34.606594, 40.419525, 32.447933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899982, 40.163780, 32.355637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374523, -0.663427, 0.647763,
		-0.567232, -0.388698, -0.726059,
		0.733471, -0.639358, -0.230741,
		35.120022, 39.971973, 32.286415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296963, 39.787830, 32.252998>,  <34.606594, 40.419525, 32.447933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296963, 39.787830, 32.252998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671883, 39.744118, 32.385380>,  <34.896835, 39.717892, 32.464809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671883, 39.744118, 32.385380>,  <34.296963, 39.787830, 32.252998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671883, 39.744118, 32.385380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317434, -0.659743, 0.681157,
		0.143912, -0.743503, -0.653064,
		0.937296, -0.109278, 0.330958,
		34.953072, 39.711334, 32.484669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364452, 39.029713, 32.152866>,  <34.296963, 39.787830, 32.252998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364452, 39.029713, 32.152866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644493, 39.154781, 32.409645>,  <34.812519, 39.229824, 32.563713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644493, 39.154781, 32.409645>,  <34.364452, 39.029713, 32.152866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644493, 39.154781, 32.409645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215318, -0.764735, 0.607305,
		0.680806, -0.563397, -0.468068,
		0.700101, 0.312673, 0.641946,
		34.854523, 39.248585, 32.602230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725746, 38.526188, 32.230843>,  <34.364452, 39.029713, 32.152866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725746, 38.526188, 32.230843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782932, 38.749027, 32.558064>,  <34.817242, 38.882732, 32.754395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782932, 38.749027, 32.558064>,  <34.725746, 38.526188, 32.230843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782932, 38.749027, 32.558064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135773, -0.807685, 0.573769,
		0.980371, -0.193096, -0.039829,
		0.142962, 0.557098, 0.818048,
		34.825821, 38.916157, 32.803478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203300, 38.204247, 32.598198>,  <34.725746, 38.526188, 32.230843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203300, 38.204247, 32.598198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029732, 38.416771, 32.889244>,  <34.925591, 38.544285, 33.063873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029732, 38.416771, 32.889244>,  <35.203300, 38.204247, 32.598198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029732, 38.416771, 32.889244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240265, -0.846603, 0.474907,
		0.868323, 0.031252, 0.495014,
		-0.433922, 0.531307, 0.727616,
		34.899555, 38.576164, 33.107529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533791, 37.940395, 33.178993>,  <35.203300, 38.204247, 32.598198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533791, 37.940395, 33.178993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202961, 38.122967, 33.310219>,  <35.004463, 38.232510, 33.388954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202961, 38.122967, 33.310219>,  <35.533791, 37.940395, 33.178993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202961, 38.122967, 33.310219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160309, -0.750938, 0.640619,
		0.538751, 0.477247, 0.694250,
		-0.827072, 0.456429, 0.328062,
		34.954838, 38.259895, 33.408638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689079, 38.123581, 33.823822>,  <35.533791, 37.940395, 33.178993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689079, 38.123581, 33.823822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289162, 38.129269, 33.817955>,  <35.049213, 38.132683, 33.814434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289162, 38.129269, 33.817955>,  <35.689079, 38.123581, 33.823822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289162, 38.129269, 33.817955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020345, -0.626781, 0.778930,
		0.001883, 0.779066, 0.626939,
		-0.999791, 0.014222, -0.014670,
		34.989223, 38.133533, 33.813553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428898, 38.041023, 34.550068>,  <35.689079, 38.123581, 33.823822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428898, 38.041023, 34.550068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147182, 37.938007, 34.285446>,  <34.978153, 37.876198, 34.126675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147182, 37.938007, 34.285446>,  <35.428898, 38.041023, 34.550068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147182, 37.938007, 34.285446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063592, -0.905246, 0.420103,
		-0.707060, 0.337943, 0.621177,
		-0.704288, -0.257536, -0.661554,
		34.935898, 37.860748, 34.086979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006073, 38.410946, 34.392208>,  <35.428898, 38.041023, 34.550068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006073, 38.410946, 34.392208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334820, 38.240055, 34.542950>,  <36.532066, 38.137520, 34.633392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334820, 38.240055, 34.542950>,  <36.006073, 38.410946, 34.392208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334820, 38.240055, 34.542950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563303, 0.510725, -0.649500,
		0.085017, 0.746082, 0.660405,
		0.821865, -0.427226, 0.376850,
		36.581379, 38.111889, 34.656006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516403, 38.899487, 34.250648>,  <36.006073, 38.410946, 34.392208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516403, 38.899487, 34.250648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754372, 38.594292, 34.351776>,  <36.897152, 38.411175, 34.412453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754372, 38.594292, 34.351776>,  <36.516403, 38.899487, 34.250648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754372, 38.594292, 34.351776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596108, 0.207817, -0.775543,
		0.539189, 0.612096, 0.578458,
		0.594920, -0.762988, 0.252823,
		36.932846, 38.365395, 34.427624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165783, 39.184929, 34.325134>,  <36.516403, 38.899487, 34.250648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165783, 39.184929, 34.325134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218155, 38.794281, 34.256931>,  <37.249577, 38.559891, 34.216011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218155, 38.794281, 34.256931>,  <37.165783, 39.184929, 34.325134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218155, 38.794281, 34.256931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755253, 0.209670, -0.620992,
		0.642223, -0.047468, 0.765047,
		0.130930, -0.976619, -0.170506,
		37.257435, 38.501297, 34.205780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801754, 39.083042, 34.502136>,  <37.165783, 39.184929, 34.325134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801754, 39.083042, 34.502136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721981, 38.761368, 34.278168>,  <37.674118, 38.568363, 34.143787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721981, 38.761368, 34.278168>,  <37.801754, 39.083042, 34.502136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721981, 38.761368, 34.278168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812630, 0.183581, -0.553110,
		0.547593, -0.565319, 0.616892,
		-0.199434, -0.804184, -0.559923,
		37.662151, 38.520111, 34.110191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499023, 38.714382, 34.478313>,  <37.801754, 39.083042, 34.502136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499023, 38.714382, 34.478313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279274, 38.580151, 34.172222>,  <38.147423, 38.499611, 33.988567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279274, 38.580151, 34.172222>,  <38.499023, 38.714382, 34.478313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279274, 38.580151, 34.172222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744232, 0.219829, -0.630709,
		0.379873, -0.916002, 0.128982,
		-0.549377, -0.335582, -0.765225,
		38.114460, 38.479477, 33.942654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887344, 38.179108, 34.185532>,  <38.499023, 38.714382, 34.478313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887344, 38.179108, 34.185532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628063, 38.289452, 33.901634>,  <38.472496, 38.355656, 33.731297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628063, 38.289452, 33.901634>,  <38.887344, 38.179108, 34.185532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628063, 38.289452, 33.901634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755166, 0.352560, -0.552653,
		0.097776, -0.894206, -0.436847,
		-0.648201, 0.275856, -0.709746,
		38.433601, 38.372208, 33.688709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122314, 37.923103, 33.589050>,  <38.887344, 38.179108, 34.185532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122314, 37.923103, 33.589050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887154, 38.226398, 33.476307>,  <38.746056, 38.408375, 33.408661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887154, 38.226398, 33.476307>,  <39.122314, 37.923103, 33.589050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887154, 38.226398, 33.476307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645723, 0.230000, -0.728109,
		-0.487252, -0.610061, -0.624829,
		-0.587902, 0.758238, -0.281862,
		38.710785, 38.453869, 33.391747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991917, 37.797760, 32.823963>,  <39.122314, 37.923103, 33.589050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991917, 37.797760, 32.823963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913704, 38.184135, 32.891766>,  <38.866776, 38.415958, 32.932446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913704, 38.184135, 32.891766>,  <38.991917, 37.797760, 32.823963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913704, 38.184135, 32.891766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633355, 0.256343, -0.730171,
		-0.748750, -0.035419, -0.661906,
		-0.195537, 0.965937, 0.169504,
		38.855042, 38.473915, 32.942616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946831, 38.099159, 32.065681>,  <38.991917, 37.797760, 32.823963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946831, 38.099159, 32.065681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011059, 38.404148, 32.316395>,  <39.049595, 38.587143, 32.466824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011059, 38.404148, 32.316395>,  <38.946831, 38.099159, 32.065681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011059, 38.404148, 32.316395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519131, 0.474853, -0.710646,
		-0.839476, 0.439490, -0.319575,
		0.160571, 0.762472, 0.626781,
		39.059231, 38.632889, 32.504429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699402, 38.731869, 31.735638>,  <38.946831, 38.099159, 32.065681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699402, 38.731869, 31.735638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938065, 38.875252, 32.022835>,  <39.081261, 38.961281, 32.195152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938065, 38.875252, 32.022835>,  <38.699402, 38.731869, 31.735638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938065, 38.875252, 32.022835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484344, 0.552514, -0.678336,
		-0.639853, 0.752488, 0.156045,
		0.596656, 0.358456, 0.717990,
		39.117062, 38.982788, 32.238232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622787, 39.484386, 31.723139>,  <38.699402, 38.731869, 31.735638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622787, 39.484386, 31.723139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981220, 39.411205, 31.884912>,  <39.196281, 39.367298, 31.981977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981220, 39.411205, 31.884912>,  <38.622787, 39.484386, 31.723139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981220, 39.411205, 31.884912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406602, 0.703821, -0.582504,
		-0.178081, 0.686415, 0.705068,
		0.896082, -0.182949, 0.404435,
		39.250046, 39.356319, 32.006245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895386, 40.118916, 31.891218>,  <38.622787, 39.484386, 31.723139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895386, 40.118916, 31.891218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232368, 39.903561, 31.899237>,  <39.434559, 39.774345, 31.904047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232368, 39.903561, 31.899237>,  <38.895386, 40.118916, 31.891218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232368, 39.903561, 31.899237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482279, 0.737026, -0.473496,
		0.240152, 0.408568, 0.880567,
		0.842457, -0.538390, 0.020046,
		39.485107, 39.742043, 31.905251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402576, 40.529343, 32.201332>,  <38.895386, 40.118916, 31.891218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402576, 40.529343, 32.201332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579182, 40.266277, 31.957186>,  <39.685146, 40.108440, 31.810698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579182, 40.266277, 31.957186>,  <39.402576, 40.529343, 32.201332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579182, 40.266277, 31.957186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265633, 0.745574, -0.611194,
		0.857032, 0.107717, 0.503878,
		0.441515, -0.657659, -0.610368,
		39.711636, 40.068981, 31.774075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052708, 40.892506, 32.056896>,  <39.402576, 40.529343, 32.201332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052708, 40.892506, 32.056896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980801, 40.621418, 31.771690>,  <39.937656, 40.458767, 31.600567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980801, 40.621418, 31.771690>,  <40.052708, 40.892506, 32.056896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980801, 40.621418, 31.771690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334309, 0.639589, -0.692216,
		0.925160, -0.362805, 0.111589,
		-0.179768, -0.677716, -0.713011,
		39.926868, 40.418102, 31.557787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621040, 40.821087, 31.773088>,  <40.052708, 40.892506, 32.056896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621040, 40.821087, 31.773088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347179, 40.696735, 31.509392>,  <40.182861, 40.622124, 31.351173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347179, 40.696735, 31.509392>,  <40.621040, 40.821087, 31.773088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347179, 40.696735, 31.509392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453092, 0.526949, -0.719049,
		0.570925, -0.790999, -0.219922,
		-0.684655, -0.310878, -0.659244,
		40.141781, 40.603474, 31.311619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973232, 40.531914, 31.102877>,  <40.621040, 40.821087, 31.773088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973232, 40.531914, 31.102877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599216, 40.607697, 30.983000>,  <40.374809, 40.653168, 30.911074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599216, 40.607697, 30.983000>,  <40.973232, 40.531914, 31.102877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599216, 40.607697, 30.983000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354487, 0.516142, -0.779703,
		0.006962, -0.835286, -0.549771,
		-0.935035, 0.189459, -0.299691,
		40.318707, 40.664536, 30.893093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993290, 40.452927, 30.355860>,  <40.973232, 40.531914, 31.102877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993290, 40.452927, 30.355860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652607, 40.654907, 30.411900>,  <40.448196, 40.776096, 30.445522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652607, 40.654907, 30.411900>,  <40.993290, 40.452927, 30.355860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652607, 40.654907, 30.411900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167108, 0.515109, -0.840677,
		-0.496664, -0.692596, -0.523101,
		-0.851704, 0.504948, 0.140098,
		40.397095, 40.806393, 30.453928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463005, 40.367252, 29.721077>,  <40.993290, 40.452927, 30.355860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463005, 40.367252, 29.721077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327820, 40.704178, 29.889021>,  <40.246708, 40.906334, 29.989788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327820, 40.704178, 29.889021>,  <40.463005, 40.367252, 29.721077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327820, 40.704178, 29.889021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050383, 0.461664, -0.885623,
		-0.939809, -0.278156, -0.198465,
		-0.337965, 0.842316, 0.419861,
		40.226429, 40.956871, 30.014978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009369, 40.658337, 29.275446>,  <40.463005, 40.367252, 29.721077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009369, 40.658337, 29.275446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119991, 40.964756, 29.507542>,  <40.186367, 41.148609, 29.646799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119991, 40.964756, 29.507542>,  <40.009369, 40.658337, 29.275446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119991, 40.964756, 29.507542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237435, 0.530602, -0.813687,
		-0.931203, 0.362802, -0.035146,
		0.276559, 0.766053, 0.580240,
		40.202957, 41.194572, 29.681614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641670, 41.345684, 29.038235>,  <40.009369, 40.658337, 29.275446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641670, 41.345684, 29.038235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967834, 41.460484, 29.239328>,  <40.163532, 41.529362, 29.359985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967834, 41.460484, 29.239328>,  <39.641670, 41.345684, 29.038235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967834, 41.460484, 29.239328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293186, 0.544088, -0.786136,
		-0.499153, 0.788416, 0.359509,
		0.815407, 0.287000, 0.502736,
		40.212456, 41.546585, 29.390150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629440, 42.045998, 28.929306>,  <39.641670, 41.345684, 29.038235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629440, 42.045998, 28.929306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006618, 41.949650, 29.021244>,  <40.232925, 41.891842, 29.076406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006618, 41.949650, 29.021244>,  <39.629440, 42.045998, 28.929306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006618, 41.949650, 29.021244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328570, 0.561802, -0.759224,
		0.053744, 0.791430, 0.608892,
		0.942949, -0.240867, 0.229847,
		40.289505, 41.877388, 29.090199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957508, 42.620880, 29.048466>,  <39.629440, 42.045998, 28.929306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957508, 42.620880, 29.048466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232246, 42.351555, 28.939003>,  <40.397091, 42.189960, 28.873325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232246, 42.351555, 28.939003>,  <39.957508, 42.620880, 29.048466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232246, 42.351555, 28.939003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256129, 0.576608, -0.775835,
		0.680173, 0.462790, 0.568498,
		0.686850, -0.673311, -0.273659,
		40.438301, 42.149563, 28.856905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327171, 43.035168, 28.597004>,  <39.957508, 42.620880, 29.048466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327171, 43.035168, 28.597004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478436, 42.672935, 28.520142>,  <40.569195, 42.455597, 28.474024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478436, 42.672935, 28.520142>,  <40.327171, 43.035168, 28.597004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478436, 42.672935, 28.520142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178549, 0.275019, -0.944714,
		0.908359, 0.322944, 0.265691,
		0.378160, -0.905578, -0.192154,
		40.591885, 42.401260, 28.462496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035660, 43.031685, 28.275564>,  <40.327171, 43.035168, 28.597004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035660, 43.031685, 28.275564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879097, 42.683243, 28.156918>,  <40.785160, 42.474178, 28.085730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879097, 42.683243, 28.156918>,  <41.035660, 43.031685, 28.275564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879097, 42.683243, 28.156918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319095, 0.173855, -0.931640,
		0.863121, -0.459301, 0.209915,
		-0.391409, -0.871101, -0.296619,
		40.761673, 42.421913, 28.067932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479599, 42.871559, 27.680313>,  <41.035660, 43.031685, 28.275564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479599, 42.871559, 27.680313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155899, 42.637909, 27.655308>,  <40.961678, 42.497719, 27.640305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155899, 42.637909, 27.655308>,  <41.479599, 42.871559, 27.680313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155899, 42.637909, 27.655308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132193, -0.077381, -0.988199,
		0.572396, -0.807965, 0.139838,
		-0.809251, -0.584127, -0.062515,
		40.913124, 42.462669, 27.636553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683193, 42.488636, 27.180025>,  <41.479599, 42.871559, 27.680313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683193, 42.488636, 27.180025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290085, 42.414707, 27.179064>,  <41.054222, 42.370350, 27.178488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290085, 42.414707, 27.179064>,  <41.683193, 42.488636, 27.180025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290085, 42.414707, 27.179064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003735, -0.006860, -0.999970,
		0.184804, -0.982747, 0.007432,
		-0.982768, -0.184826, -0.002403,
		40.995255, 42.359261, 27.178343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622276, 41.906059, 26.679472>,  <41.683193, 42.488636, 27.180025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622276, 41.906059, 26.679472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277451, 42.104504, 26.720881>,  <41.070553, 42.223568, 26.745726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277451, 42.104504, 26.720881>,  <41.622276, 41.906059, 26.679472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277451, 42.104504, 26.720881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099574, 0.034478, -0.994433,
		-0.496916, -0.867576, 0.019677,
		-0.862067, 0.496108, 0.103521,
		41.018829, 42.253338, 26.751936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122997, 41.524544, 26.402596>,  <41.622276, 41.906059, 26.679472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122997, 41.524544, 26.402596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003899, 41.906059, 26.386431>,  <40.932438, 42.134968, 26.376732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003899, 41.906059, 26.386431>,  <41.122997, 41.524544, 26.402596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003899, 41.906059, 26.386431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047526, -0.057090, -0.997237,
		-0.953461, -0.295003, 0.062328,
		-0.297746, 0.953789, -0.040413,
		40.914574, 42.192196, 26.374308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875595, 41.539879, 25.752003>,  <41.122997, 41.524544, 26.402596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875595, 41.539879, 25.752003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863762, 41.929611, 25.841265>,  <40.856663, 42.163452, 25.894821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863762, 41.929611, 25.841265>,  <40.875595, 41.539879, 25.752003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863762, 41.929611, 25.841265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138307, 0.217115, -0.966298,
		-0.989948, -0.059450, 0.128334,
		-0.029583, 0.974334, 0.223155,
		40.854885, 42.221912, 25.908211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418491, 41.947006, 25.256315>,  <40.875595, 41.539879, 25.752003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418491, 41.947006, 25.256315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694435, 42.203651, 25.390429>,  <40.860001, 42.357639, 25.470898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694435, 42.203651, 25.390429>,  <40.418491, 41.947006, 25.256315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694435, 42.203651, 25.390429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227869, 0.247147, -0.941804,
		-0.687142, 0.726117, 0.024293,
		0.689864, 0.641617, 0.335284,
		40.901394, 42.396137, 25.491014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259220, 42.548882, 24.955477>,  <40.418491, 41.947006, 25.256315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259220, 42.548882, 24.955477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641945, 42.573193, 25.069187>,  <40.871582, 42.587780, 25.137413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641945, 42.573193, 25.069187>,  <40.259220, 42.548882, 24.955477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641945, 42.573193, 25.069187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255646, 0.289629, -0.922366,
		-0.138393, 0.955207, 0.261584,
		0.956813, 0.060776, 0.284278,
		40.928989, 42.591427, 25.154470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507931, 43.070236, 24.582617>,  <40.259220, 42.548882, 24.955477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507931, 43.070236, 24.582617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859215, 42.915977, 24.695778>,  <41.069984, 42.823421, 24.763674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859215, 42.915977, 24.695778>,  <40.507931, 43.070236, 24.582617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859215, 42.915977, 24.695778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339367, 0.085644, -0.936747,
		0.337020, 0.918665, 0.206087,
		0.878207, -0.385642, 0.282901,
		41.122677, 42.800285, 24.780647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034985, 43.562710, 24.369574>,  <40.507931, 43.070236, 24.582617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034985, 43.562710, 24.369574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218170, 43.213341, 24.435791>,  <41.328083, 43.003719, 24.475521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218170, 43.213341, 24.435791>,  <41.034985, 43.562710, 24.369574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218170, 43.213341, 24.435791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344522, 0.002714, -0.938774,
		0.819496, 0.486958, 0.302156,
		0.457964, -0.873421, 0.165544,
		41.355560, 42.951313, 24.485455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730587, 43.717880, 24.339308>,  <41.034985, 43.562710, 24.369574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730587, 43.717880, 24.339308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643410, 43.342213, 24.233133>,  <41.591103, 43.116810, 24.169430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643410, 43.342213, 24.233133>,  <41.730587, 43.717880, 24.339308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643410, 43.342213, 24.233133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405476, 0.160255, -0.899949,
		0.887745, -0.303764, 0.345885,
		-0.217942, -0.939173, -0.265434,
		41.578026, 43.060459, 24.153503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311790, 43.587902, 24.025728>,  <41.730587, 43.717880, 24.339308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311790, 43.587902, 24.025728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034874, 43.325500, 23.905468>,  <41.868725, 43.168060, 23.833311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034874, 43.325500, 23.905468>,  <42.311790, 43.587902, 24.025728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034874, 43.325500, 23.905468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378788, 0.024271, -0.925165,
		0.614212, -0.754365, 0.231685,
		-0.692289, -0.656007, -0.300652,
		41.827187, 43.128700, 23.815273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659275, 43.060604, 23.568272>,  <42.311790, 43.587902, 24.025728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659275, 43.060604, 23.568272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272621, 43.023506, 23.472755>,  <42.040630, 43.001247, 23.415445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272621, 43.023506, 23.472755>,  <42.659275, 43.060604, 23.568272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272621, 43.023506, 23.472755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235752, 0.042627, -0.970878,
		0.100231, -0.994776, -0.019338,
		-0.966631, -0.092753, -0.238793,
		41.982632, 42.995682, 23.401117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618744, 42.628128, 22.968630>,  <42.659275, 43.060604, 23.568272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618744, 42.628128, 22.968630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275143, 42.832909, 22.967613>,  <42.068981, 42.955776, 22.967003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275143, 42.832909, 22.967613>,  <42.618744, 42.628128, 22.968630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275143, 42.832909, 22.967613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044644, 0.069964, -0.996550,
		-0.510013, -0.856157, -0.082955,
		-0.859007, 0.511956, -0.002539,
		42.017441, 42.986496, 22.966852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189892, 42.278252, 22.430578>,  <42.618744, 42.628128, 22.968630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189892, 42.278252, 22.430578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075375, 42.658092, 22.481623>,  <42.006664, 42.885998, 22.512249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075375, 42.658092, 22.481623>,  <42.189892, 42.278252, 22.430578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075375, 42.658092, 22.481623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055043, 0.116666, -0.991645,
		-0.956560, -0.290923, 0.018869,
		-0.286291, 0.949607, 0.127611,
		41.989487, 42.942974, 22.519905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346924, 42.471798, 21.732309>,  <42.189892, 42.278252, 22.430578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346924, 42.471798, 21.732309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614098, 42.185883, 21.649429>,  <42.774403, 42.014332, 21.599701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614098, 42.185883, 21.649429>,  <42.346924, 42.471798, 21.732309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614098, 42.185883, 21.649429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193131, -0.435359, 0.879296,
		-0.718720, -0.547299, -0.428842,
		0.667938, -0.714791, -0.207201,
		42.814480, 41.971447, 21.587269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999119, 41.847298, 21.782948>,  <42.346924, 42.471798, 21.732309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999119, 41.847298, 21.782948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388763, 41.775578, 21.838034>,  <42.622551, 41.732548, 21.871086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388763, 41.775578, 21.838034>,  <41.999119, 41.847298, 21.782948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388763, 41.775578, 21.838034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205221, -0.445661, 0.871361,
		-0.094857, -0.877063, -0.470917,
		0.974108, -0.179297, 0.137717,
		42.680996, 41.721786, 21.879349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091492, 41.071304, 21.925741>,  <41.999119, 41.847298, 21.782948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091492, 41.071304, 21.925741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.413956, 41.244328, 22.087233>,  <42.607433, 41.348141, 22.184128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.413956, 41.244328, 22.087233>,  <42.091492, 41.071304, 21.925741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.413956, 41.244328, 22.087233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135196, -0.529617, 0.837393,
		0.576042, -0.729657, -0.368478,
		0.806162, 0.432557, 0.403729,
		42.655804, 41.374096, 22.208351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519062, 40.537209, 22.106567>,  <42.091492, 41.071304, 21.925741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519062, 40.537209, 22.106567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650536, 40.848770, 22.320211>,  <42.729420, 41.035709, 22.448399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650536, 40.848770, 22.320211>,  <42.519062, 40.537209, 22.106567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650536, 40.848770, 22.320211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071305, -0.584383, 0.808339,
		0.941745, -0.227601, -0.247616,
		0.328681, 0.778906, 0.534111,
		42.749142, 41.082443, 22.480444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052116, 40.306465, 22.528654>,  <42.519062, 40.537209, 22.106567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052116, 40.306465, 22.528654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933601, 40.642544, 22.710325>,  <42.862492, 40.844193, 22.819328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933601, 40.642544, 22.710325>,  <43.052116, 40.306465, 22.528654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933601, 40.642544, 22.710325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000388, -0.475637, 0.879642,
		0.955099, 0.260451, 0.141251,
		-0.296288, 0.840199, 0.454179,
		42.844715, 40.894604, 22.846579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414299, 40.267704, 23.170248>,  <43.052116, 40.306465, 22.528654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414299, 40.267704, 23.170248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125122, 40.533531, 23.245832>,  <42.951614, 40.693027, 23.291183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125122, 40.533531, 23.245832>,  <43.414299, 40.267704, 23.170248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125122, 40.533531, 23.245832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022514, -0.250691, 0.967805,
		0.690542, 0.703921, 0.166273,
		-0.722941, 0.664567, 0.188961,
		42.908241, 40.732903, 23.302521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667976, 40.537758, 23.748940>,  <43.414299, 40.267704, 23.170248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667976, 40.537758, 23.748940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286980, 40.659363, 23.741621>,  <43.058380, 40.732327, 23.737230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286980, 40.659363, 23.741621>,  <43.667976, 40.537758, 23.748940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286980, 40.659363, 23.741621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104513, -0.269830, 0.957220,
		0.286072, 0.913656, 0.288784,
		-0.952491, 0.304016, -0.018298,
		43.001232, 40.750568, 23.736132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566956, 40.857712, 24.398821>,  <43.667976, 40.537758, 23.748940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566956, 40.857712, 24.398821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183754, 40.789143, 24.306873>,  <42.953835, 40.748001, 24.251705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183754, 40.789143, 24.306873>,  <43.566956, 40.857712, 24.398821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183754, 40.789143, 24.306873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200650, -0.171942, 0.964456,
		-0.204858, 0.970077, 0.130324,
		-0.958005, -0.171427, -0.229870,
		42.896351, 40.737713, 24.237913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174770, 41.175991, 24.914389>,  <43.566956, 40.857712, 24.398821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174770, 41.175991, 24.914389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936878, 40.895229, 24.757608>,  <42.794144, 40.726772, 24.663540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936878, 40.895229, 24.757608>,  <43.174770, 41.175991, 24.914389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936878, 40.895229, 24.757608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318108, -0.242284, 0.916573,
		-0.738308, 0.669799, -0.079186,
		-0.594734, -0.701903, -0.391949,
		42.758457, 40.684658, 24.640024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517475, 41.337345, 25.037251>,  <43.174770, 41.175991, 24.914389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517475, 41.337345, 25.037251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513683, 40.942467, 24.973555>,  <42.511410, 40.705540, 24.935337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513683, 40.942467, 24.973555>,  <42.517475, 41.337345, 25.037251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513683, 40.942467, 24.973555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623463, -0.118671, 0.772794,
		-0.781796, 0.106607, -0.614354,
		-0.009479, -0.987194, -0.159242,
		42.510841, 40.646309, 24.925781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783188, 41.181973, 24.998541>,  <42.517475, 41.337345, 25.037251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783188, 41.181973, 24.998541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988934, 40.851601, 25.090851>,  <42.112381, 40.653378, 25.146236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988934, 40.851601, 25.090851>,  <41.783188, 41.181973, 24.998541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988934, 40.851601, 25.090851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674580, -0.223530, 0.703545,
		-0.529496, -0.517559, -0.672136,
		0.514369, -0.825934, 0.230777,
		42.143246, 40.603821, 25.160084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275360, 40.647255, 25.007603>,  <41.783188, 41.181973, 24.998541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275360, 40.647255, 25.007603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592632, 40.517014, 25.213459>,  <41.782993, 40.438869, 25.336973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592632, 40.517014, 25.213459>,  <41.275360, 40.647255, 25.007603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592632, 40.517014, 25.213459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592482, -0.217149, 0.775765,
		-0.140828, -0.920238, -0.365144,
		0.793179, -0.325591, 0.514644,
		41.830585, 40.419334, 25.367851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131847, 39.904278, 25.282585>,  <41.275360, 40.647255, 25.007603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131847, 39.904278, 25.282585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.425537, 40.061722, 25.503851>,  <41.601749, 40.156189, 25.636610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.425537, 40.061722, 25.503851>,  <41.131847, 39.904278, 25.282585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425537, 40.061722, 25.503851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455773, -0.318118, 0.831307,
		0.503181, -0.862481, -0.054173,
		0.734220, 0.393608, 0.553167,
		41.645802, 40.179806, 25.669802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364273, 39.314251, 25.813339>,  <41.131847, 39.904278, 25.282585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364273, 39.314251, 25.813339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524155, 39.644783, 25.972042>,  <41.620083, 39.843102, 26.067265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524155, 39.644783, 25.972042>,  <41.364273, 39.314251, 25.813339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524155, 39.644783, 25.972042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264767, -0.310311, 0.913020,
		0.877574, -0.469986, 0.094752,
		0.399704, 0.826330, 0.396758,
		41.644066, 39.892681, 26.091070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691975, 39.082481, 26.365099>,  <41.364273, 39.314251, 25.813339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691975, 39.082481, 26.365099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664909, 39.471573, 26.453836>,  <41.648670, 39.705029, 26.507078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664909, 39.471573, 26.453836>,  <41.691975, 39.082481, 26.365099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664909, 39.471573, 26.453836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080298, -0.226942, 0.970592,
		0.994471, 0.047863, 0.093465,
		-0.067667, 0.972731, 0.221844,
		41.644608, 39.763393, 26.520390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225353, 39.196903, 26.875042>,  <41.691975, 39.082481, 26.365099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225353, 39.196903, 26.875042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996929, 39.521877, 26.922092>,  <41.859875, 39.716862, 26.950323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996929, 39.521877, 26.922092>,  <42.225353, 39.196903, 26.875042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996929, 39.521877, 26.922092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013171, -0.152341, 0.988240,
		0.820801, 0.562798, 0.097697,
		-0.571063, 0.812435, 0.117628,
		41.825611, 39.765606, 26.957380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598320, 39.713745, 27.379652>,  <42.225353, 39.196903, 26.875042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598320, 39.713745, 27.379652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207829, 39.799110, 27.364489>,  <41.973534, 39.850330, 27.355391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207829, 39.799110, 27.364489>,  <42.598320, 39.713745, 27.379652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207829, 39.799110, 27.364489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044669, -0.026938, 0.998639,
		0.212101, 0.976591, 0.035831,
		-0.976226, 0.213413, -0.037909,
		41.914959, 39.863132, 27.353115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512875, 40.320591, 27.820349>,  <42.598320, 39.713745, 27.379652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512875, 40.320591, 27.820349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164330, 40.129139, 27.777180>,  <41.955204, 40.014267, 27.751278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164330, 40.129139, 27.777180>,  <42.512875, 40.320591, 27.820349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164330, 40.129139, 27.777180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113596, -0.017181, 0.993379,
		-0.477314, 0.877849, -0.039400,
		-0.871360, -0.478629, -0.107921,
		41.902920, 39.985550, 27.744804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087467, 40.642673, 28.308983>,  <42.512875, 40.320591, 27.820349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087467, 40.642673, 28.308983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884369, 40.302711, 28.252613>,  <41.762508, 40.098736, 28.218792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884369, 40.302711, 28.252613>,  <42.087467, 40.642673, 28.308983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884369, 40.302711, 28.252613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014012, -0.155408, 0.987751,
		-0.861393, 0.503501, 0.066999,
		-0.507746, -0.849903, -0.140923,
		41.732044, 40.047741, 28.210337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658253, 40.620392, 28.885859>,  <42.087467, 40.642673, 28.308983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658253, 40.620392, 28.885859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662586, 40.238716, 28.766258>,  <41.665184, 40.009708, 28.694498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662586, 40.238716, 28.766258>,  <41.658253, 40.620392, 28.885859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662586, 40.238716, 28.766258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094131, -0.296716, 0.950315,
		-0.995501, -0.038437, 0.086605,
		0.010830, -0.954192, -0.298999,
		41.665836, 39.952457, 28.676559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064114, 40.300587, 29.285069>,  <41.658253, 40.620392, 28.885859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064114, 40.300587, 29.285069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324203, 40.027008, 29.152752>,  <41.480259, 39.862862, 29.073362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324203, 40.027008, 29.152752>,  <41.064114, 40.300587, 29.285069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324203, 40.027008, 29.152752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011314, -0.444071, 0.895920,
		-0.759657, -0.578808, -0.296485,
		0.650226, -0.683946, -0.330793,
		41.519272, 39.821823, 29.053514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735878, 39.623463, 29.463459>,  <41.064114, 40.300587, 29.285069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735878, 39.623463, 29.463459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125759, 39.541992, 29.426649>,  <41.359688, 39.493111, 29.404564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125759, 39.541992, 29.426649>,  <40.735878, 39.623463, 29.463459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125759, 39.541992, 29.426649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039888, -0.563657, 0.825046,
		-0.219909, -0.800505, -0.557523,
		0.974705, -0.203673, -0.092022,
		41.418171, 39.480888, 29.399042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718414, 38.860909, 29.519314>,  <40.735878, 39.623463, 29.463459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718414, 38.860909, 29.519314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094795, 38.990917, 29.557207>,  <41.320621, 39.068924, 29.579943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094795, 38.990917, 29.557207>,  <40.718414, 38.860909, 29.519314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094795, 38.990917, 29.557207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095316, -0.522839, 0.847086,
		0.324851, -0.788035, -0.522945,
		0.940950, 0.325022, 0.094733,
		41.377079, 39.088425, 29.585627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078602, 38.265053, 29.676304>,  <40.718414, 38.860909, 29.519314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078602, 38.265053, 29.676304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274204, 38.583397, 29.819124>,  <41.391563, 38.774403, 29.904816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274204, 38.583397, 29.819124>,  <41.078602, 38.265053, 29.676304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274204, 38.583397, 29.819124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093341, -0.454720, 0.885730,
		0.867274, -0.399797, -0.296646,
		0.489003, 0.795859, 0.357049,
		41.420906, 38.822155, 29.926239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666069, 37.968800, 30.033060>,  <41.078602, 38.265053, 29.676304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666069, 37.968800, 30.033060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665749, 38.351543, 30.149286>,  <41.665554, 38.581188, 30.219021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665749, 38.351543, 30.149286>,  <41.666069, 37.968800, 30.033060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665749, 38.351543, 30.149286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117035, -0.288478, 0.950307,
		0.993127, 0.034771, -0.111753,
		-0.000805, 0.956855, 0.290565,
		41.665508, 38.638599, 30.236456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326313, 38.022446, 30.318954>,  <41.666069, 37.968800, 30.033060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326313, 38.022446, 30.318954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067482, 38.276344, 30.487900>,  <41.912182, 38.428684, 30.589268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067482, 38.276344, 30.487900>,  <42.326313, 38.022446, 30.318954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067482, 38.276344, 30.487900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250468, -0.346255, 0.904087,
		0.720109, 0.690803, 0.065071,
		-0.647078, 0.634743, 0.422365,
		41.873360, 38.466766, 30.614609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715229, 38.439816, 30.895674>,  <42.326313, 38.022446, 30.318954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715229, 38.439816, 30.895674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319462, 38.458824, 30.950521>,  <42.082001, 38.470230, 30.983431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319462, 38.458824, 30.950521>,  <42.715229, 38.439816, 30.895674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319462, 38.458824, 30.950521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136917, -0.007539, 0.990554,
		0.048102, 0.998842, 0.000954,
		-0.989414, 0.047517, 0.137121,
		42.022636, 38.473080, 30.991657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513546, 39.052589, 31.318302>,  <42.715229, 38.439816, 30.895674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513546, 39.052589, 31.318302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231007, 38.775074, 31.374495>,  <42.061485, 38.608566, 31.408211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231007, 38.775074, 31.374495>,  <42.513546, 39.052589, 31.318302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231007, 38.775074, 31.374495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073287, 0.125717, 0.989356,
		-0.704063, 0.709122, -0.037954,
		-0.706346, -0.693787, 0.140482,
		42.019104, 38.566936, 31.416639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149521, 39.340755, 31.867626>,  <42.513546, 39.052589, 31.318302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149521, 39.340755, 31.867626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015411, 38.964031, 31.877380>,  <41.934948, 38.737999, 31.883232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015411, 38.964031, 31.877380>,  <42.149521, 39.340755, 31.867626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015411, 38.964031, 31.877380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225921, -0.055243, 0.972578,
		-0.914632, 0.331586, 0.231296,
		-0.335271, -0.941806, 0.024385,
		41.914829, 38.681488, 31.884695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980354, 39.286472, 32.534794>,  <42.149521, 39.340755, 31.867626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980354, 39.286472, 32.534794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999107, 38.906342, 32.411716>,  <42.010361, 38.678261, 32.337872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999107, 38.906342, 32.411716>,  <41.980354, 39.286472, 32.534794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999107, 38.906342, 32.411716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155858, -0.297299, 0.941978,
		-0.986666, -0.092119, 0.134178,
		0.046883, -0.950330, -0.307692,
		42.013172, 38.621243, 32.319408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628098, 38.981525, 32.967598>,  <41.980354, 39.286472, 32.534794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628098, 38.981525, 32.967598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832150, 38.667065, 32.828037>,  <41.954582, 38.478390, 32.744301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832150, 38.667065, 32.828037>,  <41.628098, 38.981525, 32.967598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832150, 38.667065, 32.828037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012582, -0.412429, 0.910903,
		-0.860005, -0.460290, -0.220284,
		0.510131, -0.786152, -0.348899,
		41.985188, 38.431217, 32.723366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266338, 38.331551, 33.162048>,  <41.628098, 38.981525, 32.967598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266338, 38.331551, 33.162048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648663, 38.230423, 33.102036>,  <41.878056, 38.169746, 33.066029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648663, 38.230423, 33.102036>,  <41.266338, 38.331551, 33.162048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648663, 38.230423, 33.102036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043307, -0.625847, 0.778742,
		-0.290775, -0.737833, -0.609141,
		0.955811, -0.252819, -0.150027,
		41.935406, 38.154575, 33.057026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314480, 37.557915, 33.304588>,  <41.266338, 38.331551, 33.162048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314480, 37.557915, 33.304588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691662, 37.691067, 33.306435>,  <41.917973, 37.770958, 33.307541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691662, 37.691067, 33.306435>,  <41.314480, 37.557915, 33.304588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691662, 37.691067, 33.306435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231427, -0.665415, 0.709693,
		0.239314, -0.668143, -0.704496,
		0.942958, 0.332879, 0.004617,
		41.974548, 37.790932, 33.307819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639069, 36.972878, 33.402813>,  <41.314480, 37.557915, 33.304588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639069, 36.972878, 33.402813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882858, 37.256702, 33.544270>,  <42.029133, 37.426998, 33.629143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882858, 37.256702, 33.544270>,  <41.639069, 36.972878, 33.402813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882858, 37.256702, 33.544270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166560, -0.550709, 0.817911,
		0.775115, -0.439590, -0.453825,
		0.609471, 0.709564, 0.353645,
		42.065701, 37.469570, 33.650364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334713, 36.641106, 33.518364>,  <41.639069, 36.972878, 33.402813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334713, 36.641106, 33.518364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304558, 36.974609, 33.737148>,  <42.286465, 37.174713, 33.868420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304558, 36.974609, 33.737148>,  <42.334713, 36.641106, 33.518364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304558, 36.974609, 33.737148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364937, -0.487393, 0.793265,
		0.927975, 0.259409, -0.267525,
		-0.075391, 0.833760, 0.546956,
		42.281940, 37.224739, 33.901234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809322, 36.525936, 33.998589>,  <42.334713, 36.641106, 33.518364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809322, 36.525936, 33.998589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631512, 36.848789, 34.153988>,  <42.524826, 37.042503, 34.247227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631512, 36.848789, 34.153988>,  <42.809322, 36.525936, 33.998589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631512, 36.848789, 34.153988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321729, -0.260902, 0.910176,
		0.835995, 0.529586, -0.143701,
		-0.444525, 0.807136, 0.388496,
		42.498154, 37.090931, 34.270538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310123, 36.726944, 34.469585>,  <42.809322, 36.525936, 33.998589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310123, 36.726944, 34.469585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961838, 36.886501, 34.584644>,  <42.752865, 36.982235, 34.653679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961838, 36.886501, 34.584644>,  <43.310123, 36.726944, 34.469585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961838, 36.886501, 34.584644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286218, -0.064611, 0.955984,
		0.399923, 0.914717, -0.057914,
		-0.870713, 0.398895, 0.287648,
		42.700623, 37.006168, 34.670940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512691, 37.324986, 34.939793>,  <43.310123, 36.726944, 34.469585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512691, 37.324986, 34.939793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139500, 37.197563, 35.006813>,  <42.915585, 37.121109, 35.047028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139500, 37.197563, 35.006813>,  <43.512691, 37.324986, 34.939793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139500, 37.197563, 35.006813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233097, -0.180036, 0.955643,
		-0.274258, 0.930650, 0.242224,
		-0.932978, -0.318555, 0.167556,
		42.859608, 37.101997, 35.057079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244068, 37.749496, 35.481941>,  <43.512691, 37.324986, 34.939793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244068, 37.749496, 35.481941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030830, 37.411106, 35.477234>,  <42.902889, 37.208073, 35.474411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030830, 37.411106, 35.477234>,  <43.244068, 37.749496, 35.481941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030830, 37.411106, 35.477234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383232, -0.253850, 0.888084,
		-0.754285, 0.468921, 0.459530,
		-0.533093, -0.845975, -0.011769,
		42.870903, 37.157314, 35.473701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128235, 37.591305, 36.178009>,  <43.244068, 37.749496, 35.481941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128235, 37.591305, 36.178009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049103, 37.237171, 36.009701>,  <43.001625, 37.024693, 35.908714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049103, 37.237171, 36.009701>,  <43.128235, 37.591305, 36.178009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049103, 37.237171, 36.009701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318180, -0.464011, 0.826714,
		-0.927160, 0.029668, 0.373490,
		-0.197830, -0.885333, -0.420772,
		42.989754, 36.971573, 35.883469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797874, 37.244881, 36.738605>,  <43.128235, 37.591305, 36.178009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797874, 37.244881, 36.738605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880268, 36.938946, 36.494446>,  <42.929707, 36.755383, 36.347950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880268, 36.938946, 36.494446>,  <42.797874, 37.244881, 36.738605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880268, 36.938946, 36.494446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124429, -0.598241, 0.791597,
		-0.970612, -0.239009, -0.028061,
		0.205986, -0.764841, -0.610400,
		42.942062, 36.709492, 36.311325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461731, 36.706432, 37.014248>,  <42.797874, 37.244881, 36.738605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461731, 36.706432, 37.014248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760429, 36.550205, 36.798904>,  <42.939648, 36.456470, 36.669697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760429, 36.550205, 36.798904>,  <42.461731, 36.706432, 37.014248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760429, 36.550205, 36.798904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266577, -0.565823, 0.780244,
		-0.609355, -0.726156, -0.318408,
		0.746742, -0.390566, -0.538364,
		42.984451, 36.433037, 36.637394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584538, 36.052948, 37.359589>,  <42.461731, 36.706432, 37.014248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584538, 36.052948, 37.359589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901340, 36.076279, 37.116497>,  <43.091423, 36.090275, 36.970642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901340, 36.076279, 37.116497>,  <42.584538, 36.052948, 37.359589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901340, 36.076279, 37.116497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558792, -0.470236, 0.683103,
		-0.245934, -0.880611, -0.405019,
		0.792003, 0.058323, -0.607725,
		43.138943, 36.093777, 36.934181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825603, 35.321037, 37.380375>,  <42.584538, 36.052948, 37.359589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825603, 35.321037, 37.380375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113739, 35.577972, 37.275669>,  <43.286621, 35.732132, 37.212845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113739, 35.577972, 37.275669>,  <42.825603, 35.321037, 37.380375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113739, 35.577972, 37.275669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485518, -0.197419, 0.851645,
		0.495365, -0.740561, -0.454074,
		0.720337, 0.642336, -0.261761,
		43.329842, 35.770672, 37.197140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502926, 35.063412, 37.520180>,  <42.825603, 35.321037, 37.380375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502926, 35.063412, 37.520180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581696, 35.455456, 37.510311>,  <43.628956, 35.690681, 37.504391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581696, 35.455456, 37.510311>,  <43.502926, 35.063412, 37.520180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581696, 35.455456, 37.510311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607829, -0.102304, 0.787450,
		0.769263, -0.170061, -0.615885,
		0.196922, 0.980109, -0.024670,
		43.640774, 35.749489, 37.502911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.331676, 35.176453, 37.520473>,  <43.502926, 35.063412, 37.520180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.331676, 35.176453, 37.520473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146278, 35.494823, 37.676250>,  <44.035038, 35.685848, 37.769714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146278, 35.494823, 37.676250>,  <44.331676, 35.176453, 37.520473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146278, 35.494823, 37.676250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609447, -0.032687, 0.792153,
		0.643229, 0.604504, -0.469927,
		-0.463499, 0.795931, 0.389438,
		44.007229, 35.733604, 37.793083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872673, 35.462193, 37.933319>,  <44.331676, 35.176453, 37.520473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872673, 35.462193, 37.933319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536976, 35.639420, 38.059402>,  <44.335556, 35.745758, 38.135052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536976, 35.639420, 38.059402>,  <44.872673, 35.462193, 37.933319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.536976, 35.639420, 38.059402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449446, 0.238972, 0.860750,
		0.306047, 0.864049, -0.399692,
		-0.839246, 0.443070, 0.315206,
		44.285202, 35.772339, 38.153965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997662, 36.157516, 38.169151>,  <44.872673, 35.462193, 37.933319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.997662, 36.157516, 38.169151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662582, 36.063622, 38.366398>,  <44.461536, 36.007286, 38.484745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662582, 36.063622, 38.366398>,  <44.997662, 36.157516, 38.169151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662582, 36.063622, 38.366398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482230, 0.105900, 0.869620,
		-0.256351, 0.966274, 0.024484,
		-0.837699, -0.234734, 0.493113,
		44.411274, 35.993202, 38.514332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034565, 36.633667, 38.847172>,  <44.997662, 36.157516, 38.169151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034565, 36.633667, 38.847172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.763794, 36.344173, 38.900806>,  <44.601334, 36.170475, 38.932987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.763794, 36.344173, 38.900806>,  <45.034565, 36.633667, 38.847172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763794, 36.344173, 38.900806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186173, 0.007889, 0.982485,
		-0.712118, 0.690032, 0.129400,
		-0.676925, -0.723736, 0.134083,
		44.560715, 36.127052, 38.941032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.675812, 36.833462, 39.453541>,  <45.034565, 36.633667, 38.847172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.675812, 36.833462, 39.453541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579216, 36.446220, 39.426830>,  <44.521259, 36.213875, 39.410805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579216, 36.446220, 39.426830>,  <44.675812, 36.833462, 39.453541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579216, 36.446220, 39.426830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331375, -0.146947, 0.931985,
		-0.912070, 0.202940, 0.356292,
		-0.241493, -0.968102, -0.066777,
		44.506767, 36.155788, 39.406796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326801, 36.712868, 40.054344>,  <44.675812, 36.833462, 39.453541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326801, 36.712868, 40.054344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442822, 36.353737, 39.921810>,  <44.512432, 36.138260, 39.842289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442822, 36.353737, 39.921810>,  <44.326801, 36.712868, 40.054344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.442822, 36.353737, 39.921810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315007, -0.237357, 0.918930,
		-0.903683, -0.370906, 0.213976,
		0.290048, -0.897825, -0.331334,
		44.529835, 36.084389, 39.822411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110252, 36.287491, 40.456264>,  <44.326801, 36.712868, 40.054344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110252, 36.287491, 40.456264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436066, 36.098999, 40.320923>,  <44.631554, 35.985905, 40.239719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436066, 36.098999, 40.320923>,  <44.110252, 36.287491, 40.456264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436066, 36.098999, 40.320923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325276, -0.111949, 0.938969,
		-0.480344, -0.874879, 0.062092,
		0.814533, -0.471226, -0.338351,
		44.680428, 35.957630, 40.219418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170128, 35.692951, 41.010578>,  <44.110252, 36.287491, 40.456264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170128, 35.692951, 41.010578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501495, 35.785545, 40.806564>,  <44.700314, 35.841103, 40.684155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501495, 35.785545, 40.806564>,  <44.170128, 35.692951, 41.010578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.501495, 35.785545, 40.806564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511119, 0.060019, 0.857412,
		0.229094, -0.970984, -0.068597,
		0.828416, 0.231489, -0.510038,
		44.750019, 35.854992, 40.653553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.679749, 35.372383, 41.330524>,  <44.170128, 35.692951, 41.010578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.679749, 35.372383, 41.330524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866600, 35.656487, 41.119881>,  <44.978710, 35.826950, 40.993496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866600, 35.656487, 41.119881>,  <44.679749, 35.372383, 41.330524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866600, 35.656487, 41.119881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624784, 0.156276, 0.764998,
		0.625645, -0.686371, -0.370759,
		0.467132, 0.710262, -0.526607,
		45.006741, 35.869564, 40.961899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437649, 35.355312, 41.474258>,  <44.679749, 35.372383, 41.330524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437649, 35.355312, 41.474258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356762, 35.715282, 41.319733>,  <45.308231, 35.931267, 41.227016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356762, 35.715282, 41.319733>,  <45.437649, 35.355312, 41.474258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356762, 35.715282, 41.319733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722585, 0.403359, 0.561403,
		0.661044, -0.165616, -0.731841,
		-0.202217, 0.899930, -0.386310,
		45.296097, 35.985260, 41.203838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.075283, 35.597927, 41.256279>,  <45.437649, 35.355312, 41.474258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.075283, 35.597927, 41.256279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.820866, 35.896698, 41.333782>,  <45.668217, 36.075962, 41.380283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.820866, 35.896698, 41.333782>,  <46.075283, 35.597927, 41.256279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.820866, 35.896698, 41.333782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601506, 0.322632, 0.730821,
		0.483361, 0.581380, -0.654491,
		-0.636045, 0.746931, 0.193756,
		45.630051, 36.120777, 41.391911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.569870, 36.186264, 41.326939>,  <46.075283, 35.597927, 41.256279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.569870, 36.186264, 41.326939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.212723, 36.244991, 41.497227>,  <45.998436, 36.280228, 41.599400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.212723, 36.244991, 41.497227>,  <46.569870, 36.186264, 41.326939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.212723, 36.244991, 41.497227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440386, 0.482190, 0.757333,
		-0.094087, 0.863676, -0.495187,
		-0.892865, 0.146818, 0.425719,
		45.944862, 36.289036, 41.624943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.686855, 36.856426, 41.707901>,  <46.569870, 36.186264, 41.326939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.686855, 36.856426, 41.707901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.361885, 36.691597, 41.872906>,  <46.166904, 36.592701, 41.971909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.361885, 36.691597, 41.872906>,  <46.686855, 36.856426, 41.707901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.361885, 36.691597, 41.872906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312967, 0.288746, 0.904808,
		-0.491958, 0.864188, -0.105618,
		-0.812422, -0.412073, 0.412513,
		46.118160, 36.567974, 41.996658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.329865, 37.425114, 42.041409>,  <46.686855, 36.856426, 41.707901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.329865, 37.425114, 42.041409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216587, 37.085384, 42.219601>,  <46.148621, 36.881546, 42.326515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216587, 37.085384, 42.219601>,  <46.329865, 37.425114, 42.041409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.216587, 37.085384, 42.219601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346708, 0.342413, 0.873239,
		-0.894199, 0.401750, 0.197497,
		-0.283198, -0.849323, 0.445476,
		46.131626, 36.830585, 42.353245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.778820, 37.326309, 42.571583>,  <46.329865, 37.425114, 42.041409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.778820, 37.326309, 42.571583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.099918, 37.093208, 42.622162>,  <46.292580, 36.953346, 42.652512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.099918, 37.093208, 42.622162>,  <45.778820, 37.326309, 42.571583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.099918, 37.093208, 42.622162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297360, 0.575003, 0.762200,
		-0.516887, -0.574253, 0.634871,
		0.802749, -0.582756, 0.126451,
		46.340744, 36.918381, 42.660099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822289, 37.165993, 43.394142>,  <45.778820, 37.326309, 42.571583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822289, 37.165993, 43.394142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174129, 37.127266, 43.207844>,  <46.385235, 37.104031, 43.096066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174129, 37.127266, 43.207844>,  <45.822289, 37.165993, 43.394142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.174129, 37.127266, 43.207844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413098, 0.640968, 0.646924,
		0.235896, -0.761437, 0.603793,
		0.879604, -0.096819, -0.465750,
		46.438011, 37.098221, 43.068119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.201653, 37.024300, 43.978588>,  <45.822289, 37.165993, 43.394142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.201653, 37.024300, 43.978588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.390099, 37.230724, 43.692448>,  <46.503166, 37.354580, 43.520763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.390099, 37.230724, 43.692448>,  <46.201653, 37.024300, 43.978588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.390099, 37.230724, 43.692448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304202, 0.666175, 0.680935,
		0.827954, -0.538412, 0.156860,
		0.471120, 0.516066, -0.715348,
		46.531433, 37.385544, 43.477844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.963428, 37.158764, 43.797951>,  <46.201653, 37.024300, 43.978588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.963428, 37.158764, 43.797951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.798504, 36.797905, 43.848751>,  <46.699551, 36.581390, 43.879230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.798504, 36.797905, 43.848751>,  <46.963428, 37.158764, 43.797951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.798504, 36.797905, 43.848751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130432, -0.079510, -0.988264,
		0.901658, -0.424037, -0.084886,
		-0.412311, -0.902148, 0.126999,
		46.674812, 36.527260, 43.886852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.149345, 36.807716, 43.201645>,  <46.963428, 37.158764, 43.797951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.149345, 36.807716, 43.201645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.819599, 36.644779, 43.358868>,  <46.621750, 36.547016, 43.453201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.819599, 36.644779, 43.358868>,  <47.149345, 36.807716, 43.201645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.819599, 36.644779, 43.358868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336149, -0.206393, -0.918916,
		0.455440, -0.889647, 0.033214,
		-0.824366, -0.407346, 0.393053,
		46.572289, 36.522575, 43.476784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.966316, 36.139561, 42.886761>,  <47.149345, 36.807716, 43.201645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.966316, 36.139561, 42.886761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.621113, 36.289505, 43.022232>,  <46.413990, 36.379471, 43.103516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.621113, 36.289505, 43.022232>,  <46.966316, 36.139561, 42.886761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.621113, 36.289505, 43.022232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368062, -0.007320, -0.929772,
		-0.346055, -0.927053, 0.144289,
		-0.863004, 0.374859, 0.338680,
		46.362213, 36.401962, 43.123837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.369080, 35.670105, 42.925011>,  <46.966316, 36.139561, 42.886761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.369080, 35.670105, 42.925011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.215042, 36.037777, 42.891975>,  <46.122620, 36.258381, 42.872154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.215042, 36.037777, 42.891975>,  <46.369080, 35.670105, 42.925011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.215042, 36.037777, 42.891975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388606, -0.242672, -0.888874,
		-0.837073, -0.310203, 0.450648,
		-0.385091, 0.919176, -0.082587,
		46.099514, 36.313530, 42.867199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.623909, 35.706474, 42.839714>,  <46.369080, 35.670105, 42.925011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.623909, 35.706474, 42.839714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779839, 36.043648, 42.691391>,  <45.873394, 36.245953, 42.602398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779839, 36.043648, 42.691391>,  <45.623909, 35.706474, 42.839714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779839, 36.043648, 42.691391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477525, -0.159270, -0.864062,
		-0.787407, 0.513900, 0.340436,
		0.389820, 0.842935, -0.370810,
		45.896786, 36.296528, 42.580147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.067013, 36.067062, 42.593281>,  <45.623909, 35.706474, 42.839714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.067013, 36.067062, 42.593281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383369, 36.227829, 42.408691>,  <45.573181, 36.324287, 42.297939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383369, 36.227829, 42.408691>,  <45.067013, 36.067062, 42.593281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383369, 36.227829, 42.408691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478148, -0.064778, -0.875887,
		-0.381927, 0.913382, 0.140944,
		0.790889, 0.401917, -0.461472,
		45.620636, 36.348404, 42.270248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809540, 36.709930, 42.245018>,  <45.067013, 36.067062, 42.593281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809540, 36.709930, 42.245018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.140137, 36.591213, 42.053677>,  <45.338493, 36.519981, 41.938873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.140137, 36.591213, 42.053677>,  <44.809540, 36.709930, 42.245018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.140137, 36.591213, 42.053677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475718, 0.086120, -0.875372,
		0.301003, 0.951050, -0.070014,
		0.826492, -0.296796, -0.478354,
		45.388084, 36.502174, 41.910172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.770779, 37.082630, 41.614300>,  <44.809540, 36.709930, 42.245018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.770779, 37.082630, 41.614300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.051907, 36.812206, 41.525772>,  <45.220585, 36.649952, 41.472656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.051907, 36.812206, 41.525772>,  <44.770779, 37.082630, 41.614300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.051907, 36.812206, 41.525772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379236, -0.092861, -0.920629,
		0.601850, 0.730969, -0.321652,
		0.702820, -0.676062, -0.221321,
		45.262753, 36.609386, 41.459377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.135597, 37.252789, 40.950237>,  <44.770779, 37.082630, 41.614300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.135597, 37.252789, 40.950237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.178371, 36.859596, 41.009998>,  <45.204037, 36.623680, 41.045856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.178371, 36.859596, 41.009998>,  <45.135597, 37.252789, 40.950237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.178371, 36.859596, 41.009998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358259, -0.178270, -0.916444,
		0.927477, 0.044476, -0.371224,
		0.106938, -0.982976, 0.149407,
		45.210453, 36.564705, 41.054821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501537, 36.918892, 40.418739>,  <45.135597, 37.252789, 40.950237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501537, 36.918892, 40.418739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335384, 36.598087, 40.590431>,  <45.235695, 36.405605, 40.693447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335384, 36.598087, 40.590431>,  <45.501537, 36.918892, 40.418739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335384, 36.598087, 40.590431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306224, -0.321037, -0.896193,
		0.856555, -0.503701, -0.112243,
		-0.415379, -0.802010, 0.429231,
		45.210770, 36.357483, 40.719200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.428352, 36.463589, 39.904510>,  <45.501537, 36.918892, 40.418739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.428352, 36.463589, 39.904510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.787495, 36.450531, 39.728878>,  <46.002979, 36.442696, 39.623501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.787495, 36.450531, 39.728878>,  <45.428352, 36.463589, 39.904510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.787495, 36.450531, 39.728878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435128, 0.218072, 0.873561,
		0.067233, -0.975387, 0.210002,
		0.897855, -0.032645, -0.439079,
		46.056850, 36.440739, 39.597153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.808037, 35.928795, 39.918495>,  <45.428352, 36.463589, 39.904510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.808037, 35.928795, 39.918495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484501, 35.872002, 40.146748>,  <45.290379, 35.837925, 40.283699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484501, 35.872002, 40.146748>,  <45.808037, 35.928795, 39.918495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484501, 35.872002, 40.146748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536021, -0.220977, -0.814770,
		0.241781, -0.964888, 0.102629,
		-0.808841, -0.141985, 0.570629,
		45.241848, 35.829407, 40.317936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.609261, 35.254505, 39.746956>,  <45.808037, 35.928795, 39.918495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.609261, 35.254505, 39.746956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.291908, 35.449924, 39.892216>,  <45.101498, 35.567177, 39.979370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.291908, 35.449924, 39.892216>,  <45.609261, 35.254505, 39.746956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291908, 35.449924, 39.892216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517812, -0.227991, -0.824555,
		-0.320042, -0.842223, 0.433859,
		-0.793375, 0.488549, 0.363146,
		45.053894, 35.596489, 40.001160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.035694, 34.910580, 39.480202>,  <45.609261, 35.254505, 39.746956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.035694, 34.910580, 39.480202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872051, 35.258026, 39.592014>,  <44.773865, 35.466496, 39.659100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872051, 35.258026, 39.592014>,  <45.035694, 34.910580, 39.480202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872051, 35.258026, 39.592014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470498, 0.061669, -0.880243,
		-0.781831, -0.491634, 0.383453,
		-0.409110, 0.868616, 0.279528,
		44.749317, 35.518612, 39.675873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283707, 34.880211, 39.227814>,  <45.035694, 34.910580, 39.480202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283707, 34.880211, 39.227814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358009, 35.262054, 39.320953>,  <44.402592, 35.491161, 39.376839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358009, 35.262054, 39.320953>,  <44.283707, 34.880211, 39.227814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.358009, 35.262054, 39.320953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630267, 0.297563, -0.717091,
		-0.753828, -0.013551, 0.656932,
		0.185761, 0.954606, 0.232852,
		44.413738, 35.548435, 39.390808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638557, 35.236893, 39.255329>,  <44.283707, 34.880211, 39.227814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638557, 35.236893, 39.255329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891685, 35.540005, 39.191696>,  <44.043560, 35.721874, 39.153515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891685, 35.540005, 39.191696>,  <43.638557, 35.236893, 39.255329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891685, 35.540005, 39.191696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574902, 0.322201, -0.752113,
		-0.518682, 0.567407, 0.639545,
		0.632816, 0.757784, -0.159083,
		44.081532, 35.767342, 39.143970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219620, 35.790054, 38.957798>,  <43.638557, 35.236893, 39.255329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.219620, 35.790054, 38.957798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596607, 35.859425, 38.843483>,  <43.822800, 35.901047, 38.774895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596607, 35.859425, 38.843483>,  <43.219620, 35.790054, 38.957798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596607, 35.859425, 38.843483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323335, 0.255808, -0.911052,
		-0.084895, 0.951044, 0.297167,
		0.942469, 0.173428, -0.285789,
		43.879349, 35.911453, 38.757748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231533, 36.394657, 38.613617>,  <43.219620, 35.790054, 38.957798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231533, 36.394657, 38.613617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.555233, 36.206818, 38.472431>,  <43.749454, 36.094112, 38.387718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.555233, 36.206818, 38.472431>,  <43.231533, 36.394657, 38.613617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.555233, 36.206818, 38.472431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313599, 0.162740, -0.935506,
		0.496758, 0.867750, -0.015569,
		0.809251, -0.469602, -0.352968,
		43.798008, 36.065937, 38.366539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594063, 36.821823, 38.196827>,  <43.231533, 36.394657, 38.613617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594063, 36.821823, 38.196827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756889, 36.485573, 38.053921>,  <43.854588, 36.283821, 37.968178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756889, 36.485573, 38.053921>,  <43.594063, 36.821823, 38.196827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756889, 36.485573, 38.053921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433196, 0.166670, -0.885755,
		0.804137, 0.515329, -0.296310,
		0.407069, -0.840629, -0.357264,
		43.879009, 36.233383, 37.946743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964134, 36.987194, 37.588020>,  <43.594063, 36.821823, 38.196827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964134, 36.987194, 37.588020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882980, 36.598450, 37.540138>,  <43.834290, 36.365204, 37.511410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882980, 36.598450, 37.540138>,  <43.964134, 36.987194, 37.588020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882980, 36.598450, 37.540138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265825, 0.172326, -0.948494,
		0.942430, -0.160613, -0.293306,
		-0.202885, -0.971858, -0.119710,
		43.822113, 36.306892, 37.504227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884995, 37.031055, 36.921841>,  <43.964134, 36.987194, 37.588020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884995, 37.031055, 36.921841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788574, 36.651695, 37.004242>,  <43.730721, 36.424080, 37.053684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788574, 36.651695, 37.004242>,  <43.884995, 37.031055, 36.921841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788574, 36.651695, 37.004242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448255, -0.079470, -0.890366,
		0.860792, -0.306967, -0.405967,
		-0.241051, -0.948397, 0.206007,
		43.716259, 36.367176, 37.066044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173485, 36.492744, 36.366711>,  <43.884995, 37.031055, 36.921841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173485, 36.492744, 36.366711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853340, 36.342007, 36.553223>,  <43.661255, 36.251564, 36.665131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853340, 36.342007, 36.553223>,  <44.173485, 36.492744, 36.366711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.853340, 36.342007, 36.553223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553660, 0.166263, -0.815976,
		0.229970, -0.911233, -0.341713,
		-0.800359, -0.376842, 0.466278,
		43.613232, 36.228954, 36.693108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895473, 35.967960, 35.908810>,  <44.173485, 36.492744, 36.366711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895473, 35.967960, 35.908810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616413, 36.122524, 36.150131>,  <43.448978, 36.215263, 36.294922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616413, 36.122524, 36.150131>,  <43.895473, 35.967960, 35.908810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616413, 36.122524, 36.150131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598125, 0.149403, -0.787353,
		-0.394380, -0.910144, 0.126894,
		-0.697647, 0.386415, 0.603302,
		43.407120, 36.238449, 36.331123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318535, 35.679905, 35.655727>,  <43.895473, 35.967960, 35.908810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318535, 35.679905, 35.655727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207100, 36.006477, 35.858047>,  <43.140240, 36.202419, 35.979439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207100, 36.006477, 35.858047>,  <43.318535, 35.679905, 35.655727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207100, 36.006477, 35.858047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623066, 0.247145, -0.742097,
		-0.730875, -0.521887, 0.439837,
		-0.278587, 0.816427, 0.505802,
		43.123524, 36.251404, 36.009789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845509, 35.689148, 35.123917>,  <43.318535, 35.679905, 35.655727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845509, 35.689148, 35.123917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198528, 35.827503, 35.251328>,  <44.410339, 35.910519, 35.327774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198528, 35.827503, 35.251328>,  <43.845509, 35.689148, 35.123917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.198528, 35.827503, 35.251328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468049, -0.581242, -0.665649,
		-0.045099, 0.736557, -0.674870,
		0.882551, 0.345892, 0.318531,
		44.463295, 35.931271, 35.346886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327927, 35.152939, 34.827492>,  <43.845509, 35.689148, 35.123917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327927, 35.152939, 34.827492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346809, 34.754036, 34.850311>,  <43.358139, 34.514694, 34.864002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346809, 34.754036, 34.850311>,  <43.327927, 35.152939, 34.827492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346809, 34.754036, 34.850311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488537, -0.072865, -0.869495,
		0.871265, 0.013175, -0.490636,
		0.047206, -0.997255, 0.057048,
		43.360970, 34.454861, 34.867424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814079, 34.793076, 34.336361>,  <43.327927, 35.152939, 34.827492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814079, 34.793076, 34.336361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499596, 34.573338, 34.449570>,  <43.310905, 34.441494, 34.517494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499596, 34.573338, 34.449570>,  <43.814079, 34.793076, 34.336361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499596, 34.573338, 34.449570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362177, 0.038535, -0.931312,
		0.500707, -0.834706, -0.229257,
		-0.786206, -0.549346, 0.283017,
		43.263733, 34.408535, 34.534473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010513, 34.074581, 34.085186>,  <43.814079, 34.793076, 34.336361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010513, 34.074581, 34.085186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887196, 34.174183, 33.717937>,  <43.813206, 34.233944, 33.497589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887196, 34.174183, 33.717937>,  <44.010513, 34.074581, 34.085186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887196, 34.174183, 33.717937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907771, -0.211578, -0.362198,
		-0.284443, -0.945110, -0.160808,
		-0.308293, 0.249002, -0.918125,
		43.794708, 34.248882, 33.442501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355782, 33.603878, 33.468884>,  <44.010513, 34.074581, 34.085186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355782, 33.603878, 33.468884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259644, 33.961346, 33.317310>,  <44.201962, 34.175827, 33.226368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259644, 33.961346, 33.317310>,  <44.355782, 33.603878, 33.468884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.259644, 33.961346, 33.317310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963984, 0.173939, -0.201199,
		-0.113894, -0.413640, -0.903288,
		-0.240341, 0.893670, -0.378932,
		44.187542, 34.229446, 33.203632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717812, 33.585617, 32.815144>,  <44.355782, 33.603878, 33.468884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717812, 33.585617, 32.815144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.653534, 33.961918, 32.934586>,  <44.614967, 34.187698, 33.006252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.653534, 33.961918, 32.934586>,  <44.717812, 33.585617, 32.815144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.653534, 33.961918, 32.934586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962661, 0.216160, -0.162968,
		-0.217859, 0.261272, -0.940359,
		-0.160689, 0.940751, 0.298608,
		44.605328, 34.244144, 33.024170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.060795, 33.998192, 32.403980>,  <44.717812, 33.585617, 32.815144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.060795, 33.998192, 32.403980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023151, 34.230389, 32.727505>,  <45.000565, 34.369709, 32.921619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023151, 34.230389, 32.727505>,  <45.060795, 33.998192, 32.403980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.023151, 34.230389, 32.727505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912401, 0.375343, -0.163226,
		-0.398332, 0.722596, -0.564966,
		-0.094109, 0.580494, 0.808808,
		44.994919, 34.404537, 32.970146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379246, 33.771736, 31.710371>,  <45.060795, 33.998192, 32.403980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379246, 33.771736, 31.710371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126774, 33.656395, 31.422352>,  <44.975292, 33.587193, 31.249540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126774, 33.656395, 31.422352>,  <45.379246, 33.771736, 31.710371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126774, 33.656395, 31.422352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266138, -0.791460, 0.550238,
		-0.728551, 0.538930, 0.422810,
		-0.631177, -0.288351, -0.720048,
		44.937420, 33.569889, 31.206337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572292, 33.668938, 31.953346>,  <45.379246, 33.771736, 31.710371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.572292, 33.668938, 31.953346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.637253, 33.441868, 31.630516>,  <44.676228, 33.305626, 31.436817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.637253, 33.441868, 31.630516>,  <44.572292, 33.668938, 31.953346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.637253, 33.441868, 31.630516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110344, -0.823253, 0.556847,
		-0.980536, -0.001374, -0.196334,
		0.162398, -0.567673, -0.807078,
		44.685974, 33.271564, 31.388393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.535202, 33.031914, 32.425182>,  <44.572292, 33.668938, 31.953346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.535202, 33.031914, 32.425182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.389538, 32.711807, 32.615742>,  <44.302139, 32.519741, 32.730080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.389538, 32.711807, 32.615742>,  <44.535202, 33.031914, 32.425182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389538, 32.711807, 32.615742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459467, -0.599314, -0.655525,
		0.810111, -0.019824, 0.585942,
		-0.364158, -0.800268, 0.476403,
		44.280289, 32.471725, 32.758663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051296, 32.529301, 32.498219>,  <44.535202, 33.031914, 32.425182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051296, 32.529301, 32.498219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.707054, 32.326313, 32.481083>,  <44.500507, 32.204521, 32.470802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.707054, 32.326313, 32.481083>,  <45.051296, 32.529301, 32.498219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707054, 32.326313, 32.481083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457878, -0.734192, -0.501307,
		0.222947, -0.451041, 0.864209,
		-0.860606, -0.507467, -0.042836,
		44.448872, 32.174072, 32.468231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.541611, 32.949295, 32.687588>,  <45.051296, 32.529301, 32.498219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.541611, 32.949295, 32.687588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703716, 33.265884, 32.504578>,  <45.800980, 33.455837, 32.394772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703716, 33.265884, 32.504578>,  <45.541611, 32.949295, 32.687588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.703716, 33.265884, 32.504578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732032, 0.018845, 0.681010,
		0.547624, -0.610911, -0.571748,
		0.405262, 0.791475, -0.457526,
		45.825294, 33.503326, 32.367321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.197960, 32.935944, 32.935883>,  <45.541611, 32.949295, 32.687588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.197960, 32.935944, 32.935883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182198, 33.299126, 32.769001>,  <46.172741, 33.517036, 32.668873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182198, 33.299126, 32.769001>,  <46.197960, 32.935944, 32.935883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.182198, 33.299126, 32.769001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597300, 0.356122, 0.718617,
		0.801049, -0.220880, -0.556356,
		-0.039403, 0.907959, -0.417203,
		46.170376, 33.571514, 32.643841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.932323, 33.362061, 32.934441>,  <46.197960, 32.935944, 32.935883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.932323, 33.362061, 32.934441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.591076, 33.565033, 32.982933>,  <46.386326, 33.686817, 33.012028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.591076, 33.565033, 32.982933>,  <46.932323, 33.362061, 32.934441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.591076, 33.565033, 32.982933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412750, 0.514336, 0.751729,
		0.319098, 0.691353, -0.648234,
		-0.853120, 0.507433, 0.121232,
		46.335140, 33.717262, 33.019302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.128368, 34.090519, 32.814499>,  <46.932323, 33.362061, 32.934441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.128368, 34.090519, 32.814499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.816460, 34.051712, 33.061901>,  <46.629314, 34.028427, 33.210342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.816460, 34.051712, 33.061901>,  <47.128368, 34.090519, 32.814499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.816460, 34.051712, 33.061901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464281, 0.573153, 0.675233,
		-0.420008, 0.813685, -0.401883,
		-0.779767, -0.097016, 0.618507,
		46.582531, 34.022606, 33.247452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.763565, 34.720455, 33.028084>,  <47.128368, 34.090519, 32.814499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.763565, 34.720455, 33.028084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739491, 34.441875, 33.314114>,  <46.725044, 34.274727, 33.485733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739491, 34.441875, 33.314114>,  <46.763565, 34.720455, 33.028084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.739491, 34.441875, 33.314114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516188, 0.591434, 0.619480,
		-0.854358, 0.406400, 0.323902,
		-0.060190, -0.696452, 0.715075,
		46.721436, 34.232941, 33.528637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.553726, 35.144997, 33.659054>,  <46.763565, 34.720455, 33.028084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.553726, 35.144997, 33.659054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.732468, 34.811359, 33.788425>,  <46.839714, 34.611176, 33.866047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.732468, 34.811359, 33.788425>,  <46.553726, 35.144997, 33.659054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.732468, 34.811359, 33.788425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294417, 0.478503, 0.827257,
		-0.844772, -0.274442, 0.459394,
		0.446855, -0.834097, 0.323425,
		46.866524, 34.561131, 33.885452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.287376, 35.072014, 34.321949>,  <46.553726, 35.144997, 33.659054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.287376, 35.072014, 34.321949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.636185, 34.885792, 34.261513>,  <46.845470, 34.774059, 34.225250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.636185, 34.885792, 34.261513>,  <46.287376, 35.072014, 34.321949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.636185, 34.885792, 34.261513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353600, 0.385766, 0.852146,
		-0.338440, -0.796517, 0.501019,
		0.872024, -0.465560, -0.151090,
		46.897793, 34.746124, 34.216187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.506248, 34.788815, 34.980347>,  <46.287376, 35.072014, 34.321949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.506248, 34.788815, 34.980347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.836330, 34.844593, 34.761410>,  <47.034382, 34.878059, 34.630047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.836330, 34.844593, 34.761410>,  <46.506248, 34.788815, 34.980347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.836330, 34.844593, 34.761410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415315, 0.506972, 0.755310,
		0.382814, -0.850608, 0.360444,
		0.825207, 0.139445, -0.547346,
		47.083893, 34.886425, 34.597206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.158535, 34.686325, 35.442883>,  <46.506248, 34.788815, 34.980347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.158535, 34.686325, 35.442883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.226128, 34.911587, 35.119328>,  <47.266682, 35.046745, 34.925194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.226128, 34.911587, 35.119328>,  <47.158535, 34.686325, 35.442883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.226128, 34.911587, 35.119328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550302, 0.626954, 0.551450,
		0.817688, -0.538318, -0.203962,
		0.168980, 0.563154, -0.808890,
		47.276821, 35.080532, 34.876659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.880665, 34.717644, 35.137871>,  <47.158535, 34.686325, 35.442883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.880665, 34.717644, 35.137871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.659184, 35.050365, 35.122295>,  <47.526295, 35.249996, 35.112949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.659184, 35.050365, 35.122295>,  <47.880665, 34.717644, 35.137871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.659184, 35.050365, 35.122295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640889, 0.455548, 0.617849,
		0.531667, 0.317150, -0.785332,
		-0.553707, 0.831800, -0.038942,
		47.493073, 35.299904, 35.110611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.817699, 35.486519, 24.894804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.485149, 35.683582, 24.791962>,  <39.285618, 35.801819, 24.730257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.485149, 35.683582, 24.791962>,  <39.817699, 35.486519, 24.894804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485149, 35.683582, 24.791962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324072, -0.053978, 0.944491,
		0.451432, 0.868548, 0.204532,
		-0.831376, 0.492657, -0.257104,
		39.235737, 35.831379, 24.714830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747837, 36.027122, 25.453186>,  <39.817699, 35.486519, 24.894804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747837, 36.027122, 25.453186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.391758, 35.968594, 25.280609>,  <39.178112, 35.933475, 25.177063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.391758, 35.968594, 25.280609>,  <39.747837, 36.027122, 25.453186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391758, 35.968594, 25.280609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400414, -0.200429, 0.894146,
		-0.217309, 0.968719, 0.119830,
		-0.890194, -0.146324, -0.431444,
		39.124699, 35.924698, 25.151176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288662, 36.357971, 25.885529>,  <39.747837, 36.027122, 25.453186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288662, 36.357971, 25.885529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064301, 36.105579, 25.671144>,  <38.929684, 35.954144, 25.542515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064301, 36.105579, 25.671144>,  <39.288662, 36.357971, 25.885529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064301, 36.105579, 25.671144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372749, -0.385575, 0.844032,
		-0.739219, 0.673199, -0.018927,
		-0.560904, -0.630980, -0.535959,
		38.896030, 35.916286, 25.510357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583374, 36.431122, 26.150553>,  <39.288662, 36.357971, 25.885529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583374, 36.431122, 26.150553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.582962, 36.065613, 25.988060>,  <38.582714, 35.846310, 25.890564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.582962, 36.065613, 25.988060>,  <38.583374, 36.431122, 26.150553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582962, 36.065613, 25.988060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323286, -0.384114, 0.864837,
		-0.946301, 0.132221, -0.295013,
		-0.001031, -0.913769, -0.406232,
		38.582653, 35.791481, 25.866190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017933, 36.245258, 26.306913>,  <38.583374, 36.431122, 26.150553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017933, 36.245258, 26.306913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.215717, 35.903065, 26.245388>,  <38.334389, 35.697750, 26.208473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.215717, 35.903065, 26.245388>,  <38.017933, 36.245258, 26.306913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215717, 35.903065, 26.245388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418387, -0.389362, 0.820579,
		-0.761877, -0.341394, -0.550448,
		0.494464, -0.855481, -0.153811,
		38.364056, 35.646420, 26.199245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532452, 35.801346, 26.443470>,  <38.017933, 36.245258, 26.306913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532452, 35.801346, 26.443470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.867790, 35.588837, 26.492346>,  <38.068993, 35.461330, 26.521671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.867790, 35.588837, 26.492346>,  <37.532452, 35.801346, 26.443470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867790, 35.588837, 26.492346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430762, -0.508212, 0.745765,
		-0.334105, -0.677842, -0.654908,
		0.838342, -0.531273, 0.122192,
		38.119293, 35.429455, 26.529003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367397, 35.129570, 26.546499>,  <37.532452, 35.801346, 26.443470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367397, 35.129570, 26.546499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.737175, 35.140862, 26.698605>,  <37.959042, 35.147636, 26.789867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.737175, 35.140862, 26.698605>,  <37.367397, 35.129570, 26.546499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737175, 35.140862, 26.698605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302224, -0.553836, 0.775839,
		0.232507, -0.832147, -0.503460,
		0.924446, 0.028230, 0.380266,
		38.014507, 35.149330, 26.812685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377323, 34.466232, 26.860634>,  <37.367397, 35.129570, 26.546499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377323, 34.466232, 26.860634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711292, 34.635677, 27.001183>,  <37.911674, 34.737343, 27.085512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711292, 34.635677, 27.001183>,  <37.377323, 34.466232, 26.860634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711292, 34.635677, 27.001183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097283, -0.514788, 0.851780,
		0.541703, -0.745352, -0.388597,
		0.834921, 0.423608, 0.351372,
		37.961769, 34.762760, 27.106594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773338, 33.890549, 27.200720>,  <37.377323, 34.466232, 26.860634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773338, 33.890549, 27.200720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.883427, 34.235363, 27.370962>,  <37.949478, 34.442253, 27.473108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.883427, 34.235363, 27.370962>,  <37.773338, 33.890549, 27.200720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883427, 34.235363, 27.370962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043067, -0.431204, 0.901226,
		0.960416, -0.266366, -0.081550,
		0.275221, 0.862040, 0.425607,
		37.965992, 34.493977, 27.498644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227928, 33.598537, 27.674011>,  <37.773338, 33.890549, 27.200720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227928, 33.598537, 27.674011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.139832, 33.964867, 27.808336>,  <38.086975, 34.184662, 27.888931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.139832, 33.964867, 27.808336>,  <38.227928, 33.598537, 27.674011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139832, 33.964867, 27.808336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049952, -0.333223, 0.941524,
		0.974166, 0.224135, 0.027642,
		-0.220239, 0.915820, 0.335811,
		38.073761, 34.239613, 27.909081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786938, 33.859329, 28.107731>,  <38.227928, 33.598537, 27.674011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786938, 33.859329, 28.107731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.461082, 34.056751, 28.229567>,  <38.265572, 34.175205, 28.302668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.461082, 34.056751, 28.229567>,  <38.786938, 33.859329, 28.107731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461082, 34.056751, 28.229567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227797, -0.210685, 0.950642,
		0.533366, 0.843810, 0.059201,
		-0.814634, 0.493554, 0.304590,
		38.216694, 34.204819, 28.320944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976368, 34.285423, 28.749704>,  <38.786938, 33.859329, 28.107731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976368, 34.285423, 28.749704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576645, 34.299343, 28.755041>,  <38.336811, 34.307693, 28.758244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576645, 34.299343, 28.755041>,  <38.976368, 34.285423, 28.749704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576645, 34.299343, 28.755041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014538, 0.034315, 0.999305,
		0.034315, 0.998805, -0.034797,
		-0.999305, 0.034797, 0.013343,
		38.276852, 34.309784, 28.759045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779907, 34.821556, 29.255741>,  <38.976368, 34.285423, 28.749704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779907, 34.821556, 29.255741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.491055, 34.549202, 29.206886>,  <38.317741, 34.385788, 29.177574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.491055, 34.549202, 29.206886>,  <38.779907, 34.821556, 29.255741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491055, 34.549202, 29.206886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132867, -0.036751, 0.990452,
		-0.678872, 0.731469, -0.063928,
		-0.722135, -0.680884, -0.122137,
		38.274414, 34.344936, 29.170244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243320, 35.053467, 29.625998>,  <38.779907, 34.821556, 29.255741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243320, 35.053467, 29.625998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.150066, 34.665806, 29.594002>,  <38.094112, 34.433208, 29.574804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.150066, 34.665806, 29.594002>,  <38.243320, 35.053467, 29.625998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150066, 34.665806, 29.594002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351086, 0.007176, 0.936316,
		-0.906855, 0.246371, -0.341928,
		-0.233135, -0.969149, -0.079990,
		38.080128, 34.375061, 29.570005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638889, 34.985149, 30.017765>,  <38.243320, 35.053467, 29.625998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638889, 34.985149, 30.017765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.765732, 34.607296, 29.984032>,  <37.841839, 34.380585, 29.963793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.765732, 34.607296, 29.984032>,  <37.638889, 34.985149, 30.017765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765732, 34.607296, 29.984032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110460, -0.125102, 0.985976,
		-0.941936, -0.303342, -0.144015,
		0.317105, -0.944634, -0.084331,
		37.860863, 34.323906, 29.958733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260834, 34.644558, 30.490791>,  <37.638889, 34.985149, 30.017765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260834, 34.644558, 30.490791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532070, 34.363514, 30.404509>,  <37.694813, 34.194889, 30.352739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532070, 34.363514, 30.404509>,  <37.260834, 34.644558, 30.490791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532070, 34.363514, 30.404509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028655, -0.267990, 0.962995,
		-0.734417, -0.659182, -0.161589,
		0.678093, -0.702610, -0.215705,
		37.735497, 34.152733, 30.339796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097286, 34.065441, 30.882607>,  <37.260834, 34.644558, 30.490791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097286, 34.065441, 30.882607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.490372, 34.078388, 30.809689>,  <37.726223, 34.086155, 30.765938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.490372, 34.078388, 30.809689>,  <37.097286, 34.065441, 30.882607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490372, 34.078388, 30.809689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184664, -0.100561, 0.977643,
		0.013310, -0.994404, -0.104800,
		0.982711, 0.032365, -0.182292,
		37.785187, 34.088097, 30.755001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423496, 33.420547, 31.375244>,  <37.097286, 34.065441, 30.882607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423496, 33.420547, 31.375244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711529, 33.690594, 31.311106>,  <37.884346, 33.852623, 31.272623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711529, 33.690594, 31.311106>,  <37.423496, 33.420547, 31.375244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711529, 33.690594, 31.311106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273490, -0.063755, 0.959759,
		0.637724, -0.734953, -0.230545,
		0.720076, 0.675114, -0.160345,
		37.927551, 33.893127, 31.263002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962414, 33.080799, 31.643478>,  <37.423496, 33.420547, 31.375244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962414, 33.080799, 31.643478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.062321, 33.467731, 31.626064>,  <38.122265, 33.699890, 31.615616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.062321, 33.467731, 31.626064>,  <37.962414, 33.080799, 31.643478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062321, 33.467731, 31.626064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340906, -0.045765, 0.938983,
		0.906311, -0.249367, -0.341199,
		0.249766, 0.967327, -0.043534,
		38.137249, 33.757931, 31.613005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652039, 33.232014, 32.006920>,  <37.962414, 33.080799, 31.643478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652039, 33.232014, 32.006920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.540913, 33.615860, 31.989214>,  <38.474236, 33.846169, 31.978590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.540913, 33.615860, 31.989214>,  <38.652039, 33.232014, 32.006920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540913, 33.615860, 31.989214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153583, 0.089860, 0.984041,
		0.948277, 0.266586, -0.172345,
		-0.277818, 0.959613, -0.044269,
		38.457565, 33.903744, 31.975933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127209, 33.539352, 32.348389>,  <38.652039, 33.232014, 32.006920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127209, 33.539352, 32.348389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.841393, 33.819126, 32.342541>,  <38.669903, 33.986992, 32.339031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.841393, 33.819126, 32.342541>,  <39.127209, 33.539352, 32.348389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841393, 33.819126, 32.342541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174159, 0.198077, 0.964590,
		0.677565, 0.686698, -0.263348,
		-0.714545, 0.699437, -0.014615,
		38.627029, 34.028957, 32.338158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489441, 34.074902, 32.657856>,  <39.127209, 33.539352, 32.348389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489441, 34.074902, 32.657856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.103222, 34.167217, 32.705952>,  <38.871490, 34.222607, 32.734810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.103222, 34.167217, 32.705952>,  <39.489441, 34.074902, 32.657856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103222, 34.167217, 32.705952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180296, 0.260069, 0.948608,
		0.187656, 0.937604, -0.292719,
		-0.965546, 0.230788, 0.120243,
		38.813557, 34.236454, 32.742023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305107, 33.821602, 32.895409>,  <39.489441, 34.074902, 32.657856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305107, 33.821602, 32.895409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.630726, 33.976982, 33.068119>,  <40.826096, 34.070210, 33.171745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.630726, 33.976982, 33.068119>,  <40.305107, 33.821602, 32.895409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630726, 33.976982, 33.068119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208585, 0.498288, -0.841547,
		-0.542050, 0.775122, 0.324605,
		0.814048, 0.388453, 0.431776,
		40.874939, 34.093517, 33.197651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327206, 34.599831, 32.782326>,  <40.305107, 33.821602, 32.895409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327206, 34.599831, 32.782326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.704906, 34.520115, 32.887146>,  <40.931526, 34.472286, 32.950039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.704906, 34.520115, 32.887146>,  <40.327206, 34.599831, 32.782326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704906, 34.520115, 32.887146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323635, 0.415888, -0.849881,
		0.060386, 0.887312, 0.457200,
		0.944253, -0.199286, 0.262051,
		40.988182, 34.460327, 32.965763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678493, 35.237434, 32.615307>,  <40.327206, 34.599831, 32.782326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678493, 35.237434, 32.615307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.976158, 34.973427, 32.656483>,  <41.154758, 34.815022, 32.681187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.976158, 34.973427, 32.656483>,  <40.678493, 35.237434, 32.615307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976158, 34.973427, 32.656483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418120, 0.340054, -0.842342,
		0.520959, 0.669879, 0.529023,
		0.744163, -0.660020, 0.102935,
		41.199406, 34.775421, 32.687363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265038, 35.587360, 32.599274>,  <40.678493, 35.237434, 32.615307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265038, 35.587360, 32.599274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.420544, 35.230820, 32.506023>,  <41.513847, 35.016895, 32.450073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.420544, 35.230820, 32.506023>,  <41.265038, 35.587360, 32.599274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420544, 35.230820, 32.506023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556525, 0.428840, -0.711601,
		0.734263, 0.146906, 0.662780,
		0.388765, -0.891356, -0.233124,
		41.537174, 34.963413, 32.436085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942474, 35.777607, 32.369633>,  <41.265038, 35.587360, 32.599274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942474, 35.777607, 32.369633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.838852, 35.423935, 32.214138>,  <41.776680, 35.211731, 32.120842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.838852, 35.423935, 32.214138>,  <41.942474, 35.777607, 32.369633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838852, 35.423935, 32.214138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339329, 0.293508, -0.893705,
		0.904293, -0.363430, 0.223993,
		-0.259055, -0.884178, -0.388740,
		41.761135, 35.158680, 32.097515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515331, 35.552151, 31.906731>,  <41.942474, 35.777607, 32.369633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515331, 35.552151, 31.906731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.181942, 35.364262, 31.790331>,  <41.981907, 35.251526, 31.720491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.181942, 35.364262, 31.790331>,  <42.515331, 35.552151, 31.906731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181942, 35.364262, 31.790331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250043, 0.149010, -0.956700,
		0.492748, -0.870146, -0.006744,
		-0.833473, -0.469725, -0.290998,
		41.931900, 35.223343, 31.703032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787018, 35.137436, 31.422998>,  <42.515331, 35.552151, 31.906731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787018, 35.137436, 31.422998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.395355, 35.167839, 31.347654>,  <42.160358, 35.186081, 31.302448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.395355, 35.167839, 31.347654>,  <42.787018, 35.137436, 31.422998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395355, 35.167839, 31.347654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202888, 0.321554, -0.924900,
		-0.009736, -0.943835, -0.330272,
		-0.979154, 0.076013, -0.188362,
		42.101608, 35.190643, 31.291145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752934, 34.937656, 30.747955>,  <42.787018, 35.137436, 31.422998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752934, 34.937656, 30.747955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.395329, 35.114193, 30.778820>,  <42.180763, 35.220116, 30.797338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.395329, 35.114193, 30.778820>,  <42.752934, 34.937656, 30.747955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395329, 35.114193, 30.778820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033475, 0.237543, -0.970800,
		-0.446786, -0.865326, -0.227141,
		-0.894014, 0.441343, 0.077164,
		42.127125, 35.246597, 30.801970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353035, 34.684696, 30.191254>,  <42.752934, 34.937656, 30.747955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353035, 34.684696, 30.191254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.180107, 35.033543, 30.282911>,  <42.076351, 35.242851, 30.337906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.180107, 35.033543, 30.282911>,  <42.353035, 34.684696, 30.191254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180107, 35.033543, 30.282911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158065, 0.176887, -0.971456,
		-0.887757, -0.456201, 0.061379,
		-0.432322, 0.872119, 0.229143,
		42.050411, 35.295177, 30.351654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911400, 34.731422, 29.612486>,  <42.353035, 34.684696, 30.191254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911400, 34.731422, 29.612486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.901760, 35.090977, 29.787497>,  <41.895977, 35.306709, 29.892504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.901760, 35.090977, 29.787497>,  <41.911400, 34.731422, 29.612486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901760, 35.090977, 29.787497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115020, 0.432255, -0.894386,
		-0.993071, -0.071875, 0.092974,
		-0.024095, 0.898882, 0.437526,
		41.894531, 35.360641, 29.918755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245674, 35.169853, 29.346071>,  <41.911400, 34.731422, 29.612486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245674, 35.169853, 29.346071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.519283, 35.429394, 29.479406>,  <41.683449, 35.585117, 29.559408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.519283, 35.429394, 29.479406>,  <41.245674, 35.169853, 29.346071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519283, 35.429394, 29.479406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051258, 0.498587, -0.865323,
		-0.727660, 0.574812, 0.374302,
		0.684020, 0.648847, 0.333339,
		41.724487, 35.624046, 29.579409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003170, 35.916870, 29.133759>,  <41.245674, 35.169853, 29.346071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003170, 35.916870, 29.133759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.395802, 35.900639, 29.208433>,  <41.631382, 35.890900, 29.253237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.395802, 35.900639, 29.208433>,  <41.003170, 35.916870, 29.133759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395802, 35.900639, 29.208433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176825, 0.562906, -0.807385,
		-0.072325, 0.825525, 0.559713,
		0.981581, -0.040577, 0.186685,
		41.690277, 35.888466, 29.264439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252209, 36.616936, 29.324205>,  <41.003170, 35.916870, 29.133759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252209, 36.616936, 29.324205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.526672, 36.384621, 29.148991>,  <41.691349, 36.245232, 29.043861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.526672, 36.384621, 29.148991>,  <41.252209, 36.616936, 29.324205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526672, 36.384621, 29.148991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006192, 0.606796, -0.794833,
		0.727426, 0.542669, 0.419954,
		0.686158, -0.580783, -0.438039,
		41.732521, 36.210384, 29.017578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724953, 37.120777, 28.925352>,  <41.252209, 36.616936, 29.324205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724953, 37.120777, 28.925352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.848488, 36.761086, 28.801414>,  <41.922611, 36.545269, 28.727051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.848488, 36.761086, 28.801414>,  <41.724953, 37.120777, 28.925352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848488, 36.761086, 28.801414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199732, 0.379825, -0.903239,
		0.929906, 0.217070, 0.296910,
		0.308840, -0.899229, -0.309845,
		41.941139, 36.491318, 28.708462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312237, 37.353703, 28.522856>,  <41.724953, 37.120777, 28.925352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312237, 37.353703, 28.522856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.241497, 36.974598, 28.416666>,  <42.199055, 36.747135, 28.352951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.241497, 36.974598, 28.416666>,  <42.312237, 37.353703, 28.522856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241497, 36.974598, 28.416666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275922, 0.211171, -0.937696,
		0.944771, -0.239082, 0.224162,
		-0.176849, -0.947759, -0.265476,
		42.188442, 36.690269, 28.337023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877384, 37.113255, 28.135820>,  <42.312237, 37.353703, 28.522856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877384, 37.113255, 28.135820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.576385, 36.869198, 28.036646>,  <42.395786, 36.722763, 27.977142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.576385, 36.869198, 28.036646>,  <42.877384, 37.113255, 28.135820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576385, 36.869198, 28.036646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145475, 0.213172, -0.966124,
		0.642328, -0.763074, -0.071650,
		-0.752497, -0.610145, -0.247934,
		42.350636, 36.686153, 27.962265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039566, 36.823990, 27.505033>,  <42.877384, 37.113255, 28.135820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039566, 36.823990, 27.505033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.655136, 36.713490, 27.502974>,  <42.424480, 36.647190, 27.501738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.655136, 36.713490, 27.502974>,  <43.039566, 36.823990, 27.505033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655136, 36.713490, 27.502974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017280, -0.041493, -0.998989,
		0.275762, -0.960188, 0.044652,
		-0.961070, -0.276254, -0.005150,
		42.366814, 36.630611, 27.501429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970089, 36.199524, 27.125332>,  <43.039566, 36.823990, 27.505033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970089, 36.199524, 27.125332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.621834, 36.392551, 27.087147>,  <42.412880, 36.508366, 27.064236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.621834, 36.392551, 27.087147>,  <42.970089, 36.199524, 27.125332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621834, 36.392551, 27.087147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022596, -0.154629, -0.987714,
		-0.491400, -0.862101, 0.123723,
		-0.870641, 0.482567, -0.095465,
		42.360641, 36.537323, 27.058508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.929642, 35.623634, 26.461773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.932858, 36.019573, 26.518534>,  <41.934788, 36.257137, 26.552589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.932858, 36.019573, 26.518534>,  <41.929642, 35.623634, 26.461773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932858, 36.019573, 26.518534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147185, 0.141533, -0.978931,
		-0.989076, -0.013017, 0.146829,
		0.008038, 0.989848, 0.141903,
		41.935268, 36.316528, 26.561104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411991, 35.854996, 26.018232>,  <41.929642, 35.623634, 26.461773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411991, 35.854996, 26.018232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.621857, 36.185833, 26.098879>,  <41.747776, 36.384335, 26.147266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.621857, 36.185833, 26.098879>,  <41.411991, 35.854996, 26.018232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621857, 36.185833, 26.098879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110613, 0.301057, -0.947169,
		-0.844092, 0.474645, 0.249440,
		0.524665, 0.827089, 0.201618,
		41.779255, 36.433960, 26.159365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034313, 36.444427, 25.607872>,  <41.411991, 35.854996, 26.018232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034313, 36.444427, 25.607872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.409924, 36.553608, 25.691525>,  <41.635288, 36.619114, 25.741716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.409924, 36.553608, 25.691525>,  <41.034313, 36.444427, 25.607872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409924, 36.553608, 25.691525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107349, 0.345089, -0.932411,
		-0.326668, 0.898005, 0.294745,
		0.939023, 0.272948, 0.209129,
		41.691631, 36.635494, 25.754263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089294, 37.126667, 25.338774>,  <41.034313, 36.444427, 25.607872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089294, 37.126667, 25.338774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.464619, 36.989258, 25.354574>,  <41.689812, 36.906811, 25.364054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.464619, 36.989258, 25.354574>,  <41.089294, 37.126667, 25.338774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464619, 36.989258, 25.354574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132492, 0.251654, -0.958705,
		0.319401, 0.904798, 0.281645,
		0.938312, -0.343527, 0.039500,
		41.746113, 36.886200, 25.366425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413395, 37.673306, 25.098488>,  <41.089294, 37.126667, 25.338774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413395, 37.673306, 25.098488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.686852, 37.382866, 25.069048>,  <41.850925, 37.208603, 25.051384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.686852, 37.382866, 25.069048>,  <41.413395, 37.673306, 25.098488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686852, 37.382866, 25.069048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276707, 0.351197, -0.894480,
		0.675329, 0.591136, 0.441009,
		0.683640, -0.726099, -0.073602,
		41.891945, 37.165035, 25.046967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098213, 38.023319, 24.932663>,  <41.413395, 37.673306, 25.098488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098213, 38.023319, 24.932663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.093426, 37.635838, 24.833496>,  <42.090553, 37.403347, 24.773996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.093426, 37.635838, 24.833496>,  <42.098213, 38.023319, 24.932663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093426, 37.635838, 24.833496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211574, 0.239869, -0.947470,
		0.977289, -0.063791, 0.202082,
		-0.011966, -0.968707, -0.247918,
		42.089836, 37.345226, 24.759121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653992, 37.926052, 24.515369>,  <42.098213, 38.023319, 24.932663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.653992, 37.926052, 24.515369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.420864, 37.611641, 24.432936>,  <42.280987, 37.422993, 24.383474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.420864, 37.611641, 24.432936>,  <42.653992, 37.926052, 24.515369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420864, 37.611641, 24.432936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268584, 0.053020, -0.961796,
		0.766929, -0.615908, 0.180214,
		-0.582823, -0.786032, -0.206086,
		42.246017, 37.375832, 24.371109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096519, 37.519253, 24.207382>,  <42.653992, 37.926052, 24.515369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096519, 37.519253, 24.207382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.737202, 37.382053, 24.097536>,  <42.521610, 37.299732, 24.031628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.737202, 37.382053, 24.097536>,  <43.096519, 37.519253, 24.207382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737202, 37.382053, 24.097536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301633, -0.026924, -0.953044,
		0.319503, -0.938948, 0.127647,
		-0.898296, -0.343003, -0.274615,
		42.467712, 37.279152, 24.015152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206036, 37.006500, 23.629986>,  <43.096519, 37.519253, 24.207382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206036, 37.006500, 23.629986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.826748, 37.128624, 23.594973>,  <42.599174, 37.201900, 23.573965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.826748, 37.128624, 23.594973>,  <43.206036, 37.006500, 23.629986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826748, 37.128624, 23.594973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121106, 0.092773, -0.988295,
		-0.293619, -0.947722, -0.124945,
		-0.948220, 0.305314, -0.087535,
		42.542282, 37.220219, 23.568712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060009, 36.843769, 22.998083>,  <43.206036, 37.006500, 23.629986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060009, 36.843769, 22.998083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.758118, 37.089714, 23.089581>,  <42.576984, 37.237282, 23.144478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.758118, 37.089714, 23.089581>,  <43.060009, 36.843769, 22.998083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758118, 37.089714, 23.089581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182736, 0.137839, -0.973451,
		-0.630073, -0.776491, 0.008328,
		-0.754729, 0.614867, 0.228742,
		42.531700, 37.274174, 23.158203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433880, 36.737843, 22.499340>,  <43.060009, 36.843769, 22.998083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433880, 36.737843, 22.499340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.376034, 37.099262, 22.660675>,  <42.341328, 37.316116, 22.757477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.376034, 37.099262, 22.660675>,  <42.433880, 36.737843, 22.499340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376034, 37.099262, 22.660675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296079, 0.349435, -0.888950,
		-0.944153, -0.247974, 0.216990,
		-0.144612, 0.903551, 0.403340,
		42.332649, 37.370327, 22.781677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760658, 37.061237, 22.185020>,  <42.433880, 36.737843, 22.499340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760658, 37.061237, 22.185020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.996952, 37.356949, 22.314331>,  <42.138729, 37.534374, 22.391916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.996952, 37.356949, 22.314331>,  <41.760658, 37.061237, 22.185020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996952, 37.356949, 22.314331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110439, 0.470966, -0.875211,
		-0.799273, 0.481315, 0.359860,
		0.590734, 0.739275, 0.323275,
		42.174171, 37.578732, 22.411314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343792, 37.728176, 22.052626>,  <41.760658, 37.061237, 22.185020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343792, 37.728176, 22.052626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.732483, 37.818104, 22.081453>,  <41.965698, 37.872063, 22.098751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.732483, 37.818104, 22.081453>,  <41.343792, 37.728176, 22.052626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732483, 37.818104, 22.081453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104426, 0.683070, -0.722849,
		-0.211743, 0.694888, 0.687237,
		0.971730, 0.224823, 0.072071,
		42.024002, 37.885551, 22.103075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367931, 38.426533, 21.981304>,  <41.343792, 37.728176, 22.052626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367931, 38.426533, 21.981304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.735180, 38.294155, 21.894098>,  <41.955528, 38.214729, 21.841774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.735180, 38.294155, 21.894098>,  <41.367931, 38.426533, 21.981304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735180, 38.294155, 21.894098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138304, 0.783108, -0.606312,
		0.371386, 0.526515, 0.764758,
		0.918120, -0.330944, -0.218016,
		42.010616, 38.194870, 21.828693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712242, 38.988575, 21.969967>,  <41.367931, 38.426533, 21.981304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712242, 38.988575, 21.969967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.933327, 38.718452, 21.774633>,  <42.065979, 38.556377, 21.657434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.933327, 38.718452, 21.774633>,  <41.712242, 38.988575, 21.969967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933327, 38.718452, 21.774633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141693, 0.653590, -0.743467,
		0.821239, 0.341729, 0.456934,
		0.552712, -0.675308, -0.488333,
		42.099140, 38.515862, 21.628134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336639, 39.281609, 21.906710>,  <41.712242, 38.988575, 21.969967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336639, 39.281609, 21.906710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.338020, 38.996391, 21.626263>,  <42.338848, 38.825260, 21.457994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.338020, 38.996391, 21.626263>,  <42.336639, 39.281609, 21.906710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338020, 38.996391, 21.626263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268560, 0.676023, -0.686198,
		0.963257, -0.185925, 0.193826,
		0.003449, -0.713039, -0.701116,
		42.339054, 38.782478, 21.415928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973064, 39.400890, 21.573444>,  <42.336639, 39.281609, 21.906710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973064, 39.400890, 21.573444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.786339, 39.153446, 21.320648>,  <42.674305, 39.004982, 21.168970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.786339, 39.153446, 21.320648>,  <42.973064, 39.400890, 21.573444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786339, 39.153446, 21.320648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367842, 0.514060, -0.774877,
		0.804227, -0.594193, -0.012418,
		-0.466810, -0.618608, -0.631990,
		42.646297, 38.967865, 21.131050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440063, 39.368561, 21.067516>,  <42.973064, 39.400890, 21.573444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440063, 39.368561, 21.067516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.096256, 39.246418, 20.903570>,  <42.889973, 39.173134, 20.805202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.096256, 39.246418, 20.903570>,  <43.440063, 39.368561, 21.067516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096256, 39.246418, 20.903570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225688, 0.492748, -0.840395,
		0.458577, -0.814836, -0.354611,
		-0.859519, -0.305355, -0.409862,
		42.838402, 39.154812, 20.780611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679153, 39.283745, 20.419119>,  <43.440063, 39.368561, 21.067516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679153, 39.283745, 20.419119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.282333, 39.332489, 20.406569>,  <43.044243, 39.361736, 20.399038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.282333, 39.332489, 20.406569>,  <43.679153, 39.283745, 20.419119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282333, 39.332489, 20.406569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100628, 0.618584, -0.779249,
		-0.075552, -0.776212, -0.625929,
		-0.992051, 0.121859, -0.031373,
		42.984718, 39.369045, 20.397156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519825, 39.115540, 19.754725>,  <43.679153, 39.283745, 20.419119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519825, 39.115540, 19.754725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.188274, 39.307121, 19.870356>,  <42.989346, 39.422070, 19.939734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.188274, 39.307121, 19.870356>,  <43.519825, 39.115540, 19.754725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188274, 39.307121, 19.870356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101404, 0.636802, -0.764330,
		-0.550166, -0.604221, -0.576398,
		-0.828875, 0.478958, 0.289076,
		42.939613, 39.450809, 19.957079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102695, 39.187176, 19.116930>,  <43.519825, 39.115540, 19.754725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102695, 39.187176, 19.116930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.984894, 39.466858, 19.377506>,  <42.914211, 39.634666, 19.533852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.984894, 39.466858, 19.377506>,  <43.102695, 39.187176, 19.116930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984894, 39.466858, 19.377506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066600, 0.695032, -0.715887,
		-0.953326, -0.167448, -0.251259,
		-0.294507, 0.699207, 0.651441,
		42.896542, 39.676620, 19.572939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639622, 39.563885, 18.741863>,  <43.102695, 39.187176, 19.116930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639622, 39.563885, 18.741863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.721687, 39.799458, 19.054546>,  <42.770927, 39.940800, 19.242157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.721687, 39.799458, 19.054546>,  <42.639622, 39.563885, 18.741863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721687, 39.799458, 19.054546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126897, 0.775949, -0.617900,
		-0.970467, 0.225966, 0.084461,
		0.205162, 0.588933, 0.781707,
		42.783237, 39.976139, 19.289059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260269, 40.096775, 18.649422>,  <42.639622, 39.563885, 18.741863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260269, 40.096775, 18.649422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.570606, 40.239338, 18.857668>,  <42.756809, 40.324875, 18.982615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.570606, 40.239338, 18.857668>,  <42.260269, 40.096775, 18.649422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570606, 40.239338, 18.857668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019067, 0.811539, -0.583987,
		-0.630636, 0.463010, 0.622832,
		0.775844, 0.356408, 0.520614,
		42.803360, 40.346260, 19.013851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118858, 40.730000, 18.846855>,  <42.260269, 40.096775, 18.649422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118858, 40.730000, 18.846855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.515717, 40.690960, 18.815565>,  <42.753830, 40.667538, 18.796791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.515717, 40.690960, 18.815565>,  <42.118858, 40.730000, 18.846855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515717, 40.690960, 18.815565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030357, 0.794610, -0.606361,
		0.121337, 0.599224, 0.791333,
		0.992147, -0.097596, -0.078225,
		42.813362, 40.661682, 18.792097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408466, 40.824551, 18.779804>,  <42.118858, 40.730000, 18.846855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408466, 40.824551, 18.779804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.053226, 40.849720, 18.597677>,  <40.840080, 40.864822, 18.488401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.053226, 40.849720, 18.597677>,  <41.408466, 40.824551, 18.779804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053226, 40.849720, 18.597677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454489, -0.268159, 0.849430,
		-0.068652, 0.961318, 0.266748,
		-0.888103, 0.062919, -0.455318,
		40.786797, 40.868595, 18.461082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959354, 41.227692, 19.167143>,  <41.408466, 40.824551, 18.779804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959354, 41.227692, 19.167143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.735043, 40.963531, 18.967384>,  <40.600456, 40.805035, 18.847528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.735043, 40.963531, 18.967384>,  <40.959354, 41.227692, 19.167143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735043, 40.963531, 18.967384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446783, -0.266445, 0.854045,
		-0.697070, 0.702056, -0.145636,
		-0.560783, -0.660397, -0.499397,
		40.566807, 40.765411, 18.817566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263790, 41.353180, 19.421997>,  <40.959354, 41.227692, 19.167143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263790, 41.353180, 19.421997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.285336, 40.976437, 19.289330>,  <40.298264, 40.750393, 19.209728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.285336, 40.976437, 19.289330>,  <40.263790, 41.353180, 19.421997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285336, 40.976437, 19.289330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352791, -0.328683, 0.876074,
		-0.934150, 0.069818, -0.349983,
		0.053867, -0.941856, -0.331670,
		40.301495, 40.693878, 19.189829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548840, 41.016376, 19.588587>,  <40.263790, 41.353180, 19.421997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548840, 41.016376, 19.588587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.777092, 40.695461, 19.518480>,  <39.914043, 40.502914, 19.476416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.777092, 40.695461, 19.518480>,  <39.548840, 41.016376, 19.588587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777092, 40.695461, 19.518480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426219, -0.471772, 0.771861,
		-0.701939, -0.365746, -0.611157,
		0.570631, -0.802285, -0.175267,
		39.948280, 40.454777, 19.465900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124207, 40.372742, 19.833523>,  <39.548840, 41.016376, 19.588587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124207, 40.372742, 19.833523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.503593, 40.246910, 19.818295>,  <39.731224, 40.171410, 19.809158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.503593, 40.246910, 19.818295>,  <39.124207, 40.372742, 19.833523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503593, 40.246910, 19.818295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181432, -0.637621, 0.748680,
		-0.259794, -0.703191, -0.661838,
		0.948467, -0.314581, -0.038069,
		39.788132, 40.152534, 19.806873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050056, 39.657043, 19.788004>,  <39.124207, 40.372742, 19.833523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050056, 39.657043, 19.788004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.420727, 39.722591, 19.923306>,  <39.643127, 39.761921, 20.004486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.420727, 39.722591, 19.923306>,  <39.050056, 39.657043, 19.788004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420727, 39.722591, 19.923306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180962, -0.594266, 0.783646,
		0.329427, -0.787399, -0.521039,
		0.926677, 0.163866, 0.338256,
		39.698730, 39.771751, 20.024782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278488, 39.081764, 19.996918>,  <39.050056, 39.657043, 19.788004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278488, 39.081764, 19.996918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.549149, 39.297657, 20.197254>,  <39.711544, 39.427193, 20.317455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.549149, 39.297657, 20.197254>,  <39.278488, 39.081764, 19.996918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549149, 39.297657, 20.197254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157199, -0.558631, 0.814383,
		0.719330, -0.629782, -0.293152,
		0.676648, 0.539727, 0.500841,
		39.752144, 39.459576, 20.347506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781193, 38.615803, 20.277117>,  <39.278488, 39.081764, 19.996918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781193, 38.615803, 20.277117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.775101, 38.936348, 20.516308>,  <39.771446, 39.128677, 20.659822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.775101, 38.936348, 20.516308>,  <39.781193, 38.615803, 20.277117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775101, 38.936348, 20.516308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059220, -0.597722, 0.799513,
		0.998129, -0.023235, 0.056561,
		-0.015231, 0.801367, 0.597980,
		39.770531, 39.176758, 20.695702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202515, 38.425854, 20.799337>,  <39.781193, 38.615803, 20.277117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202515, 38.425854, 20.799337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.977970, 38.713856, 20.962538>,  <39.843243, 38.886658, 21.060457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.977970, 38.713856, 20.962538>,  <40.202515, 38.425854, 20.799337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977970, 38.713856, 20.962538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183173, -0.588883, 0.787188,
		0.807045, 0.367161, 0.462461,
		-0.561361, 0.720007, 0.408001,
		39.809563, 38.929859, 21.084938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628441, 38.639561, 21.367361>,  <40.202515, 38.425854, 20.799337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628441, 38.639561, 21.367361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.256344, 38.752937, 21.460579>,  <40.033085, 38.820965, 21.516510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.256344, 38.752937, 21.460579>,  <40.628441, 38.639561, 21.367361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256344, 38.752937, 21.460579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039602, -0.553832, 0.831686,
		0.364802, 0.782899, 0.503973,
		-0.930242, 0.283443, 0.233043,
		39.977272, 38.837971, 21.530493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681469, 38.604130, 22.079535>,  <40.628441, 38.639561, 21.367361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681469, 38.604130, 22.079535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.287750, 38.609489, 22.009132>,  <40.051517, 38.612705, 21.966890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.287750, 38.609489, 22.009132>,  <40.681469, 38.604130, 22.079535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287750, 38.609489, 22.009132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144084, -0.636970, 0.757304,
		-0.101967, 0.770772, 0.628898,
		-0.984298, 0.013395, -0.176006,
		39.992462, 38.613506, 21.956331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471462, 38.824646, 22.677681>,  <40.681469, 38.604130, 22.079535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471462, 38.824646, 22.677681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.203846, 38.599911, 22.483065>,  <40.043274, 38.465069, 22.366295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.203846, 38.599911, 22.483065>,  <40.471462, 38.824646, 22.677681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203846, 38.599911, 22.483065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123270, -0.561684, 0.818117,
		-0.732930, 0.607331, 0.306534,
		-0.669043, -0.561836, -0.486541,
		40.003132, 38.431358, 22.337103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994057, 38.576389, 23.137726>,  <40.471462, 38.824646, 22.677681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994057, 38.576389, 23.137726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.894794, 38.331604, 22.837347>,  <39.835239, 38.184734, 22.657120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.894794, 38.331604, 22.837347>,  <39.994057, 38.576389, 23.137726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894794, 38.331604, 22.837347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178270, -0.733109, 0.656332,
		-0.952176, 0.296743, 0.072829,
		-0.248153, -0.611960, -0.750949,
		39.820347, 38.148014, 22.612062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336288, 38.241554, 23.356846>,  <39.994057, 38.576389, 23.137726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336288, 38.241554, 23.356846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.515629, 38.007511, 23.086550>,  <39.623234, 37.867085, 22.924372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.515629, 38.007511, 23.086550>,  <39.336288, 38.241554, 23.356846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515629, 38.007511, 23.086550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232198, -0.806273, 0.544067,
		-0.863170, -0.087029, -0.497356,
		0.448354, -0.585107, -0.675742,
		39.650135, 37.831978, 22.883827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854889, 37.750206, 23.313236>,  <39.336288, 38.241554, 23.356846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854889, 37.750206, 23.313236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192982, 37.598892, 23.162247>,  <39.395836, 37.508106, 23.071653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192982, 37.598892, 23.162247>,  <38.854889, 37.750206, 23.313236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192982, 37.598892, 23.162247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182340, -0.868106, 0.461675,
		-0.502329, -0.321394, -0.802727,
		0.845232, -0.378282, -0.377472,
		39.446552, 37.485409, 23.049006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649300, 37.172157, 23.249630>,  <38.854889, 37.750206, 23.313236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649300, 37.172157, 23.249630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044033, 37.127182, 23.203114>,  <39.280872, 37.100197, 23.175203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044033, 37.127182, 23.203114>,  <38.649300, 37.172157, 23.249630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044033, 37.127182, 23.203114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037665, -0.858868, 0.510810,
		-0.157312, -0.499703, -0.851792,
		0.986830, -0.112439, -0.116289,
		39.340084, 37.093449, 23.168226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757935, 36.511383, 23.041353>,  <38.649300, 37.172157, 23.249630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757935, 36.511383, 23.041353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.108635, 36.617493, 23.201824>,  <39.319054, 36.681156, 23.298107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.108635, 36.617493, 23.201824>,  <38.757935, 36.511383, 23.041353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108635, 36.617493, 23.201824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058218, -0.769467, 0.636028,
		0.477412, -0.580992, -0.659185,
		0.876748, 0.265271, 0.401177,
		39.371658, 36.697075, 23.322178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064304, 35.856174, 23.051441>,  <38.757935, 36.511383, 23.041353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064304, 35.856174, 23.051441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.214363, 36.112354, 23.319498>,  <39.304398, 36.266060, 23.480331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.214363, 36.112354, 23.319498>,  <39.064304, 35.856174, 23.051441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214363, 36.112354, 23.319498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236301, -0.632985, 0.737219,
		0.896339, -0.434923, -0.086126,
		0.375150, 0.640446, 0.670142,
		39.326908, 36.304489, 23.520540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239624, 35.419971, 23.453247>,  <39.064304, 35.856174, 23.051441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239624, 35.419971, 23.453247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.244602, 35.753872, 23.673439>,  <39.247589, 35.954212, 23.805555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.244602, 35.753872, 23.673439>,  <39.239624, 35.419971, 23.453247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244602, 35.753872, 23.673439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164365, -0.541327, 0.824591,
		0.986321, -0.100744, 0.130466,
		0.012448, 0.834755, 0.550481,
		39.248337, 36.004299, 23.838583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650856, 35.233761, 24.090717>,  <39.239624, 35.419971, 23.453247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650856, 35.233761, 24.090717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.442860, 35.568214, 24.160566>,  <39.318062, 35.768887, 24.202475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.442860, 35.568214, 24.160566>,  <39.650856, 35.233761, 24.090717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442860, 35.568214, 24.160566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201677, -0.318834, 0.926106,
		0.830022, 0.446349, 0.334419,
		-0.519991, 0.836132, 0.174621,
		39.286861, 35.819054, 24.212954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.981586, 35.939548, 29.405466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.582844, 35.926743, 29.376476>,  <42.343597, 35.919060, 29.359081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.582844, 35.926743, 29.376476>,  <42.981586, 35.939548, 29.405466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582844, 35.926743, 29.376476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065014, -0.192306, 0.979179,
		-0.045285, 0.980813, 0.189621,
		-0.996856, -0.032014, -0.072476,
		42.283787, 35.917137, 29.354734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678226, 36.306622, 29.962330>,  <42.981586, 35.939548, 29.405466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678226, 36.306622, 29.962330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.371971, 36.074421, 29.851467>,  <42.188217, 35.935101, 29.784948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.371971, 36.074421, 29.851467>,  <42.678226, 36.306622, 29.962330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371971, 36.074421, 29.851467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228960, -0.156721, 0.960737,
		-0.601142, 0.799038, -0.012918,
		-0.765641, -0.580497, -0.277159,
		42.142281, 35.900272, 29.768320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182285, 36.563660, 30.375353>,  <42.678226, 36.306622, 29.962330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182285, 36.563660, 30.375353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.069668, 36.200409, 30.251392>,  <42.002098, 35.982460, 30.177015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.069668, 36.200409, 30.251392>,  <42.182285, 36.563660, 30.375353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069668, 36.200409, 30.251392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306576, -0.220905, 0.925858,
		-0.909255, 0.355677, -0.216216,
		-0.281543, -0.908127, -0.309901,
		41.985207, 35.927971, 30.158422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506180, 36.384331, 30.718777>,  <42.182285, 36.563660, 30.375353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506180, 36.384331, 30.718777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.712318, 36.059071, 30.610556>,  <41.836002, 35.863914, 30.545624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.712318, 36.059071, 30.610556>,  <41.506180, 36.384331, 30.718777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712318, 36.059071, 30.610556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081283, -0.360661, 0.929148,
		-0.853116, -0.456846, -0.251962,
		0.515351, -0.813152, -0.270551,
		41.866924, 35.815125, 30.529390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016476, 35.802643, 31.031513>,  <41.506180, 36.384331, 30.718777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016476, 35.802643, 31.031513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.384193, 35.664268, 30.956440>,  <41.604824, 35.581245, 30.911396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.384193, 35.664268, 30.956440>,  <41.016476, 35.802643, 31.031513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384193, 35.664268, 30.956440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007787, -0.492770, 0.870125,
		-0.393488, -0.798442, -0.455695,
		0.919297, -0.345932, -0.187682,
		41.659981, 35.560490, 30.900135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821430, 35.086842, 30.986807>,  <41.016476, 35.802643, 31.031513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821430, 35.086842, 30.986807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.202496, 35.147327, 31.092308>,  <41.431133, 35.183617, 31.155609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.202496, 35.147327, 31.092308>,  <40.821430, 35.086842, 30.986807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202496, 35.147327, 31.092308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093699, -0.679283, 0.727871,
		0.289225, -0.718130, -0.632960,
		0.952664, 0.151211, 0.263753,
		41.488297, 35.192692, 31.171434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049679, 34.481125, 31.244757>,  <40.821430, 35.086842, 30.986807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049679, 34.481125, 31.244757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.339516, 34.711884, 31.395573>,  <41.513416, 34.850338, 31.486061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.339516, 34.711884, 31.395573>,  <41.049679, 34.481125, 31.244757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339516, 34.711884, 31.395573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126354, -0.426607, 0.895568,
		0.677497, -0.696561, -0.236222,
		0.724591, 0.576897, 0.377039,
		41.556892, 34.884953, 31.508684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350883, 34.004360, 31.695627>,  <41.049679, 34.481125, 31.244757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350883, 34.004360, 31.695627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.513161, 34.355267, 31.798252>,  <41.610527, 34.565811, 31.859827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.513161, 34.355267, 31.798252>,  <41.350883, 34.004360, 31.695627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513161, 34.355267, 31.798252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287288, -0.388859, 0.875359,
		0.867688, -0.281417, -0.409783,
		0.405689, 0.877265, 0.256561,
		41.634869, 34.618446, 31.875221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863159, 33.771492, 32.084511>,  <41.350883, 34.004360, 31.695627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863159, 33.771492, 32.084511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.769360, 34.146172, 32.188511>,  <41.713081, 34.370979, 32.250912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.769360, 34.146172, 32.188511>,  <41.863159, 33.771492, 32.084511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769360, 34.146172, 32.188511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100411, -0.289369, 0.951937,
		0.966917, 0.197120, 0.161911,
		-0.234497, 0.936701, 0.260002,
		41.699009, 34.427181, 32.266510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137093, 33.871109, 32.755157>,  <41.863159, 33.771492, 32.084511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137093, 33.871109, 32.755157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.862896, 34.161510, 32.733135>,  <41.698380, 34.335751, 32.719921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.862896, 34.161510, 32.733135>,  <42.137093, 33.871109, 32.755157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862896, 34.161510, 32.733135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223797, -0.138141, 0.964796,
		0.692835, 0.673678, 0.257170,
		-0.685488, 0.725999, -0.055058,
		41.657249, 34.379311, 32.716618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159100, 34.130032, 33.333344>,  <42.137093, 33.871109, 32.755157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159100, 34.130032, 33.333344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.790958, 34.222836, 33.207405>,  <41.570076, 34.278519, 33.131844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.790958, 34.222836, 33.207405>,  <42.159100, 34.130032, 33.333344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790958, 34.222836, 33.207405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353786, -0.150731, 0.923101,
		0.166710, 0.960964, 0.220807,
		-0.920349, 0.232009, -0.314848,
		41.514854, 34.292439, 33.112949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802502, 34.766506, 33.786739>,  <42.159100, 34.130032, 33.333344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802502, 34.766506, 33.786739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.521965, 34.545738, 33.606297>,  <41.353642, 34.413277, 33.498032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.521965, 34.545738, 33.606297>,  <41.802502, 34.766506, 33.786739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521965, 34.545738, 33.606297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416297, -0.196571, 0.887726,
		-0.578628, 0.810397, -0.091899,
		-0.701346, -0.551920, -0.451107,
		41.311562, 34.380161, 33.470963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645206, 35.280956, 34.345848>,  <41.802502, 34.766506, 33.786739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645206, 35.280956, 34.345848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.910679, 34.983952, 34.382069>,  <42.069962, 34.805748, 34.403801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.910679, 34.983952, 34.382069>,  <41.645206, 35.280956, 34.345848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910679, 34.983952, 34.382069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636001, 0.496420, -0.590821,
		0.393742, 0.449707, 0.801705,
		0.663679, -0.742516, 0.090553,
		42.109783, 34.761196, 34.409233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303513, 35.465332, 34.826164>,  <41.645206, 35.280956, 34.345848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303513, 35.465332, 34.826164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.339466, 35.237423, 34.499413>,  <42.361038, 35.100677, 34.303364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.339466, 35.237423, 34.499413>,  <42.303513, 35.465332, 34.826164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339466, 35.237423, 34.499413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737235, 0.589523, -0.330069,
		0.669630, -0.572561, 0.473043,
		0.089885, -0.569768, -0.816875,
		42.366432, 35.066494, 34.254349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758736, 35.853920, 35.232121>,  <42.303513, 35.465332, 34.826164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758736, 35.853920, 35.232121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.816273, 36.193760, 35.435093>,  <42.850796, 36.397663, 35.556877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.816273, 36.193760, 35.435093>,  <42.758736, 35.853920, 35.232121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816273, 36.193760, 35.435093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374187, 0.521392, -0.766899,
		-0.916129, -0.079560, 0.392910,
		0.143846, 0.849600, 0.507433,
		42.859425, 36.448639, 35.587322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158428, 36.094158, 35.294956>,  <42.758736, 35.853920, 35.232121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158428, 36.094158, 35.294956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.371433, 36.420940, 35.383507>,  <42.499237, 36.617012, 35.436638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.371433, 36.420940, 35.383507>,  <42.158428, 36.094158, 35.294956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371433, 36.420940, 35.383507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453293, 0.496130, -0.740527,
		-0.714811, 0.293992, 0.634518,
		0.532513, 0.816959, 0.221375,
		42.531189, 36.666027, 35.449921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663799, 36.656635, 35.299614>,  <42.158428, 36.094158, 35.294956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663799, 36.656635, 35.299614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.025803, 36.812241, 35.230762>,  <42.243004, 36.905602, 35.189449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.025803, 36.812241, 35.230762>,  <41.663799, 36.656635, 35.299614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025803, 36.812241, 35.230762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370040, 0.520328, -0.769629,
		-0.209828, 0.760217, 0.614852,
		0.905010, 0.389010, -0.172131,
		42.297306, 36.928944, 35.179123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552753, 37.394894, 35.091721>,  <41.663799, 36.656635, 35.299614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552753, 37.394894, 35.091721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.920471, 37.308876, 34.959873>,  <42.141102, 37.257263, 34.880764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.920471, 37.308876, 34.959873>,  <41.552753, 37.394894, 35.091721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920471, 37.308876, 34.959873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162546, 0.555282, -0.815623,
		0.358427, 0.803378, 0.475515,
		0.919298, -0.215048, -0.329614,
		42.196262, 37.244362, 34.860989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954174, 38.094360, 34.929241>,  <41.552753, 37.394894, 35.091721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954174, 38.094360, 34.929241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.123264, 37.799011, 34.719059>,  <42.224720, 37.621803, 34.592949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.123264, 37.799011, 34.719059>,  <41.954174, 38.094360, 34.929241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123264, 37.799011, 34.719059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036068, 0.565646, -0.823859,
		0.905539, 0.367220, 0.212481,
		0.422726, -0.738373, -0.525459,
		42.250084, 37.577499, 34.561420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426762, 38.346790, 34.513790>,  <41.954174, 38.094360, 34.929241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426762, 38.346790, 34.513790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.390045, 37.999397, 34.318932>,  <42.368015, 37.790962, 34.202019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.390045, 37.999397, 34.318932>,  <42.426762, 38.346790, 34.513790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390045, 37.999397, 34.318932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080777, 0.481102, -0.872935,
		0.992497, -0.119476, 0.025994,
		-0.091789, -0.868485, -0.487143,
		42.362507, 37.738853, 34.172787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929451, 38.398022, 33.947025>,  <42.426762, 38.346790, 34.513790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929451, 38.398022, 33.947025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.663700, 38.112858, 33.857262>,  <42.504250, 37.941757, 33.803406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.663700, 38.112858, 33.857262>,  <42.929451, 38.398022, 33.947025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663700, 38.112858, 33.857262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017336, 0.285471, -0.958231,
		0.747195, -0.640518, -0.177302,
		-0.664378, -0.712912, -0.224406,
		42.464386, 37.898983, 33.789940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142170, 38.345177, 33.311367>,  <42.929451, 38.398022, 33.947025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142170, 38.345177, 33.311367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.779537, 38.176796, 33.323414>,  <42.561958, 38.075768, 33.330643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.779537, 38.176796, 33.323414>,  <43.142170, 38.345177, 33.311367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779537, 38.176796, 33.323414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096189, 0.136615, -0.985943,
		0.410917, -0.896738, -0.164344,
		-0.906584, -0.420948, 0.030119,
		42.507561, 38.050510, 33.332451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146328, 37.729347, 32.813568>,  <43.142170, 38.345177, 33.311367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146328, 37.729347, 32.813568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.778275, 37.867920, 32.886597>,  <42.557442, 37.951065, 32.930416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.778275, 37.867920, 32.886597>,  <43.146328, 37.729347, 32.813568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778275, 37.867920, 32.886597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169933, 0.066809, -0.983188,
		-0.352805, -0.935693, -0.002604,
		-0.920137, 0.346431, 0.182575,
		42.502232, 37.971848, 32.941368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797462, 37.581501, 32.262489>,  <43.146328, 37.729347, 32.813568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797462, 37.581501, 32.262489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.547535, 37.856766, 32.410023>,  <42.397579, 38.021923, 32.498543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.547535, 37.856766, 32.410023>,  <42.797462, 37.581501, 32.262489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547535, 37.856766, 32.410023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294704, 0.229584, -0.927600,
		-0.723014, -0.688279, 0.059355,
		-0.624820, 0.688160, 0.368831,
		42.360088, 38.063213, 32.520672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180771, 37.418278, 31.950567>,  <42.797462, 37.581501, 32.262489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180771, 37.418278, 31.950567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.104439, 37.790497, 32.075569>,  <42.058640, 38.013828, 32.150570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.104439, 37.790497, 32.075569>,  <42.180771, 37.418278, 31.950567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104439, 37.790497, 32.075569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478206, 0.189897, -0.857472,
		-0.857265, -0.313072, 0.408757,
		-0.190829, 0.930551, 0.312504,
		42.047192, 38.069664, 32.169319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526402, 37.448009, 31.798599>,  <42.180771, 37.418278, 31.950567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526402, 37.448009, 31.798599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.647587, 37.828026, 31.828619>,  <41.720299, 38.056034, 31.846630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.647587, 37.828026, 31.828619>,  <41.526402, 37.448009, 31.798599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647587, 37.828026, 31.828619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320968, 0.175869, -0.930618,
		-0.897325, 0.257857, 0.358216,
		0.302965, 0.950042, 0.075048,
		41.738476, 38.113037, 31.851133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960743, 37.866302, 31.493824>,  <41.526402, 37.448009, 31.798599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960743, 37.866302, 31.493824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.306377, 38.066525, 31.472685>,  <41.513760, 38.186657, 31.460001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.306377, 38.066525, 31.472685>,  <40.960743, 37.866302, 31.493824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306377, 38.066525, 31.472685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246515, 0.329318, -0.911471,
		-0.438840, 0.800620, 0.407955,
		0.864089, 0.500557, -0.052847,
		41.565605, 38.216690, 31.456831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738762, 38.546970, 31.316124>,  <40.960743, 37.866302, 31.493824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738762, 38.546970, 31.316124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.129845, 38.545334, 31.232149>,  <41.364494, 38.544350, 31.181765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.129845, 38.545334, 31.232149>,  <40.738762, 38.546970, 31.316124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129845, 38.545334, 31.232149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181042, 0.490035, -0.852695,
		0.106369, 0.871693, 0.478369,
		0.977706, -0.004095, -0.209938,
		41.423157, 38.544106, 31.169168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536640, 38.989338, 31.876413>,  <40.738762, 38.546970, 31.316124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536640, 38.989338, 31.876413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.218216, 39.231098, 31.863787>,  <40.027161, 39.376152, 31.856211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.218216, 39.231098, 31.863787>,  <40.536640, 38.989338, 31.876413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218216, 39.231098, 31.863787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456625, -0.565555, 0.686761,
		0.397224, 0.561115, 0.726198,
		-0.796057, 0.604398, -0.031567,
		39.979401, 39.412418, 31.854317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339783, 39.027763, 32.607857>,  <40.536640, 38.989338, 31.876413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339783, 39.027763, 32.607857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.007149, 39.158180, 32.428005>,  <39.807568, 39.236431, 32.320095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.007149, 39.158180, 32.428005>,  <40.339783, 39.027763, 32.607857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007149, 39.158180, 32.428005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544247, -0.316961, 0.776744,
		0.110741, 0.890634, 0.441029,
		-0.831584, 0.326046, -0.449624,
		39.757675, 39.255993, 32.293118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921207, 39.395515, 33.150040>,  <40.339783, 39.027763, 32.607857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921207, 39.395515, 33.150040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.673531, 39.265690, 32.864033>,  <39.524925, 39.187794, 32.692429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.673531, 39.265690, 32.864033>,  <39.921207, 39.395515, 33.150040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673531, 39.265690, 32.864033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654664, -0.289441, 0.698312,
		-0.433603, 0.900490, -0.033260,
		-0.619196, -0.324564, -0.715021,
		39.487770, 39.168320, 32.649525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279419, 39.676228, 33.296082>,  <39.921207, 39.395515, 33.150040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279419, 39.676228, 33.296082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.198490, 39.360989, 33.063541>,  <39.149933, 39.171844, 32.924019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.198490, 39.360989, 33.063541>,  <39.279419, 39.676228, 33.296082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198490, 39.360989, 33.063541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844832, -0.159774, 0.510619,
		-0.495302, 0.594453, -0.633483,
		-0.202325, -0.788098, -0.581349,
		39.137794, 39.124557, 32.889137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615795, 39.723473, 33.178185>,  <39.279419, 39.676228, 33.296082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615795, 39.723473, 33.178185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.669949, 39.336193, 33.094032>,  <38.702442, 39.103825, 33.043541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.669949, 39.336193, 33.094032>,  <38.615795, 39.723473, 33.178185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669949, 39.336193, 33.094032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782315, -0.234759, 0.576950,
		-0.607991, 0.086473, -0.789221,
		0.135386, -0.968200, -0.210380,
		38.710564, 39.045734, 33.030918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007999, 39.437294, 33.039055>,  <38.615795, 39.723473, 33.178185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007999, 39.437294, 33.039055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.225800, 39.116852, 33.138451>,  <38.356480, 38.924587, 33.198086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.225800, 39.116852, 33.138451>,  <38.007999, 39.437294, 33.039055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225800, 39.116852, 33.138451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789894, -0.390119, 0.473154,
		-0.282107, -0.453912, -0.845210,
		0.544502, -0.801106, 0.248487,
		38.389149, 38.876518, 33.212997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562485, 38.873798, 32.855236>,  <38.007999, 39.437294, 33.039055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562485, 38.873798, 32.855236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.823959, 38.727402, 33.120186>,  <37.980846, 38.639565, 33.279156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.823959, 38.727402, 33.120186>,  <37.562485, 38.873798, 32.855236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823959, 38.727402, 33.120186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743479, -0.473872, 0.471894,
		0.141169, -0.800932, -0.581875,
		0.653690, -0.365995, 0.662373,
		38.020065, 38.617603, 33.318897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285648, 38.238636, 32.937050>,  <37.562485, 38.873798, 32.855236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285648, 38.238636, 32.937050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.542286, 38.288944, 33.239716>,  <37.696270, 38.319130, 33.421314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.542286, 38.288944, 33.239716>,  <37.285648, 38.238636, 32.937050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542286, 38.288944, 33.239716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678657, -0.366646, 0.636392,
		0.357468, -0.921820, -0.149882,
		0.641593, 0.125771, 0.756664,
		37.734764, 38.326675, 33.466713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311375, 37.601414, 33.286373>,  <37.285648, 38.238636, 32.937050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311375, 37.601414, 33.286373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.444225, 37.873642, 33.547604>,  <37.523937, 38.036980, 33.704342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.444225, 37.873642, 33.547604>,  <37.311375, 37.601414, 33.286373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444225, 37.873642, 33.547604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713518, -0.271566, 0.645867,
		0.616914, -0.680492, 0.395408,
		0.332128, 0.680575, 0.653076,
		37.543865, 38.077816, 33.743526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471622, 37.273228, 33.939751>,  <37.311375, 37.601414, 33.286373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471622, 37.273228, 33.939751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.413925, 37.657482, 34.034725>,  <37.379307, 37.888035, 34.091709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.413925, 37.657482, 34.034725>,  <37.471622, 37.273228, 33.939751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413925, 37.657482, 34.034725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538476, -0.277509, 0.795633,
		0.830204, -0.013094, 0.557306,
		-0.144239, 0.960634, 0.237440,
		37.370655, 37.945671, 34.105957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745941, 37.430916, 34.650482>,  <37.471622, 37.273228, 33.939751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745941, 37.430916, 34.650482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.464458, 37.706715, 34.581917>,  <37.295567, 37.872192, 34.540775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.464458, 37.706715, 34.581917>,  <37.745941, 37.430916, 34.650482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464458, 37.706715, 34.581917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485044, -0.289931, 0.825029,
		0.519156, 0.663727, 0.538464,
		-0.703711, 0.689498, -0.171417,
		37.253345, 37.913563, 34.530491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644711, 37.707714, 35.265022>,  <37.745941, 37.430916, 34.650482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644711, 37.707714, 35.265022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.300396, 37.817070, 35.093300>,  <37.093807, 37.882683, 34.990269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.300396, 37.817070, 35.093300>,  <37.644711, 37.707714, 35.265022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300396, 37.817070, 35.093300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495537, -0.257708, 0.829476,
		0.116139, 0.926738, 0.357308,
		-0.860788, 0.273393, -0.429303,
		37.042160, 37.899090, 34.964508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.475021, 41.500042, 29.492754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119888, 41.622746, 29.355553>,  <40.906807, 41.696369, 29.273232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119888, 41.622746, 29.355553>,  <41.475021, 41.500042, 29.492754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119888, 41.622746, 29.355553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411682, -0.196460, 0.889900,
		0.205602, 0.931289, 0.300712,
		-0.887832, 0.306763, -0.343002,
		40.853539, 41.714775, 29.252651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246128, 41.931057, 30.051270>,  <41.475021, 41.500042, 29.492754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246128, 41.931057, 30.051270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927113, 41.812145, 29.841293>,  <40.735703, 41.740799, 29.715307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927113, 41.812145, 29.841293>,  <41.246128, 41.931057, 30.051270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927113, 41.812145, 29.841293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423127, -0.344577, 0.837992,
		-0.430000, 0.890444, 0.149025,
		-0.797536, -0.297280, -0.524939,
		40.687851, 41.722961, 29.683811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624107, 42.166542, 30.497635>,  <41.246128, 41.931057, 30.051270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624107, 42.166542, 30.497635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505039, 41.869720, 30.257387>,  <40.433598, 41.691628, 30.113239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505039, 41.869720, 30.257387>,  <40.624107, 42.166542, 30.497635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505039, 41.869720, 30.257387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503576, -0.412445, 0.759145,
		-0.811051, 0.528431, -0.250911,
		-0.297669, -0.742058, -0.600619,
		40.415737, 41.647102, 30.077202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844765, 42.078548, 30.606098>,  <40.624107, 42.166542, 30.497635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844765, 42.078548, 30.606098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974098, 41.738811, 30.439207>,  <40.051701, 41.534969, 30.339073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974098, 41.738811, 30.439207>,  <39.844765, 42.078548, 30.606098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974098, 41.738811, 30.439207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371213, -0.519414, 0.769682,
		-0.870434, -0.093987, -0.483231,
		0.323336, -0.849339, -0.417226,
		40.071098, 41.484009, 30.314039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327240, 41.523243, 30.651884>,  <39.844765, 42.078548, 30.606098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327240, 41.523243, 30.651884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656822, 41.312943, 30.567331>,  <39.854572, 41.186760, 30.516600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656822, 41.312943, 30.567331>,  <39.327240, 41.523243, 30.651884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656822, 41.312943, 30.567331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378303, -0.788097, 0.485582,
		-0.421887, -0.320131, -0.848250,
		0.823953, -0.525756, -0.211382,
		39.904007, 41.155216, 30.503918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092018, 40.927402, 30.451529>,  <39.327240, 41.523243, 30.651884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092018, 40.927402, 30.451529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458042, 40.858952, 30.597610>,  <39.677658, 40.817883, 30.685259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458042, 40.858952, 30.597610>,  <39.092018, 40.927402, 30.451529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458042, 40.858952, 30.597610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355268, -0.770627, 0.529073,
		0.190900, -0.613882, -0.765967,
		0.915063, -0.171124, 0.365206,
		39.732563, 40.807613, 30.707172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206223, 40.067215, 30.512512>,  <39.092018, 40.927402, 30.451529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206223, 40.067215, 30.512512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489510, 40.229095, 30.743906>,  <39.659481, 40.326225, 30.882742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489510, 40.229095, 30.743906>,  <39.206223, 40.067215, 30.512512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489510, 40.229095, 30.743906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087164, -0.863242, 0.497209,
		0.700595, -0.301708, -0.646637,
		0.708216, 0.404706, 0.578484,
		39.701973, 40.350506, 30.917452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731438, 39.556171, 30.603823>,  <39.206223, 40.067215, 30.512512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731438, 39.556171, 30.603823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772629, 39.814487, 30.906439>,  <39.797344, 39.969475, 31.088009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772629, 39.814487, 30.906439>,  <39.731438, 39.556171, 30.603823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772629, 39.814487, 30.906439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165721, -0.761095, 0.627114,
		0.980781, 0.060794, -0.185399,
		0.102981, 0.645786, 0.756542,
		39.803524, 40.008224, 31.133402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266594, 39.269764, 30.913141>,  <39.731438, 39.556171, 30.603823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266594, 39.269764, 30.913141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090530, 39.499706, 31.189054>,  <39.984894, 39.637672, 31.354603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090530, 39.499706, 31.189054>,  <40.266594, 39.269764, 30.913141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090530, 39.499706, 31.189054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130844, -0.801062, 0.584106,
		0.888337, 0.166844, 0.427808,
		-0.440155, 0.574860, 0.689782,
		39.958485, 39.672165, 31.395988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039131, 39.387711, 31.105017>,  <40.266594, 39.269764, 30.913141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039131, 39.387711, 31.105017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315521, 39.135979, 30.962748>,  <41.481354, 38.984940, 30.877386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315521, 39.135979, 30.962748>,  <41.039131, 39.387711, 31.105017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315521, 39.135979, 30.962748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032108, 0.518253, -0.854625,
		0.722169, 0.579100, 0.378304,
		0.690970, -0.629330, -0.355673,
		41.522812, 38.947178, 30.856047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595909, 39.717373, 30.890209>,  <41.039131, 39.387711, 31.105017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595909, 39.717373, 30.890209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610710, 39.382915, 30.671303>,  <41.619591, 39.182243, 30.539959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610710, 39.382915, 30.671303>,  <41.595909, 39.717373, 30.890209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610710, 39.382915, 30.671303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101102, 0.541701, -0.834469,
		0.994188, 0.086204, -0.064494,
		0.036998, -0.836139, -0.547268,
		41.621811, 39.132072, 30.507122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084587, 39.797188, 30.380131>,  <41.595909, 39.717373, 30.890209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084587, 39.797188, 30.380131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891266, 39.484558, 30.222364>,  <41.775272, 39.296982, 30.127705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891266, 39.484558, 30.222364>,  <42.084587, 39.797188, 30.380131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891266, 39.484558, 30.222364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127636, 0.382806, -0.914969,
		0.866098, -0.492550, -0.085256,
		-0.483305, -0.781571, -0.394415,
		41.746273, 39.250088, 30.104040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542942, 39.454742, 29.860132>,  <42.084587, 39.797188, 30.380131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542942, 39.454742, 29.860132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159363, 39.391052, 29.766270>,  <41.929214, 39.352837, 29.709953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159363, 39.391052, 29.766270>,  <42.542942, 39.454742, 29.860132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159363, 39.391052, 29.766270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215014, 0.131259, -0.967750,
		0.184894, -0.978477, -0.091634,
		-0.958949, -0.159228, -0.234655,
		41.871677, 39.343285, 29.695873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732193, 39.328735, 29.184664>,  <42.542942, 39.454742, 29.860132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732193, 39.328735, 29.184664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335854, 39.361225, 29.227793>,  <42.098049, 39.380718, 29.253670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335854, 39.361225, 29.227793>,  <42.732193, 39.328735, 29.184664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335854, 39.361225, 29.227793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081234, 0.279160, -0.956802,
		-0.107819, -0.956803, -0.270006,
		-0.990846, 0.081228, 0.107824,
		42.038601, 39.385593, 29.260139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330437, 38.864246, 28.654478>,  <42.732193, 39.328735, 29.184664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330437, 38.864246, 28.654478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094753, 39.161682, 28.780914>,  <41.953342, 39.340141, 28.856775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094753, 39.161682, 28.780914>,  <42.330437, 38.864246, 28.654478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094753, 39.161682, 28.780914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156526, 0.278750, -0.947522,
		-0.792676, -0.607763, -0.047851,
		-0.589207, 0.743588, 0.316089,
		41.917992, 39.384758, 28.875742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703129, 38.743015, 28.306965>,  <42.330437, 38.864246, 28.654478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703129, 38.743015, 28.306965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682652, 39.127060, 28.416925>,  <41.670364, 39.357487, 28.482903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682652, 39.127060, 28.416925>,  <41.703129, 38.743015, 28.306965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682652, 39.127060, 28.416925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277089, 0.250802, -0.927535,
		-0.959480, -0.123655, 0.253196,
		-0.051193, 0.960108, 0.274903,
		41.667294, 39.415092, 28.499395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086250, 38.968601, 27.969515>,  <41.703129, 38.743015, 28.306965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086250, 38.968601, 27.969515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298904, 39.294754, 28.061186>,  <41.426495, 39.490444, 28.116188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298904, 39.294754, 28.061186>,  <41.086250, 38.968601, 27.969515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298904, 39.294754, 28.061186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167317, 0.366356, -0.915308,
		-0.830284, 0.448263, 0.331194,
		0.531633, 0.815380, 0.229178,
		41.458393, 39.539368, 28.129940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731598, 39.445026, 27.608881>,  <41.086250, 38.968601, 27.969515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731598, 39.445026, 27.608881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089321, 39.615582, 27.663143>,  <41.303955, 39.717915, 27.695700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089321, 39.615582, 27.663143>,  <40.731598, 39.445026, 27.608881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089321, 39.615582, 27.663143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076206, 0.443894, -0.892833,
		-0.440906, 0.788134, 0.429473,
		0.894313, 0.426384, 0.135655,
		41.357616, 39.743496, 27.703840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625744, 40.067532, 27.331749>,  <40.731598, 39.445026, 27.608881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625744, 40.067532, 27.331749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022190, 40.014664, 27.337631>,  <41.260059, 39.982944, 27.341162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022190, 40.014664, 27.337631>,  <40.625744, 40.067532, 27.331749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022190, 40.014664, 27.337631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057551, 0.326579, -0.943416,
		0.119888, 0.935883, 0.331285,
		0.991118, -0.132170, 0.014708,
		41.319527, 39.975014, 27.342043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958035, 40.701126, 27.053722>,  <40.625744, 40.067532, 27.331749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958035, 40.701126, 27.053722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231216, 40.411366, 27.016142>,  <41.395126, 40.237511, 26.993593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231216, 40.411366, 27.016142>,  <40.958035, 40.701126, 27.053722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231216, 40.411366, 27.016142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287738, 0.385005, -0.876914,
		0.671405, 0.571856, 0.471376,
		0.682951, -0.724397, -0.093950,
		41.436100, 40.194046, 26.987957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570023, 41.037506, 26.754618>,  <40.958035, 40.701126, 27.053722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570023, 41.037506, 26.754618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608543, 40.644993, 26.687906>,  <41.631657, 40.409485, 26.647879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608543, 40.644993, 26.687906>,  <41.570023, 41.037506, 26.754618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608543, 40.644993, 26.687906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391495, 0.191395, -0.900055,
		0.915127, 0.021386, 0.402598,
		0.096304, -0.981280, -0.166778,
		41.637436, 40.350609, 26.637873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212135, 40.942276, 26.601728>,  <41.570023, 41.037506, 26.754618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212135, 40.942276, 26.601728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014645, 40.632366, 26.443760>,  <41.896149, 40.446423, 26.348978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014645, 40.632366, 26.443760>,  <42.212135, 40.942276, 26.601728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014645, 40.632366, 26.443760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455916, 0.156102, -0.876226,
		0.740522, -0.612669, 0.276159,
		-0.493728, -0.774771, -0.394922,
		41.866528, 40.399937, 26.325283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694756, 40.403961, 26.307425>,  <42.212135, 40.942276, 26.601728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694756, 40.403961, 26.307425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342941, 40.375011, 26.119308>,  <42.131851, 40.357643, 26.006439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342941, 40.375011, 26.119308>,  <42.694756, 40.403961, 26.307425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342941, 40.375011, 26.119308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465459, 0.074333, -0.881943,
		0.098786, -0.994604, -0.031692,
		-0.879540, -0.072372, -0.470290,
		42.079079, 40.353298, 25.978222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.188793, 38.671127, 23.294556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.433090, 38.798012, 23.584761>,  <36.579670, 38.874142, 23.758884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.433090, 38.798012, 23.584761>,  <36.188793, 38.671127, 23.294556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433090, 38.798012, 23.584761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348438, -0.715107, 0.605981,
		0.711045, -0.622895, -0.326216,
		0.610742, 0.317214, 0.725514,
		36.616314, 38.893177, 23.802414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565975, 38.030113, 23.547098>,  <36.188793, 38.671127, 23.294556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565975, 38.030113, 23.547098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.626217, 38.302925, 23.833357>,  <36.662361, 38.466614, 24.005112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.626217, 38.302925, 23.833357>,  <36.565975, 38.030113, 23.547098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626217, 38.302925, 23.833357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073843, -0.714122, 0.696116,
		0.985832, -0.157686, -0.057190,
		0.150609, 0.682030, 0.715648,
		36.671398, 38.507534, 24.048052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067894, 37.700146, 24.021654>,  <36.565975, 38.030113, 23.547098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067894, 37.700146, 24.021654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.914860, 38.006767, 24.227962>,  <36.823040, 38.190742, 24.351748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.914860, 38.006767, 24.227962>,  <37.067894, 37.700146, 24.021654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914860, 38.006767, 24.227962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125998, -0.596315, 0.792801,
		0.915289, 0.238327, 0.324725,
		-0.382584, 0.766557, 0.515772,
		36.800083, 38.236732, 24.382694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470181, 37.813866, 24.579792>,  <37.067894, 37.700146, 24.021654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470181, 37.813866, 24.579792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117397, 37.977825, 24.672857>,  <36.905727, 38.076202, 24.728697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117397, 37.977825, 24.672857>,  <37.470181, 37.813866, 24.579792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117397, 37.977825, 24.672857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024197, -0.532360, 0.846172,
		0.470705, 0.740659, 0.479438,
		-0.881959, 0.409898, 0.232663,
		36.852810, 38.100796, 24.742657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515308, 38.065483, 25.247564>,  <37.470181, 37.813866, 24.579792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515308, 38.065483, 25.247564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117977, 38.064342, 25.201443>,  <36.879578, 38.063660, 25.173769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117977, 38.064342, 25.201443>,  <37.515308, 38.065483, 25.247564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117977, 38.064342, 25.201443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093100, -0.570318, 0.816131,
		-0.068083, 0.821419, 0.566247,
		-0.993326, -0.002847, -0.115303,
		36.819981, 38.063488, 25.166851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127972, 38.309464, 25.847595>,  <37.515308, 38.065483, 25.247564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127972, 38.309464, 25.847595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.879284, 38.074303, 25.640583>,  <36.730072, 37.933205, 25.516376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.879284, 38.074303, 25.640583>,  <37.127972, 38.309464, 25.847595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879284, 38.074303, 25.640583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266578, -0.462476, 0.845607,
		-0.736480, 0.663692, 0.130808,
		-0.621718, -0.587902, -0.517530,
		36.692768, 37.897930, 25.485325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518318, 38.335983, 26.202162>,  <37.127972, 38.309464, 25.847595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518318, 38.335983, 26.202162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.510784, 37.995785, 25.991905>,  <36.506264, 37.791664, 25.865751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.510784, 37.995785, 25.991905>,  <36.518318, 38.335983, 26.202162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510784, 37.995785, 25.991905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334878, -0.489999, 0.804834,
		-0.942073, 0.191188, -0.275582,
		-0.018840, -0.850499, -0.525640,
		36.505131, 37.740635, 25.834213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989849, 38.044075, 26.509672>,  <36.518318, 38.335983, 26.202162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989849, 38.044075, 26.509672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.164711, 37.739243, 26.318621>,  <36.269627, 37.556343, 26.203991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.164711, 37.739243, 26.318621>,  <35.989849, 38.044075, 26.509672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164711, 37.739243, 26.318621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307849, -0.625768, 0.716689,
		-0.845060, -0.166265, -0.508162,
		0.437152, -0.762083, -0.477628,
		36.295856, 37.510616, 26.175333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576092, 37.526825, 26.741819>,  <35.989849, 38.044075, 26.509672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576092, 37.526825, 26.741819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.883934, 37.333279, 26.575167>,  <36.068638, 37.217152, 26.475176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.883934, 37.333279, 26.575167>,  <35.576092, 37.526825, 26.741819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883934, 37.333279, 26.575167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039226, -0.687092, 0.725511,
		-0.637316, -0.542013, -0.547768,
		0.769603, -0.483867, -0.416634,
		36.114815, 37.188118, 26.450176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339108, 36.818085, 26.568993>,  <35.576092, 37.526825, 26.741819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339108, 36.818085, 26.568993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734848, 36.816628, 26.627184>,  <35.972294, 36.815754, 26.662098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734848, 36.816628, 26.627184>,  <35.339108, 36.818085, 26.568993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734848, 36.816628, 26.627184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112510, -0.653209, 0.748772,
		0.092298, -0.757169, -0.646666,
		0.989354, -0.003646, 0.145479,
		36.031654, 36.815533, 26.670828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508194, 36.131729, 26.628687>,  <35.339108, 36.818085, 26.568993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508194, 36.131729, 26.628687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.810711, 36.337715, 26.790094>,  <35.992222, 36.461308, 26.886938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.810711, 36.337715, 26.790094>,  <35.508194, 36.131729, 26.628687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810711, 36.337715, 26.790094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103266, -0.515089, 0.850893,
		0.646027, -0.685198, -0.336381,
		0.756297, 0.514964, 0.403520,
		36.037601, 36.492203, 26.911150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851391, 35.708088, 26.981693>,  <35.508194, 36.131729, 26.628687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851391, 35.708088, 26.981693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.018570, 36.023823, 27.161592>,  <36.118877, 36.213264, 27.269531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.018570, 36.023823, 27.161592>,  <35.851391, 35.708088, 26.981693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018570, 36.023823, 27.161592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135624, -0.543723, 0.828234,
		0.898291, -0.285162, -0.334300,
		0.417947, 0.789334, 0.449746,
		36.143955, 36.260624, 27.296516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265144, 35.441608, 27.505188>,  <35.851391, 35.708088, 26.981693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265144, 35.441608, 27.505188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.262585, 35.815834, 27.646433>,  <36.261047, 36.040367, 27.731180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.262585, 35.815834, 27.646433>,  <36.265144, 35.441608, 27.505188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262585, 35.815834, 27.646433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103803, -0.350588, 0.930759,
		0.994577, 0.042610, -0.094870,
		-0.006399, 0.935560, 0.353110,
		36.260666, 36.096500, 27.752365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848965, 35.500237, 27.948084>,  <36.265144, 35.441608, 27.505188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848965, 35.500237, 27.948084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.591400, 35.782360, 28.066687>,  <36.436859, 35.951633, 28.137848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.591400, 35.782360, 28.066687>,  <36.848965, 35.500237, 27.948084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591400, 35.782360, 28.066687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013445, -0.397914, 0.917324,
		0.764978, 0.586693, 0.265706,
		-0.643916, 0.705306, 0.296508,
		36.398224, 35.993950, 28.155640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521366, 35.386879, 28.199606>,  <36.848965, 35.500237, 27.948084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521366, 35.386879, 28.199606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.723785, 35.048496, 28.132359>,  <37.845238, 34.845467, 28.092010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.723785, 35.048496, 28.132359>,  <37.521366, 35.386879, 28.199606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723785, 35.048496, 28.132359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281661, 0.346321, -0.894834,
		0.815219, 0.405477, 0.413530,
		0.506049, -0.845961, -0.168121,
		37.875599, 34.794708, 28.081923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232285, 35.659874, 28.037451>,  <37.521366, 35.386879, 28.199606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232285, 35.659874, 28.037451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.164478, 35.308014, 27.859692>,  <38.123795, 35.096897, 27.753036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.164478, 35.308014, 27.859692>,  <38.232285, 35.659874, 28.037451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164478, 35.308014, 27.859692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365597, 0.362620, -0.857231,
		0.915207, -0.307782, 0.260127,
		-0.169513, -0.879646, -0.444397,
		38.113625, 35.044121, 27.726372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859818, 35.555435, 27.683058>,  <38.232285, 35.659874, 28.037451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859818, 35.555435, 27.683058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.577614, 35.326767, 27.515511>,  <38.408291, 35.189568, 27.414982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.577614, 35.326767, 27.515511>,  <38.859818, 35.555435, 27.683058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577614, 35.326767, 27.515511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293709, 0.302041, -0.906921,
		0.644973, -0.762868, -0.045189,
		-0.705510, -0.571668, -0.418870,
		38.365959, 35.155266, 27.389851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252991, 35.192711, 27.223852>,  <38.859818, 35.555435, 27.683058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252991, 35.192711, 27.223852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.867989, 35.167976, 27.118210>,  <38.636986, 35.153137, 27.054825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.867989, 35.167976, 27.118210>,  <39.252991, 35.192711, 27.223852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867989, 35.167976, 27.118210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253428, 0.142111, -0.956859,
		0.096696, -0.987918, -0.121113,
		-0.962509, -0.061831, -0.264107,
		38.579235, 35.149426, 27.038977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187881, 34.781204, 26.629532>,  <39.252991, 35.192711, 27.223852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187881, 34.781204, 26.629532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.843678, 34.984390, 26.614113>,  <38.637154, 35.106300, 26.604862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.843678, 34.984390, 26.614113>,  <39.187881, 34.781204, 26.629532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843678, 34.984390, 26.614113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223118, 0.307780, -0.924927,
		-0.457968, -0.804513, -0.378185,
		-0.860514, 0.507967, -0.038548,
		38.585522, 35.136780, 26.602549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931232, 34.490688, 25.939276>,  <39.187881, 34.781204, 26.629532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931232, 34.490688, 25.939276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.738674, 34.833477, 26.012867>,  <38.623138, 35.039150, 26.057022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.738674, 34.833477, 26.012867>,  <38.931232, 34.490688, 25.939276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738674, 34.833477, 26.012867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177735, 0.300984, -0.936920,
		-0.858292, -0.418332, -0.297208,
		-0.481399, 0.856975, 0.183980,
		38.594254, 35.090569, 26.068062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595852, 34.644695, 25.279598>,  <38.931232, 34.490688, 25.939276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595852, 34.644695, 25.279598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.562103, 35.005848, 25.448210>,  <38.541855, 35.222538, 25.549377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.562103, 35.005848, 25.448210>,  <38.595852, 34.644695, 25.279598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562103, 35.005848, 25.448210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114927, 0.429033, -0.895948,
		-0.989784, -0.027147, -0.139964,
		-0.084372, 0.902881, 0.421531,
		38.536793, 35.276711, 25.574669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075512, 35.035717, 24.907604>,  <38.595852, 34.644695, 25.279598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075512, 35.035717, 24.907604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.328247, 35.288754, 25.086761>,  <38.479889, 35.440575, 25.194256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.328247, 35.288754, 25.086761>,  <38.075512, 35.035717, 24.907604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328247, 35.288754, 25.086761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094922, 0.510348, -0.854713,
		-0.769269, 0.582552, 0.262409,
		0.631835, 0.632596, 0.447892,
		38.517799, 35.478531, 25.221128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979355, 35.596153, 24.593689>,  <38.075512, 35.035717, 24.907604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979355, 35.596153, 24.593689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.336559, 35.676090, 24.754982>,  <38.550880, 35.724052, 24.851757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.336559, 35.676090, 24.754982>,  <37.979355, 35.596153, 24.593689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336559, 35.676090, 24.754982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255813, 0.511757, -0.820161,
		-0.370264, 0.835563, 0.405880,
		0.893009, 0.199847, 0.403233,
		38.604462, 35.736046, 24.875952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135342, 36.281036, 24.369339>,  <37.979355, 35.596153, 24.593689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135342, 36.281036, 24.369339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.498062, 36.158257, 24.484917>,  <38.715694, 36.084587, 24.554262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.498062, 36.158257, 24.484917>,  <38.135342, 36.281036, 24.369339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498062, 36.158257, 24.484917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420016, 0.599430, -0.681374,
		0.035946, 0.739234, 0.672489,
		0.906805, -0.306949, 0.288943,
		38.770103, 36.066174, 24.571600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605225, 36.934231, 24.505129>,  <38.135342, 36.281036, 24.369339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605225, 36.934231, 24.505129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.804600, 36.595562, 24.430611>,  <38.924225, 36.392361, 24.385899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.804600, 36.595562, 24.430611>,  <38.605225, 36.934231, 24.505129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804600, 36.595562, 24.430611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426660, 0.426643, -0.797457,
		0.754667, 0.317996, 0.573896,
		0.498436, -0.846673, -0.186297,
		38.954132, 36.341560, 24.374722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187401, 37.156178, 24.531946>,  <38.605225, 36.934231, 24.505129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187401, 37.156178, 24.531946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.217937, 36.809639, 24.334520>,  <39.236259, 36.601715, 24.216064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.217937, 36.809639, 24.334520>,  <39.187401, 37.156178, 24.531946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217937, 36.809639, 24.334520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510831, 0.459097, -0.726830,
		0.856285, -0.196639, 0.477608,
		0.076345, -0.866351, -0.493567,
		39.240841, 36.549732, 24.186451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928989, 37.074322, 24.412228>,  <39.187401, 37.156178, 24.531946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928989, 37.074322, 24.412228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.762917, 36.842999, 24.131321>,  <39.663273, 36.704205, 23.962776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.762917, 36.842999, 24.131321>,  <39.928989, 37.074322, 24.412228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762917, 36.842999, 24.131321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558023, 0.447778, -0.698646,
		0.718495, -0.681946, 0.136802,
		-0.415182, -0.578312, -0.702267,
		39.638363, 36.669506, 23.920641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466236, 37.020336, 23.911219>,  <39.928989, 37.074322, 24.412228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466236, 37.020336, 23.911219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.122677, 36.936523, 23.724287>,  <39.916542, 36.886234, 23.612127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.122677, 36.936523, 23.724287>,  <40.466236, 37.020336, 23.911219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122677, 36.936523, 23.724287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326848, 0.478250, -0.815136,
		0.394298, -0.852862, -0.342281,
		-0.858894, -0.209533, -0.467329,
		39.865009, 36.873665, 23.584089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261333, 36.880714, 23.743523>,  <40.466236, 37.020336, 23.911219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261333, 36.880714, 23.743523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.643902, 36.980377, 23.804432>,  <41.873444, 37.040176, 23.840977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.643902, 36.980377, 23.804432>,  <41.261333, 36.880714, 23.743523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643902, 36.980377, 23.804432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049313, -0.376164, 0.925240,
		0.287812, -0.892424, -0.347483,
		0.956417, 0.249160, 0.152273,
		41.930828, 37.055126, 23.850113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615105, 36.296814, 24.084333>,  <41.261333, 36.880714, 23.743523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615105, 36.296814, 24.084333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.818047, 36.625912, 24.186855>,  <41.939812, 36.823368, 24.248369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.818047, 36.625912, 24.186855>,  <41.615105, 36.296814, 24.084333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818047, 36.625912, 24.186855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016160, -0.306461, 0.951746,
		0.861588, -0.478728, -0.168779,
		0.507351, 0.822740, 0.256307,
		41.970253, 36.872734, 24.263748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056538, 36.046131, 24.556314>,  <41.615105, 36.296814, 24.084333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056538, 36.046131, 24.556314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.083847, 36.442284, 24.604454>,  <42.100231, 36.679974, 24.633339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.083847, 36.442284, 24.604454>,  <42.056538, 36.046131, 24.556314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083847, 36.442284, 24.604454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137839, -0.128838, 0.982039,
		0.988099, -0.050456, -0.145309,
		0.068271, 0.990381, 0.120350,
		42.104328, 36.739399, 24.640558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620705, 36.140827, 24.987772>,  <42.056538, 36.046131, 24.556314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620705, 36.140827, 24.987772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.385174, 36.462097, 25.023970>,  <42.243855, 36.654858, 25.045689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.385174, 36.462097, 25.023970>,  <42.620705, 36.140827, 24.987772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385174, 36.462097, 25.023970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102961, -0.036511, 0.994015,
		0.801673, 0.594623, -0.061197,
		-0.588829, 0.803176, 0.090493,
		42.208527, 36.703049, 25.051117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008774, 36.569733, 25.423075>,  <42.620705, 36.140827, 24.987772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008774, 36.569733, 25.423075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.620232, 36.664532, 25.416227>,  <42.387104, 36.721413, 25.412119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.620232, 36.664532, 25.416227>,  <43.008774, 36.569733, 25.423075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620232, 36.664532, 25.416227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008777, 0.107782, 0.994136,
		0.237456, 0.965512, -0.106775,
		-0.971359, 0.237001, -0.017119,
		42.328823, 36.735630, 25.411091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929485, 37.118862, 25.945419>,  <43.008774, 36.569733, 25.423075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929485, 37.118862, 25.945419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.559155, 36.978104, 25.890257>,  <42.336956, 36.893646, 25.857159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.559155, 36.978104, 25.890257>,  <42.929485, 37.118862, 25.945419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559155, 36.978104, 25.890257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116094, -0.082461, 0.989809,
		-0.359685, 0.932399, 0.035491,
		-0.925823, -0.351899, -0.137906,
		42.281406, 36.872536, 25.848885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463940, 37.533272, 26.346033>,  <42.929485, 37.118862, 25.945419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463940, 37.533272, 26.346033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.264069, 37.190887, 26.292887>,  <42.144146, 36.985458, 26.261000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.264069, 37.190887, 26.292887>,  <42.463940, 37.533272, 26.346033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264069, 37.190887, 26.292887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082916, -0.199947, 0.976292,
		-0.862231, 0.476819, 0.170882,
		-0.499682, -0.855959, -0.132864,
		42.114162, 36.934101, 26.253027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814087, 37.578739, 26.707649>,  <42.463940, 37.533272, 26.346033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814087, 37.578739, 26.707649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.871220, 37.184383, 26.672729>,  <41.905499, 36.947769, 26.651777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.871220, 37.184383, 26.672729>,  <41.814087, 37.578739, 26.707649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871220, 37.184383, 26.672729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211406, -0.116558, 0.970423,
		-0.966906, -0.120149, -0.225071,
		0.142829, -0.985889, -0.087301,
		41.914070, 36.888615, 26.646540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207920, 37.162399, 27.083717>,  <41.814087, 37.578739, 26.707649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207920, 37.162399, 27.083717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.540638, 36.941525, 27.061066>,  <41.740269, 36.809002, 27.047476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.540638, 36.941525, 27.061066>,  <41.207920, 37.162399, 27.083717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540638, 36.941525, 27.061066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103385, -0.254348, 0.961571,
		-0.545366, -0.793978, -0.268654,
		0.831797, -0.552183, -0.056627,
		41.790176, 36.775871, 27.044077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063622, 36.535500, 27.532612>,  <41.207920, 37.162399, 27.083717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063622, 36.535500, 27.532612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.462799, 36.552856, 27.513725>,  <41.702305, 36.563271, 27.502394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.462799, 36.552856, 27.513725>,  <41.063622, 36.535500, 27.532612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462799, 36.552856, 27.513725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061005, -0.415401, 0.907590,
		0.019768, -0.908603, -0.417193,
		0.997942, 0.043392, -0.047217,
		41.762180, 36.565872, 27.499559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352962, 35.890263, 27.588139>,  <41.063622, 36.535500, 27.532612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352962, 35.890263, 27.588139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.648487, 36.132141, 27.707136>,  <41.825802, 36.277267, 27.778534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.648487, 36.132141, 27.707136>,  <41.352962, 35.890263, 27.588139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648487, 36.132141, 27.707136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046484, -0.486113, 0.872659,
		0.672311, -0.630898, -0.387253,
		0.738808, 0.604700, 0.297493,
		41.870129, 36.313549, 27.796383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748295, 35.479012, 27.926752>,  <41.352962, 35.890263, 27.588139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748295, 35.479012, 27.926752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.873127, 35.839325, 28.047544>,  <41.948029, 36.055511, 28.120020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.873127, 35.839325, 28.047544>,  <41.748295, 35.479012, 27.926752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873127, 35.839325, 28.047544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289652, -0.392936, 0.872756,
		0.904823, -0.184904, -0.383543,
		0.312084, 0.900784, 0.301980,
		41.966751, 36.109562, 28.138138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381519, 35.363377, 28.227306>,  <41.748295, 35.479012, 27.926752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381519, 35.363377, 28.227306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.236153, 35.704803, 28.376629>,  <42.148933, 35.909660, 28.466223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.236153, 35.704803, 28.376629>,  <42.381519, 35.363377, 28.227306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236153, 35.704803, 28.376629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268158, -0.287908, 0.919348,
		0.892201, 0.434209, -0.124261,
		-0.363413, 0.853564, 0.373308,
		42.127129, 35.960873, 28.488621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914589, 35.590492, 28.741379>,  <42.381519, 35.363377, 28.227306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914589, 35.590492, 28.741379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.557381, 35.753933, 28.816809>,  <42.343056, 35.851997, 28.862066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.557381, 35.753933, 28.816809>,  <42.914589, 35.590492, 28.741379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557381, 35.753933, 28.816809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036241, -0.352379, 0.935156,
		0.448560, 0.841944, 0.299872,
		-0.893017, 0.408606, 0.188576,
		42.289474, 35.876514, 28.873383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.870468, 39.842079, 25.887445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.540646, 40.007893, 25.733425>,  <42.342751, 40.107380, 25.641012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.540646, 40.007893, 25.733425>,  <42.870468, 39.842079, 25.887445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540646, 40.007893, 25.733425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457821, 0.089003, -0.884578,
		-0.332414, -0.905672, -0.263169,
		-0.824560, 0.414531, -0.385050,
		42.293278, 40.132252, 25.617910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738235, 39.520988, 25.322313>,  <42.870468, 39.842079, 25.887445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738235, 39.520988, 25.322313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.532337, 39.858307, 25.260490>,  <42.408798, 40.060699, 25.223396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.532337, 39.858307, 25.260490>,  <42.738235, 39.520988, 25.322313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532337, 39.858307, 25.260490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383182, 0.065025, -0.921381,
		-0.766950, -0.533497, -0.356608,
		-0.514743, 0.843299, -0.154555,
		42.377914, 40.111298, 25.214125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418877, 39.356407, 24.660852>,  <42.738235, 39.520988, 25.322313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418877, 39.356407, 24.660852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.416447, 39.750511, 24.729235>,  <42.414989, 39.986973, 24.770264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.416447, 39.750511, 24.729235>,  <42.418877, 39.356407, 24.660852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416447, 39.750511, 24.729235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172546, 0.169429, -0.970321,
		-0.984983, 0.023603, -0.171031,
		-0.006075, 0.985260, 0.170957,
		42.414623, 40.046089, 24.780521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149292, 39.683540, 24.064499>,  <42.418877, 39.356407, 24.660852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149292, 39.683540, 24.064499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.307232, 39.998123, 24.254475>,  <42.401997, 40.186874, 24.368460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.307232, 39.998123, 24.254475>,  <42.149292, 39.683540, 24.064499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307232, 39.998123, 24.254475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096098, 0.478756, -0.872673,
		-0.913704, 0.390219, 0.113461,
		0.394854, 0.786462, 0.474941,
		42.425690, 40.234062, 24.396957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771923, 40.277042, 23.869535>,  <42.149292, 39.683540, 24.064499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771923, 40.277042, 23.869535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.130783, 40.414764, 23.980225>,  <42.346100, 40.497398, 24.046638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.130783, 40.414764, 23.980225>,  <41.771923, 40.277042, 23.869535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130783, 40.414764, 23.980225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054233, 0.535866, -0.842560,
		-0.438380, 0.770912, 0.462081,
		0.897152, 0.344301, 0.276722,
		42.399929, 40.518055, 24.063242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751122, 41.079433, 23.729424>,  <41.771923, 40.277042, 23.869535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751122, 41.079433, 23.729424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.140572, 40.989086, 23.716566>,  <42.374241, 40.934879, 23.708851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.140572, 40.989086, 23.716566>,  <41.751122, 41.079433, 23.729424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140572, 40.989086, 23.716566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144178, 0.718362, -0.680565,
		0.176806, 0.657983, 0.731982,
		0.973628, -0.225864, -0.032144,
		42.432659, 40.921326, 23.706923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073650, 41.686501, 23.585808>,  <41.751122, 41.079433, 23.729424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073650, 41.686501, 23.585808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.331326, 41.390339, 23.509043>,  <42.485931, 41.212643, 23.462984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.331326, 41.390339, 23.509043>,  <42.073650, 41.686501, 23.585808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331326, 41.390339, 23.509043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369504, 0.520935, -0.769476,
		0.669695, 0.424773, 0.609160,
		0.644186, -0.740402, -0.191913,
		42.524582, 41.168217, 23.451469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630745, 41.981686, 23.387270>,  <42.073650, 41.686501, 23.585808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630745, 41.981686, 23.387270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.715488, 41.622845, 23.232182>,  <42.766335, 41.407539, 23.139128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.715488, 41.622845, 23.232182>,  <42.630745, 41.981686, 23.387270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715488, 41.622845, 23.232182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331266, 0.439158, -0.835107,
		0.919445, 0.048484, 0.390218,
		0.211856, -0.897101, -0.387720,
		42.779045, 41.353714, 23.115866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250195, 42.134026, 23.147795>,  <42.630745, 41.981686, 23.387270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250195, 42.134026, 23.147795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.089260, 41.823246, 22.954102>,  <42.992699, 41.636780, 22.837885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.089260, 41.823246, 22.954102>,  <43.250195, 42.134026, 23.147795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089260, 41.823246, 22.954102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275317, 0.401765, -0.873376,
		0.873115, -0.484705, 0.052263,
		-0.402332, -0.776946, -0.484235,
		42.968559, 41.590160, 22.808830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706207, 42.031303, 22.627243>,  <43.250195, 42.134026, 23.147795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706207, 42.031303, 22.627243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.369179, 41.850307, 22.510397>,  <43.166962, 41.741711, 22.440289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.369179, 41.850307, 22.510397>,  <43.706207, 42.031303, 22.627243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369179, 41.850307, 22.510397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149606, 0.324402, -0.934014,
		0.517392, -0.830674, -0.205636,
		-0.842569, -0.452487, -0.292117,
		43.116409, 41.714561, 22.422762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.949554, 41.615414, 22.103180>,  <43.706207, 42.031303, 22.627243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.949554, 41.615414, 22.103180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.557274, 41.616428, 22.024982>,  <43.321907, 41.617039, 21.978064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.557274, 41.616428, 22.024982>,  <43.949554, 41.615414, 22.103180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557274, 41.616428, 22.024982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195508, 0.009780, -0.980653,
		-0.000603, -0.999949, -0.010093,
		-0.980702, 0.002565, -0.195492,
		43.263062, 41.617191, 21.966335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786339, 41.155968, 21.586788>,  <43.949554, 41.615414, 22.103180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786339, 41.155968, 21.586788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.469860, 41.398979, 21.558762>,  <43.279972, 41.544785, 21.541946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.469860, 41.398979, 21.558762>,  <43.786339, 41.155968, 21.586788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469860, 41.398979, 21.558762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197165, 0.144952, -0.969595,
		-0.578902, -0.780958, -0.234469,
		-0.791201, 0.607530, -0.070065,
		43.232498, 41.581238, 21.537743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514896, 40.989563, 20.953646>,  <43.786339, 41.155968, 21.586788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514896, 40.989563, 20.953646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.398846, 41.360405, 21.048557>,  <43.329216, 41.582909, 21.105505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.398846, 41.360405, 21.048557>,  <43.514896, 40.989563, 20.953646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398846, 41.360405, 21.048557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195917, 0.300235, -0.933528,
		-0.936719, -0.224355, -0.268742,
		-0.290128, 0.927105, 0.237281,
		43.311806, 41.638535, 21.119741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684742, 41.202908, 20.377390>,  <43.514896, 40.989563, 20.953646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684742, 41.202908, 20.377390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.429646, 41.482407, 20.507030>,  <43.276588, 41.650105, 20.584816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.429646, 41.482407, 20.507030>,  <43.684742, 41.202908, 20.377390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429646, 41.482407, 20.507030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090456, 0.349923, -0.932401,
		-0.764921, -0.623947, -0.159955,
		-0.637741, 0.698744, 0.324104,
		43.238323, 41.692028, 20.604261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127628, 40.719727, 20.261723>,  <43.684742, 41.202908, 20.377390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127628, 40.719727, 20.261723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.009216, 40.501678, 19.947983>,  <42.938168, 40.370850, 19.759739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.009216, 40.501678, 19.947983>,  <43.127628, 40.719727, 20.261723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009216, 40.501678, 19.947983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424062, -0.660789, 0.619298,
		-0.855882, 0.515947, -0.035549,
		-0.296035, -0.545121, -0.784351,
		42.920406, 40.338142, 19.712677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365124, 40.705879, 20.262827>,  <43.127628, 40.719727, 20.261723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365124, 40.705879, 20.262827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.536018, 40.391678, 20.083742>,  <42.638557, 40.203156, 19.976292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.536018, 40.391678, 20.083742>,  <42.365124, 40.705879, 20.262827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536018, 40.391678, 20.083742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401003, -0.608440, 0.684834,
		-0.810348, -0.113053, -0.574939,
		0.427238, -0.785506, -0.447714,
		42.664188, 40.156025, 19.949429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960239, 40.224487, 20.519663>,  <42.365124, 40.705879, 20.262827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960239, 40.224487, 20.519663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.247833, 40.004562, 20.349600>,  <42.420391, 39.872608, 20.247562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.247833, 40.004562, 20.349600>,  <41.960239, 40.224487, 20.519663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247833, 40.004562, 20.349600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292889, -0.794437, 0.532058,
		-0.630296, -0.258019, -0.732225,
		0.718988, -0.549815, -0.425159,
		42.463528, 39.839619, 20.222052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665783, 39.594246, 20.213160>,  <41.960239, 40.224487, 20.519663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665783, 39.594246, 20.213160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.054626, 39.533676, 20.284807>,  <42.287933, 39.497334, 20.327795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.054626, 39.533676, 20.284807>,  <41.665783, 39.594246, 20.213160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054626, 39.533676, 20.284807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221326, -0.845005, 0.486808,
		0.077641, -0.512872, -0.854947,
		0.972104, -0.151426, 0.179119,
		42.346256, 39.488247, 20.338543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857166, 38.907902, 20.056376>,  <41.665783, 39.594246, 20.213160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857166, 38.907902, 20.056376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.140602, 38.995415, 20.324715>,  <42.310661, 39.047924, 20.485718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.140602, 38.995415, 20.324715>,  <41.857166, 38.907902, 20.056376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140602, 38.995415, 20.324715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105186, -0.907345, 0.407015,
		0.697740, -0.358969, -0.619920,
		0.708587, 0.218783, 0.670849,
		42.353180, 39.061050, 20.525969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083141, 38.266064, 20.207520>,  <41.857166, 38.907902, 20.056376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083141, 38.266064, 20.207520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.238045, 38.474121, 20.512014>,  <42.330986, 38.598957, 20.694712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.238045, 38.474121, 20.512014>,  <42.083141, 38.266064, 20.207520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238045, 38.474121, 20.512014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007344, -0.827377, 0.561598,
		0.921942, -0.211893, -0.324228,
		0.387258, 0.520142, 0.761238,
		42.354221, 38.630165, 20.740385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433079, 37.776833, 20.578209>,  <42.083141, 38.266064, 20.207520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433079, 37.776833, 20.578209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.431919, 38.091011, 20.825779>,  <42.431225, 38.279518, 20.974321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.431919, 38.091011, 20.825779>,  <42.433079, 37.776833, 20.578209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431919, 38.091011, 20.825779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056916, -0.618052, 0.784074,
		0.998375, -0.032957, 0.046493,
		-0.002895, 0.785446, 0.618923,
		42.431049, 38.326645, 21.011456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862843, 37.579651, 21.047581>,  <42.433079, 37.776833, 20.578209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862843, 37.579651, 21.047581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.662308, 37.879288, 21.220793>,  <42.541988, 38.059071, 21.324720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.662308, 37.879288, 21.220793>,  <42.862843, 37.579651, 21.047581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662308, 37.879288, 21.220793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091755, -0.451621, 0.887479,
		0.860374, 0.484658, 0.157681,
		-0.501336, 0.749096, 0.433033,
		42.511906, 38.104015, 21.350702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231995, 37.871445, 21.598309>,  <42.862843, 37.579651, 21.047581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231995, 37.871445, 21.598309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.847168, 37.961239, 21.660322>,  <42.616272, 38.015114, 21.697531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.847168, 37.961239, 21.660322>,  <43.231995, 37.871445, 21.598309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847168, 37.961239, 21.660322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052894, -0.404012, 0.913223,
		0.267641, 0.886781, 0.376812,
		-0.962066, 0.224485, 0.155036,
		42.558548, 38.028584, 21.706833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299267, 38.142796, 22.201042>,  <43.231995, 37.871445, 21.598309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299267, 38.142796, 22.201042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.905102, 38.082005, 22.170393>,  <42.668602, 38.045528, 22.152004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.905102, 38.082005, 22.170393>,  <43.299267, 38.142796, 22.201042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905102, 38.082005, 22.170393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002684, -0.436255, 0.899819,
		-0.170178, 0.886896, 0.429482,
		-0.985410, -0.151977, -0.076621,
		42.609478, 38.036411, 22.147408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948303, 38.521481, 22.751284>,  <43.299267, 38.142796, 22.201042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948303, 38.521481, 22.751284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.689445, 38.232380, 22.654253>,  <42.534130, 38.058922, 22.596035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.689445, 38.232380, 22.654253>,  <42.948303, 38.521481, 22.751284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689445, 38.232380, 22.654253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236556, -0.112118, 0.965127,
		-0.724741, 0.681957, -0.098414,
		-0.647141, -0.722748, -0.242578,
		42.495304, 38.015556, 22.581480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339455, 38.561760, 23.176638>,  <42.948303, 38.521481, 22.751284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339455, 38.561760, 23.176638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.289574, 38.186375, 23.047800>,  <42.259647, 37.961143, 22.970497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.289574, 38.186375, 23.047800>,  <42.339455, 38.561760, 23.176638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289574, 38.186375, 23.047800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161855, -0.301039, 0.939775,
		-0.978904, 0.169321, -0.114355,
		-0.124699, -0.938459, -0.322094,
		42.252163, 37.904839, 22.951172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641064, 38.210663, 23.373657>,  <42.339455, 38.561760, 23.176638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641064, 38.210663, 23.373657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.919605, 37.929844, 23.314039>,  <42.086731, 37.761353, 23.278269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.919605, 37.929844, 23.314039>,  <41.641064, 38.210663, 23.373657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919605, 37.929844, 23.314039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227610, -0.412979, 0.881840,
		-0.680646, -0.580153, -0.447374,
		0.696358, -0.702048, -0.149044,
		42.128513, 37.719231, 23.269325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317017, 37.516426, 23.412600>,  <41.641064, 38.210663, 23.373657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317017, 37.516426, 23.412600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.704090, 37.433590, 23.470142>,  <41.936337, 37.383888, 23.504667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.704090, 37.433590, 23.470142>,  <41.317017, 37.516426, 23.412600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704090, 37.433590, 23.470142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216688, -0.391232, 0.894418,
		-0.128942, -0.896689, -0.423464,
		0.967688, -0.207088, 0.143855,
		41.994396, 37.371464, 23.513298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633831, 37.026699, 23.188313>,  <41.317017, 37.516426, 23.412600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633831, 37.026699, 23.188313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.233883, 37.031483, 23.183882>,  <39.993916, 37.034351, 23.181223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.233883, 37.031483, 23.183882>,  <40.633831, 37.026699, 23.188313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233883, 37.031483, 23.183882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016092, 0.615084, -0.788297,
		-0.002614, -0.788371, -0.615195,
		-0.999867, 0.011960, -0.011079,
		39.933922, 37.035072, 23.180557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641338, 37.233776, 22.549454>,  <40.633831, 37.026699, 23.188313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641338, 37.233776, 22.549454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.274296, 37.278954, 22.701900>,  <40.054070, 37.306061, 22.793369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.274296, 37.278954, 22.701900>,  <40.641338, 37.233776, 22.549454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274296, 37.278954, 22.701900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216479, 0.662134, -0.717436,
		-0.333382, -0.740825, -0.583125,
		-0.917602, 0.112945, 0.381117,
		39.999016, 37.312836, 22.816235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169266, 37.225300, 21.912548>,  <40.641338, 37.233776, 22.549454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169266, 37.225300, 21.912548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.993679, 37.407063, 22.222599>,  <39.888329, 37.516121, 22.408630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.993679, 37.407063, 22.222599>,  <40.169266, 37.225300, 21.912548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993679, 37.407063, 22.222599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208749, 0.787504, -0.579880,
		-0.873918, -0.416355, -0.250831,
		-0.438966, 0.454407, 0.775128,
		39.861988, 37.543385, 22.455137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503418, 37.333210, 21.724636>,  <40.169266, 37.225300, 21.912548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503418, 37.333210, 21.724636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.587032, 37.602394, 22.008448>,  <39.637199, 37.763905, 22.178734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.587032, 37.602394, 22.008448>,  <39.503418, 37.333210, 21.724636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587032, 37.602394, 22.008448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302556, 0.734464, -0.607472,
		-0.929927, -0.087690, 0.357136,
		0.209035, 0.672958, 0.709529,
		39.649742, 37.804283, 22.221306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939400, 37.898972, 21.617870>,  <39.503418, 37.333210, 21.724636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939400, 37.898972, 21.617870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.263664, 38.021507, 21.817463>,  <39.458221, 38.095028, 21.937220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.263664, 38.021507, 21.817463>,  <38.939400, 37.898972, 21.617870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263664, 38.021507, 21.817463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093796, 0.773261, -0.627112,
		-0.577954, 0.555178, 0.598119,
		0.810661, 0.306341, 0.498983,
		39.506863, 38.113411, 21.967157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742748, 38.591877, 21.778561>,  <38.939400, 37.898972, 21.617870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742748, 38.591877, 21.778561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.141430, 38.590580, 21.810968>,  <39.380638, 38.589802, 21.830412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.141430, 38.590580, 21.810968>,  <38.742748, 38.591877, 21.778561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141430, 38.590580, 21.810968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039382, 0.892766, -0.448796,
		-0.070876, 0.450509, 0.889954,
		0.996707, -0.003239, 0.081018,
		39.440441, 38.589607, 21.835274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813915, 39.288910, 21.807369>,  <38.742748, 38.591877, 21.778561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813915, 39.288910, 21.807369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.172756, 39.131966, 21.726118>,  <39.388062, 39.037800, 21.677368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.172756, 39.131966, 21.726118>,  <38.813915, 39.288910, 21.807369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172756, 39.131966, 21.726118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216386, 0.791005, -0.572266,
		0.385212, 0.469426, 0.794513,
		0.897100, -0.392365, -0.203127,
		39.441887, 39.014256, 21.665180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615555, 39.920307, 22.136415>,  <38.813915, 39.288910, 21.807369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615555, 39.920307, 22.136415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.311981, 40.175091, 22.082310>,  <38.129837, 40.327961, 22.049847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.311981, 40.175091, 22.082310>,  <38.615555, 39.920307, 22.136415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311981, 40.175091, 22.082310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493338, -0.426868, 0.757893,
		0.425008, 0.641924, 0.638202,
		-0.758938, 0.636960, -0.135264,
		38.084301, 40.366180, 22.041731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561848, 40.030884, 22.759823>,  <38.615555, 39.920307, 22.136415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561848, 40.030884, 22.759823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.215763, 40.149548, 22.598131>,  <38.008114, 40.220745, 22.501116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.215763, 40.149548, 22.598131>,  <38.561848, 40.030884, 22.759823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215763, 40.149548, 22.598131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481822, -0.268804, 0.834022,
		0.138765, 0.916371, 0.375510,
		-0.865212, 0.296662, -0.404227,
		37.956200, 40.238544, 22.476864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243614, 40.438618, 23.284086>,  <38.561848, 40.030884, 22.759823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243614, 40.438618, 23.284086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.961967, 40.307121, 23.032326>,  <37.792980, 40.228222, 22.881269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.961967, 40.307121, 23.032326>,  <38.243614, 40.438618, 23.284086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961967, 40.307121, 23.032326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566144, -0.275109, 0.777043,
		-0.428600, 0.903462, 0.007595,
		-0.704119, -0.328741, -0.629401,
		37.750732, 40.208500, 22.843506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574394, 40.702827, 23.479145>,  <38.243614, 40.438618, 23.284086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574394, 40.702827, 23.479145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.533382, 40.367668, 23.264700>,  <37.508774, 40.166573, 23.136034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.533382, 40.367668, 23.264700>,  <37.574394, 40.702827, 23.479145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533382, 40.367668, 23.264700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509003, -0.418854, 0.751982,
		-0.854636, 0.349985, -0.383547,
		-0.102532, -0.837897, -0.536111,
		37.502625, 40.116299, 23.103867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883694, 40.417732, 23.690054>,  <37.574394, 40.702827, 23.479145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883694, 40.417732, 23.690054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.043629, 40.096031, 23.514189>,  <37.139591, 39.903011, 23.408670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.043629, 40.096031, 23.514189>,  <36.883694, 40.417732, 23.690054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043629, 40.096031, 23.514189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593284, -0.592721, 0.544697,
		-0.698673, 0.043055, -0.714144,
		0.399836, -0.804256, -0.439663,
		37.163578, 39.854755, 23.382290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357903, 39.974979, 23.415340>,  <36.883694, 40.417732, 23.690054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357903, 39.974979, 23.415340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.681259, 39.746544, 23.472416>,  <36.875275, 39.609482, 23.506660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.681259, 39.746544, 23.472416>,  <36.357903, 39.974979, 23.415340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681259, 39.746544, 23.472416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565440, -0.685969, 0.457956,
		-0.163656, -0.450888, -0.877449,
		0.808390, -0.571092, 0.142687,
		36.923775, 39.575214, 23.515223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049686, 39.349426, 23.510073>,  <36.357903, 39.974979, 23.415340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049686, 39.349426, 23.510073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.429054, 39.274715, 23.612530>,  <36.656677, 39.229889, 23.674004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.429054, 39.274715, 23.612530>,  <36.049686, 39.349426, 23.510073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429054, 39.274715, 23.612530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299123, -0.794849, 0.527959,
		0.104981, -0.577345, -0.809723,
		0.948422, -0.186781, 0.256141,
		36.713581, 39.218681, 23.689373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.352623, 44.030636, 22.734550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.456146, 43.654964, 22.644258>,  <41.518261, 43.429562, 22.590084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.456146, 43.654964, 22.644258>,  <41.352623, 44.030636, 22.734550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456146, 43.654964, 22.644258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063565, -0.249745, 0.966223,
		-0.963835, -0.235717, -0.124335,
		0.258808, -0.939183, -0.225729,
		41.533787, 43.373211, 22.576540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858727, 43.545830, 22.947823>,  <41.352623, 44.030636, 22.734550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858727, 43.545830, 22.947823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.222656, 43.379848, 22.949879>,  <41.441013, 43.280258, 22.951113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.222656, 43.379848, 22.949879>,  <40.858727, 43.545830, 22.947823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222656, 43.379848, 22.949879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183156, -0.390408, 0.902239,
		-0.372372, -0.821828, -0.431206,
		0.909831, -0.414947, 0.005146,
		41.495605, 43.255363, 22.951422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705833, 42.701843, 23.203869>,  <40.858727, 43.545830, 22.947823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705833, 42.701843, 23.203869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.095860, 42.785381, 23.233870>,  <41.329876, 42.835506, 23.251869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.095860, 42.785381, 23.233870>,  <40.705833, 42.701843, 23.203869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095860, 42.785381, 23.233870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034442, -0.476320, 0.878597,
		0.219218, -0.854109, -0.471637,
		0.975068, 0.208849, 0.075000,
		41.388378, 42.848038, 23.256369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010342, 42.135406, 23.414316>,  <40.705833, 42.701843, 23.203869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010342, 42.135406, 23.414316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.255314, 42.428272, 23.533556>,  <41.402298, 42.603992, 23.605101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.255314, 42.428272, 23.533556>,  <41.010342, 42.135406, 23.414316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255314, 42.428272, 23.533556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000733, -0.377621, 0.925960,
		0.790523, -0.566869, -0.231804,
		0.612432, 0.732163, 0.298102,
		41.439045, 42.647923, 23.622986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397160, 41.795723, 23.949686>,  <41.010342, 42.135406, 23.414316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397160, 41.795723, 23.949686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.491634, 42.178570, 24.016794>,  <41.548321, 42.408276, 24.057060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.491634, 42.178570, 24.016794>,  <41.397160, 41.795723, 23.949686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491634, 42.178570, 24.016794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055369, -0.159120, 0.985705,
		0.970129, -0.242100, 0.015413,
		0.236187, 0.957114, 0.167772,
		41.562489, 42.465706, 24.067125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967896, 41.827564, 24.516310>,  <41.397160, 41.795723, 23.949686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967896, 41.827564, 24.516310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.763336, 42.171162, 24.506462>,  <41.640602, 42.377319, 24.500553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.763336, 42.171162, 24.506462>,  <41.967896, 41.827564, 24.516310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763336, 42.171162, 24.506462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049821, -0.001039, 0.998758,
		0.857898, 0.511991, 0.043327,
		-0.511400, 0.858990, -0.024617,
		41.609917, 42.428860, 24.499077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215256, 42.259838, 25.013464>,  <41.967896, 41.827564, 24.516310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215256, 42.259838, 25.013464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.848293, 42.410583, 24.962336>,  <41.628117, 42.501030, 24.931658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.848293, 42.410583, 24.962336>,  <42.215256, 42.259838, 25.013464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848293, 42.410583, 24.962336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077853, 0.145030, 0.986360,
		0.390261, 0.914844, -0.103712,
		-0.917407, 0.376863, -0.127823,
		41.573071, 42.523643, 24.923988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140114, 42.672684, 25.627613>,  <42.215256, 42.259838, 25.013464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140114, 42.672684, 25.627613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.775665, 42.657066, 25.463503>,  <41.556995, 42.647694, 25.365036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.775665, 42.657066, 25.463503>,  <42.140114, 42.672684, 25.627613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775665, 42.657066, 25.463503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409646, -0.023341, 0.911946,
		-0.045186, 0.998965, 0.005271,
		-0.911125, -0.039048, -0.410277,
		41.502327, 42.645351, 25.340420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675644, 43.285698, 25.975847>,  <42.140114, 42.672684, 25.627613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675644, 43.285698, 25.975847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.454357, 42.992241, 25.817999>,  <41.321587, 42.816166, 25.723289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.454357, 42.992241, 25.817999>,  <41.675644, 43.285698, 25.975847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454357, 42.992241, 25.817999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545937, -0.038511, 0.836941,
		-0.629211, 0.678446, -0.379216,
		-0.553215, -0.733640, -0.394620,
		41.288391, 42.772148, 25.699614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001812, 43.485012, 26.192392>,  <41.675644, 43.285698, 25.975847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001812, 43.485012, 26.192392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.956581, 43.098946, 26.098009>,  <40.929443, 42.867306, 26.041378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.956581, 43.098946, 26.098009>,  <41.001812, 43.485012, 26.192392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956581, 43.098946, 26.098009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479137, -0.155078, 0.863932,
		-0.870426, 0.210744, -0.444910,
		-0.113073, -0.965162, -0.235959,
		40.922661, 42.809399, 26.027222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313763, 43.298958, 26.280174>,  <41.001812, 43.485012, 26.192392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313763, 43.298958, 26.280174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.527451, 42.964199, 26.327852>,  <40.655663, 42.763344, 26.356459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.527451, 42.964199, 26.327852>,  <40.313763, 43.298958, 26.280174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527451, 42.964199, 26.327852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407967, -0.131744, 0.903442,
		-0.740388, -0.531262, -0.411808,
		0.534217, -0.836901, 0.119195,
		40.687717, 42.713127, 26.363611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842400, 42.893169, 26.727295>,  <40.313763, 43.298958, 26.280174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842400, 42.893169, 26.727295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.202782, 42.723392, 26.763355>,  <40.419010, 42.621529, 26.784990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.202782, 42.723392, 26.763355>,  <39.842400, 42.893169, 26.727295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202782, 42.723392, 26.763355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153158, -0.116688, 0.981288,
		-0.405979, -0.897906, -0.170137,
		0.900957, -0.424440, 0.090149,
		40.473068, 42.596062, 26.790400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428860, 42.394650, 26.225689>,  <39.842400, 42.893169, 26.727295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428860, 42.394650, 26.225689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.052925, 42.351643, 26.095989>,  <38.827362, 42.325840, 26.018169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.052925, 42.351643, 26.095989>,  <39.428860, 42.394650, 26.225689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052925, 42.351643, 26.095989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282202, 0.290543, -0.914301,
		0.192512, -0.950802, -0.242723,
		-0.939841, -0.107517, -0.324251,
		38.770973, 42.319386, 25.998714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484650, 42.066406, 25.563210>,  <39.428860, 42.394650, 26.225689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484650, 42.066406, 25.563210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.139431, 42.267868, 25.578609>,  <38.932301, 42.388744, 25.587849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.139431, 42.267868, 25.578609>,  <39.484650, 42.066406, 25.563210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139431, 42.267868, 25.578609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159014, 0.343236, -0.925691,
		-0.479445, -0.792792, -0.376317,
		-0.863045, 0.503657, 0.038498,
		38.880516, 42.418964, 25.590158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274944, 41.976013, 24.849186>,  <39.484650, 42.066406, 25.563210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274944, 41.976013, 24.849186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.051498, 42.264484, 25.013063>,  <38.917431, 42.437569, 25.111391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.051498, 42.264484, 25.013063>,  <39.274944, 41.976013, 24.849186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051498, 42.264484, 25.013063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004760, 0.491154, -0.871060,
		-0.829413, -0.488537, -0.270933,
		-0.558615, 0.721179, 0.409695,
		38.883915, 42.480839, 25.135971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931133, 42.125252, 24.296404>,  <39.274944, 41.976013, 24.849186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931133, 42.125252, 24.296404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.817226, 42.440228, 24.515074>,  <38.748882, 42.629211, 24.646275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.817226, 42.440228, 24.515074>,  <38.931133, 42.125252, 24.296404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817226, 42.440228, 24.515074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293323, 0.471352, -0.831739,
		-0.912615, -0.397207, 0.096745,
		-0.284772, 0.787435, 0.546673,
		38.731796, 42.676456, 24.679075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254337, 42.274624, 24.080042>,  <38.931133, 42.125252, 24.296404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254337, 42.274624, 24.080042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.414974, 42.606407, 24.235336>,  <38.511356, 42.805477, 24.328514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.414974, 42.606407, 24.235336>,  <38.254337, 42.274624, 24.080042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414974, 42.606407, 24.235336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294890, 0.518462, -0.802644,
		-0.867044, 0.207847, 0.452807,
		0.401590, 0.829456, 0.388237,
		38.535450, 42.855244, 24.351807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737919, 42.773933, 23.965504>,  <38.254337, 42.274624, 24.080042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737919, 42.773933, 23.965504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.093346, 42.952118, 24.009359>,  <38.306602, 43.059029, 24.035673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.093346, 42.952118, 24.009359>,  <37.737919, 42.773933, 23.965504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093346, 42.952118, 24.009359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161164, 0.526875, -0.834523,
		-0.429512, 0.723857, 0.539954,
		0.888564, 0.445458, 0.109639,
		38.359917, 43.085754, 24.042252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622597, 43.499981, 23.743797>,  <37.737919, 42.773933, 23.965504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622597, 43.499981, 23.743797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.019680, 43.461636, 23.773052>,  <38.257931, 43.438629, 23.790606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.019680, 43.461636, 23.773052>,  <37.622597, 43.499981, 23.743797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019680, 43.461636, 23.773052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115252, 0.576145, -0.809181,
		0.035435, 0.811706, 0.582990,
		0.992704, -0.095865, 0.073135,
		38.317490, 43.432877, 23.794992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837555, 44.125343, 23.660732>,  <37.622597, 43.499981, 23.743797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837555, 44.125343, 23.660732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.166939, 43.913235, 23.580021>,  <38.364571, 43.785969, 23.531593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.166939, 43.913235, 23.580021>,  <37.837555, 44.125343, 23.660732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166939, 43.913235, 23.580021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077290, 0.457170, -0.886015,
		0.562079, 0.714006, 0.417448,
		0.823464, -0.530275, -0.201780,
		38.413979, 43.754150, 23.519487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380932, 44.585201, 23.466282>,  <37.837555, 44.125343, 23.660732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380932, 44.585201, 23.466282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.469227, 44.229618, 23.305767>,  <38.522205, 44.016270, 23.209457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.469227, 44.229618, 23.305767>,  <38.380932, 44.585201, 23.466282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469227, 44.229618, 23.305767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022405, 0.415949, -0.909112,
		0.975075, 0.191688, 0.111735,
		0.220742, -0.888955, -0.401287,
		38.535450, 43.962933, 23.185381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780624, 44.705456, 22.919142>,  <38.380932, 44.585201, 23.466282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780624, 44.705456, 22.919142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.691319, 44.320816, 22.855288>,  <38.637737, 44.090034, 22.816975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.691319, 44.320816, 22.855288>,  <38.780624, 44.705456, 22.919142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691319, 44.320816, 22.855288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009334, 0.165873, -0.986103,
		0.974714, -0.218670, -0.046009,
		-0.223263, -0.961598, -0.159637,
		38.624340, 44.032337, 22.807396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207291, 44.475994, 22.454861>,  <38.780624, 44.705456, 22.919142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207291, 44.475994, 22.454861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.886929, 44.240780, 22.409672>,  <38.694710, 44.099651, 22.382559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.886929, 44.240780, 22.409672>,  <39.207291, 44.475994, 22.454861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886929, 44.240780, 22.409672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178114, 0.414084, -0.892642,
		0.571684, -0.694802, -0.436380,
		-0.800907, -0.588035, -0.112971,
		38.646656, 44.064369, 22.375780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285603, 44.344296, 21.732393>,  <39.207291, 44.475994, 22.454861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285603, 44.344296, 21.732393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.905849, 44.238407, 21.800030>,  <38.677998, 44.174873, 21.840611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.905849, 44.238407, 21.800030>,  <39.285603, 44.344296, 21.732393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905849, 44.238407, 21.800030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253596, 0.328287, -0.909899,
		0.185361, -0.906725, -0.378803,
		-0.949384, -0.264723, 0.169090,
		38.621033, 44.158989, 21.850758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032791, 44.047558, 21.092495>,  <39.285603, 44.344296, 21.732393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032791, 44.047558, 21.092495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.700710, 44.143627, 21.293724>,  <38.501461, 44.201271, 21.414461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.700710, 44.143627, 21.293724>,  <39.032791, 44.047558, 21.092495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700710, 44.143627, 21.293724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471137, 0.180089, -0.863480,
		-0.297985, -0.953878, -0.036355,
		-0.830202, 0.240176, 0.503071,
		38.451649, 44.215679, 21.444645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310711, 43.286453, 21.138578>,  <39.032791, 44.047558, 21.092495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310711, 43.286453, 21.138578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.196663, 43.167683, 20.774042>,  <39.128235, 43.096420, 20.555321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.196663, 43.167683, 20.774042>,  <39.310711, 43.286453, 21.138578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196663, 43.167683, 20.774042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364018, -0.846026, 0.389528,
		-0.886678, 0.442807, 0.133135,
		-0.285121, -0.296922, -0.911341,
		39.111126, 43.078606, 20.500639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641399, 42.995556, 21.250851>,  <39.310711, 43.286453, 21.138578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641399, 42.995556, 21.250851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.749855, 42.846092, 20.896030>,  <38.814930, 42.756416, 20.683138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.749855, 42.846092, 20.896030>,  <38.641399, 42.995556, 21.250851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749855, 42.846092, 20.896030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363031, -0.893214, 0.265286,
		-0.891456, 0.250100, -0.377832,
		0.271137, -0.373655, -0.887055,
		38.831196, 42.733994, 20.629915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014641, 42.776970, 20.976650>,  <38.641399, 42.995556, 21.250851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014641, 42.776970, 20.976650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.300781, 42.577484, 20.780870>,  <38.472466, 42.457794, 20.663403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.300781, 42.577484, 20.780870>,  <38.014641, 42.776970, 20.976650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300781, 42.577484, 20.780870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399833, -0.866582, 0.298613,
		-0.573069, -0.017915, -0.819311,
		0.715350, -0.498714, -0.489448,
		38.515385, 42.427872, 20.634035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675537, 42.268833, 20.672441>,  <38.014641, 42.776970, 20.976650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675537, 42.268833, 20.672441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.046082, 42.118282, 20.666779>,  <38.268406, 42.027954, 20.663382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.046082, 42.118282, 20.666779>,  <37.675537, 42.268833, 20.672441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046082, 42.118282, 20.666779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344782, -0.862531, 0.370358,
		-0.151603, -0.338204, -0.928781,
		0.926360, -0.376375, -0.014156,
		38.323990, 42.005371, 20.662531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627163, 41.518845, 20.402884>,  <37.675537, 42.268833, 20.672441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627163, 41.518845, 20.402884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.959599, 41.561108, 20.621284>,  <38.159061, 41.586464, 20.752325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.959599, 41.561108, 20.621284>,  <37.627163, 41.518845, 20.402884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959599, 41.561108, 20.621284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250464, -0.805471, 0.537107,
		0.496540, -0.583140, -0.642958,
		0.831093, 0.105658, 0.546004,
		38.208927, 41.592804, 20.785086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862900, 40.839252, 20.542219>,  <37.627163, 41.518845, 20.402884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862900, 40.839252, 20.542219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.059010, 41.048222, 20.821274>,  <38.176678, 41.173603, 20.988707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.059010, 41.048222, 20.821274>,  <37.862900, 40.839252, 20.542219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059010, 41.048222, 20.821274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049538, -0.782444, 0.620747,
		0.870158, -0.338898, -0.357735,
		0.490277, 0.522426, 0.697638,
		38.206093, 41.204948, 21.030565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257713, 40.372536, 20.777069>,  <37.862900, 40.839252, 20.542219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257713, 40.372536, 20.777069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.254417, 40.655685, 21.059586>,  <38.252441, 40.825573, 21.229095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.254417, 40.655685, 21.059586>,  <38.257713, 40.372536, 20.777069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254417, 40.655685, 21.059586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063441, -0.705264, 0.706101,
		0.997952, -0.038989, 0.050720,
		-0.008241, 0.707872, 0.706292,
		38.251945, 40.868046, 21.271473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534035, 40.004280, 21.378063>,  <38.257713, 40.372536, 20.777069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534035, 40.004280, 21.378063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.328682, 40.318832, 21.515497>,  <38.205471, 40.507565, 21.597958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.328682, 40.318832, 21.515497>,  <38.534035, 40.004280, 21.378063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328682, 40.318832, 21.515497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254520, -0.521883, 0.814161,
		0.819551, 0.330523, 0.468072,
		-0.513377, 0.786380, 0.343585,
		38.174667, 40.554745, 21.618572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217911, 39.913486, 21.597845>,  <38.534035, 40.004280, 21.378063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217911, 39.913486, 21.597845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.421181, 39.605591, 21.443312>,  <39.543144, 39.420853, 21.350592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.421181, 39.605591, 21.443312>,  <39.217911, 39.913486, 21.597845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421181, 39.605591, 21.443312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376250, 0.601919, -0.704364,
		0.774719, 0.212586, 0.595498,
		0.508179, -0.769741, -0.386333,
		39.573635, 39.374668, 21.327412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850483, 40.201702, 21.436108>,  <39.217911, 39.913486, 21.597845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850483, 40.201702, 21.436108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.820202, 39.875866, 21.206076>,  <39.802032, 39.680367, 21.068056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.820202, 39.875866, 21.206076>,  <39.850483, 40.201702, 21.436108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820202, 39.875866, 21.206076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320527, 0.526243, -0.787611,
		0.944209, -0.243955, 0.221258,
		-0.075706, -0.814588, -0.575078,
		39.797489, 39.631489, 21.033552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526936, 40.138756, 21.054710>,  <39.850483, 40.201702, 21.436108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526936, 40.138756, 21.054710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.271996, 39.938160, 20.820686>,  <40.119034, 39.817802, 20.680271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.271996, 39.938160, 20.820686>,  <40.526936, 40.138756, 21.054710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271996, 39.938160, 20.820686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253560, 0.580482, -0.773788,
		0.727666, -0.641518, -0.242809,
		-0.637345, -0.501493, -0.585061,
		40.080791, 39.787712, 20.645168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898891, 39.959740, 20.415415>,  <40.526936, 40.138756, 21.054710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898891, 39.959740, 20.415415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.522312, 39.898026, 20.295504>,  <40.296364, 39.860996, 20.223557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.522312, 39.898026, 20.295504>,  <40.898891, 39.959740, 20.415415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522312, 39.898026, 20.295504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225253, 0.373758, -0.899759,
		0.250861, -0.914605, -0.317123,
		-0.941451, -0.154282, -0.299779,
		40.239876, 39.851742, 20.205570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966473, 39.688519, 19.802393>,  <40.898891, 39.959740, 20.415415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966473, 39.688519, 19.802393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.588341, 39.818954, 19.804375>,  <40.361462, 39.897217, 19.805563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.588341, 39.818954, 19.804375>,  <40.966473, 39.688519, 19.802393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588341, 39.818954, 19.804375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120892, 0.364487, -0.923328,
		-0.302896, -0.872246, -0.383981,
		-0.945325, 0.326092, 0.004954,
		40.304745, 39.916782, 19.805861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628265, 39.375992, 19.222647>,  <40.966473, 39.688519, 19.802393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628265, 39.375992, 19.222647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.407753, 39.701359, 19.296879>,  <40.275444, 39.896580, 19.341419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.407753, 39.701359, 19.296879>,  <40.628265, 39.375992, 19.222647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407753, 39.701359, 19.296879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114190, 0.293903, -0.948990,
		-0.826468, -0.501968, -0.254907,
		-0.551281, 0.813418, 0.185582,
		40.242367, 39.945385, 19.352554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165791, 39.534626, 18.625898>,  <40.628265, 39.375992, 19.222647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165791, 39.534626, 18.625898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.191799, 39.900200, 18.786148>,  <40.207405, 40.119545, 18.882298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.191799, 39.900200, 18.786148>,  <40.165791, 39.534626, 18.625898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191799, 39.900200, 18.786148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121025, 0.391290, -0.912274,
		-0.990518, 0.107800, -0.085168,
		0.065017, 0.913932, 0.400626,
		40.211304, 40.174381, 18.906336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642323, 40.065830, 18.245829>,  <40.165791, 39.534626, 18.625898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642323, 40.065830, 18.245829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.931866, 40.282467, 18.416803>,  <40.105591, 40.412449, 18.519388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.931866, 40.282467, 18.416803>,  <39.642323, 40.065830, 18.245829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931866, 40.282467, 18.416803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213833, 0.412909, -0.885314,
		-0.655974, 0.732244, 0.183078,
		0.723860, 0.541595, 0.427436,
		40.149025, 40.444946, 18.545034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771889, 40.506359, 17.731579>,  <39.642323, 40.065830, 18.245829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771889, 40.506359, 17.731579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.079365, 40.604782, 17.967739>,  <40.263851, 40.663837, 18.109436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.079365, 40.604782, 17.967739>,  <39.771889, 40.506359, 17.731579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079365, 40.604782, 17.967739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272363, 0.709264, -0.650202,
		-0.578738, 0.660606, 0.478186,
		0.768688, 0.246056, 0.590403,
		40.309971, 40.678600, 18.144859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.530556, 34.543953, 32.793831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.919621, 34.453663, 32.772018>,  <38.153061, 34.399490, 32.758930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.919621, 34.453663, 32.772018>,  <37.530556, 34.543953, 32.793831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919621, 34.453663, 32.772018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035126, 0.089121, -0.995401,
		0.229544, 0.970107, 0.078756,
		0.972664, -0.225722, -0.054533,
		38.211418, 34.385944, 32.755657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836060, 35.040207, 32.374428>,  <37.530556, 34.543953, 32.793831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836060, 35.040207, 32.374428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.058243, 34.708004, 32.357834>,  <38.191551, 34.508682, 32.347878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.058243, 34.708004, 32.357834>,  <37.836060, 35.040207, 32.374428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058243, 34.708004, 32.357834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001182, 0.049098, -0.998793,
		0.831547, 0.554833, 0.026290,
		0.555454, -0.830512, -0.041483,
		38.224880, 34.458851, 32.345390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171261, 35.122585, 31.807390>,  <37.836060, 35.040207, 32.374428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171261, 35.122585, 31.807390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.244118, 34.732513, 31.857756>,  <38.287834, 34.498470, 31.887976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.244118, 34.732513, 31.857756>,  <38.171261, 35.122585, 31.807390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244118, 34.732513, 31.857756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084881, -0.111984, -0.990078,
		0.979601, 0.191027, 0.062376,
		0.182147, -0.975176, 0.125914,
		38.298763, 34.439960, 31.895531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736313, 34.938282, 31.433027>,  <38.171261, 35.122585, 31.807390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736313, 34.938282, 31.433027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.533775, 34.596310, 31.478104>,  <38.412251, 34.391125, 31.505150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.533775, 34.596310, 31.478104>,  <38.736313, 34.938282, 31.433027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533775, 34.596310, 31.478104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143047, -0.045598, -0.988665,
		0.850382, -0.516729, -0.099208,
		-0.506348, -0.854934, 0.112692,
		38.381870, 34.339828, 31.511911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005974, 34.529339, 30.940853>,  <38.736313, 34.938282, 31.433027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005974, 34.529339, 30.940853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.661442, 34.347260, 31.031101>,  <38.454723, 34.238010, 31.085251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.661442, 34.347260, 31.031101>,  <39.005974, 34.529339, 30.940853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661442, 34.347260, 31.031101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262186, 0.017878, -0.964852,
		0.435166, -0.890210, -0.134746,
		-0.861330, -0.455199, 0.225620,
		38.403042, 34.210701, 31.098787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062813, 34.040707, 30.464401>,  <39.005974, 34.529339, 30.940853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062813, 34.040707, 30.464401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673496, 34.049927, 30.555775>,  <38.439907, 34.055458, 30.610598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673496, 34.049927, 30.555775>,  <39.062813, 34.040707, 30.464401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673496, 34.049927, 30.555775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229147, -0.159422, -0.960248,
		0.014289, -0.986942, 0.160444,
		-0.973287, 0.023044, 0.228432,
		38.381512, 34.056839, 30.624304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738647, 33.330208, 30.191893>,  <39.062813, 34.040707, 30.464401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738647, 33.330208, 30.191893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441879, 33.596020, 30.227587>,  <38.263821, 33.755505, 30.249002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441879, 33.596020, 30.227587>,  <38.738647, 33.330208, 30.191893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441879, 33.596020, 30.227587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202647, -0.095374, -0.974596,
		-0.639135, -0.741153, 0.205424,
		-0.741917, 0.664527, 0.089236,
		38.219303, 33.795380, 30.254358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197258, 33.080154, 29.913517>,  <38.738647, 33.330208, 30.191893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197258, 33.080154, 29.913517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.108624, 33.470165, 29.919567>,  <38.055443, 33.704170, 29.923197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.108624, 33.470165, 29.919567>,  <38.197258, 33.080154, 29.913517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108624, 33.470165, 29.919567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333855, -0.061282, -0.940630,
		-0.916209, -0.213483, 0.339096,
		-0.221589, 0.975023, 0.015125,
		38.042149, 33.762672, 29.924105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916084, 33.105492, 29.241978>,  <38.197258, 33.080154, 29.913517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916084, 33.105492, 29.241978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.949211, 33.486320, 29.359753>,  <37.969086, 33.714817, 29.430418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.949211, 33.486320, 29.359753>,  <37.916084, 33.105492, 29.241978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949211, 33.486320, 29.359753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256144, 0.305862, -0.916972,
		-0.963084, 0.000524, 0.269199,
		0.082819, 0.952076, 0.294437,
		37.974056, 33.771942, 29.448084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256454, 33.568542, 29.033350>,  <37.916084, 33.105492, 29.241978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256454, 33.568542, 29.033350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.561947, 33.821648, 29.084454>,  <37.745243, 33.973511, 29.115116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.561947, 33.821648, 29.084454>,  <37.256454, 33.568542, 29.033350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561947, 33.821648, 29.084454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195241, 0.415068, -0.888594,
		-0.615298, 0.653705, 0.440542,
		0.763734, 0.632762, 0.127760,
		37.791065, 34.011475, 29.122782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021034, 34.260757, 29.014187>,  <37.256454, 33.568542, 29.033350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021034, 34.260757, 29.014187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.403271, 34.240440, 28.898067>,  <37.632610, 34.228249, 28.828396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.403271, 34.240440, 28.898067>,  <37.021034, 34.260757, 29.014187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403271, 34.240440, 28.898067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244069, 0.415688, -0.876148,
		0.165178, 0.908088, 0.384828,
		0.955587, -0.050796, -0.290298,
		37.689945, 34.225201, 28.810978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128040, 34.861347, 28.538654>,  <37.021034, 34.260757, 29.014187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128040, 34.861347, 28.538654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431362, 34.612228, 28.461618>,  <37.613358, 34.462757, 28.415398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431362, 34.612228, 28.461618>,  <37.128040, 34.861347, 28.538654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431362, 34.612228, 28.461618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018849, 0.316255, -0.948487,
		0.651623, 0.715616, 0.251559,
		0.758309, -0.622797, -0.192590,
		37.658855, 34.425388, 28.403841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047504, 35.674648, 28.667662>,  <37.128040, 34.861347, 28.538654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047504, 35.674648, 28.667662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675049, 35.815201, 28.628666>,  <36.451576, 35.899532, 28.605268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675049, 35.815201, 28.628666>,  <37.047504, 35.674648, 28.667662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675049, 35.815201, 28.628666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232635, -0.366539, 0.900850,
		0.280806, 0.861500, 0.423043,
		-0.931144, 0.351379, -0.097489,
		36.395706, 35.920616, 28.599419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895187, 35.995533, 29.320335>,  <37.047504, 35.674648, 28.667662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895187, 35.995533, 29.320335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520298, 35.998421, 29.180876>,  <36.295364, 36.000153, 29.097200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520298, 35.998421, 29.180876>,  <36.895187, 35.995533, 29.320335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520298, 35.998421, 29.180876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345358, -0.157775, 0.925113,
		-0.048325, 0.987449, 0.150366,
		-0.937226, 0.007224, -0.348648,
		36.239132, 36.000587, 29.076281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480057, 36.590244, 29.692108>,  <36.895187, 35.995533, 29.320335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480057, 36.590244, 29.692108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.219086, 36.321095, 29.552631>,  <36.062504, 36.159607, 29.468946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.219086, 36.321095, 29.552631>,  <36.480057, 36.590244, 29.692108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219086, 36.321095, 29.552631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512197, 0.052388, 0.857269,
		-0.558563, 0.737903, -0.378821,
		-0.652427, -0.672870, -0.348690,
		36.023357, 36.119232, 29.448025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788265, 36.893768, 29.816246>,  <36.480057, 36.590244, 29.692108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788265, 36.893768, 29.816246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.729446, 36.500721, 29.770914>,  <35.694157, 36.264893, 29.743715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.729446, 36.500721, 29.770914>,  <35.788265, 36.893768, 29.816246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729446, 36.500721, 29.770914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645361, 0.008480, 0.763831,
		-0.749591, 0.185458, -0.635388,
		-0.147046, -0.982616, -0.113331,
		35.685333, 36.205936, 29.736916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107990, 36.811756, 30.123529>,  <35.788265, 36.893768, 29.816246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107990, 36.811756, 30.123529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.242805, 36.436337, 30.093777>,  <35.323696, 36.211086, 30.075924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.242805, 36.436337, 30.093777>,  <35.107990, 36.811756, 30.123529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242805, 36.436337, 30.093777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545498, -0.259062, 0.797069,
		-0.767358, -0.228066, -0.599290,
		0.337038, -0.938548, -0.074383,
		35.343918, 36.154774, 30.071461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525433, 36.411739, 30.485373>,  <35.107990, 36.811756, 30.123529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525433, 36.411739, 30.485373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.851822, 36.182663, 30.453835>,  <35.047653, 36.045216, 30.434912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.851822, 36.182663, 30.453835>,  <34.525433, 36.411739, 30.485373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851822, 36.182663, 30.453835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178234, -0.378964, 0.908085,
		-0.549934, -0.726917, -0.411296,
		0.815969, -0.572693, -0.078844,
		35.096611, 36.010857, 30.430182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298710, 35.786911, 30.646416>,  <34.525433, 36.411739, 30.485373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298710, 35.786911, 30.646416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.689423, 35.816299, 30.726906>,  <34.923851, 35.833931, 30.775200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.689423, 35.816299, 30.726906>,  <34.298710, 35.786911, 30.646416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689423, 35.816299, 30.726906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154355, -0.409975, 0.898941,
		0.148543, -0.909133, -0.389117,
		0.976785, 0.073469, 0.201227,
		34.982460, 35.838341, 30.787273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453793, 35.246620, 31.070032>,  <34.298710, 35.786911, 30.646416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453793, 35.246620, 31.070032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.779297, 35.466534, 31.145428>,  <34.974602, 35.598480, 31.190664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.779297, 35.466534, 31.145428>,  <34.453793, 35.246620, 31.070032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779297, 35.466534, 31.145428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059287, -0.244097, 0.967937,
		0.578165, -0.798846, -0.166042,
		0.813763, 0.549783, 0.188490,
		35.023426, 35.631470, 31.201975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821960, 34.826340, 31.404526>,  <34.453793, 35.246620, 31.070032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821960, 34.826340, 31.404526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958813, 35.189491, 31.501438>,  <35.040924, 35.407383, 31.559586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.958813, 35.189491, 31.501438>,  <34.821960, 34.826340, 31.404526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958813, 35.189491, 31.501438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031744, -0.268862, 0.962655,
		0.939115, -0.321666, -0.120806,
		0.342134, 0.907879, 0.242281,
		35.061451, 35.461857, 31.574123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393074, 34.713505, 31.848358>,  <34.821960, 34.826340, 31.404526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393074, 34.713505, 31.848358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285744, 35.090412, 31.928488>,  <35.221344, 35.316555, 31.976566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285744, 35.090412, 31.928488>,  <35.393074, 34.713505, 31.848358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285744, 35.090412, 31.928488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047651, -0.194712, 0.979702,
		0.962148, 0.272427, 0.007346,
		-0.268328, 0.942269, 0.200324,
		35.205246, 35.373093, 31.988585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800163, 34.899605, 32.384956>,  <35.393074, 34.713505, 31.848358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800163, 34.899605, 32.384956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508617, 35.173424, 32.389732>,  <35.333691, 35.337715, 32.392597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508617, 35.173424, 32.389732>,  <35.800163, 34.899605, 32.384956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508617, 35.173424, 32.389732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126087, 0.117069, 0.985087,
		0.672944, 0.719504, -0.171640,
		-0.728868, 0.684550, 0.011939,
		35.289959, 35.378788, 32.393314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068985, 35.376350, 32.803242>,  <35.800163, 34.899605, 32.384956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068985, 35.376350, 32.803242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.675438, 35.446724, 32.790226>,  <35.439312, 35.488949, 32.782417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.675438, 35.446724, 32.790226>,  <36.068985, 35.376350, 32.803242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675438, 35.446724, 32.790226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027951, 0.028501, 0.999203,
		0.176719, 0.983990, -0.023123,
		-0.983864, 0.175932, -0.032540,
		35.380280, 35.499504, 32.780464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898026, 36.115204, 33.104206>,  <36.068985, 35.376350, 32.803242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898026, 36.115204, 33.104206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.593361, 35.856907, 33.125679>,  <35.410561, 35.701927, 33.138565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.593361, 35.856907, 33.125679>,  <35.898026, 36.115204, 33.104206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593361, 35.856907, 33.125679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001608, 0.080967, 0.996715,
		-0.647970, 0.759248, -0.060631,
		-0.761664, -0.645744, 0.053685,
		35.364861, 35.663185, 33.141785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500839, 36.359932, 33.580574>,  <35.898026, 36.115204, 33.104206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500839, 36.359932, 33.580574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.374023, 35.982075, 33.546803>,  <35.297935, 35.755360, 33.526539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.374023, 35.982075, 33.546803>,  <35.500839, 36.359932, 33.580574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374023, 35.982075, 33.546803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161950, -0.141634, 0.976582,
		-0.934484, 0.295940, 0.197888,
		-0.317037, -0.944648, -0.084427,
		35.278912, 35.698681, 33.521473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755741, 36.628277, 33.772892>,  <35.500839, 36.359932, 33.580574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755741, 36.628277, 33.772892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705299, 36.872787, 34.085415>,  <34.675034, 37.019493, 34.272926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705299, 36.872787, 34.085415>,  <34.755741, 36.628277, 33.772892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705299, 36.872787, 34.085415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199847, 0.755789, -0.623574,
		-0.971679, -0.234774, 0.026856,
		-0.126101, 0.611281, 0.781303,
		34.667469, 37.056171, 34.319805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186241, 37.001011, 33.492844>,  <34.755741, 36.628277, 33.772892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186241, 37.001011, 33.492844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.327919, 37.225521, 33.792049>,  <34.412926, 37.360226, 33.971573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.327919, 37.225521, 33.792049>,  <34.186241, 37.001011, 33.492844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327919, 37.225521, 33.792049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095152, 0.817342, -0.568242,
		-0.930320, 0.130092, 0.342901,
		0.354191, 0.561274, 0.748010,
		34.434177, 37.393902, 34.016453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802429, 37.547169, 33.513329>,  <34.186241, 37.001011, 33.492844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802429, 37.547169, 33.513329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.141563, 37.647999, 33.699936>,  <34.345043, 37.708496, 33.811901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.141563, 37.647999, 33.699936>,  <33.802429, 37.547169, 33.513329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141563, 37.647999, 33.699936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032798, 0.853171, -0.520600,
		-0.529249, 0.456682, 0.715078,
		0.847832, 0.252073, 0.466518,
		34.395912, 37.723621, 33.839893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697662, 38.125824, 33.743164>,  <33.802429, 37.547169, 33.513329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697662, 38.125824, 33.743164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.097485, 38.131538, 33.753651>,  <34.337379, 38.134968, 33.759941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.097485, 38.131538, 33.753651>,  <33.697662, 38.125824, 33.743164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097485, 38.131538, 33.753651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002152, 0.910257, -0.414037,
		-0.029777, 0.413796, 0.909882,
		0.999554, 0.014287, 0.026214,
		34.397350, 38.135826, 33.761517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891739, 38.830288, 33.895687>,  <33.697662, 38.125824, 33.743164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891739, 38.830288, 33.895687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226505, 38.670200, 33.746349>,  <34.427364, 38.574146, 33.656746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226505, 38.670200, 33.746349>,  <33.891739, 38.830288, 33.895687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226505, 38.670200, 33.746349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232272, 0.877372, -0.419843,
		0.495595, 0.264657, 0.827250,
		0.836920, -0.400219, -0.373349,
		34.477581, 38.550137, 33.634346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420216, 39.329502, 34.069786>,  <33.891739, 38.830288, 33.895687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420216, 39.329502, 34.069786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580982, 39.106262, 33.779411>,  <34.677441, 38.972317, 33.605186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580982, 39.106262, 33.779411>,  <34.420216, 39.329502, 34.069786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580982, 39.106262, 33.779411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518786, 0.792063, -0.321711,
		0.754538, -0.247308, 0.607874,
		0.401913, -0.558100, -0.725941,
		34.701557, 38.938831, 33.561630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059307, 39.650276, 33.897575>,  <34.420216, 39.329502, 34.069786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059307, 39.650276, 33.897575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994556, 39.419750, 33.577160>,  <34.955708, 39.281433, 33.384911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994556, 39.419750, 33.577160>,  <35.059307, 39.650276, 33.897575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994556, 39.419750, 33.577160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394970, 0.706045, -0.587792,
		0.904320, -0.411535, 0.113335,
		-0.161877, -0.576316, -0.801035,
		34.945992, 39.246857, 33.336849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666599, 39.837906, 33.481571>,  <35.059307, 39.650276, 33.897575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666599, 39.837906, 33.481571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.427731, 39.636978, 33.231434>,  <35.284409, 39.516422, 33.081352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.427731, 39.636978, 33.231434>,  <35.666599, 39.837906, 33.481571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427731, 39.636978, 33.231434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482110, 0.398298, -0.780339,
		0.641054, -0.767484, 0.004321,
		-0.597177, -0.502322, -0.625342,
		35.248577, 39.486282, 33.043831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130054, 39.384808, 33.018055>,  <35.666599, 39.837906, 33.481571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130054, 39.384808, 33.018055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.775501, 39.486115, 32.863045>,  <35.562767, 39.546898, 32.770039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.775501, 39.486115, 32.863045>,  <36.130054, 39.384808, 33.018055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775501, 39.486115, 32.863045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462254, 0.438399, -0.770797,
		-0.025325, -0.862359, -0.505663,
		-0.886386, 0.253265, -0.387527,
		35.509586, 39.562096, 32.746788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173454, 39.189793, 32.237164>,  <36.130054, 39.384808, 33.018055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173454, 39.189793, 32.237164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.859127, 39.436394, 32.256798>,  <35.670528, 39.584354, 32.268578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.859127, 39.436394, 32.256798>,  <36.173454, 39.189793, 32.237164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859127, 39.436394, 32.256798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297797, 0.446756, -0.843638,
		-0.542033, -0.648332, -0.534663,
		-0.785822, 0.616501, 0.049085,
		35.623379, 39.621346, 32.271523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891819, 39.131290, 31.597689>,  <36.173454, 39.189793, 32.237164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891819, 39.131290, 31.597689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.785786, 39.476589, 31.769516>,  <35.722164, 39.683769, 31.872612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.785786, 39.476589, 31.769516>,  <35.891819, 39.131290, 31.597689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785786, 39.476589, 31.769516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228595, 0.489069, -0.841757,
		-0.936736, -0.124938, -0.326979,
		-0.265083, 0.863251, 0.429568,
		35.706261, 39.735565, 31.898386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535519, 39.496265, 31.042543>,  <35.891819, 39.131290, 31.597689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535519, 39.496265, 31.042543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.615536, 39.782406, 31.310350>,  <35.663548, 39.954090, 31.471035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.615536, 39.782406, 31.310350>,  <35.535519, 39.496265, 31.042543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615536, 39.782406, 31.310350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298638, 0.606297, -0.737034,
		-0.933166, 0.347380, -0.092347,
		0.200041, 0.715354, 0.669517,
		35.675549, 39.997013, 31.511206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153973, 40.131214, 30.733093>,  <35.535519, 39.496265, 31.042543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153973, 40.131214, 30.733093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.429092, 40.246693, 30.999500>,  <35.594166, 40.315979, 31.159344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.429092, 40.246693, 30.999500>,  <35.153973, 40.131214, 30.733093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429092, 40.246693, 30.999500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287465, 0.734169, -0.615110,
		-0.666552, 0.614531, 0.421972,
		0.687803, 0.288700, 0.666018,
		35.635433, 40.333302, 31.199306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226196, 40.854706, 30.570047>,  <35.153973, 40.131214, 30.733093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226196, 40.854706, 30.570047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.545773, 40.771046, 30.795597>,  <35.737518, 40.720848, 30.930927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.545773, 40.771046, 30.795597>,  <35.226196, 40.854706, 30.570047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545773, 40.771046, 30.795597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564136, 0.585586, -0.582099,
		-0.208449, 0.783162, 0.585838,
		0.798937, -0.209154, 0.563875,
		35.785454, 40.708298, 30.964760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551277, 41.531528, 30.751511>,  <35.226196, 40.854706, 30.570047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551277, 41.531528, 30.751511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.821354, 41.236492, 30.754927>,  <35.983402, 41.059471, 30.756975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.821354, 41.236492, 30.754927>,  <35.551277, 41.531528, 30.751511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821354, 41.236492, 30.754927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578255, 0.522081, -0.626939,
		0.457966, 0.428244, 0.779022,
		0.675195, -0.737590, 0.008539,
		36.023914, 41.015217, 30.757488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219269, 41.904755, 30.610334>,  <35.551277, 41.531528, 30.751511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219269, 41.904755, 30.610334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.278770, 41.516731, 30.533531>,  <36.314472, 41.283916, 30.487450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.278770, 41.516731, 30.533531>,  <36.219269, 41.904755, 30.610334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278770, 41.516731, 30.533531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684818, 0.241128, -0.687664,
		0.713369, -0.029194, 0.700180,
		0.148757, -0.970054, -0.192006,
		36.323399, 41.225716, 30.475929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920677, 41.890877, 30.410583>,  <36.219269, 41.904755, 30.610334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920677, 41.890877, 30.410583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.753696, 41.553497, 30.275337>,  <36.653507, 41.351070, 30.194189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.753696, 41.553497, 30.275337>,  <36.920677, 41.890877, 30.410583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753696, 41.553497, 30.275337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508519, 0.091529, -0.856173,
		0.753088, -0.529350, 0.390702,
		-0.417454, -0.843452, -0.338113,
		36.628460, 41.300461, 30.173903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494572, 41.388607, 30.312181>,  <36.920677, 41.890877, 30.410583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494572, 41.388607, 30.312181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.196041, 41.237816, 30.092770>,  <37.016922, 41.147343, 29.961123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.196041, 41.237816, 30.092770>,  <37.494572, 41.388607, 30.312181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196041, 41.237816, 30.092770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563550, 0.080577, -0.822143,
		0.354127, -0.922711, 0.152308,
		-0.746328, -0.376976, -0.548528,
		36.972141, 41.124722, 29.928211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863014, 40.786572, 29.886745>,  <37.494572, 41.388607, 30.312181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863014, 40.786572, 29.886745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.520046, 40.885441, 29.706202>,  <37.314262, 40.944763, 29.597876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.520046, 40.885441, 29.706202>,  <37.863014, 40.786572, 29.886745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520046, 40.885441, 29.706202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486268, 0.102096, -0.867825,
		-0.168424, -0.963577, -0.207733,
		-0.857424, 0.247177, -0.451361,
		37.262817, 40.959595, 29.570793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842525, 40.326942, 29.342190>,  <37.863014, 40.786572, 29.886745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842525, 40.326942, 29.342190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.581146, 40.613155, 29.243378>,  <37.424320, 40.784882, 29.184090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.581146, 40.613155, 29.243378>,  <37.842525, 40.326942, 29.342190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581146, 40.613155, 29.243378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390881, 0.039481, -0.919594,
		-0.648245, -0.697465, -0.305486,
		-0.653445, 0.715531, -0.247032,
		37.385113, 40.827816, 29.169268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594856, 40.037468, 28.722126>,  <37.842525, 40.326942, 29.342190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594856, 40.037468, 28.722126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.500668, 40.424839, 28.754862>,  <37.444153, 40.657261, 28.774504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.500668, 40.424839, 28.754862>,  <37.594856, 40.037468, 28.722126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500668, 40.424839, 28.754862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331361, 0.159163, -0.929982,
		-0.913647, -0.191869, -0.358379,
		-0.235475, 0.968428, 0.081841,
		37.430023, 40.715366, 28.779415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316208, 40.300365, 28.015848>,  <37.594856, 40.037468, 28.722126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316208, 40.300365, 28.015848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.459278, 40.623356, 28.203484>,  <37.545120, 40.817150, 28.316065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.459278, 40.623356, 28.203484>,  <37.316208, 40.300365, 28.015848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459278, 40.623356, 28.203484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058792, 0.481853, -0.874277,
		-0.931993, 0.340287, 0.124873,
		0.357676, 0.807479, 0.469090,
		37.566582, 40.865601, 28.344212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925125, 40.875839, 27.753716>,  <37.316208, 40.300365, 28.015848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925125, 40.875839, 27.753716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.290203, 40.968758, 27.888193>,  <37.509251, 41.024509, 27.968880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.290203, 40.968758, 27.888193>,  <36.925125, 40.875839, 27.753716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290203, 40.968758, 27.888193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190971, 0.484873, -0.853480,
		-0.361270, 0.843171, 0.398180,
		0.912696, 0.232295, 0.336192,
		37.564011, 41.038445, 27.989050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090084, 41.339203, 27.324596>,  <36.925125, 40.875839, 27.753716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090084, 41.339203, 27.324596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.448673, 41.331841, 27.501684>,  <37.663826, 41.327423, 27.607937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.448673, 41.331841, 27.501684>,  <37.090084, 41.339203, 27.324596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448673, 41.331841, 27.501684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359905, 0.613073, -0.703285,
		-0.258473, 0.789811, 0.556227,
		0.896471, -0.018408, 0.442720,
		37.717613, 41.326317, 27.634501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305511, 42.061268, 27.390316>,  <37.090084, 41.339203, 27.324596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305511, 42.061268, 27.390316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.626377, 41.822464, 27.394566>,  <37.818897, 41.679184, 27.397116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.626377, 41.822464, 27.394566>,  <37.305511, 42.061268, 27.390316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626377, 41.822464, 27.394566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448449, 0.590616, -0.670870,
		0.394238, 0.542915, 0.741499,
		0.802166, -0.597007, 0.010626,
		37.867027, 41.643360, 27.397753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766872, 42.585728, 27.374584>,  <37.305511, 42.061268, 27.390316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766872, 42.585728, 27.374584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.955368, 42.249733, 27.266987>,  <38.068466, 42.048138, 27.202429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.955368, 42.249733, 27.266987>,  <37.766872, 42.585728, 27.374584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955368, 42.249733, 27.266987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468623, 0.496824, -0.730451,
		0.747210, 0.218163, 0.627760,
		0.471243, -0.839983, -0.268995,
		38.096741, 41.997738, 27.186289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403172, 42.789444, 27.131689>,  <37.766872, 42.585728, 27.374584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403172, 42.789444, 27.131689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.393814, 42.432961, 26.950493>,  <38.388199, 42.219070, 26.841774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.393814, 42.432961, 26.950493>,  <38.403172, 42.789444, 27.131689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393814, 42.432961, 26.950493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110779, 0.448015, -0.887136,
		0.993570, -0.070937, 0.088245,
		-0.023396, -0.891207, -0.452992,
		38.386795, 42.165600, 26.814594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069149, 42.656139, 26.807585>,  <38.403172, 42.789444, 27.131689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069149, 42.656139, 26.807585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.803928, 42.424919, 26.617334>,  <38.644794, 42.286186, 26.503183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.803928, 42.424919, 26.617334>,  <39.069149, 42.656139, 26.807585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803928, 42.424919, 26.617334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122687, 0.542870, -0.830807,
		0.738452, -0.609220, -0.289031,
		-0.663051, -0.578051, -0.475627,
		38.605015, 42.251503, 26.474646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714981, 42.375092, 27.287224>,  <39.069149, 42.656139, 26.807585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714981, 42.375092, 27.287224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.111889, 42.381741, 27.238037>,  <40.350033, 42.385731, 27.208525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.111889, 42.381741, 27.238037>,  <39.714981, 42.375092, 27.287224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111889, 42.381741, 27.238037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119868, -0.384648, 0.915247,
		-0.032083, -0.922914, -0.383668,
		0.992271, 0.016625, -0.122968,
		40.409569, 42.386726, 27.201147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876263, 41.724518, 27.457218>,  <39.714981, 42.375092, 27.287224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876263, 41.724518, 27.457218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.201454, 41.950459, 27.513802>,  <40.396568, 42.086025, 27.547752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.201454, 41.950459, 27.513802>,  <39.876263, 41.724518, 27.457218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201454, 41.950459, 27.513802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184635, -0.480452, 0.857365,
		0.552252, -0.670898, -0.494888,
		0.812975, 0.564855, 0.141460,
		40.445347, 42.119915, 27.556240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452709, 41.238853, 27.717331>,  <39.876263, 41.724518, 27.457218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452709, 41.238853, 27.717331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.549198, 41.609852, 27.831568>,  <40.607090, 41.832451, 27.900110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.549198, 41.609852, 27.831568>,  <40.452709, 41.238853, 27.717331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549198, 41.609852, 27.831568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255244, -0.344555, 0.903401,
		0.936302, -0.145025, -0.319853,
		0.241223, 0.927497, 0.285590,
		40.621567, 41.888100, 27.917244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078011, 41.223976, 28.131227>,  <40.452709, 41.238853, 27.717331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078011, 41.223976, 28.131227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.932404, 41.580032, 28.240875>,  <40.845039, 41.793667, 28.306664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.932404, 41.580032, 28.240875>,  <41.078011, 41.223976, 28.131227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932404, 41.580032, 28.240875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230378, -0.199114, 0.952512,
		0.902452, 0.409879, -0.132588,
		-0.364015, 0.890142, 0.274118,
		40.823200, 41.847076, 28.323111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467918, 41.458244, 28.712122>,  <41.078011, 41.223976, 28.131227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467918, 41.458244, 28.712122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.117882, 41.646156, 28.758631>,  <40.907860, 41.758904, 28.786535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.117882, 41.646156, 28.758631>,  <41.467918, 41.458244, 28.712122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117882, 41.646156, 28.758631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018416, -0.207754, 0.978008,
		0.483604, 0.857989, 0.173152,
		-0.875093, 0.469780, 0.116272,
		40.855354, 41.787090, 28.793512>
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
