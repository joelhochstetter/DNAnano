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
	<23.954248, 34.915962, 34.673935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.253016, 34.927826, 34.939636>,  <24.432276, 34.934944, 35.099056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.253016, 34.927826, 34.939636>,  <23.954248, 34.915962, 34.673935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.253016, 34.927826, 34.939636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407685, -0.809620, -0.422266,
		0.525270, 0.586205, -0.616811,
		0.746916, 0.029661, 0.664256,
		24.477091, 34.936726, 35.138912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.584852, 35.113472, 34.332306>,  <23.954248, 34.915962, 34.673935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.584852, 35.113472, 34.332306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.581154, 34.855186, 34.637718>,  <24.578936, 34.700214, 34.820965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.581154, 34.855186, 34.637718>,  <24.584852, 35.113472, 34.332306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.581154, 34.855186, 34.637718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369620, -0.711689, -0.597395,
		0.929137, 0.276693, 0.245245,
		-0.009244, -0.645709, 0.763528,
		24.578381, 34.661472, 34.866776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.207731, 34.805420, 34.361156>,  <24.584852, 35.113472, 34.332306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.207731, 34.805420, 34.361156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906574, 34.582336, 34.500938>,  <24.725880, 34.448486, 34.584808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906574, 34.582336, 34.500938>,  <25.207731, 34.805420, 34.361156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.906574, 34.582336, 34.500938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297185, -0.761838, -0.575573,
		0.587229, -0.329491, 0.739323,
		-0.752890, -0.557708, 0.349453,
		24.680708, 34.415024, 34.605774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.456169, 34.098125, 34.378189>,  <25.207731, 34.805420, 34.361156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.456169, 34.098125, 34.378189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.056377, 34.095722, 34.390842>,  <24.816502, 34.094280, 34.398434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.056377, 34.095722, 34.390842>,  <25.456169, 34.098125, 34.378189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.056377, 34.095722, 34.390842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024375, -0.500652, -0.865305,
		0.021037, -0.865628, 0.500246,
		-0.999482, -0.006010, 0.031631,
		24.756533, 34.093918, 34.400333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.101587, 34.326527, 33.951187>,  <25.456169, 34.098125, 34.378189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.101587, 34.326527, 33.951187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436094, 34.233421, 33.752602>,  <26.636799, 34.177559, 33.633450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436094, 34.233421, 33.752602>,  <26.101587, 34.326527, 33.951187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436094, 34.233421, 33.752602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531091, -0.569026, -0.627815,
		-0.136365, 0.788689, -0.599479,
		0.836270, -0.232766, -0.496461,
		26.686975, 34.163593, 33.603664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119242, 34.426628, 33.195679>,  <26.101587, 34.326527, 33.951187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119242, 34.426628, 33.195679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387032, 34.130165, 33.215633>,  <26.547705, 33.952286, 33.227608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387032, 34.130165, 33.215633>,  <26.119242, 34.426628, 33.195679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387032, 34.130165, 33.215633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436297, -0.446675, -0.781106,
		0.601208, 0.501163, -0.622403,
		0.669473, -0.741159, 0.049888,
		26.587873, 33.907818, 33.230598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163326, 34.226219, 32.512283>,  <26.119242, 34.426628, 33.195679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163326, 34.226219, 32.512283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261261, 33.930721, 32.763458>,  <26.320023, 33.753422, 32.914162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261261, 33.930721, 32.763458>,  <26.163326, 34.226219, 32.512283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261261, 33.930721, 32.763458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396219, -0.667337, -0.630612,
		0.884909, -0.094401, -0.456096,
		0.244839, -0.738749, 0.627936,
		26.334713, 33.709095, 32.951839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391569, 33.735924, 32.087944>,  <26.163326, 34.226219, 32.512283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.391569, 33.735924, 32.087944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347773, 33.517170, 32.419949>,  <26.321495, 33.385918, 32.619152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347773, 33.517170, 32.419949>,  <26.391569, 33.735924, 32.087944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347773, 33.517170, 32.419949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266126, -0.788422, -0.554588,
		0.957700, -0.281610, -0.059218,
		-0.109489, -0.546888, 0.830015,
		26.314926, 33.353104, 32.668953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604485, 33.156765, 31.945385>,  <26.391569, 33.735924, 32.087944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604485, 33.156765, 31.945385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350662, 33.082809, 32.245560>,  <26.198368, 33.038437, 32.425663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350662, 33.082809, 32.245560>,  <26.604485, 33.156765, 31.945385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350662, 33.082809, 32.245560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337633, -0.807099, -0.484351,
		0.695229, -0.560719, 0.449723,
		-0.634556, -0.184893, 0.750436,
		26.160295, 33.027340, 32.470692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680458, 32.451622, 32.070210>,  <26.604485, 33.156765, 31.945385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680458, 32.451622, 32.070210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318626, 32.543358, 32.213955>,  <26.101528, 32.598400, 32.300201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318626, 32.543358, 32.213955>,  <26.680458, 32.451622, 32.070210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.318626, 32.543358, 32.213955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419183, -0.631978, -0.651835,
		0.077615, -0.740274, 0.667810,
		-0.904578, 0.229343, 0.359361,
		26.047253, 32.612160, 32.321762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346626, 31.858721, 32.126144>,  <26.680458, 32.451622, 32.070210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346626, 31.858721, 32.126144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035736, 32.109852, 32.142883>,  <25.849201, 32.260532, 32.152927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035736, 32.109852, 32.142883>,  <26.346626, 31.858721, 32.126144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.035736, 32.109852, 32.142883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441808, -0.497166, -0.746747,
		-0.448024, -0.598880, 0.663790,
		-0.777226, 0.627829, 0.041847,
		25.802568, 32.298199, 32.155437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.585934, 31.518959, 32.197659>,  <26.346626, 31.858721, 32.126144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.585934, 31.518959, 32.197659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583017, 31.877880, 32.021118>,  <25.581268, 32.093231, 31.915194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583017, 31.877880, 32.021118>,  <25.585934, 31.518959, 32.197659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.583017, 31.877880, 32.021118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355035, -0.414934, -0.837723,
		-0.934825, 0.150590, 0.321599,
		-0.007290, 0.897303, -0.441355,
		25.580830, 32.147072, 31.888712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.958366, 31.641788, 31.813745>,  <25.585934, 31.518959, 32.197659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.958366, 31.641788, 31.813745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223562, 31.895012, 31.653902>,  <25.382679, 32.046947, 31.557997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223562, 31.895012, 31.653902>,  <24.958366, 31.641788, 31.813745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.223562, 31.895012, 31.653902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148535, -0.411937, -0.899024,
		-0.733747, 0.655398, -0.179078,
		0.662988, 0.633057, -0.399607,
		25.422459, 32.084930, 31.534019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.684261, 31.853739, 31.084127>,  <24.958366, 31.641788, 31.813745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.684261, 31.853739, 31.084127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059204, 31.990273, 31.111992>,  <25.284170, 32.072193, 31.128710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059204, 31.990273, 31.111992>,  <24.684261, 31.853739, 31.084127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059204, 31.990273, 31.111992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156525, -0.234012, -0.959551,
		-0.311224, 0.910347, -0.272780,
		0.937358, 0.341332, 0.069662,
		25.340412, 32.092670, 31.132891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.958529, 32.510227, 30.947104>,  <24.684261, 31.853739, 31.084127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.958529, 32.510227, 30.947104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930590, 32.348782, 31.312008>,  <24.913826, 32.251915, 31.530951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930590, 32.348782, 31.312008>,  <24.958529, 32.510227, 30.947104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.930590, 32.348782, 31.312008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783800, 0.543486, 0.300467,
		-0.617073, 0.736015, 0.278394,
		-0.069845, -0.403616, 0.912259,
		24.909636, 32.227695, 31.585686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.986111, 33.021233, 31.519056>,  <24.958529, 32.510227, 30.947104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.986111, 33.021233, 31.519056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080679, 32.676712, 31.698950>,  <25.137419, 32.469997, 31.806887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080679, 32.676712, 31.698950>,  <24.986111, 33.021233, 31.519056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.080679, 32.676712, 31.698950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623923, 0.489395, 0.609272,
		-0.744866, 0.136557, 0.653090,
		0.236418, -0.861304, 0.449735,
		25.151604, 32.418320, 31.833870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.781847, 33.086651, 32.243988>,  <24.986111, 33.021233, 31.519056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.781847, 33.086651, 32.243988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.108505, 32.856106, 32.232033>,  <25.304501, 32.717777, 32.224861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.108505, 32.856106, 32.232033>,  <24.781847, 33.086651, 32.243988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.108505, 32.856106, 32.232033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425112, 0.565699, 0.706587,
		-0.390345, -0.589736, 0.706995,
		0.816646, -0.576365, -0.029886,
		25.353498, 32.683197, 32.223068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.930241, 32.875614, 32.951748>,  <24.781847, 33.086651, 32.243988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.930241, 32.875614, 32.951748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.277723, 32.784195, 32.775970>,  <25.486214, 32.729343, 32.670506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.277723, 32.784195, 32.775970>,  <24.930241, 32.875614, 32.951748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.277723, 32.784195, 32.775970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494138, 0.338542, 0.800760,
		-0.034243, -0.912773, 0.407029,
		0.868709, -0.228549, -0.439443,
		25.538336, 32.715630, 32.644138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.454880, 32.718555, 33.487129>,  <24.930241, 32.875614, 32.951748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.454880, 32.718555, 33.487129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.694868, 32.805058, 33.179035>,  <25.838861, 32.856960, 32.994179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.694868, 32.805058, 33.179035>,  <25.454880, 32.718555, 33.487129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.694868, 32.805058, 33.179035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566696, 0.564703, 0.599972,
		0.564703, -0.796457, 0.216255,
		-0.599972, -0.216255, 0.770239,
		25.874859, 32.869934, 32.947964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146675, 32.670101, 33.773144>,  <25.454880, 32.718555, 33.487129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146675, 32.670101, 33.773144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201380, 32.890732, 33.444012>,  <26.234203, 33.023109, 33.246532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201380, 32.890732, 33.444012>,  <26.146675, 32.670101, 33.773144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201380, 32.890732, 33.444012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489285, 0.684631, 0.540260,
		0.861334, -0.476487, -0.176248,
		0.136762, 0.551580, -0.822834,
		26.242409, 33.056206, 33.197163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816345, 32.692833, 33.845600>,  <26.146675, 32.670101, 33.773144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816345, 32.692833, 33.845600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613997, 32.979668, 33.653816>,  <26.492586, 33.151768, 33.538746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613997, 32.979668, 33.653816>,  <26.816345, 32.692833, 33.845600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613997, 32.979668, 33.653816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494938, 0.696520, 0.519515,
		0.706491, 0.025505, -0.707262,
		-0.505873, 0.717084, -0.479462,
		26.462234, 33.194794, 33.509979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289520, 33.174995, 33.698994>,  <26.816345, 32.692833, 33.845600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289520, 33.174995, 33.698994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925283, 33.340279, 33.695339>,  <26.706741, 33.439449, 33.693146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925283, 33.340279, 33.695339>,  <27.289520, 33.174995, 33.698994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925283, 33.340279, 33.695339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357718, 0.799003, 0.483355,
		0.207027, 0.436870, -0.875377,
		-0.910592, 0.413205, -0.009139,
		26.652105, 33.464241, 33.692596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252811, 33.796886, 33.530388>,  <27.289520, 33.174995, 33.698994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252811, 33.796886, 33.530388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927782, 33.788914, 33.763397>,  <26.732765, 33.784130, 33.903202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927782, 33.788914, 33.763397>,  <27.252811, 33.796886, 33.530388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927782, 33.788914, 33.763397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368808, 0.756317, 0.540338,
		-0.451341, 0.653902, -0.607210,
		-0.812571, -0.019933, 0.582521,
		26.684011, 33.782932, 33.938152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981043, 33.811630, 33.524628>,  <27.252811, 33.796886, 33.530388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981043, 33.811630, 33.524628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907869, 34.202770, 33.565319>,  <27.863966, 34.437454, 33.589733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907869, 34.202770, 33.565319>,  <27.981043, 33.811630, 33.524628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907869, 34.202770, 33.565319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784485, 0.207557, -0.584384,
		-0.592553, -0.027097, -0.805076,
		-0.182934, 0.977848, 0.101731,
		27.852989, 34.496124, 33.595837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128164, 34.096958, 32.782913>,  <27.981043, 33.811630, 33.524628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128164, 34.096958, 32.782913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167145, 34.382385, 33.060425>,  <28.190533, 34.553642, 33.226933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167145, 34.382385, 33.060425>,  <28.128164, 34.096958, 32.782913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167145, 34.382385, 33.060425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927046, 0.188517, -0.324109,
		-0.362062, 0.674747, -0.643139,
		0.097449, 0.713567, 0.693776,
		28.196379, 34.596455, 33.268559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227001, 34.788540, 32.356659>,  <28.128164, 34.096958, 32.782913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227001, 34.788540, 32.356659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375963, 34.841915, 32.724030>,  <28.465340, 34.873940, 32.944450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375963, 34.841915, 32.724030>,  <28.227001, 34.788540, 32.356659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375963, 34.841915, 32.724030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907752, 0.153572, -0.390387,
		-0.193137, 0.979086, -0.063938,
		0.372404, 0.133438, 0.918428,
		28.487684, 34.881947, 32.999557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638651, 35.393219, 32.259235>,  <28.227001, 34.788540, 32.356659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638651, 35.393219, 32.259235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792715, 35.224449, 32.587536>,  <28.885153, 35.123188, 32.784515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792715, 35.224449, 32.587536>,  <28.638651, 35.393219, 32.259235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792715, 35.224449, 32.587536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913955, 0.051210, -0.402572,
		0.127825, 0.905183, 0.405345,
		0.385159, -0.421926, 0.820750,
		28.908262, 35.097870, 32.833759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293694, 35.676056, 32.452122>,  <28.638651, 35.393219, 32.259235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293694, 35.676056, 32.452122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691759, 35.701954, 32.481655>,  <29.930599, 35.717495, 32.499374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691759, 35.701954, 32.481655>,  <29.293694, 35.676056, 32.452122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691759, 35.701954, 32.481655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063200, 0.997733, -0.023103,
		-0.075166, 0.018325, 0.997003,
		0.995166, 0.064747, 0.073838,
		29.990309, 35.721378, 32.503807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793661, 36.099331, 32.213284>,  <29.293694, 35.676056, 32.452122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793661, 36.099331, 32.213284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964880, 36.320641, 31.927441>,  <30.067612, 36.453426, 31.755936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964880, 36.320641, 31.927441>,  <29.793661, 36.099331, 32.213284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964880, 36.320641, 31.927441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903746, 0.266047, -0.335355,
		0.004573, 0.789368, 0.613903,
		0.428046, 0.553278, -0.714605,
		30.093294, 36.486626, 31.713058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782200, 36.740131, 32.377518>,  <29.793661, 36.099331, 32.213284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782200, 36.740131, 32.377518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792801, 36.727726, 31.977850>,  <29.799162, 36.720284, 31.738050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792801, 36.727726, 31.977850>,  <29.782200, 36.740131, 32.377518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792801, 36.727726, 31.977850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867558, 0.495851, -0.038402,
		0.496629, 0.867854, -0.013765,
		0.026502, -0.031014, -0.999168,
		29.800751, 36.718422, 31.678101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503643, 36.896862, 32.586498>,  <29.782200, 36.740131, 32.377518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503643, 36.896862, 32.586498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811453, 36.981270, 32.827599>,  <30.996140, 37.031914, 32.972260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811453, 36.981270, 32.827599>,  <30.503643, 36.896862, 32.586498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811453, 36.981270, 32.827599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638536, 0.239205, 0.731473,
		0.010174, -0.947762, 0.318816,
		0.769525, 0.211017, 0.602747,
		31.042311, 37.044575, 33.008423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409807, 36.646725, 33.391521>,  <30.503643, 36.896862, 32.586498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409807, 36.646725, 33.391521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642431, 36.968311, 33.341835>,  <30.782005, 37.161263, 33.312023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642431, 36.968311, 33.341835>,  <30.409807, 36.646725, 33.391521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642431, 36.968311, 33.341835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480623, 0.462756, 0.744889,
		0.656348, -0.373493, 0.655523,
		0.581558, 0.803965, -0.124219,
		30.816898, 37.209499, 33.304569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646236, 36.821655, 34.048458>,  <30.409807, 36.646725, 33.391521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646236, 36.821655, 34.048458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700949, 37.155628, 33.835224>,  <30.733776, 37.356010, 33.707283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700949, 37.155628, 33.835224>,  <30.646236, 36.821655, 34.048458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700949, 37.155628, 33.835224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577854, 0.504348, 0.641652,
		0.804596, 0.220279, 0.551455,
		0.136783, 0.834931, -0.533086,
		30.741983, 37.406109, 33.675297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843880, 37.405247, 34.448700>,  <30.646236, 36.821655, 34.048458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843880, 37.405247, 34.448700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662420, 37.556442, 34.125881>,  <30.553545, 37.647160, 33.932190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662420, 37.556442, 34.125881>,  <30.843880, 37.405247, 34.448700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662420, 37.556442, 34.125881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699548, 0.410012, 0.585254,
		0.552119, 0.830069, 0.078420,
		-0.453649, 0.377988, -0.807049,
		30.526325, 37.669838, 33.883766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519529, 38.044266, 34.664928>,  <30.843880, 37.405247, 34.448700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519529, 38.044266, 34.664928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333218, 37.934887, 34.328293>,  <30.221432, 37.869259, 34.126312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333218, 37.934887, 34.328293>,  <30.519529, 38.044266, 34.664928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333218, 37.934887, 34.328293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875829, 0.278290, 0.394307,
		0.126386, 0.920752, -0.369111,
		-0.465778, -0.273444, -0.841593,
		30.193483, 37.852856, 34.075813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855543, 38.046200, 35.022743>,  <30.519529, 38.044266, 34.664928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855543, 38.046200, 35.022743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657278, 38.299698, 34.785194>,  <29.538319, 38.451797, 34.642666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657278, 38.299698, 34.785194>,  <29.855543, 38.046200, 35.022743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657278, 38.299698, 34.785194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550419, -0.299712, -0.779238,
		-0.671831, -0.713116, -0.200271,
		-0.495663, 0.633749, -0.593869,
		29.508579, 38.489822, 34.607033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410864, 37.845108, 34.452885>,  <29.855543, 38.046200, 35.022743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410864, 37.845108, 34.452885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592205, 38.183285, 34.339958>,  <29.701010, 38.386192, 34.272202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592205, 38.183285, 34.339958>,  <29.410864, 37.845108, 34.452885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592205, 38.183285, 34.339958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567217, -0.517969, -0.640291,
		-0.687558, 0.130144, -0.714371,
		0.453352, 0.845441, -0.282314,
		29.728210, 38.436916, 34.255264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333622, 37.717651, 33.790478>,  <29.410864, 37.845108, 34.452885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333622, 37.717651, 33.790478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611956, 37.998810, 33.849472>,  <29.778955, 38.167503, 33.884869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611956, 37.998810, 33.849472>,  <29.333622, 37.717651, 33.790478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611956, 37.998810, 33.849472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610341, -0.470487, -0.637280,
		-0.378550, 0.533459, -0.756387,
		0.695833, 0.702896, 0.147489,
		29.820705, 38.209679, 33.893719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672668, 37.890953, 32.996704>,  <29.333622, 37.717651, 33.790478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672668, 37.890953, 32.996704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865902, 37.961601, 33.339733>,  <29.981842, 38.003990, 33.545551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865902, 37.961601, 33.339733>,  <29.672668, 37.890953, 32.996704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865902, 37.961601, 33.339733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851107, -0.324642, -0.412582,
		0.205536, 0.929201, -0.307150,
		0.483085, 0.176617, 0.857575,
		30.010828, 38.014587, 33.597004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190201, 38.341827, 32.822689>,  <29.672668, 37.890953, 32.996704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190201, 38.341827, 32.822689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301655, 38.143230, 33.151531>,  <30.368526, 38.024075, 33.348839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301655, 38.143230, 33.151531>,  <30.190201, 38.341827, 32.822689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301655, 38.143230, 33.151531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791355, -0.366333, -0.489447,
		0.544170, 0.786956, 0.290825,
		0.278634, -0.496488, 0.822109,
		30.385244, 37.994286, 33.398163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890694, 38.519779, 33.038158>,  <30.190201, 38.341827, 32.822689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890694, 38.519779, 33.038158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831594, 38.160858, 33.204540>,  <30.796135, 37.945507, 33.304371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831594, 38.160858, 33.204540>,  <30.890694, 38.519779, 33.038158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831594, 38.160858, 33.204540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848702, -0.330969, -0.412511,
		0.507815, 0.292076, 0.810441,
		-0.147746, -0.897302, 0.415957,
		30.787271, 37.891666, 33.329327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530262, 38.323776, 33.166069>,  <30.890694, 38.519779, 33.038158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530262, 38.323776, 33.166069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328890, 37.980724, 33.208084>,  <31.208067, 37.774895, 33.233295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328890, 37.980724, 33.208084>,  <31.530262, 38.323776, 33.166069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328890, 37.980724, 33.208084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816890, -0.512041, -0.265528,
		0.281509, -0.047868, 0.958364,
		-0.503432, -0.857626, 0.105041,
		31.177860, 37.723438, 33.239597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932083, 37.980667, 33.528564>,  <31.530262, 38.323776, 33.166069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932083, 37.980667, 33.528564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697859, 37.725098, 33.329006>,  <31.557323, 37.571758, 33.209270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697859, 37.725098, 33.329006>,  <31.932083, 37.980667, 33.528564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697859, 37.725098, 33.329006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810165, -0.440435, -0.386846,
		0.027431, -0.630713, 0.775531,
		-0.585560, -0.638920, -0.498900,
		31.522190, 37.533421, 33.179337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205833, 37.272221, 33.582714>,  <31.932083, 37.980667, 33.528564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205833, 37.272221, 33.582714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021179, 37.356258, 33.237984>,  <31.910385, 37.406681, 33.031143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021179, 37.356258, 33.237984>,  <32.205833, 37.272221, 33.582714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021179, 37.356258, 33.237984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730243, -0.461578, -0.503677,
		-0.503623, -0.861861, 0.059661,
		-0.461638, 0.210097, -0.861829,
		31.882689, 37.419289, 32.979435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314663, 36.681541, 33.070915>,  <32.205833, 37.272221, 33.582714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314663, 36.681541, 33.070915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221085, 36.999310, 32.846714>,  <32.164936, 37.189972, 32.712193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221085, 36.999310, 32.846714>,  <32.314663, 36.681541, 33.070915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221085, 36.999310, 32.846714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381394, -0.455309, -0.804507,
		-0.894320, -0.401985, -0.196470,
		-0.233945, 0.794419, -0.560507,
		32.150902, 37.237637, 32.678562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284485, 36.019115, 33.264095>,  <32.314663, 36.681541, 33.070915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284485, 36.019115, 33.264095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610756, 35.799229, 33.192001>,  <32.806519, 35.667297, 33.148743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610756, 35.799229, 33.192001>,  <32.284485, 36.019115, 33.264095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610756, 35.799229, 33.192001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577002, -0.750591, -0.321996,
		0.041721, 0.366642, -0.929426,
		0.815677, -0.549715, -0.180237,
		32.855457, 35.634315, 33.137932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240891, 35.314011, 32.891594>,  <32.284485, 36.019115, 33.264095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240891, 35.314011, 32.891594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111462, 35.225037, 32.523720>,  <32.033802, 35.171650, 32.302994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111462, 35.225037, 32.523720>,  <32.240891, 35.314011, 32.891594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111462, 35.225037, 32.523720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294707, 0.899935, -0.321349,
		0.899137, -0.375018, -0.225641,
		-0.323574, -0.222439, -0.919685,
		32.014389, 35.158306, 32.247814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829063, 35.281372, 32.391186>,  <32.240891, 35.314011, 32.891594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829063, 35.281372, 32.391186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465046, 35.400871, 32.276245>,  <32.246635, 35.472572, 32.207279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465046, 35.400871, 32.276245>,  <32.829063, 35.281372, 32.391186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465046, 35.400871, 32.276245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363947, 0.907685, -0.208927,
		0.198410, -0.294715, -0.934760,
		-0.910042, 0.298750, -0.287355,
		32.192032, 35.490498, 32.190041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761887, 35.562878, 31.615040>,  <32.829063, 35.281372, 32.391186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761887, 35.562878, 31.615040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462318, 35.735695, 31.816019>,  <32.282578, 35.839386, 31.936607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462318, 35.735695, 31.816019>,  <32.761887, 35.562878, 31.615040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462318, 35.735695, 31.816019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277728, 0.893072, -0.353962,
		-0.601649, -0.125546, -0.788833,
		-0.748923, 0.432042, 0.502448,
		32.237640, 35.865307, 31.966753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383839, 36.129498, 31.143694>,  <32.761887, 35.562878, 31.615040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383839, 36.129498, 31.143694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370602, 36.203220, 31.536619>,  <32.362659, 36.247456, 31.772373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370602, 36.203220, 31.536619>,  <32.383839, 36.129498, 31.143694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370602, 36.203220, 31.536619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233803, 0.957006, -0.171682,
		-0.971721, 0.223987, -0.074757,
		-0.033089, 0.184306, 0.982312,
		32.360676, 36.258511, 31.831312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787230, 36.562996, 31.290453>,  <32.383839, 36.129498, 31.143694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787230, 36.562996, 31.290453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140282, 36.597301, 31.475323>,  <32.352112, 36.617886, 31.586245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140282, 36.597301, 31.475323>,  <31.787230, 36.562996, 31.290453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140282, 36.597301, 31.475323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039305, 0.966305, -0.254380,
		-0.468417, 0.242690, 0.849522,
		0.882633, 0.085766, 0.462173,
		32.405071, 36.623032, 31.613976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212658, 36.520500, 30.580900>,  <31.787230, 36.562996, 31.290453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212658, 36.520500, 30.580900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865824, 36.322807, 30.555925>,  <31.657722, 36.204193, 30.540941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865824, 36.322807, 30.555925>,  <32.212658, 36.520500, 30.580900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865824, 36.322807, 30.555925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106016, 0.305539, -0.946259,
		0.486745, -0.813870, -0.317325,
		-0.867087, -0.494229, -0.062436,
		31.605698, 36.174538, 30.537195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316120, 35.913727, 30.164225>,  <32.212658, 36.520500, 30.580900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316120, 35.913727, 30.164225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951799, 36.077969, 30.146994>,  <31.733208, 36.176514, 30.136654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951799, 36.077969, 30.146994>,  <32.316120, 35.913727, 30.164225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951799, 36.077969, 30.146994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145785, 0.222241, -0.964031,
		-0.386257, -0.884317, -0.262275,
		-0.910798, 0.410600, -0.043079,
		31.678560, 36.201149, 30.134069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911322, 35.612209, 29.488909>,  <32.316120, 35.913727, 30.164225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911322, 35.612209, 29.488909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873590, 35.990410, 29.613573>,  <31.850952, 36.217331, 29.688372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873590, 35.990410, 29.613573>,  <31.911322, 35.612209, 29.488909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873590, 35.990410, 29.613573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212561, 0.324964, -0.921529,
		-0.972584, -0.020680, -0.231629,
		-0.094329, 0.945500, 0.311659,
		31.845291, 36.274059, 29.707071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421869, 36.081322, 29.033789>,  <31.911322, 35.612209, 29.488909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421869, 36.081322, 29.033789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699514, 36.308563, 29.210634>,  <31.866102, 36.444908, 29.316742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699514, 36.308563, 29.210634>,  <31.421869, 36.081322, 29.033789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699514, 36.308563, 29.210634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190379, 0.447427, -0.873822,
		-0.694235, 0.690701, 0.202410,
		0.694113, 0.568104, 0.442114,
		31.907749, 36.478992, 29.343269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312698, 36.747669, 28.915939>,  <31.421869, 36.081322, 29.033789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312698, 36.747669, 28.915939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704197, 36.692612, 28.976753>,  <31.939096, 36.659576, 29.013241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704197, 36.692612, 28.976753>,  <31.312698, 36.747669, 28.915939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704197, 36.692612, 28.976753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202361, 0.527727, -0.824957,
		0.033315, 0.838188, 0.544363,
		0.978744, -0.137641, 0.152035,
		31.997820, 36.651318, 29.022364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765099, 37.414516, 28.927635>,  <31.312698, 36.747669, 28.915939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765099, 37.414516, 28.927635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962324, 37.098820, 28.781221>,  <32.080658, 36.909401, 28.693373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962324, 37.098820, 28.781221>,  <31.765099, 37.414516, 28.927635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962324, 37.098820, 28.781221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267419, 0.537855, -0.799499,
		0.827875, 0.296318, 0.476255,
		0.493062, -0.789245, -0.366035,
		32.110241, 36.862045, 28.671412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422031, 37.601475, 28.671780>,  <31.765099, 37.414516, 28.927635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422031, 37.601475, 28.671780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286835, 37.284889, 28.468073>,  <32.205719, 37.094940, 28.345848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286835, 37.284889, 28.468073>,  <32.422031, 37.601475, 28.671780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286835, 37.284889, 28.468073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191081, 0.472136, -0.860567,
		0.921549, -0.388173, -0.008343,
		-0.337988, -0.791461, -0.509269,
		32.185440, 37.047451, 28.315292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154976, 37.584229, 28.934525>,  <32.422031, 37.601475, 28.671780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154976, 37.584229, 28.934525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902969, 37.366749, 29.156324>,  <32.751766, 37.236259, 29.289404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902969, 37.366749, 29.156324>,  <33.154976, 37.584229, 28.934525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902969, 37.366749, 29.156324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568439, 0.163622, 0.806291,
		-0.529111, 0.823174, 0.205978,
		-0.630014, -0.543703, 0.554499,
		32.713966, 37.203636, 29.322674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037800, 37.915485, 29.509335>,  <33.154976, 37.584229, 28.934525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037800, 37.915485, 29.509335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970066, 37.530914, 29.596043>,  <32.929424, 37.300171, 29.648067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970066, 37.530914, 29.596043>,  <33.037800, 37.915485, 29.509335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970066, 37.530914, 29.596043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580228, 0.080536, 0.810463,
		-0.796656, 0.263019, 0.544207,
		-0.169339, -0.961424, 0.216770,
		32.919266, 37.242489, 29.661074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824596, 37.917336, 30.154964>,  <33.037800, 37.915485, 29.509335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824596, 37.917336, 30.154964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967289, 37.552910, 30.072300>,  <33.052906, 37.334255, 30.022701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967289, 37.552910, 30.072300>,  <32.824596, 37.917336, 30.154964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967289, 37.552910, 30.072300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566212, 0.034904, 0.823521,
		-0.743064, -0.410792, 0.528305,
		0.356735, -0.911061, -0.206659,
		33.074310, 37.279591, 30.010302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018177, 37.489243, 30.657887>,  <32.824596, 37.917336, 30.154964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018177, 37.489243, 30.657887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242104, 37.226536, 30.455790>,  <33.376457, 37.068913, 30.334532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242104, 37.226536, 30.455790>,  <33.018177, 37.489243, 30.657887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242104, 37.226536, 30.455790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718556, 0.081114, 0.690723,
		-0.412660, -0.749720, 0.517331,
		0.559812, -0.656765, -0.505243,
		33.410046, 37.029507, 30.304216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236698, 36.850002, 31.091932>,  <33.018177, 37.489243, 30.657887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236698, 36.850002, 31.091932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509972, 36.934910, 30.812447>,  <33.673935, 36.985855, 30.644754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509972, 36.934910, 30.812447>,  <33.236698, 36.850002, 31.091932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509972, 36.934910, 30.812447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719181, -0.029647, 0.694190,
		0.126641, -0.976761, -0.172915,
		0.683184, 0.212270, -0.698714,
		33.714928, 36.998592, 30.602833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816349, 36.380428, 31.236002>,  <33.236698, 36.850002, 31.091932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816349, 36.380428, 31.236002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954556, 36.687912, 31.020704>,  <34.037479, 36.872402, 30.891525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954556, 36.687912, 31.020704>,  <33.816349, 36.380428, 31.236002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954556, 36.687912, 31.020704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794910, 0.065082, 0.603227,
		0.498736, -0.636280, -0.588567,
		0.345516, 0.768708, -0.538244,
		34.058212, 36.918526, 30.859232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556023, 36.112881, 31.139910>,  <33.816349, 36.380428, 31.236002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556023, 36.112881, 31.139910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488525, 36.506756, 31.122435>,  <34.448025, 36.743080, 31.111950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488525, 36.506756, 31.122435>,  <34.556023, 36.112881, 31.139910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488525, 36.506756, 31.122435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830285, 0.165892, 0.532078,
		0.531179, 0.053514, -0.845568,
		-0.168746, 0.984691, -0.043687,
		34.437901, 36.802162, 31.109329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239227, 36.346539, 31.043133>,  <34.556023, 36.112881, 31.139910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239227, 36.346539, 31.043133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023830, 36.648701, 31.192472>,  <34.894592, 36.829998, 31.282076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023830, 36.648701, 31.192472>,  <35.239227, 36.346539, 31.043133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023830, 36.648701, 31.192472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812998, 0.349297, 0.465860,
		0.221505, 0.554391, -0.802238,
		-0.538488, 0.755408, 0.373348,
		34.862286, 36.875324, 31.304478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589790, 36.874008, 30.807013>,  <35.239227, 36.346539, 31.043133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589790, 36.874008, 30.807013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382080, 36.981373, 31.131557>,  <35.257454, 37.045792, 31.326284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382080, 36.981373, 31.131557>,  <35.589790, 36.874008, 30.807013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382080, 36.981373, 31.131557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804937, 0.472556, 0.358841,
		-0.287098, 0.839433, -0.461441,
		-0.519279, 0.268408, 0.811361,
		35.226295, 37.061893, 31.374966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438057, 37.273529, 30.112270>,  <35.589790, 36.874008, 30.807013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438057, 37.273529, 30.112270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821369, 37.381771, 30.149069>,  <36.051357, 37.446716, 30.171148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821369, 37.381771, 30.149069>,  <35.438057, 37.273529, 30.112270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821369, 37.381771, 30.149069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164331, -0.258292, -0.951988,
		-0.233854, 0.927392, -0.291987,
		0.958284, 0.270608, 0.091996,
		36.108856, 37.462955, 30.176668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600780, 37.546307, 29.508318>,  <35.438057, 37.273529, 30.112270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600780, 37.546307, 29.508318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950848, 37.451962, 29.677294>,  <36.160889, 37.395355, 29.778679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950848, 37.451962, 29.677294>,  <35.600780, 37.546307, 29.508318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950848, 37.451962, 29.677294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363629, -0.255309, -0.895875,
		0.319158, 0.937649, -0.137669,
		0.875164, -0.235865, 0.422440,
		36.213398, 37.381203, 29.804026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994896, 37.902897, 29.109184>,  <35.600780, 37.546307, 29.508318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994896, 37.902897, 29.109184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215687, 37.626404, 29.295740>,  <36.348160, 37.460506, 29.407673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215687, 37.626404, 29.295740>,  <35.994896, 37.902897, 29.109184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215687, 37.626404, 29.295740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292985, -0.362883, -0.884576,
		0.780692, 0.624912, 0.002217,
		0.551978, -0.691231, 0.466390,
		36.381279, 37.419033, 29.435658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585045, 37.914192, 28.793598>,  <35.994896, 37.902897, 29.109184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585045, 37.914192, 28.793598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627193, 37.558445, 28.971552>,  <36.652481, 37.344997, 29.078323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627193, 37.558445, 28.971552>,  <36.585045, 37.914192, 28.793598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627193, 37.558445, 28.971552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323850, -0.392298, -0.860943,
		0.940223, 0.234792, 0.246686,
		0.105368, -0.889368, 0.444885,
		36.658802, 37.291634, 29.105017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171623, 37.699863, 28.544701>,  <36.585045, 37.914192, 28.793598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171623, 37.699863, 28.544701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011753, 37.359394, 28.680796>,  <36.915833, 37.155113, 28.762453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011753, 37.359394, 28.680796>,  <37.171623, 37.699863, 28.544701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011753, 37.359394, 28.680796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359248, -0.486928, -0.796142,
		0.843327, -0.195968, 0.500396,
		-0.399675, -0.851175, 0.340238,
		36.891850, 37.104042, 28.782867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710712, 37.109291, 28.513809>,  <37.171623, 37.699863, 28.544701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710712, 37.109291, 28.513809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360039, 36.916992, 28.520792>,  <37.149635, 36.801613, 28.524982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360039, 36.916992, 28.520792>,  <37.710712, 37.109291, 28.513809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360039, 36.916992, 28.520792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333914, -0.634234, -0.697316,
		0.346308, -0.605495, 0.716552,
		-0.876683, -0.480752, 0.017457,
		37.097034, 36.772766, 28.526030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852436, 36.451611, 28.624685>,  <37.710712, 37.109291, 28.513809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852436, 36.451611, 28.624685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494568, 36.444199, 28.446150>,  <37.279846, 36.439751, 28.339027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494568, 36.444199, 28.446150>,  <37.852436, 36.451611, 28.624685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494568, 36.444199, 28.446150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359342, -0.623440, -0.694404,
		-0.265398, -0.781652, 0.564433,
		-0.894671, -0.018531, -0.446340,
		37.226166, 36.438641, 28.312248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746643, 35.729118, 28.398516>,  <37.852436, 36.451611, 28.624685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746643, 35.729118, 28.398516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493217, 35.961529, 28.194160>,  <37.341164, 36.100975, 28.071547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493217, 35.961529, 28.194160>,  <37.746643, 35.729118, 28.398516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493217, 35.961529, 28.194160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280098, -0.443284, -0.851496,
		-0.721209, -0.682575, 0.118105,
		-0.633564, 0.581025, -0.510888,
		37.303146, 36.135838, 28.040894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361946, 35.261719, 27.943285>,  <37.746643, 35.729118, 28.398516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361946, 35.261719, 27.943285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340767, 35.631168, 27.791437>,  <37.328060, 35.852840, 27.700329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340767, 35.631168, 27.791437>,  <37.361946, 35.261719, 27.943285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340767, 35.631168, 27.791437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400813, -0.328529, -0.855229,
		-0.914628, -0.197440, -0.352807,
		-0.052950, 0.923626, -0.379619,
		37.324883, 35.908257, 27.677551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005909, 35.074436, 27.355762>,  <37.361946, 35.261719, 27.943285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005909, 35.074436, 27.355762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170620, 35.434029, 27.296062>,  <37.269447, 35.649784, 27.260242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170620, 35.434029, 27.296062>,  <37.005909, 35.074436, 27.355762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170620, 35.434029, 27.296062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440045, -0.339573, -0.831295,
		-0.798000, 0.276628, -0.535419,
		0.411773, 0.898981, -0.149250,
		37.294151, 35.703724, 27.251287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862736, 35.194412, 26.619450>,  <37.005909, 35.074436, 27.355762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862736, 35.194412, 26.619450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171669, 35.410427, 26.753231>,  <37.357029, 35.540035, 26.833500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171669, 35.410427, 26.753231>,  <36.862736, 35.194412, 26.619450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171669, 35.410427, 26.753231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559261, -0.328441, -0.761153,
		-0.301200, 0.774913, -0.555687,
		0.772338, 0.540034, 0.334452,
		37.403370, 35.572437, 26.853567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146721, 35.355228, 26.010525>,  <36.862736, 35.194412, 26.619450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146721, 35.355228, 26.010525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435020, 35.466797, 26.264370>,  <37.607998, 35.533737, 26.416677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435020, 35.466797, 26.264370>,  <37.146721, 35.355228, 26.010525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435020, 35.466797, 26.264370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693199, -0.288757, -0.660375,
		-0.000941, 0.915874, -0.401466,
		0.720746, 0.278917, 0.634611,
		37.651245, 35.550472, 26.454754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597668, 35.719383, 25.609554>,  <37.146721, 35.355228, 26.010525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597668, 35.719383, 25.609554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808922, 35.621243, 25.934731>,  <37.935677, 35.562359, 26.129837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808922, 35.621243, 25.934731>,  <37.597668, 35.719383, 25.609554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808922, 35.621243, 25.934731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752381, -0.308647, -0.581945,
		0.393693, 0.918989, 0.021590,
		0.528138, -0.245351, 0.812941,
		37.967361, 35.547638, 26.178614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300289, 36.011990, 25.512657>,  <37.597668, 35.719383, 25.609554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300289, 36.011990, 25.512657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334141, 35.705948, 25.767988>,  <38.354450, 35.522324, 25.921186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334141, 35.705948, 25.767988>,  <38.300289, 36.011990, 25.512657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334141, 35.705948, 25.767988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695389, -0.413467, -0.587774,
		0.713633, 0.493626, 0.497052,
		0.084626, -0.765100, 0.638327,
		38.359528, 35.476418, 25.959486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035271, 36.000168, 25.709526>,  <38.300289, 36.011990, 25.512657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035271, 36.000168, 25.709526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851326, 35.647179, 25.749083>,  <38.740959, 35.435387, 25.772816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851326, 35.647179, 25.749083>,  <39.035271, 36.000168, 25.709526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851326, 35.647179, 25.749083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687060, -0.424140, -0.589962,
		0.562566, -0.203355, 0.801353,
		-0.459857, -0.882469, 0.098889,
		38.713367, 35.382439, 25.778749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551472, 35.495129, 25.832150>,  <39.035271, 36.000168, 25.709526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551472, 35.495129, 25.832150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240650, 35.268169, 25.723156>,  <39.054157, 35.131992, 25.657761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240650, 35.268169, 25.723156>,  <39.551472, 35.495129, 25.832150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240650, 35.268169, 25.723156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553963, -0.410941, -0.724053,
		0.298852, -0.713573, 0.633641,
		-0.777054, -0.567398, -0.272482,
		39.007534, 35.097950, 25.641411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782593, 34.794044, 25.808996>,  <39.551472, 35.495129, 25.832150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782593, 34.794044, 25.808996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464043, 34.786705, 25.567186>,  <39.272911, 34.782303, 25.422100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464043, 34.786705, 25.567186>,  <39.782593, 34.794044, 25.808996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464043, 34.786705, 25.567186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554077, -0.422833, -0.717085,
		-0.242458, -0.906022, 0.346899,
		-0.796375, -0.018346, -0.604525,
		39.225132, 34.781200, 25.385828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855915, 34.234997, 25.467962>,  <39.782593, 34.794044, 25.808996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855915, 34.234997, 25.467962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595215, 34.424469, 25.231031>,  <39.438793, 34.538151, 25.088873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595215, 34.424469, 25.231031>,  <39.855915, 34.234997, 25.467962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595215, 34.424469, 25.231031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472237, -0.357679, -0.805641,
		-0.593477, -0.804796, 0.009429,
		-0.651749, 0.473677, -0.592329,
		39.399689, 34.566570, 25.053333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580082, 33.704197, 25.036505>,  <39.855915, 34.234997, 25.467962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580082, 33.704197, 25.036505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524990, 34.050152, 24.843426>,  <39.491936, 34.257725, 24.727579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524990, 34.050152, 24.843426>,  <39.580082, 33.704197, 25.036505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524990, 34.050152, 24.843426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352679, -0.412576, -0.839880,
		-0.925553, -0.285914, -0.248204,
		-0.137730, 0.864889, -0.482697,
		39.483669, 34.309620, 24.698616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248890, 33.536808, 24.437504>,  <39.580082, 33.704197, 25.036505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248890, 33.536808, 24.437504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429363, 33.886253, 24.364580>,  <39.537647, 34.095921, 24.320826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429363, 33.886253, 24.364580>,  <39.248890, 33.536808, 24.437504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429363, 33.886253, 24.364580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445557, -0.397511, -0.802163,
		-0.773247, 0.280696, -0.568594,
		0.451186, 0.873610, -0.182308,
		39.564720, 34.148338, 24.309887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195541, 33.561428, 23.692318>,  <39.248890, 33.536808, 24.437504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195541, 33.561428, 23.692318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450260, 33.859608, 23.771099>,  <39.603092, 34.038517, 23.818367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450260, 33.859608, 23.771099>,  <39.195541, 33.561428, 23.692318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450260, 33.859608, 23.771099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454846, -0.156936, -0.876634,
		-0.622580, 0.647821, -0.439002,
		0.636797, 0.745453, 0.196953,
		39.641300, 34.083244, 23.830185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345894, 34.018074, 23.060553>,  <39.195541, 33.561428, 23.692318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345894, 34.018074, 23.060553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671967, 34.103516, 23.275906>,  <39.867611, 34.154781, 23.405117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671967, 34.103516, 23.275906>,  <39.345894, 34.018074, 23.060553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671967, 34.103516, 23.275906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578902, -0.270292, -0.769295,
		-0.018802, 0.938784, -0.343992,
		0.815180, 0.213602, 0.538382,
		39.916519, 34.167595, 23.437420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789139, 34.332253, 22.553406>,  <39.345894, 34.018074, 23.060553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789139, 34.332253, 22.553406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002781, 34.199379, 22.864374>,  <40.130966, 34.119656, 23.050955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002781, 34.199379, 22.864374>,  <39.789139, 34.332253, 22.553406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002781, 34.199379, 22.864374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659689, -0.411331, -0.628981,
		0.528713, 0.848800, -0.000560,
		0.534110, -0.332181, 0.777420,
		40.163013, 34.099724, 23.097601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441372, 34.430508, 22.284870>,  <39.789139, 34.332253, 22.553406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441372, 34.430508, 22.284870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467747, 34.170033, 22.587288>,  <40.483570, 34.013748, 22.768740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467747, 34.170033, 22.587288>,  <40.441372, 34.430508, 22.284870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467747, 34.170033, 22.587288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615596, -0.569768, -0.544432,
		0.785299, 0.501316, 0.363302,
		0.065935, -0.651189, 0.756046,
		40.487526, 33.974674, 22.814102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135784, 34.276424, 22.322968>,  <40.441372, 34.430508, 22.284870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135784, 34.276424, 22.322968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978760, 33.968510, 22.524296>,  <40.884544, 33.783760, 22.645094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978760, 33.968510, 22.524296>,  <41.135784, 34.276424, 22.322968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978760, 33.968510, 22.524296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561335, -0.634032, -0.531890,
		0.728562, 0.073735, 0.681000,
		-0.392556, -0.769784, 0.503322,
		40.860992, 33.737576, 22.675293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682751, 33.846943, 22.388809>,  <41.135784, 34.276424, 22.322968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682751, 33.846943, 22.388809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381916, 33.595898, 22.469280>,  <41.201416, 33.445271, 22.517563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381916, 33.595898, 22.469280>,  <41.682751, 33.846943, 22.388809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381916, 33.595898, 22.469280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450631, -0.712433, -0.537933,
		0.480939, -0.313913, 0.818631,
		-0.752083, -0.627613, 0.201177,
		41.156292, 33.407612, 22.529633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001347, 33.169102, 22.700159>,  <41.682751, 33.846943, 22.388809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001347, 33.169102, 22.700159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657097, 33.144848, 22.497913>,  <41.450546, 33.130295, 22.376566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657097, 33.144848, 22.497913>,  <42.001347, 33.169102, 22.700159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657097, 33.144848, 22.497913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374604, -0.747963, -0.547926,
		-0.344956, -0.660964, 0.666432,
		-0.860626, -0.060638, -0.505614,
		41.398911, 33.126656, 22.346230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011581, 32.428833, 22.596384>,  <42.001347, 33.169102, 22.700159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011581, 32.428833, 22.596384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736526, 32.590176, 22.354900>,  <41.571495, 32.686981, 22.210011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736526, 32.590176, 22.354900>,  <42.011581, 32.428833, 22.596384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736526, 32.590176, 22.354900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206365, -0.688614, -0.695143,
		-0.696125, -0.602581, 0.390265,
		-0.687622, 0.403369, -0.603714,
		41.530235, 32.711182, 22.173788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897408, 31.833754, 22.218254>,  <42.011581, 32.428833, 22.596384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897408, 31.833754, 22.218254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739422, 32.139191, 22.013929>,  <41.644630, 32.322453, 21.891335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739422, 32.139191, 22.013929>,  <41.897408, 31.833754, 22.218254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739422, 32.139191, 22.013929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196244, -0.473060, -0.858896,
		-0.897492, -0.439476, 0.036990,
		-0.394963, 0.763594, -0.510812,
		41.620934, 32.368267, 21.860685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467751, 31.548971, 21.737368>,  <41.897408, 31.833754, 22.218254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467751, 31.548971, 21.737368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491959, 31.920532, 21.591228>,  <41.506485, 32.143467, 21.503544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491959, 31.920532, 21.591228>,  <41.467751, 31.548971, 21.737368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491959, 31.920532, 21.591228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076070, -0.369249, -0.926212,
		-0.995264, 0.028266, -0.093010,
		0.060524, 0.928900, -0.365350,
		41.510117, 32.199203, 21.481623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025436, 31.526396, 21.239122>,  <41.467751, 31.548971, 21.737368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025436, 31.526396, 21.239122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317921, 31.792665, 21.179516>,  <41.493412, 31.952427, 21.143751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317921, 31.792665, 21.179516>,  <41.025436, 31.526396, 21.239122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317921, 31.792665, 21.179516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283849, -0.495557, -0.820886,
		-0.620291, 0.557942, -0.551308,
		0.731211, 0.665676, -0.149018,
		41.537285, 31.992369, 21.134809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956799, 31.692774, 20.551657>,  <41.025436, 31.526396, 21.239122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956799, 31.692774, 20.551657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316864, 31.826504, 20.663324>,  <41.532902, 31.906742, 20.730326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316864, 31.826504, 20.663324>,  <40.956799, 31.692774, 20.551657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316864, 31.826504, 20.663324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414471, -0.460490, -0.784960,
		-0.133877, 0.822299, -0.553084,
		0.900162, 0.334325, 0.279170,
		41.586914, 31.926802, 20.747076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349285, 31.936190, 19.920158>,  <40.956799, 31.692774, 20.551657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349285, 31.936190, 19.920158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627651, 31.849264, 20.193939>,  <41.794670, 31.797110, 20.358208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627651, 31.849264, 20.193939>,  <41.349285, 31.936190, 19.920158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627651, 31.849264, 20.193939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534008, -0.480656, -0.695561,
		0.480140, 0.849556, -0.218451,
		0.695918, -0.217312, 0.684452,
		41.836426, 31.784071, 20.399275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997520, 32.212242, 19.507217>,  <41.349285, 31.936190, 19.920158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997520, 32.212242, 19.507217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096737, 31.964142, 19.804878>,  <42.156269, 31.815281, 19.983475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096737, 31.964142, 19.804878>,  <41.997520, 32.212242, 19.507217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096737, 31.964142, 19.804878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790608, -0.314304, -0.525502,
		0.559834, 0.718678, 0.412416,
		0.248043, -0.620254, 0.744150,
		42.171150, 31.778067, 20.028124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718555, 32.288517, 19.665751>,  <41.997520, 32.212242, 19.507217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718555, 32.288517, 19.665751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687698, 31.934471, 19.849325>,  <42.669186, 31.722044, 19.959469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687698, 31.934471, 19.849325>,  <42.718555, 32.288517, 19.665751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687698, 31.934471, 19.849325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900095, -0.259799, -0.349763,
		0.428811, 0.386105, 0.816728,
		-0.077140, -0.885115, 0.458936,
		42.664555, 31.668938, 19.987005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349403, 32.172760, 19.914303>,  <42.718555, 32.288517, 19.665751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349403, 32.172760, 19.914303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187870, 31.807306, 19.895542>,  <43.090950, 31.588036, 19.884285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187870, 31.807306, 19.895542>,  <43.349403, 32.172760, 19.914303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187870, 31.807306, 19.895542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852843, -0.357418, -0.380672,
		0.331030, -0.193727, 0.923520,
		-0.403830, -0.913631, -0.046903,
		43.066723, 31.533216, 19.881472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806229, 31.768719, 20.216743>,  <43.349403, 32.172760, 19.914303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806229, 31.768719, 20.216743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607342, 31.511101, 19.984200>,  <43.488010, 31.356529, 19.844673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607342, 31.511101, 19.984200>,  <43.806229, 31.768719, 20.216743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607342, 31.511101, 19.984200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863824, -0.430127, -0.262294,
		-0.081129, -0.632609, 0.770210,
		-0.497218, -0.644046, -0.581359,
		43.458176, 31.317886, 19.809792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.208733, 31.249514, 20.221188>,  <43.806229, 31.768719, 20.216743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.208733, 31.249514, 20.221188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981277, 31.181335, 19.899292>,  <43.844807, 31.140429, 19.706156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981277, 31.181335, 19.899292>,  <44.208733, 31.249514, 20.221188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981277, 31.181335, 19.899292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811625, -0.275452, -0.515161,
		-0.133861, -0.946084, 0.294969,
		-0.568635, -0.170444, -0.804738,
		43.810688, 31.130201, 19.657871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499542, 30.616138, 19.939930>,  <44.208733, 31.249514, 20.221188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499542, 30.616138, 19.939930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.292366, 30.776125, 19.637468>,  <44.168060, 30.872118, 19.455992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.292366, 30.776125, 19.637468>,  <44.499542, 30.616138, 19.939930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.292366, 30.776125, 19.637468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827810, 0.011585, -0.560889,
		-0.215578, -0.916456, -0.337098,
		-0.517936, 0.399968, -0.756154,
		44.136986, 30.896114, 19.410622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.662891, 30.170376, 19.409723>,  <44.499542, 30.616138, 19.939930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.662891, 30.170376, 19.409723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531406, 30.508940, 19.242134>,  <44.452515, 30.712078, 19.141581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531406, 30.508940, 19.242134>,  <44.662891, 30.170376, 19.409723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531406, 30.508940, 19.242134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640777, -0.126016, -0.757314,
		-0.693796, -0.517406, -0.500937,
		-0.328713, 0.846411, -0.418972,
		44.432793, 30.762863, 19.116442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.464207, 30.024860, 18.721144>,  <44.662891, 30.170376, 19.409723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.464207, 30.024860, 18.721144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577545, 30.407774, 18.744181>,  <44.645550, 30.637522, 18.758003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577545, 30.407774, 18.744181>,  <44.464207, 30.024860, 18.721144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577545, 30.407774, 18.744181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657872, -0.150328, -0.737974,
		-0.697794, 0.246993, -0.672367,
		0.283350, 0.957286, 0.057592,
		44.662552, 30.694960, 18.761457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669380, 30.172089, 18.086018>,  <44.464207, 30.024860, 18.721144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669380, 30.172089, 18.086018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799923, 30.496622, 18.280018>,  <44.878250, 30.691343, 18.396418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799923, 30.496622, 18.280018>,  <44.669380, 30.172089, 18.086018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799923, 30.496622, 18.280018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687157, 0.148690, -0.711130,
		-0.649080, 0.565355, -0.508989,
		0.326359, 0.811335, 0.485000,
		44.897831, 30.740023, 18.425518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.906342, 30.628691, 17.504688>,  <44.669380, 30.172089, 18.086018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.906342, 30.628691, 17.504688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.072876, 30.745123, 17.849232>,  <45.172798, 30.814981, 18.055958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.072876, 30.745123, 17.849232>,  <44.906342, 30.628691, 17.504688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.072876, 30.745123, 17.849232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846890, 0.220549, -0.483875,
		-0.330818, 0.930930, -0.154689,
		0.416338, 0.291079, 0.861357,
		45.197777, 30.832447, 18.107639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.247902, 31.269516, 17.381075>,  <44.906342, 30.628691, 17.504688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.247902, 31.269516, 17.381075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434959, 31.069576, 17.672680>,  <45.547195, 30.949614, 17.847643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434959, 31.069576, 17.672680>,  <45.247902, 31.269516, 17.381075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.434959, 31.069576, 17.672680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812015, -0.082884, -0.577722,
		0.349196, 0.862138, 0.367123,
		0.467647, -0.499848, 0.729012,
		45.575253, 30.919622, 17.891384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.820862, 31.547443, 17.859753>,  <45.247902, 31.269516, 17.381075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.820862, 31.547443, 17.859753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854767, 31.178640, 17.708643>,  <45.875111, 30.957357, 17.617977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854767, 31.178640, 17.708643>,  <45.820862, 31.547443, 17.859753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.854767, 31.178640, 17.708643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924606, 0.214097, -0.315065,
		0.371373, -0.322586, 0.870644,
		0.084767, -0.922009, -0.377775,
		45.880196, 30.902039, 17.595310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.145836, 31.472321, 18.525347>,  <45.820862, 31.547443, 17.859753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.145836, 31.472321, 18.525347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.450382, 31.281023, 18.700439>,  <46.633110, 31.166245, 18.805494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.450382, 31.281023, 18.700439>,  <46.145836, 31.472321, 18.525347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.450382, 31.281023, 18.700439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323660, -0.304641, -0.895789,
		0.561755, 0.823698, -0.077155,
		0.761364, -0.478241, 0.437732,
		46.678791, 31.137550, 18.831758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.832661, 31.676281, 18.146704>,  <46.145836, 31.472321, 18.525347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.832661, 31.676281, 18.146704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.902294, 31.324364, 18.323637>,  <46.944073, 31.113213, 18.429796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.902294, 31.324364, 18.323637>,  <46.832661, 31.676281, 18.146704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.902294, 31.324364, 18.323637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154380, -0.419253, -0.894647,
		0.972554, 0.224031, 0.062837,
		0.174085, -0.879794, 0.442332,
		46.954521, 31.060425, 18.456337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.428993, 31.298653, 17.847084>,  <46.832661, 31.676281, 18.146704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.428993, 31.298653, 17.847084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.191521, 31.019249, 18.006895>,  <47.049038, 30.851606, 18.102781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.191521, 31.019249, 18.006895>,  <47.428993, 31.298653, 17.847084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.191521, 31.019249, 18.006895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009596, -0.490311, -0.871495,
		0.804641, -0.521227, 0.284387,
		-0.593684, -0.698511, 0.399526,
		47.013416, 30.809696, 18.126753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.043808, 30.829313, 17.274683>,  <47.428993, 31.298653, 17.847084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.043808, 30.829313, 17.274683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.239479, 30.504307, 17.401505>,  <47.356880, 30.309303, 17.477598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.239479, 30.504307, 17.401505>,  <47.043808, 30.829313, 17.274683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.239479, 30.504307, 17.401505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105586, 0.305676, 0.946263,
		-0.865772, -0.496364, 0.063738,
		0.489174, -0.812518, 0.317054,
		47.386230, 30.260551, 17.496620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.679405, 30.362488, 17.875542>,  <47.043808, 30.829313, 17.274683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.679405, 30.362488, 17.875542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.078663, 30.382366, 17.889610>,  <47.318218, 30.394293, 17.898052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.078663, 30.382366, 17.889610>,  <46.679405, 30.362488, 17.875542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.078663, 30.382366, 17.889610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048131, 0.290274, 0.955732,
		0.037287, -0.955652, 0.292128,
		0.998145, 0.049697, 0.035173,
		47.378105, 30.397276, 17.900162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.033676, 29.873602, 18.308378>,  <46.679405, 30.362488, 17.875542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.033676, 29.873602, 18.308378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.211910, 30.231478, 18.295851>,  <47.318851, 30.446203, 18.288334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.211910, 30.231478, 18.295851>,  <47.033676, 29.873602, 18.308378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.211910, 30.231478, 18.295851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311481, 0.187734, 0.931523,
		0.839305, -0.405320, 0.362331,
		0.445587, 0.894691, -0.031317,
		47.345585, 30.499886, 18.286455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.434319, 29.981277, 19.017395>,  <47.033676, 29.873602, 18.308378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.434319, 29.981277, 19.017395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.305737, 30.322939, 18.853891>,  <47.228588, 30.527937, 18.755789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.305737, 30.322939, 18.853891>,  <47.434319, 29.981277, 19.017395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.305737, 30.322939, 18.853891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224694, 0.350535, 0.909196,
		0.919879, 0.384115, 0.079241,
		-0.321459, 0.854155, -0.408758,
		47.209297, 30.579185, 18.731264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.656464, 30.491819, 19.460823>,  <47.434319, 29.981277, 19.017395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.656464, 30.491819, 19.460823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.366142, 30.675983, 19.256380>,  <47.191948, 30.786482, 19.133715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.366142, 30.675983, 19.256380>,  <47.656464, 30.491819, 19.460823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.366142, 30.675983, 19.256380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267168, 0.495999, 0.826200,
		0.633899, 0.736212, -0.236992,
		-0.725805, 0.460410, -0.511105,
		47.148399, 30.814106, 19.103048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.682854, 31.208021, 19.549564>,  <47.656464, 30.491819, 19.460823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.682854, 31.208021, 19.549564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.301666, 31.104755, 19.486061>,  <47.072952, 31.042795, 19.447960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.301666, 31.104755, 19.486061>,  <47.682854, 31.208021, 19.549564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.301666, 31.104755, 19.486061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261826, 0.437452, 0.860280,
		-0.152646, 0.861386, -0.484472,
		-0.952967, -0.258166, -0.158759,
		47.015778, 31.027306, 19.438433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.300266, 31.695616, 19.768810>,  <47.682854, 31.208021, 19.549564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.300266, 31.695616, 19.768810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995304, 31.437628, 19.747807>,  <46.812328, 31.282835, 19.735205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995304, 31.437628, 19.747807>,  <47.300266, 31.695616, 19.768810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.995304, 31.437628, 19.747807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394654, 0.399128, 0.827614,
		-0.512828, 0.651698, -0.558836,
		-0.762401, -0.644971, -0.052511,
		46.766582, 31.244137, 19.732054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.605648, 32.073574, 19.823421>,  <47.300266, 31.695616, 19.768810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.605648, 32.073574, 19.823421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.523094, 31.707088, 19.960800>,  <46.473564, 31.487196, 20.043228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.523094, 31.707088, 19.960800>,  <46.605648, 32.073574, 19.823421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.523094, 31.707088, 19.960800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322698, 0.395100, 0.860094,
		-0.923728, 0.066679, -0.377202,
		-0.206383, -0.916215, 0.343447,
		46.461178, 31.432224, 20.063835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.016785, 32.141518, 20.145803>,  <46.605648, 32.073574, 19.823421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.016785, 32.141518, 20.145803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.147049, 31.795784, 20.299099>,  <46.225208, 31.588345, 20.391077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.147049, 31.795784, 20.299099>,  <46.016785, 32.141518, 20.145803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.147049, 31.795784, 20.299099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366899, 0.258045, 0.893755,
		-0.871396, -0.431669, -0.233089,
		0.325659, -0.864335, 0.383238,
		46.244747, 31.536484, 20.414070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.456329, 31.946892, 20.590132>,  <46.016785, 32.141518, 20.145803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.456329, 31.946892, 20.590132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770287, 31.733013, 20.715382>,  <45.958660, 31.604687, 20.790531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770287, 31.733013, 20.715382>,  <45.456329, 31.946892, 20.590132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.770287, 31.733013, 20.715382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141961, 0.336726, 0.930840,
		-0.603155, -0.775058, 0.188387,
		0.784890, -0.534697, 0.313126,
		46.005753, 31.572603, 20.809319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.237297, 31.564734, 21.146950>,  <45.456329, 31.946892, 20.590132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.237297, 31.564734, 21.146950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632038, 31.551268, 21.210176>,  <45.868885, 31.543188, 21.248112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632038, 31.551268, 21.210176>,  <45.237297, 31.564734, 21.146950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632038, 31.551268, 21.210176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139679, 0.314290, 0.938995,
		-0.081288, -0.948730, 0.305456,
		0.986855, -0.033663, 0.158065,
		45.928093, 31.541168, 21.257597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368088, 31.036880, 21.773376>,  <45.237297, 31.564734, 21.146950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368088, 31.036880, 21.773376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.679775, 31.286505, 21.750177>,  <45.866787, 31.436279, 21.736258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.679775, 31.286505, 21.750177>,  <45.368088, 31.036880, 21.773376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.679775, 31.286505, 21.750177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108054, 0.224916, 0.968368,
		0.617368, -0.748304, 0.242691,
		0.779219, 0.624063, -0.057998,
		45.913540, 31.473724, 21.732779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.810078, 30.964113, 22.371899>,  <45.368088, 31.036880, 21.773376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.810078, 30.964113, 22.371899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.935608, 31.329004, 22.266562>,  <46.010925, 31.547939, 22.203360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.935608, 31.329004, 22.266562>,  <45.810078, 30.964113, 22.371899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.935608, 31.329004, 22.266562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047079, 0.291964, 0.955270,
		0.948312, -0.287393, 0.134573,
		0.313828, 0.912229, -0.263343,
		46.029755, 31.602673, 22.187559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.034370, 31.162306, 22.965488>,  <45.810078, 30.964113, 22.371899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.034370, 31.162306, 22.965488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.983932, 31.492205, 22.744982>,  <45.953671, 31.690144, 22.612679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.983932, 31.492205, 22.744982>,  <46.034370, 31.162306, 22.965488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.983932, 31.492205, 22.744982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318152, 0.492726, 0.809939,
		0.939617, 0.277513, 0.200266,
		-0.126093, 0.824747, -0.551265,
		45.946106, 31.739628, 22.579603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.347404, 31.679901, 23.338011>,  <46.034370, 31.162306, 22.965488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.347404, 31.679901, 23.338011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.097473, 31.895937, 23.112486>,  <45.947514, 32.025558, 22.977171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.097473, 31.895937, 23.112486>,  <46.347404, 31.679901, 23.338011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.097473, 31.895937, 23.112486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202987, 0.584929, 0.785274,
		0.753910, 0.605112, -0.255851,
		-0.624833, 0.540091, -0.563813,
		45.910023, 32.057964, 22.943342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.429688, 32.423752, 23.437576>,  <46.347404, 31.679901, 23.338011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.429688, 32.423752, 23.437576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063297, 32.364971, 23.288237>,  <45.843464, 32.329704, 23.198633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063297, 32.364971, 23.288237>,  <46.429688, 32.423752, 23.437576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.063297, 32.364971, 23.288237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397603, 0.457214, 0.795529,
		0.053797, 0.877132, -0.477226,
		-0.915979, -0.146949, -0.373347,
		45.788502, 32.320885, 23.176233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064487, 33.012192, 23.641109>,  <46.429688, 32.423752, 23.437576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.064487, 33.012192, 23.641109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.757710, 32.772652, 23.548872>,  <45.573643, 32.628929, 23.493528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.757710, 32.772652, 23.548872>,  <46.064487, 33.012192, 23.641109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.757710, 32.772652, 23.548872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517166, 0.364066, 0.774594,
		-0.379912, 0.713328, -0.588923,
		-0.766946, -0.598848, -0.230596,
		45.527626, 32.592999, 23.479692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.540081, 33.434132, 23.577513>,  <46.064487, 33.012192, 23.641109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.540081, 33.434132, 23.577513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378597, 33.073402, 23.639141>,  <45.281708, 32.856964, 23.676119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378597, 33.073402, 23.639141>,  <45.540081, 33.434132, 23.577513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.378597, 33.073402, 23.639141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735605, 0.420091, 0.531421,
		-0.543972, 0.101202, -0.832978,
		-0.403708, -0.901821, 0.154073,
		45.257484, 32.802856, 23.685364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.879910, 33.459190, 23.276070>,  <45.540081, 33.434132, 23.577513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.879910, 33.459190, 23.276070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.870396, 33.165081, 23.547010>,  <44.864685, 32.988617, 23.709576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.870396, 33.165081, 23.547010>,  <44.879910, 33.459190, 23.276070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870396, 33.165081, 23.547010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780633, 0.436932, 0.446881,
		-0.624537, -0.518133, -0.584374,
		-0.023788, -0.735275, 0.677352,
		44.863258, 32.944500, 23.750216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212547, 33.200474, 23.262920>,  <44.879910, 33.459190, 23.276070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212547, 33.200474, 23.262920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365940, 33.079887, 23.612104>,  <44.457977, 33.007534, 23.821615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365940, 33.079887, 23.612104>,  <44.212547, 33.200474, 23.262920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365940, 33.079887, 23.612104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738565, 0.467402, 0.485857,
		-0.554492, -0.831056, -0.043411,
		0.383484, -0.301466, 0.872960,
		44.480984, 32.989449, 23.873993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597801, 32.939686, 23.702318>,  <44.212547, 33.200474, 23.262920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597801, 32.939686, 23.702318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885578, 33.001888, 23.973087>,  <44.058243, 33.039211, 24.135550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885578, 33.001888, 23.973087>,  <43.597801, 32.939686, 23.702318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885578, 33.001888, 23.973087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655789, 0.473145, 0.588282,
		-0.228798, -0.867151, 0.442381,
		0.719439, 0.155511, 0.676922,
		44.101410, 33.048542, 24.176165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389290, 32.697834, 24.348217>,  <43.597801, 32.939686, 23.702318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389290, 32.697834, 24.348217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683414, 32.950134, 24.447390>,  <43.859890, 33.101517, 24.506893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683414, 32.950134, 24.447390>,  <43.389290, 32.697834, 24.348217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683414, 32.950134, 24.447390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634389, 0.511850, 0.579275,
		0.238475, -0.583233, 0.776511,
		0.735310, 0.630753, 0.247933,
		43.904007, 33.139359, 24.521769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327606, 32.758202, 25.086349>,  <43.389290, 32.697834, 24.348217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327606, 32.758202, 25.086349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.546173, 33.090599, 25.044628>,  <43.677311, 33.290039, 25.019596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.546173, 33.090599, 25.044628>,  <43.327606, 32.758202, 25.086349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.546173, 33.090599, 25.044628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626459, 0.488191, 0.607633,
		0.555862, -0.266675, 0.787338,
		0.546412, 0.830996, -0.104306,
		43.710098, 33.339897, 25.013336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679691, 32.904865, 25.746517>,  <43.327606, 32.758202, 25.086349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679691, 32.904865, 25.746517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616657, 33.228275, 25.519730>,  <43.578838, 33.422321, 25.383657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616657, 33.228275, 25.519730>,  <43.679691, 32.904865, 25.746517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616657, 33.228275, 25.519730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389677, 0.476637, 0.788015,
		0.907369, 0.345115, 0.239953,
		-0.157586, 0.808525, -0.566969,
		43.569382, 33.470833, 25.349638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753651, 33.522980, 26.135553>,  <43.679691, 32.904865, 25.746517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753651, 33.522980, 26.135553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537930, 33.652893, 25.824770>,  <43.408497, 33.730839, 25.638300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537930, 33.652893, 25.824770>,  <43.753651, 33.522980, 26.135553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537930, 33.652893, 25.824770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542963, 0.571136, 0.615626,
		0.643692, 0.753871, -0.131674,
		-0.539307, 0.324779, -0.776960,
		43.376137, 33.750328, 25.591682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557018, 34.186535, 26.348436>,  <43.753651, 33.522980, 26.135553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557018, 34.186535, 26.348436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.311779, 34.072510, 26.053722>,  <43.164635, 34.004093, 25.876894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.311779, 34.072510, 26.053722>,  <43.557018, 34.186535, 26.348436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311779, 34.072510, 26.053722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741921, 0.528180, 0.413012,
		0.271420, 0.799852, -0.535321,
		-0.613094, -0.285066, -0.736785,
		43.127850, 33.986988, 25.832687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269836, 34.766827, 26.172358>,  <43.557018, 34.186535, 26.348436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269836, 34.766827, 26.172358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020576, 34.475826, 26.057526>,  <42.871021, 34.301224, 25.988626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020576, 34.475826, 26.057526>,  <43.269836, 34.766827, 26.172358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020576, 34.475826, 26.057526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770703, 0.508776, 0.383620,
		-0.133025, 0.460309, -0.877736,
		-0.623155, -0.727504, -0.287081,
		42.833630, 34.257576, 25.971401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645145, 35.053005, 26.095217>,  <43.269836, 34.766827, 26.172358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645145, 35.053005, 26.095217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492859, 34.683258, 26.085505>,  <42.401485, 34.461411, 26.079678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492859, 34.683258, 26.085505>,  <42.645145, 35.053005, 26.095217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492859, 34.683258, 26.085505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842703, 0.336035, 0.420634,
		-0.380663, 0.180605, -0.906906,
		-0.380721, -0.924371, -0.024280,
		42.378643, 34.405945, 26.078220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963745, 35.165684, 25.866827>,  <42.645145, 35.053005, 26.095217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963745, 35.165684, 25.866827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974480, 34.803375, 26.035995>,  <41.980923, 34.585991, 26.137497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974480, 34.803375, 26.035995>,  <41.963745, 35.165684, 25.866827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974480, 34.803375, 26.035995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835684, 0.211830, 0.506715,
		-0.548555, -0.367027, -0.751252,
		0.026840, -0.905770, 0.422919,
		41.982533, 34.531643, 26.162870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256577, 34.818504, 25.732372>,  <41.963745, 35.165684, 25.866827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256577, 34.818504, 25.732372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436047, 34.644245, 26.044500>,  <41.543728, 34.539688, 26.231777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436047, 34.644245, 26.044500>,  <41.256577, 34.818504, 25.732372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436047, 34.644245, 26.044500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729312, 0.326150, 0.601440,
		-0.516519, -0.838948, -0.171389,
		0.448679, -0.435651, 0.780318,
		41.570652, 34.513550, 26.278595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775066, 34.356358, 26.059561>,  <41.256577, 34.818504, 25.732372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775066, 34.356358, 26.059561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042999, 34.432869, 26.346540>,  <41.203758, 34.478775, 26.518728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042999, 34.432869, 26.346540>,  <40.775066, 34.356358, 26.059561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042999, 34.432869, 26.346540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739120, 0.264017, 0.619675,
		-0.070887, -0.945361, 0.318227,
		0.669833, 0.191281, 0.717450,
		41.243950, 34.490253, 26.561775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503155, 34.090637, 26.713860>,  <40.775066, 34.356358, 26.059561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503155, 34.090637, 26.713860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774494, 34.359062, 26.833540>,  <40.937298, 34.520115, 26.905348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774494, 34.359062, 26.833540>,  <40.503155, 34.090637, 26.713860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774494, 34.359062, 26.833540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637566, 0.335224, 0.693639,
		0.365171, -0.661292, 0.655243,
		0.678351, 0.671057, 0.299203,
		40.978001, 34.560379, 26.923302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460655, 33.994122, 27.453789>,  <40.503155, 34.090637, 26.713860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460655, 33.994122, 27.453789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642860, 34.346107, 27.399881>,  <40.752182, 34.557301, 27.367537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642860, 34.346107, 27.399881>,  <40.460655, 33.994122, 27.453789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642860, 34.346107, 27.399881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601639, 0.415879, 0.681964,
		0.656155, -0.229561, 0.718862,
		0.455512, 0.879970, -0.134767,
		40.779514, 34.610100, 27.359451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686687, 34.192463, 28.123714>,  <40.460655, 33.994122, 27.453789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686687, 34.192463, 28.123714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647854, 34.528389, 27.910063>,  <40.624554, 34.729942, 27.781872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647854, 34.528389, 27.910063>,  <40.686687, 34.192463, 28.123714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647854, 34.528389, 27.910063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530875, 0.410249, 0.741530,
		0.841870, 0.355547, 0.406006,
		-0.097086, 0.839811, -0.534127,
		40.618729, 34.780331, 27.749825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821262, 34.726376, 28.635742>,  <40.686687, 34.192463, 28.123714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821262, 34.726376, 28.635742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643250, 34.913086, 28.330046>,  <40.536442, 35.025112, 28.146627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643250, 34.913086, 28.330046>,  <40.821262, 34.726376, 28.635742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643250, 34.913086, 28.330046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645920, 0.423793, 0.634970,
		0.620272, 0.776219, 0.112903,
		-0.445028, 0.466780, -0.764242,
		40.509743, 35.053120, 28.100773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970966, 35.458721, 28.679989>,  <40.821262, 34.726376, 28.635742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970966, 35.458721, 28.679989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637878, 35.427521, 28.460722>,  <40.438026, 35.408798, 28.329161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637878, 35.427521, 28.460722>,  <40.970966, 35.458721, 28.679989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637878, 35.427521, 28.460722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479534, 0.596541, 0.643573,
		0.276805, 0.798783, -0.534158,
		-0.832722, -0.078003, -0.548169,
		40.388062, 35.404121, 28.296272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712498, 36.091518, 28.740486>,  <40.970966, 35.458721, 28.679989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712498, 36.091518, 28.740486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389687, 35.895153, 28.609207>,  <40.195999, 35.777332, 28.530439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389687, 35.895153, 28.609207>,  <40.712498, 36.091518, 28.740486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389687, 35.895153, 28.609207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580213, 0.555829, 0.595321,
		-0.109828, 0.670865, -0.733402,
		-0.807026, -0.490912, -0.328199,
		40.147579, 35.747879, 28.510748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282768, 36.706459, 28.568686>,  <40.712498, 36.091518, 28.740486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282768, 36.706459, 28.568686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050705, 36.382164, 28.599977>,  <39.911469, 36.187588, 28.618753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050705, 36.382164, 28.599977>,  <40.282768, 36.706459, 28.568686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050705, 36.382164, 28.599977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634432, 0.510037, 0.580825,
		-0.510800, 0.287336, -0.810260,
		-0.580155, -0.810741, 0.078231,
		39.876659, 36.138943, 28.623447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559425, 36.894855, 28.387402>,  <40.282768, 36.706459, 28.568686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559425, 36.894855, 28.387402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571194, 36.576107, 28.628773>,  <39.578255, 36.384857, 28.773596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571194, 36.576107, 28.628773>,  <39.559425, 36.894855, 28.387402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571194, 36.576107, 28.628773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649630, 0.443568, 0.617437,
		-0.759681, -0.410169, -0.504624,
		0.029418, -0.796874, 0.603428,
		39.580021, 36.337044, 28.809801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903946, 36.756733, 28.686863>,  <39.559425, 36.894855, 28.387402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903946, 36.756733, 28.686863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145241, 36.575787, 28.949608>,  <39.290020, 36.467220, 29.107254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145241, 36.575787, 28.949608>,  <38.903946, 36.756733, 28.686863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145241, 36.575787, 28.949608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535274, 0.380924, 0.753909,
		-0.591257, -0.806389, -0.012351,
		0.603239, -0.452365, 0.656862,
		39.326214, 36.440079, 29.146667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439175, 36.502804, 29.191607>,  <38.903946, 36.756733, 28.686863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439175, 36.502804, 29.191607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777721, 36.462864, 29.400867>,  <38.980850, 36.438900, 29.526424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777721, 36.462864, 29.400867>,  <38.439175, 36.502804, 29.191607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777721, 36.462864, 29.400867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428448, 0.455837, 0.780157,
		-0.316374, -0.884444, 0.343024,
		0.846368, -0.099853, 0.523153,
		39.031631, 36.432907, 29.557814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269711, 36.311844, 29.858040>,  <38.439175, 36.502804, 29.191607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269711, 36.311844, 29.858040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635677, 36.466270, 29.905172>,  <38.855259, 36.558926, 29.933453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635677, 36.466270, 29.905172>,  <38.269711, 36.311844, 29.858040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635677, 36.466270, 29.905172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251166, 0.315982, 0.914916,
		0.315982, -0.866666, 0.386063,
		-0.914916, -0.386063, -0.117833,
		38.910152, 36.582088, 29.940521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355011, 36.260727, 30.597420>,  <38.269711, 36.311844, 29.858040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355011, 36.260727, 30.597420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607559, 36.528637, 30.441074>,  <38.759087, 36.689381, 30.347267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607559, 36.528637, 30.441074>,  <38.355011, 36.260727, 30.597420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607559, 36.528637, 30.441074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013168, 0.494697, 0.868965,
		0.775369, -0.553786, 0.303518,
		0.631371, 0.669772, -0.390866,
		38.796970, 36.729568, 30.323814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842892, 36.170879, 31.025530>,  <38.355011, 36.260727, 30.597420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842892, 36.170879, 31.025530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978264, 36.027473, 31.373537>,  <39.059486, 35.941429, 31.582342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978264, 36.027473, 31.373537>,  <38.842892, 36.170879, 31.025530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978264, 36.027473, 31.373537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631229, -0.599196, -0.492456,
		0.697864, 0.715844, 0.023518,
		0.338430, -0.358513, 0.870019,
		39.079792, 35.919918, 31.634542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453449, 36.281033, 30.745342>,  <38.842892, 36.170879, 31.025530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453449, 36.281033, 30.745342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439754, 36.011219, 31.040323>,  <39.431538, 35.849331, 31.217312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439754, 36.011219, 31.040323>,  <39.453449, 36.281033, 30.745342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439754, 36.011219, 31.040323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604539, -0.601559, -0.522168,
		0.795840, 0.427943, 0.428373,
		-0.034233, -0.674530, 0.737453,
		39.429485, 35.808861, 31.261559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117413, 36.190929, 31.071079>,  <39.453449, 36.281033, 30.745342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117413, 36.190929, 31.071079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901703, 35.859009, 31.128513>,  <39.772278, 35.659855, 31.162973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901703, 35.859009, 31.128513>,  <40.117413, 36.190929, 31.071079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901703, 35.859009, 31.128513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694680, -0.534714, -0.481145,
		0.476032, -0.159721, 0.864802,
		-0.539271, -0.829801, 0.143586,
		39.739922, 35.610069, 31.171589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648827, 35.634830, 31.277315>,  <40.117413, 36.190929, 31.071079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648827, 35.634830, 31.277315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329136, 35.429672, 31.151985>,  <40.137321, 35.306576, 31.076788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329136, 35.429672, 31.151985>,  <40.648827, 35.634830, 31.277315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329136, 35.429672, 31.151985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595623, -0.745663, -0.298697,
		-0.080433, -0.425350, 0.901448,
		-0.799227, -0.512898, -0.313324,
		40.089367, 35.275803, 31.057987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709183, 35.005390, 31.620136>,  <40.648827, 35.634830, 31.277315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709183, 35.005390, 31.620136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448830, 34.946232, 31.322283>,  <40.292618, 34.910736, 31.143570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448830, 34.946232, 31.322283>,  <40.709183, 35.005390, 31.620136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448830, 34.946232, 31.322283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562775, -0.752317, -0.342495,
		-0.509546, -0.641985, 0.572903,
		-0.650882, -0.147898, -0.744633,
		40.253567, 34.901863, 31.098892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461586, 34.298687, 31.714600>,  <40.709183, 35.005390, 31.620136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461586, 34.298687, 31.714600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397243, 34.428364, 31.341713>,  <40.358639, 34.506168, 31.117981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397243, 34.428364, 31.341713>,  <40.461586, 34.298687, 31.714600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397243, 34.428364, 31.341713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558868, -0.748589, -0.356765,
		-0.813506, -0.578373, -0.060766,
		-0.160855, 0.324191, -0.932216,
		40.348988, 34.525620, 31.062048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438576, 33.716076, 31.425226>,  <40.461586, 34.298687, 31.714600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438576, 33.716076, 31.425226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457169, 33.953739, 31.104023>,  <40.468323, 34.096336, 30.911301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457169, 33.953739, 31.104023>,  <40.438576, 33.716076, 31.425226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457169, 33.953739, 31.104023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566465, -0.677800, -0.468726,
		-0.822774, -0.433089, -0.368072,
		0.046479, 0.594155, -0.803006,
		40.471111, 34.131985, 30.863121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310528, 33.336502, 30.795441>,  <40.438576, 33.716076, 31.425226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310528, 33.336502, 30.795441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521889, 33.644081, 30.651491>,  <40.648705, 33.828629, 30.565121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521889, 33.644081, 30.651491>,  <40.310528, 33.336502, 30.795441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521889, 33.644081, 30.651491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606493, -0.638505, -0.473791,
		-0.594103, 0.032090, -0.803749,
		0.528401, 0.768949, -0.359875,
		40.680408, 33.874767, 30.543530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475140, 33.099030, 30.098957>,  <40.310528, 33.336502, 30.795441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475140, 33.099030, 30.098957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751404, 33.379055, 30.171511>,  <40.917164, 33.547070, 30.215044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751404, 33.379055, 30.171511>,  <40.475140, 33.099030, 30.098957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751404, 33.379055, 30.171511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694057, -0.571200, -0.438196,
		-0.203157, 0.428537, -0.880388,
		0.690661, 0.700062, 0.181386,
		40.958603, 33.589073, 30.225927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789261, 33.197525, 29.475344>,  <40.475140, 33.099030, 30.098957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789261, 33.197525, 29.475344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039333, 33.325993, 29.759880>,  <41.189377, 33.403072, 29.930601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039333, 33.325993, 29.759880>,  <40.789261, 33.197525, 29.475344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039333, 33.325993, 29.759880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758594, -0.464379, -0.457041,
		0.183543, 0.825350, -0.533957,
		0.625177, 0.321170, 0.711339,
		41.226887, 33.422344, 29.973282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392406, 33.444878, 29.121935>,  <40.789261, 33.197525, 29.475344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392406, 33.444878, 29.121935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527393, 33.397110, 29.495428>,  <41.608383, 33.368450, 29.719524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527393, 33.397110, 29.495428>,  <41.392406, 33.444878, 29.121935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527393, 33.397110, 29.495428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863706, -0.355174, -0.357580,
		0.374338, 0.927141, -0.016720,
		0.337466, -0.119415, 0.933733,
		41.628632, 33.361286, 29.775547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064430, 33.751785, 29.036201>,  <41.392406, 33.444878, 29.121935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064430, 33.751785, 29.036201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047211, 33.531628, 29.369719>,  <42.036880, 33.399532, 29.569828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047211, 33.531628, 29.369719>,  <42.064430, 33.751785, 29.036201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047211, 33.531628, 29.369719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828842, -0.485649, -0.277788,
		0.557825, 0.679124, 0.477098,
		-0.043050, -0.550396, 0.833793,
		42.034294, 33.366508, 29.619856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656868, 33.933571, 29.332937>,  <42.064430, 33.751785, 29.036201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656868, 33.933571, 29.332937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524078, 33.583897, 29.474697>,  <42.444405, 33.374092, 29.559753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524078, 33.583897, 29.474697>,  <42.656868, 33.933571, 29.332937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524078, 33.583897, 29.474697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831891, -0.448437, -0.326897,
		0.444693, 0.186299, 0.876094,
		-0.331972, -0.874183, 0.354398,
		42.424488, 33.321640, 29.581017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240280, 33.724724, 29.742359>,  <42.656868, 33.933571, 29.332937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240280, 33.724724, 29.742359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020603, 33.415436, 29.615538>,  <42.888798, 33.229862, 29.539444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020603, 33.415436, 29.615538>,  <43.240280, 33.724724, 29.742359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020603, 33.415436, 29.615538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835107, -0.493507, -0.242996,
		0.031420, -0.398226, 0.916749,
		-0.549189, -0.773219, -0.317056,
		42.855846, 33.183472, 29.520420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685028, 33.146915, 29.944708>,  <43.240280, 33.724724, 29.742359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685028, 33.146915, 29.944708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425381, 32.997250, 29.679789>,  <43.269592, 32.907448, 29.520836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425381, 32.997250, 29.679789>,  <43.685028, 33.146915, 29.944708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425381, 32.997250, 29.679789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692449, -0.651065, -0.310851,
		-0.314889, -0.660389, 0.681712,
		-0.649122, -0.374167, -0.662299,
		43.230644, 32.884998, 29.481098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892212, 32.481373, 29.794062>,  <43.685028, 33.146915, 29.944708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892212, 32.481373, 29.794062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.640167, 32.550095, 29.491159>,  <43.488941, 32.591328, 29.309418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.640167, 32.550095, 29.491159>,  <43.892212, 32.481373, 29.794062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.640167, 32.550095, 29.491159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594189, -0.521141, -0.612659,
		-0.499891, -0.836001, 0.226300,
		-0.630118, 0.171797, -0.757256,
		43.451134, 32.601635, 29.263983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884464, 31.835880, 29.380892>,  <43.892212, 32.481373, 29.794062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884464, 31.835880, 29.380892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.755516, 32.120014, 29.130611>,  <43.678146, 32.290493, 28.980442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.755516, 32.120014, 29.130611>,  <43.884464, 31.835880, 29.380892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.755516, 32.120014, 29.130611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460970, -0.459523, -0.759174,
		-0.826793, -0.533162, -0.179309,
		-0.322366, 0.710336, -0.625701,
		43.658806, 32.333115, 28.942902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740051, 31.401474, 28.890245>,  <43.884464, 31.835880, 29.380892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740051, 31.401474, 28.890245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.763130, 31.775120, 28.749332>,  <43.776978, 31.999308, 28.664785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.763130, 31.775120, 28.749332>,  <43.740051, 31.401474, 28.890245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.763130, 31.775120, 28.749332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241616, -0.355445, -0.902929,
		-0.968655, -0.033022, -0.246205,
		0.057696, 0.934114, -0.352282,
		43.780437, 32.055355, 28.643648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345974, 31.367580, 28.209244>,  <43.740051, 31.401474, 28.890245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345974, 31.367580, 28.209244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.602245, 31.673019, 28.177120>,  <43.756008, 31.856283, 28.157846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.602245, 31.673019, 28.177120>,  <43.345974, 31.367580, 28.209244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.602245, 31.673019, 28.177120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348392, -0.382319, -0.855836,
		-0.684220, 0.520335, -0.510975,
		0.640677, 0.763599, -0.080310,
		43.794449, 31.902100, 28.153027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315796, 31.547201, 27.535816>,  <43.345974, 31.367580, 28.209244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315796, 31.547201, 27.535816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650360, 31.727079, 27.661154>,  <43.851101, 31.835007, 27.736357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650360, 31.727079, 27.661154>,  <43.315796, 31.547201, 27.535816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650360, 31.727079, 27.661154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475946, -0.312383, -0.822127,
		-0.271825, 0.836773, -0.475313,
		0.836413, 0.449697, 0.313345,
		43.901283, 31.861988, 27.755157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509106, 32.123543, 26.969276>,  <43.315796, 31.547201, 27.535816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509106, 32.123543, 26.969276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845608, 32.039265, 27.168432>,  <44.047508, 31.988697, 27.287926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845608, 32.039265, 27.168432>,  <43.509106, 32.123543, 26.969276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.845608, 32.039265, 27.168432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421944, -0.319895, -0.848310,
		0.338010, 0.923728, -0.180211,
		0.841256, -0.210698, 0.497889,
		44.097984, 31.976055, 27.317799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986172, 32.417049, 26.570242>,  <43.509106, 32.123543, 26.969276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986172, 32.417049, 26.570242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204178, 32.160370, 26.786087>,  <44.334980, 32.006363, 26.915594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204178, 32.160370, 26.786087>,  <43.986172, 32.417049, 26.570242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204178, 32.160370, 26.786087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443618, -0.325424, -0.835046,
		0.711451, 0.694494, 0.107309,
		0.545014, -0.641699, 0.539613,
		44.367683, 31.967861, 26.947971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579254, 32.383209, 26.112301>,  <43.986172, 32.417049, 26.570242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579254, 32.383209, 26.112301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639874, 32.076679, 26.362030>,  <44.676247, 31.892761, 26.511868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639874, 32.076679, 26.362030>,  <44.579254, 32.383209, 26.112301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639874, 32.076679, 26.362030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397482, -0.531052, -0.748326,
		0.905008, 0.361567, 0.224118,
		0.151552, -0.766324, 0.624323,
		44.685341, 31.846783, 26.549326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.254135, 32.163506, 26.207949>,  <44.579254, 32.383209, 26.112301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.254135, 32.163506, 26.207949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053062, 31.824476, 26.275988>,  <44.932419, 31.621059, 26.316811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053062, 31.824476, 26.275988>,  <45.254135, 32.163506, 26.207949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053062, 31.824476, 26.275988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427269, -0.414647, -0.803436,
		0.751497, -0.331199, 0.570577,
		-0.502686, -0.847570, 0.170095,
		44.902256, 31.570206, 26.327017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.699970, 31.642189, 26.003256>,  <45.254135, 32.163506, 26.207949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.699970, 31.642189, 26.003256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.362507, 31.433430, 26.053635>,  <45.160030, 31.308174, 26.083862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.362507, 31.433430, 26.053635>,  <45.699970, 31.642189, 26.003256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.362507, 31.433430, 26.053635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267564, -0.612097, -0.744142,
		0.465459, -0.594103, 0.656041,
		-0.843658, -0.521900, 0.125945,
		45.109409, 31.276859, 26.091417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.871349, 30.898510, 26.157984>,  <45.699970, 31.642189, 26.003256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.871349, 30.898510, 26.157984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.500011, 30.897955, 26.009295>,  <45.277210, 30.897621, 25.920080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.500011, 30.897955, 26.009295>,  <45.871349, 30.898510, 26.157984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.500011, 30.897955, 26.009295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288549, -0.633123, -0.718259,
		-0.234349, -0.774050, 0.588155,
		-0.928343, -0.001388, -0.371723,
		45.221508, 30.897539, 25.897778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.677547, 30.244377, 25.993523>,  <45.871349, 30.898510, 26.157984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.677547, 30.244377, 25.993523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.415962, 30.445875, 25.767754>,  <45.259010, 30.566774, 25.632292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.415962, 30.445875, 25.767754>,  <45.677547, 30.244377, 25.993523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.415962, 30.445875, 25.767754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104937, -0.678457, -0.727107,
		-0.749215, -0.534728, 0.390823,
		-0.653961, 0.503747, -0.564423,
		45.219772, 30.597000, 25.598427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208168, 29.796188, 25.719267>,  <45.677547, 30.244377, 25.993523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208168, 29.796188, 25.719267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162739, 30.104877, 25.468973>,  <45.135483, 30.290091, 25.318796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162739, 30.104877, 25.468973>,  <45.208168, 29.796188, 25.719267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162739, 30.104877, 25.468973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004558, -0.629400, -0.777068,
		-0.993519, -0.091105, 0.067964,
		-0.113571, 0.771723, -0.625736,
		45.128666, 30.336393, 25.281252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705349, 29.551609, 25.094152>,  <45.208168, 29.796188, 25.719267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705349, 29.551609, 25.094152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912712, 29.866613, 24.960838>,  <45.037128, 30.055616, 24.880850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912712, 29.866613, 24.960838>,  <44.705349, 29.551609, 25.094152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912712, 29.866613, 24.960838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177900, -0.480541, -0.858739,
		-0.836424, 0.385885, -0.389214,
		0.518408, 0.787511, -0.333287,
		45.068233, 30.102867, 24.860853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.491135, 29.632198, 24.422956>,  <44.705349, 29.551609, 25.094152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.491135, 29.632198, 24.422956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.839828, 29.828148, 24.426931>,  <45.049046, 29.945719, 24.429316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.839828, 29.828148, 24.426931>,  <44.491135, 29.632198, 24.422956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839828, 29.828148, 24.426931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285714, -0.491747, -0.822528,
		-0.398050, 0.719866, -0.568637,
		0.871736, 0.489875, 0.009936,
		45.101349, 29.975111, 24.429913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544804, 29.960922, 23.855560>,  <44.491135, 29.632198, 24.422956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544804, 29.960922, 23.855560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.932697, 29.955971, 23.953093>,  <45.165436, 29.953001, 24.011612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.932697, 29.955971, 23.953093>,  <44.544804, 29.960922, 23.855560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.932697, 29.955971, 23.953093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224601, -0.346323, -0.910832,
		0.095719, 0.938034, -0.333063,
		0.969738, -0.012377, 0.243833,
		45.223618, 29.952257, 24.026243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922329, 30.345978, 23.373486>,  <44.544804, 29.960922, 23.855560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922329, 30.345978, 23.373486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192741, 30.111696, 23.552340>,  <45.354988, 29.971127, 23.659653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192741, 30.111696, 23.552340>,  <44.922329, 30.345978, 23.373486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192741, 30.111696, 23.552340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276587, -0.360741, -0.890711,
		0.682995, 0.725820, -0.081873,
		0.676031, -0.585706, 0.447136,
		45.395550, 29.935984, 23.686481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.441017, 30.381365, 22.993528>,  <44.922329, 30.345978, 23.373486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.441017, 30.381365, 22.993528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525452, 30.048790, 23.199112>,  <45.576111, 29.849245, 23.322462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525452, 30.048790, 23.199112>,  <45.441017, 30.381365, 22.993528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525452, 30.048790, 23.199112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285200, -0.450540, -0.845976,
		0.934936, 0.325154, 0.142024,
		0.211085, -0.831438, 0.513959,
		45.588776, 29.799358, 23.353300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.133327, 30.221796, 22.801262>,  <45.441017, 30.381365, 22.993528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.133327, 30.221796, 22.801262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956524, 29.890814, 22.939795>,  <45.850441, 29.692225, 23.022915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956524, 29.890814, 22.939795>,  <46.133327, 30.221796, 22.801262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.956524, 29.890814, 22.939795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417778, -0.531566, -0.736817,
		0.793781, -0.180989, 0.580650,
		-0.442010, -0.827454, 0.346334,
		45.823921, 29.642578, 23.043695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.661274, 29.761936, 22.728319>,  <46.133327, 30.221796, 22.801262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.661274, 29.761936, 22.728319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324226, 29.551043, 22.772156>,  <46.121998, 29.424507, 22.798458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324226, 29.551043, 22.772156>,  <46.661274, 29.761936, 22.728319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.324226, 29.551043, 22.772156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339471, -0.678053, -0.651923,
		0.418025, -0.512123, 0.750324,
		-0.842624, -0.527233, 0.109593,
		46.071438, 29.392872, 22.805033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.881866, 29.099037, 22.868784>,  <46.661274, 29.761936, 22.728319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.881866, 29.099037, 22.868784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510029, 29.046986, 22.730844>,  <46.286926, 29.015755, 22.648081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510029, 29.046986, 22.730844>,  <46.881866, 29.099037, 22.868784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510029, 29.046986, 22.730844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321359, -0.744337, -0.585397,
		-0.180509, -0.655003, 0.733749,
		-0.929594, -0.130127, -0.344851,
		46.231152, 29.007948, 22.627390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.802155, 28.250851, 22.737978>,  <46.881866, 29.099037, 22.868784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.802155, 28.250851, 22.737978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.494347, 28.421907, 22.548260>,  <46.309662, 28.524542, 22.434429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.494347, 28.421907, 22.548260>,  <46.802155, 28.250851, 22.737978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.494347, 28.421907, 22.548260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028170, -0.764698, -0.643773,
		-0.637996, -0.482038, 0.600500,
		-0.769524, 0.427641, -0.474296,
		46.263489, 28.550200, 22.405972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.179565, 27.852013, 22.671318>,  <46.802155, 28.250851, 22.737978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.179565, 27.852013, 22.671318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163715, 28.119102, 22.373976>,  <46.154205, 28.279356, 22.195570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163715, 28.119102, 22.373976>,  <46.179565, 27.852013, 22.671318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.163715, 28.119102, 22.373976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046438, -0.744366, -0.666155,
		-0.998135, 0.008121, 0.060505,
		-0.039628, 0.667722, -0.743355,
		46.151825, 28.319420, 22.150969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.534843, 27.624437, 22.273430>,  <46.179565, 27.852013, 22.671318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.534843, 27.624437, 22.273430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.774715, 27.852736, 22.049061>,  <45.918640, 27.989714, 21.914440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.774715, 27.852736, 22.049061>,  <45.534843, 27.624437, 22.273430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.774715, 27.852736, 22.049061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166346, -0.596725, -0.785015,
		-0.782760, 0.564065, -0.262903,
		0.599680, 0.570745, -0.560922,
		45.954620, 28.023958, 21.880785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093319, 27.332796, 22.721121>,  <45.534843, 27.624437, 22.273430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093319, 27.332796, 22.721121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966370, 26.991596, 22.555393>,  <44.890198, 26.786877, 22.455957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966370, 26.991596, 22.555393>,  <45.093319, 27.332796, 22.721121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.966370, 26.991596, 22.555393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558546, -0.184930, 0.808596,
		-0.766353, 0.488046, -0.417748,
		-0.317378, -0.853002, -0.414318,
		44.871155, 26.735695, 22.431097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.333271, 27.315660, 22.855780>,  <45.093319, 27.332796, 22.721121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.333271, 27.315660, 22.855780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466267, 26.947498, 22.773504>,  <44.546062, 26.726601, 22.724138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466267, 26.947498, 22.773504>,  <44.333271, 27.315660, 22.855780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466267, 26.947498, 22.773504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282541, -0.305291, 0.909378,
		-0.899791, -0.244238, -0.361556,
		0.332485, -0.920405, -0.205691,
		44.566013, 26.671377, 22.711798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765953, 26.877518, 22.991810>,  <44.333271, 27.315660, 22.855780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765953, 26.877518, 22.991810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.082108, 26.632526, 22.996801>,  <44.271801, 26.485533, 22.999796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.082108, 26.632526, 22.996801>,  <43.765953, 26.877518, 22.991810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082108, 26.632526, 22.996801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214053, -0.257033, 0.942399,
		-0.573990, -0.747533, -0.334259,
		0.790390, -0.612477, 0.012477,
		44.319225, 26.448784, 23.000546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649857, 26.233423, 23.327339>,  <43.765953, 26.877518, 22.991810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649857, 26.233423, 23.327339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046642, 26.256365, 23.372454>,  <44.284714, 26.270130, 23.399523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046642, 26.256365, 23.372454>,  <43.649857, 26.233423, 23.327339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046642, 26.256365, 23.372454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103624, -0.143258, 0.984245,
		0.072608, -0.988022, -0.136164,
		0.991963, 0.057354, 0.112785,
		44.344231, 26.273571, 23.406288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828609, 25.682159, 23.781157>,  <43.649857, 26.233423, 23.327339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828609, 25.682159, 23.781157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112942, 25.961859, 23.811541>,  <44.283543, 26.129679, 23.829771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112942, 25.961859, 23.811541>,  <43.828609, 25.682159, 23.781157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.112942, 25.961859, 23.811541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002060, -0.105926, 0.994372,
		0.703360, -0.706987, -0.073855,
		0.710831, 0.699249, 0.075961,
		44.326191, 26.171633, 23.834330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203392, 25.429962, 24.332994>,  <43.828609, 25.682159, 23.781157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203392, 25.429962, 24.332994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363335, 25.795420, 24.303699>,  <44.459301, 26.014694, 24.286121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363335, 25.795420, 24.303699>,  <44.203392, 25.429962, 24.332994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363335, 25.795420, 24.303699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070821, 0.110464, 0.991354,
		0.913836, -0.391216, 0.108876,
		0.399860, 0.913645, -0.073239,
		44.483292, 26.069513, 24.281727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596546, 25.457001, 24.908588>,  <44.203392, 25.429962, 24.332994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596546, 25.457001, 24.908588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555141, 25.840939, 24.804289>,  <44.530300, 26.071301, 24.741709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555141, 25.840939, 24.804289>,  <44.596546, 25.457001, 24.908588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555141, 25.840939, 24.804289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170551, 0.241144, 0.955386,
		0.979897, 0.143360, 0.138742,
		-0.103508, 0.959842, -0.260747,
		44.524090, 26.128891, 24.726065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.131489, 25.884939, 25.319267>,  <44.596546, 25.457001, 24.908588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.131489, 25.884939, 25.319267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.834663, 26.126934, 25.203804>,  <44.656567, 26.272131, 25.134527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.834663, 26.126934, 25.203804>,  <45.131489, 25.884939, 25.319267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834663, 26.126934, 25.203804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162745, 0.255135, 0.953111,
		0.650268, 0.754251, -0.090868,
		-0.742068, 0.604989, -0.288657,
		44.612041, 26.308432, 25.117207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285069, 26.690531, 25.519232>,  <45.131489, 25.884939, 25.319267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285069, 26.690531, 25.519232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894638, 26.611389, 25.483183>,  <44.660378, 26.563904, 25.461554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894638, 26.611389, 25.483183>,  <45.285069, 26.690531, 25.519232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894638, 26.611389, 25.483183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153051, 0.330921, 0.931164,
		-0.154410, 0.922684, -0.353287,
		-0.976080, -0.197852, -0.090120,
		44.601814, 26.552034, 25.456146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082245, 27.274998, 25.783056>,  <45.285069, 26.690531, 25.519232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082245, 27.274998, 25.783056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750008, 27.052580, 25.795290>,  <44.550667, 26.919128, 25.802629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750008, 27.052580, 25.795290>,  <45.082245, 27.274998, 25.783056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750008, 27.052580, 25.795290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214284, 0.369814, 0.904058,
		-0.514006, 0.744347, -0.426315,
		-0.830590, -0.556044, 0.030585,
		44.500832, 26.885767, 25.804466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435310, 27.766840, 25.831789>,  <45.082245, 27.274998, 25.783056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435310, 27.766840, 25.831789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321278, 27.410744, 25.973890>,  <44.252857, 27.197086, 26.059151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321278, 27.410744, 25.973890>,  <44.435310, 27.766840, 25.831789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321278, 27.410744, 25.973890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550285, 0.455476, 0.699806,
		-0.784804, 0.004008, -0.619731,
		-0.285078, -0.890239, 0.355254,
		44.235756, 27.143673, 26.080467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697048, 27.788311, 25.933590>,  <44.435310, 27.766840, 25.831789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697048, 27.788311, 25.933590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838219, 27.500954, 26.173374>,  <43.922920, 27.328539, 26.317245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838219, 27.500954, 26.173374>,  <43.697048, 27.788311, 25.933590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838219, 27.500954, 26.173374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381351, 0.474615, 0.793292,
		-0.854409, -0.508578, -0.106457,
		0.352924, -0.718394, 0.599462,
		43.944096, 27.285435, 26.353212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080746, 27.566278, 26.265730>,  <43.697048, 27.788311, 25.933590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080746, 27.566278, 26.265730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377754, 27.410118, 26.483442>,  <43.555962, 27.316422, 26.614069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377754, 27.410118, 26.483442>,  <43.080746, 27.566278, 26.265730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377754, 27.410118, 26.483442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315835, 0.512511, 0.798487,
		-0.590681, -0.764799, 0.257249,
		0.742525, -0.390403, 0.544281,
		43.600513, 27.292997, 26.646727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773361, 27.253668, 26.736938>,  <43.080746, 27.566278, 26.265730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773361, 27.253668, 26.736938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142689, 27.327288, 26.871758>,  <43.364285, 27.371460, 26.952650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142689, 27.327288, 26.871758>,  <42.773361, 27.253668, 26.736938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142689, 27.327288, 26.871758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382956, 0.506761, 0.772359,
		-0.028652, -0.842211, 0.538386,
		0.923322, 0.184049, 0.337049,
		43.419685, 27.382502, 26.972872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761673, 27.198841, 27.501993>,  <42.773361, 27.253668, 26.736938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761673, 27.198841, 27.501993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121014, 27.372686, 27.476479>,  <43.336620, 27.476994, 27.461170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121014, 27.372686, 27.476479>,  <42.761673, 27.198841, 27.501993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121014, 27.372686, 27.476479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148737, 0.437588, 0.886789,
		0.413317, -0.787166, 0.457753,
		0.898358, 0.434610, -0.063781,
		43.390518, 27.503071, 27.457344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177231, 27.152433, 28.191628>,  <42.761673, 27.198841, 27.501993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177231, 27.152433, 28.191628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.291851, 27.479130, 27.991297>,  <43.360622, 27.675148, 27.871099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.291851, 27.479130, 27.991297>,  <43.177231, 27.152433, 28.191628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.291851, 27.479130, 27.991297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098650, 0.545121, 0.832533,
		0.952974, -0.189153, 0.236774,
		0.286546, 0.816740, -0.500826,
		43.377815, 27.724152, 27.841049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640366, 27.471962, 28.582022>,  <43.177231, 27.152433, 28.191628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640366, 27.471962, 28.582022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523087, 27.772303, 28.345293>,  <43.452717, 27.952507, 28.203257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523087, 27.772303, 28.345293>,  <43.640366, 27.471962, 28.582022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523087, 27.772303, 28.345293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118079, 0.585848, 0.801773,
		0.948731, 0.304962, -0.083112,
		-0.293201, 0.750853, -0.591822,
		43.435127, 27.997559, 28.167746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046753, 28.094915, 28.824898>,  <43.640366, 27.471962, 28.582022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046753, 28.094915, 28.824898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754032, 28.252899, 28.602739>,  <43.578400, 28.347689, 28.469444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754032, 28.252899, 28.602739>,  <44.046753, 28.094915, 28.824898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754032, 28.252899, 28.602739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153637, 0.698361, 0.699061,
		0.663969, 0.596908, -0.450385,
		-0.731807, 0.394959, -0.555398,
		43.534489, 28.371387, 28.436121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072060, 28.887272, 28.929644>,  <44.046753, 28.094915, 28.824898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072060, 28.887272, 28.929644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722355, 28.806055, 28.753265>,  <43.512531, 28.757326, 28.647438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722355, 28.806055, 28.753265>,  <44.072060, 28.887272, 28.929644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722355, 28.806055, 28.753265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432738, 0.737599, 0.518349,
		0.219997, 0.643989, -0.732721,
		-0.874265, -0.203041, -0.440948,
		43.460075, 28.745142, 28.620981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.876064, 29.461254, 28.626268>,  <44.072060, 28.887272, 28.929644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.876064, 29.461254, 28.626268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553757, 29.247908, 28.729235>,  <43.360374, 29.119900, 28.791016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553757, 29.247908, 28.729235>,  <43.876064, 29.461254, 28.626268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553757, 29.247908, 28.729235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405585, 0.813696, 0.416413,
		-0.431561, 0.231126, -0.871972,
		-0.805764, -0.533366, 0.257418,
		43.312027, 29.087898, 28.806459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345493, 29.949339, 28.551327>,  <43.876064, 29.461254, 28.626268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345493, 29.949339, 28.551327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150043, 29.663061, 28.750938>,  <43.032772, 29.491295, 28.870707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150043, 29.663061, 28.750938>,  <43.345493, 29.949339, 28.551327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150043, 29.663061, 28.750938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560643, 0.695797, 0.448937,
		-0.668525, -0.060417, -0.741231,
		-0.488623, -0.715692, 0.499030,
		43.003456, 29.448353, 28.900648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699722, 29.984814, 28.377308>,  <43.345493, 29.949339, 28.551327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699722, 29.984814, 28.377308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666466, 29.805065, 28.733095>,  <42.646511, 29.697216, 28.946568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666466, 29.805065, 28.733095>,  <42.699722, 29.984814, 28.377308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.666466, 29.805065, 28.733095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699851, 0.661740, 0.268902,
		-0.709433, -0.600137, -0.369512,
		-0.083143, -0.449372, 0.889468,
		42.641521, 29.670254, 28.999935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921032, 30.019382, 28.547947>,  <42.699722, 29.984814, 28.377308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921032, 30.019382, 28.547947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139111, 29.991701, 28.882124>,  <42.269958, 29.975092, 29.082630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139111, 29.991701, 28.882124>,  <41.921032, 30.019382, 28.547947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139111, 29.991701, 28.882124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613765, 0.645869, 0.454034,
		-0.571008, -0.760306, 0.309653,
		0.545200, -0.069203, 0.835445,
		42.302670, 29.970940, 29.132757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426113, 30.076193, 29.061562>,  <41.921032, 30.019382, 28.547947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426113, 30.076193, 29.061562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769566, 30.121628, 29.261501>,  <41.975636, 30.148890, 29.381466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769566, 30.121628, 29.261501>,  <41.426113, 30.076193, 29.061562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769566, 30.121628, 29.261501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463514, 0.588432, 0.662497,
		-0.218876, -0.800528, 0.557896,
		0.858632, 0.113588, 0.499849,
		42.027157, 30.155704, 29.411455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278923, 29.993610, 29.771511>,  <41.426113, 30.076193, 29.061562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278923, 29.993610, 29.771511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619511, 30.202217, 29.793509>,  <41.823864, 30.327381, 29.806707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619511, 30.202217, 29.793509>,  <41.278923, 29.993610, 29.771511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619511, 30.202217, 29.793509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413726, 0.603616, 0.681527,
		0.322231, -0.603051, 0.729723,
		0.851468, 0.521514, 0.054994,
		41.874950, 30.358671, 29.810007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597080, 29.895252, 30.481134>,  <41.278923, 29.993610, 29.771511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597080, 29.895252, 30.481134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745575, 30.227926, 30.315975>,  <41.834671, 30.427530, 30.216881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745575, 30.227926, 30.315975>,  <41.597080, 29.895252, 30.481134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745575, 30.227926, 30.315975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293905, 0.527059, 0.797389,
		0.880798, -0.174666, 0.440099,
		0.371234, 0.831686, -0.412897,
		41.856945, 30.477432, 30.192106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958729, 30.244516, 31.028286>,  <41.597080, 29.895252, 30.481134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958729, 30.244516, 31.028286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892315, 30.539047, 30.765911>,  <41.852467, 30.715767, 30.608486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892315, 30.539047, 30.765911>,  <41.958729, 30.244516, 31.028286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892315, 30.539047, 30.765911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298312, 0.596499, 0.745116,
		0.939916, 0.319389, 0.120616,
		-0.166035, 0.736328, -0.655937,
		41.842503, 30.759945, 30.569130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280804, 30.799345, 31.347906>,  <41.958729, 30.244516, 31.028286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280804, 30.799345, 31.347906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007824, 30.923727, 31.083311>,  <41.844036, 30.998356, 30.924555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007824, 30.923727, 31.083311>,  <42.280804, 30.799345, 31.347906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007824, 30.923727, 31.083311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323819, 0.682712, 0.655016,
		0.655288, 0.661218, -0.365224,
		-0.682451, 0.310957, -0.661488,
		41.803089, 31.017014, 30.884865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363567, 31.454544, 31.449406>,  <42.280804, 30.799345, 31.347906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363567, 31.454544, 31.449406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005745, 31.427975, 31.272608>,  <41.791054, 31.412033, 31.166529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005745, 31.427975, 31.272608>,  <42.363567, 31.454544, 31.449406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005745, 31.427975, 31.272608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395260, 0.579245, 0.712913,
		0.208669, 0.812443, -0.544421,
		-0.894554, -0.066425, -0.441996,
		41.737377, 31.408047, 31.140009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034710, 32.107277, 31.568550>,  <42.363567, 31.454544, 31.449406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034710, 32.107277, 31.568550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718788, 31.892038, 31.450792>,  <41.529236, 31.762896, 31.380138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718788, 31.892038, 31.450792>,  <42.034710, 32.107277, 31.568550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718788, 31.892038, 31.450792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601049, 0.583293, 0.546360,
		-0.122273, 0.608462, -0.784107,
		-0.789803, -0.538092, -0.294395,
		41.481846, 31.730610, 31.362474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593861, 32.592232, 31.565058>,  <42.034710, 32.107277, 31.568550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593861, 32.592232, 31.565058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365425, 32.263878, 31.565342>,  <41.228363, 32.066864, 31.565512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365425, 32.263878, 31.565342>,  <41.593861, 32.592232, 31.565058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365425, 32.263878, 31.565342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744799, 0.518521, 0.420012,
		-0.345150, 0.239336, -0.907518,
		-0.571092, -0.820886, 0.000710,
		41.194099, 32.017612, 31.565556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905334, 32.845100, 31.339445>,  <41.593861, 32.592232, 31.565058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905334, 32.845100, 31.339445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898067, 32.523518, 31.577209>,  <40.893707, 32.330566, 31.719868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898067, 32.523518, 31.577209>,  <40.905334, 32.845100, 31.339445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898067, 32.523518, 31.577209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693882, 0.438171, 0.571431,
		-0.719859, -0.402071, -0.565810,
		-0.018166, -0.803956, 0.594411,
		40.892616, 32.282330, 31.755533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144623, 32.760681, 31.497736>,  <40.905334, 32.845100, 31.339445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144623, 32.760681, 31.497736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336647, 32.572105, 31.793652>,  <40.451862, 32.458958, 31.971201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336647, 32.572105, 31.793652>,  <40.144623, 32.760681, 31.497736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336647, 32.572105, 31.793652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695486, 0.309430, 0.648500,
		-0.534643, -0.825830, -0.179338,
		0.480058, -0.471443, 0.739788,
		40.480663, 32.430672, 32.015587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674564, 32.871796, 31.921499>,  <40.144623, 32.760681, 31.497736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674564, 32.871796, 31.921499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954803, 32.714920, 32.159946>,  <40.122948, 32.620796, 32.303013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954803, 32.714920, 32.159946>,  <39.674564, 32.871796, 31.921499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954803, 32.714920, 32.159946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558997, 0.217575, 0.800115,
		-0.443495, -0.893785, -0.066799,
		0.700596, -0.392187, 0.596116,
		40.164982, 32.597263, 32.338779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389900, 32.268360, 32.218201>,  <39.674564, 32.871796, 31.921499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389900, 32.268360, 32.218201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682877, 32.377396, 32.467754>,  <39.858662, 32.442818, 32.617485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682877, 32.377396, 32.467754>,  <39.389900, 32.268360, 32.218201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682877, 32.377396, 32.467754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680564, 0.267416, 0.682144,
		0.019106, -0.924222, 0.381377,
		0.732439, 0.272584, 0.623884,
		39.902607, 32.459171, 32.654919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282581, 31.893297, 32.757195>,  <39.389900, 32.268360, 32.218201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282581, 31.893297, 32.757195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483948, 32.223034, 32.860756>,  <39.604767, 32.420876, 32.922894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483948, 32.223034, 32.860756>,  <39.282581, 31.893297, 32.757195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483948, 32.223034, 32.860756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719746, 0.234291, 0.653508,
		0.478057, -0.515330, 0.711264,
		0.503415, 0.824344, 0.258902,
		39.634972, 32.470337, 32.938427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230633, 31.918715, 33.440327>,  <39.282581, 31.893297, 32.757195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230633, 31.918715, 33.440327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345268, 32.299530, 33.397457>,  <39.414051, 32.528019, 33.371735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345268, 32.299530, 33.397457>,  <39.230633, 31.918715, 33.440327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345268, 32.299530, 33.397457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632226, 0.271990, 0.725474,
		0.719830, -0.140156, 0.679854,
		0.286593, 0.952039, -0.107176,
		39.431248, 32.585140, 33.365303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569515, 31.967993, 34.047180>,  <39.230633, 31.918715, 33.440327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569515, 31.967993, 34.047180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426994, 32.317795, 33.915554>,  <39.341480, 32.527676, 33.836578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426994, 32.317795, 33.915554>,  <39.569515, 31.967993, 34.047180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426994, 32.317795, 33.915554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270016, 0.240788, 0.932262,
		0.894506, 0.421020, 0.150338,
		-0.356302, 0.874507, -0.329068,
		39.320103, 32.580147, 33.816833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601021, 32.375477, 34.665684>,  <39.569515, 31.967993, 34.047180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601021, 32.375477, 34.665684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394108, 32.622910, 34.429115>,  <39.269962, 32.771370, 34.287174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394108, 32.622910, 34.429115>,  <39.601021, 32.375477, 34.665684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394108, 32.622910, 34.429115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419975, 0.418648, 0.805205,
		0.745683, 0.664897, 0.043231,
		-0.517280, 0.618584, -0.591418,
		39.238922, 32.808483, 34.251690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704357, 33.104832, 34.925339>,  <39.601021, 32.375477, 34.665684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704357, 33.104832, 34.925339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367603, 33.079739, 34.710938>,  <39.165550, 33.064682, 34.582298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367603, 33.079739, 34.710938>,  <39.704357, 33.104832, 34.925339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367603, 33.079739, 34.710938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498711, 0.469956, 0.728305,
		0.206211, 0.880458, -0.426932,
		-0.841882, -0.062731, -0.536004,
		39.115040, 33.060921, 34.550137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759010, 32.725788, 35.526905>,  <39.704357, 33.104832, 34.925339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759010, 32.725788, 35.526905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863163, 32.340340, 35.551037>,  <39.925655, 32.109070, 35.565517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863163, 32.340340, 35.551037>,  <39.759010, 32.725788, 35.526905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863163, 32.340340, 35.551037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823433, -0.189003, 0.535011,
		-0.504143, -0.188987, -0.842688,
		0.260381, -0.963619, 0.060333,
		39.941277, 32.051254, 35.569138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227982, 32.403648, 35.326611>,  <39.759010, 32.725788, 35.526905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227982, 32.403648, 35.326611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432362, 32.111473, 35.507893>,  <39.554989, 31.936169, 35.616661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432362, 32.111473, 35.507893>,  <39.227982, 32.403648, 35.326611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432362, 32.111473, 35.507893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859066, -0.415148, 0.299429,
		-0.030567, -0.542325, -0.839613,
		0.510951, -0.730435, 0.453203,
		39.585648, 31.892342, 35.643852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914421, 31.737690, 35.066998>,  <39.227982, 32.403648, 35.326611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914421, 31.737690, 35.066998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101734, 31.663927, 35.412647>,  <39.214123, 31.619669, 35.620037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101734, 31.663927, 35.412647>,  <38.914421, 31.737690, 35.066998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101734, 31.663927, 35.412647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788725, -0.528071, 0.314729,
		0.398279, -0.828936, -0.392733,
		0.468282, -0.184409, 0.864121,
		39.242218, 31.608604, 35.671883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918556, 31.052010, 35.317860>,  <38.914421, 31.737690, 35.066998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918556, 31.052010, 35.317860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978600, 31.255259, 35.657101>,  <39.014626, 31.377209, 35.860645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978600, 31.255259, 35.657101>,  <38.918556, 31.052010, 35.317860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978600, 31.255259, 35.657101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816342, -0.420209, 0.396245,
		0.557722, -0.751821, 0.351727,
		0.150106, 0.508124, 0.848103,
		39.023632, 31.407696, 35.911533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839752, 30.587574, 35.837978>,  <38.918556, 31.052010, 35.317860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839752, 30.587574, 35.837978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801331, 30.939123, 36.024895>,  <38.778278, 31.150053, 36.137043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801331, 30.939123, 36.024895>,  <38.839752, 30.587574, 35.837978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801331, 30.939123, 36.024895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740415, -0.376847, 0.556571,
		0.665251, -0.292526, 0.686928,
		-0.096055, 0.878871, 0.467289,
		38.772514, 31.202784, 36.165081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688042, 30.403267, 36.440720>,  <38.839752, 30.587574, 35.837978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688042, 30.403267, 36.440720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563553, 30.783257, 36.451202>,  <38.488857, 31.011251, 36.457493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563553, 30.783257, 36.451202>,  <38.688042, 30.403267, 36.440720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563553, 30.783257, 36.451202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771604, -0.268694, 0.576568,
		0.554767, 0.159220, 0.816629,
		-0.311224, 0.949975, 0.026207,
		38.470184, 31.068249, 36.459064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562759, 30.337940, 37.065689>,  <38.688042, 30.403267, 36.440720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562759, 30.337940, 37.065689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373318, 30.653662, 36.909382>,  <38.259655, 30.843096, 36.815598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373318, 30.653662, 36.909382>,  <38.562759, 30.337940, 37.065689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373318, 30.653662, 36.909382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871472, -0.355769, 0.337587,
		0.127436, 0.500425, 0.856349,
		-0.473600, 0.789305, -0.390769,
		38.231239, 30.890453, 36.792152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268959, 30.807476, 37.539959>,  <38.562759, 30.337940, 37.065689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268959, 30.807476, 37.539959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035370, 30.861181, 37.219723>,  <37.895214, 30.893404, 37.027580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035370, 30.861181, 37.219723>,  <38.268959, 30.807476, 37.539959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035370, 30.861181, 37.219723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811541, -0.120011, 0.571837,
		-0.019303, 0.983652, 0.179043,
		-0.583976, 0.134263, -0.800591,
		37.860176, 30.901461, 36.979546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841095, 31.371243, 37.569923>,  <38.268959, 30.807476, 37.539959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841095, 31.371243, 37.569923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641922, 31.115732, 37.335308>,  <37.522419, 30.962425, 37.194538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641922, 31.115732, 37.335308>,  <37.841095, 31.371243, 37.569923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641922, 31.115732, 37.335308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763822, 0.002763, 0.645422,
		-0.410661, 0.769386, -0.489288,
		-0.497930, -0.638778, -0.586539,
		37.492542, 30.924099, 37.159348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154408, 31.675165, 37.475319>,  <37.841095, 31.371243, 37.569923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154408, 31.675165, 37.475319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137497, 31.284145, 37.392746>,  <37.127350, 31.049534, 37.343204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137497, 31.284145, 37.392746>,  <37.154408, 31.675165, 37.475319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137497, 31.284145, 37.392746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731772, -0.110375, 0.672552,
		-0.680237, 0.179493, -0.710676,
		-0.042278, -0.977548, -0.206429,
		37.124813, 30.990881, 37.330818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416317, 31.337440, 37.150322>,  <37.154408, 31.675165, 37.475319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416317, 31.337440, 37.150322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659691, 31.135860, 37.395546>,  <36.805714, 31.014914, 37.542683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659691, 31.135860, 37.395546>,  <36.416317, 31.337440, 37.150322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659691, 31.135860, 37.395546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764610, -0.165335, 0.622926,
		-0.212568, -0.847757, -0.485926,
		0.608430, -0.503957, 0.613058,
		36.842220, 30.984676, 37.579464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721241, 31.097244, 37.552471>,  <36.416317, 31.337440, 37.150322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721241, 31.097244, 37.552471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066441, 31.083389, 37.754082>,  <36.273560, 31.075077, 37.875046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066441, 31.083389, 37.754082>,  <35.721241, 31.097244, 37.552471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066441, 31.083389, 37.754082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503211, -0.147619, 0.851462,
		0.044912, -0.988438, -0.144823,
		0.862996, -0.034635, 0.504023,
		36.325340, 31.072998, 37.905289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662933, 30.355549, 37.413544>,  <35.721241, 31.097244, 37.552471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662933, 30.355549, 37.413544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023651, 30.379480, 37.584747>,  <36.240082, 30.393839, 37.687469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023651, 30.379480, 37.584747>,  <35.662933, 30.355549, 37.413544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023651, 30.379480, 37.584747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420900, -0.103147, 0.901223,
		0.098072, -0.992865, -0.067833,
		0.901790, 0.059834, 0.428013,
		36.294189, 30.397430, 37.713150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602154, 29.898500, 37.981445>,  <35.662933, 30.355549, 37.413544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602154, 29.898500, 37.981445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935734, 30.102564, 38.065598>,  <36.135883, 30.225002, 38.116089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935734, 30.102564, 38.065598>,  <35.602154, 29.898500, 37.981445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935734, 30.102564, 38.065598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310425, 0.118495, 0.943184,
		0.456243, -0.851879, 0.257185,
		0.833953, 0.510158, 0.210382,
		36.185921, 30.255611, 38.128712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869423, 29.515779, 38.512798>,  <35.602154, 29.898500, 37.981445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869423, 29.515779, 38.512798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054432, 29.870195, 38.525494>,  <36.165436, 30.082846, 38.533112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054432, 29.870195, 38.525494>,  <35.869423, 29.515779, 38.512798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054432, 29.870195, 38.525494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008071, -0.031589, 0.999468,
		0.886572, -0.462530, -0.007460,
		0.462520, 0.886041, 0.031739,
		36.193188, 30.136007, 38.535015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473755, 29.558994, 38.929096>,  <35.869423, 29.515779, 38.512798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473755, 29.558994, 38.929096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293289, 29.915846, 38.919697>,  <36.185009, 30.129957, 38.914059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293289, 29.915846, 38.919697>,  <36.473755, 29.558994, 38.929096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293289, 29.915846, 38.919697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009096, 0.021732, 0.999722,
		0.892394, 0.451254, -0.001690,
		-0.451166, 0.892131, -0.023498,
		36.157940, 30.183485, 38.912647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878460, 30.085083, 39.374729>,  <36.473755, 29.558994, 38.929096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878460, 30.085083, 39.374729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490440, 30.178005, 39.346344>,  <36.257629, 30.233759, 39.329311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490440, 30.178005, 39.346344>,  <36.878460, 30.085083, 39.374729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490440, 30.178005, 39.346344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065172, 0.032533, 0.997344,
		0.233998, 0.972098, -0.016419,
		-0.970050, 0.232306, -0.070967,
		36.199425, 30.247698, 39.325054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823860, 30.741583, 39.850628>,  <36.878460, 30.085083, 39.374729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823860, 30.741583, 39.850628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483566, 30.534336, 39.815304>,  <36.279388, 30.409988, 39.794109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483566, 30.534336, 39.815304>,  <36.823860, 30.741583, 39.850628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483566, 30.534336, 39.815304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166768, 0.106758, 0.980200,
		-0.498431, 0.848621, -0.177228,
		-0.850738, -0.518117, -0.088312,
		36.228344, 30.378901, 39.788811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350174, 31.161503, 40.215343>,  <36.823860, 30.741583, 39.850628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350174, 31.161503, 40.215343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189953, 30.796326, 40.184105>,  <36.093822, 30.577219, 40.165363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189953, 30.796326, 40.184105>,  <36.350174, 31.161503, 40.215343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189953, 30.796326, 40.184105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135858, -0.025114, 0.990410,
		-0.906148, 0.407317, -0.113971,
		-0.400548, -0.912941, -0.078094,
		36.069790, 30.522444, 40.160675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793545, 31.184538, 40.609486>,  <36.350174, 31.161503, 40.215343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793545, 31.184538, 40.609486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913605, 30.805401, 40.566586>,  <35.985641, 30.577919, 40.540844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913605, 30.805401, 40.566586>,  <35.793545, 31.184538, 40.609486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913605, 30.805401, 40.566586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173423, -0.164783, 0.970964,
		-0.937995, -0.272835, -0.213838,
		0.300150, -0.947844, -0.107250,
		36.003651, 30.521048, 40.534412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714916, 30.893631, 41.249950>,  <35.793545, 31.184538, 40.609486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714916, 30.893631, 41.249950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904907, 30.583313, 41.083801>,  <36.018902, 30.397121, 40.984112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904907, 30.583313, 41.083801>,  <35.714916, 30.893631, 41.249950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904907, 30.583313, 41.083801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069612, -0.437415, 0.896561,
		-0.877239, -0.454764, -0.153759,
		0.474980, -0.775795, -0.415375,
		36.047401, 30.350574, 40.959190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381401, 30.245279, 41.361050>,  <35.714916, 30.893631, 41.249950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381401, 30.245279, 41.361050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771412, 30.164915, 41.323208>,  <36.005421, 30.116697, 41.300503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771412, 30.164915, 41.323208>,  <35.381401, 30.245279, 41.361050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771412, 30.164915, 41.323208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010178, -0.465988, 0.884733,
		-0.221836, -0.861679, -0.456397,
		0.975031, -0.200910, -0.094603,
		36.063923, 30.104641, 41.294827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583038, 29.458971, 41.446815>,  <35.381401, 30.245279, 41.361050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583038, 29.458971, 41.446815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916012, 29.668900, 41.517941>,  <36.115795, 29.794857, 41.560616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916012, 29.668900, 41.517941>,  <35.583038, 29.458971, 41.446815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916012, 29.668900, 41.517941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044398, -0.383020, 0.922673,
		0.552345, -0.760168, -0.342140,
		0.832433, 0.524824, 0.177809,
		36.165741, 29.826347, 41.571281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166603, 29.012638, 41.559135>,  <35.583038, 29.458971, 41.446815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166603, 29.012638, 41.559135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201397, 29.358360, 41.757290>,  <36.222275, 29.565794, 41.876183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201397, 29.358360, 41.757290>,  <36.166603, 29.012638, 41.559135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201397, 29.358360, 41.757290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143574, -0.502958, 0.852302,
		0.985809, -0.003013, -0.167841,
		0.086985, 0.864305, 0.495389,
		36.227493, 29.617651, 41.905907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447742, 29.562143, 41.036678>,  <36.166603, 29.012638, 41.559135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447742, 29.562143, 41.036678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116497, 29.773458, 40.961689>,  <35.917751, 29.900248, 40.916695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116497, 29.773458, 40.961689>,  <36.447742, 29.562143, 41.036678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116497, 29.773458, 40.961689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133294, -0.139275, -0.981242,
		-0.544489, -0.837565, 0.044917,
		-0.828110, 0.528288, -0.187476,
		35.868065, 29.931944, 40.905445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999531, 29.368000, 40.458603>,  <36.447742, 29.562143, 41.036678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999531, 29.368000, 40.458603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856026, 29.740950, 40.476357>,  <35.769924, 29.964720, 40.487007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856026, 29.740950, 40.476357>,  <35.999531, 29.368000, 40.458603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856026, 29.740950, 40.476357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056886, 0.025623, -0.998052,
		-0.931695, -0.360586, 0.043847,
		-0.358760, 0.932374, 0.044385,
		35.748398, 30.020662, 40.489674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466587, 29.336044, 40.203880>,  <35.999531, 29.368000, 40.458603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466587, 29.336044, 40.203880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610577, 29.707731, 40.170471>,  <35.696972, 29.930742, 40.150425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610577, 29.707731, 40.170471>,  <35.466587, 29.336044, 40.203880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610577, 29.707731, 40.170471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108597, -0.047186, -0.992965,
		-0.926620, 0.366513, 0.083924,
		0.359974, 0.929216, -0.083526,
		35.718571, 29.986496, 40.145412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047009, 29.829496, 39.723885>,  <35.466587, 29.336044, 40.203880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047009, 29.829496, 39.723885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411304, 29.994375, 39.734081>,  <35.629883, 30.093302, 39.740200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411304, 29.994375, 39.734081>,  <35.047009, 29.829496, 39.723885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411304, 29.994375, 39.734081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009736, 0.083128, -0.996491,
		-0.412869, 0.907295, 0.079721,
		0.910739, 0.412196, 0.025488,
		35.684525, 30.118034, 39.741726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964073, 30.452122, 39.340958>,  <35.047009, 29.829496, 39.723885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964073, 30.452122, 39.340958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340092, 30.315704, 39.339989>,  <35.565701, 30.233854, 39.339409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340092, 30.315704, 39.339989>,  <34.964073, 30.452122, 39.340958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340092, 30.315704, 39.339989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033702, -0.085822, -0.995740,
		0.339385, 0.936121, -0.092170,
		0.940044, -0.341045, -0.002423,
		35.622105, 30.213390, 39.339260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328190, 30.842569, 38.876057>,  <34.964073, 30.452122, 39.340958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328190, 30.842569, 38.876057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507755, 30.488256, 38.923164>,  <35.615494, 30.275669, 38.951431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507755, 30.488256, 38.923164>,  <35.328190, 30.842569, 38.876057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507755, 30.488256, 38.923164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163254, -0.048281, -0.985402,
		0.878537, 0.461584, 0.122933,
		0.448911, -0.885782, 0.117772,
		35.642429, 30.222523, 38.958496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035797, 31.146008, 38.985764>,  <35.328190, 30.842569, 38.876057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035797, 31.146008, 38.985764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224766, 30.794825, 39.016773>,  <36.338146, 30.584114, 39.035378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224766, 30.794825, 39.016773>,  <36.035797, 31.146008, 38.985764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224766, 30.794825, 39.016773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239408, 0.043175, -0.969959,
		0.848236, 0.476786, 0.230587,
		0.472419, -0.877958, 0.077524,
		36.366493, 30.531437, 39.040031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611118, 31.216806, 38.668869>,  <36.035797, 31.146008, 38.985764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611118, 31.216806, 38.668869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560741, 30.819996, 38.667122>,  <36.530518, 30.581909, 38.666073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560741, 30.819996, 38.667122>,  <36.611118, 31.216806, 38.668869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560741, 30.819996, 38.667122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283883, -0.031818, -0.958331,
		0.950552, -0.121933, 0.285627,
		-0.125941, -0.992028, -0.004370,
		36.522961, 30.522387, 38.665810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278397, 30.892576, 38.499691>,  <36.611118, 31.216806, 38.668869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278397, 30.892576, 38.499691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973423, 30.666492, 38.373680>,  <36.790440, 30.530842, 38.298073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973423, 30.666492, 38.373680>,  <37.278397, 30.892576, 38.499691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973423, 30.666492, 38.373680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364421, 0.027231, -0.930836,
		0.534696, -0.824498, 0.185213,
		-0.762429, -0.565209, -0.315025,
		36.744694, 30.496929, 38.279171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494633, 30.399391, 38.151978>,  <37.278397, 30.892576, 38.499691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494633, 30.399391, 38.151978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118801, 30.389105, 38.015438>,  <36.893303, 30.382933, 37.933514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118801, 30.389105, 38.015438>,  <37.494633, 30.399391, 38.151978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118801, 30.389105, 38.015438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340737, 0.025524, -0.939812,
		0.032891, -0.999343, -0.015216,
		-0.939583, -0.025727, -0.341352,
		36.836926, 30.381390, 37.913033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315952, 29.857702, 37.745243>,  <37.494633, 30.399391, 38.151978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315952, 29.857702, 37.745243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084198, 30.157461, 37.617043>,  <36.945145, 30.337317, 37.540123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084198, 30.157461, 37.617043>,  <37.315952, 29.857702, 37.745243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084198, 30.157461, 37.617043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390546, -0.089884, -0.916185,
		-0.715395, -0.655990, -0.240597,
		-0.579382, 0.749398, -0.320496,
		36.910385, 30.382280, 37.520893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175949, 29.670919, 37.063774>,  <37.315952, 29.857702, 37.745243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175949, 29.670919, 37.063774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139496, 30.063990, 37.128330>,  <37.117622, 30.299831, 37.167065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139496, 30.063990, 37.128330>,  <37.175949, 29.670919, 37.063774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139496, 30.063990, 37.128330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518250, 0.185191, -0.834938,
		-0.850360, 0.007551, -0.526148,
		-0.091133, 0.982673, 0.161393,
		37.112156, 30.358791, 37.176746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916424, 30.041832, 36.403374>,  <37.175949, 29.670919, 37.063774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916424, 30.041832, 36.403374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091774, 30.322170, 36.628456>,  <37.196983, 30.490374, 36.763508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091774, 30.322170, 36.628456>,  <36.916424, 30.041832, 36.403374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091774, 30.322170, 36.628456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515178, 0.317087, -0.796271,
		-0.736492, 0.638960, -0.222059,
		0.438373, 0.700847, 0.562710,
		37.223286, 30.532425, 36.797268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336277, 30.515944, 35.977463>,  <36.916424, 30.041832, 36.403374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336277, 30.515944, 35.977463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277592, 30.751680, 36.295242>,  <37.242382, 30.893122, 36.485912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277592, 30.751680, 36.295242>,  <37.336277, 30.515944, 35.977463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277592, 30.751680, 36.295242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931344, 0.352896, -0.089795,
		-0.333279, 0.726733, -0.600654,
		-0.146711, 0.589342, 0.794451,
		37.233578, 30.928482, 36.533577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311707, 31.254530, 35.860600>,  <37.336277, 30.515944, 35.977463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311707, 31.254530, 35.860600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466484, 31.178598, 36.221542>,  <37.559349, 31.133039, 36.438107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466484, 31.178598, 36.221542>,  <37.311707, 31.254530, 35.860600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466484, 31.178598, 36.221542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872115, 0.393168, -0.291264,
		-0.299486, 0.899658, 0.317684,
		0.386941, -0.189828, 0.902354,
		37.582565, 31.121651, 36.492249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656090, 31.864054, 36.060150>,  <37.311707, 31.254530, 35.860600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656090, 31.864054, 36.060150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810143, 31.580435, 36.296429>,  <37.902576, 31.410263, 36.438198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810143, 31.580435, 36.296429>,  <37.656090, 31.864054, 36.060150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810143, 31.580435, 36.296429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894522, 0.444219, -0.050009,
		-0.226941, 0.547653, 0.805341,
		0.385135, -0.709046, 0.590698,
		37.925682, 31.367722, 36.473637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071651, 32.246754, 36.495537>,  <37.656090, 31.864054, 36.060150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071651, 32.246754, 36.495537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194901, 31.868954, 36.541126>,  <38.268848, 31.642275, 36.568481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194901, 31.868954, 36.541126>,  <38.071651, 32.246754, 36.495537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194901, 31.868954, 36.541126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928413, 0.272376, -0.252705,
		0.207634, 0.183681, 0.960807,
		0.308118, -0.944496, 0.113977,
		38.287334, 31.585606, 36.575321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774548, 32.336395, 36.821949>,  <38.071651, 32.246754, 36.495537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774548, 32.336395, 36.821949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761761, 31.972015, 36.657436>,  <38.754089, 31.753387, 36.558727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761761, 31.972015, 36.657436>,  <38.774548, 32.336395, 36.821949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761761, 31.972015, 36.657436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920872, 0.133122, -0.366433,
		0.388552, -0.390454, 0.834610,
		-0.031970, -0.910947, -0.411283,
		38.752171, 31.698730, 36.534050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371277, 31.911364, 36.894024>,  <38.774548, 32.336395, 36.821949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371277, 31.911364, 36.894024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261078, 31.663452, 36.600090>,  <39.194958, 31.514706, 36.423729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261078, 31.663452, 36.600090>,  <39.371277, 31.911364, 36.894024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261078, 31.663452, 36.600090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911079, 0.075504, -0.405259,
		0.306653, -0.781137, 0.543865,
		-0.275499, -0.619777, -0.734831,
		39.178429, 31.477518, 36.379642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933167, 31.448647, 36.758869>,  <39.371277, 31.911364, 36.894024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933167, 31.448647, 36.758869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707073, 31.442072, 36.428963>,  <39.571419, 31.438128, 36.231018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707073, 31.442072, 36.428963>,  <39.933167, 31.448647, 36.758869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707073, 31.442072, 36.428963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818440, 0.114001, -0.563168,
		0.103277, -0.993344, -0.050992,
		-0.565234, -0.016428, -0.824767,
		39.537502, 31.437141, 36.181534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262871, 30.959881, 36.280964>,  <39.933167, 31.448647, 36.758869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262871, 30.959881, 36.280964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052879, 31.240332, 36.087959>,  <39.926884, 31.408602, 35.972157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052879, 31.240332, 36.087959>,  <40.262871, 30.959881, 36.280964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052879, 31.240332, 36.087959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799056, 0.210786, -0.563098,
		-0.293096, -0.681170, -0.670896,
		-0.524981, 0.701125, -0.482512,
		39.895386, 31.450668, 35.943207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407146, 30.843754, 35.575565>,  <40.262871, 30.959881, 36.280964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407146, 30.843754, 35.575565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280815, 31.220739, 35.619408>,  <40.205017, 31.446930, 35.645714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280815, 31.220739, 35.619408>,  <40.407146, 30.843754, 35.575565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280815, 31.220739, 35.619408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721159, 0.313513, -0.617769,
		-0.616586, -0.116071, -0.778684,
		-0.315833, 0.942463, 0.109602,
		40.186066, 31.503479, 35.652287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296734, 31.156443, 34.891895>,  <40.407146, 30.843754, 35.575565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296734, 31.156443, 34.891895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418224, 31.419588, 35.167568>,  <40.491119, 31.577475, 35.332970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418224, 31.419588, 35.167568>,  <40.296734, 31.156443, 34.891895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418224, 31.419588, 35.167568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826675, 0.177648, -0.533900,
		-0.473664, 0.731887, -0.489882,
		0.303728, 0.657863, 0.689178,
		40.509342, 31.616947, 35.374321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587326, 31.810223, 34.530354>,  <40.296734, 31.156443, 34.891895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587326, 31.810223, 34.530354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754192, 31.772165, 34.891888>,  <40.854313, 31.749331, 35.108810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754192, 31.772165, 34.891888>,  <40.587326, 31.810223, 34.530354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754192, 31.772165, 34.891888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826737, 0.452777, -0.333915,
		-0.377467, 0.886533, 0.267542,
		0.417163, -0.095145, 0.903838,
		40.879341, 31.743622, 35.163040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815186, 32.473541, 34.742069>,  <40.587326, 31.810223, 34.530354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815186, 32.473541, 34.742069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.045033, 32.207603, 34.932983>,  <41.182941, 32.048042, 35.047531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.045033, 32.207603, 34.932983>,  <40.815186, 32.473541, 34.742069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045033, 32.207603, 34.932983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817616, 0.440405, -0.370874,
		0.036372, 0.603348, 0.796648,
		0.574614, -0.664841, 0.477289,
		41.217415, 32.008152, 35.076172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366798, 32.812698, 35.193352>,  <40.815186, 32.473541, 34.742069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366798, 32.812698, 35.193352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488369, 32.450886, 35.073719>,  <41.561314, 32.233799, 35.001938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488369, 32.450886, 35.073719>,  <41.366798, 32.812698, 35.193352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488369, 32.450886, 35.073719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762291, 0.419193, -0.493142,
		0.571437, -0.078110, 0.816920,
		0.303928, -0.904531, -0.299085,
		41.579548, 32.179527, 34.983994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050518, 32.556328, 35.358841>,  <41.366798, 32.812698, 35.193352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050518, 32.556328, 35.358841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931572, 32.399437, 35.010651>,  <41.860207, 32.305302, 34.801735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931572, 32.399437, 35.010651>,  <42.050518, 32.556328, 35.358841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931572, 32.399437, 35.010651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807409, 0.383296, -0.448525,
		0.509574, -0.836208, 0.202709,
		-0.297363, -0.392226, -0.870479,
		41.842361, 32.281769, 34.749508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448971, 31.974678, 35.330959>,  <42.050518, 32.556328, 35.358841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448971, 31.974678, 35.330959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313694, 32.144753, 34.995140>,  <42.232529, 32.246796, 34.793648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313694, 32.144753, 34.995140>,  <42.448971, 31.974678, 35.330959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313694, 32.144753, 34.995140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940460, 0.185005, -0.285147,
		0.034081, -0.885997, -0.462436,
		-0.338192, 0.425185, -0.839550,
		42.212234, 32.272308, 34.743275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951458, 31.847164, 34.968502>,  <42.448971, 31.974678, 35.330959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951458, 31.847164, 34.968502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772671, 32.135426, 34.756508>,  <42.665398, 32.308384, 34.629311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772671, 32.135426, 34.756508>,  <42.951458, 31.847164, 34.968502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772671, 32.135426, 34.756508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857709, 0.176965, -0.482720,
		-0.254085, -0.670330, -0.697208,
		-0.446963, 0.720653, -0.529984,
		42.638580, 32.351620, 34.597511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001457, 31.762302, 34.242683>,  <42.951458, 31.847164, 34.968502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001457, 31.762302, 34.242683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987274, 32.151566, 34.333641>,  <42.978764, 32.385124, 34.388218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987274, 32.151566, 34.333641>,  <43.001457, 31.762302, 34.242683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987274, 32.151566, 34.333641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916972, 0.122160, -0.379788,
		-0.397372, 0.195050, -0.896689,
		-0.035462, 0.973156, 0.227398,
		42.976635, 32.443512, 34.401859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044224, 32.137211, 33.619194>,  <43.001457, 31.762302, 34.242683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044224, 32.137211, 33.619194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185135, 32.347061, 33.929207>,  <43.269680, 32.472973, 34.115215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185135, 32.347061, 33.929207>,  <43.044224, 32.137211, 33.619194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185135, 32.347061, 33.929207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919702, -0.040666, -0.390505,
		-0.173353, 0.850359, -0.496828,
		0.352274, 0.524629, 0.775028,
		43.290817, 32.504448, 34.161716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435398, 32.694935, 33.308033>,  <43.044224, 32.137211, 33.619194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435398, 32.694935, 33.308033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.585396, 32.596138, 33.665440>,  <43.675396, 32.536861, 33.879883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.585396, 32.596138, 33.665440>,  <43.435398, 32.694935, 33.308033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.585396, 32.596138, 33.665440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926283, 0.061255, -0.371818,
		0.037102, 0.967080, 0.251752,
		0.374999, -0.246988, 0.893517,
		43.697895, 32.522041, 33.933495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155468, 33.022053, 33.535950>,  <43.435398, 32.694935, 33.308033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155468, 33.022053, 33.535950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112228, 32.635136, 33.627743>,  <44.086285, 32.402985, 33.682819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112228, 32.635136, 33.627743>,  <44.155468, 33.022053, 33.535950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.112228, 32.635136, 33.627743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920239, -0.184695, -0.345034,
		0.376133, 0.173887, 0.910103,
		-0.108095, -0.967291, 0.229487,
		44.079800, 32.344948, 33.696590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.959530, 32.687363, 33.530689>,  <44.155468, 33.022053, 33.535950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.959530, 32.687363, 33.530689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971642, 33.008377, 33.769024>,  <44.978909, 33.200985, 33.912025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971642, 33.008377, 33.769024>,  <44.959530, 32.687363, 33.530689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971642, 33.008377, 33.769024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946961, -0.213826, 0.239881,
		0.319918, 0.556975, -0.766440,
		0.030277, 0.802531, 0.595841,
		44.980724, 33.249138, 33.947777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.603321, 33.045647, 33.228233>,  <44.959530, 32.687363, 33.530689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.603321, 33.045647, 33.228233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.503967, 33.078629, 33.614292>,  <45.444355, 33.098415, 33.845928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.503967, 33.078629, 33.614292>,  <45.603321, 33.045647, 33.228233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.503967, 33.078629, 33.614292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901345, -0.345275, 0.261461,
		0.354798, 0.934873, 0.011444,
		-0.248384, 0.082451, 0.965146,
		45.429451, 33.103363, 33.903835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.130516, 33.386021, 33.580902>,  <45.603321, 33.045647, 33.228233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.130516, 33.386021, 33.580902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956711, 33.201530, 33.890347>,  <45.852428, 33.090836, 34.076012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956711, 33.201530, 33.890347>,  <46.130516, 33.386021, 33.580902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.956711, 33.201530, 33.890347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892401, -0.336560, 0.300579,
		0.121731, 0.820974, 0.557838,
		-0.434513, -0.461226, 0.773608,
		45.826355, 33.063164, 34.122429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.638882, 33.337360, 34.143169>,  <46.130516, 33.386021, 33.580902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.638882, 33.337360, 34.143169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377937, 33.034210, 34.140274>,  <46.221371, 32.852322, 34.138538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377937, 33.034210, 34.140274>,  <46.638882, 33.337360, 34.143169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.377937, 33.034210, 34.140274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696467, -0.603211, 0.388679,
		-0.298935, 0.248519, 0.921345,
		-0.652359, -0.757876, -0.007236,
		46.182228, 32.806847, 34.138103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.310093, 33.084579, 34.353806>,  <46.638882, 33.337360, 34.143169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.310093, 33.084579, 34.353806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.264336, 33.481728, 34.340370>,  <47.236881, 33.720016, 34.332310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.264336, 33.481728, 34.340370>,  <47.310093, 33.084579, 34.353806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.264336, 33.481728, 34.340370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920129, 0.093149, -0.380377,
		-0.374535, -0.074415, -0.924222,
		-0.114396, 0.992867, -0.033584,
		47.230019, 33.779587, 34.330296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.394962, 33.397228, 33.657200>,  <47.310093, 33.084579, 34.353806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.394962, 33.397228, 33.657200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.498722, 33.665470, 33.935192>,  <47.560978, 33.826416, 34.101986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.498722, 33.665470, 33.935192>,  <47.394962, 33.397228, 33.657200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.498722, 33.665470, 33.935192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862941, 0.162168, -0.478576,
		-0.433641, 0.723868, -0.536629,
		0.259402, 0.670609, 0.694978,
		47.576542, 33.866653, 34.143684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.878319, 33.944164, 33.856163>,  <47.394962, 33.397228, 33.657200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.878319, 33.944164, 33.856163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.545429, 33.860310, 34.061474>,  <46.345695, 33.809998, 34.184658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.545429, 33.860310, 34.061474>,  <46.878319, 33.944164, 33.856163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.545429, 33.860310, 34.061474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292944, -0.952249, 0.086056,
		0.470724, 0.221978, 0.853899,
		-0.832227, -0.209636, 0.513274,
		46.295761, 33.797421, 34.215458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.916924, 34.567291, 33.987087>,  <46.878319, 33.944164, 33.856163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.916924, 34.567291, 33.987087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.044891, 34.937248, 34.069286>,  <47.121674, 35.159222, 34.118607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.044891, 34.937248, 34.069286>,  <46.916924, 34.567291, 33.987087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.044891, 34.937248, 34.069286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462560, -0.341761, 0.818070,
		0.826856, -0.166661, -0.537153,
		0.319918, 0.924891, 0.205496,
		47.140865, 35.214714, 34.130936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.719845, 34.632374, 34.018169>,  <46.916924, 34.567291, 33.987087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.719845, 34.632374, 34.018169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.533497, 34.887566, 34.263428>,  <47.421688, 35.040680, 34.410583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.533497, 34.887566, 34.263428>,  <47.719845, 34.632374, 34.018169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.533497, 34.887566, 34.263428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379051, -0.482250, 0.789782,
		0.799555, 0.600348, -0.017162,
		-0.465867, 0.637979, 0.613147,
		47.393738, 35.078960, 34.447372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.135738, 34.739910, 34.617046>,  <47.719845, 34.632374, 34.018169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.135738, 34.739910, 34.617046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.780018, 34.864845, 34.750671>,  <47.566586, 34.939804, 34.830845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.780018, 34.864845, 34.750671>,  <48.135738, 34.739910, 34.617046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.780018, 34.864845, 34.750671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179561, -0.433343, 0.883160,
		0.420605, 0.845376, 0.329288,
		-0.889297, 0.312334, 0.334062,
		47.513229, 34.958546, 34.850891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.356056, 30.286909, 24.587097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.341824, 30.571136, 24.306007>,  <39.333286, 30.741673, 24.137354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.341824, 30.571136, 24.306007>,  <39.356056, 30.286909, 24.587097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341824, 30.571136, 24.306007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467255, 0.609753, 0.640215,
		0.883407, 0.351130, 0.310323,
		-0.035578, 0.710570, -0.702727,
		39.331150, 30.784307, 24.095190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597794, 30.839630, 24.890173>,  <39.356056, 30.286909, 24.587097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597794, 30.839630, 24.890173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.402405, 31.000690, 24.580523>,  <39.285172, 31.097326, 24.394732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.402405, 31.000690, 24.580523>,  <39.597794, 30.839630, 24.890173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402405, 31.000690, 24.580523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462864, 0.632498, 0.621050,
		0.739700, 0.661678, -0.122582,
		-0.488468, 0.402652, -0.774126,
		39.255863, 31.121487, 24.348286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760021, 31.611900, 24.918556>,  <39.597794, 30.839630, 24.890173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760021, 31.611900, 24.918556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.444431, 31.586557, 24.674095>,  <39.255077, 31.571352, 24.527418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.444431, 31.586557, 24.674095>,  <39.760021, 31.611900, 24.918556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444431, 31.586557, 24.674095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425797, 0.773477, 0.469499,
		0.442966, 0.630649, -0.637231,
		-0.788973, -0.063359, -0.611153,
		39.207741, 31.567549, 24.490749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693649, 32.285225, 24.626947>,  <39.760021, 31.611900, 24.918556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693649, 32.285225, 24.626947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.339382, 32.104256, 24.585167>,  <39.126823, 31.995674, 24.560099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.339382, 32.104256, 24.585167>,  <39.693649, 32.285225, 24.626947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339382, 32.104256, 24.585167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448841, 0.776597, 0.442085,
		-0.118892, 0.438422, -0.890871,
		-0.885667, -0.452419, -0.104451,
		39.073681, 31.968531, 24.553831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185772, 32.826065, 24.352947>,  <39.693649, 32.285225, 24.626947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185772, 32.826065, 24.352947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.977085, 32.533695, 24.528931>,  <38.851871, 32.358273, 24.634521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.977085, 32.533695, 24.528931>,  <39.185772, 32.826065, 24.352947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977085, 32.533695, 24.528931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517157, 0.681113, 0.518299,
		-0.678497, 0.042878, -0.733350,
		-0.521718, -0.730922, 0.439959,
		38.820568, 32.314419, 24.660919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540791, 33.136013, 24.525194>,  <39.185772, 32.826065, 24.352947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540791, 33.136013, 24.525194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.551800, 32.805477, 24.750195>,  <38.558403, 32.607155, 24.885195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.551800, 32.805477, 24.750195>,  <38.540791, 33.136013, 24.525194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551800, 32.805477, 24.750195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448191, 0.492782, 0.745849,
		-0.893514, -0.272632, -0.356797,
		0.027520, -0.826340, 0.562499,
		38.560055, 32.557575, 24.918943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855267, 33.046368, 24.850138>,  <38.540791, 33.136013, 24.525194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855267, 33.046368, 24.850138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.082203, 32.804497, 25.073740>,  <38.218365, 32.659374, 25.207901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.082203, 32.804497, 25.073740>,  <37.855267, 33.046368, 24.850138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082203, 32.804497, 25.073740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351906, 0.435696, 0.828451,
		-0.744504, -0.666731, 0.034397,
		0.567341, -0.604681, 0.559005,
		38.252403, 32.623093, 25.241442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409092, 32.672752, 25.341635>,  <37.855267, 33.046368, 24.850138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409092, 32.672752, 25.341635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.760281, 32.651939, 25.531982>,  <37.970993, 32.639454, 25.646191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.760281, 32.651939, 25.531982>,  <37.409092, 32.672752, 25.341635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760281, 32.651939, 25.531982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465211, 0.141647, 0.873793,
		-0.112872, -0.988549, 0.100156,
		0.877975, -0.052033, 0.475872,
		38.023674, 32.636330, 25.674744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306679, 32.238976, 25.888931>,  <37.409092, 32.672752, 25.341635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306679, 32.238976, 25.888931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646011, 32.422203, 25.995150>,  <37.849609, 32.532139, 26.058882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646011, 32.422203, 25.995150>,  <37.306679, 32.238976, 25.888931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646011, 32.422203, 25.995150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281777, -0.034031, 0.958876,
		0.448267, -0.888266, 0.100203,
		0.848327, 0.458067, 0.265547,
		37.900509, 32.559624, 26.074814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467903, 32.042709, 26.539841>,  <37.306679, 32.238976, 25.888931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467903, 32.042709, 26.539841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.679596, 32.382061, 26.534645>,  <37.806610, 32.585670, 26.531528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.679596, 32.382061, 26.534645>,  <37.467903, 32.042709, 26.539841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679596, 32.382061, 26.534645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377492, 0.249142, 0.891867,
		0.759876, -0.467102, 0.452110,
		0.529233, 0.848377, -0.012990,
		37.838367, 32.636574, 26.530748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843395, 32.047852, 27.147837>,  <37.467903, 32.042709, 26.539841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843395, 32.047852, 27.147837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.756855, 32.415703, 27.016703>,  <37.704933, 32.636414, 26.938023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.756855, 32.415703, 27.016703>,  <37.843395, 32.047852, 27.147837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756855, 32.415703, 27.016703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339394, 0.244005, 0.908446,
		0.915426, 0.307806, 0.259326,
		-0.216348, 0.919629, -0.327836,
		37.691952, 32.691593, 26.918352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894939, 32.367340, 27.752748>,  <37.843395, 32.047852, 27.147837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894939, 32.367340, 27.752748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713448, 32.622017, 27.503347>,  <37.604553, 32.774822, 27.353706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713448, 32.622017, 27.503347>,  <37.894939, 32.367340, 27.752748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713448, 32.622017, 27.503347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467357, 0.425715, 0.774819,
		0.758755, 0.642954, 0.104404,
		-0.453727, 0.636692, -0.623502,
		37.577328, 32.813023, 27.316298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114166, 33.056076, 28.007174>,  <37.894939, 32.367340, 27.752748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114166, 33.056076, 28.007174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.771503, 33.100983, 27.805763>,  <37.565907, 33.127926, 27.684917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.771503, 33.100983, 27.805763>,  <38.114166, 33.056076, 28.007174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771503, 33.100983, 27.805763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382180, 0.517500, 0.765593,
		0.346529, 0.848286, -0.400411,
		-0.856654, 0.112271, -0.503526,
		37.514507, 33.134663, 27.654705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896854, 33.792923, 27.900560>,  <38.114166, 33.056076, 28.007174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896854, 33.792923, 27.900560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.544643, 33.604687, 27.877884>,  <37.333317, 33.491745, 27.864277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.544643, 33.604687, 27.877884>,  <37.896854, 33.792923, 27.900560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544643, 33.604687, 27.877884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361966, 0.590362, 0.721425,
		-0.306030, 0.655754, -0.690168,
		-0.880526, -0.470595, -0.056692,
		37.280487, 33.463509, 27.860876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509930, 34.342396, 28.064407>,  <37.896854, 33.792923, 27.900560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509930, 34.342396, 28.064407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261909, 34.030685, 28.100780>,  <37.113098, 33.843658, 28.122604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261909, 34.030685, 28.100780>,  <37.509930, 34.342396, 28.064407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261909, 34.030685, 28.100780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436583, 0.439014, 0.785278,
		-0.651868, 0.447213, -0.612429,
		-0.620051, -0.779274, 0.090934,
		37.075893, 33.796902, 28.128061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830677, 34.564144, 28.072130>,  <37.509930, 34.342396, 28.064407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830677, 34.564144, 28.072130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.823166, 34.218063, 28.272560>,  <36.818657, 34.010414, 28.392818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.823166, 34.218063, 28.272560>,  <36.830677, 34.564144, 28.072130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823166, 34.218063, 28.272560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562707, 0.423404, 0.709993,
		-0.826443, -0.268624, -0.494806,
		-0.018782, -0.865199, 0.501076,
		36.817532, 33.958504, 28.422882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171288, 34.603252, 28.397421>,  <36.830677, 34.564144, 28.072130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171288, 34.603252, 28.397421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.343227, 34.308895, 28.606684>,  <36.446392, 34.132282, 28.732243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.343227, 34.308895, 28.606684>,  <36.171288, 34.603252, 28.397421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343227, 34.308895, 28.606684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477130, 0.306776, 0.823551,
		-0.766536, -0.603616, -0.219249,
		0.429848, -0.735892, 0.523158,
		36.472183, 34.088127, 28.763632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632065, 34.253258, 28.789240>,  <36.171288, 34.603252, 28.397421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632065, 34.253258, 28.789240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.970070, 34.145889, 28.974241>,  <36.172871, 34.081470, 29.085241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.970070, 34.145889, 28.974241>,  <35.632065, 34.253258, 28.789240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970070, 34.145889, 28.974241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412183, 0.224077, 0.883117,
		-0.340680, -0.936879, 0.078710,
		0.845010, -0.268418, 0.462504,
		36.223572, 34.065365, 29.112993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418110, 33.792595, 29.291105>,  <35.632065, 34.253258, 28.789240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418110, 33.792595, 29.291105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.776176, 33.926155, 29.409214>,  <35.991016, 34.006290, 29.480080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.776176, 33.926155, 29.409214>,  <35.418110, 33.792595, 29.291105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776176, 33.926155, 29.409214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367614, 0.178436, 0.912700,
		0.252070, -0.925563, 0.282478,
		0.895165, 0.333907, 0.295271,
		36.044727, 34.026325, 29.497795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364491, 33.664112, 29.947096>,  <35.418110, 33.792595, 29.291105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364491, 33.664112, 29.947096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.692646, 33.892662, 29.938261>,  <35.889542, 34.029793, 29.932961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.692646, 33.892662, 29.938261>,  <35.364491, 33.664112, 29.947096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692646, 33.892662, 29.938261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119832, 0.209570, 0.970423,
		0.559105, -0.793480, 0.240399,
		0.820391, 0.571376, -0.022088,
		35.938763, 34.064075, 29.931635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768124, 33.452366, 30.593630>,  <35.364491, 33.664112, 29.947096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768124, 33.452366, 30.593630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.888474, 33.812912, 30.469040>,  <35.960682, 34.029240, 30.394285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.888474, 33.812912, 30.469040>,  <35.768124, 33.452366, 30.593630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888474, 33.812912, 30.469040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163152, 0.370445, 0.914413,
		0.939605, -0.224303, 0.258516,
		0.300872, 0.901365, -0.311477,
		35.978737, 34.083321, 30.375597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353920, 33.669224, 31.093622>,  <35.768124, 33.452366, 30.593630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353920, 33.669224, 31.093622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.169807, 33.984333, 30.929886>,  <36.059341, 34.173397, 30.831644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.169807, 33.984333, 30.929886>,  <36.353920, 33.669224, 31.093622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169807, 33.984333, 30.929886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125986, 0.398458, 0.908492,
		0.878789, 0.469732, -0.084154,
		-0.460280, 0.787771, -0.409340,
		36.031723, 34.220665, 30.807083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420845, 33.824806, 31.883156>,  <36.353920, 33.669224, 31.093622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420845, 33.824806, 31.883156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.576542, 33.519001, 32.088680>,  <36.669960, 33.335518, 32.211994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.576542, 33.519001, 32.088680>,  <36.420845, 33.824806, 31.883156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576542, 33.519001, 32.088680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617644, -0.197207, -0.761331,
		0.683378, 0.613697, 0.395438,
		0.389244, -0.764517, 0.513813,
		36.693314, 33.289646, 32.242825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105301, 33.847908, 31.529881>,  <36.420845, 33.824806, 31.883156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105301, 33.847908, 31.529881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115753, 33.496826, 31.721279>,  <37.122025, 33.286179, 31.836119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115753, 33.496826, 31.721279>,  <37.105301, 33.847908, 31.529881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115753, 33.496826, 31.721279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632578, -0.356116, -0.687769,
		0.774055, 0.320662, 0.545907,
		0.026135, -0.877700, 0.478497,
		37.123592, 33.233517, 31.864828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849758, 33.534618, 31.605106>,  <37.105301, 33.847908, 31.529881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849758, 33.534618, 31.605106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.584782, 33.236748, 31.637672>,  <37.425797, 33.058025, 31.657211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.584782, 33.236748, 31.637672>,  <37.849758, 33.534618, 31.605106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584782, 33.236748, 31.637672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553147, -0.559538, -0.617208,
		0.505176, -0.363829, 0.782576,
		-0.662439, -0.744678, 0.081415,
		37.386051, 33.013344, 31.662096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260578, 33.007313, 31.819569>,  <37.849758, 33.534618, 31.605106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260578, 33.007313, 31.819569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.932053, 32.838673, 31.665842>,  <37.734940, 32.737488, 31.573606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.932053, 32.838673, 31.665842>,  <38.260578, 33.007313, 31.819569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932053, 32.838673, 31.665842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568454, -0.548049, -0.613598,
		0.048071, -0.722420, 0.689781,
		-0.821309, -0.421605, -0.384317,
		37.685661, 32.712193, 31.550547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385921, 32.168762, 31.796461>,  <38.260578, 33.007313, 31.819569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385921, 32.168762, 31.796461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.107109, 32.267872, 31.527311>,  <37.939823, 32.327339, 31.365822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.107109, 32.267872, 31.527311>,  <38.385921, 32.168762, 31.796461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107109, 32.267872, 31.527311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456403, -0.570452, -0.682848,
		-0.553038, -0.783065, 0.284532,
		-0.697026, 0.247780, -0.672874,
		37.898003, 32.342205, 31.325449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335304, 31.540422, 31.449173>,  <38.385921, 32.168762, 31.796461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335304, 31.540422, 31.449173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151089, 31.819523, 31.229702>,  <38.040558, 31.986982, 31.098021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151089, 31.819523, 31.229702>,  <38.335304, 31.540422, 31.449173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151089, 31.819523, 31.229702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311942, -0.451477, -0.835979,
		-0.831019, -0.556159, -0.009733,
		-0.460543, 0.697750, -0.548675,
		38.012924, 32.028847, 31.065100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024120, 31.164650, 30.947218>,  <38.335304, 31.540422, 31.449173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024120, 31.164650, 30.947218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.082684, 31.538736, 30.818258>,  <38.117821, 31.763187, 30.740883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.082684, 31.538736, 30.818258>,  <38.024120, 31.164650, 30.947218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082684, 31.538736, 30.818258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274134, -0.351503, -0.895151,
		-0.950482, 0.042675, -0.307836,
		0.146406, 0.935214, -0.322399,
		38.126606, 31.819300, 30.721539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564846, 31.093317, 30.419352>,  <38.024120, 31.164650, 30.947218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564846, 31.093317, 30.419352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.812889, 31.398642, 30.346884>,  <37.961716, 31.581837, 30.303404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.812889, 31.398642, 30.346884>,  <37.564846, 31.093317, 30.419352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812889, 31.398642, 30.346884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196970, -0.375018, -0.905850,
		-0.759387, 0.526040, -0.382901,
		0.620109, 0.763310, -0.181170,
		37.998920, 31.627634, 30.292532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485874, 31.309475, 29.711111>,  <37.564846, 31.093317, 30.419352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485874, 31.309475, 29.711111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.831017, 31.498625, 29.782518>,  <38.038101, 31.612116, 29.825363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.831017, 31.498625, 29.782518>,  <37.485874, 31.309475, 29.711111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831017, 31.498625, 29.782518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292909, -0.179968, -0.939050,
		-0.411927, 0.862554, -0.293796,
		0.862856, 0.472875, 0.178517,
		38.089874, 31.640488, 29.836073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622334, 31.810011, 29.129629>,  <37.485874, 31.309475, 29.711111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622334, 31.810011, 29.129629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.974171, 31.723965, 29.299356>,  <38.185272, 31.672337, 29.401192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.974171, 31.723965, 29.299356>,  <37.622334, 31.810011, 29.129629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974171, 31.723965, 29.299356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387443, -0.193646, -0.901326,
		0.276058, 0.957197, -0.086983,
		0.879591, -0.215117, 0.424317,
		38.238049, 31.659430, 29.426651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150436, 32.245468, 28.776663>,  <37.622334, 31.810011, 29.129629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150436, 32.245468, 28.776663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.354622, 31.955118, 28.961069>,  <38.477135, 31.780909, 29.071712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.354622, 31.955118, 28.961069>,  <38.150436, 32.245468, 28.776663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354622, 31.955118, 28.961069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493336, -0.191907, -0.848405,
		0.704306, 0.660516, 0.260137,
		0.510463, -0.725872, 0.461018,
		38.507759, 31.737356, 29.099375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769279, 32.231689, 28.466196>,  <38.150436, 32.245468, 28.776663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769279, 32.231689, 28.466196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.735683, 31.876600, 28.647259>,  <38.715527, 31.663548, 28.755896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.735683, 31.876600, 28.647259>,  <38.769279, 32.231689, 28.466196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735683, 31.876600, 28.647259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636707, -0.397241, -0.660911,
		0.766518, 0.232702, 0.598581,
		-0.083986, -0.887722, 0.452655,
		38.710487, 31.610283, 28.783054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426937, 32.003010, 28.388462>,  <38.769279, 32.231689, 28.466196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426937, 32.003010, 28.388462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.196537, 31.686087, 28.468939>,  <39.058296, 31.495934, 28.517225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.196537, 31.686087, 28.468939>,  <39.426937, 32.003010, 28.388462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196537, 31.686087, 28.468939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427666, -0.501824, -0.751848,
		0.696657, -0.347018, 0.627891,
		-0.575996, -0.792307, 0.201191,
		39.023739, 31.448395, 28.529297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864616, 31.407162, 28.280005>,  <39.426937, 32.003010, 28.388462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864616, 31.407162, 28.280005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.484089, 31.287485, 28.250420>,  <39.255772, 31.215679, 28.232670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.484089, 31.287485, 28.250420>,  <39.864616, 31.407162, 28.280005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484089, 31.287485, 28.250420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221985, -0.498711, -0.837860,
		0.213797, -0.813493, 0.540851,
		-0.951322, -0.299193, -0.073960,
		39.198692, 31.197727, 28.228231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906227, 30.643862, 28.087645>,  <39.864616, 31.407162, 28.280005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906227, 30.643862, 28.087645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.516369, 30.684689, 28.007992>,  <39.282455, 30.709185, 27.960199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.516369, 30.684689, 28.007992>,  <39.906227, 30.643862, 28.087645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516369, 30.684689, 28.007992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086042, -0.650548, -0.754575,
		-0.206563, -0.752575, 0.625270,
		-0.974643, 0.102068, -0.199132,
		39.223976, 30.715309, 27.948252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603672, 29.971020, 28.103437>,  <39.906227, 30.643862, 28.087645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603672, 29.971020, 28.103437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.401024, 30.218870, 27.863640>,  <39.279434, 30.367580, 27.719761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.401024, 30.218870, 27.863640>,  <39.603672, 29.971020, 28.103437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401024, 30.218870, 27.863640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135759, -0.629329, -0.765189,
		-0.851412, -0.469050, 0.234713,
		-0.506623, 0.619627, -0.599496,
		39.249039, 30.404758, 27.683790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118610, 29.559048, 27.680977>,  <39.603672, 29.971020, 28.103437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118610, 29.559048, 27.680977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195400, 29.894285, 27.476723>,  <39.241474, 30.095427, 27.354170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195400, 29.894285, 27.476723>,  <39.118610, 29.559048, 27.680977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195400, 29.894285, 27.476723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282622, -0.545482, -0.789034,
		-0.939824, 0.007160, -0.341583,
		0.191976, 0.838092, -0.510634,
		39.252995, 30.145714, 27.323532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675911, 29.560654, 27.096876>,  <39.118610, 29.559048, 27.680977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675911, 29.560654, 27.096876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.984623, 29.801394, 27.014769>,  <39.169849, 29.945837, 26.965504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.984623, 29.801394, 27.014769>,  <38.675911, 29.560654, 27.096876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984623, 29.801394, 27.014769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294235, -0.624162, -0.723773,
		-0.563725, 0.498195, -0.658799,
		0.771777, 0.601851, -0.205269,
		39.216156, 29.981949, 26.953188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.936031, 29.395544, 26.337847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.232822, 29.647394, 26.429966>,  <39.410896, 29.798504, 26.485237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.232822, 29.647394, 26.429966>,  <38.936031, 29.395544, 26.337847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232822, 29.647394, 26.429966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527988, -0.337096, -0.779484,
		-0.413149, 0.699958, -0.582553,
		0.741982, 0.629624, 0.230299,
		39.455418, 29.836281, 26.499056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193539, 29.832706, 25.660900>,  <38.936031, 29.395544, 26.337847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193539, 29.832706, 25.660900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.491085, 29.801796, 25.926437>,  <39.669613, 29.783249, 26.085760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.491085, 29.801796, 25.926437>,  <39.193539, 29.832706, 25.660900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491085, 29.801796, 25.926437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630108, -0.249977, -0.735170,
		0.222757, 0.965163, -0.137258,
		0.743871, -0.077277, 0.663841,
		39.714245, 29.778612, 26.125589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804676, 30.152052, 25.318922>,  <39.193539, 29.832706, 25.660900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804676, 30.152052, 25.318922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.950901, 29.930891, 25.618433>,  <40.038635, 29.798195, 25.798140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.950901, 29.930891, 25.618433>,  <39.804676, 30.152052, 25.318922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950901, 29.930891, 25.618433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695151, -0.372789, -0.614649,
		0.618975, 0.745205, 0.248072,
		0.365561, -0.552900, 0.748777,
		40.060570, 29.765020, 25.843065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552376, 30.264500, 25.324728>,  <39.804676, 30.152052, 25.318922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552376, 30.264500, 25.324728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.498177, 29.920412, 25.521364>,  <40.465656, 29.713959, 25.639345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.498177, 29.920412, 25.521364>,  <40.552376, 30.264500, 25.324728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498177, 29.920412, 25.521364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663485, -0.447268, -0.599782,
		0.735817, 0.244891, 0.631349,
		-0.135501, -0.860221, 0.491589,
		40.457527, 29.662346, 25.668840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228607, 30.028536, 25.336437>,  <40.552376, 30.264500, 25.324728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228607, 30.028536, 25.336437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.977173, 29.721010, 25.383438>,  <40.826313, 29.536495, 25.411638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.977173, 29.721010, 25.383438>,  <41.228607, 30.028536, 25.336437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977173, 29.721010, 25.383438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613967, -0.583263, -0.531835,
		0.477418, -0.262159, 0.838656,
		-0.628582, -0.768816, 0.117503,
		40.788597, 29.490366, 25.418690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686131, 29.501678, 25.432121>,  <41.228607, 30.028536, 25.336437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686131, 29.501678, 25.432121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.337246, 29.320892, 25.357311>,  <41.127914, 29.212420, 25.312426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.337246, 29.320892, 25.357311>,  <41.686131, 29.501678, 25.432121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337246, 29.320892, 25.357311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454442, -0.607335, -0.651634,
		0.180929, -0.653353, 0.735115,
		-0.872208, -0.451967, -0.187027,
		41.075584, 29.185303, 25.301203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757080, 28.833414, 25.489975>,  <41.686131, 29.501678, 25.432121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757080, 28.833414, 25.489975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.433350, 28.839746, 25.255114>,  <41.239113, 28.843546, 25.114197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.433350, 28.839746, 25.255114>,  <41.757080, 28.833414, 25.489975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433350, 28.839746, 25.255114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448986, -0.627826, -0.635804,
		-0.378696, -0.778193, 0.501004,
		-0.809321, 0.015833, -0.587152,
		41.190552, 28.844496, 25.078968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622276, 28.087057, 25.374403>,  <41.757080, 28.833414, 25.489975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622276, 28.087057, 25.374403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.422470, 28.297184, 25.098860>,  <41.302586, 28.423260, 24.933535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.422470, 28.297184, 25.098860>,  <41.622276, 28.087057, 25.374403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422470, 28.297184, 25.098860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388461, -0.574918, -0.720116,
		-0.774325, -0.627305, 0.083116,
		-0.499518, 0.525317, -0.688857,
		41.272614, 28.454779, 24.892202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310024, 27.535706, 25.074398>,  <41.622276, 28.087057, 25.374403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310024, 27.535706, 25.074398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.326546, 27.852322, 24.830511>,  <41.336460, 28.042292, 24.684179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.326546, 27.852322, 24.830511>,  <41.310024, 27.535706, 25.074398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326546, 27.852322, 24.830511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266719, -0.596829, -0.756741,
		-0.962889, -0.131366, -0.235771,
		0.041305, 0.791542, -0.609718,
		41.338936, 28.089785, 24.647596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868744, 27.394112, 24.478924>,  <41.310024, 27.535706, 25.074398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868744, 27.394112, 24.478924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.146145, 27.650904, 24.348135>,  <41.312588, 27.804979, 24.269661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.146145, 27.650904, 24.348135>,  <40.868744, 27.394112, 24.478924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146145, 27.650904, 24.348135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162187, -0.581310, -0.797354,
		-0.701958, 0.499940, -0.507263,
		0.693506, 0.641980, -0.326972,
		41.354198, 27.843498, 24.250044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747005, 27.479715, 23.759512>,  <40.868744, 27.394112, 24.478924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747005, 27.479715, 23.759512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.114120, 27.637365, 23.778820>,  <41.334389, 27.731956, 23.790405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.114120, 27.637365, 23.778820>,  <40.747005, 27.479715, 23.759512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114120, 27.637365, 23.778820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145255, -0.220116, -0.964598,
		-0.369549, 0.892308, -0.259269,
		0.917788, 0.394127, 0.048269,
		41.389458, 27.755604, 23.793301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911972, 27.711958, 23.093914>,  <40.747005, 27.479715, 23.759512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911972, 27.711958, 23.093914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.271172, 27.675900, 23.266182>,  <41.486691, 27.654264, 23.369543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.271172, 27.675900, 23.266182>,  <40.911972, 27.711958, 23.093914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271172, 27.675900, 23.266182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389256, -0.293570, -0.873096,
		0.205136, 0.951678, -0.228536,
		0.897997, -0.090144, 0.430668,
		41.540569, 27.648857, 23.395382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270050, 27.802885, 22.514112>,  <40.911972, 27.711958, 23.093914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270050, 27.802885, 22.514112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.517628, 27.645731, 22.786156>,  <41.666176, 27.551439, 22.949381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.517628, 27.645731, 22.786156>,  <41.270050, 27.802885, 22.514112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517628, 27.645731, 22.786156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621593, -0.284299, -0.729929,
		0.480132, 0.874537, 0.068249,
		0.618947, -0.392886, 0.680107,
		41.703312, 27.527864, 22.990189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876625, 28.000422, 22.379519>,  <41.270050, 27.802885, 22.514112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876625, 28.000422, 22.379519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.934250, 27.660295, 22.581985>,  <41.968826, 27.456219, 22.703466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.934250, 27.660295, 22.581985>,  <41.876625, 28.000422, 22.379519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934250, 27.660295, 22.581985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658241, -0.299588, -0.690627,
		0.738894, 0.432676, 0.516554,
		0.144064, -0.850317, 0.506169,
		41.977470, 27.405201, 22.733835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491585, 27.964188, 22.258568>,  <41.876625, 28.000422, 22.379519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491585, 27.964188, 22.258568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.352730, 27.601030, 22.352564>,  <42.269417, 27.383135, 22.408962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.352730, 27.601030, 22.352564>,  <42.491585, 27.964188, 22.258568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352730, 27.601030, 22.352564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539706, -0.398324, -0.741657,
		0.766949, -0.130634, 0.628271,
		-0.347141, -0.907895, 0.234990,
		42.248589, 27.328663, 22.423061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090305, 27.568945, 22.067911>,  <42.491585, 27.964188, 22.258568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090305, 27.568945, 22.067911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.766300, 27.334631, 22.078793>,  <42.571896, 27.194042, 22.085321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.766300, 27.334631, 22.078793>,  <43.090305, 27.568945, 22.067911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766300, 27.334631, 22.078793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448170, -0.648308, -0.615500,
		0.378186, -0.486369, 0.787667,
		-0.810012, -0.585783, 0.027205,
		42.523296, 27.158895, 22.086954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346439, 26.928566, 22.048500>,  <43.090305, 27.568945, 22.067911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346439, 26.928566, 22.048500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.967548, 26.844948, 21.951294>,  <42.740215, 26.794777, 21.892971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.967548, 26.844948, 21.951294>,  <43.346439, 26.928566, 22.048500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967548, 26.844948, 21.951294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310993, -0.783104, -0.538546,
		-0.077725, -0.585703, 0.806790,
		-0.947229, -0.209048, -0.243016,
		42.683380, 26.782234, 21.878389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083519, 26.128500, 22.173971>,  <43.346439, 26.928566, 22.048500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083519, 26.128500, 22.173971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.824158, 26.288994, 21.915180>,  <42.668541, 26.385290, 21.759905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.824158, 26.288994, 21.915180>,  <43.083519, 26.128500, 22.173971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824158, 26.288994, 21.915180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323272, -0.624300, -0.711157,
		-0.689251, -0.670267, 0.275091,
		-0.648404, 0.401237, -0.646978,
		42.629635, 26.409365, 21.721087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862289, 25.646280, 21.905277>,  <43.083519, 26.128500, 22.173971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862289, 25.646280, 21.905277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.759003, 25.934494, 21.647858>,  <42.697029, 26.107422, 21.493406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.759003, 25.934494, 21.647858>,  <42.862289, 25.646280, 21.905277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759003, 25.934494, 21.647858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408955, -0.521987, -0.748522,
		-0.875259, -0.456464, -0.159879,
		-0.258219, 0.720535, -0.643547,
		42.681538, 26.150654, 21.454794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639595, 25.384409, 21.326508>,  <42.862289, 25.646280, 21.905277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639595, 25.384409, 21.326508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.701027, 25.747505, 21.170343>,  <42.737885, 25.965363, 21.076645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.701027, 25.747505, 21.170343>,  <42.639595, 25.384409, 21.326508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701027, 25.747505, 21.170343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423613, -0.417430, -0.803930,
		-0.892729, -0.041917, -0.448639,
		0.153577, 0.907742, -0.390409,
		42.747101, 26.019827, 21.053221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387989, 25.416185, 20.609245>,  <42.639595, 25.384409, 21.326508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387989, 25.416185, 20.609245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.679050, 25.690470, 20.616442>,  <42.853687, 25.855040, 20.620760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.679050, 25.690470, 20.616442>,  <42.387989, 25.416185, 20.609245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679050, 25.690470, 20.616442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254273, -0.245284, -0.935511,
		-0.637077, 0.685301, -0.352839,
		0.727653, 0.685710, 0.017989,
		42.897346, 25.896183, 20.621838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313484, 25.891832, 20.026861>,  <42.387989, 25.416185, 20.609245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313484, 25.891832, 20.026861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.686226, 25.999718, 20.123943>,  <42.909870, 26.064449, 20.182194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.686226, 25.999718, 20.123943>,  <42.313484, 25.891832, 20.026861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686226, 25.999718, 20.123943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272625, -0.079059, -0.958867,
		-0.239429, 0.959690, -0.147202,
		0.931853, 0.269712, 0.242707,
		42.965782, 26.080631, 20.196754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616993, 26.524446, 19.573732>,  <42.313484, 25.891832, 20.026861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616993, 26.524446, 19.573732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.815811, 26.198240, 19.692310>,  <42.935101, 26.002516, 19.763456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.815811, 26.198240, 19.692310>,  <42.616993, 26.524446, 19.573732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815811, 26.198240, 19.692310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093199, -0.289485, -0.952635,
		0.862706, 0.501130, -0.067881,
		0.497044, -0.815517, 0.296445,
		42.964924, 25.953585, 19.781244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205807, 26.480246, 19.236673>,  <42.616993, 26.524446, 19.573732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205807, 26.480246, 19.236673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.104935, 26.107525, 19.341093>,  <43.044411, 25.883892, 19.403746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.104935, 26.107525, 19.341093>,  <43.205807, 26.480246, 19.236673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104935, 26.107525, 19.341093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065147, -0.285506, -0.956160,
		0.965486, -0.224115, 0.132703,
		-0.252178, -0.931804, 0.261052,
		43.029282, 25.827984, 19.419409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.582283, 27.017336, 18.799337>,  <43.205807, 26.480246, 19.236673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.582283, 27.017336, 18.799337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.672710, 27.209890, 19.138079>,  <43.726967, 27.325422, 19.341324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.672710, 27.209890, 19.138079>,  <43.582283, 27.017336, 18.799337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672710, 27.209890, 19.138079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477500, 0.812512, -0.334392,
		-0.849050, -0.328776, 0.413547,
		0.226072, 0.481384, 0.846854,
		43.740532, 27.354305, 19.392136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879398, 27.567301, 18.448009>,  <43.582283, 27.017336, 18.799337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879398, 27.567301, 18.448009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.557518, 27.721306, 18.267244>,  <43.364391, 27.813709, 18.158785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.557518, 27.721306, 18.267244>,  <43.879398, 27.567301, 18.448009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557518, 27.721306, 18.267244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421177, 0.166258, 0.891610,
		0.418417, 0.907812, 0.028372,
		-0.804697, 0.385014, -0.451914,
		43.316109, 27.836811, 18.131670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731789, 28.185869, 18.715548>,  <43.879398, 27.567301, 18.448009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731789, 28.185869, 18.715548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.380146, 28.076002, 18.559736>,  <43.169163, 28.010082, 18.466249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.380146, 28.076002, 18.559736>,  <43.731789, 28.185869, 18.715548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380146, 28.076002, 18.559736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464406, 0.309711, 0.829702,
		-0.107252, 0.910294, -0.399826,
		-0.879104, -0.274669, -0.389529,
		43.116413, 27.993601, 18.442877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388790, 28.823795, 18.713785>,  <43.731789, 28.185869, 18.715548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388790, 28.823795, 18.713785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.121910, 28.526634, 18.692078>,  <42.961784, 28.348337, 18.679054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.121910, 28.526634, 18.692078>,  <43.388790, 28.823795, 18.713785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121910, 28.526634, 18.692078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547600, 0.439798, 0.711837,
		-0.504959, 0.504652, -0.700245,
		-0.667196, -0.742902, -0.054267,
		42.921753, 28.303764, 18.675798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738026, 29.172007, 18.652205>,  <43.388790, 28.823795, 18.713785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738026, 29.172007, 18.652205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.647202, 28.796926, 18.757401>,  <42.592705, 28.571878, 18.820518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.647202, 28.796926, 18.757401>,  <42.738026, 29.172007, 18.652205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647202, 28.796926, 18.757401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575563, 0.347045, 0.740464,
		-0.785602, 0.016764, -0.618505,
		-0.227062, -0.937698, 0.262991,
		42.579082, 28.515617, 18.836298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015724, 29.139353, 18.634796>,  <42.738026, 29.172007, 18.652205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015724, 29.139353, 18.634796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.202251, 28.880758, 18.876326>,  <42.314167, 28.725601, 19.021244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.202251, 28.880758, 18.876326>,  <42.015724, 29.139353, 18.634796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202251, 28.880758, 18.876326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494975, 0.375045, 0.783799,
		-0.733177, -0.664377, -0.145105,
		0.466317, -0.646487, 0.603825,
		42.342148, 28.686811, 19.057472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505608, 28.835262, 19.047398>,  <42.015724, 29.139353, 18.634796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505608, 28.835262, 19.047398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.823414, 28.748371, 19.274223>,  <42.014095, 28.696236, 19.410318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.823414, 28.748371, 19.274223>,  <41.505608, 28.835262, 19.047398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823414, 28.748371, 19.274223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523186, 0.229182, 0.820824,
		-0.308267, -0.948835, 0.068437,
		0.794511, -0.217228, 0.567066,
		42.061768, 28.683203, 19.444344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276276, 28.428509, 19.554653>,  <41.505608, 28.835262, 19.047398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276276, 28.428509, 19.554653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.612606, 28.587788, 19.701321>,  <41.814404, 28.683355, 19.789322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.612606, 28.587788, 19.701321>,  <41.276276, 28.428509, 19.554653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612606, 28.587788, 19.701321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461169, 0.172289, 0.870425,
		0.283432, -0.900973, 0.328503,
		0.840827, 0.398201, 0.366668,
		41.864853, 28.707247, 19.811321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321659, 28.210066, 20.306229>,  <41.276276, 28.428509, 19.554653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321659, 28.210066, 20.306229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.578766, 28.515509, 20.281725>,  <41.733028, 28.698774, 20.267023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.578766, 28.515509, 20.281725>,  <41.321659, 28.210066, 20.306229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578766, 28.515509, 20.281725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240231, 0.276854, 0.930398,
		0.727421, -0.583312, 0.361395,
		0.642766, 0.763609, -0.061260,
		41.771595, 28.744591, 20.263348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560204, 28.256578, 20.929903>,  <41.321659, 28.210066, 20.306229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560204, 28.256578, 20.929903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.695644, 28.610687, 20.802382>,  <41.776909, 28.823153, 20.725868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.695644, 28.610687, 20.802382>,  <41.560204, 28.256578, 20.929903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695644, 28.610687, 20.802382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151523, 0.385701, 0.910096,
		0.928648, -0.259858, 0.264740,
		0.338606, 0.885273, -0.318806,
		41.797226, 28.876268, 20.706739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131035, 28.542606, 21.411125>,  <41.560204, 28.256578, 20.929903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131035, 28.542606, 21.411125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.948326, 28.837971, 21.212688>,  <41.838699, 29.015190, 21.093626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.948326, 28.837971, 21.212688>,  <42.131035, 28.542606, 21.411125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948326, 28.837971, 21.212688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126074, 0.498307, 0.857785,
		0.880605, 0.454356, -0.134518,
		-0.456771, 0.738411, -0.496094,
		41.811295, 29.059494, 21.063860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286213, 29.141344, 21.756577>,  <42.131035, 28.542606, 21.411125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286213, 29.141344, 21.756577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.965157, 29.271545, 21.556654>,  <41.772522, 29.349667, 21.436701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.965157, 29.271545, 21.556654>,  <42.286213, 29.141344, 21.756577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965157, 29.271545, 21.556654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329971, 0.455727, 0.826699,
		0.496870, 0.828469, -0.258380,
		-0.802645, 0.325504, -0.499808,
		41.724361, 29.369196, 21.406712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176186, 29.865694, 21.949989>,  <42.286213, 29.141344, 21.756577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176186, 29.865694, 21.949989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.817238, 29.751591, 21.815319>,  <41.601868, 29.683128, 21.734518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.817238, 29.751591, 21.815319>,  <42.176186, 29.865694, 21.949989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817238, 29.751591, 21.815319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437130, 0.470363, 0.766600,
		-0.060319, 0.835097, -0.546786,
		-0.897373, -0.285257, -0.336674,
		41.548027, 29.666014, 21.714317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797901, 30.429132, 21.951853>,  <42.176186, 29.865694, 21.949989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797901, 30.429132, 21.951853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.521774, 30.139732, 21.953342>,  <41.356098, 29.966093, 21.954237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.521774, 30.139732, 21.953342>,  <41.797901, 30.429132, 21.951853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521774, 30.139732, 21.953342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460482, 0.443319, 0.769041,
		-0.558053, 0.529164, -0.639188,
		-0.690313, -0.723501, 0.003725,
		41.314682, 29.922682, 21.954460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077732, 30.734104, 22.054171>,  <41.797901, 30.429132, 21.951853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077732, 30.734104, 22.054171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.008327, 30.351967, 22.149845>,  <40.966686, 30.122684, 22.207251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.008327, 30.351967, 22.149845>,  <41.077732, 30.734104, 22.054171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008327, 30.351967, 22.149845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610572, 0.294913, 0.735002,
		-0.772720, -0.018512, -0.634477,
		-0.173509, -0.955345, 0.239188,
		40.956276, 30.065363, 22.221601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452061, 30.652084, 21.989334>,  <41.077732, 30.734104, 22.054171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452061, 30.652084, 21.989334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.533264, 30.369316, 22.260347>,  <40.581985, 30.199656, 22.422955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.533264, 30.369316, 22.260347>,  <40.452061, 30.652084, 21.989334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533264, 30.369316, 22.260347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755729, 0.326864, 0.567479,
		-0.622624, -0.627235, -0.467885,
		0.203008, -0.706920, 0.677533,
		40.594166, 30.157240, 22.463608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824154, 30.413252, 22.157579>,  <40.452061, 30.652084, 21.989334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824154, 30.413252, 22.157579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.048748, 30.282715, 22.461746>,  <40.183506, 30.204393, 22.644247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.048748, 30.282715, 22.461746>,  <39.824154, 30.413252, 22.157579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048748, 30.282715, 22.461746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698980, 0.304805, 0.646932,
		-0.442901, -0.894759, -0.056963,
		0.561485, -0.326343, 0.760417,
		40.217194, 30.184813, 22.689871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379452, 29.894129, 22.579227>,  <39.824154, 30.413252, 22.157579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379452, 29.894129, 22.579227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.670280, 30.024399, 22.820988>,  <39.844780, 30.102562, 22.966043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.670280, 30.024399, 22.820988>,  <39.379452, 29.894129, 22.579227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670280, 30.024399, 22.820988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675189, 0.179624, 0.715441,
		0.124435, -0.928263, 0.350491,
		0.727074, 0.325674, 0.604401,
		39.888401, 30.122101, 23.002308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165947, 29.804031, 23.188530>,  <39.379452, 29.894129, 22.579227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165947, 29.804031, 23.188530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.444759, 30.073236, 23.287487>,  <39.612045, 30.234760, 23.346861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.444759, 30.073236, 23.287487>,  <39.165947, 29.804031, 23.188530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444759, 30.073236, 23.287487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589328, 0.341156, 0.732329,
		0.408469, -0.656248, 0.634422,
		0.697027, 0.673016, 0.247394,
		39.653866, 30.275141, 23.361706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185101, 29.910349, 23.978783>,  <39.165947, 29.804031, 23.188530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185101, 29.910349, 23.978783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.327217, 30.245590, 23.813206>,  <39.412487, 30.446735, 23.713860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.327217, 30.245590, 23.813206>,  <39.185101, 29.910349, 23.978783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327217, 30.245590, 23.813206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495790, 0.544375, 0.676645,
		0.792440, -0.035177, 0.608935,
		0.355291, 0.838104, -0.413944,
		39.433804, 30.497021, 23.689022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.764606, 30.458025, 29.320585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.747257, 30.825573, 29.163715>,  <38.736847, 31.046101, 29.069593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.747257, 30.825573, 29.163715>,  <38.764606, 30.458025, 29.320585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747257, 30.825573, 29.163715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077700, 0.388250, 0.918273,
		0.996033, 0.070305, 0.054555,
		-0.043378, 0.918868, -0.392173,
		38.734245, 31.101234, 29.046064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152782, 30.768610, 29.814075>,  <38.764606, 30.458025, 29.320585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152782, 30.768610, 29.814075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.948700, 31.044931, 29.609144>,  <38.826252, 31.210724, 29.486185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.948700, 31.044931, 29.609144>,  <39.152782, 30.768610, 29.814075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948700, 31.044931, 29.609144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078330, 0.555895, 0.827554,
		0.856478, 0.462353, -0.229510,
		-0.510205, 0.690804, -0.512328,
		38.795639, 31.252172, 29.455446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358677, 31.400316, 30.047777>,  <39.152782, 30.768610, 29.814075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358677, 31.400316, 30.047777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.018360, 31.485548, 29.855631>,  <38.814171, 31.536686, 29.740343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.018360, 31.485548, 29.855631>,  <39.358677, 31.400316, 30.047777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018360, 31.485548, 29.855631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311770, 0.531189, 0.787806,
		0.423029, 0.820022, -0.385500,
		-0.850792, 0.213077, -0.480366,
		38.763123, 31.549471, 29.711521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266941, 32.081318, 30.186350>,  <39.358677, 31.400316, 30.047777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266941, 32.081318, 30.186350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.906124, 31.948778, 30.075693>,  <38.689636, 31.869255, 30.009298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.906124, 31.948778, 30.075693>,  <39.266941, 32.081318, 30.186350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906124, 31.948778, 30.075693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410716, 0.461668, 0.786241,
		-0.132802, 0.822843, -0.552534,
		-0.902040, -0.331349, -0.276644,
		38.635513, 31.849373, 29.992701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874352, 32.603363, 30.159071>,  <39.266941, 32.081318, 30.186350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874352, 32.603363, 30.159071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.619102, 32.300304, 30.213873>,  <38.465954, 32.118469, 30.246754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.619102, 32.300304, 30.213873>,  <38.874352, 32.603363, 30.159071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619102, 32.300304, 30.213873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420447, 0.491972, 0.762357,
		-0.645001, 0.428873, -0.632489,
		-0.638121, -0.757649, 0.137004,
		38.427666, 32.073009, 30.254974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239452, 32.957554, 30.146694>,  <38.874352, 32.603363, 30.159071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239452, 32.957554, 30.146694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.188995, 32.603703, 30.326262>,  <38.158722, 32.391392, 30.434002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.188995, 32.603703, 30.326262>,  <38.239452, 32.957554, 30.146694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188995, 32.603703, 30.326262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448375, 0.454514, 0.769660,
		-0.884899, -0.104193, -0.453979,
		-0.126146, -0.884624, 0.448917,
		38.151150, 32.338314, 30.460938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457130, 32.859375, 30.223103>,  <38.239452, 32.957554, 30.146694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457130, 32.859375, 30.223103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.648293, 32.608742, 30.469355>,  <37.762989, 32.458363, 30.617105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.648293, 32.608742, 30.469355>,  <37.457130, 32.859375, 30.223103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648293, 32.608742, 30.469355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633573, 0.239562, 0.735660,
		-0.608432, -0.741624, -0.282496,
		0.477908, -0.626581, 0.615630,
		37.791664, 32.420769, 30.654043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956963, 32.509617, 30.486605>,  <37.457130, 32.859375, 30.223103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956963, 32.509617, 30.486605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.247982, 32.463177, 30.757067>,  <37.422596, 32.435310, 30.919344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.247982, 32.463177, 30.757067>,  <36.956963, 32.509617, 30.486605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247982, 32.463177, 30.757067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643569, 0.225931, 0.731283,
		-0.237670, -0.967199, 0.089655,
		0.727552, -0.116105, 0.676157,
		37.466248, 32.428345, 30.959913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567284, 32.265331, 31.105679>,  <36.956963, 32.509617, 30.486605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567284, 32.265331, 31.105679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.920944, 32.398495, 31.236792>,  <37.133141, 32.478394, 31.315460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.920944, 32.398495, 31.236792>,  <36.567284, 32.265331, 31.105679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920944, 32.398495, 31.236792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440781, 0.361857, 0.821445,
		0.154853, -0.870766, 0.466677,
		0.884156, 0.332906, 0.327783,
		37.186192, 32.498367, 31.335127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572708, 32.051178, 31.792713>,  <36.567284, 32.265331, 31.105679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572708, 32.051178, 31.792713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.821121, 32.360168, 31.739651>,  <36.970169, 32.545563, 31.707813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.821121, 32.360168, 31.739651>,  <36.572708, 32.051178, 31.792713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821121, 32.360168, 31.739651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198479, 0.318731, 0.926832,
		0.758238, -0.549263, 0.351262,
		0.621032, 0.772478, -0.132657,
		37.007431, 32.591911, 31.699854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970665, 32.061501, 32.386951>,  <36.572708, 32.051178, 31.792713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970665, 32.061501, 32.386951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.006062, 32.421478, 32.216175>,  <37.027298, 32.637463, 32.113708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.006062, 32.421478, 32.216175>,  <36.970665, 32.061501, 32.386951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006062, 32.421478, 32.216175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221205, 0.435674, 0.872501,
		0.971205, 0.017236, 0.237622,
		0.088487, 0.899940, -0.426941,
		37.032608, 32.691460, 32.088093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471188, 32.410526, 32.721806>,  <36.970665, 32.061501, 32.386951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471188, 32.410526, 32.721806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.203461, 32.664627, 32.567684>,  <37.042824, 32.817089, 32.475212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.203461, 32.664627, 32.567684>,  <37.471188, 32.410526, 32.721806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203461, 32.664627, 32.567684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223714, 0.322211, 0.919854,
		0.708492, 0.701876, -0.073547,
		-0.669322, 0.635256, -0.385303,
		37.002663, 32.855206, 32.452095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712646, 33.056152, 32.781361>,  <37.471188, 32.410526, 32.721806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712646, 33.056152, 32.781361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.314579, 33.017502, 32.788300>,  <37.075737, 32.994312, 32.792461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.314579, 33.017502, 32.788300>,  <37.712646, 33.056152, 32.781361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314579, 33.017502, 32.788300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006930, 0.107077, 0.994227,
		-0.097926, 0.989544, -0.105890,
		-0.995170, -0.096627, 0.017343,
		37.016029, 32.988514, 32.793503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499516, 33.359875, 33.428272>,  <37.712646, 33.056152, 32.781361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499516, 33.359875, 33.428272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.175514, 33.137741, 33.352901>,  <36.981113, 33.004463, 33.307678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.175514, 33.137741, 33.352901>,  <37.499516, 33.359875, 33.428272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175514, 33.137741, 33.352901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115741, -0.163599, 0.979714,
		-0.574891, 0.815379, 0.068241,
		-0.810002, -0.555331, -0.188424,
		36.932514, 32.971142, 33.296375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026054, 32.965759, 33.759209>,  <37.499516, 33.359875, 33.428272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026054, 32.965759, 33.759209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.336533, 33.001804, 34.008816>,  <38.522820, 33.023430, 34.158581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.336533, 33.001804, 34.008816>,  <38.026054, 32.965759, 33.759209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336533, 33.001804, 34.008816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630070, -0.146866, -0.762523,
		0.022934, 0.985043, -0.170775,
		0.776200, 0.090112, 0.624014,
		38.569393, 33.028839, 34.196018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485561, 33.471951, 33.465973>,  <38.026054, 32.965759, 33.759209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485561, 33.471951, 33.465973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.731739, 33.286629, 33.721027>,  <38.879448, 33.175438, 33.874058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.731739, 33.286629, 33.721027>,  <38.485561, 33.471951, 33.465973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731739, 33.286629, 33.721027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714902, -0.012503, -0.699113,
		0.331872, 0.886113, 0.323520,
		0.615448, -0.463301, 0.637633,
		38.916374, 33.147640, 33.912319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082554, 33.785164, 33.287586>,  <38.485561, 33.471951, 33.465973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082554, 33.785164, 33.287586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.165493, 33.434769, 33.461784>,  <39.215256, 33.224533, 33.566303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.165493, 33.434769, 33.461784>,  <39.082554, 33.785164, 33.287586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165493, 33.434769, 33.461784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756279, -0.138834, -0.639349,
		0.620522, 0.461923, 0.633703,
		0.207351, -0.875986, 0.435493,
		39.227699, 33.171974, 33.592434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850010, 33.814007, 33.377506>,  <39.082554, 33.785164, 33.287586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850010, 33.814007, 33.377506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.717815, 33.436668, 33.389290>,  <39.638500, 33.210266, 33.396362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.717815, 33.436668, 33.389290>,  <39.850010, 33.814007, 33.377506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717815, 33.436668, 33.389290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797616, -0.295847, -0.525626,
		0.504565, -0.150213, 0.850206,
		-0.330487, -0.943351, 0.029462,
		39.618668, 33.153664, 33.398129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385345, 33.488525, 33.387722>,  <39.850010, 33.814007, 33.377506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385345, 33.488525, 33.387722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.156143, 33.184162, 33.265953>,  <40.018620, 33.001545, 33.192890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.156143, 33.184162, 33.265953>,  <40.385345, 33.488525, 33.387722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156143, 33.184162, 33.265953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793764, -0.422832, -0.437210,
		0.203959, -0.492165, 0.846271,
		-0.573010, -0.760912, -0.304423,
		39.984241, 32.955887, 33.174625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811977, 33.048283, 33.370312>,  <40.385345, 33.488525, 33.387722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811977, 33.048283, 33.370312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.529484, 32.873127, 33.147785>,  <40.359989, 32.768032, 33.014271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.529484, 32.873127, 33.147785>,  <40.811977, 33.048283, 33.370312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529484, 32.873127, 33.147785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707396, -0.468325, -0.529399,
		-0.028717, -0.767413, 0.640509,
		-0.706234, -0.437891, -0.556313,
		40.317612, 32.741760, 32.980892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149643, 32.316246, 33.193642>,  <40.811977, 33.048283, 33.370312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149643, 32.316246, 33.193642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.860287, 32.387791, 32.926895>,  <40.686672, 32.430717, 32.766846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.860287, 32.387791, 32.926895>,  <41.149643, 32.316246, 33.193642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860287, 32.387791, 32.926895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573035, -0.383246, -0.724398,
		-0.385106, -0.906171, 0.174776,
		-0.723411, 0.178818, -0.666858,
		40.643269, 32.441448, 32.726837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891563, 31.621836, 32.963306>,  <41.149643, 32.316246, 33.193642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891563, 31.621836, 32.963306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.789043, 31.869188, 32.666145>,  <40.727531, 32.017601, 32.487846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.789043, 31.869188, 32.666145>,  <40.891563, 31.621836, 32.963306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789043, 31.869188, 32.666145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445037, -0.606777, -0.658608,
		-0.858051, -0.499425, -0.119684,
		-0.256304, 0.618383, -0.742907,
		40.712151, 32.054703, 32.443272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610672, 31.211958, 32.450245>,  <40.891563, 31.621836, 32.963306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610672, 31.211958, 32.450245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.717625, 31.542377, 32.251793>,  <40.781796, 31.740629, 32.132721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.717625, 31.542377, 32.251793>,  <40.610672, 31.211958, 32.450245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717625, 31.542377, 32.251793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346960, -0.562877, -0.750193,
		-0.898957, 0.028453, -0.437111,
		0.267385, 0.826051, -0.496130,
		40.797840, 31.790194, 32.102955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544407, 30.955198, 31.772612>,  <40.610672, 31.211958, 32.450245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544407, 30.955198, 31.772612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.751945, 31.294065, 31.726822>,  <40.876469, 31.497387, 31.699348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.751945, 31.294065, 31.726822>,  <40.544407, 30.955198, 31.772612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751945, 31.294065, 31.726822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364257, -0.340231, -0.866925,
		-0.773380, 0.408101, -0.485115,
		0.518844, 0.847170, -0.114474,
		40.907600, 31.548216, 31.692480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453606, 31.030497, 31.038612>,  <40.544407, 30.955198, 31.772612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453606, 31.030497, 31.038612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.765228, 31.264467, 31.128889>,  <40.952202, 31.404850, 31.183054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.765228, 31.264467, 31.128889>,  <40.453606, 31.030497, 31.038612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765228, 31.264467, 31.128889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517792, -0.397298, -0.757658,
		-0.353510, 0.707115, -0.612388,
		0.779052, 0.584929, 0.225690,
		40.998943, 31.439945, 31.196596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604778, 31.344864, 30.451807>,  <40.453606, 31.030497, 31.038612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604778, 31.344864, 30.451807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.941723, 31.348616, 30.667337>,  <41.143890, 31.350866, 30.796656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.941723, 31.348616, 30.667337>,  <40.604778, 31.344864, 30.451807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941723, 31.348616, 30.667337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462482, -0.525850, -0.713857,
		0.276645, 0.850526, -0.447296,
		0.842364, 0.009381, 0.538827,
		41.194431, 31.351431, 30.828985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015221, 31.684164, 30.077578>,  <40.604778, 31.344864, 30.451807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015221, 31.684164, 30.077578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.217480, 31.447157, 30.328415>,  <41.338833, 31.304953, 30.478918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.217480, 31.447157, 30.328415>,  <41.015221, 31.684164, 30.077578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217480, 31.447157, 30.328415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453173, -0.436103, -0.777463,
		0.734138, 0.677301, 0.048001,
		0.505643, -0.592518, 0.627094,
		41.369171, 31.269402, 30.516542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606491, 31.745279, 29.777876>,  <41.015221, 31.684164, 30.077578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606491, 31.745279, 29.777876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.675804, 31.430225, 30.014385>,  <41.717392, 31.241194, 30.156292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.675804, 31.430225, 30.014385>,  <41.606491, 31.745279, 29.777876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675804, 31.430225, 30.014385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553456, -0.418719, -0.719973,
		0.814653, 0.452004, 0.363363,
		0.173284, -0.787634, 0.591275,
		41.727791, 31.193935, 30.191767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212372, 32.157139, 30.117123>,  <41.606491, 31.745279, 29.777876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212372, 32.157139, 30.117123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.281528, 32.510998, 29.943918>,  <42.323025, 32.723312, 29.839994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.281528, 32.510998, 29.943918>,  <42.212372, 32.157139, 30.117123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281528, 32.510998, 29.943918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630050, 0.437254, 0.641752,
		0.757063, 0.161865, 0.632973,
		0.172893, 0.884652, -0.433012,
		42.333397, 32.776394, 29.814014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084332, 32.572464, 30.690203>,  <42.212372, 32.157139, 30.117123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084332, 32.572464, 30.690203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.083420, 32.830250, 30.384352>,  <42.082870, 32.984921, 30.200842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.083420, 32.830250, 30.384352>,  <42.084332, 32.572464, 30.690203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083420, 32.830250, 30.384352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691582, 0.551271, 0.466706,
		0.722294, 0.529868, 0.444444,
		-0.002283, 0.644469, -0.764627,
		42.082733, 33.023590, 30.154964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132236, 33.230251, 30.985722>,  <42.084332, 32.572464, 30.690203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132236, 33.230251, 30.985722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.989941, 33.279739, 30.615177>,  <41.904564, 33.309433, 30.392851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.989941, 33.279739, 30.615177>,  <42.132236, 33.230251, 30.985722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989941, 33.279739, 30.615177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688086, 0.636087, 0.349187,
		0.632448, 0.761634, -0.141149,
		-0.355736, 0.123720, -0.926361,
		41.883221, 33.316856, 30.337269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128815, 33.958378, 30.786842>,  <42.132236, 33.230251, 30.985722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128815, 33.958378, 30.786842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.865692, 33.770638, 30.551214>,  <41.707817, 33.657993, 30.409838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.865692, 33.770638, 30.551214>,  <42.128815, 33.958378, 30.786842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865692, 33.770638, 30.551214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626664, 0.774926, 0.082356,
		0.417832, 0.423323, -0.803875,
		-0.657806, -0.469348, -0.589070,
		41.668350, 33.629833, 30.374493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954300, 34.515678, 30.328829>,  <42.128815, 33.958378, 30.786842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954300, 34.515678, 30.328829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.654438, 34.251728, 30.349144>,  <41.474522, 34.093357, 30.361334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.654438, 34.251728, 30.349144>,  <41.954300, 34.515678, 30.328829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654438, 34.251728, 30.349144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658105, 0.751372, 0.048358,
		-0.070073, 0.002827, -0.997538,
		-0.749658, -0.659873, 0.050790,
		41.429539, 34.053764, 30.364382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375500, 34.913628, 30.210972>,  <41.954300, 34.515678, 30.328829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375500, 34.913628, 30.210972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.144474, 34.590206, 30.255989>,  <41.005859, 34.396152, 30.282999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.144474, 34.590206, 30.255989>,  <41.375500, 34.913628, 30.210972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144474, 34.590206, 30.255989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789294, 0.588290, 0.175870,
		-0.208409, 0.012745, -0.977959,
		-0.577565, -0.808550, 0.112545,
		40.971203, 34.347641, 30.289753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718346, 34.996193, 29.848686>,  <41.375500, 34.913628, 30.210972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718346, 34.996193, 29.848686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.661327, 34.743484, 30.153460>,  <40.627117, 34.591858, 30.336325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.661327, 34.743484, 30.153460>,  <40.718346, 34.996193, 29.848686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661327, 34.743484, 30.153460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873967, 0.441684, 0.202721,
		-0.464608, -0.637008, -0.615110,
		-0.142549, -0.631772, 0.761935,
		40.618561, 34.553951, 30.382040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030655, 34.792145, 29.810518>,  <40.718346, 34.996193, 29.848686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030655, 34.792145, 29.810518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.126030, 34.705410, 30.189175>,  <40.183254, 34.653370, 30.416368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.126030, 34.705410, 30.189175>,  <40.030655, 34.792145, 29.810518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126030, 34.705410, 30.189175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855506, 0.414430, 0.310416,
		-0.459626, -0.883872, -0.086689,
		0.238441, -0.216839, 0.946640,
		40.197563, 34.640358, 30.473167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438278, 34.495350, 30.138700>,  <40.030655, 34.792145, 29.810518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438278, 34.495350, 30.138700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.683655, 34.634953, 30.422075>,  <39.830879, 34.718716, 30.592100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.683655, 34.634953, 30.422075>,  <39.438278, 34.495350, 30.138700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683655, 34.634953, 30.422075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760149, 0.504206, 0.409817,
		-0.214169, -0.789916, 0.574599,
		0.613438, 0.349011, 0.708439,
		39.867687, 34.739655, 30.634607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060032, 34.509613, 30.776064>,  <39.438278, 34.495350, 30.138700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060032, 34.509613, 30.776064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.371361, 34.742771, 30.869402>,  <39.558159, 34.882668, 30.925404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.371361, 34.742771, 30.869402>,  <39.060032, 34.509613, 30.776064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371361, 34.742771, 30.869402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577675, 0.519201, 0.629859,
		0.245992, -0.625027, 0.740830,
		0.778318, 0.582899, 0.233343,
		39.604855, 34.917641, 30.939405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165558, 34.459591, 31.538605>,  <39.060032, 34.509613, 30.776064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165558, 34.459591, 31.538605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.329418, 34.811447, 31.441927>,  <39.427734, 35.022560, 31.383921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.329418, 34.811447, 31.441927>,  <39.165558, 34.459591, 31.538605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329418, 34.811447, 31.441927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624387, 0.463524, 0.628717,
		0.665078, -0.106642, 0.739120,
		0.409648, 0.879643, -0.241694,
		39.452312, 35.075340, 31.369419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430008, 34.856941, 32.149025>,  <39.165558, 34.459591, 31.538605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430008, 34.856941, 32.149025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.365051, 35.111633, 31.847509>,  <39.326077, 35.264450, 31.666599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.365051, 35.111633, 31.847509>,  <39.430008, 34.856941, 32.149025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365051, 35.111633, 31.847509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690823, 0.472107, 0.547612,
		0.704552, 0.609663, 0.363204,
		-0.162388, 0.636731, -0.753793,
		39.316334, 35.302654, 31.621372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<45.087833, 31.201746, 27.726067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867447, 31.425632, 27.478468>,  <44.735214, 31.559963, 27.329908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867447, 31.425632, 27.478468>,  <45.087833, 31.201746, 27.726067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867447, 31.425632, 27.478468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261448, 0.588623, 0.764962,
		0.792517, 0.583303, -0.177974,
		-0.550965, 0.559715, -0.618997,
		44.702156, 31.593548, 27.292768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.030899, 31.730032, 28.135992>,  <45.087833, 31.201746, 27.726067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.030899, 31.730032, 28.135992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761341, 31.814804, 27.852880>,  <44.599606, 31.865667, 27.683014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761341, 31.814804, 27.852880>,  <45.030899, 31.730032, 28.135992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.761341, 31.814804, 27.852880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642330, 0.305301, 0.702996,
		0.365071, 0.928373, -0.069612,
		-0.673895, 0.211930, -0.707779,
		44.559174, 31.878384, 27.640547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.020737, 32.383305, 28.065821>,  <45.030899, 31.730032, 28.135992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.020737, 32.383305, 28.065821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661022, 32.240345, 27.964981>,  <44.445194, 32.154568, 27.904478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661022, 32.240345, 27.964981>,  <45.020737, 32.383305, 28.065821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661022, 32.240345, 27.964981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389186, 0.390910, 0.834101,
		-0.199562, 0.848205, -0.490635,
		-0.899283, -0.357403, -0.252098,
		44.391239, 32.133125, 27.889351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550232, 32.957561, 28.151628>,  <45.020737, 32.383305, 28.065821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550232, 32.957561, 28.151628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312344, 32.636166, 28.140997>,  <44.169609, 32.443329, 28.134619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312344, 32.636166, 28.140997>,  <44.550232, 32.957561, 28.151628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312344, 32.636166, 28.140997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594477, 0.417280, 0.687367,
		-0.541202, 0.424595, -0.725823,
		-0.594725, -0.803490, -0.026580,
		44.133926, 32.395119, 28.133022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882305, 33.080570, 27.905048>,  <44.550232, 32.957561, 28.151628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882305, 33.080570, 27.905048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851528, 32.769718, 28.154896>,  <43.833061, 32.583206, 28.304804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851528, 32.769718, 28.154896>,  <43.882305, 33.080570, 27.905048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851528, 32.769718, 28.154896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721374, 0.475851, 0.503175,
		-0.688258, -0.411869, -0.597214,
		-0.076943, -0.777129, 0.624619,
		43.828445, 32.536579, 28.342281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311424, 33.279453, 28.180895>,  <43.882305, 33.080570, 27.905048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311424, 33.279453, 28.180895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388126, 32.942085, 28.381643>,  <43.434147, 32.739666, 28.502092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388126, 32.942085, 28.381643>,  <43.311424, 33.279453, 28.180895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.388126, 32.942085, 28.381643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719106, 0.227265, 0.656687,
		-0.667920, -0.486820, -0.562929,
		0.191754, -0.843420, 0.501870,
		43.445652, 32.689060, 28.532204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760731, 32.812153, 28.202219>,  <43.311424, 33.279453, 28.180895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760731, 32.812153, 28.202219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980358, 32.731003, 28.526531>,  <43.112133, 32.682312, 28.721119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980358, 32.731003, 28.526531>,  <42.760731, 32.812153, 28.202219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980358, 32.731003, 28.526531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802173, 0.144388, 0.579370,
		-0.234607, -0.968500, -0.083463,
		0.549070, -0.202877, 0.810780,
		43.145081, 32.670139, 28.769766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297306, 32.417126, 28.662828>,  <42.760731, 32.812153, 28.202219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297306, 32.417126, 28.662828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586586, 32.540455, 28.910027>,  <42.760155, 32.614452, 29.058346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586586, 32.540455, 28.910027>,  <42.297306, 32.417126, 28.662828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586586, 32.540455, 28.910027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690094, 0.287110, 0.664332,
		0.027395, -0.906921, 0.420409,
		0.723201, 0.308321, 0.617996,
		42.803547, 32.632950, 29.095425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043919, 32.204174, 29.387129>,  <42.297306, 32.417126, 28.662828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043919, 32.204174, 29.387129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301037, 32.507729, 29.428904>,  <42.455307, 32.689861, 29.453968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301037, 32.507729, 29.428904>,  <42.043919, 32.204174, 29.387129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301037, 32.507729, 29.428904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555832, 0.368244, 0.745283,
		0.527126, -0.537114, 0.658518,
		0.642798, 0.758884, 0.104434,
		42.493877, 32.735394, 29.460234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354557, 31.570576, 29.722664>,  <42.043919, 32.204174, 29.387129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354557, 31.570576, 29.722664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199074, 31.224001, 29.848005>,  <42.105782, 31.016056, 29.923210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199074, 31.224001, 29.848005>,  <42.354557, 31.570576, 29.722664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199074, 31.224001, 29.848005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669483, -0.499271, -0.550019,
		0.633005, -0.004014, 0.774137,
		-0.388713, -0.866436, 0.313354,
		42.082458, 30.964069, 29.942011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918407, 31.087666, 29.930759>,  <42.354557, 31.570576, 29.722664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918407, 31.087666, 29.930759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594849, 30.857550, 29.882212>,  <42.400715, 30.719481, 29.853083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594849, 30.857550, 29.882212>,  <42.918407, 31.087666, 29.930759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594849, 30.857550, 29.882212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535339, -0.635295, -0.556608,
		0.243103, -0.515213, 0.821861,
		-0.808896, -0.575288, -0.121372,
		42.352180, 30.684963, 29.845800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070301, 30.445875, 30.033264>,  <42.918407, 31.087666, 29.930759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070301, 30.445875, 30.033264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735054, 30.350121, 29.837206>,  <42.533905, 30.292667, 29.719570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735054, 30.350121, 29.837206>,  <43.070301, 30.445875, 30.033264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735054, 30.350121, 29.837206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407442, -0.872180, -0.270727,
		-0.362688, -0.426609, 0.828530,
		-0.838122, -0.239388, -0.490147,
		42.483616, 30.278303, 29.690163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943794, 29.791990, 30.238380>,  <43.070301, 30.445875, 30.033264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943794, 29.791990, 30.238380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735401, 29.844162, 29.900963>,  <42.610367, 29.875465, 29.698511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735401, 29.844162, 29.900963>,  <42.943794, 29.791990, 30.238380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735401, 29.844162, 29.900963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279025, -0.907940, -0.312713,
		-0.806675, -0.398287, 0.436626,
		-0.520980, 0.130428, -0.843545,
		42.579105, 29.883291, 29.647900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838852, 29.069824, 30.130848>,  <42.943794, 29.791990, 30.238380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838852, 29.069824, 30.130848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744343, 29.267933, 29.796452>,  <42.687637, 29.386797, 29.595814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744343, 29.267933, 29.796452>,  <42.838852, 29.069824, 30.130848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744343, 29.267933, 29.796452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391475, -0.738920, -0.548401,
		-0.889339, -0.456841, -0.019301,
		-0.236270, 0.495270, -0.835993,
		42.673462, 29.416513, 29.545654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398174, 28.561571, 29.672434>,  <42.838852, 29.069824, 30.130848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398174, 28.561571, 29.672434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556538, 28.820324, 29.411726>,  <42.651554, 28.975574, 29.255302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556538, 28.820324, 29.411726>,  <42.398174, 28.561571, 29.672434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556538, 28.820324, 29.411726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295235, -0.761746, -0.576697,
		-0.869536, 0.035894, -0.492563,
		0.395908, 0.646881, -0.651768,
		42.675308, 29.014389, 29.216196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208996, 28.417950, 28.983776>,  <42.398174, 28.561571, 29.672434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208996, 28.417950, 28.983776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526241, 28.651777, 28.915365>,  <42.716587, 28.792074, 28.874319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526241, 28.651777, 28.915365>,  <42.208996, 28.417950, 28.983776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526241, 28.651777, 28.915365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317876, -0.636792, -0.702460,
		-0.519545, 0.502765, -0.690869,
		0.793113, 0.584571, -0.171025,
		42.764175, 28.827148, 28.864058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243256, 28.544214, 28.276525>,  <42.208996, 28.417950, 28.983776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243256, 28.544214, 28.276525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621761, 28.604763, 28.390837>,  <42.848866, 28.641092, 28.459423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621761, 28.604763, 28.390837>,  <42.243256, 28.544214, 28.276525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621761, 28.604763, 28.390837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322289, -0.368534, -0.871959,
		-0.026672, 0.917207, -0.397517,
		0.946266, 0.151373, 0.285776,
		42.905640, 28.650175, 28.476570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582996, 28.852083, 27.736309>,  <42.243256, 28.544214, 28.276525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582996, 28.852083, 27.736309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882263, 28.706388, 27.958149>,  <43.061825, 28.618973, 28.091253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882263, 28.706388, 27.958149>,  <42.582996, 28.852083, 27.736309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882263, 28.706388, 27.958149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364637, -0.472615, -0.802294,
		0.554335, 0.802476, -0.220782,
		0.748166, -0.364235, 0.554599,
		43.106712, 28.597118, 28.124529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183079, 28.944086, 27.223600>,  <42.582996, 28.852083, 27.736309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183079, 28.944086, 27.223600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266151, 28.670967, 27.503788>,  <43.315994, 28.507095, 27.671900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266151, 28.670967, 27.503788>,  <43.183079, 28.944086, 27.223600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266151, 28.670967, 27.503788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386685, -0.600451, -0.699952,
		0.898522, 0.416230, 0.139322,
		0.207685, -0.682796, 0.700468,
		43.328457, 28.466127, 27.713928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874683, 28.738214, 27.258177>,  <43.183079, 28.944086, 27.223600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.874683, 28.738214, 27.258177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712685, 28.421600, 27.441238>,  <43.615486, 28.231632, 27.551075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712685, 28.421600, 27.441238>,  <43.874683, 28.738214, 27.258177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.712685, 28.421600, 27.441238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410354, -0.604658, -0.682640,
		0.817058, -0.088669, 0.569697,
		-0.405001, -0.791534, 0.457655,
		43.591183, 28.184139, 27.578535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347336, 28.292292, 27.288115>,  <43.874683, 28.738214, 27.258177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347336, 28.292292, 27.288115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038464, 28.039080, 27.310064>,  <43.853142, 27.887152, 27.323235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038464, 28.039080, 27.310064>,  <44.347336, 28.292292, 27.288115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038464, 28.039080, 27.310064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525720, -0.685001, -0.504373,
		0.356874, -0.360617, 0.861740,
		-0.772178, -0.633032, 0.054876,
		43.806808, 27.849171, 27.326527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.553185, 27.560968, 27.504265>,  <44.347336, 28.292292, 27.288115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.553185, 27.560968, 27.504265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199009, 27.499264, 27.328903>,  <43.986504, 27.462240, 27.223686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199009, 27.499264, 27.328903>,  <44.553185, 27.560968, 27.504265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.199009, 27.499264, 27.328903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401953, -0.727709, -0.555764,
		-0.233297, -0.668314, 0.706349,
		-0.885441, -0.154261, -0.438403,
		43.933376, 27.452986, 27.197382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616917, 26.908850, 27.351871>,  <44.553185, 27.560968, 27.504265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616917, 26.908850, 27.351871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300171, 27.024260, 27.136576>,  <44.110123, 27.093506, 27.007399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300171, 27.024260, 27.136576>,  <44.616917, 26.908850, 27.351871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300171, 27.024260, 27.136576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309366, -0.570375, -0.760898,
		-0.526531, -0.769044, 0.362404,
		-0.791870, 0.288521, -0.538236,
		44.062611, 27.110817, 26.975105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.571854, 33.117516, 21.443304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.872856, 32.989391, 21.673483>,  <41.053455, 32.912518, 21.811590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.872856, 32.989391, 21.673483>,  <40.571854, 33.117516, 21.443304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872856, 32.989391, 21.673483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487783, 0.316001, 0.813764,
		-0.442500, -0.893053, 0.081549,
		0.752504, -0.320312, 0.575446,
		41.098606, 32.893299, 21.846117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204536, 32.890324, 21.927523>,  <40.571854, 33.117516, 21.443304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204536, 32.890324, 21.927523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.570869, 32.934132, 22.082058>,  <40.790668, 32.960415, 22.174778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.570869, 32.934132, 22.082058>,  <40.204536, 32.890324, 21.927523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570869, 32.934132, 22.082058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401506, 0.265630, 0.876490,
		-0.006630, -0.957834, 0.287246,
		0.915833, 0.109520, 0.386337,
		40.845619, 32.966988, 22.197958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217556, 32.548302, 22.619833>,  <40.204536, 32.890324, 21.927523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217556, 32.548302, 22.619833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.513634, 32.817257, 22.619429>,  <40.691280, 32.978630, 22.619186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.513634, 32.817257, 22.619429>,  <40.217556, 32.548302, 22.619833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513634, 32.817257, 22.619429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395496, 0.436594, 0.808065,
		0.543777, -0.597727, 0.589092,
		0.740196, 0.672390, -0.001011,
		40.735691, 33.018974, 22.619125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383934, 32.730797, 23.325834>,  <40.217556, 32.548302, 22.619833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383934, 32.730797, 23.325834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.522758, 33.045467, 23.121601>,  <40.606052, 33.234268, 22.999062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.522758, 33.045467, 23.121601>,  <40.383934, 32.730797, 23.325834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522758, 33.045467, 23.121601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346228, 0.613439, 0.709801,
		0.871594, -0.069565, 0.485268,
		0.347060, 0.786672, -0.510585,
		40.626877, 33.281467, 22.968426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794792, 33.143887, 23.818758>,  <40.383934, 32.730797, 23.325834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794792, 33.143887, 23.818758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.694645, 33.387066, 23.517370>,  <40.634556, 33.532974, 23.336538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.694645, 33.387066, 23.517370>,  <40.794792, 33.143887, 23.818758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694645, 33.387066, 23.517370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442433, 0.620389, 0.647588,
		0.861143, 0.495496, 0.113649,
		-0.250371, 0.607949, -0.753467,
		40.619534, 33.569450, 23.291330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037159, 33.756939, 24.016569>,  <40.794792, 33.143887, 23.818758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037159, 33.756939, 24.016569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.763142, 33.854092, 23.741842>,  <40.598732, 33.912384, 23.577005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.763142, 33.854092, 23.741842>,  <41.037159, 33.756939, 24.016569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763142, 33.854092, 23.741842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440906, 0.612276, 0.656292,
		0.579926, 0.752413, -0.312348,
		-0.685046, 0.242885, -0.686818,
		40.557629, 33.926956, 23.535797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932961, 34.510300, 24.039093>,  <41.037159, 33.756939, 24.016569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932961, 34.510300, 24.039093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.605282, 34.348946, 23.876022>,  <40.408676, 34.252132, 23.778179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.605282, 34.348946, 23.876022>,  <40.932961, 34.510300, 24.039093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605282, 34.348946, 23.876022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572840, 0.609955, 0.547549,
		0.027792, 0.682083, -0.730746,
		-0.819196, -0.403383, -0.407676,
		40.359524, 34.227932, 23.753719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554638, 35.104004, 24.007629>,  <40.932961, 34.510300, 24.039093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554638, 35.104004, 24.007629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.301319, 34.797260, 23.965935>,  <40.149326, 34.613216, 23.940918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.301319, 34.797260, 23.965935>,  <40.554638, 35.104004, 24.007629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301319, 34.797260, 23.965935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669484, 0.475287, 0.570870,
		-0.388234, 0.431315, -0.814397,
		-0.633297, -0.766857, -0.104236,
		40.111328, 34.567204, 23.934664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909626, 35.401535, 23.850367>,  <40.554638, 35.104004, 24.007629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909626, 35.401535, 23.850367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.814209, 35.039021, 23.989937>,  <39.756958, 34.821514, 24.073679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.814209, 35.039021, 23.989937>,  <39.909626, 35.401535, 23.850367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814209, 35.039021, 23.989937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850502, 0.368393, 0.375410,
		-0.468769, -0.207209, -0.858674,
		-0.238541, -0.906284, 0.348923,
		39.742645, 34.767136, 24.094614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256893, 35.524288, 24.133110>,  <39.909626, 35.401535, 23.850367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256893, 35.524288, 24.133110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.312363, 35.156368, 24.279936>,  <39.345646, 34.935616, 24.368032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.312363, 35.156368, 24.279936>,  <39.256893, 35.524288, 24.133110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312363, 35.156368, 24.279936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699387, 0.171462, 0.693872,
		-0.701162, -0.352942, -0.619519,
		0.138673, -0.919800, 0.367066,
		39.353966, 34.880428, 24.390055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560299, 35.203339, 24.282444>,  <39.256893, 35.524288, 24.133110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560299, 35.203339, 24.282444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.808338, 35.001682, 24.522882>,  <38.957161, 34.880688, 24.667145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.808338, 35.001682, 24.522882>,  <38.560299, 35.203339, 24.282444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808338, 35.001682, 24.522882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625711, 0.144371, 0.766579,
		-0.473248, -0.851466, -0.225924,
		0.620099, -0.504145, 0.601095,
		38.994370, 34.850437, 24.703211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124794, 34.815426, 24.703514>,  <38.560299, 35.203339, 24.282444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124794, 34.815426, 24.703514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.472485, 34.831841, 24.900599>,  <38.681099, 34.841690, 25.018848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.472485, 34.831841, 24.900599>,  <38.124794, 34.815426, 24.703514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472485, 34.831841, 24.900599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492826, 0.151806, 0.856783,
		-0.039633, -0.987558, 0.152180,
		0.869225, 0.041042, 0.492710,
		38.733253, 34.844154, 25.048412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022446, 34.285435, 25.235622>,  <38.124794, 34.815426, 24.703514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022446, 34.285435, 25.235622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.303551, 34.540863, 25.361071>,  <38.472214, 34.694118, 25.436340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.303551, 34.540863, 25.361071>,  <38.022446, 34.285435, 25.235622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303551, 34.540863, 25.361071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468042, 0.082994, 0.879800,
		0.535785, -0.765076, 0.357203,
		0.702760, 0.638569, 0.313621,
		38.514378, 34.732433, 25.455156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246704, 34.190094, 26.038849>,  <38.022446, 34.285435, 25.235622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246704, 34.190094, 26.038849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.336369, 34.566013, 25.935673>,  <38.390167, 34.791565, 25.873766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.336369, 34.566013, 25.935673>,  <38.246704, 34.190094, 26.038849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336369, 34.566013, 25.935673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191813, 0.302046, 0.933797,
		0.955490, -0.159842, 0.247972,
		0.224159, 0.939797, -0.257942,
		38.403618, 34.847954, 25.858290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478615, 33.690681, 26.603693>,  <38.246704, 34.190094, 26.038849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478615, 33.690681, 26.603693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.258026, 33.358482, 26.572300>,  <38.125675, 33.159164, 26.553463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.258026, 33.358482, 26.572300>,  <38.478615, 33.690681, 26.603693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258026, 33.358482, 26.572300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595516, -0.326051, -0.734201,
		0.584161, -0.451627, 0.674381,
		-0.551467, -0.830496, -0.078484,
		38.092587, 33.109333, 26.548754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991154, 33.090839, 26.504530>,  <38.478615, 33.690681, 26.603693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991154, 33.090839, 26.504530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.654335, 32.933311, 26.357092>,  <38.452244, 32.838795, 26.268629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.654335, 32.933311, 26.357092>,  <38.991154, 33.090839, 26.504530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654335, 32.933311, 26.357092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528309, -0.464252, -0.710887,
		0.108839, -0.793332, 0.598980,
		-0.842047, -0.393819, -0.368595,
		38.401722, 32.815166, 26.246513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220020, 32.612686, 26.028286>,  <38.991154, 33.090839, 26.504530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220020, 32.612686, 26.028286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.831146, 32.597557, 25.935833>,  <38.597820, 32.588478, 25.880362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.831146, 32.597557, 25.935833>,  <39.220020, 32.612686, 26.028286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831146, 32.597557, 25.935833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219344, -0.493027, -0.841910,
		-0.082111, -0.869191, 0.487611,
		-0.972187, -0.037825, -0.231134,
		38.539490, 32.586208, 25.866493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004704, 31.839558, 25.953194>,  <39.220020, 32.612686, 26.028286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004704, 31.839558, 25.953194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.770184, 32.087879, 25.745020>,  <38.629471, 32.236874, 25.620115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.770184, 32.087879, 25.745020>,  <39.004704, 31.839558, 25.953194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770184, 32.087879, 25.745020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145360, -0.551390, -0.821486,
		-0.796946, -0.557288, 0.233040,
		-0.586300, 0.620805, -0.520436,
		38.594292, 32.274120, 25.588890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571854, 31.419556, 25.577755>,  <39.004704, 31.839558, 25.953194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571854, 31.419556, 25.577755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.555664, 31.768908, 25.383614>,  <38.545952, 31.978519, 25.267128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.555664, 31.768908, 25.383614>,  <38.571854, 31.419556, 25.577755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555664, 31.768908, 25.383614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042828, -0.483788, -0.874136,
		-0.998262, -0.056167, -0.017825,
		-0.040474, 0.873381, -0.485353,
		38.543522, 32.030922, 25.238008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131920, 31.298409, 25.075529>,  <38.571854, 31.419556, 25.577755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131920, 31.298409, 25.075529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360523, 31.610725, 24.974545>,  <38.497684, 31.798117, 24.913954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360523, 31.610725, 24.974545>,  <38.131920, 31.298409, 25.075529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360523, 31.610725, 24.974545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202828, -0.432519, -0.878515,
		-0.795132, 0.450876, -0.405557,
		0.571512, 0.780793, -0.252460,
		38.531979, 31.844963, 24.898808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880524, 31.354042, 24.480312>,  <38.131920, 31.298409, 25.075529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880524, 31.354042, 24.480312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.235058, 31.537125, 24.508366>,  <38.447777, 31.646975, 24.525198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.235058, 31.537125, 24.508366>,  <37.880524, 31.354042, 24.480312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235058, 31.537125, 24.508366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340061, -0.540612, -0.769478,
		-0.314278, 0.705865, -0.634810,
		0.886334, 0.457705, 0.070134,
		38.500957, 31.674437, 24.529406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099613, 31.569401, 23.755180>,  <37.880524, 31.354042, 24.480312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099613, 31.569401, 23.755180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.426048, 31.572617, 23.986328>,  <38.621910, 31.574545, 24.125017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.426048, 31.572617, 23.986328>,  <38.099613, 31.569401, 23.755180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426048, 31.572617, 23.986328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491043, -0.536919, -0.685999,
		0.304756, 0.843596, -0.442120,
		0.816088, 0.008038, 0.577871,
		38.670876, 31.575027, 24.159689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647675, 31.656414, 23.337528>,  <38.099613, 31.569401, 23.755180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647675, 31.656414, 23.337528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.806240, 31.465223, 23.651062>,  <38.901379, 31.350510, 23.839182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.806240, 31.465223, 23.651062>,  <38.647675, 31.656414, 23.337528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806240, 31.465223, 23.651062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529584, -0.578366, -0.620511,
		0.749932, 0.661085, 0.023857,
		0.396413, -0.477975, 0.783835,
		38.925163, 31.321831, 23.886213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307884, 31.722914, 23.233959>,  <38.647675, 31.656414, 23.337528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307884, 31.722914, 23.233959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.298813, 31.407372, 23.479624>,  <39.293369, 31.218046, 23.627022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.298813, 31.407372, 23.479624>,  <39.307884, 31.722914, 23.233959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298813, 31.407372, 23.479624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731505, -0.431832, -0.527656,
		0.681459, 0.437296, 0.586844,
		-0.022676, -0.788855, 0.614160,
		39.292011, 31.170715, 23.663872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985455, 31.561649, 23.323753>,  <39.307884, 31.722914, 23.233959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985455, 31.561649, 23.323753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.810688, 31.219645, 23.435505>,  <39.705830, 31.014441, 23.502556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.810688, 31.219645, 23.435505>,  <39.985455, 31.561649, 23.323753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810688, 31.219645, 23.435505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628682, -0.512406, -0.584978,
		0.643321, -0.079945, 0.761411,
		-0.436918, -0.855014, 0.279381,
		39.679611, 30.963140, 23.519320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607567, 31.182598, 23.559992>,  <39.985455, 31.561649, 23.323753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607567, 31.182598, 23.559992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.308735, 30.921041, 23.512163>,  <40.129436, 30.764107, 23.483465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.308735, 30.921041, 23.512163>,  <40.607567, 31.182598, 23.559992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308735, 30.921041, 23.512163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625912, -0.631400, -0.457786,
		0.223845, -0.416844, 0.880985,
		-0.747079, -0.653892, -0.119572,
		40.084610, 30.724874, 23.476292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841061, 30.506025, 23.814199>,  <40.607567, 31.182598, 23.559992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841061, 30.506025, 23.814199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.546822, 30.396765, 23.566235>,  <40.370277, 30.331207, 23.417456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.546822, 30.396765, 23.566235>,  <40.841061, 30.506025, 23.814199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546822, 30.396765, 23.566235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645993, -0.558349, -0.520518,
		-0.203945, -0.783348, 0.587173,
		-0.735594, -0.273153, -0.619910,
		40.326145, 30.314819, 23.380262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019241, 29.815765, 23.672747>,  <40.841061, 30.506025, 23.814199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019241, 29.815765, 23.672747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.761414, 29.907507, 23.381012>,  <40.606716, 29.962551, 23.205971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.761414, 29.907507, 23.381012>,  <41.019241, 29.815765, 23.672747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761414, 29.907507, 23.381012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581891, -0.471604, -0.662565,
		-0.495923, -0.851460, 0.170517,
		-0.644564, 0.229359, -0.729336,
		40.568043, 29.976313, 23.162210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693260, 29.179989, 24.037426>,  <41.019241, 29.815765, 23.672747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693260, 29.179989, 24.037426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.859032, 28.932220, 24.304129>,  <40.958496, 28.783560, 24.464149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.859032, 28.932220, 24.304129>,  <40.693260, 29.179989, 24.037426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859032, 28.932220, 24.304129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488456, 0.466775, 0.737246,
		-0.767892, -0.631218, -0.109115,
		0.414430, -0.619423, 0.666755,
		40.983360, 28.746393, 24.504156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097141, 28.915899, 24.357199>,  <40.693260, 29.179989, 24.037426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097141, 28.915899, 24.357199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.433624, 28.893084, 24.572277>,  <40.635513, 28.879395, 24.701324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.433624, 28.893084, 24.572277>,  <40.097141, 28.915899, 24.357199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433624, 28.893084, 24.572277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475601, 0.395036, 0.785971,
		-0.257239, -0.916893, 0.305180,
		0.841208, -0.057039, 0.537694,
		40.685986, 28.875973, 24.733585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992558, 28.518040, 24.891422>,  <40.097141, 28.915899, 24.357199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992558, 28.518040, 24.891422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.313583, 28.725384, 25.009539>,  <40.506199, 28.849791, 25.080408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.313583, 28.725384, 25.009539>,  <39.992558, 28.518040, 24.891422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313583, 28.725384, 25.009539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526554, 0.382833, 0.759065,
		0.280420, -0.764685, 0.580192,
		0.802562, 0.518359, 0.295294,
		40.554352, 28.880892, 25.098127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901863, 28.508663, 25.599926>,  <39.992558, 28.518040, 24.891422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901863, 28.508663, 25.599926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.187798, 28.787840, 25.582535>,  <40.359360, 28.955345, 25.572100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.187798, 28.787840, 25.582535>,  <39.901863, 28.508663, 25.599926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187798, 28.787840, 25.582535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478601, 0.533624, 0.697271,
		0.509854, -0.477625, 0.715488,
		0.714836, 0.697940, -0.043479,
		40.402248, 28.997221, 25.569490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267937, 28.583952, 26.283930>,  <39.901863, 28.508663, 25.599926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267937, 28.583952, 26.283930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.358345, 28.929005, 26.102921>,  <40.412590, 29.136036, 25.994314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.358345, 28.929005, 26.102921>,  <40.267937, 28.583952, 26.283930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358345, 28.929005, 26.102921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395605, 0.505796, 0.766595,
		0.890176, 0.005759, 0.455580,
		0.226016, 0.862634, -0.452526,
		40.426151, 29.187796, 25.967163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582993, 29.141289, 26.805603>,  <40.267937, 28.583952, 26.283930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582993, 29.141289, 26.805603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.423740, 29.332085, 26.492176>,  <40.328190, 29.446562, 26.304121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.423740, 29.332085, 26.492176>,  <40.582993, 29.141289, 26.805603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423740, 29.332085, 26.492176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501335, 0.602195, 0.621308,
		0.768216, 0.640190, -0.000621,
		-0.398129, 0.476988, -0.783566,
		40.304302, 29.475182, 26.257107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731812, 29.835579, 26.980698>,  <40.582993, 29.141289, 26.805603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731812, 29.835579, 26.980698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.416302, 29.823429, 26.735123>,  <40.226997, 29.816139, 26.587778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.416302, 29.823429, 26.735123>,  <40.731812, 29.835579, 26.980698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416302, 29.823429, 26.735123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503826, 0.604116, 0.617417,
		0.352136, 0.796318, -0.491812,
		-0.788771, -0.030373, -0.613937,
		40.179672, 29.814318, 26.550941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463043, 30.467827, 26.925276>,  <40.731812, 29.835579, 26.980698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463043, 30.467827, 26.925276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.138058, 30.260284, 26.818920>,  <39.943066, 30.135759, 26.755106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.138058, 30.260284, 26.818920>,  <40.463043, 30.467827, 26.925276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138058, 30.260284, 26.818920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575795, 0.642528, 0.505587,
		-0.091486, 0.563866, -0.820783,
		-0.812459, -0.518857, -0.265889,
		39.894321, 30.104628, 26.739153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980675, 30.920301, 26.505106>,  <40.463043, 30.467827, 26.925276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980675, 30.920301, 26.505106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.761829, 30.624184, 26.661381>,  <39.630524, 30.446512, 26.755146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.761829, 30.624184, 26.661381>,  <39.980675, 30.920301, 26.505106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761829, 30.624184, 26.661381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538468, 0.668607, 0.512852,
		-0.640877, 0.070214, -0.764426,
		-0.547110, -0.740294, 0.390687,
		39.597698, 30.402096, 26.778587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446346, 31.268232, 26.717140>,  <39.980675, 30.920301, 26.505106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446346, 31.268232, 26.717140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.355122, 30.911579, 26.873590>,  <39.300385, 30.697588, 26.967461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.355122, 30.911579, 26.873590>,  <39.446346, 31.268232, 26.717140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355122, 30.911579, 26.873590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576425, 0.447394, 0.683793,
		-0.784679, -0.069507, -0.615993,
		-0.228063, -0.891632, 0.391127,
		39.286701, 30.644089, 26.990929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714054, 31.234722, 26.928299>,  <39.446346, 31.268232, 26.717140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714054, 31.234722, 26.928299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.854950, 30.965446, 27.188374>,  <38.939487, 30.803881, 27.344418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.854950, 30.965446, 27.188374>,  <38.714054, 31.234722, 26.928299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854950, 30.965446, 27.188374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578896, 0.389157, 0.716545,
		-0.735394, -0.628788, -0.252628,
		0.352243, -0.673188, 0.650187,
		38.960625, 30.763491, 27.383430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161484, 31.073782, 27.427263>,  <38.714054, 31.234722, 26.928299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161484, 31.073782, 27.427263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.508499, 30.967421, 27.595390>,  <38.716709, 30.903605, 27.696266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.508499, 30.967421, 27.595390>,  <38.161484, 31.073782, 27.427263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508499, 30.967421, 27.595390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342270, 0.293976, 0.892429,
		-0.360861, -0.918082, 0.164027,
		0.867543, -0.265902, 0.420316,
		38.768761, 30.887650, 27.721485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970772, 30.772236, 28.035191>,  <38.161484, 31.073782, 27.427263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970772, 30.772236, 28.035191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.351170, 30.879839, 28.096184>,  <38.579407, 30.944401, 28.132780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.351170, 30.879839, 28.096184>,  <37.970772, 30.772236, 28.035191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351170, 30.879839, 28.096184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243216, 0.346206, 0.906084,
		0.190951, -0.898764, 0.394665,
		0.950991, 0.269007, 0.152485,
		38.636467, 30.960541, 28.141930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139549, 30.541714, 28.636156>,  <37.970772, 30.772236, 28.035191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139549, 30.541714, 28.636156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.422623, 30.822771, 28.606552>,  <38.592464, 30.991405, 28.588789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.422623, 30.822771, 28.606552>,  <38.139549, 30.541714, 28.636156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422623, 30.822771, 28.606552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183694, 0.284129, 0.941025,
		0.682234, -0.652351, 0.330145,
		0.707682, 0.702644, -0.074009,
		38.634926, 31.033564, 28.584349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.374023, 26.143366, 26.923412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.214214, 26.474655, 26.766224>,  <44.118328, 26.673428, 26.671911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.214214, 26.474655, 26.766224>,  <44.374023, 26.143366, 26.923412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.214214, 26.474655, 26.766224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018248, -0.421402, -0.906690,
		-0.916540, -0.369417, 0.153248,
		-0.399526, 0.828222, -0.392973,
		44.094357, 26.723122, 26.648333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.755680, 25.996700, 26.468906>,  <44.374023, 26.143366, 26.923412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.755680, 25.996700, 26.468906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.891983, 26.349630, 26.339054>,  <43.973766, 26.561388, 26.261143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.891983, 26.349630, 26.339054>,  <43.755680, 25.996700, 26.468906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891983, 26.349630, 26.339054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127070, -0.385354, -0.913978,
		-0.931523, 0.270197, -0.243431,
		0.340761, 0.882324, -0.324632,
		43.994213, 26.614328, 26.241665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468369, 26.136721, 25.829775>,  <43.755680, 25.996700, 26.468906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468369, 26.136721, 25.829775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.774246, 26.393396, 25.806162>,  <43.957771, 26.547401, 25.791994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.774246, 26.393396, 25.806162>,  <43.468369, 26.136721, 25.829775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774246, 26.393396, 25.806162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036622, -0.134738, -0.990204,
		-0.643357, 0.755037, -0.126532,
		0.764690, 0.641688, -0.059033,
		44.003654, 26.585903, 25.788452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304684, 26.662222, 25.292070>,  <43.468369, 26.136721, 25.829775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304684, 26.662222, 25.292070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.702133, 26.645931, 25.334139>,  <43.940601, 26.636158, 25.359381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.702133, 26.645931, 25.334139>,  <43.304684, 26.662222, 25.292070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702133, 26.645931, 25.334139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099377, -0.124816, -0.987190,
		0.053330, 0.991344, -0.119973,
		0.993620, -0.040725, 0.105173,
		44.000217, 26.633715, 25.365690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614094, 27.009377, 24.616693>,  <43.304684, 26.662222, 25.292070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614094, 27.009377, 24.616693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.921535, 26.807461, 24.773888>,  <44.105999, 26.686312, 24.868204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.921535, 26.807461, 24.773888>,  <43.614094, 27.009377, 24.616693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921535, 26.807461, 24.773888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306322, -0.248899, -0.918812,
		0.561622, 0.826581, -0.036676,
		0.768601, -0.504790, 0.392987,
		44.152115, 26.656023, 24.891785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227703, 27.402098, 24.488930>,  <43.614094, 27.009377, 24.616693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227703, 27.402098, 24.488930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.360085, 27.027758, 24.537354>,  <44.439514, 26.803154, 24.566408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.360085, 27.027758, 24.537354>,  <44.227703, 27.402098, 24.488930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360085, 27.027758, 24.537354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259859, -0.032945, -0.965084,
		0.907161, 0.350860, 0.232286,
		0.330957, -0.935848, 0.121061,
		44.459370, 26.747004, 24.573671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934029, 27.277515, 24.240192>,  <44.227703, 27.402098, 24.488930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.934029, 27.277515, 24.240192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.781841, 26.907732, 24.230249>,  <44.690529, 26.685862, 24.224283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.781841, 26.907732, 24.230249>,  <44.934029, 27.277515, 24.240192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781841, 26.907732, 24.230249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354276, -0.120874, -0.927296,
		0.854243, -0.361613, 0.373503,
		-0.380469, -0.924460, -0.024856,
		44.667702, 26.630394, 24.222794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.481949, 26.877464, 23.814344>,  <44.934029, 27.277515, 24.240192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.481949, 26.877464, 23.814344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.144894, 26.662224, 23.822395>,  <44.942661, 26.533079, 23.827227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.144894, 26.662224, 23.822395>,  <45.481949, 26.877464, 23.814344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144894, 26.662224, 23.822395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103507, -0.198540, -0.974612,
		0.528438, -0.819162, 0.222995,
		-0.842639, -0.538103, 0.020127,
		44.892101, 26.500793, 23.828434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.618713, 26.299383, 23.480621>,  <45.481949, 26.877464, 23.814344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.618713, 26.299383, 23.480621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.218838, 26.305393, 23.472740>,  <44.978912, 26.308998, 23.468012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.218838, 26.305393, 23.472740>,  <45.618713, 26.299383, 23.480621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.218838, 26.305393, 23.472740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013041, -0.357173, -0.933947,
		-0.021069, -0.933918, 0.356867,
		-0.999693, 0.015024, -0.019704,
		44.918930, 26.309900, 23.466829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.427620, 25.796936, 22.914812>,  <45.618713, 26.299383, 23.480621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.427620, 25.796936, 22.914812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.090679, 26.004631, 22.972549>,  <44.888515, 26.129248, 23.007191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.090679, 26.004631, 22.972549>,  <45.427620, 25.796936, 22.914812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090679, 26.004631, 22.972549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115446, 0.087764, -0.989429,
		-0.526418, -0.850111, -0.013984,
		-0.842351, 0.519239, 0.144342,
		44.837975, 26.160402, 23.015852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.973042, 25.463484, 22.381077>,  <45.427620, 25.796936, 22.914812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.973042, 25.463484, 22.381077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.818905, 25.824631, 22.457333>,  <44.726421, 26.041319, 22.503086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.818905, 25.824631, 22.457333>,  <44.973042, 25.463484, 22.381077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.818905, 25.824631, 22.457333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003703, 0.208103, -0.978100,
		-0.922766, -0.376199, -0.083534,
		-0.385344, 0.902866, 0.190638,
		44.703300, 26.095491, 22.514524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544498, 25.590216, 21.795883>,  <44.973042, 25.463484, 22.381077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544498, 25.590216, 21.795883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.651970, 25.923071, 21.989939>,  <44.716454, 26.122784, 22.106371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.651970, 25.923071, 21.989939>,  <44.544498, 25.590216, 21.795883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651970, 25.923071, 21.989939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368452, 0.376566, -0.849965,
		-0.889976, 0.407114, -0.205430,
		0.268675, 0.832139, 0.485137,
		44.732571, 26.172712, 22.135479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561852, 26.147205, 21.359764>,  <44.544498, 25.590216, 21.795883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.561852, 26.147205, 21.359764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.788322, 26.317175, 21.642292>,  <44.924206, 26.419157, 21.811810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.788322, 26.317175, 21.642292>,  <44.561852, 26.147205, 21.359764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788322, 26.317175, 21.642292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498585, 0.505822, -0.703958,
		-0.656400, 0.750723, 0.074523,
		0.566173, 0.424922, 0.706321,
		44.958176, 26.444651, 21.854189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448528, 26.880632, 21.146536>,  <44.561852, 26.147205, 21.359764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448528, 26.880632, 21.146536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.773746, 26.778812, 21.355978>,  <44.968876, 26.717720, 21.481644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.773746, 26.778812, 21.355978>,  <44.448528, 26.880632, 21.146536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.773746, 26.778812, 21.355978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577744, 0.241712, -0.779607,
		0.071888, 0.936365, 0.343588,
		0.813046, -0.254550, 0.523604,
		45.017662, 26.702448, 21.513060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.134144, 26.419302, 20.594944>,  <44.448528, 26.880632, 21.146536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.134144, 26.419302, 20.594944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.767212, 26.341034, 20.456257>,  <43.547050, 26.294073, 20.373045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.767212, 26.341034, 20.456257>,  <44.134144, 26.419302, 20.594944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767212, 26.341034, 20.456257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391198, 0.281308, 0.876259,
		-0.073922, 0.939457, -0.334598,
		-0.917333, -0.195669, -0.346719,
		43.492012, 26.282333, 20.352242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651226, 26.919586, 20.645563>,  <44.134144, 26.419302, 20.594944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651226, 26.919586, 20.645563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.401253, 26.607588, 20.632507>,  <43.251270, 26.420389, 20.624674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.401253, 26.607588, 20.632507>,  <43.651226, 26.919586, 20.645563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401253, 26.607588, 20.632507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578385, 0.434512, 0.690413,
		-0.524336, 0.450340, -0.722679,
		-0.624934, -0.779995, -0.032639,
		43.213772, 26.373589, 20.622715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936966, 27.124727, 20.483023>,  <43.651226, 26.919586, 20.645563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936966, 27.124727, 20.483023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.882359, 26.769890, 20.659399>,  <42.849594, 26.556988, 20.765224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.882359, 26.769890, 20.659399>,  <42.936966, 27.124727, 20.483023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882359, 26.769890, 20.659399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723064, 0.393486, 0.567757,
		-0.677157, -0.241322, -0.695142,
		-0.136516, -0.887092, 0.440943,
		42.841404, 26.503761, 20.791681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260189, 27.189577, 20.729259>,  <42.936966, 27.124727, 20.483023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260189, 27.189577, 20.729259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.356098, 26.852484, 20.922052>,  <42.413643, 26.650227, 21.037729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.356098, 26.852484, 20.922052>,  <42.260189, 27.189577, 20.729259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356098, 26.852484, 20.922052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601775, 0.260570, 0.754964,
		-0.761824, -0.471065, -0.444659,
		0.239772, -0.842735, 0.481983,
		42.428028, 26.599663, 21.066647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661922, 26.863792, 20.957127>,  <42.260189, 27.189577, 20.729259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661922, 26.863792, 20.957127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.959259, 26.728067, 21.187714>,  <42.137661, 26.646631, 21.326065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.959259, 26.728067, 21.187714>,  <41.661922, 26.863792, 20.957127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959259, 26.728067, 21.187714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519892, 0.249204, 0.817074,
		-0.420903, -0.907063, 0.008836,
		0.743339, -0.339315, 0.576465,
		42.182262, 26.626272, 21.360653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431728, 26.637899, 21.581032>,  <41.661922, 26.863792, 20.957127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431728, 26.637899, 21.581032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.820759, 26.659342, 21.671555>,  <42.054176, 26.672207, 21.725868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.820759, 26.659342, 21.671555>,  <41.431728, 26.637899, 21.581032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820759, 26.659342, 21.671555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232340, 0.180841, 0.955675,
		0.010303, -0.982051, 0.188337,
		0.972581, 0.053605, 0.226307,
		42.112534, 26.675423, 21.739447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602478, 26.206181, 22.185804>,  <41.431728, 26.637899, 21.581032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602478, 26.206181, 22.185804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.873882, 26.499102, 22.162642>,  <42.036724, 26.674854, 22.148745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.873882, 26.499102, 22.162642>,  <41.602478, 26.206181, 22.185804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873882, 26.499102, 22.162642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263639, 0.316332, 0.911279,
		0.685648, -0.603050, 0.407699,
		0.678514, 0.732301, -0.057905,
		42.077438, 26.718792, 22.145269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909218, 26.140341, 22.831198>,  <41.602478, 26.206181, 22.185804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909218, 26.140341, 22.831198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.005768, 26.503944, 22.695292>,  <42.063698, 26.722107, 22.613749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.005768, 26.503944, 22.695292>,  <41.909218, 26.140341, 22.831198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005768, 26.503944, 22.695292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223587, 0.392791, 0.892034,
		0.944324, -0.139346, 0.298052,
		0.241373, 0.909009, -0.339766,
		42.078178, 26.776648, 22.593361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218220, 26.357941, 23.429100>,  <41.909218, 26.140341, 22.831198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218220, 26.357941, 23.429100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.148273, 26.680077, 23.202526>,  <42.106304, 26.873358, 23.066582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.148273, 26.680077, 23.202526>,  <42.218220, 26.357941, 23.429100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148273, 26.680077, 23.202526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131260, 0.551095, 0.824054,
		0.975804, 0.218449, 0.009342,
		-0.174865, 0.805341, -0.566434,
		42.095814, 26.921679, 23.032597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535637, 26.840561, 23.756874>,  <42.218220, 26.357941, 23.429100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535637, 26.840561, 23.756874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.286251, 27.063824, 23.537874>,  <42.136620, 27.197781, 23.406475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.286251, 27.063824, 23.537874>,  <42.535637, 26.840561, 23.756874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286251, 27.063824, 23.537874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016491, 0.709491, 0.704522,
		0.781678, 0.430215, -0.451547,
		-0.623465, 0.558155, -0.547498,
		42.099213, 27.231270, 23.373625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679470, 27.489063, 23.879026>,  <42.535637, 26.840561, 23.756874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679470, 27.489063, 23.879026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.309315, 27.538980, 23.735868>,  <42.087223, 27.568932, 23.649973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.309315, 27.538980, 23.735868>,  <42.679470, 27.489063, 23.879026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309315, 27.538980, 23.735868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182206, 0.681521, 0.708752,
		0.332362, 0.721079, -0.607931,
		-0.925385, 0.124793, -0.357896,
		42.031700, 27.576418, 23.628500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603432, 28.226778, 23.826200>,  <42.679470, 27.489063, 23.879026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603432, 28.226778, 23.826200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.233303, 28.075346, 23.834736>,  <42.011227, 27.984486, 23.839857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.233303, 28.075346, 23.834736>,  <42.603432, 28.226778, 23.826200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233303, 28.075346, 23.834736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253864, 0.660329, 0.706766,
		-0.281661, 0.648568, -0.707125,
		-0.925322, -0.378582, 0.021341,
		41.955708, 27.961771, 23.841139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122532, 28.775177, 23.787418>,  <42.603432, 28.226778, 23.826200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122532, 28.775177, 23.787418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.890385, 28.484907, 23.935236>,  <41.751095, 28.310745, 24.023926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.890385, 28.484907, 23.935236>,  <42.122532, 28.775177, 23.787418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890385, 28.484907, 23.935236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432846, 0.659269, 0.614824,
		-0.689792, 0.196872, -0.696727,
		-0.580372, -0.725676, 0.369543,
		41.716274, 28.267204, 24.046099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433384, 29.058371, 23.762154>,  <42.122532, 28.775177, 23.787418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433384, 29.058371, 23.762154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.415024, 28.776922, 24.045790>,  <41.404007, 28.608053, 24.215971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.415024, 28.776922, 24.045790>,  <41.433384, 29.058371, 23.762154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415024, 28.776922, 24.045790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589854, 0.591970, 0.549221,
		-0.806204, -0.393050, -0.442206,
		-0.045902, -0.703622, 0.709091,
		41.401253, 28.565836, 24.258516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849464, 29.203695, 23.299244>,  <41.433384, 29.058371, 23.762154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849464, 29.203695, 23.299244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.779068, 29.493893, 23.033104>,  <40.736832, 29.668011, 22.873421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.779068, 29.493893, 23.033104>,  <40.849464, 29.203695, 23.299244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779068, 29.493893, 23.033104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512545, -0.509522, -0.691147,
		-0.840432, -0.462654, -0.282178,
		-0.175987, 0.725492, -0.665350,
		40.726273, 29.711540, 22.833498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817574, 28.852793, 22.634222>,  <40.849464, 29.203695, 23.299244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817574, 28.852793, 22.634222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.857506, 29.222332, 22.486416>,  <40.881466, 29.444056, 22.397732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.857506, 29.222332, 22.486416>,  <40.817574, 28.852793, 22.634222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857506, 29.222332, 22.486416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119466, -0.379813, -0.917317,
		-0.987806, 0.047435, -0.148286,
		0.099834, 0.923846, -0.369515,
		40.887455, 29.499485, 22.375561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553936, 28.837362, 21.929579>,  <40.817574, 28.852793, 22.634222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553936, 28.837362, 21.929579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.765491, 29.176825, 21.926447>,  <40.892426, 29.380501, 21.924568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.765491, 29.176825, 21.926447>,  <40.553936, 28.837362, 21.929579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765491, 29.176825, 21.926447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172914, -0.116787, -0.977989,
		-0.830888, 0.515896, -0.208512,
		0.528892, 0.848654, -0.007831,
		40.924160, 29.431421, 21.924097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323242, 29.416248, 21.332031>,  <40.553936, 28.837362, 21.929579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323242, 29.416248, 21.332031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.704636, 29.466232, 21.441757>,  <40.933472, 29.496223, 21.507593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.704636, 29.466232, 21.441757>,  <40.323242, 29.416248, 21.332031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704636, 29.466232, 21.441757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286058, -0.088127, -0.954151,
		-0.095056, 0.988240, -0.119774,
		0.953486, 0.124960, 0.274317,
		40.990681, 29.503721, 21.524052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651012, 29.864939, 20.895432>,  <40.323242, 29.416248, 21.332031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651012, 29.864939, 20.895432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.967484, 29.670828, 21.044317>,  <41.157368, 29.554361, 21.133648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.967484, 29.670828, 21.044317>,  <40.651012, 29.864939, 20.895432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967484, 29.670828, 21.044317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371073, -0.102878, -0.922887,
		0.486148, 0.868287, 0.098678,
		0.791180, -0.485276, 0.372212,
		41.204838, 29.525246, 21.155981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240524, 30.093184, 20.426765>,  <40.651012, 29.864939, 20.895432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240524, 30.093184, 20.426765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.371613, 29.763357, 20.611242>,  <41.450264, 29.565462, 20.721928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.371613, 29.763357, 20.611242>,  <41.240524, 30.093184, 20.426765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371613, 29.763357, 20.611242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511006, -0.255882, -0.820608,
		0.794654, 0.504598, 0.337500,
		0.327716, -0.824564, 0.461190,
		41.469929, 29.515987, 20.749599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997356, 30.053478, 20.268383>,  <41.240524, 30.093184, 20.426765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997356, 30.053478, 20.268383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.949409, 29.678513, 20.399155>,  <41.920643, 29.453533, 20.477617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.949409, 29.678513, 20.399155>,  <41.997356, 30.053478, 20.268383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949409, 29.678513, 20.399155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478173, -0.343104, -0.808474,
		0.870047, 0.059418, 0.489374,
		-0.119869, -0.937416, 0.326929,
		41.913448, 29.397287, 20.497232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455975, 30.527668, 20.542267>,  <41.997356, 30.053478, 20.268383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455975, 30.527668, 20.542267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.533661, 30.873011, 20.355980>,  <42.580273, 31.080217, 20.244207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.533661, 30.873011, 20.355980>,  <42.455975, 30.527668, 20.542267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533661, 30.873011, 20.355980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585182, 0.483002, 0.651361,
		0.787299, 0.146023, 0.599030,
		0.194219, 0.863358, -0.465717,
		42.591927, 31.132017, 20.216265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576347, 30.982357, 21.021889>,  <42.455975, 30.527668, 20.542267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576347, 30.982357, 21.021889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.447109, 31.220572, 20.727694>,  <42.369564, 31.363501, 20.551176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.447109, 31.220572, 20.727694>,  <42.576347, 30.982357, 21.021889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447109, 31.220572, 20.727694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347099, 0.648441, 0.677530,
		0.880415, 0.474196, -0.002800,
		-0.323098, 0.595536, -0.735490,
		42.350182, 31.399233, 20.507046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770531, 31.635515, 21.253242>,  <42.576347, 30.982357, 21.021889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770531, 31.635515, 21.253242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.482674, 31.670664, 20.977739>,  <42.309959, 31.691753, 20.812437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.482674, 31.670664, 20.977739>,  <42.770531, 31.635515, 21.253242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482674, 31.670664, 20.977739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448927, 0.697853, 0.558091,
		0.529693, 0.710830, -0.462759,
		-0.719646, 0.087872, -0.688758,
		42.266781, 31.697025, 20.771112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821102, 32.270954, 21.049955>,  <42.770531, 31.635515, 21.253242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821102, 32.270954, 21.049955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.441490, 32.174683, 20.968557>,  <42.213722, 32.116920, 20.919718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.441490, 32.174683, 20.968557>,  <42.821102, 32.270954, 21.049955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441490, 32.174683, 20.968557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312101, 0.807657, 0.500283,
		0.043945, 0.538296, -0.841609,
		-0.949032, -0.240682, -0.203495,
		42.156780, 32.102478, 20.907509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494091, 32.904720, 20.941185>,  <42.821102, 32.270954, 21.049955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494091, 32.904720, 20.941185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.188328, 32.652752, 20.996143>,  <42.004871, 32.501572, 21.029119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.188328, 32.652752, 20.996143>,  <42.494091, 32.904720, 20.941185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188328, 32.652752, 20.996143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495123, 0.710039, 0.500697,
		-0.412958, 0.314708, -0.854649,
		-0.764408, -0.629923, 0.137397,
		41.959007, 32.463776, 21.037363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908691, 33.324371, 20.960249>,  <42.494091, 32.904720, 20.941185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908691, 33.324371, 20.960249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.812725, 32.985561, 21.149981>,  <41.755146, 32.782276, 21.263821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.812725, 32.985561, 21.149981>,  <41.908691, 33.324371, 20.960249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812725, 32.985561, 21.149981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621802, 0.509299, 0.594960,
		-0.745522, -0.152199, -0.648870,
		-0.239917, -0.847024, 0.474331,
		41.740749, 32.731453, 21.292280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186340, 33.375183, 21.142811>,  <41.908691, 33.324371, 20.960249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186340, 33.375183, 21.142811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.321991, 33.079323, 21.375330>,  <41.403381, 32.901806, 21.514841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.321991, 33.079323, 21.375330>,  <41.186340, 33.375183, 21.142811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321991, 33.079323, 21.375330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521871, 0.366203, 0.770419,
		-0.782714, -0.564635, -0.261812,
		0.339129, -0.739650, 0.581299,
		41.423729, 32.857430, 21.549719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<46.573132, 28.761118, 20.977354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.377037, 28.538221, 21.245428>,  <46.259380, 28.404484, 21.406273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.377037, 28.538221, 21.245428>,  <46.573132, 28.761118, 20.977354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.377037, 28.538221, 21.245428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046135, 0.784436, 0.618492,
		-0.870366, 0.272290, -0.410270,
		-0.490239, -0.557242, 0.670184,
		46.229965, 28.371048, 21.446484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.029610, 29.168043, 21.217138>,  <46.573132, 28.761118, 20.977354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.029610, 29.168043, 21.217138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.074207, 28.887304, 21.498558>,  <46.100964, 28.718861, 21.667410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.074207, 28.887304, 21.498558>,  <46.029610, 29.168043, 21.217138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.074207, 28.887304, 21.498558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119429, 0.693369, 0.710616,
		-0.986563, -0.163251, -0.006517,
		0.111490, -0.701846, 0.703550,
		46.107655, 28.676750, 21.709623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352123, 29.209023, 21.717190>,  <46.029610, 29.168043, 21.217138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352123, 29.209023, 21.717190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.638458, 29.020086, 21.922895>,  <45.810261, 28.906725, 22.046318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.638458, 29.020086, 21.922895>,  <45.352123, 29.209023, 21.717190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638458, 29.020086, 21.922895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264887, 0.497745, 0.825884,
		-0.646073, -0.727421, 0.231187,
		0.715838, -0.472343, 0.514264,
		45.853210, 28.878384, 22.077175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.989079, 28.800550, 22.262726>,  <45.352123, 29.209023, 21.717190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.989079, 28.800550, 22.262726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.369469, 28.871855, 22.363815>,  <45.597702, 28.914637, 22.424469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.369469, 28.871855, 22.363815>,  <44.989079, 28.800550, 22.262726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369469, 28.871855, 22.363815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304482, 0.396478, 0.866081,
		0.054186, -0.900572, 0.431318,
		0.950975, 0.178258, 0.252725,
		45.654762, 28.925333, 22.439632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945553, 28.711094, 22.959316>,  <44.989079, 28.800550, 22.262726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945553, 28.711094, 22.959316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.292767, 28.901958, 22.904417>,  <45.501095, 29.016478, 22.871477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.292767, 28.901958, 22.904417>,  <44.945553, 28.711094, 22.959316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292767, 28.901958, 22.904417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109920, 0.454252, 0.884066,
		0.484195, -0.752307, 0.446754,
		0.868028, 0.477168, -0.137253,
		45.553177, 29.045107, 22.863241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.327549, 28.535412, 23.579210>,  <44.945553, 28.711094, 22.959316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.327549, 28.535412, 23.579210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.478329, 28.870188, 23.420494>,  <45.568794, 29.071053, 23.325264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.478329, 28.870188, 23.420494>,  <45.327549, 28.535412, 23.579210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.478329, 28.870188, 23.420494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060761, 0.449811, 0.891055,
		0.924240, -0.311770, 0.220407,
		0.376945, 0.836940, -0.396790,
		45.591412, 29.121269, 23.301456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.891766, 28.737465, 23.999468>,  <45.327549, 28.535412, 23.579210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.891766, 28.737465, 23.999468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.781517, 29.074207, 23.813860>,  <45.715366, 29.276253, 23.702496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.781517, 29.074207, 23.813860>,  <45.891766, 28.737465, 23.999468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.781517, 29.074207, 23.813860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157839, 0.515801, 0.842043,
		0.948220, 0.158844, -0.275042,
		-0.275620, 0.841854, -0.464021,
		45.698830, 29.326763, 23.674654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.340477, 29.218884, 24.319599>,  <45.891766, 28.737465, 23.999468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.340477, 29.218884, 24.319599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.041813, 29.417635, 24.142685>,  <45.862614, 29.536886, 24.036535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.041813, 29.417635, 24.142685>,  <46.340477, 29.218884, 24.319599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.041813, 29.417635, 24.142685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141418, 0.531119, 0.835412,
		0.650004, 0.686313, -0.326296,
		-0.746656, 0.496877, -0.442287,
		45.817818, 29.566698, 24.009998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.426720, 29.849096, 24.484947>,  <46.340477, 29.218884, 24.319599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.426720, 29.849096, 24.484947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.046173, 29.881805, 24.366142>,  <45.817844, 29.901430, 24.294859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.046173, 29.881805, 24.366142>,  <46.426720, 29.849096, 24.484947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.046173, 29.881805, 24.366142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207410, 0.542849, 0.813815,
		0.227780, 0.835840, -0.499488,
		-0.951366, 0.081772, -0.297012,
		45.760765, 29.906338, 24.277039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.265480, 30.531271, 24.694960>,  <46.426720, 29.849096, 24.484947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.265480, 30.531271, 24.694960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.913483, 30.360907, 24.610853>,  <45.702286, 30.258688, 24.560390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.913483, 30.360907, 24.610853>,  <46.265480, 30.531271, 24.694960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.913483, 30.360907, 24.610853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465141, 0.683054, 0.563100,
		-0.096210, 0.593326, -0.799192,
		-0.879993, -0.425913, -0.210264,
		45.649487, 30.233133, 24.547773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.808552, 31.078234, 24.493050>,  <46.265480, 30.531271, 24.694960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.808552, 31.078234, 24.493050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.561588, 30.785921, 24.609509>,  <45.413410, 30.610535, 24.679384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.561588, 30.785921, 24.609509>,  <45.808552, 31.078234, 24.493050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.561588, 30.785921, 24.609509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516900, 0.655881, 0.550122,
		-0.592977, 0.189155, -0.782687,
		-0.617408, -0.730780, 0.291148,
		45.376366, 30.566687, 24.696854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.094109, 31.337837, 24.485132>,  <45.808552, 31.078234, 24.493050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.094109, 31.337837, 24.485132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.068451, 31.019394, 24.725830>,  <45.053055, 30.828327, 24.870249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.068451, 31.019394, 24.725830>,  <45.094109, 31.337837, 24.485132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068451, 31.019394, 24.725830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266903, 0.594707, 0.758344,
		-0.961586, -0.111962, -0.250632,
		-0.064147, -0.796108, 0.601746,
		45.049206, 30.780561, 24.906353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838745, 31.554470, 23.920738>,  <45.094109, 31.337837, 24.485132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838745, 31.554470, 23.920738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.959114, 31.929916, 23.853273>,  <45.031334, 32.155186, 23.812794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.959114, 31.929916, 23.853273>,  <44.838745, 31.554470, 23.920738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959114, 31.929916, 23.853273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451395, -0.295983, -0.841806,
		-0.840054, 0.177181, -0.512753,
		0.300918, 0.938617, -0.168663,
		45.049389, 32.211502, 23.802675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587570, 31.721424, 23.168205>,  <44.838745, 31.554470, 23.920738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587570, 31.721424, 23.168205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.866756, 31.989784, 23.268389>,  <45.034267, 32.150799, 23.328499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.866756, 31.989784, 23.268389>,  <44.587570, 31.721424, 23.168205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866756, 31.989784, 23.268389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465054, -0.158682, -0.870945,
		-0.544576, 0.724370, -0.422760,
		0.697970, 0.670902, 0.250457,
		45.076149, 32.191055, 23.343525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626720, 32.236866, 22.605391>,  <44.587570, 31.721424, 23.168205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626720, 32.236866, 22.605391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.968899, 32.227596, 22.812338>,  <45.174206, 32.222034, 22.936506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.968899, 32.227596, 22.812338>,  <44.626720, 32.236866, 22.605391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968899, 32.227596, 22.812338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509700, -0.139268, -0.849006,
		0.091724, 0.989984, -0.107327,
		0.855449, -0.023170, 0.517369,
		45.225533, 32.220646, 22.967548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119991, 32.678032, 22.159317>,  <44.626720, 32.236866, 22.605391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119991, 32.678032, 22.159317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.351097, 32.449940, 22.392908>,  <45.489761, 32.313084, 22.533062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.351097, 32.449940, 22.392908>,  <45.119991, 32.678032, 22.159317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.351097, 32.449940, 22.392908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617562, -0.162405, -0.769572,
		0.533672, 0.805273, 0.258319,
		0.577763, -0.570228, 0.583978,
		45.524426, 32.278870, 22.568102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.752148, 32.876785, 21.932165>,  <45.119991, 32.678032, 22.159317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.752148, 32.876785, 21.932165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.817570, 32.533859, 22.127411>,  <45.856823, 32.328102, 22.244558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.817570, 32.533859, 22.127411>,  <45.752148, 32.876785, 21.932165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.817570, 32.533859, 22.127411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570909, -0.321256, -0.755551,
		0.804557, 0.402244, 0.436907,
		0.163557, -0.857318, 0.488114,
		45.866638, 32.276665, 22.273846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.488884, 32.717594, 21.876146>,  <45.752148, 32.876785, 21.932165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.488884, 32.717594, 21.876146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.331478, 32.362377, 21.971247>,  <46.237034, 32.149246, 22.028307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.331478, 32.362377, 21.971247>,  <46.488884, 32.717594, 21.876146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331478, 32.362377, 21.971247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429358, -0.406217, -0.806622,
		0.812893, -0.215340, 0.541142,
		-0.393519, -0.888041, 0.237753,
		46.213421, 32.095966, 22.042572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.994625, 32.219608, 21.800491>,  <46.488884, 32.717594, 21.876146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.994625, 32.219608, 21.800491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.660339, 32.002792, 21.765249>,  <46.459766, 31.872702, 21.744104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.660339, 32.002792, 21.765249>,  <46.994625, 32.219608, 21.800491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.660339, 32.002792, 21.765249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426157, -0.538946, -0.726586,
		0.346359, -0.644768, 0.681403,
		-0.835719, -0.542044, -0.088104,
		46.409622, 31.840179, 21.738817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.156548, 31.606615, 21.641916>,  <46.994625, 32.219608, 21.800491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.156548, 31.606615, 21.641916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.783730, 31.608160, 21.496990>,  <46.560040, 31.609087, 21.410034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.783730, 31.608160, 21.496990>,  <47.156548, 31.606615, 21.641916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.783730, 31.608160, 21.496990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310807, -0.505462, -0.804927,
		-0.186245, -0.862840, 0.469914,
		-0.932047, 0.003860, -0.362317,
		46.504116, 31.609318, 21.388294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.060703, 30.892513, 21.275709>,  <47.156548, 31.606615, 21.641916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.060703, 30.892513, 21.275709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.757801, 31.106224, 21.125450>,  <46.576061, 31.234451, 21.035295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.757801, 31.106224, 21.125450>,  <47.060703, 30.892513, 21.275709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.757801, 31.106224, 21.125450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109841, -0.462786, -0.879639,
		-0.643818, -0.707371, 0.291761,
		-0.757254, 0.534280, -0.375648,
		46.530624, 31.266508, 21.012756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.737679, 30.464249, 20.922140>,  <47.060703, 30.892513, 21.275709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.737679, 30.464249, 20.922140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.590401, 30.799982, 20.762161>,  <46.502033, 31.001421, 20.666174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.590401, 30.799982, 20.762161>,  <46.737679, 30.464249, 20.922140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.590401, 30.799982, 20.762161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018868, -0.436823, -0.899349,
		-0.929559, -0.323587, 0.176671,
		-0.368191, 0.839331, -0.399947,
		46.479942, 31.051781, 20.642178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.492691, 30.208033, 20.418272>,  <46.737679, 30.464249, 20.922140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.492691, 30.208033, 20.418272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.466427, 30.595421, 20.322145>,  <46.450668, 30.827854, 20.264469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.466427, 30.595421, 20.322145>,  <46.492691, 30.208033, 20.418272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.466427, 30.595421, 20.322145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052575, -0.237145, -0.970051,
		-0.996456, -0.076325, -0.035348,
		-0.065657, 0.968471, -0.240317,
		46.446732, 30.885962, 20.250050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.912384, 30.320923, 19.952408>,  <46.492691, 30.208033, 20.418272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.912384, 30.320923, 19.952408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.164921, 30.620392, 19.871517>,  <46.316444, 30.800074, 19.822983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.164921, 30.620392, 19.871517>,  <45.912384, 30.320923, 19.952408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.164921, 30.620392, 19.871517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207499, -0.414344, -0.886151,
		-0.747227, 0.517505, -0.416942,
		0.631345, 0.748671, -0.202227,
		46.354324, 30.844994, 19.810848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.827175, 30.458055, 19.161530>,  <45.912384, 30.320923, 19.952408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.827175, 30.458055, 19.161530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.187019, 30.609304, 19.248920>,  <46.402924, 30.700054, 19.301355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.187019, 30.609304, 19.248920>,  <45.827175, 30.458055, 19.161530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.187019, 30.609304, 19.248920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386433, -0.456243, -0.801568,
		-0.203411, 0.805523, -0.556558,
		0.899607, 0.378120, 0.218476,
		46.456902, 30.722740, 19.314463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.793598, 31.334551, 19.184277>,  <45.827175, 30.458055, 19.161530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.793598, 31.334551, 19.184277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.620567, 31.188120, 18.854704>,  <45.516747, 31.100262, 18.656961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.620567, 31.188120, 18.854704>,  <45.793598, 31.334551, 19.184277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.620567, 31.188120, 18.854704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901446, 0.158960, 0.402650,
		-0.016430, 0.916907, -0.398763,
		-0.432580, -0.366079, -0.823930,
		45.490795, 31.078297, 18.607525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299160, 31.780005, 19.114710>,  <45.793598, 31.334551, 19.184277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299160, 31.780005, 19.114710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.194584, 31.452028, 18.911007>,  <45.131836, 31.255243, 18.788784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.194584, 31.452028, 18.911007>,  <45.299160, 31.780005, 19.114710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194584, 31.452028, 18.911007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943463, 0.105699, 0.314175,
		-0.203776, 0.562607, -0.801217,
		-0.261445, -0.819940, -0.509259,
		45.116150, 31.206047, 18.758228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.720768, 31.972960, 18.775675>,  <45.299160, 31.780005, 19.114710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.720768, 31.972960, 18.775675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.707973, 31.574287, 18.745733>,  <44.700298, 31.335083, 18.727768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.707973, 31.574287, 18.745733>,  <44.720768, 31.972960, 18.775675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707973, 31.574287, 18.745733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930146, 0.002272, 0.367183,
		-0.365795, 0.081367, -0.927132,
		-0.031984, -0.996681, -0.074852,
		44.698380, 31.275284, 18.723278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048565, 31.889427, 18.596104>,  <44.720768, 31.972960, 18.775675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048565, 31.889427, 18.596104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.172375, 31.540487, 18.747473>,  <44.246662, 31.331123, 18.838293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.172375, 31.540487, 18.747473>,  <44.048565, 31.889427, 18.596104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172375, 31.540487, 18.747473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916678, -0.167949, 0.362623,
		-0.252778, -0.459131, -0.851647,
		0.309524, -0.872349, 0.378421,
		44.265232, 31.278782, 18.861000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496922, 31.409870, 18.437630>,  <44.048565, 31.889427, 18.596104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496922, 31.409870, 18.437630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.697788, 31.260763, 18.749750>,  <43.818310, 31.171299, 18.937021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.697788, 31.260763, 18.749750>,  <43.496922, 31.409870, 18.437630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.697788, 31.260763, 18.749750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864728, -0.225162, 0.448940,
		0.008344, -0.900192, -0.435413,
		0.502171, -0.372769, 0.780300,
		43.848438, 31.148933, 18.983841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987381, 30.940695, 18.695950>,  <43.496922, 31.409870, 18.437630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987381, 30.940695, 18.695950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.253159, 31.006559, 18.987539>,  <43.412624, 31.046078, 19.162493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.253159, 31.006559, 18.987539>,  <42.987381, 30.940695, 18.695950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253159, 31.006559, 18.987539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717893, -0.130477, 0.683817,
		0.207713, -0.977682, 0.031514,
		0.664444, 0.164661, 0.728973,
		43.452492, 31.055958, 19.206230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681595, 30.462622, 19.193764>,  <42.987381, 30.940695, 18.695950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681595, 30.462622, 19.193764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.936165, 30.717497, 19.367641>,  <43.088905, 30.870422, 19.471968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.936165, 30.717497, 19.367641>,  <42.681595, 30.462622, 19.193764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936165, 30.717497, 19.367641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674526, 0.186397, 0.714332,
		0.374139, -0.747828, 0.548428,
		0.636423, 0.637189, 0.434691,
		43.127090, 30.908653, 19.498049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645981, 30.318287, 19.845011>,  <42.681595, 30.462622, 19.193764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645981, 30.318287, 19.845011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.773064, 30.697454, 19.854086>,  <42.849312, 30.924955, 19.859531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.773064, 30.697454, 19.854086>,  <42.645981, 30.318287, 19.845011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773064, 30.697454, 19.854086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658916, 0.203511, 0.724164,
		0.681831, -0.245019, 0.689255,
		0.317704, 0.947918, 0.022687,
		42.868374, 30.981831, 19.860891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692291, 29.719297, 20.145578>,  <42.645981, 30.318287, 19.845011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692291, 29.719297, 20.145578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.430862, 29.420137, 20.192032>,  <42.274006, 29.240641, 20.219904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.430862, 29.420137, 20.192032>,  <42.692291, 29.719297, 20.145578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430862, 29.420137, 20.192032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535536, -0.565400, -0.627315,
		0.534833, -0.347800, 0.770058,
		-0.653571, -0.747902, 0.116135,
		42.234791, 29.195766, 20.226871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083344, 29.073570, 20.155844>,  <42.692291, 29.719297, 20.145578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083344, 29.073570, 20.155844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.724041, 28.920063, 20.070185>,  <42.508461, 28.827959, 20.018789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.724041, 28.920063, 20.070185>,  <43.083344, 29.073570, 20.155844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724041, 28.920063, 20.070185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406475, -0.540250, -0.736823,
		0.167076, -0.748901, 0.641275,
		-0.898256, -0.383767, -0.214147,
		42.454563, 28.804934, 20.005941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109653, 28.351538, 20.058744>,  <43.083344, 29.073570, 20.155844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109653, 28.351538, 20.058744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.776424, 28.452150, 19.861677>,  <42.576488, 28.512518, 19.743437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.776424, 28.452150, 19.861677>,  <43.109653, 28.351538, 20.058744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776424, 28.452150, 19.861677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266683, -0.597673, -0.756087,
		-0.484635, -0.761261, 0.430826,
		-0.833072, 0.251532, -0.492669,
		42.526505, 28.527611, 19.713877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909721, 27.764721, 19.807428>,  <43.109653, 28.351538, 20.058744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909721, 27.764721, 19.807428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.732635, 28.043810, 19.582151>,  <42.626385, 28.211264, 19.446985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.732635, 28.043810, 19.582151>,  <42.909721, 27.764721, 19.807428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732635, 28.043810, 19.582151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247531, -0.508593, -0.824658,
		-0.861820, -0.504494, 0.052452,
		-0.442712, 0.697724, -0.563194,
		42.599823, 28.253126, 19.413193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525940, 27.348879, 19.257023>,  <42.909721, 27.764721, 19.807428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525940, 27.348879, 19.257023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.540768, 27.722408, 19.114698>,  <42.549664, 27.946526, 19.029305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.540768, 27.722408, 19.114698>,  <42.525940, 27.348879, 19.257023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540768, 27.722408, 19.114698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106929, -0.357717, -0.927688,
		-0.993576, -0.003659, -0.113112,
		0.037068, 0.933823, -0.355810,
		42.551888, 28.002556, 19.007956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044933, 27.359013, 18.610025>,  <42.525940, 27.348879, 19.257023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044933, 27.359013, 18.610025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.317795, 27.651449, 18.604790>,  <42.481514, 27.826910, 18.601648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.317795, 27.651449, 18.604790>,  <42.044933, 27.359013, 18.610025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317795, 27.651449, 18.604790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255446, -0.255043, -0.932577,
		-0.685135, 0.632820, -0.360734,
		0.682156, 0.731090, -0.013088,
		42.522442, 27.870775, 18.600863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003216, 27.613390, 17.915831>,  <42.044933, 27.359013, 18.610025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003216, 27.613390, 17.915831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.338402, 27.762947, 18.074835>,  <42.539513, 27.852682, 18.170238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.338402, 27.762947, 18.074835>,  <42.003216, 27.613390, 17.915831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338402, 27.762947, 18.074835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474350, -0.138884, -0.869312,
		-0.269823, 0.917014, -0.293737,
		0.837966, 0.373894, 0.397512,
		42.589790, 27.875114, 18.194088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238781, 28.133604, 17.396917>,  <42.003216, 27.613390, 17.915831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238781, 28.133604, 17.396917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.558037, 28.038654, 17.618412>,  <42.749592, 27.981686, 17.751308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.558037, 28.038654, 17.618412>,  <42.238781, 28.133604, 17.396917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558037, 28.038654, 17.618412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569432, -0.002955, -0.822033,
		0.196765, 0.971414, 0.132810,
		0.798142, -0.237373, 0.553736,
		42.797478, 27.967442, 17.784533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868179, 28.588743, 17.300011>,  <42.238781, 28.133604, 17.396917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868179, 28.588743, 17.300011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.990276, 28.223530, 17.408232>,  <43.063534, 28.004402, 17.473164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.990276, 28.223530, 17.408232>,  <42.868179, 28.588743, 17.300011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990276, 28.223530, 17.408232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412497, -0.129301, -0.901736,
		0.858297, 0.386850, 0.337155,
		0.305242, -0.913032, 0.270553,
		43.081848, 27.949619, 17.489397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.566666, 35.318142, 30.118601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.713631, 35.018627, 30.339266>,  <35.801807, 34.838921, 30.471664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.713631, 35.018627, 30.339266>,  <35.566666, 35.318142, 30.118601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713631, 35.018627, 30.339266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579288, -0.279805, -0.765594,
		0.727624, 0.600857, 0.330959,
		0.367409, -0.748785, 0.551662,
		35.823853, 34.793991, 30.504765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374252, 35.282635, 30.026255>,  <35.566666, 35.318142, 30.118601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374252, 35.282635, 30.026255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.241467, 34.921352, 30.135073>,  <36.161793, 34.704582, 30.200363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.241467, 34.921352, 30.135073>,  <36.374252, 35.282635, 30.026255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241467, 34.921352, 30.135073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587432, -0.423599, -0.689555,
		0.738052, -0.069101, 0.671196,
		-0.331967, -0.903210, 0.272046,
		36.141876, 34.650391, 30.216686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937977, 34.828861, 30.084702>,  <36.374252, 35.282635, 30.026255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937977, 34.828861, 30.084702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.629372, 34.584614, 30.013252>,  <36.444206, 34.438065, 29.970383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.629372, 34.584614, 30.013252>,  <36.937977, 34.828861, 30.084702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629372, 34.584614, 30.013252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421464, -0.280225, -0.862463,
		0.476584, -0.740686, 0.473553,
		-0.771515, -0.610622, -0.178621,
		36.397919, 34.401428, 29.959665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307064, 34.377834, 29.779245>,  <36.937977, 34.828861, 30.084702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307064, 34.377834, 29.779245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935211, 34.253391, 29.700258>,  <36.712101, 34.178726, 29.652866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935211, 34.253391, 29.700258>,  <37.307064, 34.377834, 29.779245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935211, 34.253391, 29.700258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337690, -0.504811, -0.794438,
		0.147474, -0.805218, 0.574348,
		-0.929633, -0.311110, -0.197467,
		36.656322, 34.160057, 29.641018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311180, 33.596069, 29.652155>,  <37.307064, 34.377834, 29.779245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311180, 33.596069, 29.652155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.976055, 33.743908, 29.491421>,  <36.774982, 33.832611, 29.394979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.976055, 33.743908, 29.491421>,  <37.311180, 33.596069, 29.652155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976055, 33.743908, 29.491421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193081, -0.487868, -0.851296,
		-0.510683, -0.790809, 0.337377,
		-0.837808, 0.369602, -0.401836,
		36.724712, 33.854786, 29.370871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034935, 33.135170, 29.395216>,  <37.311180, 33.596069, 29.652155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034935, 33.135170, 29.395216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.874935, 33.436066, 29.185783>,  <36.778934, 33.616604, 29.060123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.874935, 33.436066, 29.185783>,  <37.034935, 33.135170, 29.395216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874935, 33.436066, 29.185783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332018, -0.413537, -0.847792,
		-0.854261, -0.512957, -0.084341,
		-0.400002, 0.752239, -0.523579,
		36.754936, 33.661736, 29.028709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694469, 32.764709, 28.841797>,  <37.034935, 33.135170, 29.395216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694469, 32.764709, 28.841797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727760, 33.148441, 28.733906>,  <36.747734, 33.378681, 28.669170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727760, 33.148441, 28.733906>,  <36.694469, 32.764709, 28.841797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727760, 33.148441, 28.733906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124119, -0.278540, -0.952371,
		-0.988771, 0.045785, -0.142254,
		0.083228, 0.959333, -0.269730,
		36.752728, 33.436241, 28.652987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430954, 32.673500, 28.192722>,  <36.694469, 32.764709, 28.841797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430954, 32.673500, 28.192722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.604416, 33.033512, 28.175329>,  <36.708492, 33.249519, 28.164894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.604416, 33.033512, 28.175329>,  <36.430954, 32.673500, 28.192722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604416, 33.033512, 28.175329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172875, -0.130460, -0.976266,
		-0.884341, 0.415844, -0.212167,
		0.433654, 0.900030, -0.043482,
		36.734512, 33.303520, 28.162285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193584, 32.860752, 27.517639>,  <36.430954, 32.673500, 28.192722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193584, 32.860752, 27.517639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.510979, 33.077698, 27.628077>,  <36.701416, 33.207867, 27.694338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.510979, 33.077698, 27.628077>,  <36.193584, 32.860752, 27.517639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510979, 33.077698, 27.628077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376438, -0.080927, -0.922900,
		-0.478203, 0.836238, -0.268380,
		0.793483, 0.542363, 0.276092,
		36.749023, 33.240406, 27.710905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394352, 33.419426, 26.930700>,  <36.193584, 32.860752, 27.517639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394352, 33.419426, 26.930700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.714939, 33.305237, 27.140903>,  <36.907291, 33.236725, 27.267025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.714939, 33.305237, 27.140903>,  <36.394352, 33.419426, 26.930700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714939, 33.305237, 27.140903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530377, -0.066715, -0.845133,
		0.276319, 0.956063, 0.097937,
		0.801467, -0.285470, 0.525508,
		36.955379, 33.219597, 27.298555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882710, 33.653194, 26.487486>,  <36.394352, 33.419426, 26.930700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882710, 33.653194, 26.487486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.095787, 33.426987, 26.739336>,  <37.223633, 33.291264, 26.890446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.095787, 33.426987, 26.739336>,  <36.882710, 33.653194, 26.487486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095787, 33.426987, 26.739336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735544, -0.058598, -0.674938,
		0.418582, 0.822653, 0.384747,
		0.532695, -0.565515, 0.629626,
		37.255596, 33.257332, 26.928225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697472, 33.892521, 26.527946>,  <36.882710, 33.653194, 26.487486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697472, 33.892521, 26.527946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.690224, 33.512531, 26.652670>,  <37.685875, 33.284538, 26.727503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.690224, 33.512531, 26.652670>,  <37.697472, 33.892521, 26.527946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690224, 33.512531, 26.652670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782637, -0.207553, -0.586856,
		0.622214, 0.233397, 0.747246,
		-0.018123, -0.949972, 0.311807,
		37.684788, 33.227539, 26.746212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303127, 34.422890, 26.762262>,  <37.697472, 33.892521, 26.527946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303127, 34.422890, 26.762262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.343483, 34.733402, 26.513359>,  <38.367699, 34.919708, 26.364017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.343483, 34.733402, 26.513359>,  <38.303127, 34.422890, 26.762262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343483, 34.733402, 26.513359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533795, 0.570043, 0.624592,
		0.839574, 0.269143, 0.471887,
		0.100892, 0.776282, -0.622260,
		38.373749, 34.966286, 26.326681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665802, 34.977482, 27.075602>,  <38.303127, 34.422890, 26.762262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665802, 34.977482, 27.075602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.419121, 35.146210, 26.809748>,  <38.271111, 35.247448, 26.650236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.419121, 35.146210, 26.809748>,  <38.665802, 34.977482, 27.075602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419121, 35.146210, 26.809748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389523, 0.570175, 0.723306,
		0.684066, 0.704957, -0.187320,
		-0.616705, 0.421824, -0.664635,
		38.234108, 35.272758, 26.610357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657707, 35.708160, 27.225374>,  <38.665802, 34.977482, 27.075602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657707, 35.708160, 27.225374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.334595, 35.642002, 26.999052>,  <38.140728, 35.602306, 26.863258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.334595, 35.642002, 26.999052>,  <38.657707, 35.708160, 27.225374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334595, 35.642002, 26.999052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527834, 0.630283, 0.569327,
		0.262457, 0.758544, -0.596430,
		-0.807779, -0.165392, -0.565807,
		38.092262, 35.592384, 26.829309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348255, 36.395142, 27.174892>,  <38.657707, 35.708160, 27.225374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348255, 36.395142, 27.174892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.057617, 36.130283, 27.101547>,  <37.883236, 35.971367, 27.057541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.057617, 36.130283, 27.101547>,  <38.348255, 36.395142, 27.174892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057617, 36.130283, 27.101547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649487, 0.574885, 0.497668,
		-0.224118, 0.480693, -0.847765,
		-0.726593, -0.662149, -0.183362,
		37.839638, 35.931637, 27.046539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855835, 36.834793, 26.981134>,  <38.348255, 36.395142, 27.174892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855835, 36.834793, 26.981134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.659569, 36.495773, 27.062042>,  <37.541809, 36.292362, 27.110588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.659569, 36.495773, 27.062042>,  <37.855835, 36.834793, 26.981134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659569, 36.495773, 27.062042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748208, 0.528789, 0.400708,
		-0.446577, 0.045274, -0.893599,
		-0.490667, -0.847545, 0.202271,
		37.512367, 36.241508, 27.122723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063835, 37.053288, 27.156155>,  <37.855835, 36.834793, 26.981134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063835, 37.053288, 27.156155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.119690, 36.683754, 27.298719>,  <37.153202, 36.462032, 27.384258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.119690, 36.683754, 27.298719>,  <37.063835, 37.053288, 27.156155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119690, 36.683754, 27.298719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570151, 0.219274, 0.791736,
		-0.809586, -0.313765, -0.496107,
		0.139636, -0.923835, 0.356414,
		37.161579, 36.406605, 27.405643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328140, 36.777184, 27.327997>,  <37.063835, 37.053288, 27.156155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328140, 36.777184, 27.327997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.606705, 36.579445, 27.536087>,  <36.773846, 36.460804, 27.660940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.606705, 36.579445, 27.536087>,  <36.328140, 36.777184, 27.327997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606705, 36.579445, 27.536087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473811, 0.227722, 0.850674,
		-0.538991, -0.838908, -0.075636,
		0.696413, -0.494343, 0.520224,
		36.815628, 36.431141, 27.692154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017925, 36.401958, 27.862085>,  <36.328140, 36.777184, 27.327997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017925, 36.401958, 27.862085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.390888, 36.410534, 28.006390>,  <36.614666, 36.415680, 28.092972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.390888, 36.410534, 28.006390>,  <36.017925, 36.401958, 27.862085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390888, 36.410534, 28.006390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346200, 0.339438, 0.874601,
		-0.103705, -0.940384, 0.323918,
		0.932411, 0.021440, 0.360762,
		36.670612, 36.416965, 28.114618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983643, 36.155525, 28.583719>,  <36.017925, 36.401958, 27.862085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983643, 36.155525, 28.583719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.341179, 36.332539, 28.554817>,  <36.555698, 36.438747, 28.537476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.341179, 36.332539, 28.554817>,  <35.983643, 36.155525, 28.583719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341179, 36.332539, 28.554817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102954, 0.359389, 0.927491,
		0.436413, -0.821587, 0.366795,
		0.893837, 0.442532, -0.072256,
		36.609329, 36.465298, 28.533140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345215, 35.957531, 29.156288>,  <35.983643, 36.155525, 28.583719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345215, 35.957531, 29.156288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520153, 36.300804, 29.048771>,  <36.625114, 36.506767, 28.984261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520153, 36.300804, 29.048771>,  <36.345215, 35.957531, 29.156288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520153, 36.300804, 29.048771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213076, 0.389269, 0.896141,
		0.873687, -0.334649, 0.353103,
		0.437344, 0.858184, -0.268793,
		36.651356, 36.558258, 28.968132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589649, 36.206715, 29.754459>,  <36.345215, 35.957531, 29.156288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589649, 36.206715, 29.754459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.649220, 36.541004, 29.543034>,  <36.684963, 36.741577, 29.416178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.649220, 36.541004, 29.543034>,  <36.589649, 36.206715, 29.754459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649220, 36.541004, 29.543034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075110, 0.542541, 0.836665,
		0.985992, -0.084901, 0.143570,
		0.148927, 0.835728, -0.528564,
		36.693897, 36.791721, 29.384464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169994, 36.547817, 30.024130>,  <36.589649, 36.206715, 29.754459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169994, 36.547817, 30.024130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.929459, 36.810436, 29.841991>,  <36.785137, 36.968006, 29.732708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.929459, 36.810436, 29.841991>,  <37.169994, 36.547817, 30.024130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929459, 36.810436, 29.841991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022481, 0.555770, 0.831032,
		0.798676, 0.509970, -0.319448,
		-0.601341, 0.656544, -0.455345,
		36.749058, 37.007401, 29.705387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398716, 37.103035, 30.255447>,  <37.169994, 36.547817, 30.024130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398716, 37.103035, 30.255447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041401, 37.199554, 30.103760>,  <36.827011, 37.257465, 30.012747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041401, 37.199554, 30.103760>,  <37.398716, 37.103035, 30.255447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041401, 37.199554, 30.103760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115989, 0.691355, 0.713144,
		0.434257, 0.681030, -0.589592,
		-0.893290, 0.241302, -0.379218,
		36.773415, 37.271946, 29.989994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385803, 37.823193, 30.293867>,  <37.398716, 37.103035, 30.255447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385803, 37.823193, 30.293867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001450, 37.716827, 30.262878>,  <36.770840, 37.653008, 30.244286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001450, 37.716827, 30.262878>,  <37.385803, 37.823193, 30.293867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001450, 37.716827, 30.262878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215557, 0.542347, 0.812031,
		-0.173911, 0.796964, -0.578449,
		-0.960880, -0.265910, -0.077471,
		36.713184, 37.637054, 30.239637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078346, 37.876545, 30.616653>,  <37.385803, 37.823193, 30.293867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078346, 37.876545, 30.616653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448853, 38.027153, 30.610176>,  <38.671158, 38.117519, 30.606289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448853, 38.027153, 30.610176>,  <38.078346, 37.876545, 30.616653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448853, 38.027153, 30.610176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301805, -0.766819, -0.566482,
		-0.225712, 0.519826, -0.823915,
		0.926266, 0.376523, -0.016194,
		38.726730, 38.140110, 30.605318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326508, 37.851234, 29.950142>,  <38.078346, 37.876545, 30.616653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326508, 37.851234, 29.950142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.600552, 37.790012, 30.235014>,  <38.764977, 37.753281, 30.405937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.600552, 37.790012, 30.235014>,  <38.326508, 37.851234, 29.950142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600552, 37.790012, 30.235014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382190, -0.756778, -0.530300,
		0.620128, 0.635501, -0.459978,
		0.685107, -0.153055, 0.712182,
		38.806084, 37.744095, 30.448668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034081, 37.840343, 29.676949>,  <38.326508, 37.851234, 29.950142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034081, 37.840343, 29.676949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.010551, 37.619957, 30.009930>,  <38.996433, 37.487724, 30.209719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.010551, 37.619957, 30.009930>,  <39.034081, 37.840343, 29.676949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010551, 37.619957, 30.009930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196735, -0.823942, -0.531427,
		0.978691, 0.132515, 0.156857,
		-0.058819, -0.550962, 0.832455,
		38.992905, 37.454670, 30.259666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665565, 37.590427, 29.838755>,  <39.034081, 37.840343, 29.676949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665565, 37.590427, 29.838755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.416714, 37.322548, 30.000967>,  <39.267403, 37.161819, 30.098295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.416714, 37.322548, 30.000967>,  <39.665565, 37.590427, 29.838755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416714, 37.322548, 30.000967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461761, -0.732163, -0.500714,
		0.632243, -0.124250, 0.764742,
		-0.622129, -0.669701, 0.405531,
		39.230076, 37.121639, 30.122627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105953, 37.032581, 30.077520>,  <39.665565, 37.590427, 29.838755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105953, 37.032581, 30.077520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.742588, 36.867065, 30.053661>,  <39.524567, 36.767757, 30.039347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.742588, 36.867065, 30.053661>,  <40.105953, 37.032581, 30.077520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742588, 36.867065, 30.053661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328812, -0.619049, -0.713205,
		0.258193, -0.667499, 0.698413,
		-0.908416, -0.413791, -0.059648,
		39.470062, 36.742928, 30.035767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181992, 36.327232, 30.047409>,  <40.105953, 37.032581, 30.077520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181992, 36.327232, 30.047409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.813053, 36.360973, 29.896587>,  <39.591690, 36.381218, 29.806095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.813053, 36.360973, 29.896587>,  <40.181992, 36.327232, 30.047409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813053, 36.360973, 29.896587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244960, -0.627017, -0.739489,
		-0.298794, -0.774425, 0.557662,
		-0.922343, 0.084350, -0.377052,
		39.536350, 36.386280, 29.783472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909821, 35.645058, 29.979187>,  <40.181992, 36.327232, 30.047409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909821, 35.645058, 29.979187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.730473, 35.895981, 29.724489>,  <39.622864, 36.046535, 29.571671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.730473, 35.895981, 29.724489>,  <39.909821, 35.645058, 29.979187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730473, 35.895981, 29.724489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287748, -0.573145, -0.767272,
		-0.846266, -0.527244, 0.076474,
		-0.448370, 0.627311, -0.636746,
		39.595963, 36.084175, 29.533466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445766, 35.284153, 29.501997>,  <39.909821, 35.645058, 29.979187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445766, 35.284153, 29.501997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.495842, 35.621109, 29.292347>,  <39.525887, 35.823284, 29.166557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.495842, 35.621109, 29.292347>,  <39.445766, 35.284153, 29.501997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495842, 35.621109, 29.292347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434832, -0.521426, -0.734190,
		-0.891766, -0.135990, -0.431578,
		0.125194, 0.842390, -0.524123,
		39.533401, 35.873825, 29.135111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312279, 34.977516, 28.881382>,  <39.445766, 35.284153, 29.501997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312279, 34.977516, 28.881382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.467911, 35.333691, 28.786943>,  <39.561291, 35.547394, 28.730280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.467911, 35.333691, 28.786943>,  <39.312279, 34.977516, 28.881382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467911, 35.333691, 28.786943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606388, -0.440495, -0.662010,
		-0.693476, 0.114411, -0.711338,
		0.389082, 0.890435, -0.236095,
		39.584637, 35.600822, 28.716114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215939, 34.944691, 28.118757>,  <39.312279, 34.977516, 28.881382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215939, 34.944691, 28.118757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.496201, 35.210812, 28.221874>,  <39.664356, 35.370483, 28.283745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.496201, 35.210812, 28.221874>,  <39.215939, 34.944691, 28.118757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496201, 35.210812, 28.221874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563646, -0.294577, -0.771704,
		-0.437474, 0.686003, -0.581391,
		0.700656, 0.665300, 0.257793,
		39.706398, 35.410400, 28.299212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378841, 35.312630, 27.500435>,  <39.215939, 34.944691, 28.118757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378841, 35.312630, 27.500435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.690845, 35.325817, 27.750393>,  <39.878048, 35.333729, 27.900368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.690845, 35.325817, 27.750393>,  <39.378841, 35.312630, 27.500435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690845, 35.325817, 27.750393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617981, -0.197579, -0.760961,
		0.098376, 0.979732, -0.174490,
		0.780014, 0.032971, 0.624893,
		39.924850, 35.335709, 27.937860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982277, 35.545582, 27.050245>,  <39.378841, 35.312630, 27.500435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982277, 35.545582, 27.050245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.148567, 35.389397, 27.378809>,  <40.248341, 35.295685, 27.575947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.148567, 35.389397, 27.378809>,  <39.982277, 35.545582, 27.050245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148567, 35.389397, 27.378809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851147, -0.151239, -0.502668,
		0.320502, 0.908111, 0.269468,
		0.415724, -0.390463, 0.821408,
		40.273285, 35.272259, 27.625231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621265, 35.885674, 26.993242>,  <39.982277, 35.545582, 27.050245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621265, 35.885674, 26.993242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.612923, 35.558182, 27.222763>,  <40.607918, 35.361687, 27.360476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.612923, 35.558182, 27.222763>,  <40.621265, 35.885674, 26.993242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612923, 35.558182, 27.222763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904238, -0.260290, -0.338531,
		0.426520, 0.511792, 0.745755,
		-0.020855, -0.818729, 0.573801,
		40.606667, 35.312561, 27.394903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337643, 35.806656, 27.240311>,  <40.621265, 35.885674, 26.993242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337643, 35.806656, 27.240311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.162418, 35.448257, 27.269405>,  <41.057285, 35.233219, 27.286863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.162418, 35.448257, 27.269405>,  <41.337643, 35.806656, 27.240311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162418, 35.448257, 27.269405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803174, -0.426451, -0.415995,
		0.403749, -0.123810, 0.906453,
		-0.438062, -0.895997, 0.072738,
		41.030998, 35.179459, 27.291227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902142, 35.351883, 27.297594>,  <41.337643, 35.806656, 27.240311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902142, 35.351883, 27.297594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.613029, 35.094978, 27.195543>,  <41.439564, 34.940834, 27.134314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.613029, 35.094978, 27.195543>,  <41.902142, 35.351883, 27.297594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613029, 35.094978, 27.195543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673116, -0.570631, -0.470420,
		0.156551, -0.511739, 0.844757,
		-0.722777, -0.642264, -0.255127,
		41.396194, 34.902298, 27.119005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132832, 34.736950, 27.447443>,  <41.902142, 35.351883, 27.297594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132832, 34.736950, 27.447443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.856556, 34.658791, 27.168941>,  <41.690792, 34.611897, 27.001841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.856556, 34.658791, 27.168941>,  <42.132832, 34.736950, 27.447443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856556, 34.658791, 27.168941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666159, -0.546565, -0.507445,
		-0.281393, -0.814301, 0.507673,
		-0.690689, -0.195399, -0.696253,
		41.649349, 34.600170, 26.960066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225544, 34.079788, 27.344753>,  <42.132832, 34.736950, 27.447443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225544, 34.079788, 27.344753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.019447, 34.192146, 27.020872>,  <41.895790, 34.259563, 26.826544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.019447, 34.192146, 27.020872>,  <42.225544, 34.079788, 27.344753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019447, 34.192146, 27.020872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620269, -0.529746, -0.578476,
		-0.591431, -0.800290, 0.098715,
		-0.515243, 0.280899, -0.809704,
		41.864876, 34.276417, 26.777962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074333, 33.467491, 26.864361>,  <42.225544, 34.079788, 27.344753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074333, 33.467491, 26.864361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.053448, 33.806149, 26.652521>,  <42.040916, 34.009342, 26.525417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.053448, 33.806149, 26.652521>,  <42.074333, 33.467491, 26.864361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053448, 33.806149, 26.652521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498720, -0.437350, -0.748334,
		-0.865189, -0.303196, -0.399400,
		-0.052214, 0.846639, -0.529600,
		42.037785, 34.060139, 26.493641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745827, 33.285221, 26.186262>,  <42.074333, 33.467491, 26.864361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745827, 33.285221, 26.186262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.969749, 33.613056, 26.137436>,  <42.104103, 33.809757, 26.108141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.969749, 33.613056, 26.137436>,  <41.745827, 33.285221, 26.186262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969749, 33.613056, 26.137436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440843, -0.419309, -0.793623,
		-0.701624, 0.390462, -0.596040,
		0.559804, 0.819585, -0.122065,
		42.137691, 33.858932, 26.100817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891132, 33.527637, 25.542521>,  <41.745827, 33.285221, 26.186262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891132, 33.527637, 25.542521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.202286, 33.738792, 25.678896>,  <42.388977, 33.865486, 25.760721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.202286, 33.738792, 25.678896>,  <41.891132, 33.527637, 25.542521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202286, 33.738792, 25.678896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498373, -0.187748, -0.846389,
		-0.382786, 0.828304, -0.409130,
		0.777881, 0.527886, 0.340937,
		42.435650, 33.897160, 25.781178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277916, 33.707668, 24.965378>,  <41.891132, 33.527637, 25.542521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277916, 33.707668, 24.965378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.555088, 33.817932, 25.231871>,  <42.721390, 33.884090, 25.391766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.555088, 33.817932, 25.231871>,  <42.277916, 33.707668, 24.965378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555088, 33.817932, 25.231871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720371, -0.225858, -0.655785,
		-0.030298, 0.934345, -0.355079,
		0.692927, 0.275658, 0.666232,
		42.762966, 33.900631, 25.431740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760334, 34.212006, 24.582724>,  <42.277916, 33.707668, 24.965378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760334, 34.212006, 24.582724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.947449, 34.071911, 24.907320>,  <43.059715, 33.987854, 25.102077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.947449, 34.071911, 24.907320>,  <42.760334, 34.212006, 24.582724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947449, 34.071911, 24.907320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807964, -0.202743, -0.553254,
		0.358291, 0.914457, 0.188135,
		0.467784, -0.350233, 0.811489,
		43.087784, 33.966843, 25.150766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482639, 34.521626, 24.554276>,  <42.760334, 34.212006, 24.582724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482639, 34.521626, 24.554276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.473667, 34.183098, 24.767157>,  <43.468285, 33.979980, 24.894886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.473667, 34.183098, 24.767157>,  <43.482639, 34.521626, 24.554276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473667, 34.183098, 24.767157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812529, -0.325593, -0.483514,
		0.582489, 0.421582, 0.694964,
		-0.022435, -0.846320, 0.532202,
		43.466938, 33.929203, 24.926817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.237812, 34.309811, 24.398743>,  <43.482639, 34.521626, 24.554276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.237812, 34.309811, 24.398743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.084290, 34.011692, 24.616817>,  <43.992176, 33.832821, 24.747662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.084290, 34.011692, 24.616817>,  <44.237812, 34.309811, 24.398743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084290, 34.011692, 24.616817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728026, -0.607416, -0.317843,
		0.568043, 0.274921, 0.775723,
		-0.383805, -0.745295, 0.545188,
		43.969147, 33.788105, 24.780375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.808441, 34.044090, 24.895809>,  <44.237812, 34.309811, 24.398743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.808441, 34.044090, 24.895809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.535088, 33.762989, 24.816690>,  <44.371075, 33.594330, 24.769220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.535088, 33.762989, 24.816690>,  <44.808441, 34.044090, 24.895809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.535088, 33.762989, 24.816690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705246, -0.565435, -0.427682,
		0.188715, -0.431765, 0.882023,
		-0.683385, -0.702753, -0.197794,
		44.330070, 33.552162, 24.757353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.020626, 33.283337, 25.034550>,  <44.808441, 34.044090, 24.895809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.020626, 33.283337, 25.034550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.757458, 33.239456, 24.736528>,  <44.599556, 33.213127, 24.557716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.757458, 33.239456, 24.736528>,  <45.020626, 33.283337, 25.034550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757458, 33.239456, 24.736528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628586, -0.624853, -0.463075,
		-0.414749, -0.772997, 0.480061,
		-0.657924, -0.109700, -0.745052,
		44.560081, 33.206547, 24.513012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.879910, 32.605423, 25.061312>,  <45.020626, 33.283337, 25.034550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.879910, 32.605423, 25.061312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.780731, 32.710102, 24.688208>,  <44.721226, 32.772907, 24.464346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.780731, 32.710102, 24.688208>,  <44.879910, 32.605423, 25.061312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780731, 32.710102, 24.688208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476807, -0.805170, -0.352643,
		-0.843314, -0.532182, 0.074860,
		-0.247945, 0.261695, -0.932759,
		44.706348, 32.788612, 24.408381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818642, 31.996435, 24.700373>,  <44.879910, 32.605423, 25.061312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818642, 31.996435, 24.700373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.854465, 32.273762, 24.414352>,  <44.875957, 32.440159, 24.242741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.854465, 32.273762, 24.414352>,  <44.818642, 31.996435, 24.700373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.854465, 32.273762, 24.414352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483056, -0.658076, -0.577575,
		-0.870997, -0.293684, -0.393844,
		0.089555, 0.693315, -0.715049,
		44.881332, 32.481754, 24.199839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454117, 31.393425, 24.934704>,  <44.818642, 31.996435, 24.700373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454117, 31.393425, 24.934704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.651028, 31.112995, 25.141066>,  <44.769173, 30.944736, 25.264883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.651028, 31.112995, 25.141066>,  <44.454117, 31.393425, 24.934704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651028, 31.112995, 25.141066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315956, 0.408348, 0.856401,
		-0.811071, -0.584589, -0.020489,
		0.492276, -0.701076, 0.515904,
		44.798710, 30.902672, 25.295837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009892, 31.021261, 25.378096>,  <44.454117, 31.393425, 24.934704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009892, 31.021261, 25.378096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.383121, 30.984482, 25.517185>,  <44.607059, 30.962414, 25.600639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.383121, 30.984482, 25.517185>,  <44.009892, 31.021261, 25.378096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383121, 30.984482, 25.517185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298734, 0.340303, 0.891601,
		-0.200314, -0.935809, 0.290060,
		0.933077, -0.091949, 0.347725,
		44.663044, 30.956898, 25.621502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986458, 30.690825, 25.985704>,  <44.009892, 31.021261, 25.378096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986458, 30.690825, 25.985704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.327652, 30.894501, 26.031563>,  <44.532368, 31.016706, 26.059078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.327652, 30.894501, 26.031563>,  <43.986458, 30.690825, 25.985704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327652, 30.894501, 26.031563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225285, 0.161042, 0.960891,
		0.470813, -0.845453, 0.252079,
		0.852984, 0.509190, 0.114648,
		44.583546, 31.047258, 26.065956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198421, 30.569174, 26.639961>,  <43.986458, 30.690825, 25.985704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198421, 30.569174, 26.639961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.440250, 30.868916, 26.531916>,  <44.585346, 31.048761, 26.467089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.440250, 30.868916, 26.531916>,  <44.198421, 30.569174, 26.639961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.440250, 30.868916, 26.531916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049223, 0.373603, 0.926282,
		0.795031, -0.546704, 0.262754,
		0.604568, 0.749357, -0.270115,
		44.621620, 31.093723, 26.450882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793400, 30.705021, 27.105013>,  <44.198421, 30.569174, 26.639961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793400, 30.705021, 27.105013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.737396, 31.062113, 26.933697>,  <44.703793, 31.276367, 26.830906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.737396, 31.062113, 26.933697>,  <44.793400, 30.705021, 27.105013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.737396, 31.062113, 26.933697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339445, 0.363065, 0.867733,
		0.930148, 0.266873, 0.252199,
		-0.140010, 0.892728, -0.428292,
		44.695393, 31.329931, 26.805208>
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
