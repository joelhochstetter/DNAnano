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
	<24.316273, 35.240532, 35.248089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414425, 34.889484, 35.083374>,  <24.473316, 34.678856, 34.984547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414425, 34.889484, 35.083374>,  <24.316273, 35.240532, 35.248089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.414425, 34.889484, 35.083374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624732, -0.181653, 0.759416,
		-0.741282, -0.443602, 0.503704,
		0.245379, -0.877622, -0.411788,
		24.488039, 34.626198, 34.959839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.228739, 34.776764, 35.671211>,  <24.316273, 35.240532, 35.248089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.228739, 34.776764, 35.671211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.501574, 34.586437, 35.449093>,  <24.665276, 34.472240, 35.315823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.501574, 34.586437, 35.449093>,  <24.228739, 34.776764, 35.671211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.501574, 34.586437, 35.449093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455192, -0.318050, 0.831652,
		-0.572326, -0.820026, -0.000351,
		0.682088, -0.475816, -0.555297,
		24.706200, 34.443691, 35.282505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.174467, 34.143475, 35.783066>,  <24.228739, 34.776764, 35.671211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.174467, 34.143475, 35.783066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.553576, 34.201355, 35.669369>,  <24.781040, 34.236084, 35.601151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.553576, 34.201355, 35.669369>,  <24.174467, 34.143475, 35.783066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.553576, 34.201355, 35.669369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318730, -0.462736, 0.827216,
		-0.011831, -0.874607, -0.484687,
		0.947772, 0.144698, -0.284238,
		24.837908, 34.244762, 35.584099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.535440, 33.720848, 36.248291>,  <24.174467, 34.143475, 35.783066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.535440, 33.720848, 36.248291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857815, 33.916565, 36.114990>,  <25.051239, 34.033997, 36.035011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857815, 33.916565, 36.114990>,  <24.535440, 33.720848, 36.248291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.857815, 33.916565, 36.114990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432018, -0.101231, 0.896166,
		0.404753, -0.866224, -0.292970,
		0.805938, 0.489294, -0.333250,
		25.099596, 34.063354, 36.015015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061573, 33.190868, 36.189587>,  <24.535440, 33.720848, 36.248291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.061573, 33.190868, 36.189587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.118099, 33.582508, 36.248100>,  <25.152016, 33.817490, 36.283211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.118099, 33.582508, 36.248100>,  <25.061573, 33.190868, 36.189587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.118099, 33.582508, 36.248100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391392, -0.190988, 0.900187,
		0.909309, -0.069955, -0.410200,
		0.141316, 0.979096, 0.146287,
		25.160494, 33.876236, 36.291988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.843586, 33.443401, 36.217663>,  <25.061573, 33.190868, 36.189587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.843586, 33.443401, 36.217663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584808, 33.664425, 36.427860>,  <25.429543, 33.797039, 36.553978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584808, 33.664425, 36.427860>,  <25.843586, 33.443401, 36.217663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584808, 33.664425, 36.427860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489473, -0.227499, 0.841819,
		0.584705, 0.801823, -0.123285,
		-0.646943, 0.552561, 0.525491,
		25.390726, 33.830193, 36.585506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.311031, 33.700897, 36.627174>,  <25.843586, 33.443401, 36.217663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.311031, 33.700897, 36.627174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942408, 33.682919, 36.781425>,  <25.721233, 33.672131, 36.873974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942408, 33.682919, 36.781425>,  <26.311031, 33.700897, 36.627174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.942408, 33.682919, 36.781425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363913, -0.446044, 0.817687,
		0.135254, 0.893882, 0.427413,
		-0.921560, -0.044946, 0.385625,
		25.665939, 33.669434, 36.897114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283514, 34.003502, 37.315556>,  <26.311031, 33.700897, 36.627174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283514, 34.003502, 37.315556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.998083, 33.723553, 37.302998>,  <25.826824, 33.555584, 37.295464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.998083, 33.723553, 37.302998>,  <26.283514, 34.003502, 37.315556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998083, 33.723553, 37.302998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352188, -0.397096, 0.847513,
		-0.605618, 0.593710, 0.529845,
		-0.713576, -0.699874, -0.031391,
		25.784010, 33.513592, 37.293579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987494, 33.925381, 38.055172>,  <26.283514, 34.003502, 37.315556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987494, 33.925381, 38.055172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952688, 33.593197, 37.835075>,  <25.931805, 33.393887, 37.703018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952688, 33.593197, 37.835075>,  <25.987494, 33.925381, 38.055172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952688, 33.593197, 37.835075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464031, -0.522547, 0.715276,
		-0.881535, -0.193090, 0.430828,
		-0.087015, -0.830458, -0.550243,
		25.926584, 33.344059, 37.670002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.634504, 33.441517, 38.523151>,  <25.987494, 33.925381, 38.055172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.634504, 33.441517, 38.523151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803146, 33.229805, 38.228638>,  <25.904331, 33.102779, 38.051929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803146, 33.229805, 38.228638>,  <25.634504, 33.441517, 38.523151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.803146, 33.229805, 38.228638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374084, -0.638144, 0.672929,
		-0.826022, -0.559142, -0.071050,
		0.421603, -0.529275, -0.736287,
		25.929626, 33.071022, 38.007751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.451494, 32.736359, 38.729351>,  <25.634504, 33.441517, 38.523151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.451494, 32.736359, 38.729351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777876, 32.731697, 38.498154>,  <25.973705, 32.728901, 38.359436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777876, 32.731697, 38.498154>,  <25.451494, 32.736359, 38.729351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.777876, 32.731697, 38.498154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512333, -0.448600, 0.732306,
		-0.267826, -0.893657, -0.360066,
		0.815956, -0.011657, -0.577997,
		26.022663, 32.728199, 38.324753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773535, 32.040157, 38.881451>,  <25.451494, 32.736359, 38.729351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773535, 32.040157, 38.881451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.059105, 32.290520, 38.755882>,  <26.230448, 32.440739, 38.680542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.059105, 32.290520, 38.755882>,  <25.773535, 32.040157, 38.881451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.059105, 32.290520, 38.755882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650832, -0.427768, 0.627241,
		0.258312, -0.652113, -0.712758,
		0.713927, 0.625910, -0.313918,
		26.273283, 32.478294, 38.661705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476196, 31.845831, 38.575150>,  <25.773535, 32.040157, 38.881451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476196, 31.845831, 38.575150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563946, 32.166798, 38.797142>,  <26.616594, 32.359379, 38.930336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563946, 32.166798, 38.797142>,  <26.476196, 31.845831, 38.575150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563946, 32.166798, 38.797142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666996, -0.538487, 0.514925,
		0.712034, 0.257208, -0.653339,
		0.219372, 0.802419, 0.554978,
		26.629757, 32.407524, 38.963634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091255, 32.208237, 38.356663>,  <26.476196, 31.845831, 38.575150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091255, 32.208237, 38.356663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993832, 32.168415, 38.742569>,  <26.935377, 32.144524, 38.974113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993832, 32.168415, 38.742569>,  <27.091255, 32.208237, 38.356663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993832, 32.168415, 38.742569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840504, -0.518031, 0.158735,
		0.483974, 0.849549, 0.209847,
		-0.243560, -0.099553, 0.964763,
		26.920763, 32.138550, 39.031998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137104, 32.589485, 38.849304>,  <27.091255, 32.208237, 38.356663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137104, 32.589485, 38.849304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348888, 32.918358, 38.932919>,  <27.475960, 33.115681, 38.983086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348888, 32.918358, 38.932919>,  <27.137104, 32.589485, 38.849304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348888, 32.918358, 38.932919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748693, 0.337002, 0.570866,
		0.398911, -0.458750, 0.793989,
		0.529461, 0.822179, 0.209030,
		27.507727, 33.165012, 38.995628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268719, 32.916962, 38.190231>,  <27.137104, 32.589485, 38.849304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268719, 32.916962, 38.190231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944881, 32.688324, 38.243656>,  <26.750580, 32.551140, 38.275711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944881, 32.688324, 38.243656>,  <27.268719, 32.916962, 38.190231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944881, 32.688324, 38.243656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442273, 0.444392, -0.779044,
		0.385943, -0.689780, -0.612577,
		-0.809594, -0.571594, 0.133561,
		26.702003, 32.516846, 38.283726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078917, 32.525265, 37.565697>,  <27.268719, 32.916962, 38.190231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078917, 32.525265, 37.565697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757931, 32.588634, 37.795811>,  <26.565340, 32.626656, 37.933880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757931, 32.588634, 37.795811>,  <27.078917, 32.525265, 37.565697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757931, 32.588634, 37.795811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507114, 0.327030, -0.797425,
		-0.314465, -0.931641, -0.182091,
		-0.802463, 0.158421, 0.575288,
		26.517191, 32.636162, 37.968395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372412, 32.347481, 37.067436>,  <27.078917, 32.525265, 37.565697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372412, 32.347481, 37.067436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251995, 32.573563, 37.374660>,  <26.179745, 32.709213, 37.558994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251995, 32.573563, 37.374660>,  <26.372412, 32.347481, 37.067436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251995, 32.573563, 37.374660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728689, 0.383199, -0.567601,
		-0.615132, -0.730547, 0.296503,
		-0.301039, 0.565208, 0.768059,
		26.161684, 32.743126, 37.605080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.677578, 32.192364, 37.110435>,  <26.372412, 32.347481, 37.067436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.677578, 32.192364, 37.110435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.742104, 32.544540, 37.288780>,  <25.780819, 32.755848, 37.395786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.742104, 32.544540, 37.288780>,  <25.677578, 32.192364, 37.110435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.742104, 32.544540, 37.288780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666196, 0.430462, -0.609004,
		-0.728121, -0.198789, 0.655990,
		0.161316, 0.880447, 0.445860,
		25.790499, 32.808674, 37.422539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046753, 32.460144, 37.302937>,  <25.677578, 32.192364, 37.110435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046753, 32.460144, 37.302937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.294931, 32.772835, 37.277802>,  <25.443838, 32.960449, 37.262718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.294931, 32.772835, 37.277802>,  <25.046753, 32.460144, 37.302937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.294931, 32.772835, 37.277802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764711, 0.585267, -0.269592,
		-0.173968, 0.215323, 0.960922,
		0.620445, 0.781728, -0.062842,
		25.481066, 33.007355, 37.258949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.799498, 33.047535, 37.725422>,  <25.046753, 32.460144, 37.302937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.799498, 33.047535, 37.725422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994534, 33.139038, 37.388393>,  <25.111555, 33.193939, 37.186176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994534, 33.139038, 37.388393>,  <24.799498, 33.047535, 37.725422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.994534, 33.139038, 37.388393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841256, 0.381258, -0.383316,
		0.233552, 0.895719, 0.378341,
		0.487589, 0.228757, -0.842572,
		25.140810, 33.207664, 37.135620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.384720, 33.558842, 37.857307>,  <24.799498, 33.047535, 37.725422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.384720, 33.558842, 37.857307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496515, 33.940956, 37.818695>,  <25.563593, 34.170223, 37.795528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496515, 33.940956, 37.818695>,  <25.384720, 33.558842, 37.857307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496515, 33.940956, 37.818695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170159, -0.049668, -0.984164,
		-0.944951, 0.291489, 0.148669,
		0.279489, 0.955284, -0.096534,
		25.580362, 34.227543, 37.789734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.930361, 33.906982, 37.355602>,  <25.384720, 33.558842, 37.857307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.930361, 33.906982, 37.355602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276514, 34.106106, 37.378571>,  <25.484205, 34.225582, 37.392349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276514, 34.106106, 37.378571>,  <24.930361, 33.906982, 37.355602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.276514, 34.106106, 37.378571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027956, 0.162360, -0.986335,
		-0.500330, 0.851953, 0.154420,
		0.865383, 0.497810, 0.057417,
		25.536129, 34.255447, 37.395794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.951595, 34.746319, 37.286182>,  <24.930361, 33.906982, 37.355602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.951595, 34.746319, 37.286182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275307, 34.555462, 37.149124>,  <25.469534, 34.440948, 37.066891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.275307, 34.555462, 37.149124>,  <24.951595, 34.746319, 37.286182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.275307, 34.555462, 37.149124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178211, 0.356388, -0.917185,
		0.559740, 0.803322, 0.203385,
		0.809279, -0.477139, -0.342646,
		25.518091, 34.412319, 37.046329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.303816, 35.093994, 36.756897>,  <24.951595, 34.746319, 37.286182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.303816, 35.093994, 36.756897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435032, 34.727139, 36.666351>,  <25.513762, 34.507023, 36.612022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435032, 34.727139, 36.666351>,  <25.303816, 35.093994, 36.756897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435032, 34.727139, 36.666351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040131, 0.225880, -0.973328,
		0.943812, 0.328373, 0.037291,
		0.328038, -0.917142, -0.226366,
		25.533443, 34.451996, 36.598442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.803938, 35.130608, 36.166782>,  <25.303816, 35.093994, 36.756897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.803938, 35.130608, 36.166782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.695768, 34.746487, 36.194168>,  <25.630867, 34.516014, 36.210598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.695768, 34.746487, 36.194168>,  <25.803938, 35.130608, 36.166782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.695768, 34.746487, 36.194168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030187, -0.062617, -0.997581,
		0.962269, -0.271834, -0.012056,
		-0.270422, -0.960305, 0.068460,
		25.614641, 34.458397, 36.214706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198713, 34.722805, 35.602844>,  <25.803938, 35.130608, 36.166782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198713, 34.722805, 35.602844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858839, 34.537098, 35.702835>,  <25.654915, 34.425674, 35.762829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858839, 34.537098, 35.702835>,  <26.198713, 34.722805, 35.602844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858839, 34.537098, 35.702835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230051, -0.100186, -0.968008,
		0.474456, -0.880012, -0.021677,
		-0.849687, -0.464264, 0.249982,
		25.603933, 34.397820, 35.777828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076757, 34.322739, 35.021740>,  <26.198713, 34.722805, 35.602844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076757, 34.322739, 35.021740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719856, 34.317310, 35.202271>,  <25.505714, 34.314053, 35.310589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719856, 34.317310, 35.202271>,  <26.076757, 34.322739, 35.021740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719856, 34.317310, 35.202271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437650, -0.219964, -0.871825,
		0.111106, -0.975414, 0.190325,
		-0.892255, -0.013569, 0.451329,
		25.452179, 34.313240, 35.337669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.595400, 33.820896, 34.611465>,  <26.076757, 34.322739, 35.021740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.595400, 33.820896, 34.611465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322676, 34.034672, 34.811268>,  <25.159040, 34.162937, 34.931149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322676, 34.034672, 34.811268>,  <25.595400, 33.820896, 34.611465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.322676, 34.034672, 34.811268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404865, 0.293030, -0.866151,
		-0.609277, -0.792784, 0.016585,
		-0.681811, 0.534440, 0.499507,
		25.118132, 34.195004, 34.961121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.941236, 33.581524, 34.372501>,  <25.595400, 33.820896, 34.611465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.941236, 33.581524, 34.372501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941399, 33.955845, 34.513508>,  <24.941496, 34.180439, 34.598110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941399, 33.955845, 34.513508>,  <24.941236, 33.581524, 34.372501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.941399, 33.955845, 34.513508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221658, 0.343828, -0.912497,
		-0.975124, -0.077768, 0.207568,
		0.000405, 0.935807, 0.352513,
		24.941521, 34.236588, 34.619263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.301296, 33.988434, 34.200180>,  <24.941236, 33.581524, 34.372501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.301296, 33.988434, 34.200180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.610327, 34.234879, 34.261539>,  <24.795746, 34.382744, 34.298355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.610327, 34.234879, 34.261539>,  <24.301296, 33.988434, 34.200180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.610327, 34.234879, 34.261539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085679, 0.340554, -0.936313,
		-0.629114, 0.710231, 0.315892,
		0.772577, 0.616113, 0.153395,
		24.842100, 34.419712, 34.307556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.112907, 34.698841, 33.991299>,  <24.301296, 33.988434, 34.200180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.112907, 34.698841, 33.991299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506371, 34.639256, 33.950844>,  <24.742449, 34.603504, 33.926571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506371, 34.639256, 33.950844>,  <24.112907, 34.698841, 33.991299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.506371, 34.639256, 33.950844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036342, 0.385910, -0.921821,
		0.176345, 0.910431, 0.374189,
		0.983657, -0.148960, -0.101140,
		24.801468, 34.594566, 33.920502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.558273, 35.364002, 33.945698>,  <24.112907, 34.698841, 33.991299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.558273, 35.364002, 33.945698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702387, 35.051521, 33.741768>,  <24.788855, 34.864033, 33.619411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702387, 35.051521, 33.741768>,  <24.558273, 35.364002, 33.945698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.702387, 35.051521, 33.741768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077228, 0.519671, -0.850869,
		0.929641, 0.345927, 0.126898,
		0.360284, -0.781202, -0.509823,
		24.810472, 34.817162, 33.588821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.107843, 35.457355, 33.568604>,  <24.558273, 35.364002, 33.945698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.107843, 35.457355, 33.568604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.887335, 35.203560, 33.351891>,  <24.755030, 35.051285, 33.221863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.887335, 35.203560, 33.351891>,  <25.107843, 35.457355, 33.568604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.887335, 35.203560, 33.351891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057314, 0.619032, -0.783272,
		0.832354, -0.462848, -0.304891,
		-0.551273, -0.634485, -0.541782,
		24.721952, 35.013214, 33.189358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797138, 35.598839, 33.269630>,  <25.107843, 35.457355, 33.568604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.797138, 35.598839, 33.269630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923512, 35.249905, 33.120384>,  <25.999336, 35.040543, 33.030838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923512, 35.249905, 33.120384>,  <25.797138, 35.598839, 33.269630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923512, 35.249905, 33.120384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657010, 0.082561, -0.749348,
		0.684487, 0.481886, -0.547049,
		0.315935, -0.872336, -0.373116,
		26.018291, 34.988205, 33.008450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.973227, 35.591255, 32.487278>,  <25.797138, 35.598839, 33.269630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.973227, 35.591255, 32.487278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850616, 35.225891, 32.594410>,  <25.777050, 35.006672, 32.658688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850616, 35.225891, 32.594410>,  <25.973227, 35.591255, 32.487278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850616, 35.225891, 32.594410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499370, -0.085231, -0.862186,
		0.810353, -0.398027, -0.430002,
		-0.306524, -0.913406, 0.267830,
		25.758659, 34.951870, 32.674759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.121502, 35.120491, 31.901659>,  <25.973227, 35.591255, 32.487278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.121502, 35.120491, 31.901659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828938, 34.966152, 32.126572>,  <25.653399, 34.873550, 32.261520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828938, 34.966152, 32.126572>,  <26.121502, 35.120491, 31.901659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828938, 34.966152, 32.126572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447673, -0.350316, -0.822720,
		0.514422, -0.853463, 0.083490,
		-0.731409, -0.385848, 0.562283,
		25.609514, 34.850399, 32.295258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041792, 34.404446, 31.736172>,  <26.121502, 35.120491, 31.901659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041792, 34.404446, 31.736172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685530, 34.514469, 31.880989>,  <25.471773, 34.580482, 31.967880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685530, 34.514469, 31.880989>,  <26.041792, 34.404446, 31.736172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.685530, 34.514469, 31.880989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411555, -0.149224, -0.899086,
		-0.193276, -0.949776, 0.246109,
		-0.890655, 0.275059, 0.362044,
		25.418333, 34.596989, 31.989603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510527, 33.877426, 31.524693>,  <26.041792, 34.404446, 31.736172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510527, 33.877426, 31.524693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303440, 34.214512, 31.583761>,  <25.179188, 34.416763, 31.619204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303440, 34.214512, 31.583761>,  <25.510527, 33.877426, 31.524693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.303440, 34.214512, 31.583761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283361, -0.006032, -0.958994,
		-0.807266, -0.538331, 0.241914,
		-0.517715, 0.842712, 0.147673,
		25.148125, 34.467327, 31.628063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.839664, 33.839554, 31.364983>,  <25.510527, 33.877426, 31.524693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.839664, 33.839554, 31.364983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.007343, 34.191784, 31.276564>,  <25.107950, 34.403122, 31.223513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.007343, 34.191784, 31.276564>,  <24.839664, 33.839554, 31.364983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.007343, 34.191784, 31.276564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257760, -0.118020, -0.958974,
		-0.870536, 0.458977, 0.177503,
		0.419198, 0.880574, -0.221047,
		25.133102, 34.455956, 31.210249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.244118, 34.462318, 31.315603>,  <24.839664, 33.839554, 31.364983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.244118, 34.462318, 31.315603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598585, 34.435577, 31.132198>,  <24.811266, 34.419533, 31.022156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598585, 34.435577, 31.132198>,  <24.244118, 34.462318, 31.315603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.598585, 34.435577, 31.132198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448605, -0.371528, -0.812847,
		-0.116008, 0.926011, -0.359228,
		0.886169, -0.066855, -0.458514,
		24.864435, 34.415520, 30.994644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.250132, 34.967171, 30.788092>,  <24.244118, 34.462318, 31.315603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.250132, 34.967171, 30.788092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.447493, 34.620514, 30.758472>,  <24.565908, 34.412518, 30.740702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.447493, 34.620514, 30.758472>,  <24.250132, 34.967171, 30.788092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.447493, 34.620514, 30.758472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681641, -0.332381, -0.651835,
		0.540297, 0.372090, -0.754737,
		0.493401, -0.866644, -0.074047,
		24.595512, 34.360519, 30.736258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.486448, 35.573101, 31.282187>,  <24.250132, 34.967171, 30.788092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.486448, 35.573101, 31.282187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.527422, 35.195805, 31.408554>,  <24.552006, 34.969425, 31.484375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.527422, 35.195805, 31.408554>,  <24.486448, 35.573101, 31.282187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.527422, 35.195805, 31.408554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541332, 0.319301, 0.777822,
		-0.834546, 0.091343, 0.543313,
		0.102432, -0.943241, 0.315918,
		24.558151, 34.912834, 31.503330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.265066, 35.443672, 32.045719>,  <24.486448, 35.573101, 31.282187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.265066, 35.443672, 32.045719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.528286, 35.159554, 31.945763>,  <24.686218, 34.989082, 31.885788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.528286, 35.159554, 31.945763>,  <24.265066, 35.443672, 32.045719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.528286, 35.159554, 31.945763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381046, 0.027895, 0.924135,
		-0.649440, -0.703348, 0.289012,
		0.658051, -0.710298, -0.249892,
		24.725700, 34.946465, 31.870794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.235371, 34.817974, 32.474052>,  <24.265066, 35.443672, 32.045719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.235371, 34.817974, 32.474052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.602266, 34.759823, 32.325706>,  <24.822403, 34.724934, 32.236698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.602266, 34.759823, 32.325706>,  <24.235371, 34.817974, 32.474052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.602266, 34.759823, 32.325706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371173, -0.026027, 0.928199,
		-0.144591, -0.989034, 0.030087,
		0.917237, -0.145377, -0.370866,
		24.877438, 34.716209, 32.214447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.482996, 34.365791, 32.855274>,  <24.235371, 34.817974, 32.474052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.482996, 34.365791, 32.855274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.808920, 34.541000, 32.703365>,  <25.004475, 34.646126, 32.612221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.808920, 34.541000, 32.703365>,  <24.482996, 34.365791, 32.855274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.808920, 34.541000, 32.703365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399693, 0.050048, 0.915282,
		0.419919, -0.897571, -0.134294,
		0.814809, 0.438020, -0.379769,
		25.053362, 34.672405, 32.589436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.152479, 33.989506, 32.798481>,  <24.482996, 34.365791, 32.855274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.152479, 33.989506, 32.798481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.154030, 34.378212, 32.892857>,  <25.154961, 34.611435, 32.949482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.154030, 34.378212, 32.892857>,  <25.152479, 33.989506, 32.798481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.154030, 34.378212, 32.892857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230403, -0.230457, 0.945412,
		0.973088, 0.050697, -0.224789,
		0.003875, 0.971761, 0.235936,
		25.155191, 34.669739, 32.963638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754019, 34.191750, 33.123096>,  <25.152479, 33.989506, 32.798481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.754019, 34.191750, 33.123096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493826, 34.457123, 33.271008>,  <25.337709, 34.616344, 33.359753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493826, 34.457123, 33.271008>,  <25.754019, 34.191750, 33.123096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.493826, 34.457123, 33.271008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294062, -0.228898, 0.927973,
		0.700284, 0.712368, -0.046195,
		-0.650485, 0.663428, 0.369774,
		25.298681, 34.656151, 33.381939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115879, 34.534046, 33.672226>,  <25.754019, 34.191750, 33.123096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115879, 34.534046, 33.672226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725510, 34.553040, 33.757374>,  <25.491287, 34.564438, 33.808464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725510, 34.553040, 33.757374>,  <26.115879, 34.534046, 33.672226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725510, 34.553040, 33.757374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178111, -0.389775, 0.903522,
		0.125877, 0.919685, 0.371934,
		-0.975926, 0.047487, 0.212870,
		25.432732, 34.567287, 33.821236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763046, 34.626663, 34.144531>,  <26.115879, 34.534046, 33.672226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.763046, 34.626663, 34.144531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122751, 34.456116, 34.105461>,  <27.338573, 34.353786, 34.082020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122751, 34.456116, 34.105461>,  <26.763046, 34.626663, 34.144531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122751, 34.456116, 34.105461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398804, -0.707472, -0.583471,
		0.179670, 0.563646, -0.806239,
		0.899263, -0.426364, -0.097673,
		27.392530, 34.328205, 34.076160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862358, 34.542416, 33.468929>,  <26.763046, 34.626663, 34.144531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862358, 34.542416, 33.468929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091805, 34.267368, 33.646984>,  <27.229473, 34.102341, 33.753819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091805, 34.267368, 33.646984>,  <26.862358, 34.542416, 33.468929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091805, 34.267368, 33.646984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437256, -0.716571, -0.543445,
		0.692656, 0.117089, -0.711701,
		0.573616, -0.687616, 0.445139,
		27.263889, 34.061085, 33.780525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275051, 34.066879, 32.982841>,  <26.862358, 34.542416, 33.468929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275051, 34.066879, 32.982841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155685, 33.854168, 33.299866>,  <27.084066, 33.726540, 33.490082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155685, 33.854168, 33.299866>,  <27.275051, 34.066879, 32.982841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155685, 33.854168, 33.299866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088057, -0.811520, -0.577652,
		0.950365, -0.242171, 0.195343,
		-0.298415, -0.531779, 0.792565,
		27.066160, 33.694633, 33.537636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609793, 33.479740, 32.934521>,  <27.275051, 34.066879, 32.982841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609793, 33.479740, 32.934521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302706, 33.384163, 33.172352>,  <27.118454, 33.326817, 33.315048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302706, 33.384163, 33.172352>,  <27.609793, 33.479740, 32.934521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302706, 33.384163, 33.172352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038321, -0.943337, -0.329615,
		0.639642, -0.230267, 0.733372,
		-0.767717, -0.238940, 0.594574,
		27.072392, 33.312481, 33.350723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044838, 33.011269, 32.634338>,  <27.609793, 33.479740, 32.934521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044838, 33.011269, 32.634338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376347, 33.226997, 32.694035>,  <28.575253, 33.356434, 32.729855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376347, 33.226997, 32.694035>,  <28.044838, 33.011269, 32.634338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376347, 33.226997, 32.694035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436950, -0.790318, 0.429503,
		0.349589, -0.290748, -0.890648,
		0.828772, 0.539318, 0.149244,
		28.624979, 33.388794, 32.738808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617327, 32.636730, 32.291534>,  <28.044838, 33.011269, 32.634338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617327, 32.636730, 32.291534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747622, 32.865089, 32.592987>,  <28.825798, 33.002106, 32.773861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747622, 32.865089, 32.592987>,  <28.617327, 32.636730, 32.291534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747622, 32.865089, 32.592987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315247, -0.817078, 0.482703,
		0.891355, 0.080347, -0.446128,
		0.325738, 0.570900, 0.753636,
		28.845343, 33.036358, 32.819077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326424, 32.431351, 32.345547>,  <28.617327, 32.636730, 32.291534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326424, 32.431351, 32.345547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124516, 32.545437, 32.671455>,  <29.003370, 32.613888, 32.867001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124516, 32.545437, 32.671455>,  <29.326424, 32.431351, 32.345547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124516, 32.545437, 32.671455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071178, -0.954380, 0.289988,
		0.860314, 0.088383, 0.502044,
		-0.504770, 0.285216, 0.814776,
		28.973083, 32.631001, 32.915890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509989, 31.895012, 32.694553>,  <29.326424, 32.431351, 32.345547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509989, 31.895012, 32.694553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199263, 32.059959, 32.884926>,  <29.012827, 32.158928, 32.999149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199263, 32.059959, 32.884926>,  <29.509989, 31.895012, 32.694553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199263, 32.059959, 32.884926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148505, -0.854417, 0.497913,
		0.611968, 0.316108, 0.724963,
		-0.776815, 0.412367, 0.475933,
		28.966219, 32.183670, 33.027706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653294, 31.852867, 31.934122>,  <29.509989, 31.895012, 32.694553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653294, 31.852867, 31.934122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655186, 32.173992, 31.695637>,  <29.656321, 32.366669, 31.552546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655186, 32.173992, 31.695637>,  <29.653294, 31.852867, 31.934122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655186, 32.173992, 31.695637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996929, 0.042823, 0.065570,
		0.078172, -0.594693, -0.800143,
		0.004730, 0.802811, -0.596214,
		29.656605, 32.414837, 31.516773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340120, 31.692900, 31.644510>,  <29.653294, 31.852867, 31.934122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340120, 31.692900, 31.644510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255812, 32.060902, 31.512348>,  <30.205227, 32.281704, 31.433050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255812, 32.060902, 31.512348>,  <30.340120, 31.692900, 31.644510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255812, 32.060902, 31.512348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957836, 0.261884, 0.118179,
		0.195254, -0.291567, -0.936411,
		-0.210774, 0.920003, -0.330407,
		30.192579, 32.336903, 31.413225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744591, 31.916286, 31.003004>,  <30.340120, 31.692900, 31.644510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744591, 31.916286, 31.003004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639017, 32.210312, 31.252811>,  <30.575672, 32.386726, 31.402695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639017, 32.210312, 31.252811>,  <30.744591, 31.916286, 31.003004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639017, 32.210312, 31.252811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956062, 0.285033, 0.068569,
		-0.127606, 0.615174, -0.777996,
		-0.263936, 0.735062, 0.624517,
		30.559835, 32.430832, 31.440166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885345, 32.440037, 30.651890>,  <30.744591, 31.916286, 31.003004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885345, 32.440037, 30.651890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911215, 32.470627, 31.049879>,  <30.926737, 32.488983, 31.288671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911215, 32.470627, 31.049879>,  <30.885345, 32.440037, 30.651890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911215, 32.470627, 31.049879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820523, 0.563385, -0.096639,
		-0.567943, 0.822647, -0.026314,
		0.064675, 0.076477, 0.994972,
		30.930616, 32.493568, 31.348370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840256, 33.107113, 30.824753>,  <30.885345, 32.440037, 30.651890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840256, 33.107113, 30.824753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058195, 32.886909, 31.077761>,  <31.188959, 32.754787, 31.229565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058195, 32.886909, 31.077761>,  <30.840256, 33.107113, 30.824753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058195, 32.886909, 31.077761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745373, 0.663513, -0.064577,
		-0.384135, 0.506647, 0.771848,
		0.544849, -0.550508, 0.632519,
		31.221649, 32.721756, 31.267517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099960, 33.533482, 31.246344>,  <30.840256, 33.107113, 30.824753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099960, 33.533482, 31.246344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343918, 33.217403, 31.222267>,  <31.490292, 33.027756, 31.207821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343918, 33.217403, 31.222267>,  <31.099960, 33.533482, 31.246344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343918, 33.217403, 31.222267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787093, 0.612840, -0.070084,
		0.092269, -0.004633, 0.995723,
		0.609894, -0.790194, -0.060193,
		31.526886, 32.980347, 31.204208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761578, 33.738518, 31.196360>,  <31.099960, 33.533482, 31.246344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761578, 33.738518, 31.196360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864614, 33.354500, 31.152609>,  <31.926437, 33.124088, 31.126358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864614, 33.354500, 31.152609>,  <31.761578, 33.738518, 31.196360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864614, 33.354500, 31.152609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932716, 0.276620, -0.231349,
		0.252361, -0.042425, 0.966703,
		0.257595, -0.960042, -0.109379,
		31.941893, 33.066486, 31.119795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367474, 33.502975, 31.618216>,  <31.761578, 33.738518, 31.196360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367474, 33.502975, 31.618216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330570, 33.307453, 31.271215>,  <32.308430, 33.190140, 31.063015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330570, 33.307453, 31.271215>,  <32.367474, 33.502975, 31.618216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330570, 33.307453, 31.271215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970798, 0.149602, -0.187537,
		0.221449, -0.859469, 0.460732,
		-0.092255, -0.488808, -0.867500,
		32.302895, 33.160812, 31.010965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925941, 33.928947, 31.320847>,  <32.367474, 33.502975, 31.618216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925941, 33.928947, 31.320847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638680, 33.942886, 31.042845>,  <32.466320, 33.951252, 30.876043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638680, 33.942886, 31.042845>,  <32.925941, 33.928947, 31.320847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638680, 33.942886, 31.042845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671197, -0.228945, -0.705038,
		-0.183689, -0.972815, 0.141027,
		-0.718159, 0.034850, -0.695006,
		32.423233, 33.953342, 30.834343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235554, 33.511913, 30.933851>,  <32.925941, 33.928947, 31.320847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235554, 33.511913, 30.933851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959145, 33.700928, 30.715057>,  <32.793301, 33.814339, 30.583780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959145, 33.700928, 30.715057>,  <33.235554, 33.511913, 30.933851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959145, 33.700928, 30.715057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493264, -0.244875, -0.834702,
		-0.528372, -0.846607, -0.063872,
		-0.691024, 0.472539, -0.546986,
		32.751839, 33.842690, 30.550962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146294, 33.076515, 30.313681>,  <33.235554, 33.511913, 30.933851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146294, 33.076515, 30.313681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105854, 33.472637, 30.275589>,  <33.081589, 33.710312, 30.252735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105854, 33.472637, 30.275589>,  <33.146294, 33.076515, 30.313681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105854, 33.472637, 30.275589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595538, -0.016433, -0.803159,
		-0.796940, -0.137911, -0.588105,
		-0.101100, 0.990308, -0.095228,
		33.075523, 33.769730, 30.247021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891155, 33.259182, 29.587019>,  <33.146294, 33.076515, 30.313681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891155, 33.259182, 29.587019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073887, 33.577374, 29.746281>,  <33.183525, 33.768288, 29.841837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073887, 33.577374, 29.746281>,  <32.891155, 33.259182, 29.587019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073887, 33.577374, 29.746281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524026, 0.121028, -0.843059,
		-0.718819, 0.593779, -0.361560,
		0.456832, 0.795474, 0.398152,
		33.210938, 33.816017, 29.865726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851036, 33.755550, 29.086176>,  <32.891155, 33.259182, 29.587019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851036, 33.755550, 29.086176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142742, 33.919746, 29.305147>,  <33.317764, 34.018265, 29.436529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142742, 33.919746, 29.305147>,  <32.851036, 33.755550, 29.086176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142742, 33.919746, 29.305147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527907, 0.171445, -0.831818,
		-0.435306, 0.895603, -0.091672,
		0.729262, 0.410490, 0.547426,
		33.361519, 34.042892, 29.469376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043751, 34.478878, 28.846497>,  <32.851036, 33.755550, 29.086176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043751, 34.478878, 28.846497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367233, 34.371872, 29.056040>,  <33.561321, 34.307667, 29.181765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367233, 34.371872, 29.056040>,  <33.043751, 34.478878, 28.846497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367233, 34.371872, 29.056040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586923, 0.425902, -0.688570,
		-0.038906, 0.864316, 0.501443,
		0.808707, -0.267519, 0.523857,
		33.609844, 34.291615, 29.213198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706348, 34.978226, 28.655455>,  <33.043751, 34.478878, 28.846497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706348, 34.978226, 28.655455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882416, 34.679607, 28.855019>,  <33.988056, 34.500435, 28.974756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882416, 34.679607, 28.855019>,  <33.706348, 34.978226, 28.655455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882416, 34.679607, 28.855019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842999, 0.152260, -0.515916,
		0.309193, 0.647673, 0.696361,
		0.440173, -0.746550, 0.498910,
		34.014469, 34.455643, 29.004692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448692, 35.166740, 29.005785>,  <33.706348, 34.978226, 28.655455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448692, 35.166740, 29.005785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430820, 34.777996, 28.913273>,  <34.420097, 34.544750, 28.857765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430820, 34.777996, 28.913273>,  <34.448692, 35.166740, 29.005785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430820, 34.777996, 28.913273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853064, 0.083365, -0.515104,
		0.519890, -0.220312, 0.825334,
		-0.044680, -0.971861, -0.231281,
		34.417416, 34.486439, 28.843889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123543, 34.918762, 29.124672>,  <34.448692, 35.166740, 29.005785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123543, 34.918762, 29.124672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944134, 34.664177, 28.873676>,  <34.836487, 34.511425, 28.723078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944134, 34.664177, 28.873676>,  <35.123543, 34.918762, 29.124672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944134, 34.664177, 28.873676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776178, 0.070720, -0.626535,
		0.443141, -0.768060, 0.462287,
		-0.448524, -0.636460, -0.627491,
		34.809578, 34.473240, 28.685429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630070, 34.447990, 28.848465>,  <35.123543, 34.918762, 29.124672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630070, 34.447990, 28.848465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336864, 34.390678, 28.582481>,  <35.160942, 34.356293, 28.422892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336864, 34.390678, 28.582481>,  <35.630070, 34.447990, 28.848465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336864, 34.390678, 28.582481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652604, 0.127586, -0.746880,
		0.191852, -0.981424, -0.000016,
		-0.733008, -0.143280, -0.664958,
		35.116962, 34.347694, 28.382994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887539, 34.017101, 28.436911>,  <35.630070, 34.447990, 28.848465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887539, 34.017101, 28.436911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585693, 34.145073, 28.207754>,  <35.404587, 34.221855, 28.070261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585693, 34.145073, 28.207754>,  <35.887539, 34.017101, 28.436911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585693, 34.145073, 28.207754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633717, 0.128898, -0.762751,
		-0.170184, -0.938631, -0.300015,
		-0.754613, 0.319932, -0.572890,
		35.359310, 34.241051, 28.035887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047596, 33.816814, 27.705276>,  <35.887539, 34.017101, 28.436911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047596, 33.816814, 27.705276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757801, 34.083858, 27.636675>,  <35.583923, 34.244083, 27.595514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757801, 34.083858, 27.636675>,  <36.047596, 33.816814, 27.705276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757801, 34.083858, 27.636675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452542, 0.273013, -0.848922,
		-0.519926, -0.692647, -0.499916,
		-0.724487, 0.667610, -0.171506,
		35.540455, 34.284142, 27.585222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663086, 33.576626, 27.051250>,  <36.047596, 33.816814, 27.705276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663086, 33.576626, 27.051250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644711, 33.970730, 27.117168>,  <35.633686, 34.207191, 27.156719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644711, 33.970730, 27.117168>,  <35.663086, 33.576626, 27.051250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644711, 33.970730, 27.117168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405485, 0.169158, -0.898313,
		-0.912947, 0.025559, -0.407278,
		-0.045934, 0.985258, 0.164796,
		35.630932, 34.266308, 27.166607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414944, 33.818043, 26.348980>,  <35.663086, 33.576626, 27.051250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414944, 33.818043, 26.348980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550838, 34.139591, 26.544271>,  <35.632374, 34.332520, 26.661446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550838, 34.139591, 26.544271>,  <35.414944, 33.818043, 26.348980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550838, 34.139591, 26.544271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372943, 0.361405, -0.854576,
		-0.863420, 0.472410, -0.177017,
		0.339735, 0.803875, 0.488227,
		35.652760, 34.380753, 26.690739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124901, 34.360996, 25.934153>,  <35.414944, 33.818043, 26.348980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124901, 34.360996, 25.934153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437817, 34.507149, 26.135954>,  <35.625565, 34.594841, 26.257034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437817, 34.507149, 26.135954>,  <35.124901, 34.360996, 25.934153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437817, 34.507149, 26.135954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370798, 0.377642, -0.848467,
		-0.500538, 0.850812, 0.159940,
		0.782286, 0.365385, 0.504503,
		35.672501, 34.616764, 26.287306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058479, 35.062420, 25.837791>,  <35.124901, 34.360996, 25.934153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058479, 35.062420, 25.837791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438240, 34.992260, 25.942003>,  <35.666096, 34.950165, 26.004530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438240, 34.992260, 25.942003>,  <35.058479, 35.062420, 25.837791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438240, 34.992260, 25.942003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309155, 0.375776, -0.873622,
		0.055330, 0.909960, 0.410987,
		0.949401, -0.175396, 0.260527,
		35.723061, 34.939640, 26.020161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341175, 35.671051, 25.682549>,  <35.058479, 35.062420, 25.837791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341175, 35.671051, 25.682549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655361, 35.423584, 25.675701>,  <35.843872, 35.275105, 25.671593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655361, 35.423584, 25.675701>,  <35.341175, 35.671051, 25.682549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655361, 35.423584, 25.675701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300332, 0.405198, -0.863490,
		0.541146, 0.673104, 0.504075,
		0.785469, -0.618664, -0.017117,
		35.891003, 35.237984, 25.670567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879555, 36.073154, 25.577454>,  <35.341175, 35.671051, 25.682549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879555, 36.073154, 25.577454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992516, 35.703106, 25.475952>,  <36.060291, 35.481075, 25.415051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992516, 35.703106, 25.475952>,  <35.879555, 36.073154, 25.577454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992516, 35.703106, 25.475952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275715, 0.331636, -0.902219,
		0.918819, 0.184829, 0.348727,
		0.282406, -0.925125, -0.253753,
		36.077236, 35.425568, 25.399826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456432, 36.166569, 25.192701>,  <35.879555, 36.073154, 25.577454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456432, 36.166569, 25.192701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379051, 35.787632, 25.090631>,  <36.332623, 35.560268, 25.029388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379051, 35.787632, 25.090631>,  <36.456432, 36.166569, 25.192701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379051, 35.787632, 25.090631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434167, 0.150576, -0.888159,
		0.879816, -0.282603, 0.382177,
		-0.193450, -0.947345, -0.255176,
		36.321014, 35.503429, 25.014078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076580, 35.836559, 24.919218>,  <36.456432, 36.166569, 25.192701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076580, 35.836559, 24.919218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803150, 35.579266, 24.781252>,  <36.639091, 35.424889, 24.698473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803150, 35.579266, 24.781252>,  <37.076580, 35.836559, 24.919218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803150, 35.579266, 24.781252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454265, -0.005066, -0.890852,
		0.571283, -0.765649, 0.295663,
		-0.683579, -0.643238, -0.344913,
		36.598076, 35.386295, 24.677778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496853, 35.344864, 24.420961>,  <37.076580, 35.836559, 24.919218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496853, 35.344864, 24.420961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114609, 35.329674, 24.304085>,  <36.885262, 35.320560, 24.233959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114609, 35.329674, 24.304085>,  <37.496853, 35.344864, 24.420961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114609, 35.329674, 24.304085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293436, -0.032773, -0.955417,
		0.026709, -0.998741, 0.042462,
		-0.955605, -0.037978, -0.292191,
		36.827927, 35.318283, 24.216427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489639, 34.816322, 23.995052>,  <37.496853, 35.344864, 24.420961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489639, 34.816322, 23.995052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153885, 35.011967, 23.900221>,  <36.952435, 35.129353, 23.843321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153885, 35.011967, 23.900221>,  <37.489639, 34.816322, 23.995052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153885, 35.011967, 23.900221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232176, -0.071740, -0.970024,
		-0.491457, -0.869267, -0.053342,
		-0.839383, 0.489110, -0.237080,
		36.902069, 35.158699, 23.829096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186096, 34.451786, 23.410517>,  <37.489639, 34.816322, 23.995052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186096, 34.451786, 23.410517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052517, 34.828796, 23.406097>,  <36.972370, 35.055004, 23.403446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052517, 34.828796, 23.406097>,  <37.186096, 34.451786, 23.410517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052517, 34.828796, 23.406097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153527, 0.042825, -0.987216,
		-0.930003, -0.331378, -0.159005,
		-0.333951, 0.942526, -0.011048,
		36.952332, 35.111553, 23.402782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771290, 34.520626, 22.868874>,  <37.186096, 34.451786, 23.410517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771290, 34.520626, 22.868874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851189, 34.904087, 22.949949>,  <36.899128, 35.134163, 22.998594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851189, 34.904087, 22.949949>,  <36.771290, 34.520626, 22.868874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851189, 34.904087, 22.949949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048595, 0.216298, -0.975117,
		-0.978642, 0.184927, 0.089791,
		0.199747, 0.958654, 0.202691,
		36.911114, 35.191685, 23.010757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243309, 34.894089, 22.466825>,  <36.771290, 34.520626, 22.868874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243309, 34.894089, 22.466825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554852, 35.136005, 22.533297>,  <36.741776, 35.281155, 22.573179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554852, 35.136005, 22.533297>,  <36.243309, 34.894089, 22.466825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554852, 35.136005, 22.533297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051361, 0.202557, -0.977923,
		-0.625099, 0.770194, 0.126700,
		0.778854, 0.604791, 0.166176,
		36.788509, 35.317444, 22.583149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079762, 35.479866, 22.019545>,  <36.243309, 34.894089, 22.466825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079762, 35.479866, 22.019545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463379, 35.548794, 22.109470>,  <36.693550, 35.590149, 22.163425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463379, 35.548794, 22.109470>,  <36.079762, 35.479866, 22.019545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463379, 35.548794, 22.109470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195751, 0.170469, -0.965723,
		-0.204738, 0.970178, 0.129756,
		0.959043, 0.172320, 0.224815,
		36.751091, 35.600491, 22.176914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259026, 36.135197, 21.729080>,  <36.079762, 35.479866, 22.019545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259026, 36.135197, 21.729080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609188, 35.959503, 21.809816>,  <36.819286, 35.854088, 21.858257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609188, 35.959503, 21.809816>,  <36.259026, 36.135197, 21.729080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609188, 35.959503, 21.809816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295899, 0.156736, -0.942273,
		0.382246, 0.884593, 0.267177,
		0.875404, -0.439237, 0.201838,
		36.871811, 35.827732, 21.870367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897770, 36.609470, 21.565062>,  <36.259026, 36.135197, 21.729080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897770, 36.609470, 21.565062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064697, 36.246967, 21.538103>,  <37.164852, 36.029465, 21.521929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064697, 36.246967, 21.538103>,  <36.897770, 36.609470, 21.565062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064697, 36.246967, 21.538103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404257, 0.251547, -0.879375,
		0.813895, 0.339731, 0.471336,
		0.417314, -0.906260, -0.067394,
		37.189892, 35.975090, 21.517885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660599, 36.692856, 21.416363>,  <36.897770, 36.609470, 21.565062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660599, 36.692856, 21.416363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569599, 36.326668, 21.283607>,  <37.514999, 36.106953, 21.203955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569599, 36.326668, 21.283607>,  <37.660599, 36.692856, 21.416363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569599, 36.326668, 21.283607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558002, 0.156760, -0.814899,
		0.798046, -0.370585, 0.475174,
		-0.227501, -0.915474, -0.331889,
		37.501350, 36.052025, 21.184040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204220, 36.534615, 21.075411>,  <37.660599, 36.692856, 21.416363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204220, 36.534615, 21.075411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967705, 36.250443, 20.922745>,  <37.825798, 36.079941, 20.831144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967705, 36.250443, 20.922745>,  <38.204220, 36.534615, 21.075411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967705, 36.250443, 20.922745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537125, 0.006100, -0.843480,
		0.601563, -0.703741, 0.377984,
		-0.591286, -0.710431, -0.381666,
		37.790318, 36.037312, 20.808245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603718, 36.016113, 20.880415>,  <38.204220, 36.534615, 21.075411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603718, 36.016113, 20.880415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282185, 35.943806, 20.653725>,  <38.089264, 35.900421, 20.517710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282185, 35.943806, 20.653725>,  <38.603718, 36.016113, 20.880415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282185, 35.943806, 20.653725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594676, -0.220671, -0.773088,
		0.014687, -0.958451, 0.284879,
		-0.803831, -0.180766, -0.566727,
		38.041035, 35.889576, 20.483707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874779, 35.592205, 20.475399>,  <38.603718, 36.016113, 20.880415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874779, 35.592205, 20.475399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543236, 35.714050, 20.287697>,  <38.344311, 35.787159, 20.175076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543236, 35.714050, 20.287697>,  <38.874779, 35.592205, 20.475399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543236, 35.714050, 20.287697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403843, -0.254707, -0.878655,
		-0.387174, -0.917788, 0.088099,
		-0.828859, 0.304615, -0.469258,
		38.294579, 35.805435, 20.146919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898705, 35.220810, 19.877783>,  <38.874779, 35.592205, 20.475399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898705, 35.220810, 19.877783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644459, 35.514973, 19.783829>,  <38.491913, 35.691471, 19.727455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644459, 35.514973, 19.783829>,  <38.898705, 35.220810, 19.877783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644459, 35.514973, 19.783829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431998, 0.086653, -0.897702,
		-0.639823, -0.672063, -0.372772,
		-0.635614, 0.735407, -0.234887,
		38.453773, 35.735596, 19.713362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612762, 34.941414, 19.227489>,  <38.898705, 35.220810, 19.877783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612762, 34.941414, 19.227489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573215, 35.339344, 19.236845>,  <38.549488, 35.578102, 19.242458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573215, 35.339344, 19.236845>,  <38.612762, 34.941414, 19.227489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573215, 35.339344, 19.236845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476309, 0.067948, -0.876648,
		-0.873702, -0.075531, -0.480563,
		-0.098867, 0.994826, 0.023390,
		38.543556, 35.637791, 19.243862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354710, 35.142643, 18.565491>,  <38.612762, 34.941414, 19.227489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354710, 35.142643, 18.565491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515152, 35.475239, 18.719238>,  <38.611420, 35.674797, 18.811487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515152, 35.475239, 18.719238>,  <38.354710, 35.142643, 18.565491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515152, 35.475239, 18.719238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348008, 0.249820, -0.903593,
		-0.847349, 0.496203, -0.189160,
		0.401110, 0.831488, 0.384368,
		38.635487, 35.724686, 18.834549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136787, 35.742249, 18.097612>,  <38.354710, 35.142643, 18.565491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136787, 35.742249, 18.097612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450016, 35.911663, 18.279781>,  <38.637955, 36.013313, 18.389082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450016, 35.911663, 18.279781>,  <38.136787, 35.742249, 18.097612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450016, 35.911663, 18.279781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270202, 0.427864, -0.862510,
		-0.560167, 0.798465, 0.220608,
		0.783074, 0.423540, 0.455422,
		38.684937, 36.038727, 18.416409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062138, 36.422920, 18.024019>,  <38.136787, 35.742249, 18.097612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062138, 36.422920, 18.024019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453621, 36.369553, 18.086414>,  <38.688511, 36.337532, 18.123852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453621, 36.369553, 18.086414>,  <38.062138, 36.422920, 18.024019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453621, 36.369553, 18.086414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201051, 0.469970, -0.859481,
		0.041362, 0.872541, 0.486787,
		0.978707, -0.133419, 0.155987,
		38.747234, 36.329529, 18.133211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294830, 37.047825, 18.018764>,  <38.062138, 36.422920, 18.024019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294830, 37.047825, 18.018764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620281, 36.825005, 17.952185>,  <38.815552, 36.691311, 17.912237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620281, 36.825005, 17.952185>,  <38.294830, 37.047825, 18.018764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620281, 36.825005, 17.952185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284932, 0.631614, -0.721025,
		0.506781, 0.539218, 0.672620,
		0.813626, -0.557053, -0.166449,
		38.864368, 36.657890, 17.902250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862877, 37.568047, 17.913300>,  <38.294830, 37.047825, 18.018764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862877, 37.568047, 17.913300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988575, 37.221279, 17.758535>,  <39.063992, 37.013218, 17.665678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988575, 37.221279, 17.758535>,  <38.862877, 37.568047, 17.913300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988575, 37.221279, 17.758535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277692, 0.473667, -0.835779,
		0.907821, 0.155195, 0.389583,
		0.314242, -0.866922, -0.386909,
		39.082848, 36.961201, 17.642464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591850, 37.605392, 17.736456>,  <38.862877, 37.568047, 17.913300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591850, 37.605392, 17.736456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460785, 37.311321, 17.499084>,  <39.382145, 37.134880, 17.356661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460785, 37.311321, 17.499084>,  <39.591850, 37.605392, 17.736456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460785, 37.311321, 17.499084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333354, 0.497747, -0.800701,
		0.884031, -0.460182, 0.081980,
		-0.327664, -0.735173, -0.593428,
		39.362484, 37.090771, 17.321056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144016, 37.437653, 17.192402>,  <39.591850, 37.605392, 17.736456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144016, 37.437653, 17.192402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811081, 37.282459, 17.034073>,  <39.611320, 37.189342, 16.939075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811081, 37.282459, 17.034073>,  <40.144016, 37.437653, 17.192402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811081, 37.282459, 17.034073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146669, 0.534505, -0.832342,
		0.534505, -0.750848, -0.387985,
		0.832342, 0.387985, 0.395821,
		39.561378, 37.166065, 16.915327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274384, 37.303120, 16.500671>,  <40.144016, 37.437653, 17.192402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274384, 37.303120, 16.500671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874439, 37.302341, 16.493956>,  <39.634472, 37.301876, 16.489925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874439, 37.302341, 16.493956>,  <40.274384, 37.303120, 16.500671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874439, 37.302341, 16.493956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015135, 0.339270, -0.940567,
		0.007522, -0.940687, -0.339193,
		-0.999857, -0.001941, -0.016789,
		39.574482, 37.301758, 16.488918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056423, 37.102333, 15.808937>,  <40.274384, 37.303120, 16.500671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056423, 37.102333, 15.808937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723732, 37.277203, 15.945825>,  <39.524117, 37.382126, 16.027958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723732, 37.277203, 15.945825>,  <40.056423, 37.102333, 15.808937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723732, 37.277203, 15.945825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104010, 0.482790, -0.869538,
		-0.545360, -0.758809, -0.356077,
		-0.831724, 0.437176, 0.342218,
		39.474216, 37.408356, 16.048491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541454, 37.064770, 15.274473>,  <40.056423, 37.102333, 15.808937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541454, 37.064770, 15.274473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398453, 37.355637, 15.508880>,  <39.312653, 37.530159, 15.649524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398453, 37.355637, 15.508880>,  <39.541454, 37.064770, 15.274473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398453, 37.355637, 15.508880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187360, 0.558883, -0.807803,
		-0.914925, -0.398588, -0.063559,
		-0.357503, 0.727171, 0.586016,
		39.291203, 37.573788, 15.684685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777935, 37.152794, 15.152093>,  <39.541454, 37.064770, 15.274473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777935, 37.152794, 15.152093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962681, 37.482708, 15.282578>,  <39.073528, 37.680656, 15.360868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962681, 37.482708, 15.282578>,  <38.777935, 37.152794, 15.152093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962681, 37.482708, 15.282578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316205, 0.496743, -0.808245,
		-0.828669, 0.270153, 0.490230,
		0.461868, 0.824781, 0.326212,
		39.101242, 37.730141, 15.380441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247452, 37.717712, 15.035402>,  <38.777935, 37.152794, 15.152093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247452, 37.717712, 15.035402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642529, 37.774944, 15.010121>,  <38.879574, 37.809284, 14.994952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642529, 37.774944, 15.010121>,  <38.247452, 37.717712, 15.035402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642529, 37.774944, 15.010121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101998, 0.282803, -0.953739,
		-0.118588, 0.948446, 0.293916,
		0.987691, 0.143081, -0.063203,
		38.938835, 37.817867, 14.991160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407211, 38.584377, 14.886333>,  <38.247452, 37.717712, 15.035402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407211, 38.584377, 14.886333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397205, 38.983860, 14.868592>,  <38.391201, 39.223549, 14.857947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397205, 38.983860, 14.868592>,  <38.407211, 38.584377, 14.886333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397205, 38.983860, 14.868592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256137, -0.049288, -0.965383,
		-0.966317, -0.012789, 0.257038,
		-0.025016, 0.998703, -0.044352,
		38.389702, 39.283470, 14.855287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763641, 38.766586, 14.720944>,  <38.407211, 38.584377, 14.886333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763641, 38.766586, 14.720944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020008, 39.040928, 14.583061>,  <38.173828, 39.205532, 14.500331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020008, 39.040928, 14.583061>,  <37.763641, 38.766586, 14.720944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020008, 39.040928, 14.583061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327568, -0.161749, -0.930879,
		-0.694205, 0.709535, 0.120996,
		0.640920, 0.685856, -0.344708,
		38.212284, 39.246685, 14.479649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494579, 39.497417, 14.542755>,  <37.763641, 38.766586, 14.720944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494579, 39.497417, 14.542755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778004, 39.316818, 14.325836>,  <37.948059, 39.208458, 14.195685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778004, 39.316818, 14.325836>,  <37.494579, 39.497417, 14.542755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778004, 39.316818, 14.325836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641904, -0.093223, -0.761097,
		0.293079, 0.887389, -0.355873,
		0.708564, -0.451498, -0.542297,
		37.990574, 39.181370, 14.163147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557941, 39.809032, 13.909742>,  <37.494579, 39.497417, 14.542755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557941, 39.809032, 13.909742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663239, 39.426853, 13.856334>,  <37.726418, 39.197548, 13.824288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663239, 39.426853, 13.856334>,  <37.557941, 39.809032, 13.909742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663239, 39.426853, 13.856334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525565, -0.025969, -0.850357,
		0.809001, 0.294028, -0.508984,
		0.263246, -0.955444, -0.133522,
		37.742214, 39.140221, 13.816278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978706, 39.628014, 13.238369>,  <37.557941, 39.809032, 13.909742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978706, 39.628014, 13.238369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213211, 39.949940, 13.275411>,  <38.353912, 40.143093, 13.297636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213211, 39.949940, 13.275411>,  <37.978706, 39.628014, 13.238369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213211, 39.949940, 13.275411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072101, -0.165690, 0.983539,
		0.806907, -0.569933, -0.155165,
		0.586261, 0.804812, 0.092604,
		38.389088, 40.191383, 13.303192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631752, 39.439350, 13.501934>,  <37.978706, 39.628014, 13.238369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631752, 39.439350, 13.501934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495262, 39.800648, 13.606018>,  <38.413368, 40.017426, 13.668468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495262, 39.800648, 13.606018>,  <38.631752, 39.439350, 13.501934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495262, 39.800648, 13.606018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107583, -0.237476, 0.965417,
		0.933804, 0.357420, -0.016141,
		-0.341226, 0.903247, 0.260209,
		38.392895, 40.071621, 13.684081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986607, 39.694866, 14.092194>,  <38.631752, 39.439350, 13.501934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986607, 39.694866, 14.092194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611195, 39.832706, 14.100204>,  <38.385948, 39.915413, 14.105010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611195, 39.832706, 14.100204>,  <38.986607, 39.694866, 14.092194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611195, 39.832706, 14.100204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025878, -0.128091, 0.991425,
		0.344214, 0.929968, 0.129135,
		-0.938534, 0.344604, 0.020025,
		38.329636, 39.936089, 14.106211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883823, 40.348801, 14.494215>,  <38.986607, 39.694866, 14.092194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883823, 40.348801, 14.494215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561058, 40.112682, 14.485749>,  <38.367397, 39.971012, 14.480670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561058, 40.112682, 14.485749>,  <38.883823, 40.348801, 14.494215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561058, 40.112682, 14.485749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014520, -0.055644, 0.998345,
		-0.590492, 0.805270, 0.053471,
		-0.806913, -0.590291, -0.021165,
		38.318985, 39.935596, 14.479400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397285, 40.585766, 14.932814>,  <38.883823, 40.348801, 14.494215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397285, 40.585766, 14.932814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369431, 40.187794, 14.903795>,  <38.352718, 39.949009, 14.886384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369431, 40.187794, 14.903795>,  <38.397285, 40.585766, 14.932814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369431, 40.187794, 14.903795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073421, -0.067415, 0.995020,
		-0.994867, 0.074614, -0.068355,
		-0.069634, -0.994931, -0.072547,
		38.348541, 39.889313, 14.882031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742283, 40.342045, 15.283094>,  <38.397285, 40.585766, 14.932814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742283, 40.342045, 15.283094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995003, 40.032013, 15.279438>,  <38.146633, 39.845993, 15.277245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995003, 40.032013, 15.279438>,  <37.742283, 40.342045, 15.283094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995003, 40.032013, 15.279438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022338, 0.006419, 0.999730,
		-0.774811, -0.631832, 0.021369,
		0.631799, -0.775079, -0.009141,
		38.184544, 39.799488, 15.276696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449425, 39.932434, 15.783291>,  <37.742283, 40.342045, 15.283094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449425, 39.932434, 15.783291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827835, 39.818607, 15.721246>,  <38.054882, 39.750313, 15.684019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827835, 39.818607, 15.721246>,  <37.449425, 39.932434, 15.783291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827835, 39.818607, 15.721246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123423, -0.126213, 0.984295,
		-0.299671, -0.950313, -0.084279,
		0.946026, -0.284563, -0.155113,
		38.111641, 39.733238, 15.674712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452957, 39.408268, 16.260118>,  <37.449425, 39.932434, 15.783291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452957, 39.408268, 16.260118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819443, 39.519642, 16.144863>,  <38.039333, 39.586468, 16.075710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819443, 39.519642, 16.144863>,  <37.452957, 39.408268, 16.260118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819443, 39.519642, 16.144863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306248, -0.022895, 0.951676,
		0.258387, -0.960181, -0.106248,
		0.916214, 0.278439, -0.288137,
		38.094307, 39.603172, 16.058422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994179, 38.832176, 16.389748>,  <37.452957, 39.408268, 16.260118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994179, 38.832176, 16.389748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136578, 39.205540, 16.407669>,  <38.222015, 39.429558, 16.418423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136578, 39.205540, 16.407669>,  <37.994179, 38.832176, 16.389748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136578, 39.205540, 16.407669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169481, -0.111641, 0.979190,
		0.918991, -0.340993, -0.197939,
		0.355994, 0.933413, 0.044805,
		38.243378, 39.485565, 16.421110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442856, 38.748146, 16.926689>,  <37.994179, 38.832176, 16.389748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442856, 38.748146, 16.926689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411697, 39.146484, 16.907822>,  <38.393002, 39.385487, 16.896502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411697, 39.146484, 16.907822>,  <38.442856, 38.748146, 16.926689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411697, 39.146484, 16.907822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124236, 0.056639, 0.990635,
		0.989190, 0.071309, -0.128132,
		-0.077898, 0.995845, -0.047168,
		38.388329, 39.445236, 16.893671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058300, 38.860954, 17.275074>,  <38.442856, 38.748146, 16.926689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058300, 38.860954, 17.275074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831730, 39.188477, 17.312428>,  <38.695789, 39.384991, 17.334839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831730, 39.188477, 17.312428>,  <39.058300, 38.860954, 17.275074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831730, 39.188477, 17.312428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176713, 0.009998, 0.984212,
		0.804943, 0.573986, -0.150357,
		-0.566427, 0.818804, 0.093383,
		38.661800, 39.434116, 17.340443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454838, 39.274448, 17.680702>,  <39.058300, 38.860954, 17.275074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454838, 39.274448, 17.680702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091827, 39.439854, 17.710100>,  <38.874020, 39.539097, 17.727739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091827, 39.439854, 17.710100>,  <39.454838, 39.274448, 17.680702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091827, 39.439854, 17.710100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059284, -0.047114, 0.997129,
		0.415789, 0.909278, 0.018243,
		-0.907527, 0.413514, 0.073495,
		38.819569, 39.563908, 17.732149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466190, 39.652054, 18.336689>,  <39.454838, 39.274448, 17.680702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466190, 39.652054, 18.336689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080219, 39.633686, 18.233303>,  <38.848637, 39.622665, 18.171270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080219, 39.633686, 18.233303>,  <39.466190, 39.652054, 18.336689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080219, 39.633686, 18.233303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244561, -0.200615, 0.948653,
		-0.095410, 0.978594, 0.182350,
		-0.964928, -0.045915, -0.258467,
		38.790741, 39.619911, 18.155764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120590, 40.103794, 18.800575>,  <39.466190, 39.652054, 18.336689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120590, 40.103794, 18.800575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858341, 39.830116, 18.672808>,  <38.700993, 39.665909, 18.596148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858341, 39.830116, 18.672808>,  <39.120590, 40.103794, 18.800575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858341, 39.830116, 18.672808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093476, -0.346227, 0.933482,
		-0.749278, 0.641873, 0.163039,
		-0.655625, -0.684198, -0.319420,
		38.661655, 39.624855, 18.576982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703213, 40.193455, 19.275276>,  <39.120590, 40.103794, 18.800575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703213, 40.193455, 19.275276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637051, 39.836987, 19.106304>,  <38.597351, 39.623104, 19.004921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637051, 39.836987, 19.106304>,  <38.703213, 40.193455, 19.275276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637051, 39.836987, 19.106304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235895, -0.380146, 0.894339,
		-0.957598, 0.247581, -0.147344,
		-0.165409, -0.891175, -0.422430,
		38.587429, 39.569633, 18.979576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131104, 39.991760, 19.643049>,  <38.703213, 40.193455, 19.275276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131104, 39.991760, 19.643049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247589, 39.641239, 19.489536>,  <38.317478, 39.430927, 19.397429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247589, 39.641239, 19.489536>,  <38.131104, 39.991760, 19.643049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247589, 39.641239, 19.489536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444790, -0.479193, 0.756661,
		-0.846970, -0.049646, -0.529317,
		0.291211, -0.876304, -0.383780,
		38.334953, 39.378349, 19.374403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525120, 39.568230, 19.618135>,  <38.131104, 39.991760, 19.643049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525120, 39.568230, 19.618135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829948, 39.309620, 19.603964>,  <38.012844, 39.154453, 19.595461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829948, 39.309620, 19.603964>,  <37.525120, 39.568230, 19.618135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829948, 39.309620, 19.603964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463663, -0.583083, 0.667106,
		-0.451961, -0.491953, -0.744119,
		0.762068, -0.646527, -0.035430,
		38.058567, 39.115662, 19.593334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196815, 38.925404, 19.627211>,  <37.525120, 39.568230, 19.618135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196815, 38.925404, 19.627211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574345, 38.889847, 19.754520>,  <37.800861, 38.868515, 19.830906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574345, 38.889847, 19.754520>,  <37.196815, 38.925404, 19.627211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574345, 38.889847, 19.754520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313676, -0.543969, 0.778270,
		0.103952, -0.834384, -0.541293,
		0.943823, -0.088888, 0.318273,
		37.857491, 38.863182, 19.850002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272861, 38.243248, 19.734838>,  <37.196815, 38.925404, 19.627211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272861, 38.243248, 19.734838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532742, 38.458385, 19.949732>,  <37.688667, 38.587467, 20.078669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532742, 38.458385, 19.949732>,  <37.272861, 38.243248, 19.734838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532742, 38.458385, 19.949732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321844, -0.445638, 0.835358,
		0.688701, -0.715636, -0.116430,
		0.649698, 0.537840, 0.537234,
		37.727650, 38.619736, 20.110903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574501, 37.800381, 20.174145>,  <37.272861, 38.243248, 19.734838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574501, 37.800381, 20.174145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653976, 38.144394, 20.362133>,  <37.701660, 38.350800, 20.474926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653976, 38.144394, 20.362133>,  <37.574501, 37.800381, 20.174145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653976, 38.144394, 20.362133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356458, -0.383275, 0.852079,
		0.912941, -0.336821, 0.230413,
		0.198686, 0.860030, 0.469970,
		37.713581, 38.402405, 20.503124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911110, 37.542625, 20.686676>,  <37.574501, 37.800381, 20.174145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911110, 37.542625, 20.686676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796318, 37.912128, 20.788120>,  <37.727444, 38.133831, 20.848988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796318, 37.912128, 20.788120>,  <37.911110, 37.542625, 20.686676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796318, 37.912128, 20.788120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139011, -0.302105, 0.943085,
		0.947796, 0.235395, 0.215111,
		-0.286984, 0.923754, 0.253611,
		37.710224, 38.189255, 20.864204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119148, 37.526894, 21.387302>,  <37.911110, 37.542625, 20.686676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119148, 37.526894, 21.387302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897640, 37.859303, 21.366339>,  <37.764736, 38.058746, 21.353762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897640, 37.859303, 21.366339>,  <38.119148, 37.526894, 21.387302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897640, 37.859303, 21.366339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266469, -0.117235, 0.956687,
		0.788882, 0.543747, 0.286362,
		-0.553768, 0.831020, -0.052408,
		37.731510, 38.108608, 21.350616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287262, 37.995312, 21.943233>,  <38.119148, 37.526894, 21.387302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287262, 37.995312, 21.943233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927826, 38.123962, 21.823839>,  <37.712166, 38.201153, 21.752203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927826, 38.123962, 21.823839>,  <38.287262, 37.995312, 21.943233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927826, 38.123962, 21.823839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353077, -0.126110, 0.927056,
		0.260522, 0.938432, 0.226879,
		-0.898591, 0.321624, -0.298484,
		37.658249, 38.220451, 21.734295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023739, 38.641716, 22.289433>,  <38.287262, 37.995312, 21.943233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023739, 38.641716, 22.289433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698002, 38.440651, 22.173372>,  <37.502560, 38.320011, 22.103737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698002, 38.440651, 22.173372>,  <38.023739, 38.641716, 22.289433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698002, 38.440651, 22.173372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319803, -0.028564, 0.947053,
		-0.484333, 0.864013, -0.137491,
		-0.814339, -0.502659, -0.290149,
		37.453701, 38.289852, 22.086329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423923, 38.896095, 22.679747>,  <38.023739, 38.641716, 22.289433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423923, 38.896095, 22.679747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269016, 38.556713, 22.535444>,  <37.176071, 38.353085, 22.448862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269016, 38.556713, 22.535444>,  <37.423923, 38.896095, 22.679747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269016, 38.556713, 22.535444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547526, -0.103170, 0.830404,
		-0.741783, 0.519109, -0.424599,
		-0.387264, -0.848458, -0.360755,
		37.152836, 38.302177, 22.427217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762901, 38.950729, 22.846210>,  <37.423923, 38.896095, 22.679747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762901, 38.950729, 22.846210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785046, 38.554329, 22.797459>,  <36.798332, 38.316490, 22.768208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785046, 38.554329, 22.797459>,  <36.762901, 38.950729, 22.846210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785046, 38.554329, 22.797459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621112, -0.129757, 0.772906,
		-0.781764, 0.032912, -0.622705,
		0.055362, -0.990999, -0.121881,
		36.801655, 38.257030, 22.760895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088280, 38.642258, 22.693239>,  <36.762901, 38.950729, 22.846210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088280, 38.642258, 22.693239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324436, 38.351475, 22.833504>,  <36.466129, 38.177006, 22.917662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324436, 38.351475, 22.833504>,  <36.088280, 38.642258, 22.693239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324436, 38.351475, 22.833504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602220, -0.107510, 0.791058,
		-0.537367, -0.678213, -0.501263,
		0.590396, -0.726959, 0.350662,
		36.501556, 38.133389, 22.938702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595276, 38.066383, 22.869934>,  <36.088280, 38.642258, 22.693239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595276, 38.066383, 22.869934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922665, 38.004272, 23.091198>,  <36.119099, 37.967007, 23.223957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922665, 38.004272, 23.091198>,  <35.595276, 38.066383, 22.869934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922665, 38.004272, 23.091198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570644, -0.107748, 0.814098,
		-0.066805, -0.981978, -0.176794,
		0.818476, -0.155272, 0.553162,
		36.168205, 37.957687, 23.257147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273769, 37.717766, 23.346571>,  <35.595276, 38.066383, 22.869934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273769, 37.717766, 23.346571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622051, 37.809311, 23.520697>,  <35.831020, 37.864239, 23.625172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622051, 37.809311, 23.520697>,  <35.273769, 37.717766, 23.346571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622051, 37.809311, 23.520697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419794, -0.115288, 0.900268,
		0.256225, -0.966608, -0.004306,
		0.870702, 0.228864, 0.435315,
		35.883263, 37.877972, 23.651291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420380, 37.224880, 23.800608>,  <35.273769, 37.717766, 23.346571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420380, 37.224880, 23.800608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625862, 37.542892, 23.929625>,  <35.749153, 37.733700, 24.007034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625862, 37.542892, 23.929625>,  <35.420380, 37.224880, 23.800608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625862, 37.542892, 23.929625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303822, -0.183007, 0.934987,
		0.802371, -0.578303, 0.147536,
		0.513705, 0.795031, 0.322540,
		35.779972, 37.781403, 24.026386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668419, 36.987972, 24.353588>,  <35.420380, 37.224880, 23.800608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668419, 36.987972, 24.353588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728230, 37.379486, 24.409624>,  <35.764114, 37.614395, 24.443245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728230, 37.379486, 24.409624>,  <35.668419, 36.987972, 24.353588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728230, 37.379486, 24.409624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440261, -0.060954, 0.895798,
		0.885332, -0.195618, 0.421806,
		0.149524, 0.978784, 0.140088,
		35.773087, 37.673122, 24.451651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893585, 37.029636, 25.038284>,  <35.668419, 36.987972, 24.353588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893585, 37.029636, 25.038284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769066, 37.396473, 24.938652>,  <35.694355, 37.616573, 24.878874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769066, 37.396473, 24.938652>,  <35.893585, 37.029636, 25.038284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769066, 37.396473, 24.938652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503426, 0.063159, 0.861727,
		0.806013, 0.393645, 0.442025,
		-0.311296, 0.917090, -0.249079,
		35.675678, 37.671600, 24.863928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118778, 37.488953, 25.520765>,  <35.893585, 37.029636, 25.038284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118778, 37.488953, 25.520765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809814, 37.687408, 25.362160>,  <35.624435, 37.806484, 25.266996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809814, 37.687408, 25.362160>,  <36.118778, 37.488953, 25.520765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809814, 37.687408, 25.362160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481538, -0.050401, 0.874975,
		0.414129, 0.866776, 0.277843,
		-0.772411, 0.496144, -0.396514,
		35.578091, 37.836250, 25.243206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080921, 38.071243, 25.972622>,  <36.118778, 37.488953, 25.520765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080921, 38.071243, 25.972622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734364, 38.056465, 25.773424>,  <35.526428, 38.047600, 25.653906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734364, 38.056465, 25.773424>,  <36.080921, 38.071243, 25.972622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734364, 38.056465, 25.773424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493757, -0.085640, 0.865373,
		-0.074619, 0.995641, 0.055957,
		-0.866393, -0.036944, -0.497995,
		35.474445, 38.045383, 25.624025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707829, 38.613316, 26.335276>,  <36.080921, 38.071243, 25.972622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707829, 38.613316, 26.335276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454910, 38.374306, 26.138029>,  <35.303158, 38.230900, 26.019680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454910, 38.374306, 26.138029>,  <35.707829, 38.613316, 26.335276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454910, 38.374306, 26.138029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538946, -0.117996, 0.834035,
		-0.556544, 0.793120, -0.247426,
		-0.632295, -0.597526, -0.493118,
		35.265221, 38.195049, 25.990093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037712, 38.762585, 26.546028>,  <35.707829, 38.613316, 26.335276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037712, 38.762585, 26.546028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992512, 38.392006, 26.402405>,  <34.965393, 38.169659, 26.316231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992512, 38.392006, 26.402405>,  <35.037712, 38.762585, 26.546028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992512, 38.392006, 26.402405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488646, -0.262835, 0.831951,
		-0.865134, 0.269462, -0.423006,
		-0.112999, -0.926449, -0.359059,
		34.958611, 38.114071, 26.294687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313053, 38.499523, 26.602411>,  <35.037712, 38.762585, 26.546028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313053, 38.499523, 26.602411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513317, 38.153313, 26.596771>,  <34.633476, 37.945587, 26.593388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513317, 38.153313, 26.596771>,  <34.313053, 38.499523, 26.602411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513317, 38.153313, 26.596771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618892, -0.369290, 0.693252,
		-0.605235, -0.338359, -0.720558,
		0.500663, -0.865528, -0.014100,
		34.663517, 37.893654, 26.592541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787800, 38.049473, 26.641233>,  <34.313053, 38.499523, 26.602411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787800, 38.049473, 26.641233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107319, 37.835316, 26.750980>,  <34.299030, 37.706821, 26.816830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107319, 37.835316, 26.750980>,  <33.787800, 38.049473, 26.641233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107319, 37.835316, 26.750980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538596, -0.433253, 0.722638,
		-0.268022, -0.725017, -0.634441,
		0.798798, -0.535390, 0.274370,
		34.346958, 37.674698, 26.833290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461441, 37.474174, 26.730186>,  <33.787800, 38.049473, 26.641233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461441, 37.474174, 26.730186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807892, 37.422611, 26.923353>,  <34.015762, 37.391674, 27.039253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807892, 37.422611, 26.923353>,  <33.461441, 37.474174, 26.730186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807892, 37.422611, 26.923353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459413, -0.585918, 0.667562,
		0.196893, -0.800051, -0.566703,
		0.866125, -0.128912, 0.482917,
		34.067730, 37.383938, 27.068228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458389, 36.796417, 26.822123>,  <33.461441, 37.474174, 26.730186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458389, 36.796417, 26.822123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713085, 36.935200, 27.097565>,  <33.865902, 37.018471, 27.262831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713085, 36.935200, 27.097565>,  <33.458389, 36.796417, 26.822123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713085, 36.935200, 27.097565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345810, -0.669706, 0.657198,
		0.689184, -0.656593, -0.306449,
		0.636742, 0.346957, 0.688607,
		33.904106, 37.039288, 27.304148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804348, 36.235538, 27.181358>,  <33.458389, 36.796417, 26.822123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804348, 36.235538, 27.181358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835152, 36.538887, 27.440262>,  <33.853634, 36.720898, 27.595604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835152, 36.538887, 27.440262>,  <33.804348, 36.235538, 27.181358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835152, 36.538887, 27.440262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075440, -0.642894, 0.762231,
		0.994172, -0.107530, 0.007701,
		0.077012, 0.758370, 0.647259,
		33.858253, 36.766399, 27.634439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287766, 36.019829, 27.655758>,  <33.804348, 36.235538, 27.181358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287766, 36.019829, 27.655758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079044, 36.311546, 27.832775>,  <33.953812, 36.486576, 27.938986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079044, 36.311546, 27.832775>,  <34.287766, 36.019829, 27.655758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079044, 36.311546, 27.832775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031579, -0.534927, 0.844308,
		0.852479, 0.426591, 0.302159,
		-0.521807, 0.729297, 0.442542,
		33.922501, 36.530334, 27.965538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567371, 36.150627, 28.377348>,  <34.287766, 36.019829, 27.655758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567371, 36.150627, 28.377348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220844, 36.345463, 28.421606>,  <34.012928, 36.462364, 28.448160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220844, 36.345463, 28.421606>,  <34.567371, 36.150627, 28.377348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220844, 36.345463, 28.421606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068627, -0.335477, 0.939546,
		0.494763, 0.806348, 0.324056,
		-0.866314, 0.487091, 0.110644,
		33.960949, 36.491589, 28.454800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681843, 36.670818, 28.872869>,  <34.567371, 36.150627, 28.377348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681843, 36.670818, 28.872869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294872, 36.570267, 28.860888>,  <34.062691, 36.509933, 28.853699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294872, 36.570267, 28.860888>,  <34.681843, 36.670818, 28.872869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294872, 36.570267, 28.860888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022119, -0.201807, 0.979176,
		-0.252191, 0.946616, 0.200793,
		-0.967425, -0.251381, -0.029955,
		34.004646, 36.494854, 28.851900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515739, 36.771145, 29.129238>,  <34.681843, 36.670818, 28.872869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515739, 36.771145, 29.129238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666256, 36.660286, 29.482870>,  <35.756565, 36.593769, 29.695049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666256, 36.660286, 29.482870>,  <35.515739, 36.771145, 29.129238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666256, 36.660286, 29.482870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867962, 0.439255, -0.231726,
		-0.324115, 0.854544, 0.405838,
		0.376287, -0.277146, 0.884081,
		35.779140, 36.577141, 29.748095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686371, 37.369301, 29.501719>,  <35.515739, 36.771145, 29.129238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686371, 37.369301, 29.501719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909595, 37.075359, 29.655891>,  <36.043530, 36.898994, 29.748394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909595, 37.075359, 29.655891>,  <35.686371, 37.369301, 29.501719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909595, 37.075359, 29.655891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820619, 0.419827, -0.387723,
		0.123107, 0.532664, 0.837326,
		0.558058, -0.734857, 0.385430,
		36.077011, 36.854900, 29.771521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268997, 37.688248, 29.908463>,  <35.686371, 37.369301, 29.501719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268997, 37.688248, 29.908463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384247, 37.322189, 29.795689>,  <36.453396, 37.102554, 29.728024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384247, 37.322189, 29.795689>,  <36.268997, 37.688248, 29.908463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384247, 37.322189, 29.795689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791916, 0.393243, -0.467150,
		0.538381, -0.088671, 0.838024,
		0.288124, -0.915149, -0.281935,
		36.470684, 37.047646, 29.711109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973209, 37.871868, 29.774778>,  <36.268997, 37.688248, 29.908463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973209, 37.871868, 29.774778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910320, 37.508808, 29.619114>,  <36.872585, 37.290970, 29.525715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910320, 37.508808, 29.619114>,  <36.973209, 37.871868, 29.774778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910320, 37.508808, 29.619114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695103, 0.178210, -0.696472,
		0.701508, -0.380007, 0.602894,
		-0.157223, -0.907654, -0.389160,
		36.863152, 37.236511, 29.502365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652603, 37.627022, 29.684263>,  <36.973209, 37.871868, 29.774778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652603, 37.627022, 29.684263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433811, 37.371864, 29.467407>,  <37.302536, 37.218769, 29.337294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433811, 37.371864, 29.467407>,  <37.652603, 37.627022, 29.684263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433811, 37.371864, 29.467407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601986, 0.150323, -0.784230,
		0.581749, -0.755314, 0.301778,
		-0.546975, -0.637891, -0.542138,
		37.269718, 37.180496, 29.304766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132755, 37.302254, 29.349422>,  <37.652603, 37.627022, 29.684263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132755, 37.302254, 29.349422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811375, 37.215832, 29.127508>,  <37.618546, 37.163979, 28.994360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811375, 37.215832, 29.127508>,  <38.132755, 37.302254, 29.349422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811375, 37.215832, 29.127508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559239, 0.045813, -0.827740,
		0.204252, -0.975306, 0.084016,
		-0.803451, -0.216052, -0.554786,
		37.570339, 37.151016, 28.961073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291584, 36.806381, 28.893951>,  <38.132755, 37.302254, 29.349422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291584, 36.806381, 28.893951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982342, 36.992020, 28.721010>,  <37.796799, 37.103401, 28.617245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982342, 36.992020, 28.721010>,  <38.291584, 36.806381, 28.893951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982342, 36.992020, 28.721010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541888, 0.129002, -0.830491,
		-0.329650, -0.876343, -0.351218,
		-0.773103, 0.464092, -0.432354,
		37.750412, 37.131248, 28.591305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956161, 36.401180, 28.285538>,  <38.291584, 36.806381, 28.893951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956161, 36.401180, 28.285538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879513, 36.792278, 28.251381>,  <37.833523, 37.026936, 28.230886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879513, 36.792278, 28.251381>,  <37.956161, 36.401180, 28.285538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879513, 36.792278, 28.251381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463498, 0.013463, -0.885996,
		-0.865130, -0.209357, -0.455763,
		-0.191625, 0.977747, -0.085390,
		37.822025, 37.085602, 28.225763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634651, 36.501183, 27.600044>,  <37.956161, 36.401180, 28.285538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634651, 36.501183, 27.600044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759174, 36.870472, 27.690157>,  <37.833889, 37.092045, 27.744225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759174, 36.870472, 27.690157>,  <37.634651, 36.501183, 27.600044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759174, 36.870472, 27.690157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256842, 0.146501, -0.955285,
		-0.914942, 0.355251, -0.191515,
		0.311309, 0.923220, 0.225283,
		37.852566, 37.147438, 27.757742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562954, 36.875759, 27.035856>,  <37.634651, 36.501183, 27.600044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562954, 36.875759, 27.035856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813801, 37.135059, 27.208601>,  <37.964310, 37.290638, 27.312248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813801, 37.135059, 27.208601>,  <37.562954, 36.875759, 27.035856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813801, 37.135059, 27.208601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446681, 0.154921, -0.881178,
		-0.638125, 0.745504, -0.192407,
		0.627114, 0.648247, 0.431861,
		38.001934, 37.329533, 27.338160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519871, 37.544025, 26.630415>,  <37.562954, 36.875759, 27.035856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519871, 37.544025, 26.630415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864090, 37.574329, 26.831894>,  <38.070621, 37.592514, 26.952782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864090, 37.574329, 26.831894>,  <37.519871, 37.544025, 26.630415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864090, 37.574329, 26.831894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459952, 0.309285, -0.832338,
		-0.218847, 0.947946, 0.231308,
		0.860552, 0.075764, 0.503696,
		38.122257, 37.597057, 26.983004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719364, 38.031902, 26.367952>,  <37.519871, 37.544025, 26.630415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719364, 38.031902, 26.367952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060627, 37.897984, 26.527973>,  <38.265385, 37.817631, 26.623985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060627, 37.897984, 26.527973>,  <37.719364, 38.031902, 26.367952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060627, 37.897984, 26.527973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515169, 0.420121, -0.747060,
		0.082044, 0.843451, 0.530904,
		0.853153, -0.334797, 0.400052,
		38.316574, 37.797543, 26.647989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207565, 38.642315, 26.505352>,  <37.719364, 38.031902, 26.367952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207565, 38.642315, 26.505352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457500, 38.330452, 26.488764>,  <38.607460, 38.143333, 26.478811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457500, 38.330452, 26.488764>,  <38.207565, 38.642315, 26.505352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457500, 38.330452, 26.488764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607872, 0.519124, -0.600834,
		0.489972, 0.350213, 0.798297,
		0.624835, -0.779655, -0.041472,
		38.644951, 38.096554, 26.476322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797447, 38.992725, 26.392809>,  <38.207565, 38.642315, 26.505352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797447, 38.992725, 26.392809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892033, 38.621132, 26.278919>,  <38.948784, 38.398174, 26.210585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892033, 38.621132, 26.278919>,  <38.797447, 38.992725, 26.392809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892033, 38.621132, 26.278919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416648, 0.361673, -0.834025,
		0.877776, 0.078585, 0.472582,
		0.236462, -0.928987, -0.284725,
		38.962971, 38.342434, 26.193502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557537, 38.975090, 26.146456>,  <38.797447, 38.992725, 26.392809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557537, 38.975090, 26.146456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390476, 38.650475, 25.983006>,  <39.290237, 38.455708, 25.884935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390476, 38.650475, 25.983006>,  <39.557537, 38.975090, 26.146456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390476, 38.650475, 25.983006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484232, 0.181736, -0.855857,
		0.768819, -0.555324, 0.317068,
		-0.417656, -0.811534, -0.408627,
		39.265179, 38.407013, 25.860416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098225, 38.734615, 25.746138>,  <39.557537, 38.975090, 26.146456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098225, 38.734615, 25.746138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756897, 38.598087, 25.588488>,  <39.552101, 38.516171, 25.493896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756897, 38.598087, 25.588488>,  <40.098225, 38.734615, 25.746138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756897, 38.598087, 25.588488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421177, -0.005692, -0.906960,
		0.307325, -0.939928, 0.148616,
		-0.853323, -0.341325, -0.394127,
		39.500900, 38.495689, 25.470249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098045, 38.139366, 25.315035>,  <40.098225, 38.734615, 25.746138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098045, 38.139366, 25.315035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749969, 38.260014, 25.159189>,  <39.541126, 38.332401, 25.065681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749969, 38.260014, 25.159189>,  <40.098045, 38.139366, 25.315035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749969, 38.260014, 25.159189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382774, -0.084090, -0.920007,
		-0.310253, -0.949714, -0.042277,
		-0.870188, 0.301618, -0.389615,
		39.488914, 38.350498, 25.042305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016479, 37.757454, 24.684534>,  <40.098045, 38.139366, 25.315035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016479, 37.757454, 24.684534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752953, 38.055939, 24.646311>,  <39.594837, 38.235031, 24.623377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752953, 38.055939, 24.646311>,  <40.016479, 37.757454, 24.684534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752953, 38.055939, 24.646311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340686, 0.182686, -0.922257,
		-0.670743, -0.640151, -0.374580,
		-0.658815, 0.746212, -0.095556,
		39.555309, 38.279800, 24.617643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843704, 37.803440, 24.019674>,  <40.016479, 37.757454, 24.684534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843704, 37.803440, 24.019674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717041, 38.162472, 24.142368>,  <39.641045, 38.377892, 24.215984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717041, 38.162472, 24.142368>,  <39.843704, 37.803440, 24.019674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717041, 38.162472, 24.142368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308703, 0.403290, -0.861429,
		-0.896901, -0.178087, -0.404789,
		-0.316657, 0.897576, 0.306735,
		39.622044, 38.431744, 24.234388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293530, 38.030659, 23.668642>,  <39.843704, 37.803440, 24.019674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293530, 38.030659, 23.668642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435818, 38.374111, 23.816275>,  <39.521191, 38.580181, 23.904854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435818, 38.374111, 23.816275>,  <39.293530, 38.030659, 23.668642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435818, 38.374111, 23.816275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167756, 0.329838, -0.929013,
		-0.919414, 0.392382, -0.026711,
		0.355718, 0.858629, 0.369082,
		39.542534, 38.631699, 23.927000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852448, 38.634651, 23.340820>,  <39.293530, 38.030659, 23.668642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852448, 38.634651, 23.340820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188240, 38.824711, 23.446272>,  <39.389717, 38.938747, 23.509542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188240, 38.824711, 23.446272>,  <38.852448, 38.634651, 23.340820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188240, 38.824711, 23.446272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083575, 0.366488, -0.926661,
		-0.536921, 0.799949, 0.267950,
		0.839483, 0.475150, 0.263631,
		39.440086, 38.967255, 23.525362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717503, 39.349918, 23.007275>,  <38.852448, 38.634651, 23.340820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717503, 39.349918, 23.007275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086739, 39.213623, 23.078609>,  <39.308281, 39.131847, 23.121410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086739, 39.213623, 23.078609>,  <38.717503, 39.349918, 23.007275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086739, 39.213623, 23.078609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262017, 0.217751, -0.940176,
		0.281517, 0.914595, 0.290282,
		0.923090, -0.340734, 0.178339,
		39.363667, 39.111404, 23.132111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061066, 39.766529, 22.556133>,  <38.717503, 39.349918, 23.007275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061066, 39.766529, 22.556133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335190, 39.495750, 22.663528>,  <39.499664, 39.333282, 22.727966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335190, 39.495750, 22.663528>,  <39.061066, 39.766529, 22.556133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335190, 39.495750, 22.663528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472258, 0.132458, -0.871451,
		0.554366, 0.724012, 0.410470,
		0.685311, -0.676950, 0.268490,
		39.540783, 39.292664, 22.744076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660809, 40.043293, 22.498848>,  <39.061066, 39.766529, 22.556133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660809, 40.043293, 22.498848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715919, 39.648762, 22.462679>,  <39.748985, 39.412045, 22.440977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715919, 39.648762, 22.462679>,  <39.660809, 40.043293, 22.498848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715919, 39.648762, 22.462679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327529, 0.131529, -0.935641,
		0.934742, 0.099294, 0.341172,
		0.137778, -0.986327, -0.090424,
		39.757252, 39.352863, 22.435551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438892, 39.870506, 22.141665>,  <39.660809, 40.043293, 22.498848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438892, 39.870506, 22.141665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217823, 39.539307, 22.103773>,  <40.085182, 39.340588, 22.081038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217823, 39.539307, 22.103773>,  <40.438892, 39.870506, 22.141665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217823, 39.539307, 22.103773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265571, -0.067232, -0.961744,
		0.789951, -0.556690, 0.257049,
		-0.552675, -0.827995, -0.094731,
		40.052021, 39.290909, 22.075354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898613, 39.308838, 21.962536>,  <40.438892, 39.870506, 22.141665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898613, 39.308838, 21.962536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533649, 39.186184, 21.854109>,  <40.314671, 39.112591, 21.789053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533649, 39.186184, 21.854109>,  <40.898613, 39.308838, 21.962536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533649, 39.186184, 21.854109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342024, -0.207541, -0.916486,
		0.224771, -0.928925, 0.294241,
		-0.912413, -0.306637, -0.271065,
		40.259926, 39.094193, 21.772789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977932, 38.675442, 21.638788>,  <40.898613, 39.308838, 21.962536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977932, 38.675442, 21.638788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639645, 38.821518, 21.483150>,  <40.436672, 38.909164, 21.389769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639645, 38.821518, 21.483150>,  <40.977932, 38.675442, 21.638788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639645, 38.821518, 21.483150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378734, -0.102888, -0.919769,
		-0.375924, -0.925229, -0.051296,
		-0.845719, 0.365191, -0.389094,
		40.385929, 38.931076, 21.366423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764942, 38.213303, 21.104446>,  <40.977932, 38.675442, 21.638788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764942, 38.213303, 21.104446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599682, 38.562935, 21.002234>,  <40.500526, 38.772713, 20.940907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599682, 38.562935, 21.002234>,  <40.764942, 38.213303, 21.104446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599682, 38.562935, 21.002234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297869, -0.135457, -0.944947,
		-0.860570, -0.466520, -0.204397,
		-0.413150, 0.874077, -0.255532,
		40.475739, 38.825157, 20.925573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410515, 38.041164, 20.425388>,  <40.764942, 38.213303, 21.104446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410515, 38.041164, 20.425388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465725, 38.437145, 20.437666>,  <40.498852, 38.674732, 20.445032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465725, 38.437145, 20.437666>,  <40.410515, 38.041164, 20.425388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465725, 38.437145, 20.437666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260977, -0.006459, -0.965324,
		-0.955427, 0.141250, -0.259246,
		0.138026, 0.989953, 0.030692,
		40.507133, 38.734131, 20.446873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117329, 38.305504, 19.725479>,  <40.410515, 38.041164, 20.425388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117329, 38.305504, 19.725479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341827, 38.605103, 19.866341>,  <40.476524, 38.784863, 19.950857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341827, 38.605103, 19.866341>,  <40.117329, 38.305504, 19.725479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341827, 38.605103, 19.866341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355121, 0.166401, -0.919891,
		-0.747593, 0.641340, -0.172593,
		0.561243, 0.748995, 0.352154,
		40.510201, 38.829800, 19.971987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889359, 38.931625, 19.400955>,  <40.117329, 38.305504, 19.725479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889359, 38.931625, 19.400955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262676, 38.973324, 19.538416>,  <40.486668, 38.998344, 19.620893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262676, 38.973324, 19.538416>,  <39.889359, 38.931625, 19.400955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262676, 38.973324, 19.538416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340761, 0.044956, -0.939074,
		-0.113346, 0.993535, 0.006433,
		0.933292, 0.104248, 0.343654,
		40.542664, 39.004597, 19.641512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190609, 39.478165, 18.961262>,  <39.889359, 38.931625, 19.400955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190609, 39.478165, 18.961262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496700, 39.279137, 19.124647>,  <40.680355, 39.159718, 19.222679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496700, 39.279137, 19.124647>,  <40.190609, 39.478165, 18.961262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496700, 39.279137, 19.124647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425280, -0.085594, -0.901005,
		0.483277, 0.863189, 0.146109,
		0.765232, -0.497573, 0.408463,
		40.726269, 39.129864, 19.247187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728466, 39.701408, 18.606117>,  <40.190609, 39.478165, 18.961262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728466, 39.701408, 18.606117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871876, 39.372543, 18.782980>,  <40.957920, 39.175224, 18.889097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871876, 39.372543, 18.782980>,  <40.728466, 39.701408, 18.606117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871876, 39.372543, 18.782980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418934, -0.281571, -0.863257,
		0.834240, 0.494732, 0.243484,
		0.358523, -0.822167, 0.442158,
		40.979431, 39.125893, 18.915627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465557, 39.677147, 18.334978>,  <40.728466, 39.701408, 18.606117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465557, 39.677147, 18.334978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355721, 39.320435, 18.478827>,  <41.289818, 39.106407, 18.565136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355721, 39.320435, 18.478827>,  <41.465557, 39.677147, 18.334978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355721, 39.320435, 18.478827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422171, -0.447831, -0.788175,
		0.863928, -0.064604, 0.499454,
		-0.274590, -0.891781, 0.359619,
		41.273342, 39.052898, 18.586712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011917, 39.272869, 18.280647>,  <41.465557, 39.677147, 18.334978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011917, 39.272869, 18.280647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698498, 39.024338, 18.280180>,  <41.510445, 38.875217, 18.279900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698498, 39.024338, 18.280180>,  <42.011917, 39.272869, 18.280647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698498, 39.024338, 18.280180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374895, -0.471275, -0.798344,
		0.495482, -0.625982, 0.602200,
		-0.783551, -0.621327, -0.001169,
		41.463432, 38.837940, 18.279829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461407, 38.708107, 18.235052>,  <42.011917, 39.272869, 18.280647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461407, 38.708107, 18.235052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082668, 38.639553, 18.126154>,  <41.855427, 38.598419, 18.060816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082668, 38.639553, 18.126154>,  <42.461407, 38.708107, 18.235052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082668, 38.639553, 18.126154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321671, -0.515081, -0.794493,
		-0.004064, -0.839833, 0.542830,
		-0.946843, -0.171384, -0.272243,
		41.798615, 38.588139, 18.044481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516544, 37.981518, 18.055346>,  <42.461407, 38.708107, 18.235052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516544, 37.981518, 18.055346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183811, 38.130638, 17.890869>,  <41.984173, 38.220108, 17.792183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183811, 38.130638, 17.890869>,  <42.516544, 37.981518, 18.055346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183811, 38.130638, 17.890869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115205, -0.608739, -0.784961,
		-0.542937, -0.700328, 0.463422,
		-0.831834, 0.372796, -0.411188,
		41.934261, 38.242477, 17.767513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335342, 37.475941, 17.635334>,  <42.516544, 37.981518, 18.055346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335342, 37.475941, 17.635334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054531, 37.739548, 17.527363>,  <41.886044, 37.897713, 17.462580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054531, 37.739548, 17.527363>,  <42.335342, 37.475941, 17.635334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054531, 37.739548, 17.527363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153143, -0.509861, -0.846516,
		-0.695492, -0.552937, 0.458859,
		-0.702024, 0.659016, -0.269926,
		41.843925, 37.937252, 17.446384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683285, 37.058071, 18.205944>,  <42.335342, 37.475941, 17.635334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683285, 37.058071, 18.205944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032459, 37.073868, 18.011454>,  <43.241966, 37.083344, 17.894760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032459, 37.073868, 18.011454>,  <42.683285, 37.058071, 18.205944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032459, 37.073868, 18.011454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471529, 0.187182, 0.861756,
		0.125038, -0.981532, 0.144781,
		0.872941, 0.039484, -0.486225,
		43.294342, 37.085712, 17.865585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191490, 36.714676, 18.568020>,  <42.683285, 37.058071, 18.205944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191490, 36.714676, 18.568020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398228, 36.969769, 18.339577>,  <43.522270, 37.122826, 18.202511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398228, 36.969769, 18.339577>,  <43.191490, 36.714676, 18.568020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398228, 36.969769, 18.339577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484302, 0.332288, 0.809343,
		0.705919, -0.694894, -0.137115,
		0.516846, 0.637736, -0.571107,
		43.553280, 37.161091, 18.168245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916538, 36.663193, 18.748791>,  <43.191490, 36.714676, 18.568020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916538, 36.663193, 18.748791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844265, 37.026928, 18.598877>,  <43.800900, 37.245167, 18.508928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844265, 37.026928, 18.598877>,  <43.916538, 36.663193, 18.748791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844265, 37.026928, 18.598877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411319, 0.415993, 0.811028,
		0.893404, -0.007615, -0.449190,
		-0.180684, 0.909336, -0.374782,
		43.790058, 37.299728, 18.486443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446415, 36.993225, 19.040070>,  <43.916538, 36.663193, 18.748791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446415, 36.993225, 19.040070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200546, 37.280556, 18.909727>,  <44.053024, 37.452953, 18.831522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200546, 37.280556, 18.909727>,  <44.446415, 36.993225, 19.040070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200546, 37.280556, 18.909727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215736, 0.550461, 0.806505,
		0.758704, 0.425440, -0.493324,
		-0.614675, 0.718327, -0.325854,
		44.016144, 37.496056, 18.811972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.802780, 37.634777, 19.119030>,  <44.446415, 36.993225, 19.040070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.802780, 37.634777, 19.119030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414131, 37.728703, 19.107557>,  <44.180943, 37.785057, 19.100674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414131, 37.728703, 19.107557>,  <44.802780, 37.634777, 19.119030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414131, 37.728703, 19.107557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043018, 0.294608, 0.954649,
		0.232610, 0.926321, -0.296347,
		-0.971618, 0.234809, -0.028680,
		44.122646, 37.799145, 19.098953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.752472, 38.145702, 19.522936>,  <44.802780, 37.634777, 19.119030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.752472, 38.145702, 19.522936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359516, 38.074387, 19.500586>,  <44.123741, 38.031597, 19.487175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359516, 38.074387, 19.500586>,  <44.752472, 38.145702, 19.522936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359516, 38.074387, 19.500586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105614, 0.283210, 0.953225,
		-0.154126, 0.942340, -0.297053,
		-0.982390, -0.178290, -0.055874,
		44.064800, 38.020901, 19.483824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381203, 38.807941, 19.782034>,  <44.752472, 38.145702, 19.522936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381203, 38.807941, 19.782034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110870, 38.514587, 19.811426>,  <43.948673, 38.338573, 19.829062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110870, 38.514587, 19.811426>,  <44.381203, 38.807941, 19.782034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110870, 38.514587, 19.811426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178088, 0.259219, 0.949258,
		-0.715222, 0.628448, -0.305795,
		-0.675827, -0.733388, 0.073480,
		43.908123, 38.294571, 19.833469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834736, 39.076927, 20.063793>,  <44.381203, 38.807941, 19.782034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834736, 39.076927, 20.063793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.755981, 38.693596, 20.146582>,  <43.708729, 38.463596, 20.196255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.755981, 38.693596, 20.146582>,  <43.834736, 39.076927, 20.063793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.755981, 38.693596, 20.146582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243688, 0.252310, 0.936459,
		-0.949659, 0.133938, -0.283210,
		-0.196884, -0.958332, 0.206970,
		43.696915, 38.406097, 20.208673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215523, 39.119278, 20.450348>,  <43.834736, 39.076927, 20.063793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215523, 39.119278, 20.450348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333073, 38.745487, 20.530743>,  <43.403603, 38.521214, 20.578979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333073, 38.745487, 20.530743>,  <43.215523, 39.119278, 20.450348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333073, 38.745487, 20.530743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269390, 0.120777, 0.955428,
		-0.917098, -0.334917, -0.216245,
		0.293872, -0.934475, 0.200987,
		43.421234, 38.465145, 20.591040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641499, 38.726875, 20.734207>,  <43.215523, 39.119278, 20.450348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641499, 38.726875, 20.734207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991230, 38.589245, 20.871124>,  <43.201069, 38.506668, 20.953276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991230, 38.589245, 20.871124>,  <42.641499, 38.726875, 20.734207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991230, 38.589245, 20.871124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302998, 0.163973, 0.938778,
		-0.379136, -0.924514, 0.039112,
		0.874327, -0.344074, 0.342294,
		43.253529, 38.486023, 20.973812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511787, 38.407635, 21.437893>,  <42.641499, 38.726875, 20.734207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.511787, 38.407635, 21.437893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911388, 38.390480, 21.442869>,  <43.151150, 38.380188, 21.445856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911388, 38.390480, 21.442869>,  <42.511787, 38.407635, 21.437893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911388, 38.390480, 21.442869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008149, 0.098884, 0.995066,
		-0.043907, -0.994174, 0.098436,
		0.999003, -0.042888, 0.012443,
		43.211090, 38.377613, 21.446602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633873, 37.823360, 21.764349>,  <42.511787, 38.407635, 21.437893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633873, 37.823360, 21.764349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961155, 38.050026, 21.803200>,  <43.157524, 38.186024, 21.826509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961155, 38.050026, 21.803200>,  <42.633873, 37.823360, 21.764349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961155, 38.050026, 21.803200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002215, -0.172041, 0.985087,
		0.574923, -0.805788, -0.142020,
		0.818205, 0.566664, 0.097125,
		43.206615, 38.220024, 21.832336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142254, 37.385204, 22.036043>,  <42.633873, 37.823360, 21.764349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142254, 37.385204, 22.036043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213623, 37.767193, 22.130861>,  <43.256443, 37.996387, 22.187752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213623, 37.767193, 22.130861>,  <43.142254, 37.385204, 22.036043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213623, 37.767193, 22.130861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085724, -0.224907, 0.970602,
		0.980213, -0.193496, 0.041736,
		0.178421, 0.954974, 0.237044,
		43.267151, 38.053684, 22.201975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425949, 37.204262, 22.635332>,  <43.142254, 37.385204, 22.036043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425949, 37.204262, 22.635332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.343029, 37.593590, 22.674667>,  <43.293278, 37.827187, 22.698269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.343029, 37.593590, 22.674667>,  <43.425949, 37.204262, 22.635332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.343029, 37.593590, 22.674667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092848, -0.119643, 0.988466,
		0.973861, 0.195779, 0.115174,
		-0.207301, 0.973322, 0.098338,
		43.280838, 37.885586, 22.704168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775005, 37.404778, 23.238604>,  <43.425949, 37.204262, 22.635332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775005, 37.404778, 23.238604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484562, 37.675488, 23.190035>,  <43.310295, 37.837914, 23.160892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484562, 37.675488, 23.190035>,  <43.775005, 37.404778, 23.238604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484562, 37.675488, 23.190035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206853, -0.046595, 0.977262,
		0.655732, 0.734711, 0.173826,
		-0.726104, 0.676778, -0.121423,
		43.266731, 37.878521, 23.153608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824715, 37.818775, 23.834198>,  <43.775005, 37.404778, 23.238604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824715, 37.818775, 23.834198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456486, 37.895424, 23.698067>,  <43.235550, 37.941414, 23.616388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456486, 37.895424, 23.698067>,  <43.824715, 37.818775, 23.834198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456486, 37.895424, 23.698067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383421, -0.277442, 0.880917,
		0.074384, 0.941438, 0.328879,
		-0.920574, 0.191625, -0.340330,
		43.180313, 37.952911, 23.595968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593403, 37.993500, 24.416378>,  <43.824715, 37.818775, 23.834198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593403, 37.993500, 24.416378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258617, 37.965611, 24.199257>,  <43.057747, 37.948875, 24.068983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258617, 37.965611, 24.199257>,  <43.593403, 37.993500, 24.416378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258617, 37.965611, 24.199257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525543, -0.174256, 0.832730,
		-0.152647, 0.982229, 0.109203,
		-0.836961, -0.069722, -0.542804,
		43.007530, 37.944695, 24.036415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212040, 38.607101, 24.611250>,  <43.593403, 37.993500, 24.416378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.212040, 38.607101, 24.611250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966152, 38.325916, 24.468163>,  <42.818619, 38.157204, 24.382309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966152, 38.325916, 24.468163>,  <43.212040, 38.607101, 24.611250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966152, 38.325916, 24.468163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457861, -0.051266, 0.887544,
		-0.642252, 0.709373, -0.290347,
		-0.614715, -0.702966, -0.357720,
		42.781738, 38.115025, 24.360847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481064, 38.827770, 24.748838>,  <43.212040, 38.607101, 24.611250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481064, 38.827770, 24.748838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493660, 38.429371, 24.715372>,  <42.501217, 38.190331, 24.695292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493660, 38.429371, 24.715372>,  <42.481064, 38.827770, 24.748838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493660, 38.429371, 24.715372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566159, -0.086760, 0.819717,
		-0.823694, 0.021555, -0.566625,
		0.031491, -0.995996, -0.083667,
		42.503109, 38.130573, 24.690271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740742, 38.635921, 24.965364>,  <42.481064, 38.827770, 24.748838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740742, 38.635921, 24.965364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906673, 38.271969, 24.963243>,  <42.006233, 38.053596, 24.961971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906673, 38.271969, 24.963243>,  <41.740742, 38.635921, 24.965364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906673, 38.271969, 24.963243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593862, -0.275158, 0.756053,
		-0.689378, -0.310488, -0.654489,
		0.414833, -0.909882, -0.005302,
		42.031124, 37.999004, 24.961653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195946, 38.098015, 24.868828>,  <41.740742, 38.635921, 24.965364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195946, 38.098015, 24.868828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515987, 37.938782, 25.048319>,  <41.708012, 37.843243, 25.156013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515987, 37.938782, 25.048319>,  <41.195946, 38.098015, 24.868828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515987, 37.938782, 25.048319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592041, -0.403682, 0.697515,
		-0.096527, -0.823753, -0.558672,
		0.800106, -0.398086, 0.448730,
		41.756020, 37.819355, 25.182938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953907, 37.403572, 25.069689>,  <41.195946, 38.098015, 24.868828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953907, 37.403572, 25.069689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266174, 37.497688, 25.301271>,  <41.453537, 37.554157, 25.440222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266174, 37.497688, 25.301271>,  <40.953907, 37.403572, 25.069689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266174, 37.497688, 25.301271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456490, -0.418014, 0.785418,
		0.426812, -0.877441, -0.218925,
		0.780672, 0.235289, 0.578956,
		41.500378, 37.568275, 25.474958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935806, 36.789959, 25.598883>,  <40.953907, 37.403572, 25.069689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935806, 36.789959, 25.598883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175846, 37.073864, 25.746460>,  <41.319870, 37.244205, 25.835007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175846, 37.073864, 25.746460>,  <40.935806, 36.789959, 25.598883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175846, 37.073864, 25.746460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375944, -0.156872, 0.913267,
		0.706080, -0.686752, 0.172693,
		0.600098, 0.709763, 0.368944,
		41.355877, 37.286793, 25.857143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173733, 36.395679, 26.197134>,  <40.935806, 36.789959, 25.598883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173733, 36.395679, 26.197134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259007, 36.778843, 26.274031>,  <41.310173, 37.008743, 26.320169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259007, 36.778843, 26.274031>,  <41.173733, 36.395679, 26.197134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259007, 36.778843, 26.274031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132175, -0.166679, 0.977112,
		0.968029, -0.233718, 0.091078,
		0.213188, 0.957911, 0.192242,
		41.322964, 37.066216, 26.331703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552162, 36.385223, 26.766088>,  <41.173733, 36.395679, 26.197134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552162, 36.385223, 26.766088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388809, 36.750114, 26.753078>,  <41.290798, 36.969051, 26.745272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388809, 36.750114, 26.753078>,  <41.552162, 36.385223, 26.766088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388809, 36.750114, 26.753078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205696, -0.057253, 0.976940,
		0.889333, 0.405654, 0.211023,
		-0.408381, 0.912232, -0.032525,
		41.266296, 37.023785, 26.743320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797623, 36.576923, 27.304987>,  <41.552162, 36.385223, 26.766088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797623, 36.576923, 27.304987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474720, 36.793880, 27.211906>,  <41.280979, 36.924053, 27.156057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474720, 36.793880, 27.211906>,  <41.797623, 36.576923, 27.304987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474720, 36.793880, 27.211906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237540, 0.062355, 0.969374,
		0.540288, 0.837810, 0.078503,
		-0.807256, 0.542389, -0.232703,
		41.232544, 36.956596, 27.142096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702854, 37.014385, 27.898544>,  <41.797623, 36.576923, 27.304987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702854, 37.014385, 27.898544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353924, 37.028343, 27.703472>,  <41.144566, 37.036716, 27.586430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353924, 37.028343, 27.703472>,  <41.702854, 37.014385, 27.898544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353924, 37.028343, 27.703472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477042, 0.157847, 0.864589,
		0.107150, 0.986847, -0.121047,
		-0.872324, 0.034896, -0.487681,
		41.092228, 37.038811, 27.557167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383614, 37.606346, 28.087036>,  <41.702854, 37.014385, 27.898544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383614, 37.606346, 28.087036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111954, 37.331497, 27.983793>,  <40.948959, 37.166588, 27.921848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111954, 37.331497, 27.983793>,  <41.383614, 37.606346, 28.087036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111954, 37.331497, 27.983793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493091, 0.166623, 0.853872,
		-0.543709, 0.707176, -0.451976,
		-0.679148, -0.687124, -0.258108,
		40.908211, 37.125359, 27.906361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816990, 37.846451, 28.263199>,  <41.383614, 37.606346, 28.087036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816990, 37.846451, 28.263199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719860, 37.460178, 28.226341>,  <40.661583, 37.228413, 28.204227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719860, 37.460178, 28.226341>,  <40.816990, 37.846451, 28.263199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719860, 37.460178, 28.226341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558891, 0.061628, 0.826948,
		-0.792893, 0.252298, -0.554677,
		-0.242821, -0.965685, -0.092143,
		40.647015, 37.170471, 28.198698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180820, 37.846539, 28.547832>,  <40.816990, 37.846451, 28.263199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180820, 37.846539, 28.547832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249977, 37.452591, 28.552610>,  <40.291473, 37.216221, 28.555477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249977, 37.452591, 28.552610>,  <40.180820, 37.846539, 28.547832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249977, 37.452591, 28.552610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635744, -0.102328, 0.765087,
		-0.752288, -0.139872, -0.643816,
		0.172894, -0.984868, 0.011943,
		40.301846, 37.157131, 28.556192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591667, 37.539639, 28.713631>,  <40.180820, 37.846539, 28.547832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591667, 37.539639, 28.713631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830166, 37.226013, 28.782602>,  <39.973263, 37.037838, 28.823986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830166, 37.226013, 28.782602>,  <39.591667, 37.539639, 28.713631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830166, 37.226013, 28.782602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542939, -0.235613, 0.806042,
		-0.591365, -0.574216, -0.566184,
		0.596243, -0.784068, 0.172431,
		40.009037, 36.990791, 28.834332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196030, 37.009880, 28.809746>,  <39.591667, 37.539639, 28.713631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196030, 37.009880, 28.809746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551495, 36.936340, 28.977785>,  <39.764774, 36.892216, 29.078609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551495, 36.936340, 28.977785>,  <39.196030, 37.009880, 28.809746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551495, 36.936340, 28.977785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448733, -0.159956, 0.879234,
		-0.094446, -0.969853, -0.224644,
		0.888661, -0.183846, 0.420098,
		39.818092, 36.881187, 29.103815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220066, 36.338768, 29.156040>,  <39.196030, 37.009880, 28.809746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220066, 36.338768, 29.156040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513390, 36.546169, 29.331955>,  <39.689384, 36.670609, 29.437504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513390, 36.546169, 29.331955>,  <39.220066, 36.338768, 29.156040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513390, 36.546169, 29.331955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187344, -0.467708, 0.863801,
		0.653574, -0.715825, -0.245837,
		0.733310, 0.518502, 0.439788,
		39.733383, 36.701721, 29.463892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525135, 35.853687, 29.631458>,  <39.220066, 36.338768, 29.156040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525135, 35.853687, 29.631458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632313, 36.221302, 29.747097>,  <39.696621, 36.441872, 29.816481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632313, 36.221302, 29.747097>,  <39.525135, 35.853687, 29.631458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632313, 36.221302, 29.747097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085263, -0.276273, 0.957290,
		0.959654, -0.281148, 0.004334,
		0.267943, 0.919037, 0.289098,
		39.712696, 36.497013, 29.833826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020309, 35.757996, 30.200333>,  <39.525135, 35.853687, 29.631458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020309, 35.757996, 30.200333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887684, 36.132332, 30.248114>,  <39.808109, 36.356934, 30.276783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887684, 36.132332, 30.248114>,  <40.020309, 35.757996, 30.200333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887684, 36.132332, 30.248114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047849, -0.143132, 0.988546,
		0.942219, 0.322051, 0.092237,
		-0.331564, 0.935840, 0.119452,
		39.788216, 36.413082, 30.283949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423283, 36.053909, 30.764399>,  <40.020309, 35.757996, 30.200333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423283, 36.053909, 30.764399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073051, 36.242104, 30.720562>,  <39.862915, 36.355019, 30.694260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073051, 36.242104, 30.720562>,  <40.423283, 36.053909, 30.764399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073051, 36.242104, 30.720562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177124, -0.101604, 0.978930,
		0.449437, 0.876538, 0.172297,
		-0.875576, 0.470486, -0.109591,
		39.810379, 36.383247, 30.687685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413490, 36.643585, 31.302092>,  <40.423283, 36.053909, 30.764399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413490, 36.643585, 31.302092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029099, 36.573418, 31.216532>,  <39.798466, 36.531319, 31.165195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029099, 36.573418, 31.216532>,  <40.413490, 36.643585, 31.302092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029099, 36.573418, 31.216532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191929, -0.134052, 0.972211,
		-0.199215, 0.975325, 0.095153,
		-0.960977, -0.175416, -0.213898,
		39.740807, 36.520794, 31.152363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036251, 37.201424, 31.585474>,  <40.413490, 36.643585, 31.302092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036251, 37.201424, 31.585474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789577, 36.890907, 31.533201>,  <39.641575, 36.704597, 31.501837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789577, 36.890907, 31.533201>,  <40.036251, 37.201424, 31.585474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789577, 36.890907, 31.533201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308054, 0.085207, 0.947546,
		-0.724432, 0.624595, -0.291684,
		-0.616685, -0.776287, -0.130683,
		39.604572, 36.658020, 31.493996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527298, 37.340664, 32.030518>,  <40.036251, 37.201424, 31.585474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527298, 37.340664, 32.030518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457802, 36.953465, 31.958076>,  <39.416103, 36.721146, 31.914612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457802, 36.953465, 31.958076>,  <39.527298, 37.340664, 32.030518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457802, 36.953465, 31.958076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314963, -0.119619, 0.941536,
		-0.933066, 0.220626, -0.284100,
		-0.173744, -0.967996, -0.181101,
		39.405678, 36.663067, 31.903746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908714, 37.163498, 32.267784>,  <39.527298, 37.340664, 32.030518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908714, 37.163498, 32.267784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079597, 36.801853, 32.264179>,  <39.182129, 36.584866, 32.262016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079597, 36.801853, 32.264179>,  <38.908714, 37.163498, 32.267784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079597, 36.801853, 32.264179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226994, -0.116902, 0.966854,
		-0.875194, -0.411003, -0.255168,
		0.427210, -0.904107, -0.009017,
		39.207760, 36.530621, 32.261475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445370, 36.605286, 32.554619>,  <38.908714, 37.163498, 32.267784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445370, 36.605286, 32.554619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819366, 36.478321, 32.617912>,  <39.043766, 36.402142, 32.655888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819366, 36.478321, 32.617912>,  <38.445370, 36.605286, 32.554619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819366, 36.478321, 32.617912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250533, -0.275295, 0.928141,
		-0.251032, -0.907452, -0.336919,
		0.934995, -0.317402, 0.158239,
		39.099865, 36.383099, 32.665382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478329, 35.865723, 32.816208>,  <38.445370, 36.605286, 32.554619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478329, 35.865723, 32.816208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824238, 36.025234, 32.938286>,  <39.031784, 36.120941, 33.011532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824238, 36.025234, 32.938286>,  <38.478329, 35.865723, 32.816208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824238, 36.025234, 32.938286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183128, -0.315463, 0.931100,
		0.467576, -0.861081, -0.199778,
		0.864776, 0.398776, 0.305191,
		39.083672, 36.144867, 33.029842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806389, 35.311172, 33.203281>,  <38.478329, 35.865723, 32.816208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806389, 35.311172, 33.203281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010590, 35.631390, 33.328835>,  <39.133110, 35.823521, 33.404167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010590, 35.631390, 33.328835>,  <38.806389, 35.311172, 33.203281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010590, 35.631390, 33.328835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212565, -0.236212, 0.948167,
		0.833192, -0.550756, 0.049582,
		0.510497, 0.800545, 0.313882,
		39.163738, 35.871552, 33.423000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185974, 35.069382, 33.823189>,  <38.806389, 35.311172, 33.203281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185974, 35.069382, 33.823189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180500, 35.469238, 33.832321>,  <39.177216, 35.709152, 33.837799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180500, 35.469238, 33.832321>,  <39.185974, 35.069382, 33.823189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180500, 35.469238, 33.832321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422698, -0.026478, 0.905884,
		0.906167, 0.002749, 0.422911,
		-0.013688, 0.999645, 0.022832,
		39.176395, 35.769131, 33.839172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501755, 35.210243, 34.547710>,  <39.185974, 35.069382, 33.823189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501755, 35.210243, 34.547710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300713, 35.528229, 34.411819>,  <39.180088, 35.719021, 34.330284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300713, 35.528229, 34.411819>,  <39.501755, 35.210243, 34.547710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300713, 35.528229, 34.411819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267462, 0.230705, 0.935542,
		0.822103, 0.561071, 0.096670,
		-0.502604, 0.794968, -0.339728,
		39.149933, 35.766720, 34.309902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670380, 35.742851, 35.062019>,  <39.501755, 35.210243, 34.547710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670380, 35.742851, 35.062019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340828, 35.861980, 34.869141>,  <39.143097, 35.933460, 34.753414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340828, 35.861980, 34.869141>,  <39.670380, 35.742851, 35.062019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340828, 35.861980, 34.869141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431235, 0.222670, 0.874331,
		0.367771, 0.928287, -0.055020,
		-0.823882, 0.297827, -0.482201,
		39.093662, 35.951328, 34.724480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635578, 36.472382, 35.207413>,  <39.670380, 35.742851, 35.062019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635578, 36.472382, 35.207413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286396, 36.298481, 35.118923>,  <39.076885, 36.194141, 35.065830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286396, 36.298481, 35.118923>,  <39.635578, 36.472382, 35.207413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286396, 36.298481, 35.118923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362564, 0.274882, 0.890498,
		-0.326338, 0.857571, -0.397586,
		-0.872955, -0.434754, -0.221220,
		39.024509, 36.168056, 35.052559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141499, 36.980423, 35.314007>,  <39.635578, 36.472382, 35.207413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141499, 36.980423, 35.314007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932083, 36.641499, 35.349739>,  <38.806435, 36.438145, 35.371178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932083, 36.641499, 35.349739>,  <39.141499, 36.980423, 35.314007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932083, 36.641499, 35.349739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307821, 0.285869, 0.907483,
		-0.794451, 0.447606, -0.410482,
		-0.523539, -0.847306, 0.089327,
		38.775021, 36.387306, 35.376537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529926, 37.194153, 35.500786>,  <39.141499, 36.980423, 35.314007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529926, 37.194153, 35.500786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632801, 36.825779, 35.617901>,  <38.694527, 36.604755, 35.688171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632801, 36.825779, 35.617901>,  <38.529926, 37.194153, 35.500786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632801, 36.825779, 35.617901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251414, 0.228784, 0.940451,
		-0.933083, -0.315486, -0.172696,
		0.257189, -0.920938, 0.292792,
		38.709957, 36.549500, 35.705738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813690, 36.853756, 35.837055>,  <38.529926, 37.194153, 35.500786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813690, 36.853756, 35.837055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129875, 36.636578, 35.950466>,  <38.319588, 36.506271, 36.018513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129875, 36.636578, 35.950466>,  <37.813690, 36.853756, 35.837055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129875, 36.636578, 35.950466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351706, -0.023362, 0.935819,
		-0.501472, -0.839445, -0.209423,
		0.790461, -0.542942, 0.283523,
		38.367012, 36.473694, 36.035522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597198, 36.307011, 36.203083>,  <37.813690, 36.853756, 35.837055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597198, 36.307011, 36.203083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975189, 36.386486, 36.307041>,  <38.201984, 36.434174, 36.369415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975189, 36.386486, 36.307041>,  <37.597198, 36.307011, 36.203083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975189, 36.386486, 36.307041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288098, 0.129064, 0.948864,
		0.154992, -0.971526, 0.179206,
		0.944975, 0.198696, 0.259891,
		38.258682, 36.446095, 36.385010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666737, 36.206310, 36.826141>,  <37.597198, 36.307011, 36.203083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666737, 36.206310, 36.826141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054108, 36.301281, 36.856564>,  <38.286530, 36.358261, 36.874817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054108, 36.301281, 36.856564>,  <37.666737, 36.206310, 36.826141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054108, 36.301281, 36.856564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050722, -0.111052, 0.992519,
		0.244095, -0.965037, -0.095503,
		0.968424, 0.237425, 0.076056,
		38.344635, 36.372509, 36.879379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017830, 35.792011, 37.488033>,  <37.666737, 36.206310, 36.826141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017830, 35.792011, 37.488033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176357, 36.149910, 37.405716>,  <38.271473, 36.364651, 37.356323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176357, 36.149910, 37.405716>,  <38.017830, 35.792011, 37.488033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176357, 36.149910, 37.405716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146913, 0.159460, 0.976212,
		0.906281, -0.417128, -0.068253,
		0.396322, 0.894750, -0.205797,
		38.295254, 36.418335, 37.343975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672852, 35.876038, 37.955406>,  <38.017830, 35.792011, 37.488033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672852, 35.876038, 37.955406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532726, 36.236862, 37.854553>,  <38.448650, 36.453358, 37.794041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532726, 36.236862, 37.854553>,  <38.672852, 35.876038, 37.955406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532726, 36.236862, 37.854553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150574, 0.319926, 0.935401,
		0.924452, 0.289716, -0.247900,
		-0.350310, 0.902060, -0.252132,
		38.427635, 36.507481, 37.778915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104279, 36.391506, 38.277370>,  <38.672852, 35.876038, 37.955406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104279, 36.391506, 38.277370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780769, 36.612774, 38.197479>,  <38.586662, 36.745537, 38.149544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780769, 36.612774, 38.197479>,  <39.104279, 36.391506, 38.277370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780769, 36.612774, 38.197479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005943, 0.347269, 0.937747,
		0.588093, 0.757236, -0.284149,
		-0.808772, 0.553171, -0.199726,
		38.538139, 36.778725, 38.137562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247231, 36.982361, 38.580662>,  <39.104279, 36.391506, 38.277370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247231, 36.982361, 38.580662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853088, 37.020813, 38.524326>,  <38.616604, 37.043884, 38.490524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853088, 37.020813, 38.524326>,  <39.247231, 36.982361, 38.580662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853088, 37.020813, 38.524326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065898, 0.547081, 0.834482,
		0.157266, 0.831541, -0.532735,
		-0.985355, 0.096130, -0.140834,
		38.557484, 37.049652, 38.482075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058319, 37.695969, 38.613667>,  <39.247231, 36.982361, 38.580662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058319, 37.695969, 38.613667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737206, 37.482262, 38.719570>,  <38.544537, 37.354038, 38.783112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737206, 37.482262, 38.719570>,  <39.058319, 37.695969, 38.613667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737206, 37.482262, 38.719570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113411, 0.572732, 0.811860,
		-0.585387, 0.621721, -0.520371,
		-0.802783, -0.534268, 0.264760,
		38.496372, 37.321980, 38.799000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610512, 38.245728, 38.742378>,  <39.058319, 37.695969, 38.613667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610512, 38.245728, 38.742378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463921, 37.918297, 38.919296>,  <38.375965, 37.721840, 39.025448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463921, 37.918297, 38.919296>,  <38.610512, 38.245728, 38.742378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463921, 37.918297, 38.919296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134917, 0.517095, 0.845228,
		-0.920592, 0.250087, -0.299946,
		-0.366481, -0.818578, 0.442292,
		38.353977, 37.672722, 39.051983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953842, 38.348862, 38.909451>,  <38.610512, 38.245728, 38.742378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953842, 38.348862, 38.909451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079876, 38.061268, 39.157249>,  <38.155499, 37.888710, 39.305927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079876, 38.061268, 39.157249>,  <37.953842, 38.348862, 38.909451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079876, 38.061268, 39.157249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037239, 0.642878, 0.765063,
		-0.948332, -0.264130, 0.175787,
		0.315086, -0.718987, 0.619498,
		38.174400, 37.845573, 39.343098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500874, 38.407837, 39.425842>,  <37.953842, 38.348862, 38.909451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500874, 38.407837, 39.425842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823929, 38.220211, 39.568783>,  <38.017761, 38.107635, 39.654549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823929, 38.220211, 39.568783>,  <37.500874, 38.407837, 39.425842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823929, 38.220211, 39.568783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002667, 0.603099, 0.797662,
		-0.589676, -0.645173, 0.485833,
		0.807636, -0.469066, 0.357354,
		38.066219, 38.079491, 39.675987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563835, 38.378876, 40.156273>,  <37.500874, 38.407837, 39.425842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563835, 38.378876, 40.156273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956593, 38.334225, 40.095058>,  <38.192249, 38.307434, 40.058331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956593, 38.334225, 40.095058>,  <37.563835, 38.378876, 40.156273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956593, 38.334225, 40.095058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189360, 0.599380, 0.777744,
		0.004913, -0.792643, 0.609666,
		0.981896, -0.111625, -0.153039,
		38.251160, 38.300735, 40.049145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030357, 38.181690, 40.804501>,  <37.563835, 38.378876, 40.156273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030357, 38.181690, 40.804501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178913, 38.435699, 40.533554>,  <38.268047, 38.588104, 40.370987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178913, 38.435699, 40.533554>,  <38.030357, 38.181690, 40.804501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178913, 38.435699, 40.533554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150580, 0.678687, 0.718825,
		0.916185, -0.368961, 0.156436,
		0.371390, 0.635020, -0.677362,
		38.290329, 38.626205, 40.330345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571281, 38.648247, 40.901302>,  <38.030357, 38.181690, 40.804501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571281, 38.648247, 40.901302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729763, 38.292156, 40.991211>,  <38.824852, 38.078503, 41.045158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729763, 38.292156, 40.991211>,  <38.571281, 38.648247, 40.901302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729763, 38.292156, 40.991211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139023, -0.300153, -0.943706,
		0.907578, 0.342647, -0.242683,
		0.396200, -0.890226, 0.224776,
		38.848621, 38.025089, 41.058643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177071, 38.437229, 40.502014>,  <38.571281, 38.648247, 40.901302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177071, 38.437229, 40.502014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938629, 38.134773, 40.610027>,  <38.795567, 37.953300, 40.674835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938629, 38.134773, 40.610027>,  <39.177071, 38.437229, 40.502014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938629, 38.134773, 40.610027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295597, -0.106025, -0.949411,
		0.746517, -0.645765, -0.160311,
		-0.596099, -0.756139, 0.270036,
		38.759800, 37.907932, 40.691036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220650, 37.946915, 39.927509>,  <39.177071, 38.437229, 40.502014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220650, 37.946915, 39.927509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897465, 37.846397, 40.140697>,  <38.703556, 37.786087, 40.268608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897465, 37.846397, 40.140697>,  <39.220650, 37.946915, 39.927509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897465, 37.846397, 40.140697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460016, -0.296229, -0.837038,
		0.368221, -0.921467, 0.123743,
		-0.807959, -0.251291, 0.532968,
		38.655075, 37.771011, 40.300587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067680, 37.281555, 39.868156>,  <39.220650, 37.946915, 39.927509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067680, 37.281555, 39.868156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729202, 37.493191, 39.893497>,  <38.526115, 37.620171, 39.908703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729202, 37.493191, 39.893497>,  <39.067680, 37.281555, 39.868156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729202, 37.493191, 39.893497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378486, -0.513088, -0.770382,
		-0.375096, -0.675874, 0.634427,
		-0.846198, 0.529089, 0.063352,
		38.475342, 37.651917, 39.912502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526684, 36.738483, 39.997528>,  <39.067680, 37.281555, 39.868156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526684, 36.738483, 39.997528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399353, 37.075745, 39.824200>,  <38.322952, 37.278099, 39.720203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399353, 37.075745, 39.824200>,  <38.526684, 36.738483, 39.997528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399353, 37.075745, 39.824200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233178, -0.512695, -0.826300,
		-0.918855, -0.161994, 0.359810,
		-0.318329, 0.843150, -0.433319,
		38.303856, 37.328690, 39.694202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848133, 36.631767, 39.643925>,  <38.526684, 36.738483, 39.997528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848133, 36.631767, 39.643925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956333, 36.964115, 39.449409>,  <38.021255, 37.163525, 39.332699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956333, 36.964115, 39.449409>,  <37.848133, 36.631767, 39.643925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956333, 36.964115, 39.449409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197610, -0.446447, -0.872717,
		-0.942220, 0.332168, 0.043424,
		0.270502, 0.830873, -0.486291,
		38.037483, 37.213375, 39.303520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417255, 36.593979, 39.008644>,  <37.848133, 36.631767, 39.643925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417255, 36.593979, 39.008644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705730, 36.860226, 38.931866>,  <37.878815, 37.019974, 38.885799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705730, 36.860226, 38.931866>,  <37.417255, 36.593979, 39.008644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705730, 36.860226, 38.931866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079443, -0.354719, -0.931592,
		-0.688169, 0.656604, -0.308698,
		0.721188, 0.665617, -0.191944,
		37.922089, 37.059910, 38.874283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334644, 36.758793, 38.319263>,  <37.417255, 36.593979, 39.008644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334644, 36.758793, 38.319263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692959, 36.925163, 38.381958>,  <37.907948, 37.024986, 38.419575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692959, 36.925163, 38.381958>,  <37.334644, 36.758793, 38.319263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692959, 36.925163, 38.381958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151570, 0.045651, -0.987392,
		-0.417839, 0.908251, -0.022149,
		0.895789, 0.415927, 0.156738,
		37.961697, 37.049942, 38.428978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440079, 37.373840, 37.846046>,  <37.334644, 36.758793, 38.319263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440079, 37.373840, 37.846046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778877, 37.180676, 37.934952>,  <37.982155, 37.064777, 37.988297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778877, 37.180676, 37.934952>,  <37.440079, 37.373840, 37.846046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778877, 37.180676, 37.934952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277482, 0.044981, -0.959677,
		0.453440, 0.874514, 0.172097,
		0.846992, -0.482910, 0.222266,
		38.032974, 37.035801, 38.001633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060204, 37.732647, 37.434292>,  <37.440079, 37.373840, 37.846046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060204, 37.732647, 37.434292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157036, 37.359146, 37.539745>,  <38.215134, 37.135044, 37.603016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157036, 37.359146, 37.539745>,  <38.060204, 37.732647, 37.434292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157036, 37.359146, 37.539745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284165, -0.191565, -0.939443,
		0.927711, 0.302335, 0.218967,
		0.242080, -0.933754, 0.263630,
		38.229660, 37.079021, 37.618835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682598, 37.549580, 37.029213>,  <38.060204, 37.732647, 37.434292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682598, 37.549580, 37.029213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551804, 37.182739, 37.120430>,  <38.473328, 36.962635, 37.175159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551804, 37.182739, 37.120430>,  <38.682598, 37.549580, 37.029213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551804, 37.182739, 37.120430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402449, -0.353464, -0.844451,
		0.855053, -0.184349, 0.484665,
		-0.326986, -0.917103, 0.228039,
		38.453709, 36.907608, 37.188843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269684, 37.238605, 36.881081>,  <38.682598, 37.549580, 37.029213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269684, 37.238605, 36.881081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978859, 36.964985, 36.904613>,  <38.804363, 36.800812, 36.918736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978859, 36.964985, 36.904613>,  <39.269684, 37.238605, 36.881081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978859, 36.964985, 36.904613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412478, -0.503701, -0.759044,
		0.548858, -0.527602, 0.648376,
		-0.727060, -0.684048, 0.058836,
		38.760742, 36.759769, 36.922264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558205, 36.676846, 36.726448>,  <39.269684, 37.238605, 36.881081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558205, 36.676846, 36.726448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171768, 36.593830, 36.665016>,  <38.939907, 36.544022, 36.628159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171768, 36.593830, 36.665016>,  <39.558205, 36.676846, 36.726448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171768, 36.593830, 36.665016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238051, -0.485741, -0.841063,
		0.099953, -0.849108, 0.518677,
		-0.966096, -0.207539, -0.153580,
		38.881939, 36.531570, 36.618942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556767, 35.985336, 36.454304>,  <39.558205, 36.676846, 36.726448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556767, 35.985336, 36.454304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192810, 36.115589, 36.351494>,  <38.974438, 36.193741, 36.289806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192810, 36.115589, 36.351494>,  <39.556767, 35.985336, 36.454304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192810, 36.115589, 36.351494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086883, -0.456246, -0.885602,
		-0.405643, -0.828134, 0.386844,
		-0.909893, 0.325628, -0.257023,
		38.919842, 36.213280, 36.274387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136360, 35.424877, 36.250355>,  <39.556767, 35.985336, 36.454304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136360, 35.424877, 36.250355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006809, 35.758060, 36.070896>,  <38.929081, 35.957970, 35.963223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006809, 35.758060, 36.070896>,  <39.136360, 35.424877, 36.250355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006809, 35.758060, 36.070896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158198, -0.419848, -0.893701,
		-0.932780, -0.360422, 0.004205,
		-0.323875, 0.832961, -0.448644,
		38.909645, 36.007950, 35.936302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740700, 35.228767, 35.660278>,  <39.136360, 35.424877, 36.250355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740700, 35.228767, 35.660278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875000, 35.601536, 35.605442>,  <38.955582, 35.825195, 35.572540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875000, 35.601536, 35.605442>,  <38.740700, 35.228767, 35.660278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875000, 35.601536, 35.605442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295621, -0.242440, -0.924030,
		-0.894359, 0.269717, -0.356895,
		0.335752, 0.931920, -0.137094,
		38.975727, 35.881111, 35.564312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080669, 35.275517, 35.241814>,  <38.740700, 35.228767, 35.660278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080669, 35.275517, 35.241814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249409, 35.636303, 35.278675>,  <38.350655, 35.852776, 35.300793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249409, 35.636303, 35.278675>,  <38.080669, 35.275517, 35.241814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249409, 35.636303, 35.278675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282893, -0.034381, -0.958535,
		-0.861402, 0.430427, -0.269665,
		0.421851, 0.901970, 0.092150,
		38.375965, 35.906895, 35.306320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864361, 35.731266, 34.751503>,  <38.080669, 35.275517, 35.241814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864361, 35.731266, 34.751503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240406, 35.843529, 34.828876>,  <38.466034, 35.910889, 34.875301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240406, 35.843529, 34.828876>,  <37.864361, 35.731266, 34.751503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240406, 35.843529, 34.828876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183754, 0.060664, -0.981099,
		-0.287090, 0.957888, 0.005458,
		0.940114, 0.280661, 0.193432,
		38.522442, 35.927727, 34.886906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014996, 36.423534, 34.370232>,  <37.864361, 35.731266, 34.751503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014996, 36.423534, 34.370232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360092, 36.243664, 34.462727>,  <38.567150, 36.135742, 34.518223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360092, 36.243664, 34.462727>,  <38.014996, 36.423534, 34.370232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360092, 36.243664, 34.462727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342212, 0.182585, -0.921712,
		0.372255, 0.874328, 0.311410,
		0.862738, -0.449680, 0.231238,
		38.618912, 36.108761, 34.532097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501141, 36.864578, 34.015213>,  <38.014996, 36.423534, 34.370232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501141, 36.864578, 34.015213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748768, 36.562725, 34.102184>,  <38.897346, 36.381611, 34.154369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748768, 36.562725, 34.102184>,  <38.501141, 36.864578, 34.015213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748768, 36.562725, 34.102184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457028, 0.121037, -0.881178,
		0.638651, 0.644884, 0.419820,
		0.619072, -0.754635, 0.217430,
		38.934490, 36.336334, 34.167412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205330, 37.058441, 33.897419>,  <38.501141, 36.864578, 34.015213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205330, 37.058441, 33.897419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230530, 36.659241, 33.899532>,  <39.245651, 36.419720, 33.900799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230530, 36.659241, 33.899532>,  <39.205330, 37.058441, 33.897419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230530, 36.659241, 33.899532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483191, 0.025870, -0.875133,
		0.873245, 0.057686, 0.483855,
		0.063000, -0.998000, 0.005282,
		39.249432, 36.359840, 33.901115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855568, 36.894482, 33.812443>,  <39.205330, 37.058441, 33.897419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855568, 36.894482, 33.812443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639713, 36.581444, 33.688290>,  <39.510201, 36.393620, 33.613800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639713, 36.581444, 33.688290>,  <39.855568, 36.894482, 33.812443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639713, 36.581444, 33.688290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400544, 0.085616, -0.912269,
		0.740514, -0.616611, 0.267263,
		-0.539633, -0.782598, -0.310380,
		39.477821, 36.346664, 33.595177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230011, 36.548439, 33.478752>,  <39.855568, 36.894482, 33.812443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230011, 36.548439, 33.478752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873825, 36.431747, 33.339054>,  <39.660114, 36.361732, 33.255234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873825, 36.431747, 33.339054>,  <40.230011, 36.548439, 33.478752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873825, 36.431747, 33.339054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300523, 0.199301, -0.932719,
		0.341707, -0.935507, -0.089798,
		-0.890462, -0.291730, -0.349244,
		39.606686, 36.344227, 33.234280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327751, 36.147076, 32.896069>,  <40.230011, 36.548439, 33.478752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327751, 36.147076, 32.896069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960922, 36.296303, 32.839787>,  <39.740826, 36.385838, 32.806019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960922, 36.296303, 32.839787>,  <40.327751, 36.147076, 32.896069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960922, 36.296303, 32.839787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208719, 0.148501, -0.966635,
		-0.339726, -0.915843, -0.214053,
		-0.917073, 0.373068, -0.140704,
		39.685799, 36.408222, 32.797577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183884, 35.838997, 32.255791>,  <40.327751, 36.147076, 32.896069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183884, 35.838997, 32.255791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940929, 36.150402, 32.319042>,  <39.795158, 36.337246, 32.356995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940929, 36.150402, 32.319042>,  <40.183884, 35.838997, 32.255791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940929, 36.150402, 32.319042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016416, 0.211314, -0.977280,
		-0.794240, -0.590987, -0.141128,
		-0.607382, 0.778512, 0.158132,
		39.758717, 36.383957, 32.366482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861885, 35.815506, 32.509384>,  <40.183884, 35.838997, 32.255791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861885, 35.815506, 32.509384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589310, 36.097588, 32.431065>,  <40.425766, 36.266834, 32.384075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589310, 36.097588, 32.431065>,  <40.861885, 35.815506, 32.509384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589310, 36.097588, 32.431065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731818, 0.653167, -0.194460,
		-0.009246, -0.275800, -0.961171,
		-0.681437, 0.705200, -0.195797,
		40.384880, 36.309147, 32.372326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937977, 36.008587, 31.816963>,  <40.861885, 35.815506, 32.509384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937977, 36.008587, 31.816963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786129, 36.296856, 32.049004>,  <40.695023, 36.469818, 32.188229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786129, 36.296856, 32.049004>,  <40.937977, 36.008587, 31.816963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786129, 36.296856, 32.049004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806681, 0.564844, -0.173831,
		-0.452944, 0.401969, -0.795778,
		-0.379616, 0.720675, 0.580103,
		40.672245, 36.513058, 32.223034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523090, 35.685844, 32.078358>,  <40.937977, 36.008587, 31.816963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523090, 35.685844, 32.078358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748405, 35.516781, 31.794369>,  <41.883595, 35.415340, 31.623976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748405, 35.516781, 31.794369>,  <41.523090, 35.685844, 32.078358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748405, 35.516781, 31.794369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826231, 0.295139, 0.479829,
		0.006735, -0.856884, 0.515465,
		0.563292, -0.422661, -0.709972,
		41.917393, 35.389984, 31.581377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920410, 35.183117, 32.381752>,  <41.523090, 35.685844, 32.078358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920410, 35.183117, 32.381752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113949, 35.308689, 32.054989>,  <42.230072, 35.384033, 31.858932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113949, 35.308689, 32.054989>,  <41.920410, 35.183117, 32.381752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113949, 35.308689, 32.054989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717960, 0.391362, 0.575646,
		0.500421, -0.865032, -0.036032,
		0.483851, 0.313935, -0.816905,
		42.259106, 35.402870, 31.809917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661678, 34.865940, 32.317051>,  <41.920410, 35.183117, 32.381752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661678, 34.865940, 32.317051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631294, 35.241623, 32.183117>,  <42.613064, 35.467033, 32.102757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631294, 35.241623, 32.183117>,  <42.661678, 34.865940, 32.317051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631294, 35.241623, 32.183117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669097, 0.296984, 0.681256,
		0.739283, -0.172285, -0.650983,
		-0.075961, 0.939211, -0.334831,
		42.608505, 35.523388, 32.082668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.366802, 34.985603, 32.030216>,  <42.661678, 34.865940, 32.317051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.366802, 34.985603, 32.030216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129154, 35.221107, 32.249443>,  <42.986565, 35.362411, 32.380981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129154, 35.221107, 32.249443>,  <43.366802, 34.985603, 32.030216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129154, 35.221107, 32.249443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778916, 0.251026, 0.574696,
		0.200779, 0.768340, -0.607735,
		-0.594119, 0.588761, 0.548071,
		42.950920, 35.397736, 32.413864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491879, 35.611595, 31.952446>,  <43.366802, 34.985603, 32.030216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.491879, 35.611595, 31.952446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347664, 35.545528, 32.319649>,  <43.261135, 35.505886, 32.539970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347664, 35.545528, 32.319649>,  <43.491879, 35.611595, 31.952446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347664, 35.545528, 32.319649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910133, 0.153103, 0.384989,
		-0.204138, 0.974309, 0.095128,
		-0.360534, -0.165170, 0.918006,
		43.239502, 35.495979, 32.595051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517643, 36.099743, 32.540791>,  <43.491879, 35.611595, 31.952446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517643, 36.099743, 32.540791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467979, 35.764328, 32.752995>,  <43.438183, 35.563080, 32.880318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467979, 35.764328, 32.752995>,  <43.517643, 36.099743, 32.540791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467979, 35.764328, 32.752995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878248, 0.155965, 0.452056,
		-0.461807, 0.522046, 0.717079,
		-0.124155, -0.838536, 0.530512,
		43.430733, 35.512768, 32.912148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880684, 36.314293, 33.061203>,  <43.517643, 36.099743, 32.540791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880684, 36.314293, 33.061203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859112, 35.914894, 33.065006>,  <43.846169, 35.675255, 33.067287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859112, 35.914894, 33.065006>,  <43.880684, 36.314293, 33.061203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859112, 35.914894, 33.065006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903768, -0.044762, 0.425677,
		-0.424612, 0.031553, 0.904825,
		-0.053933, -0.998499, 0.009510,
		43.842934, 35.615345, 33.067860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.181351, 36.202431, 33.736095>,  <43.880684, 36.314293, 33.061203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.181351, 36.202431, 33.736095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238686, 35.868187, 33.523983>,  <44.273087, 35.667641, 33.396713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238686, 35.868187, 33.523983>,  <44.181351, 36.202431, 33.736095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238686, 35.868187, 33.523983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932127, -0.066058, 0.356055,
		-0.332554, -0.545331, 0.769430,
		0.143341, -0.835614, -0.530285,
		44.281689, 35.617504, 33.364899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273914, 35.839024, 34.380360>,  <44.181351, 36.202431, 33.736095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273914, 35.839024, 34.380360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643333, 35.706715, 34.457977>,  <44.864983, 35.627331, 34.504547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643333, 35.706715, 34.457977>,  <44.273914, 35.839024, 34.380360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643333, 35.706715, 34.457977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369749, -0.633826, 0.679375,
		-0.101730, -0.699181, -0.707670,
		0.923546, -0.330773, 0.194042,
		44.920399, 35.607483, 34.516190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283657, 35.059826, 34.365215>,  <44.273914, 35.839024, 34.380360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283657, 35.059826, 34.365215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549541, 35.212643, 34.622028>,  <44.709072, 35.304333, 34.776115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549541, 35.212643, 34.622028>,  <44.283657, 35.059826, 34.365215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549541, 35.212643, 34.622028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419544, -0.520190, 0.743899,
		0.618180, -0.763837, -0.185492,
		0.664708, 0.382042, 0.642034,
		44.748955, 35.327255, 34.814640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266586, 34.701584, 34.868240>,  <44.283657, 35.059826, 34.365215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266586, 34.701584, 34.868240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496902, 34.982605, 35.035519>,  <44.635094, 35.151218, 35.135887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496902, 34.982605, 35.035519>,  <44.266586, 34.701584, 34.868240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496902, 34.982605, 35.035519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181341, -0.389013, 0.903208,
		0.797234, -0.595893, -0.096587,
		0.575789, 0.702553, 0.418194,
		44.669640, 35.193371, 35.160976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640430, 34.327518, 35.279827>,  <44.266586, 34.701584, 34.868240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.640430, 34.327518, 35.279827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912853, 34.041065, 35.340916>,  <45.076305, 33.869194, 35.377567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912853, 34.041065, 35.340916>,  <44.640430, 34.327518, 35.279827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912853, 34.041065, 35.340916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103210, -0.112601, -0.988266,
		0.724924, 0.688823, -0.002776,
		0.681053, -0.716131, 0.152721,
		45.117168, 33.826225, 35.386730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.353382, 34.485935, 35.077019>,  <44.640430, 34.327518, 35.279827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.353382, 34.485935, 35.077019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337036, 34.090137, 35.021561>,  <45.327229, 33.852657, 34.988285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337036, 34.090137, 35.021561>,  <45.353382, 34.485935, 35.077019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337036, 34.090137, 35.021561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161318, 0.130404, -0.978249,
		0.986056, -0.062344, 0.154295,
		-0.040867, -0.989499, -0.138643,
		45.324776, 33.793289, 34.979969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.013081, 34.427441, 34.880932>,  <45.353382, 34.485935, 35.077019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.013081, 34.427441, 34.880932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.973129, 34.806965, 35.000790>,  <45.949158, 35.034679, 35.072704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.973129, 34.806965, 35.000790>,  <46.013081, 34.427441, 34.880932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.973129, 34.806965, 35.000790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991326, 0.120743, -0.051907,
		-0.085429, 0.291861, -0.952638,
		-0.099875, 0.948809, 0.299644,
		45.943165, 35.091606, 35.090683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.250240, 35.056583, 34.380886>,  <46.013081, 34.427441, 34.880932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.250240, 35.056583, 34.380886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.287766, 35.067139, 34.778980>,  <46.310280, 35.073471, 35.017838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.287766, 35.067139, 34.778980>,  <46.250240, 35.056583, 34.380886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.287766, 35.067139, 34.778980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991102, -0.097281, -0.090844,
		0.094421, 0.994907, -0.035279,
		0.093814, 0.026388, 0.995240,
		46.315910, 35.075054, 35.077553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.692738, 35.577694, 34.656490>,  <46.250240, 35.056583, 34.380886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.692738, 35.577694, 34.656490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.689880, 35.250862, 34.887081>,  <46.688164, 35.054764, 35.025436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.689880, 35.250862, 34.887081>,  <46.692738, 35.577694, 34.656490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.689880, 35.250862, 34.887081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999287, -0.027202, -0.026168,
		0.037063, 0.575880, 0.816693,
		-0.007146, -0.817081, 0.576478,
		46.687737, 35.005737, 35.060024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.173191, 35.599911, 35.236397>,  <46.692738, 35.577694, 34.656490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.173191, 35.599911, 35.236397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.144669, 35.218132, 35.120499>,  <47.127556, 34.989067, 35.050961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.144669, 35.218132, 35.120499>,  <47.173191, 35.599911, 35.236397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.144669, 35.218132, 35.120499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994825, -0.089131, 0.048767,
		-0.072371, -0.284768, 0.955861,
		-0.071310, -0.954444, -0.289745,
		47.123276, 34.931801, 35.033573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.990795, 35.439545, 35.326717>,  <47.173191, 35.599911, 35.236397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.990795, 35.439545, 35.326717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.654865, 35.223587, 35.349354>,  <47.453308, 35.094013, 35.362938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.654865, 35.223587, 35.349354>,  <47.990795, 35.439545, 35.326717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.654865, 35.223587, 35.349354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016002, -0.079589, -0.996699,
		0.542619, -0.837961, 0.058202,
		-0.839827, -0.539896, 0.056595,
		47.402916, 35.061619, 35.366333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.940571, 33.658867, 23.134977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.594414, 33.747124, 22.955013>,  <40.386719, 33.800079, 22.847034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.594414, 33.747124, 22.955013>,  <40.940571, 33.658867, 23.134977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594414, 33.747124, 22.955013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432272, 0.125434, 0.892977,
		0.253464, 0.967255, -0.013170,
		-0.865388, 0.220644, -0.449911,
		40.334797, 33.813316, 22.820040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616318, 34.279247, 23.459339>,  <40.940571, 33.658867, 23.134977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616318, 34.279247, 23.459339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.313427, 34.087990, 23.281359>,  <40.131691, 33.973236, 23.174570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.313427, 34.087990, 23.281359>,  <40.616318, 34.279247, 23.459339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313427, 34.087990, 23.281359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485967, -0.042718, 0.872933,
		-0.436392, 0.877244, -0.200013,
		-0.757231, -0.478141, -0.444953,
		40.086258, 33.944546, 23.147873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103897, 34.589684, 23.714722>,  <40.616318, 34.279247, 23.459339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103897, 34.589684, 23.714722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.945522, 34.243267, 23.592602>,  <39.850498, 34.035419, 23.519331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.945522, 34.243267, 23.592602>,  <40.103897, 34.589684, 23.714722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945522, 34.243267, 23.592602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535368, -0.052410, 0.842991,
		-0.746064, 0.497222, -0.442899,
		-0.395942, -0.866039, -0.305298,
		39.826740, 33.983456, 23.501013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340900, 34.717079, 23.764229>,  <40.103897, 34.589684, 23.714722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340900, 34.717079, 23.764229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.409252, 34.322964, 23.764353>,  <39.450264, 34.086494, 23.764427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.409252, 34.322964, 23.764353>,  <39.340900, 34.717079, 23.764229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409252, 34.322964, 23.764353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654905, -0.113349, 0.747163,
		-0.736138, -0.127880, -0.664641,
		0.170884, -0.985291, 0.000309,
		39.460518, 34.027378, 23.764446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693497, 34.442860, 23.722624>,  <39.340900, 34.717079, 23.764229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693497, 34.442860, 23.722624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.934917, 34.165943, 23.880846>,  <39.079769, 33.999794, 23.975779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.934917, 34.165943, 23.880846>,  <38.693497, 34.442860, 23.722624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934917, 34.165943, 23.880846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609735, -0.081085, 0.788447,
		-0.513759, -0.717052, -0.471051,
		0.603552, -0.692287, 0.395554,
		39.115982, 33.958256, 23.999512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265388, 33.958107, 23.960682>,  <38.693497, 34.442860, 23.722624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265388, 33.958107, 23.960682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.599777, 33.876865, 24.164602>,  <38.800411, 33.828121, 24.286955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.599777, 33.876865, 24.164602>,  <38.265388, 33.958107, 23.960682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599777, 33.876865, 24.164602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547160, -0.237417, 0.802651,
		-0.041985, -0.949938, -0.309604,
		0.835974, -0.203102, 0.509800,
		38.850571, 33.815933, 24.317543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162518, 33.276295, 24.226040>,  <38.265388, 33.958107, 23.960682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162518, 33.276295, 24.226040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449875, 33.445068, 24.447264>,  <38.622292, 33.546333, 24.579998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449875, 33.445068, 24.447264>,  <38.162518, 33.276295, 24.226040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449875, 33.445068, 24.447264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460060, -0.308163, 0.832695,
		0.521778, -0.852646, -0.027266,
		0.718396, 0.421938, 0.553061,
		38.665394, 33.571651, 24.613182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212887, 32.855106, 24.858305>,  <38.162518, 33.276295, 24.226040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212887, 32.855106, 24.858305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.393654, 33.189827, 24.981937>,  <38.502113, 33.390659, 25.056118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.393654, 33.189827, 24.981937>,  <38.212887, 32.855106, 24.858305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393654, 33.189827, 24.981937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389528, -0.126594, 0.912273,
		0.802522, -0.532665, 0.268749,
		0.451914, 0.836805, 0.309082,
		38.529228, 33.440868, 25.074661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554703, 32.698681, 25.484390>,  <38.212887, 32.855106, 24.858305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554703, 32.698681, 25.484390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.495087, 33.094185, 25.489164>,  <38.459316, 33.331486, 25.492029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.495087, 33.094185, 25.489164>,  <38.554703, 32.698681, 25.484390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495087, 33.094185, 25.489164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279547, -0.053709, 0.958629,
		0.948494, 0.139535, 0.284410,
		-0.149037, 0.988760, 0.011936,
		38.450375, 33.390812, 25.492744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828266, 32.930859, 26.130203>,  <38.554703, 32.698681, 25.484390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828266, 32.930859, 26.130203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626232, 33.261173, 26.029833>,  <38.505013, 33.459362, 25.969610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626232, 33.261173, 26.029833>,  <38.828266, 32.930859, 26.130203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626232, 33.261173, 26.029833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265305, 0.128104, 0.955616,
		0.821283, 0.549236, 0.154383,
		-0.505082, 0.825790, -0.250925,
		38.474709, 33.508911, 25.954556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201889, 33.559010, 26.347624>,  <38.828266, 32.930859, 26.130203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201889, 33.559010, 26.347624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804703, 33.604710, 26.335154>,  <38.566391, 33.632130, 26.327671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804703, 33.604710, 26.335154>,  <39.201889, 33.559010, 26.347624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804703, 33.604710, 26.335154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016421, 0.127871, 0.991655,
		0.117283, 0.985188, -0.125095,
		-0.992963, 0.114250, -0.031175,
		38.506813, 33.638985, 26.325802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088436, 33.948746, 27.010937>,  <39.201889, 33.559010, 26.347624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088436, 33.948746, 27.010937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.719349, 33.833012, 26.909058>,  <38.497894, 33.763573, 26.847929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.719349, 33.833012, 26.909058>,  <39.088436, 33.948746, 27.010937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719349, 33.833012, 26.909058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234982, -0.101574, 0.966678,
		-0.305566, 0.951823, 0.025736,
		-0.922720, -0.289337, -0.254699,
		38.442532, 33.746212, 26.832647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750481, 34.356010, 27.310198>,  <39.088436, 33.948746, 27.010937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750481, 34.356010, 27.310198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.477219, 34.072048, 27.241686>,  <38.313263, 33.901672, 27.200579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.477219, 34.072048, 27.241686>,  <38.750481, 34.356010, 27.310198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477219, 34.072048, 27.241686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231413, -0.012010, 0.972781,
		-0.692637, 0.704198, -0.156076,
		-0.683156, -0.709902, -0.171279,
		38.272270, 33.859077, 27.190302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146622, 34.533978, 27.677265>,  <38.750481, 34.356010, 27.310198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146622, 34.533978, 27.677265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.086697, 34.141350, 27.629816>,  <38.050739, 33.905773, 27.601347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.086697, 34.141350, 27.629816>,  <38.146622, 34.533978, 27.677265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086697, 34.141350, 27.629816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169976, -0.092621, 0.981086,
		-0.973993, 0.167146, -0.152967,
		-0.149817, -0.981572, -0.118623,
		38.041752, 33.846878, 27.594229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578182, 34.395798, 28.080513>,  <38.146622, 34.533978, 27.677265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578182, 34.395798, 28.080513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.782627, 34.052799, 28.056961>,  <37.905296, 33.847000, 28.042830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.782627, 34.052799, 28.056961>,  <37.578182, 34.395798, 28.080513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782627, 34.052799, 28.056961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068617, -0.108992, 0.991672,
		-0.856769, -0.502819, -0.114546,
		0.511116, -0.857493, -0.058879,
		37.935963, 33.795551, 28.039297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321960, 34.017494, 28.545601>,  <37.578182, 34.395798, 28.080513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321960, 34.017494, 28.545601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.663498, 33.817917, 28.486259>,  <37.868420, 33.698170, 28.450655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.663498, 33.817917, 28.486259>,  <37.321960, 34.017494, 28.545601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663498, 33.817917, 28.486259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054199, -0.198235, 0.978655,
		-0.517704, -0.843657, -0.142219,
		0.853841, -0.498946, -0.148352,
		37.919651, 33.668232, 28.441753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217312, 33.309925, 28.831266>,  <37.321960, 34.017494, 28.545601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217312, 33.309925, 28.831266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.610657, 33.382591, 28.831341>,  <37.846664, 33.426189, 28.831387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.610657, 33.382591, 28.831341>,  <37.217312, 33.309925, 28.831266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610657, 33.382591, 28.831341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082172, -0.445723, 0.891392,
		0.162018, -0.876544, -0.453234,
		0.983361, 0.181665, 0.000188,
		37.905666, 33.437092, 28.831398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508457, 32.737625, 29.327009>,  <37.217312, 33.309925, 28.831266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508457, 32.737625, 29.327009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.804222, 33.006329, 29.309090>,  <37.981682, 33.167549, 29.298338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.804222, 33.006329, 29.309090>,  <37.508457, 32.737625, 29.327009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804222, 33.006329, 29.309090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332906, -0.306975, 0.891594,
		0.585181, -0.674174, -0.450614,
		0.739416, 0.671756, -0.044801,
		38.026047, 33.207855, 29.295649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021271, 32.438873, 29.721064>,  <37.508457, 32.737625, 29.327009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021271, 32.438873, 29.721064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.126015, 32.824150, 29.696760>,  <38.188862, 33.055317, 29.682178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.126015, 32.824150, 29.696760>,  <38.021271, 32.438873, 29.721064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126015, 32.824150, 29.696760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538427, -0.093553, 0.837463,
		0.800952, -0.252016, -0.543106,
		0.261863, 0.963190, -0.060761,
		38.204575, 33.113106, 29.678532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708092, 32.504219, 29.925264>,  <38.021271, 32.438873, 29.721064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708092, 32.504219, 29.925264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.565208, 32.871620, 29.993082>,  <38.479477, 33.092060, 30.033772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.565208, 32.871620, 29.993082>,  <38.708092, 32.504219, 29.925264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565208, 32.871620, 29.993082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221001, -0.093247, 0.970806,
		0.907501, 0.384253, -0.169682,
		-0.357213, 0.918507, 0.169542,
		38.458046, 33.147171, 30.043945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252636, 32.917404, 30.289629>,  <38.708092, 32.504219, 29.925264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252636, 32.917404, 30.289629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883797, 33.059235, 30.351597>,  <38.662491, 33.144333, 30.388779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883797, 33.059235, 30.351597>,  <39.252636, 32.917404, 30.289629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883797, 33.059235, 30.351597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167938, 0.006029, 0.985779,
		0.348603, 0.935006, -0.065107,
		-0.922102, 0.354580, 0.154921,
		38.607166, 33.165607, 30.398073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424000, 33.332275, 30.940460>,  <39.252636, 32.917404, 30.289629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424000, 33.332275, 30.940460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.027973, 33.292492, 30.900696>,  <38.790359, 33.268620, 30.876837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.027973, 33.292492, 30.900696>,  <39.424000, 33.332275, 30.940460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027973, 33.292492, 30.900696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101441, 0.015548, 0.994720,
		-0.097391, 0.994920, -0.025483,
		-0.990063, -0.099462, -0.099411,
		38.730953, 33.262653, 30.870872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277573, 34.117641, 30.787552>,  <39.424000, 33.332275, 30.940460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277573, 34.117641, 30.787552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.606113, 34.233154, 30.984320>,  <39.803238, 34.302464, 31.102381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.606113, 34.233154, 30.984320>,  <39.277573, 34.117641, 30.787552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606113, 34.233154, 30.984320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535402, -0.092794, -0.839484,
		-0.196780, 0.952888, -0.230831,
		0.821354, 0.288781, 0.491918,
		39.852520, 34.319790, 31.131895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573242, 34.528542, 30.392210>,  <39.277573, 34.117641, 30.787552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573242, 34.528542, 30.392210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.882977, 34.409313, 30.615482>,  <40.068817, 34.337776, 30.749445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.882977, 34.409313, 30.615482>,  <39.573242, 34.528542, 30.392210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882977, 34.409313, 30.615482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528720, -0.179874, -0.829519,
		0.347654, 0.937444, 0.018312,
		0.774334, -0.298067, 0.558179,
		40.115276, 34.319893, 30.782936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084320, 34.887169, 30.039509>,  <39.573242, 34.528542, 30.392210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084320, 34.887169, 30.039509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.240078, 34.592194, 30.260254>,  <40.333530, 34.415207, 30.392700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.240078, 34.592194, 30.260254>,  <40.084320, 34.887169, 30.039509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240078, 34.592194, 30.260254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600783, -0.250802, -0.759050,
		0.698164, 0.627118, 0.345383,
		0.389392, -0.737442, 0.551863,
		40.356895, 34.370960, 30.425814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813049, 34.917797, 29.910421>,  <40.084320, 34.887169, 30.039509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813049, 34.917797, 29.910421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.735737, 34.557911, 30.066965>,  <40.689350, 34.341980, 30.160891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.735737, 34.557911, 30.066965>,  <40.813049, 34.917797, 29.910421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735737, 34.557911, 30.066965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530219, -0.431398, -0.729906,
		0.825537, 0.066430, 0.560425,
		-0.193279, -0.899713, 0.391357,
		40.677753, 34.287998, 30.184372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420174, 34.583538, 29.753696>,  <40.813049, 34.917797, 29.910421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420174, 34.583538, 29.753696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.143936, 34.302078, 29.820580>,  <40.978195, 34.133202, 29.860708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.143936, 34.302078, 29.820580>,  <41.420174, 34.583538, 29.753696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143936, 34.302078, 29.820580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391679, -0.558217, -0.731424,
		0.608004, -0.439625, 0.661106,
		-0.690593, -0.703650, 0.167207,
		40.936760, 34.090984, 29.870741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795746, 33.956436, 29.800316>,  <41.420174, 34.583538, 29.753696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795746, 33.956436, 29.800316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.415707, 33.868057, 29.712234>,  <41.187683, 33.815029, 29.659386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.415707, 33.868057, 29.712234>,  <41.795746, 33.956436, 29.800316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415707, 33.868057, 29.712234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311637, -0.703504, -0.638721,
		-0.013792, -0.675473, 0.737255,
		-0.950101, -0.220947, -0.220205,
		41.130676, 33.801773, 29.646173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878342, 33.225208, 29.728439>,  <41.795746, 33.956436, 29.800316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878342, 33.225208, 29.728439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.534218, 33.326653, 29.551556>,  <41.327744, 33.387520, 29.445425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.534218, 33.326653, 29.551556>,  <41.878342, 33.225208, 29.728439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534218, 33.326653, 29.551556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170505, -0.674344, -0.718463,
		-0.480411, -0.693499, 0.536903,
		-0.860310, 0.253612, -0.442207,
		41.276123, 33.402737, 29.418894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583134, 32.649223, 29.350962>,  <41.878342, 33.225208, 29.728439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583134, 32.649223, 29.350962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.423149, 32.983242, 29.199846>,  <41.327160, 33.183655, 29.109177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.423149, 32.983242, 29.199846>,  <41.583134, 32.649223, 29.350962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423149, 32.983242, 29.199846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276562, -0.283022, -0.918375,
		-0.873810, -0.471796, -0.117745,
		-0.399961, 0.835049, -0.377789,
		41.303162, 33.233757, 29.086510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308502, 32.368225, 28.735926>,  <41.583134, 32.649223, 29.350962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308502, 32.368225, 28.735926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.317997, 32.760876, 28.660189>,  <41.323696, 32.996464, 28.614746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.317997, 32.760876, 28.660189>,  <41.308502, 32.368225, 28.735926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317997, 32.760876, 28.660189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212712, -0.190019, -0.958460,
		-0.976826, -0.017521, -0.213314,
		0.023741, 0.981624, -0.189342,
		41.325119, 33.055363, 28.603386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121834, 32.423103, 27.972929>,  <41.308502, 32.368225, 28.735926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121834, 32.423103, 27.972929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.262642, 32.793724, 28.025984>,  <41.347126, 33.016094, 28.057816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.262642, 32.793724, 28.025984>,  <41.121834, 32.423103, 27.972929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262642, 32.793724, 28.025984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049621, 0.123033, -0.991161,
		-0.934676, 0.355490, -0.002666,
		0.352020, 0.926547, 0.132636,
		41.368248, 33.071690, 28.065775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701183, 32.820473, 27.498499>,  <41.121834, 32.423103, 27.972929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701183, 32.820473, 27.498499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.008389, 33.046055, 27.619894>,  <41.192711, 33.181404, 27.692730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.008389, 33.046055, 27.619894>,  <40.701183, 32.820473, 27.498499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008389, 33.046055, 27.619894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123747, 0.334270, -0.934318,
		-0.628361, 0.755127, 0.186937,
		0.768017, 0.563956, 0.303487,
		41.238792, 33.215240, 27.710939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638046, 33.491570, 27.151495>,  <40.701183, 32.820473, 27.498499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638046, 33.491570, 27.151495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.023766, 33.451401, 27.249512>,  <41.255196, 33.427299, 27.308321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.023766, 33.451401, 27.249512>,  <40.638046, 33.491570, 27.151495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023766, 33.451401, 27.249512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263652, 0.277235, -0.923920,
		0.024851, 0.955539, 0.293814,
		0.964297, -0.100425, 0.245041,
		41.313053, 33.421272, 27.323025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023270, 34.177639, 27.057800>,  <40.638046, 33.491570, 27.151495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023270, 34.177639, 27.057800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.318863, 33.908150, 27.057550>,  <41.496220, 33.746456, 27.057402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.318863, 33.908150, 27.057550>,  <41.023270, 34.177639, 27.057800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318863, 33.908150, 27.057550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195910, 0.215774, -0.956588,
		0.644606, 0.706785, 0.291443,
		0.738988, -0.673719, -0.000623,
		41.540558, 33.706036, 27.057364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607555, 34.419277, 26.684780>,  <41.023270, 34.177639, 27.057800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607555, 34.419277, 26.684780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.666367, 34.023861, 26.671118>,  <41.701653, 33.786610, 26.662920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.666367, 34.023861, 26.671118>,  <41.607555, 34.419277, 26.684780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666367, 34.023861, 26.671118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424526, 0.094256, -0.900496,
		0.893398, 0.117897, 0.433520,
		0.147028, -0.988542, -0.034158,
		41.710476, 33.727299, 26.660870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179829, 34.415779, 26.307821>,  <41.607555, 34.419277, 26.684780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179829, 34.415779, 26.307821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.033947, 34.044231, 26.281944>,  <41.946419, 33.821301, 26.266418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.033947, 34.044231, 26.281944>,  <42.179829, 34.415779, 26.307821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033947, 34.044231, 26.281944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306694, -0.054234, -0.950262,
		0.879163, -0.366408, 0.304659,
		-0.364707, -0.928872, -0.064695,
		41.924534, 33.765572, 26.262535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836357, 33.905220, 26.196077>,  <42.179829, 34.415779, 26.307821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836357, 33.905220, 26.196077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.498577, 33.748955, 26.049496>,  <42.295910, 33.655193, 25.961546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.498577, 33.748955, 26.049496>,  <42.836357, 33.905220, 26.196077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498577, 33.748955, 26.049496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404438, -0.016471, -0.914417,
		0.351197, -0.920385, 0.171910,
		-0.844447, -0.390667, -0.366454,
		42.245243, 33.631756, 25.939560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101482, 33.489258, 25.615650>,  <42.836357, 33.905220, 26.196077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101482, 33.489258, 25.615650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.708679, 33.547958, 25.568100>,  <42.473000, 33.583179, 25.539570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.708679, 33.547958, 25.568100>,  <43.101482, 33.489258, 25.615650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708679, 33.547958, 25.568100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126373, 0.042843, -0.991057,
		-0.140351, -0.988245, -0.060618,
		-0.982004, 0.146756, -0.118874,
		42.414078, 33.591984, 25.532438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021175, 33.092720, 25.045465>,  <43.101482, 33.489258, 25.615650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021175, 33.092720, 25.045465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.708397, 33.341389, 25.063734>,  <42.520729, 33.490589, 25.074696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.708397, 33.341389, 25.063734>,  <43.021175, 33.092720, 25.045465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708397, 33.341389, 25.063734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049671, 0.135175, -0.989576,
		-0.621366, -0.771525, -0.136578,
		-0.781945, 0.621673, 0.045670,
		42.473812, 33.527889, 25.077435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.588135, 33.002296, 24.429737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.463684, 33.366211, 24.539637>,  <42.389015, 33.584560, 24.605576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.463684, 33.366211, 24.539637>,  <42.588135, 33.002296, 24.429737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463684, 33.366211, 24.539637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060536, 0.307482, -0.949627,
		-0.948440, -0.278818, -0.150740,
		-0.311123, 0.909789, 0.274750,
		42.370346, 33.639149, 24.622061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003887, 33.202763, 24.036373>,  <42.588135, 33.002296, 24.429737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003887, 33.202763, 24.036373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.208698, 33.522671, 24.161718>,  <42.331585, 33.714615, 24.236925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.208698, 33.522671, 24.161718>,  <42.003887, 33.202763, 24.036373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208698, 33.522671, 24.161718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067648, 0.326134, -0.942900,
		-0.856300, 0.503990, 0.112887,
		0.512029, 0.799769, 0.313362,
		42.362309, 33.762600, 24.255728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718513, 33.776928, 23.673258>,  <42.003887, 33.202763, 24.036373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718513, 33.776928, 23.673258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.081371, 33.905979, 23.781324>,  <42.299088, 33.983410, 23.846165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.081371, 33.905979, 23.781324>,  <41.718513, 33.776928, 23.673258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081371, 33.905979, 23.781324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190186, 0.258367, -0.947141,
		-0.375380, 0.910579, 0.173017,
		0.907149, 0.322632, 0.270165,
		42.353516, 34.002769, 23.862373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705997, 34.407574, 23.270279>,  <41.718513, 33.776928, 23.673258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705997, 34.407574, 23.270279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.083134, 34.335510, 23.382420>,  <42.309414, 34.292271, 23.449703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.083134, 34.335510, 23.382420>,  <41.705997, 34.407574, 23.270279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083134, 34.335510, 23.382420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327809, 0.350034, -0.877506,
		0.059960, 0.919249, 0.389084,
		0.942839, -0.180161, 0.280350,
		42.365986, 34.281464, 23.466524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092892, 34.892887, 23.013432>,  <41.705997, 34.407574, 23.270279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092892, 34.892887, 23.013432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.409466, 34.667683, 23.108641>,  <42.599411, 34.532562, 23.165766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.409466, 34.667683, 23.108641>,  <42.092892, 34.892887, 23.013432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409466, 34.667683, 23.108641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560558, 0.513238, -0.649894,
		0.243732, 0.647773, 0.721792,
		0.791435, -0.563007, 0.238022,
		42.646896, 34.498779, 23.180048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745090, 35.366837, 22.991243>,  <42.092892, 34.892887, 23.013432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745090, 35.366837, 22.991243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.837017, 34.984295, 22.919062>,  <42.892174, 34.754768, 22.875751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.837017, 34.984295, 22.919062>,  <42.745090, 35.366837, 22.991243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.837017, 34.984295, 22.919062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417256, 0.264334, -0.869497,
		0.879251, 0.124529, 0.459795,
		0.229817, -0.956358, -0.180455,
		42.905964, 34.697388, 22.864925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478741, 35.311237, 22.640341>,  <42.745090, 35.366837, 22.991243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478741, 35.311237, 22.640341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.313053, 34.965214, 22.527134>,  <43.213642, 34.757599, 22.459209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.313053, 34.965214, 22.527134>,  <43.478741, 35.311237, 22.640341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313053, 34.965214, 22.527134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429186, 0.088570, -0.898863,
		0.802634, -0.493794, 0.334583,
		-0.414219, -0.865057, -0.283019,
		43.188786, 34.705696, 22.442228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921047, 35.037151, 22.172304>,  <43.478741, 35.311237, 22.640341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921047, 35.037151, 22.172304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.574947, 34.851368, 22.096806>,  <43.367287, 34.739899, 22.051506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.574947, 34.851368, 22.096806>,  <43.921047, 35.037151, 22.172304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574947, 34.851368, 22.096806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215914, -0.005441, -0.976397,
		0.452470, -0.885578, 0.104991,
		-0.865247, -0.464459, -0.188746,
		43.315372, 34.712029, 22.040182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251240, 34.404888, 21.787098>,  <43.921047, 35.037151, 22.172304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251240, 34.404888, 21.787098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.858284, 34.431934, 21.717417>,  <43.622513, 34.448162, 21.675608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.858284, 34.431934, 21.717417>,  <44.251240, 34.404888, 21.787098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858284, 34.431934, 21.717417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170831, -0.052827, -0.983883,
		-0.075733, -0.996312, 0.040345,
		-0.982385, 0.067621, -0.174202,
		43.563568, 34.452221, 21.665155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177231, 34.046276, 21.247149>,  <44.251240, 34.404888, 21.787098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177231, 34.046276, 21.247149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.856022, 34.284397, 21.258183>,  <43.663296, 34.427269, 21.264803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.856022, 34.284397, 21.258183>,  <44.177231, 34.046276, 21.247149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856022, 34.284397, 21.258183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058467, 0.124766, -0.990462,
		-0.593070, -0.793753, -0.134996,
		-0.803025, 0.595306, 0.027586,
		43.615112, 34.462990, 21.266459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687416, 33.730019, 20.765411>,  <44.177231, 34.046276, 21.247149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687416, 33.730019, 20.765411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.605000, 34.119694, 20.802286>,  <43.555550, 34.353500, 20.824411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.605000, 34.119694, 20.802286>,  <43.687416, 33.730019, 20.765411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605000, 34.119694, 20.802286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212374, 0.136479, -0.967611,
		-0.955220, -0.179788, -0.235013,
		-0.206039, 0.974192, 0.092185,
		43.543186, 34.411953, 20.829941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392262, 33.870739, 20.159651>,  <43.687416, 33.730019, 20.765411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392262, 33.870739, 20.159651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.429939, 34.260841, 20.239656>,  <43.452545, 34.494904, 20.287661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.429939, 34.260841, 20.239656>,  <43.392262, 33.870739, 20.159651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429939, 34.260841, 20.239656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251265, 0.171116, -0.952673,
		-0.963324, 0.139989, -0.228930,
		0.094190, 0.975255, 0.200014,
		43.458195, 34.553417, 20.299662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961098, 34.208431, 19.735979>,  <43.392262, 33.870739, 20.159651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961098, 34.208431, 19.735979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.257881, 34.460148, 19.828484>,  <43.435951, 34.611179, 19.883987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.257881, 34.460148, 19.828484>,  <42.961098, 34.208431, 19.735979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257881, 34.460148, 19.828484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187834, 0.136013, -0.972738,
		-0.643592, 0.765174, -0.017286,
		0.741962, 0.629293, 0.231263,
		43.480469, 34.648937, 19.897863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868195, 34.767551, 19.340792>,  <42.961098, 34.208431, 19.735979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868195, 34.767551, 19.340792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.242664, 34.843475, 19.459148>,  <43.467346, 34.889030, 19.530163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.242664, 34.843475, 19.459148>,  <42.868195, 34.767551, 19.340792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242664, 34.843475, 19.459148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227769, 0.313618, -0.921827,
		-0.267773, 0.930384, 0.250367,
		0.936172, 0.189814, 0.295891,
		43.523518, 34.900421, 19.547916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.029015, 35.372475, 19.031336>,  <42.868195, 34.767551, 19.340792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.029015, 35.372475, 19.031336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.394596, 35.231514, 19.111835>,  <43.613945, 35.146938, 19.160135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.394596, 35.231514, 19.111835>,  <43.029015, 35.372475, 19.031336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394596, 35.231514, 19.111835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332903, 0.367445, -0.868423,
		0.232084, 0.860696, 0.453143,
		0.913954, -0.352400, 0.201251,
		43.668781, 35.125793, 19.172211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527035, 35.908752, 18.837194>,  <43.029015, 35.372475, 19.031336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527035, 35.908752, 18.837194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.719681, 35.558315, 18.846224>,  <43.835270, 35.348053, 18.851641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.719681, 35.558315, 18.846224>,  <43.527035, 35.908752, 18.837194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719681, 35.558315, 18.846224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442744, 0.221003, -0.868985,
		0.756320, 0.428514, 0.494323,
		0.481619, -0.876090, 0.022573,
		43.864166, 35.295486, 18.852995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278008, 36.013885, 18.556974>,  <43.527035, 35.908752, 18.837194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278008, 36.013885, 18.556974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.167683, 35.630764, 18.524647>,  <44.101486, 35.400890, 18.505249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.167683, 35.630764, 18.524647>,  <44.278008, 36.013885, 18.556974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167683, 35.630764, 18.524647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205329, 0.023431, -0.978413,
		0.939024, -0.286455, 0.190203,
		-0.275814, -0.957807, -0.080820,
		44.084938, 35.343422, 18.500401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738041, 35.774010, 18.137873>,  <44.278008, 36.013885, 18.556974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738041, 35.774010, 18.137873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.457752, 35.490997, 18.101234>,  <44.289577, 35.321190, 18.079252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.457752, 35.490997, 18.101234>,  <44.738041, 35.774010, 18.137873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.457752, 35.490997, 18.101234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023254, 0.105670, -0.994129,
		0.713053, -0.698740, -0.057593,
		-0.700724, -0.707528, -0.091596,
		44.247536, 35.278740, 18.073755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941795, 35.454151, 17.466814>,  <44.738041, 35.774010, 18.137873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941795, 35.454151, 17.466814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.578594, 35.311226, 17.554321>,  <44.360676, 35.225471, 17.606827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.578594, 35.311226, 17.554321>,  <44.941795, 35.454151, 17.466814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578594, 35.311226, 17.554321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207106, -0.071108, -0.975731,
		0.364202, -0.931272, -0.009437,
		-0.908000, -0.357317, 0.218770,
		44.306194, 35.204029, 17.619951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722519, 34.822998, 17.028534>,  <44.941795, 35.454151, 17.466814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722519, 34.822998, 17.028534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.360073, 34.959721, 17.128229>,  <44.142605, 35.041756, 17.188046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.360073, 34.959721, 17.128229>,  <44.722519, 34.822998, 17.028534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360073, 34.959721, 17.128229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289459, -0.071324, -0.954529,
		-0.308494, -0.937058, 0.163569,
		-0.906116, 0.341813, 0.249236,
		44.088238, 35.062263, 17.203001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322605, 34.647503, 16.446947>,  <44.722519, 34.822998, 17.028534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322605, 34.647503, 16.446947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.069061, 34.906414, 16.616304>,  <43.916935, 35.061760, 16.717918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.069061, 34.906414, 16.616304>,  <44.322605, 34.647503, 16.446947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069061, 34.906414, 16.616304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452039, 0.134165, -0.881851,
		-0.627603, -0.750358, 0.207552,
		-0.633858, 0.647273, 0.423393,
		43.878902, 35.100597, 16.743322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.734367, 34.344196, 16.191183>,  <44.322605, 34.647503, 16.446947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.734367, 34.344196, 16.191183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.675358, 34.727997, 16.287184>,  <43.639950, 34.958275, 16.344784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.675358, 34.727997, 16.287184>,  <43.734367, 34.344196, 16.191183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675358, 34.727997, 16.287184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220748, 0.204596, -0.953630,
		-0.964109, -0.193666, 0.181624,
		-0.147527, 0.959496, 0.240004,
		43.631100, 35.015846, 16.359184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083664, 34.558022, 15.884670>,  <43.734367, 34.344196, 16.191183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083664, 34.558022, 15.884670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.338455, 34.859051, 15.951486>,  <43.491329, 35.039669, 15.991574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.338455, 34.859051, 15.951486>,  <43.083664, 34.558022, 15.884670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338455, 34.859051, 15.951486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069057, 0.271517, -0.959953,
		-0.767785, 0.599931, 0.224920,
		0.636975, 0.752570, 0.167038,
		43.529549, 35.084824, 16.001596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781723, 35.248348, 15.757765>,  <43.083664, 34.558022, 15.884670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781723, 35.248348, 15.757765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.172565, 35.203850, 15.685232>,  <43.407070, 35.177151, 15.641712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.172565, 35.203850, 15.685232>,  <42.781723, 35.248348, 15.757765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172565, 35.203850, 15.685232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139865, 0.306326, -0.941596,
		0.160298, 0.945404, 0.283754,
		0.977109, -0.111249, -0.181332,
		43.465698, 35.170475, 15.630833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449432, 35.289268, 15.215953>,  <42.781723, 35.248348, 15.757765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449432, 35.289268, 15.215953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.056221, 35.279133, 15.143267>,  <41.820293, 35.273052, 15.099655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.056221, 35.279133, 15.143267>,  <42.449432, 35.289268, 15.215953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056221, 35.279133, 15.143267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179634, -0.068634, 0.981336,
		-0.037342, 0.997320, 0.062917,
		-0.983025, -0.025343, -0.181716,
		41.761314, 35.271530, 15.088752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042698, 35.805851, 15.739929>,  <42.449432, 35.289268, 15.215953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042698, 35.805851, 15.739929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.737144, 35.574966, 15.624477>,  <41.553814, 35.436436, 15.555206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.737144, 35.574966, 15.624477>,  <42.042698, 35.805851, 15.739929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737144, 35.574966, 15.624477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416270, 0.098933, 0.903843,
		-0.493155, 0.810578, -0.315850,
		-0.763883, -0.577214, -0.288630,
		41.507980, 35.401802, 15.537889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423954, 36.145687, 16.019205>,  <42.042698, 35.805851, 15.739929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423954, 36.145687, 16.019205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.340996, 35.759106, 15.958595>,  <41.291222, 35.527157, 15.922229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.340996, 35.759106, 15.958595>,  <41.423954, 36.145687, 16.019205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340996, 35.759106, 15.958595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355787, -0.069767, 0.931959,
		-0.911263, 0.247199, -0.329381,
		-0.207400, -0.966450, -0.151527,
		41.278774, 35.469170, 15.913137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811100, 36.014679, 16.284544>,  <41.423954, 36.145687, 16.019205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811100, 36.014679, 16.284544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.960827, 35.645401, 16.249691>,  <41.050663, 35.423832, 16.228779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.960827, 35.645401, 16.249691>,  <40.811100, 36.014679, 16.284544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960827, 35.645401, 16.249691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337929, -0.223309, 0.914296,
		-0.863534, -0.312790, -0.395564,
		0.374316, -0.923199, -0.087134,
		41.073120, 35.368443, 16.223551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399609, 35.677307, 16.656830>,  <40.811100, 36.014679, 16.284544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399609, 35.677307, 16.656830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.690060, 35.403252, 16.633789>,  <40.864330, 35.238819, 16.619965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.690060, 35.403252, 16.633789>,  <40.399609, 35.677307, 16.656830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690060, 35.403252, 16.633789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238544, -0.329615, 0.913483,
		-0.644853, -0.649564, -0.402779,
		0.726127, -0.685143, -0.057604,
		40.907898, 35.197708, 16.616508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155754, 34.945454, 16.852381>,  <40.399609, 35.677307, 16.656830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155754, 34.945454, 16.852381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.550331, 34.976471, 16.910225>,  <40.787079, 34.995083, 16.944931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.550331, 34.976471, 16.910225>,  <40.155754, 34.945454, 16.852381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550331, 34.976471, 16.910225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107587, -0.359764, 0.926820,
		0.123894, -0.929815, -0.346545,
		0.986446, 0.077543, 0.144608,
		40.846264, 34.999733, 16.953608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307774, 34.266449, 17.255604>,  <40.155754, 34.945454, 16.852381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307774, 34.266449, 17.255604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.590221, 34.546963, 17.294781>,  <40.759689, 34.715271, 17.318287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.590221, 34.546963, 17.294781>,  <40.307774, 34.266449, 17.255604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590221, 34.546963, 17.294781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047810, -0.185220, 0.981533,
		0.706474, -0.688400, -0.164316,
		0.706122, 0.701284, 0.097941,
		40.802059, 34.757347, 17.324163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836029, 33.966572, 17.747843>,  <40.307774, 34.266449, 17.255604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836029, 33.966572, 17.747843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.910507, 34.359577, 17.747189>,  <40.955193, 34.595379, 17.746796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.910507, 34.359577, 17.747189>,  <40.836029, 33.966572, 17.747843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910507, 34.359577, 17.747189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087670, -0.014957, 0.996037,
		0.978593, -0.185602, -0.088922,
		0.186197, 0.982511, -0.001635,
		40.966366, 34.654331, 17.746698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404640, 34.076015, 18.115248>,  <40.836029, 33.966572, 17.747843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404640, 34.076015, 18.115248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.243469, 34.441898, 18.127697>,  <41.146767, 34.661427, 18.135166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.243469, 34.441898, 18.127697>,  <41.404640, 34.076015, 18.115248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243469, 34.441898, 18.127697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177862, 0.044898, 0.983030,
		0.897783, 0.401626, -0.180782,
		-0.402927, 0.914703, 0.031125,
		41.122593, 34.716309, 18.137035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866463, 34.589664, 18.574223>,  <41.404640, 34.076015, 18.115248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866463, 34.589664, 18.574223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.491756, 34.728886, 18.559673>,  <41.266933, 34.812416, 18.550943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.491756, 34.728886, 18.559673>,  <41.866463, 34.589664, 18.574223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491756, 34.728886, 18.559673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052593, -0.037259, 0.997921,
		0.345972, 0.936735, 0.053208,
		-0.936770, 0.348051, -0.036375,
		41.210724, 34.833302, 18.548761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874630, 34.843243, 19.218470>,  <41.866463, 34.589664, 18.574223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874630, 34.843243, 19.218470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.491558, 34.852081, 19.103680>,  <41.261715, 34.857384, 19.034805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.491558, 34.852081, 19.103680>,  <41.874630, 34.843243, 19.218470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491558, 34.852081, 19.103680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286815, 0.010237, 0.957931,
		0.024108, 0.999704, -0.003465,
		-0.957683, 0.022100, -0.286976,
		41.204254, 34.858711, 19.017588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528446, 35.327660, 19.571993>,  <41.874630, 34.843243, 19.218470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528446, 35.327660, 19.571993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.258347, 35.049507, 19.473619>,  <41.096287, 34.882614, 19.414597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.258347, 35.049507, 19.473619>,  <41.528446, 35.327660, 19.571993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258347, 35.049507, 19.473619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276179, -0.070802, 0.958495,
		-0.683931, 0.715146, -0.144240,
		-0.675251, -0.695380, -0.245932,
		41.055771, 34.840893, 19.399839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932930, 35.587944, 19.953829>,  <41.528446, 35.327660, 19.571993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932930, 35.587944, 19.953829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.889004, 35.197609, 19.878263>,  <40.862648, 34.963409, 19.832924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.889004, 35.197609, 19.878263>,  <40.932930, 35.587944, 19.953829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889004, 35.197609, 19.878263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358107, -0.138452, 0.923358,
		-0.927199, 0.169054, -0.334248,
		-0.109820, -0.975834, -0.188912,
		40.856056, 34.904858, 19.821590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377323, 35.396915, 20.325075>,  <40.932930, 35.587944, 19.953829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377323, 35.396915, 20.325075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.543877, 35.037865, 20.267252>,  <40.643810, 34.822433, 20.232559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.543877, 35.037865, 20.267252>,  <40.377323, 35.396915, 20.325075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543877, 35.037865, 20.267252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211612, -0.250309, 0.944757,
		-0.884220, -0.362793, -0.294172,
		0.416385, -0.897623, -0.144557,
		40.668793, 34.768578, 20.223885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048302, 34.952354, 20.814970>,  <40.377323, 35.396915, 20.325075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048302, 34.952354, 20.814970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.350399, 34.717873, 20.697681>,  <40.531658, 34.577183, 20.627308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.350399, 34.717873, 20.697681>,  <40.048302, 34.952354, 20.814970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350399, 34.717873, 20.697681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156759, -0.595919, 0.787596,
		-0.636429, -0.548857, -0.541953,
		0.755238, -0.586205, -0.293222,
		40.576969, 34.542011, 20.609715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839264, 34.336193, 20.791767>,  <40.048302, 34.952354, 20.814970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839264, 34.336193, 20.791767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.228073, 34.251308, 20.832045>,  <40.461357, 34.200378, 20.856211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.228073, 34.251308, 20.832045>,  <39.839264, 34.336193, 20.791767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228073, 34.251308, 20.832045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192447, -0.473714, 0.859395,
		-0.134671, -0.854730, -0.501299,
		0.972023, -0.212210, 0.100695,
		40.519680, 34.187645, 20.862253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894325, 33.596676, 20.818798>,  <39.839264, 34.336193, 20.791767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894325, 33.596676, 20.818798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.216846, 33.762600, 20.987471>,  <40.410358, 33.862152, 21.088675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.216846, 33.762600, 20.987471>,  <39.894325, 33.596676, 20.818798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216846, 33.762600, 20.987471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259762, -0.392158, 0.882460,
		0.531415, -0.821065, -0.208447,
		0.806301, 0.414806, 0.421680,
		40.458736, 33.887043, 21.113976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300762, 33.101032, 21.254871>,  <39.894325, 33.596676, 20.818798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300762, 33.101032, 21.254871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.385567, 33.462158, 21.404528>,  <40.436451, 33.678833, 21.494322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.385567, 33.462158, 21.404528>,  <40.300762, 33.101032, 21.254871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385567, 33.462158, 21.404528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234175, -0.324760, 0.916348,
		0.948796, -0.281889, 0.142564,
		0.212010, 0.902812, 0.374142,
		40.449169, 33.733002, 21.516771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565090, 32.960308, 21.828501>,  <40.300762, 33.101032, 21.254871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565090, 32.960308, 21.828501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.486958, 33.350491, 21.869154>,  <40.440079, 33.584602, 21.893545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.486958, 33.350491, 21.869154>,  <40.565090, 32.960308, 21.828501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486958, 33.350491, 21.869154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245472, -0.148954, 0.957892,
		0.949522, 0.162155, 0.268542,
		-0.195327, 0.975458, 0.101631,
		40.428360, 33.643127, 21.899643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765663, 33.176155, 22.532125>,  <40.565090, 32.960308, 21.828501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765663, 33.176155, 22.532125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.543411, 33.490871, 22.424618>,  <40.410061, 33.679703, 22.360113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.543411, 33.490871, 22.424618>,  <40.765663, 33.176155, 22.532125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543411, 33.490871, 22.424618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469994, -0.030566, 0.882140,
		0.685844, 0.616464, 0.386770,
		-0.555629, 0.786790, -0.268771,
		40.376724, 33.726910, 22.343987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.579842, 33.152496, 27.580708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.196072, 33.225567, 27.494791>,  <41.965809, 33.269409, 27.443241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.196072, 33.225567, 27.494791>,  <42.579842, 33.152496, 27.580708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196072, 33.225567, 27.494791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197542, 0.108103, 0.974316,
		0.201203, 0.977212, -0.067630,
		-0.959424, 0.182676, -0.214791,
		41.908245, 33.280369, 27.430353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384361, 33.730690, 27.927599>,  <42.579842, 33.152496, 27.580708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384361, 33.730690, 27.927599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.021236, 33.576313, 27.861958>,  <41.803364, 33.483685, 27.822573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.021236, 33.576313, 27.861958>,  <42.384361, 33.730690, 27.927599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021236, 33.576313, 27.861958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247871, 0.178129, 0.952276,
		-0.338295, 0.905160, -0.257372,
		-0.907808, -0.385946, -0.164103,
		41.748894, 33.460529, 27.812727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956032, 34.157104, 28.310822>,  <42.384361, 33.730690, 27.927599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956032, 34.157104, 28.310822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.741158, 33.828449, 28.234573>,  <41.612232, 33.631256, 28.188824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.741158, 33.828449, 28.234573>,  <41.956032, 34.157104, 28.310822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741158, 33.828449, 28.234573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345337, 0.008062, 0.938444,
		-0.769525, 0.569952, -0.288073,
		-0.537190, -0.821639, -0.190622,
		41.580002, 33.581959, 28.177387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195248, 34.320469, 28.263323>,  <41.956032, 34.157104, 28.310822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195248, 34.320469, 28.263323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.264263, 33.946056, 28.386013>,  <41.305672, 33.721409, 28.459627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.264263, 33.946056, 28.386013>,  <41.195248, 34.320469, 28.263323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264263, 33.946056, 28.386013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599976, 0.147092, 0.786379,
		-0.781191, -0.319709, -0.536216,
		0.172539, -0.936029, 0.306724,
		41.316025, 33.665249, 28.478031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669708, 34.286015, 28.717062>,  <41.195248, 34.320469, 28.263323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669708, 34.286015, 28.717062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.889183, 33.968296, 28.821390>,  <41.020870, 33.777664, 28.883987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.889183, 33.968296, 28.821390>,  <40.669708, 34.286015, 28.717062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889183, 33.968296, 28.821390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570416, -0.127608, 0.811382,
		-0.611198, -0.593973, -0.523099,
		0.548691, -0.794300, 0.260818,
		41.053791, 33.730007, 28.899635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131203, 33.951206, 28.900394>,  <40.669708, 34.286015, 28.717062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131203, 33.951206, 28.900394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.457497, 33.772312, 29.047123>,  <40.653275, 33.664978, 29.135160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.457497, 33.772312, 29.047123>,  <40.131203, 33.951206, 28.900394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457497, 33.772312, 29.047123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447383, -0.085853, 0.890212,
		-0.366639, -0.890287, -0.270118,
		0.815735, -0.447233, 0.366822,
		40.702217, 33.638142, 29.157169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953964, 33.359425, 29.400949>,  <40.131203, 33.951206, 28.900394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953964, 33.359425, 29.400949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.319229, 33.499672, 29.484091>,  <40.538387, 33.583820, 29.533976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.319229, 33.499672, 29.484091>,  <39.953964, 33.359425, 29.400949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319229, 33.499672, 29.484091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264343, 0.121267, 0.956774,
		0.310254, -0.928635, 0.203419,
		0.913162, 0.350616, 0.207854,
		40.593178, 33.604855, 29.546448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250813, 32.945568, 30.028193>,  <39.953964, 33.359425, 29.400949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250813, 32.945568, 30.028193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.415001, 33.308723, 29.994104>,  <40.513512, 33.526615, 29.973652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.415001, 33.308723, 29.994104>,  <40.250813, 32.945568, 30.028193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415001, 33.308723, 29.994104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088627, 0.132733, 0.987181,
		0.907558, -0.397654, 0.134946,
		0.410468, 0.907884, -0.085220,
		40.538143, 33.581089, 29.968538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468937, 33.051231, 30.634022>,  <40.250813, 32.945568, 30.028193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468937, 33.051231, 30.634022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.533440, 33.424782, 30.506357>,  <40.572144, 33.648914, 30.429758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.533440, 33.424782, 30.506357>,  <40.468937, 33.051231, 30.634022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533440, 33.424782, 30.506357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078115, 0.334458, 0.939168,
		0.983815, -0.126519, 0.126885,
		0.161261, 0.933879, -0.319162,
		40.581818, 33.704945, 30.410608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931591, 33.399372, 31.096954>,  <40.468937, 33.051231, 30.634022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931591, 33.399372, 31.096954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.749649, 33.698048, 30.902813>,  <40.640484, 33.877251, 30.786327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.749649, 33.698048, 30.902813>,  <40.931591, 33.399372, 31.096954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749649, 33.698048, 30.902813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369542, 0.337612, 0.865712,
		0.810277, 0.573129, 0.122369,
		-0.454851, 0.746687, -0.485355,
		40.613194, 33.922054, 30.757206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224239, 33.968445, 31.418440>,  <40.931591, 33.399372, 31.096954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224239, 33.968445, 31.418440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.880211, 34.059071, 31.235594>,  <40.673794, 34.113445, 31.125887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.880211, 34.059071, 31.235594>,  <41.224239, 33.968445, 31.418440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880211, 34.059071, 31.235594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351790, 0.385549, 0.852992,
		0.369498, 0.894438, -0.251895,
		-0.860067, 0.226564, -0.457115,
		40.622192, 34.127041, 31.098459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925896, 34.450882, 31.884577>,  <41.224239, 33.968445, 31.418440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925896, 34.450882, 31.884577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.607300, 34.396198, 31.648977>,  <40.416142, 34.363388, 31.507618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.607300, 34.396198, 31.648977>,  <40.925896, 34.450882, 31.884577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607300, 34.396198, 31.648977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593861, 0.360105, 0.719482,
		0.113743, 0.922841, -0.368004,
		-0.796487, -0.136707, -0.588998,
		40.368355, 34.355186, 31.472279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546406, 35.069263, 31.947937>,  <40.925896, 34.450882, 31.884577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546406, 35.069263, 31.947937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.317970, 34.759407, 31.839275>,  <40.180908, 34.573494, 31.774078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.317970, 34.759407, 31.839275>,  <40.546406, 35.069263, 31.947937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317970, 34.759407, 31.839275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639540, 0.212394, 0.738835,
		-0.514631, 0.595674, -0.616707,
		-0.571089, -0.774636, -0.271653,
		40.146645, 34.527016, 31.757780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007729, 35.281544, 31.476122>,  <40.546406, 35.069263, 31.947937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007729, 35.281544, 31.476122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.815693, 35.615814, 31.369423>,  <39.700470, 35.816376, 31.305405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.815693, 35.615814, 31.369423>,  <40.007729, 35.281544, 31.476122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815693, 35.615814, 31.369423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231465, 0.413982, 0.880365,
		0.846132, 0.360910, -0.392179,
		-0.480088, 0.835681, -0.266745,
		39.671665, 35.866520, 31.289400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599037, 35.323627, 32.021290>,  <40.007729, 35.281544, 31.476122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599037, 35.323627, 32.021290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.441196, 35.685123, 32.087677>,  <39.346493, 35.902020, 32.127510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.441196, 35.685123, 32.087677>,  <39.599037, 35.323627, 32.021290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441196, 35.685123, 32.087677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048614, 0.159841, -0.985945,
		-0.917567, -0.397121, -0.019138,
		-0.394598, 0.903740, 0.165971,
		39.322819, 35.956245, 32.137466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054260, 35.432114, 31.555420>,  <39.599037, 35.323627, 32.021290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054260, 35.432114, 31.555420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.155537, 35.801655, 31.670229>,  <39.216301, 36.023380, 31.739115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.155537, 35.801655, 31.670229>,  <39.054260, 35.432114, 31.555420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155537, 35.801655, 31.670229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044449, 0.307484, -0.950515,
		-0.966394, 0.227905, 0.118917,
		0.253192, 0.923857, 0.287021,
		39.231495, 36.078812, 31.756334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684181, 35.878632, 31.184570>,  <39.054260, 35.432114, 31.555420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684181, 35.878632, 31.184570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.997036, 36.108486, 31.280945>,  <39.184750, 36.246399, 31.338770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.997036, 36.108486, 31.280945>,  <38.684181, 35.878632, 31.184570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997036, 36.108486, 31.280945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031019, 0.350281, -0.936131,
		-0.622332, 0.739657, 0.256143,
		0.782138, 0.574639, 0.240935,
		39.231678, 36.280876, 31.353226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536213, 36.496410, 30.786816>,  <38.684181, 35.878632, 31.184570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536213, 36.496410, 30.786816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.913773, 36.491467, 30.918816>,  <39.140308, 36.488499, 30.998016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.913773, 36.491467, 30.918816>,  <38.536213, 36.496410, 30.786816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913773, 36.491467, 30.918816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306298, 0.406287, -0.860879,
		-0.123432, 0.913662, 0.387281,
		0.943900, -0.012363, 0.330001,
		39.196941, 36.487759, 31.017817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831863, 37.240860, 30.705723>,  <38.536213, 36.496410, 30.786816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831863, 37.240860, 30.705723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.134285, 36.979340, 30.693512>,  <39.315739, 36.822426, 30.686186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.134285, 36.979340, 30.693512>,  <38.831863, 37.240860, 30.705723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134285, 36.979340, 30.693512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330497, 0.421608, -0.844404,
		0.564943, 0.628323, 0.534836,
		0.756050, -0.653802, -0.030525,
		39.361099, 36.783199, 30.684355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420971, 37.665810, 30.467247>,  <38.831863, 37.240860, 30.705723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420971, 37.665810, 30.467247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.500263, 37.278812, 30.404423>,  <39.547840, 37.046616, 30.366728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.500263, 37.278812, 30.404423>,  <39.420971, 37.665810, 30.467247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500263, 37.278812, 30.404423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592149, 0.245903, -0.767392,
		0.781065, 0.059119, 0.621644,
		0.198232, -0.967490, -0.157060,
		39.559734, 36.988567, 30.357306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099251, 37.590118, 30.384829>,  <39.420971, 37.665810, 30.467247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099251, 37.590118, 30.384829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.974106, 37.264503, 30.189089>,  <39.899021, 37.069134, 30.071646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.974106, 37.264503, 30.189089>,  <40.099251, 37.590118, 30.384829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974106, 37.264503, 30.189089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657152, 0.186466, -0.730329,
		0.685762, -0.550067, 0.476609,
		-0.312859, -0.814037, -0.489349,
		39.880249, 37.020290, 30.042284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710609, 37.199432, 30.145121>,  <40.099251, 37.590118, 30.384829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710609, 37.199432, 30.145121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.404457, 37.060001, 29.928720>,  <40.220764, 36.976341, 29.798880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.404457, 37.060001, 29.928720>,  <40.710609, 37.199432, 30.145121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404457, 37.060001, 29.928720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552413, 0.075457, -0.830148,
		0.330197, -0.934236, 0.134807,
		-0.765382, -0.348581, -0.541000,
		40.174843, 36.955429, 29.766420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932133, 36.778488, 29.620296>,  <40.710609, 37.199432, 30.145121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932133, 36.778488, 29.620296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.562122, 36.784428, 29.468452>,  <40.340115, 36.787991, 29.377346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.562122, 36.784428, 29.468452>,  <40.932133, 36.778488, 29.620296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562122, 36.784428, 29.468452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376054, -0.106084, -0.920505,
		-0.053937, -0.994246, 0.092547,
		-0.925026, 0.014846, -0.379612,
		40.284615, 36.788883, 29.354568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895424, 36.142643, 29.104723>,  <40.932133, 36.778488, 29.620296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895424, 36.142643, 29.104723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.626671, 36.427208, 29.022305>,  <40.465420, 36.597946, 28.972853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.626671, 36.427208, 29.022305>,  <40.895424, 36.142643, 29.104723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626671, 36.427208, 29.022305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206255, -0.087474, -0.974580,
		-0.711356, -0.697305, -0.087961,
		-0.671886, 0.711416, -0.206048,
		40.425106, 36.640633, 28.960489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681240, 35.879257, 28.491789>,  <40.895424, 36.142643, 29.104723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681240, 35.879257, 28.491789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.564381, 36.261566, 28.505333>,  <40.494267, 36.490952, 28.513460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.564381, 36.261566, 28.505333>,  <40.681240, 35.879257, 28.491789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564381, 36.261566, 28.505333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195177, 0.094243, -0.976229,
		-0.936246, -0.278594, -0.214078,
		-0.292147, 0.955774, 0.033860,
		40.476738, 36.548298, 28.515491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341747, 35.920712, 27.952213>,  <40.681240, 35.879257, 28.491789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341747, 35.920712, 27.952213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.426796, 36.303185, 28.032709>,  <40.477825, 36.532669, 28.081007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.426796, 36.303185, 28.032709>,  <40.341747, 35.920712, 27.952213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426796, 36.303185, 28.032709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134341, 0.175389, -0.975290,
		-0.967855, 0.234407, -0.091163,
		0.212626, 0.956186, 0.201241,
		40.490585, 36.590042, 28.093081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028866, 36.308578, 27.431133>,  <40.341747, 35.920712, 27.952213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028866, 36.308578, 27.431133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.301678, 36.558537, 27.583107>,  <40.465363, 36.708511, 27.674292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.301678, 36.558537, 27.583107>,  <40.028866, 36.308578, 27.431133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301678, 36.558537, 27.583107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346290, 0.181633, -0.920376,
		-0.644146, 0.759287, -0.092516,
		0.682025, 0.624894, 0.379932,
		40.506287, 36.746006, 27.697086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961288, 36.892845, 26.969839>,  <40.028866, 36.308578, 27.431133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961288, 36.892845, 26.969839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.308464, 36.924038, 27.166040>,  <40.516769, 36.942753, 27.283762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.308464, 36.924038, 27.166040>,  <39.961288, 36.892845, 26.969839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308464, 36.924038, 27.166040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463755, 0.226274, -0.856581,
		-0.177785, 0.970937, 0.160229,
		0.867942, 0.077980, 0.490505,
		40.568848, 36.947433, 27.313192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478275, 37.312401, 27.197586>,  <39.961288, 36.892845, 26.969839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478275, 37.312401, 27.197586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.138737, 37.476006, 27.063616>,  <38.935013, 37.574169, 26.983234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.138737, 37.476006, 27.063616>,  <39.478275, 37.312401, 27.197586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138737, 37.476006, 27.063616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365567, 0.003499, 0.930779,
		0.381873, 0.912522, 0.146552,
		-0.848843, 0.409013, -0.334924,
		38.884083, 37.598709, 26.963139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223495, 37.737556, 27.694994>,  <39.478275, 37.312401, 27.197586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223495, 37.737556, 27.694994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.900566, 37.677906, 27.466610>,  <38.706810, 37.642117, 27.329580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.900566, 37.677906, 27.466610>,  <39.223495, 37.737556, 27.694994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900566, 37.677906, 27.466610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575766, -0.012987, 0.817512,
		-0.129327, 0.988733, -0.075377,
		-0.807322, -0.149126, -0.570958,
		38.658371, 37.633167, 27.295322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755524, 38.127140, 28.026258>,  <39.223495, 37.737556, 27.694994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755524, 38.127140, 28.026258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.531319, 37.863609, 27.825550>,  <38.396797, 37.705490, 27.705126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.531319, 37.863609, 27.825550>,  <38.755524, 38.127140, 28.026258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531319, 37.863609, 27.825550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684642, 0.027752, 0.728351,
		-0.465932, 0.751782, -0.466616,
		-0.560511, -0.658827, -0.501771,
		38.363167, 37.665962, 27.675018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090397, 38.386482, 28.109514>,  <38.755524, 38.127140, 28.026258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090397, 38.386482, 28.109514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.043194, 38.001286, 28.012583>,  <38.014870, 37.770168, 27.954424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.043194, 38.001286, 28.012583>,  <38.090397, 38.386482, 28.109514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043194, 38.001286, 28.012583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705719, -0.090348, 0.702708,
		-0.698595, 0.253945, -0.668938,
		-0.118012, -0.962990, -0.242331,
		38.007790, 37.712387, 27.939884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404232, 38.306499, 27.881754>,  <38.090397, 38.386482, 28.109514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404232, 38.306499, 27.881754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.536987, 37.952553, 28.012510>,  <37.616642, 37.740185, 28.090963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.536987, 37.952553, 28.012510>,  <37.404232, 38.306499, 27.881754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536987, 37.952553, 28.012510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854946, -0.135719, 0.500648,
		-0.398642, -0.445633, -0.801558,
		0.331892, -0.884868, 0.326889,
		37.636555, 37.687092, 28.110577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832779, 37.819584, 28.015436>,  <37.404232, 38.306499, 27.881754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832779, 37.819584, 28.015436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.102291, 37.579708, 28.188129>,  <37.263996, 37.435783, 28.291746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.102291, 37.579708, 28.188129>,  <36.832779, 37.819584, 28.015436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102291, 37.579708, 28.188129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702394, -0.338317, 0.626246,
		-0.229491, -0.725198, -0.649170,
		0.673777, -0.599691, 0.431734,
		37.304424, 37.399799, 28.317650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544868, 37.127502, 28.202299>,  <36.832779, 37.819584, 28.015436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544868, 37.127502, 28.202299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.862099, 37.132828, 28.445890>,  <37.052437, 37.136024, 28.592045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.862099, 37.132828, 28.445890>,  <36.544868, 37.127502, 28.202299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862099, 37.132828, 28.445890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567309, -0.347883, 0.746417,
		0.221792, -0.937443, -0.268343,
		0.793076, 0.013316, 0.608978,
		37.100021, 37.136822, 28.628584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613235, 36.463112, 28.368710>,  <36.544868, 37.127502, 28.202299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613235, 36.463112, 28.368710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.788841, 36.684368, 28.651920>,  <36.894203, 36.817120, 28.821848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.788841, 36.684368, 28.651920>,  <36.613235, 36.463112, 28.368710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788841, 36.684368, 28.651920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520905, -0.485380, 0.702185,
		0.732069, -0.677085, 0.075044,
		0.439014, 0.553139, 0.708028,
		36.920544, 36.850311, 28.864328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821640, 36.041817, 28.905771>,  <36.613235, 36.463112, 28.368710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821640, 36.041817, 28.905771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.840107, 36.385326, 29.109880>,  <36.851185, 36.591431, 29.232346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.840107, 36.385326, 29.109880>,  <36.821640, 36.041817, 28.905771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840107, 36.385326, 29.109880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515480, -0.417070, 0.748554,
		0.855657, -0.297591, 0.423428,
		0.046164, 0.858774, 0.510271,
		36.853954, 36.642960, 29.262962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944088, 35.805031, 29.579329>,  <36.821640, 36.041817, 28.905771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944088, 35.805031, 29.579329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.819530, 36.182297, 29.625751>,  <36.744797, 36.408657, 29.653605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.819530, 36.182297, 29.625751>,  <36.944088, 35.805031, 29.579329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819530, 36.182297, 29.625751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585432, -0.286599, 0.758373,
		0.748536, 0.168207, 0.641405,
		-0.311390, 0.943169, 0.116056,
		36.726112, 36.465248, 29.660568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795067, 35.914246, 30.216909>,  <36.944088, 35.805031, 29.579329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795067, 35.914246, 30.216909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.578690, 36.221931, 30.080854>,  <36.448864, 36.406544, 29.999222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.578690, 36.221931, 30.080854>,  <36.795067, 35.914246, 30.216909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578690, 36.221931, 30.080854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768775, -0.288194, 0.570903,
		0.341119, 0.570316, 0.747247,
		-0.540947, 0.769210, -0.340136,
		36.416405, 36.452694, 29.978813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447098, 36.273991, 30.862568>,  <36.795067, 35.914246, 30.216909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447098, 36.273991, 30.862568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.243317, 36.358551, 30.528919>,  <36.121048, 36.409286, 30.328730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.243317, 36.358551, 30.528919>,  <36.447098, 36.273991, 30.862568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243317, 36.358551, 30.528919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857918, -0.049796, 0.511368,
		0.066570, 0.976129, 0.206737,
		-0.509456, 0.211406, -0.834124,
		36.090481, 36.421974, 30.278683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.547043, 39.454094, 23.951586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224518, 39.273914, 23.798248>,  <40.031002, 39.165806, 23.706245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224518, 39.273914, 23.798248>,  <40.547043, 39.454094, 23.951586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224518, 39.273914, 23.798248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313800, -0.223604, 0.922784,
		-0.501386, 0.864347, 0.038943,
		-0.806314, -0.450450, -0.383344,
		39.982624, 39.138779, 23.683245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931408, 39.762028, 24.374838>,  <40.547043, 39.454094, 23.951586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931408, 39.762028, 24.374838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819042, 39.413834, 24.213177>,  <39.751621, 39.204918, 24.116180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819042, 39.413834, 24.213177>,  <39.931408, 39.762028, 24.374838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819042, 39.413834, 24.213177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441599, -0.256647, 0.859722,
		-0.852101, 0.419984, -0.312310,
		-0.280916, -0.870486, -0.404153,
		39.734768, 39.152687, 24.091930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257523, 39.628235, 24.505592>,  <39.931408, 39.762028, 24.374838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257523, 39.628235, 24.505592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363934, 39.251766, 24.422243>,  <39.427780, 39.025883, 24.372234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363934, 39.251766, 24.422243>,  <39.257523, 39.628235, 24.505592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363934, 39.251766, 24.422243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420375, -0.307793, 0.853550,
		-0.867476, -0.139471, -0.477528,
		0.266025, -0.941175, -0.208374,
		39.443741, 38.969414, 24.359732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649292, 39.212227, 24.639126>,  <39.257523, 39.628235, 24.505592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649292, 39.212227, 24.639126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947075, 38.945183, 24.642693>,  <39.125744, 38.784958, 24.644833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947075, 38.945183, 24.642693>,  <38.649292, 39.212227, 24.639126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947075, 38.945183, 24.642693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372943, -0.404721, 0.834934,
		-0.553800, -0.624900, -0.550278,
		0.744459, -0.667608, 0.008918,
		39.170414, 38.744900, 24.645369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300385, 38.653118, 24.784380>,  <38.649292, 39.212227, 24.639126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300385, 38.653118, 24.784380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685402, 38.565849, 24.848764>,  <38.916412, 38.513489, 24.887394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685402, 38.565849, 24.848764>,  <38.300385, 38.653118, 24.784380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685402, 38.565849, 24.848764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244417, -0.441359, 0.863402,
		-0.117325, -0.870405, -0.478152,
		0.962546, -0.218167, 0.160960,
		38.974167, 38.500401, 24.897053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397545, 37.989758, 25.010838>,  <38.300385, 38.653118, 24.784380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397545, 37.989758, 25.010838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734394, 38.149937, 25.155321>,  <38.936504, 38.246044, 25.242012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734394, 38.149937, 25.155321>,  <38.397545, 37.989758, 25.010838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734394, 38.149937, 25.155321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244513, -0.313466, 0.917580,
		0.480674, -0.861033, -0.166060,
		0.842120, 0.400453, 0.361208,
		38.987030, 38.270073, 25.263683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694275, 37.369808, 25.325827>,  <38.397545, 37.989758, 25.010838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694275, 37.369808, 25.325827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888901, 37.680355, 25.486078>,  <39.005676, 37.866684, 25.582230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888901, 37.680355, 25.486078>,  <38.694275, 37.369808, 25.325827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888901, 37.680355, 25.486078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209361, -0.341591, 0.916233,
		0.848188, -0.529683, -0.003665,
		0.486565, 0.776371, 0.400628,
		39.034870, 37.913265, 25.606266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122303, 37.022736, 25.830029>,  <38.694275, 37.369808, 25.325827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122303, 37.022736, 25.830029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060596, 37.405212, 25.929541>,  <39.023571, 37.634701, 25.989248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060596, 37.405212, 25.929541>,  <39.122303, 37.022736, 25.830029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060596, 37.405212, 25.929541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213248, -0.278082, 0.936587,
		0.964742, 0.091432, 0.246806,
		-0.154266, 0.956196, 0.248779,
		39.014317, 37.692070, 26.004175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581257, 37.233887, 26.362463>,  <39.122303, 37.022736, 25.830029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581257, 37.233887, 26.362463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263844, 37.474964, 26.396070>,  <39.073395, 37.619610, 26.416235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263844, 37.474964, 26.396070>,  <39.581257, 37.233887, 26.362463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263844, 37.474964, 26.396070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068817, -0.226067, 0.971678,
		0.604620, 0.765279, 0.220868,
		-0.793536, 0.602696, 0.084020,
		39.025784, 37.655773, 26.421276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164886, 37.586411, 26.821871>,  <39.581257, 37.233887, 26.362463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164886, 37.586411, 26.821871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514248, 37.422600, 26.927284>,  <40.723866, 37.324314, 26.990532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514248, 37.422600, 26.927284>,  <40.164886, 37.586411, 26.821871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514248, 37.422600, 26.927284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372335, 0.212749, -0.903385,
		0.313894, 0.887145, 0.338297,
		0.873405, -0.409527, 0.263535,
		40.776268, 37.299740, 27.006344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598316, 38.120193, 26.641684>,  <40.164886, 37.586411, 26.821871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598316, 38.120193, 26.641684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817772, 37.787666, 26.677252>,  <40.949448, 37.588150, 26.698593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817772, 37.787666, 26.677252>,  <40.598316, 38.120193, 26.641684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817772, 37.787666, 26.677252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496027, 0.238045, -0.835040,
		0.673015, 0.502243, 0.542957,
		0.548642, -0.831316, 0.088918,
		40.982365, 37.538273, 26.703928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407810, 38.270767, 26.636644>,  <40.598316, 38.120193, 26.641684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407810, 38.270767, 26.636644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351181, 37.889458, 26.529892>,  <41.317204, 37.660671, 26.465839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351181, 37.889458, 26.529892>,  <41.407810, 38.270767, 26.636644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351181, 37.889458, 26.529892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623377, 0.123579, -0.772094,
		0.768998, -0.275676, 0.576753,
		-0.141573, -0.953274, -0.266882,
		41.308708, 37.603477, 26.449827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069481, 38.095173, 26.489317>,  <41.407810, 38.270767, 26.636644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069481, 38.095173, 26.489317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820770, 37.857887, 26.284771>,  <41.671543, 37.715515, 26.162045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820770, 37.857887, 26.284771>,  <42.069481, 38.095173, 26.489317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820770, 37.857887, 26.284771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603563, 0.053154, -0.795542,
		0.499109, -0.803287, 0.324993,
		-0.621773, -0.593216, -0.511364,
		41.634239, 37.679924, 26.131361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517052, 37.560310, 26.237448>,  <42.069481, 38.095173, 26.489317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517052, 37.560310, 26.237448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205421, 37.605522, 25.990786>,  <42.018444, 37.632648, 25.842789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205421, 37.605522, 25.990786>,  <42.517052, 37.560310, 26.237448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205421, 37.605522, 25.990786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623954, 0.044054, -0.780219,
		-0.061021, -0.992615, -0.104846,
		-0.779076, 0.113029, -0.616657,
		41.971699, 37.639431, 25.805788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779549, 37.271317, 25.686531>,  <42.517052, 37.560310, 26.237448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779549, 37.271317, 25.686531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461823, 37.439133, 25.510784>,  <42.271187, 37.539822, 25.405336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461823, 37.439133, 25.510784>,  <42.779549, 37.271317, 25.686531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461823, 37.439133, 25.510784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484745, 0.001777, -0.874654,
		-0.366174, -0.907734, -0.204783,
		-0.794317, 0.419543, -0.439369,
		42.223526, 37.564995, 25.378973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787876, 36.945053, 25.036995>,  <42.779549, 37.271317, 25.686531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787876, 36.945053, 25.036995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540035, 37.257797, 25.009325>,  <42.391331, 37.445442, 24.992723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540035, 37.257797, 25.009325>,  <42.787876, 36.945053, 25.036995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540035, 37.257797, 25.009325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284866, 0.141878, -0.948009,
		-0.731396, -0.607097, -0.310633,
		-0.619606, 0.781859, -0.069173,
		42.354153, 37.492355, 24.988573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280636, 36.850647, 24.526329>,  <42.787876, 36.945053, 25.036995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280636, 36.850647, 24.526329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354458, 37.241268, 24.570650>,  <42.398750, 37.475643, 24.597242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354458, 37.241268, 24.570650>,  <42.280636, 36.850647, 24.526329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354458, 37.241268, 24.570650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198968, 0.073282, -0.977262,
		-0.962472, 0.202403, -0.180779,
		0.184553, 0.976557, 0.110804,
		42.409824, 37.534237, 24.603891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879650, 37.249264, 23.975643>,  <42.280636, 36.850647, 24.526329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879650, 37.249264, 23.975643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165913, 37.509388, 24.077572>,  <42.337669, 37.665462, 24.138729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165913, 37.509388, 24.077572>,  <41.879650, 37.249264, 23.975643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165913, 37.509388, 24.077572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310851, 0.030159, -0.949980,
		-0.625466, 0.759070, -0.180566,
		0.715656, 0.650310, 0.254821,
		42.380608, 37.704479, 24.154018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943047, 37.524216, 23.351778>,  <41.879650, 37.249264, 23.975643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943047, 37.524216, 23.351778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255733, 37.675877, 23.549833>,  <42.443348, 37.766872, 23.668667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255733, 37.675877, 23.549833>,  <41.943047, 37.524216, 23.351778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255733, 37.675877, 23.549833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347467, 0.394503, -0.850667,
		-0.517862, 0.837027, 0.176649,
		0.781720, 0.379149, 0.495137,
		42.490250, 37.789619, 23.698374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953072, 38.291016, 23.331245>,  <41.943047, 37.524216, 23.351778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953072, 38.291016, 23.331245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334122, 38.183548, 23.388264>,  <42.562752, 38.119068, 23.422474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334122, 38.183548, 23.388264>,  <41.953072, 38.291016, 23.331245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334122, 38.183548, 23.388264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250146, 0.425533, -0.869683,
		0.173001, 0.864140, 0.472580,
		0.952627, -0.268670, 0.142543,
		42.619911, 38.102947, 23.431026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340008, 38.783875, 22.944294>,  <41.953072, 38.291016, 23.331245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340008, 38.783875, 22.944294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638447, 38.526943, 23.014439>,  <42.817509, 38.372784, 23.056526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638447, 38.526943, 23.014439>,  <42.340008, 38.783875, 22.944294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.638447, 38.526943, 23.014439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392752, 0.211881, -0.894904,
		0.537669, 0.736557, 0.410360,
		0.746095, -0.642332, 0.175362,
		42.862274, 38.334244, 23.067047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883663, 39.126427, 22.643009>,  <42.340008, 38.783875, 22.944294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883663, 39.126427, 22.643009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997086, 38.743069, 22.656130>,  <43.065140, 38.513054, 22.664003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997086, 38.743069, 22.656130>,  <42.883663, 39.126427, 22.643009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997086, 38.743069, 22.656130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609154, 0.153600, -0.778035,
		0.740625, 0.240602, 0.627364,
		0.283560, -0.958393, 0.032803,
		43.082153, 38.455551, 22.665970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.639706, 39.235256, 22.547960>,  <42.883663, 39.126427, 22.643009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.639706, 39.235256, 22.547960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513554, 38.868958, 22.448410>,  <43.437862, 38.649178, 22.388680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513554, 38.868958, 22.448410>,  <43.639706, 39.235256, 22.547960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513554, 38.868958, 22.448410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454387, 0.084516, -0.886786,
		0.833108, -0.392759, 0.389450,
		-0.315379, -0.915749, -0.248876,
		43.418941, 38.594234, 22.373747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.033558, 35.076717, 20.296726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.248692, 35.372173, 20.459278>,  <37.377773, 35.549446, 20.556808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.248692, 35.372173, 20.459278>,  <37.033558, 35.076717, 20.296726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248692, 35.372173, 20.459278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355867, -0.238071, 0.903704,
		0.764257, -0.630663, 0.134813,
		0.537838, 0.738638, 0.406379,
		37.410042, 35.593765, 20.581192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301826, 34.797729, 20.910646>,  <37.033558, 35.076717, 20.296726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301826, 34.797729, 20.910646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.371223, 35.178772, 21.010599>,  <37.412861, 35.407398, 21.070572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.371223, 35.178772, 21.010599>,  <37.301826, 34.797729, 20.910646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371223, 35.178772, 21.010599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224039, -0.208903, 0.951928,
		0.959014, -0.221134, 0.177179,
		0.173491, 0.952607, 0.249883,
		37.423271, 35.464554, 21.085564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742485, 34.808670, 21.518740>,  <37.301826, 34.797729, 20.910646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742485, 34.808670, 21.518740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.588093, 35.177540, 21.508821>,  <37.495457, 35.398861, 21.502871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.588093, 35.177540, 21.508821>,  <37.742485, 34.808670, 21.518740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588093, 35.177540, 21.508821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155302, -0.038458, 0.987118,
		0.909342, 0.384856, 0.158060,
		-0.385977, 0.922175, -0.024797,
		37.472301, 35.454193, 21.501383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998260, 35.139595, 22.038225>,  <37.742485, 34.808670, 21.518740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998260, 35.139595, 22.038225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658859, 35.340084, 21.970320>,  <37.455219, 35.460377, 21.929577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658859, 35.340084, 21.970320>,  <37.998260, 35.139595, 22.038225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658859, 35.340084, 21.970320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048948, 0.245090, 0.968264,
		0.526923, 0.829883, -0.183426,
		-0.848502, 0.501223, -0.169765,
		37.404308, 35.490452, 21.919390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055046, 35.739250, 22.495218>,  <37.998260, 35.139595, 22.038225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055046, 35.739250, 22.495218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.672985, 35.706287, 22.381449>,  <37.443748, 35.686508, 22.313187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.672985, 35.706287, 22.381449>,  <38.055046, 35.739250, 22.495218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672985, 35.706287, 22.381449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295449, 0.200557, 0.934070,
		-0.019929, 0.976210, -0.215909,
		-0.955151, -0.082406, -0.284424,
		37.386440, 35.681564, 22.296122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638123, 36.285534, 22.853678>,  <38.055046, 35.739250, 22.495218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638123, 36.285534, 22.853678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.397125, 35.981670, 22.755768>,  <37.252525, 35.799351, 22.697021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.397125, 35.981670, 22.755768>,  <37.638123, 36.285534, 22.853678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397125, 35.981670, 22.755768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378141, 0.001617, 0.925747,
		-0.702857, 0.650319, -0.288232,
		-0.602496, -0.759660, -0.244776,
		37.216377, 35.753773, 22.682335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113148, 36.375488, 23.362268>,  <37.638123, 36.285534, 22.853678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113148, 36.375488, 23.362268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.016243, 36.012714, 23.224409>,  <36.958099, 35.795052, 23.141693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.016243, 36.012714, 23.224409>,  <37.113148, 36.375488, 23.362268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016243, 36.012714, 23.224409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578209, -0.150295, 0.801927,
		-0.779093, 0.393553, -0.487986,
		-0.242258, -0.906933, -0.344649,
		36.943565, 35.740635, 23.121014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411945, 36.328556, 23.473186>,  <37.113148, 36.375488, 23.362268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411945, 36.328556, 23.473186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.562466, 35.958858, 23.447353>,  <36.652779, 35.737041, 23.431854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.562466, 35.958858, 23.447353>,  <36.411945, 36.328556, 23.473186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562466, 35.958858, 23.447353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411817, -0.229296, 0.881947,
		-0.829941, -0.305283, -0.466904,
		0.376303, -0.924243, -0.064581,
		36.675358, 35.681587, 23.427979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857399, 35.859402, 23.578810>,  <36.411945, 36.328556, 23.473186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857399, 35.859402, 23.578810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.174049, 35.626217, 23.652010>,  <36.364040, 35.486305, 23.695930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.174049, 35.626217, 23.652010>,  <35.857399, 35.859402, 23.578810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174049, 35.626217, 23.652010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383930, -0.241594, 0.891196,
		-0.475322, -0.775750, -0.415068,
		0.791623, -0.582962, 0.182999,
		36.411537, 35.451328, 23.706909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595963, 35.275768, 23.874207>,  <35.857399, 35.859402, 23.578810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595963, 35.275768, 23.874207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.978218, 35.281189, 23.991894>,  <36.207573, 35.284443, 24.062506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.978218, 35.281189, 23.991894>,  <35.595963, 35.275768, 23.874207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978218, 35.281189, 23.991894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260810, -0.425190, 0.866713,
		0.136842, -0.905003, -0.402796,
		0.955642, 0.013550, 0.294217,
		36.264912, 35.285255, 24.080158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790489, 34.615337, 24.102945>,  <35.595963, 35.275768, 23.874207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790489, 34.615337, 24.102945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.018887, 34.869850, 24.310448>,  <36.155926, 35.022556, 24.434948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.018887, 34.869850, 24.310448>,  <35.790489, 34.615337, 24.102945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018887, 34.869850, 24.310448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345110, -0.387309, 0.854922,
		0.744890, -0.667185, -0.001565,
		0.570997, 0.636283, 0.518755,
		36.190186, 35.060734, 24.466074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918522, 34.343941, 24.707401>,  <35.790489, 34.615337, 24.102945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918522, 34.343941, 24.707401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.084206, 34.695427, 24.802309>,  <36.183617, 34.906319, 24.859253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.084206, 34.695427, 24.802309>,  <35.918522, 34.343941, 24.707401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084206, 34.695427, 24.802309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170940, -0.180940, 0.968525,
		0.893985, -0.441732, 0.075260,
		0.414211, 0.878712, 0.237267,
		36.208469, 34.959042, 24.873489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612423, 34.272919, 25.120459>,  <35.918522, 34.343941, 24.707401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612423, 34.272919, 25.120459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.447807, 34.627571, 25.204859>,  <36.349037, 34.840363, 25.255499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.447807, 34.627571, 25.204859>,  <36.612423, 34.272919, 25.120459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447807, 34.627571, 25.204859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135619, -0.169360, 0.976179,
		0.901246, 0.430350, -0.050546,
		-0.411537, 0.886632, 0.210999,
		36.324345, 34.893562, 25.268158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891071, 34.428806, 25.714434>,  <36.612423, 34.272919, 25.120459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891071, 34.428806, 25.714434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.587029, 34.688354, 25.700552>,  <36.404602, 34.844082, 25.692223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.587029, 34.688354, 25.700552>,  <36.891071, 34.428806, 25.714434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587029, 34.688354, 25.700552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162024, -0.137538, 0.977154,
		0.629269, 0.748369, 0.209676,
		-0.760111, 0.648866, -0.034705,
		36.358994, 34.883015, 25.690140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588955, 34.376106, 25.651043>,  <36.891071, 34.428806, 25.714434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588955, 34.376106, 25.651043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.883781, 34.127464, 25.757128>,  <38.060677, 33.978279, 25.820778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.883781, 34.127464, 25.757128>,  <37.588955, 34.376106, 25.651043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883781, 34.127464, 25.757128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496081, 0.231136, -0.836947,
		0.458954, 0.748450, 0.478730,
		0.737065, -0.621609, 0.265211,
		38.104900, 33.940983, 25.836691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268574, 34.691910, 25.596655>,  <37.588955, 34.376106, 25.651043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268574, 34.691910, 25.596655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.325634, 34.297066, 25.567631>,  <38.359871, 34.060158, 25.550217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.325634, 34.297066, 25.567631>,  <38.268574, 34.691910, 25.596655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325634, 34.297066, 25.567631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608978, 0.145323, -0.779761,
		0.780254, 0.067046, 0.621859,
		0.142650, -0.987110, -0.072559,
		38.368427, 34.000935, 25.545862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041561, 34.547966, 25.414753>,  <38.268574, 34.691910, 25.596655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041561, 34.547966, 25.414753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.899986, 34.183956, 25.328423>,  <38.815041, 33.965549, 25.276625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.899986, 34.183956, 25.328423>,  <39.041561, 34.547966, 25.414753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899986, 34.183956, 25.328423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582398, -0.033889, -0.812197,
		0.731806, -0.413164, 0.541992,
		-0.353938, -0.910026, -0.215826,
		38.793804, 33.910950, 25.263676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598061, 34.135529, 25.270527>,  <39.041561, 34.547966, 25.414753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598061, 34.135529, 25.270527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.294518, 33.962360, 25.075916>,  <39.112392, 33.858459, 24.959150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.294518, 33.962360, 25.075916>,  <39.598061, 34.135529, 25.270527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294518, 33.962360, 25.075916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547501, -0.019544, -0.836577,
		0.352666, -0.901218, 0.251858,
		-0.758860, -0.432925, -0.486525,
		39.066860, 33.832481, 24.929958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910488, 33.535397, 24.958006>,  <39.598061, 34.135529, 25.270527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910488, 33.535397, 24.958006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.578445, 33.624702, 24.753622>,  <39.379219, 33.678288, 24.630991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.578445, 33.624702, 24.753622>,  <39.910488, 33.535397, 24.958006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578445, 33.624702, 24.753622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530843, 0.035926, -0.846708,
		-0.170684, -0.974095, -0.148342,
		-0.830104, 0.223265, -0.510960,
		39.329414, 33.691681, 24.600334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941479, 32.999027, 24.470453>,  <39.910488, 33.535397, 24.958006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941479, 32.999027, 24.470453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.703308, 33.296246, 24.348242>,  <39.560406, 33.474575, 24.274916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.703308, 33.296246, 24.348242>,  <39.941479, 32.999027, 24.470453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703308, 33.296246, 24.348242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419551, -0.036738, -0.906988,
		-0.685159, -0.668231, -0.289871,
		-0.595428, 0.743046, -0.305528,
		39.524681, 33.519161, 24.256584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865360, 32.804813, 23.765942>,  <39.941479, 32.999027, 24.470453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865360, 32.804813, 23.765942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.709888, 33.173294, 23.758797>,  <39.616608, 33.394382, 23.754509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.709888, 33.173294, 23.758797>,  <39.865360, 32.804813, 23.765942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709888, 33.173294, 23.758797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240444, 0.082694, -0.967134,
		-0.889448, -0.380198, -0.253638,
		-0.388676, 0.921201, -0.017865,
		39.593285, 33.449654, 23.753437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400715, 32.837177, 23.089367>,  <39.865360, 32.804813, 23.765942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400715, 32.837177, 23.089367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.505692, 33.201279, 23.217468>,  <39.568676, 33.419739, 23.294329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.505692, 33.201279, 23.217468>,  <39.400715, 32.837177, 23.089367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505692, 33.201279, 23.217468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302097, 0.237698, -0.923167,
		-0.916441, 0.339020, -0.212604,
		0.262437, 0.910255, 0.320253,
		39.584423, 33.474354, 23.313543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097565, 33.381317, 22.596478>,  <39.400715, 32.837177, 23.089367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097565, 33.381317, 22.596478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.411324, 33.566425, 22.761671>,  <39.599579, 33.677490, 22.860786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.411324, 33.566425, 22.761671>,  <39.097565, 33.381317, 22.596478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411324, 33.566425, 22.761671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395629, 0.139500, -0.907754,
		-0.477696, 0.875432, -0.073662,
		0.784401, 0.462773, 0.412985,
		39.646645, 33.705257, 22.885567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179676, 34.030762, 22.218084>,  <39.097565, 33.381317, 22.596478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179676, 34.030762, 22.218084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.528561, 33.976875, 22.406166>,  <39.737892, 33.944542, 22.519014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.528561, 33.976875, 22.406166>,  <39.179676, 34.030762, 22.218084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528561, 33.976875, 22.406166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488657, 0.281926, -0.825671,
		-0.021330, 0.949931, 0.311731,
		0.872215, -0.134718, 0.470204,
		39.790226, 33.936459, 22.547228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511333, 34.581039, 22.005558>,  <39.179676, 34.030762, 22.218084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511333, 34.581039, 22.005558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.795673, 34.322296, 22.116024>,  <39.966278, 34.167049, 22.182304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.795673, 34.322296, 22.116024>,  <39.511333, 34.581039, 22.005558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795673, 34.322296, 22.116024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522666, 0.223074, -0.822836,
		0.470655, 0.729253, 0.496663,
		0.710848, -0.646860, 0.276165,
		40.008926, 34.128239, 22.198874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126102, 34.970631, 21.919098>,  <39.511333, 34.581039, 22.005558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126102, 34.970631, 21.919098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.220654, 34.581978, 21.921999>,  <40.277382, 34.348785, 21.923740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.220654, 34.581978, 21.921999>,  <40.126102, 34.970631, 21.919098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220654, 34.581978, 21.921999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681058, 0.160352, -0.714456,
		0.693027, 0.173818, 0.699643,
		0.236375, -0.971635, 0.007252,
		40.291565, 34.290489, 21.924175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965500, 34.825661, 21.881733>,  <40.126102, 34.970631, 21.919098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965500, 34.825661, 21.881733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.772598, 34.494068, 21.768442>,  <40.656857, 34.295113, 21.700468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.772598, 34.494068, 21.768442>,  <40.965500, 34.825661, 21.881733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772598, 34.494068, 21.768442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411230, 0.071245, -0.908743,
		0.773510, -0.554719, 0.306544,
		-0.482257, -0.828982, -0.283226,
		40.627922, 34.245373, 21.683474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533287, 34.389637, 21.645670>,  <40.965500, 34.825661, 21.881733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533287, 34.389637, 21.645670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.196903, 34.250187, 21.480145>,  <40.995071, 34.166515, 21.380829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.196903, 34.250187, 21.480145>,  <41.533287, 34.389637, 21.645670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196903, 34.250187, 21.480145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370001, 0.187525, -0.909908,
		0.394820, -0.918310, -0.028709,
		-0.840961, -0.348628, -0.413815,
		40.944614, 34.145599, 21.356001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292141, 34.001755, 21.801332>,  <41.533287, 34.389637, 21.645670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292141, 34.001755, 21.801332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.641388, 34.190712, 21.849525>,  <42.850937, 34.304085, 21.878441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.641388, 34.190712, 21.849525>,  <42.292141, 34.001755, 21.801332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641388, 34.190712, 21.849525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028309, -0.295846, 0.954816,
		0.486692, -0.830253, -0.271680,
		0.873115, 0.472392, 0.120482,
		42.903324, 34.332428, 21.885670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807644, 33.481956, 22.111864>,  <42.292141, 34.001755, 21.801332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807644, 33.481956, 22.111864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.935432, 33.848827, 22.207129>,  <43.012104, 34.068951, 22.264288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.935432, 33.848827, 22.207129>,  <42.807644, 33.481956, 22.111864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935432, 33.848827, 22.207129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155582, -0.298691, 0.941583,
		0.934737, -0.263753, -0.238119,
		0.319470, 0.917180, 0.238162,
		43.031273, 34.123981, 22.278578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242901, 33.462162, 22.678959>,  <42.807644, 33.481956, 22.111864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242901, 33.462162, 22.678959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.152946, 33.849670, 22.720728>,  <43.098972, 34.082176, 22.745789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.152946, 33.849670, 22.720728>,  <43.242901, 33.462162, 22.678959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152946, 33.849670, 22.720728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111604, -0.132070, 0.984938,
		0.967972, 0.209849, 0.137820,
		-0.224890, 0.968773, 0.104420,
		43.085480, 34.140301, 22.752054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590134, 33.647686, 23.303476>,  <43.242901, 33.462162, 22.678959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590134, 33.647686, 23.303476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.295086, 33.915279, 23.266857>,  <43.118057, 34.075836, 23.244886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.295086, 33.915279, 23.266857>,  <43.590134, 33.647686, 23.303476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295086, 33.915279, 23.266857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182787, -0.067316, 0.980845,
		0.650003, 0.740227, 0.171935,
		-0.737622, 0.668979, -0.091549,
		43.073799, 34.115974, 23.239393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626202, 34.166641, 23.845322>,  <43.590134, 33.647686, 23.303476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626202, 34.166641, 23.845322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.242313, 34.173565, 23.733152>,  <43.011982, 34.177719, 23.665852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.242313, 34.173565, 23.733152>,  <43.626202, 34.166641, 23.845322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242313, 34.173565, 23.733152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280876, -0.082666, 0.956177,
		-0.006634, 0.996427, 0.084197,
		-0.959721, 0.017305, -0.280421,
		42.954395, 34.178757, 23.649027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386646, 34.552299, 24.353310>,  <43.626202, 34.166641, 23.845322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386646, 34.552299, 24.353310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.053852, 34.392338, 24.199486>,  <42.854176, 34.296360, 24.107191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.053852, 34.392338, 24.199486>,  <43.386646, 34.552299, 24.353310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053852, 34.392338, 24.199486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344338, -0.171285, 0.923089,
		-0.435013, 0.900411, 0.004805,
		-0.831982, -0.399901, -0.384557,
		42.804256, 34.272366, 24.084118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784477, 34.868439, 24.709381>,  <43.386646, 34.552299, 24.353310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784477, 34.868439, 24.709381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.661491, 34.513550, 24.571796>,  <42.587700, 34.300617, 24.489246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.661491, 34.513550, 24.571796>,  <42.784477, 34.868439, 24.709381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661491, 34.513550, 24.571796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532827, -0.138967, 0.834736,
		-0.788393, 0.439921, -0.430008,
		-0.307461, -0.887219, -0.343962,
		42.569252, 34.247383, 24.468607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085114, 34.833351, 24.947990>,  <42.784477, 34.868439, 24.709381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085114, 34.833351, 24.947990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.197556, 34.458076, 24.867210>,  <42.265022, 34.232910, 24.818743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.197556, 34.458076, 24.867210>,  <42.085114, 34.833351, 24.947990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197556, 34.458076, 24.867210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476742, -0.319152, 0.819060,
		-0.832884, -0.133965, -0.536989,
		0.281107, -0.938187, -0.201950,
		42.281887, 34.176620, 24.806625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509636, 34.415649, 25.174458>,  <42.085114, 34.833351, 24.947990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509636, 34.415649, 25.174458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.808853, 34.152363, 25.140574>,  <41.988384, 33.994389, 25.120243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.808853, 34.152363, 25.140574>,  <41.509636, 34.415649, 25.174458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808853, 34.152363, 25.140574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319775, -0.469343, 0.823080,
		-0.581526, -0.588612, -0.561572,
		0.748045, -0.658219, -0.084712,
		42.033268, 33.954899, 25.115160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166424, 33.779495, 25.469576>,  <41.509636, 34.415649, 25.174458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166424, 33.779495, 25.469576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.562065, 33.720619, 25.469004>,  <41.799450, 33.685291, 25.468660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.562065, 33.720619, 25.469004>,  <41.166424, 33.779495, 25.469576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562065, 33.720619, 25.469004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063901, -0.438104, 0.896650,
		-0.132608, -0.886791, -0.442738,
		0.989106, -0.147194, -0.001429,
		41.858799, 33.676460, 25.468575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170120, 33.052334, 25.524023>,  <41.166424, 33.779495, 25.469576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170120, 33.052334, 25.524023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.486652, 33.261600, 25.650574>,  <41.676571, 33.387161, 25.726503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.486652, 33.261600, 25.650574>,  <41.170120, 33.052334, 25.524023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486652, 33.261600, 25.650574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055136, -0.454294, 0.889144,
		0.608898, -0.721050, -0.330650,
		0.791330, 0.523168, 0.316375,
		41.724052, 33.418552, 25.745485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484135, 32.547508, 26.081367>,  <41.170120, 33.052334, 25.524023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484135, 32.547508, 26.081367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.594818, 32.925076, 26.153431>,  <41.661228, 33.151615, 26.196669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.594818, 32.925076, 26.153431>,  <41.484135, 32.547508, 26.081367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594818, 32.925076, 26.153431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172445, -0.233212, 0.957014,
		0.945354, -0.233746, -0.227305,
		0.276708, 0.943915, 0.180159,
		41.677830, 33.208248, 26.207479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908340, 32.444347, 26.587427>,  <41.484135, 32.547508, 26.081367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908340, 32.444347, 26.587427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.850769, 32.839157, 26.615923>,  <41.816227, 33.076042, 26.633020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.850769, 32.839157, 26.615923>,  <41.908340, 32.444347, 26.587427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850769, 32.839157, 26.615923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091994, -0.058331, 0.994049,
		0.985302, 0.149629, -0.082404,
		-0.143932, 0.987020, 0.071239,
		41.807590, 33.135262, 26.637295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387749, 32.721268, 26.993816>,  <41.908340, 32.444347, 26.587427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387749, 32.721268, 26.993816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.116341, 33.014378, 27.014429>,  <41.953495, 33.190243, 27.026796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.116341, 33.014378, 27.014429>,  <42.387749, 32.721268, 26.993816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116341, 33.014378, 27.014429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043401, -0.110021, 0.992981,
		0.733300, 0.671520, 0.106454,
		-0.678519, 0.732773, 0.051534,
		41.912785, 33.234211, 27.029890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.168278, 38.981503, 22.072742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.875881, 38.718479, 21.999781>,  <43.700443, 38.560665, 21.956003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.875881, 38.718479, 21.999781>,  <44.168278, 38.981503, 22.072742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875881, 38.718479, 21.999781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319070, -0.093079, -0.943149,
		0.603196, -0.747633, 0.277846,
		-0.730992, -0.657557, -0.182402,
		43.656582, 38.521214, 21.945061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448532, 38.497341, 21.688559>,  <44.168278, 38.981503, 22.072742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448532, 38.497341, 21.688559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.059311, 38.474243, 21.599262>,  <43.825779, 38.460384, 21.545685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.059311, 38.474243, 21.599262>,  <44.448532, 38.497341, 21.688559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059311, 38.474243, 21.599262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227667, -0.394225, -0.890368,
		-0.036589, -0.917198, 0.396749,
		-0.973052, -0.057749, -0.223240,
		43.767395, 38.456917, 21.532290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396366, 37.948368, 21.298063>,  <44.448532, 38.497341, 21.688559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396366, 37.948368, 21.298063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.038742, 38.104782, 21.210655>,  <43.824169, 38.198631, 21.158211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.038742, 38.104782, 21.210655>,  <44.396366, 37.948368, 21.298063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038742, 38.104782, 21.210655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011121, -0.468299, -0.883500,
		-0.447803, -0.792335, 0.414340,
		-0.894063, 0.391027, -0.218517,
		43.770523, 38.222092, 21.145100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031277, 37.415993, 21.056379>,  <44.396366, 37.948368, 21.298063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031277, 37.415993, 21.056379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.835617, 37.727276, 20.898836>,  <43.718220, 37.914047, 20.804310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.835617, 37.727276, 20.898836>,  <44.031277, 37.415993, 21.056379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835617, 37.727276, 20.898836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010939, -0.446061, -0.894936,
		-0.872132, -0.442065, 0.209677,
		-0.489148, 0.778209, -0.393860,
		43.688873, 37.960739, 20.780678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468750, 37.142540, 20.594349>,  <44.031277, 37.415993, 21.056379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468750, 37.142540, 20.594349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.528702, 37.523308, 20.487473>,  <43.564674, 37.751766, 20.423347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.528702, 37.523308, 20.487473>,  <43.468750, 37.142540, 20.594349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528702, 37.523308, 20.487473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132481, -0.287142, -0.948682,
		-0.979788, 0.106791, -0.169148,
		0.149880, 0.951917, -0.267191,
		43.573666, 37.808884, 20.407316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152206, 37.211548, 19.889063>,  <43.468750, 37.142540, 20.594349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152206, 37.211548, 19.889063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.370663, 37.546608, 19.892437>,  <43.501736, 37.747643, 19.894461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.370663, 37.546608, 19.892437>,  <43.152206, 37.211548, 19.889063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370663, 37.546608, 19.892437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139177, -0.080803, -0.986965,
		-0.826051, 0.540196, -0.160711,
		0.546141, 0.837651, 0.008435,
		43.534504, 37.797905, 19.894968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877056, 37.642662, 19.245628>,  <43.152206, 37.211548, 19.889063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877056, 37.642662, 19.245628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.238636, 37.794765, 19.323885>,  <43.455585, 37.886028, 19.370838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.238636, 37.794765, 19.323885>,  <42.877056, 37.642662, 19.245628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238636, 37.794765, 19.323885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225392, -0.034864, -0.973644,
		-0.363418, 0.924222, -0.117223,
		0.903950, 0.380261, 0.195642,
		43.509823, 37.908844, 19.382578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941784, 38.255260, 18.897598>,  <42.877056, 37.642662, 19.245628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941784, 38.255260, 18.897598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.309799, 38.107586, 18.950111>,  <43.530609, 38.018982, 18.981619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.309799, 38.107586, 18.950111>,  <42.941784, 38.255260, 18.897598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309799, 38.107586, 18.950111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097874, -0.107901, -0.989332,
		0.379414, 0.923070, -0.063139,
		0.920036, -0.369186, 0.131283,
		43.585812, 37.996830, 18.989496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357395, 38.588783, 18.392128>,  <42.941784, 38.255260, 18.897598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357395, 38.588783, 18.392128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.533154, 38.250233, 18.512510>,  <43.638607, 38.047100, 18.584740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.533154, 38.250233, 18.512510>,  <43.357395, 38.588783, 18.392128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533154, 38.250233, 18.512510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098520, -0.287606, -0.952668,
		0.892876, 0.448246, -0.042986,
		0.439393, -0.846380, 0.300957,
		43.664970, 37.996319, 18.602797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796837, 38.448563, 17.877342>,  <43.357395, 38.588783, 18.392128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796837, 38.448563, 17.877342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.779617, 38.102974, 18.078022>,  <43.769287, 37.895622, 18.198429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.779617, 38.102974, 18.078022>,  <43.796837, 38.448563, 17.877342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779617, 38.102974, 18.078022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093617, -0.496466, -0.862993,
		0.994677, -0.084116, -0.059512,
		-0.043046, -0.863971, 0.501698,
		43.766705, 37.843784, 18.228531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.138317, 37.971561, 17.361856>,  <43.796837, 38.448563, 17.877342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.138317, 37.971561, 17.361856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.958542, 37.729805, 17.624981>,  <43.850677, 37.584751, 17.782856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.958542, 37.729805, 17.624981>,  <44.138317, 37.971561, 17.361856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958542, 37.729805, 17.624981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295170, -0.594543, -0.747926,
		0.843135, -0.530317, 0.088816,
		-0.449443, -0.604387, 0.657813,
		43.823708, 37.548489, 17.822325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293964, 37.337059, 16.991894>,  <44.138317, 37.971561, 17.361856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293964, 37.337059, 16.991894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.987572, 37.259136, 17.236946>,  <43.803734, 37.212383, 17.383978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.987572, 37.259136, 17.236946>,  <44.293964, 37.337059, 16.991894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.987572, 37.259136, 17.236946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525549, -0.359062, -0.771280,
		0.370227, -0.912756, 0.172652,
		-0.765983, -0.194812, 0.612632,
		43.757778, 37.200691, 17.420736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958488, 36.748775, 16.778839>,  <44.293964, 37.337059, 16.991894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958488, 36.748775, 16.778839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.658817, 36.903336, 16.994032>,  <43.479015, 36.996071, 17.123148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.658817, 36.903336, 16.994032>,  <43.958488, 36.748775, 16.778839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658817, 36.903336, 16.994032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619610, -0.121749, -0.775410,
		-0.234120, -0.914260, 0.330630,
		-0.749180, 0.386401, 0.537981,
		43.434063, 37.019257, 17.155426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946972, 36.154125, 16.351936>,  <43.958488, 36.748775, 16.778839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946972, 36.154125, 16.351936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.698933, 35.860413, 16.241444>,  <43.550110, 35.684185, 16.175148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.698933, 35.860413, 16.241444>,  <43.946972, 36.154125, 16.351936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698933, 35.860413, 16.241444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209651, -0.494394, 0.843577,
		-0.755993, 0.465188, 0.460516,
		-0.620098, -0.734285, -0.276231,
		43.512905, 35.640125, 16.158575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247517, 36.268410, 16.663366>,  <43.946972, 36.154125, 16.351936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247517, 36.268410, 16.663366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.371910, 35.895809, 16.587900>,  <43.446545, 35.672249, 16.542620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.371910, 35.895809, 16.587900>,  <43.247517, 36.268410, 16.663366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371910, 35.895809, 16.587900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198453, -0.130491, 0.971385,
		-0.929466, -0.339523, 0.144279,
		0.310981, -0.931502, -0.188667,
		43.465206, 35.616360, 16.531300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907455, 35.841831, 17.125149>,  <43.247517, 36.268410, 16.663366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907455, 35.841831, 17.125149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.220421, 35.617321, 17.017223>,  <43.408199, 35.482616, 16.952469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.220421, 35.617321, 17.017223>,  <42.907455, 35.841831, 17.125149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220421, 35.617321, 17.017223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163130, -0.233411, 0.958597,
		-0.601014, -0.794033, -0.091063,
		0.782413, -0.561275, -0.269814,
		43.455147, 35.448940, 16.936279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904076, 35.401676, 17.639772>,  <42.907455, 35.841831, 17.125149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904076, 35.401676, 17.639772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.265511, 35.302635, 17.499929>,  <43.482372, 35.243210, 17.416023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.265511, 35.302635, 17.499929>,  <42.904076, 35.401676, 17.639772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265511, 35.302635, 17.499929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248715, -0.361266, 0.898681,
		-0.348806, -0.898991, -0.264857,
		0.903590, -0.247591, -0.349605,
		43.536587, 35.228355, 17.395046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072468, 34.749165, 17.932432>,  <42.904076, 35.401676, 17.639772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072468, 34.749165, 17.932432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.435249, 34.884781, 17.832441>,  <43.652920, 34.966148, 17.772446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.435249, 34.884781, 17.832441>,  <43.072468, 34.749165, 17.932432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435249, 34.884781, 17.832441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354691, -0.294550, 0.887375,
		0.227222, -0.893473, -0.387397,
		0.906953, 0.339038, -0.249978,
		43.707336, 34.986492, 17.757448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521633, 34.197456, 18.102499>,  <43.072468, 34.749165, 17.932432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521633, 34.197456, 18.102499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.714798, 34.547657, 18.095724>,  <43.830696, 34.757778, 18.091660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.714798, 34.547657, 18.095724>,  <43.521633, 34.197456, 18.102499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714798, 34.547657, 18.095724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071453, -0.020120, 0.997241,
		0.872746, -0.482794, -0.072274,
		0.482916, 0.875503, -0.016937,
		43.859673, 34.810307, 18.090643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088631, 34.100143, 18.437616>,  <43.521633, 34.197456, 18.102499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.088631, 34.100143, 18.437616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.041145, 34.496956, 18.454479>,  <44.012653, 34.735043, 18.464596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.041145, 34.496956, 18.454479>,  <44.088631, 34.100143, 18.437616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.041145, 34.496956, 18.454479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091915, -0.031294, 0.995275,
		0.988665, 0.122030, -0.087467,
		-0.118716, 0.992033, 0.042156,
		44.005531, 34.794567, 18.467127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579029, 34.210125, 18.875797>,  <44.088631, 34.100143, 18.437616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579029, 34.210125, 18.875797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.372364, 34.551929, 18.854355>,  <44.248363, 34.757011, 18.841490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.372364, 34.551929, 18.854355>,  <44.579029, 34.210125, 18.875797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.372364, 34.551929, 18.854355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072880, 0.018488, 0.997169,
		0.853081, 0.519109, 0.052725,
		-0.516664, 0.854508, -0.053604,
		44.217365, 34.808281, 18.838274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833767, 34.676304, 19.377729>,  <44.579029, 34.210125, 18.875797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833767, 34.676304, 19.377729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.457539, 34.793484, 19.309013>,  <44.231800, 34.863792, 19.267784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.457539, 34.793484, 19.309013>,  <44.833767, 34.676304, 19.377729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.457539, 34.793484, 19.309013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202547, -0.077874, 0.976171,
		0.272588, 0.952952, 0.132582,
		-0.940569, 0.292946, -0.171790,
		44.175369, 34.881367, 19.257477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708374, 35.173550, 19.956936>,  <44.833767, 34.676304, 19.377729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708374, 35.173550, 19.956936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.336899, 35.095554, 19.830746>,  <44.114014, 35.048756, 19.755032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.336899, 35.095554, 19.830746>,  <44.708374, 35.173550, 19.956936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336899, 35.095554, 19.830746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305500, -0.080090, 0.948818,
		-0.210277, 0.977530, 0.014808,
		-0.928684, -0.194991, -0.315476,
		44.058292, 35.037056, 19.736103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230236, 35.635452, 20.229218>,  <44.708374, 35.173550, 19.956936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230236, 35.635452, 20.229218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.036835, 35.297352, 20.138199>,  <43.920795, 35.094490, 20.083588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.036835, 35.297352, 20.138199>,  <44.230236, 35.635452, 20.229218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036835, 35.297352, 20.138199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360685, -0.044482, 0.931627,
		-0.797581, 0.532513, -0.283362,
		-0.483499, -0.845252, -0.227548,
		43.891785, 35.043777, 20.069935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625286, 35.781105, 20.604847>,  <44.230236, 35.635452, 20.229218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.625286, 35.781105, 20.604847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.556515, 35.396721, 20.518126>,  <43.515251, 35.166092, 20.466093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.556515, 35.396721, 20.518126>,  <43.625286, 35.781105, 20.604847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556515, 35.396721, 20.518126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511814, -0.100913, 0.853149,
		-0.841718, 0.257642, -0.474481,
		-0.171926, -0.960956, -0.216805,
		43.504936, 35.108433, 20.453083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.091740, 35.654957, 20.952961>,  <43.625286, 35.781105, 20.604847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.091740, 35.654957, 20.952961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.233757, 35.283585, 20.909216>,  <43.318970, 35.060760, 20.882969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.233757, 35.283585, 20.909216>,  <43.091740, 35.654957, 20.952961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233757, 35.283585, 20.909216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433154, -0.267048, 0.860850,
		-0.828444, -0.258272, -0.496968,
		0.355048, -0.928429, -0.109363,
		43.340271, 35.005054, 20.876408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562653, 35.235813, 21.240839>,  <43.091740, 35.654957, 20.952961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562653, 35.235813, 21.240839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.864388, 34.973282, 21.246656>,  <43.045429, 34.815762, 21.250147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.864388, 34.973282, 21.246656>,  <42.562653, 35.235813, 21.240839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864388, 34.973282, 21.246656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233657, -0.247710, 0.940236,
		-0.613502, -0.712651, -0.340212,
		0.754334, -0.656330, 0.014545,
		43.090687, 34.776382, 21.251020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295818, 34.595982, 21.382172>,  <42.562653, 35.235813, 21.240839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295818, 34.595982, 21.382172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.681496, 34.558151, 21.481279>,  <42.912903, 34.535454, 21.540743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.681496, 34.558151, 21.481279>,  <42.295818, 34.595982, 21.382172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681496, 34.558151, 21.481279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265200, -0.349158, 0.898753,
		0.001509, -0.932279, -0.361737,
		0.964192, -0.094577, 0.247767,
		42.970753, 34.529778, 21.555609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802795, 34.087585, 21.021046>,  <42.295818, 34.595982, 21.382172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802795, 34.087585, 21.021046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.407887, 34.109737, 20.961416>,  <41.170940, 34.123028, 20.925638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.407887, 34.109737, 20.961416>,  <41.802795, 34.087585, 21.021046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407887, 34.109737, 20.961416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153216, 0.080111, -0.984940,
		-0.042601, -0.995246, -0.087576,
		-0.987274, 0.055377, -0.149075,
		41.111706, 34.126350, 20.916695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686283, 33.794720, 20.338598>,  <41.802795, 34.087585, 21.021046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686283, 33.794720, 20.338598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.361076, 34.017853, 20.405325>,  <41.165951, 34.151733, 20.445362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.361076, 34.017853, 20.405325>,  <41.686283, 33.794720, 20.338598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361076, 34.017853, 20.405325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063262, 0.200183, -0.977714,
		-0.578792, -0.805452, -0.127463,
		-0.813018, 0.557829, 0.166819,
		41.117172, 34.185200, 20.455370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119213, 33.606071, 19.918631>,  <41.686283, 33.794720, 20.338598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119213, 33.606071, 19.918631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.980282, 33.969845, 20.010098>,  <40.896923, 34.188110, 20.064978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.980282, 33.969845, 20.010098>,  <41.119213, 33.606071, 19.918631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980282, 33.969845, 20.010098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255031, 0.143050, -0.956293,
		-0.902397, -0.390467, 0.182248,
		-0.347331, 0.909435, 0.228669,
		40.876083, 34.242676, 20.078699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507046, 33.634029, 19.549725>,  <41.119213, 33.606071, 19.918631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507046, 33.634029, 19.549725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.648434, 33.997623, 19.638092>,  <40.733265, 34.215778, 19.691113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.648434, 33.997623, 19.638092>,  <40.507046, 33.634029, 19.549725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648434, 33.997623, 19.638092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045310, 0.252522, -0.966530,
		-0.934348, 0.331629, 0.130445,
		0.353469, 0.908986, 0.220918,
		40.754475, 34.270321, 19.704367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057491, 34.180855, 19.216578>,  <40.507046, 33.634029, 19.549725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057491, 34.180855, 19.216578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.421646, 34.337009, 19.271420>,  <40.640137, 34.430702, 19.304325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.421646, 34.337009, 19.271420>,  <40.057491, 34.180855, 19.216578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421646, 34.337009, 19.271420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075362, 0.482262, -0.872779,
		-0.406842, 0.784232, 0.468465,
		0.910385, 0.390388, 0.137103,
		40.694763, 34.454124, 19.312550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949581, 34.604454, 18.735147>,  <40.057491, 34.180855, 19.216578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949581, 34.604454, 18.735147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.304722, 34.766586, 18.822254>,  <40.517807, 34.863865, 18.874517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.304722, 34.766586, 18.822254>,  <39.949581, 34.604454, 18.735147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304722, 34.766586, 18.822254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126343, 0.240326, -0.962435,
		-0.442444, 0.882013, 0.162163,
		0.887852, 0.405335, 0.217767,
		40.571079, 34.888187, 18.887585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038025, 35.350948, 18.573692>,  <39.949581, 34.604454, 18.735147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038025, 35.350948, 18.573692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.387939, 35.157642, 18.559849>,  <40.597889, 35.041656, 18.551542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.387939, 35.157642, 18.559849>,  <40.038025, 35.350948, 18.573692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387939, 35.157642, 18.559849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016659, 0.101389, -0.994707,
		0.484220, 0.869581, 0.096745,
		0.874788, -0.483269, -0.034608,
		40.650375, 35.012661, 18.549467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990257, 36.156525, 18.414331>,  <40.038025, 35.350948, 18.573692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990257, 36.156525, 18.414331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.609016, 36.256161, 18.345577>,  <39.380272, 36.315941, 18.304325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.609016, 36.256161, 18.345577>,  <39.990257, 36.156525, 18.414331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609016, 36.256161, 18.345577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229381, -0.224076, 0.947193,
		0.197422, 0.942202, 0.270704,
		-0.953105, 0.249091, -0.171886,
		39.323086, 36.330887, 18.294012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749680, 36.449497, 19.107050>,  <39.990257, 36.156525, 18.414331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749680, 36.449497, 19.107050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.429703, 36.331501, 18.898022>,  <39.237717, 36.260704, 18.772606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.429703, 36.331501, 18.898022>,  <39.749680, 36.449497, 19.107050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429703, 36.331501, 18.898022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482283, -0.202139, 0.852375,
		-0.357072, 0.933875, 0.019431,
		-0.799940, -0.294988, -0.522570,
		39.189720, 36.243004, 18.741251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178379, 36.848267, 19.250965>,  <39.749680, 36.449497, 19.107050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178379, 36.848267, 19.250965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.009243, 36.509678, 19.121540>,  <38.907761, 36.306526, 19.043884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.009243, 36.509678, 19.121540>,  <39.178379, 36.848267, 19.250965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009243, 36.509678, 19.121540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501081, -0.079108, 0.861777,
		-0.755064, 0.526528, -0.390700,
		-0.422843, -0.846469, -0.323565,
		38.882389, 36.255737, 19.024471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484467, 36.981174, 19.247629>,  <39.178379, 36.848267, 19.250965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484467, 36.981174, 19.247629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.519859, 36.583271, 19.268101>,  <38.541096, 36.344528, 19.280384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.519859, 36.583271, 19.268101>,  <38.484467, 36.981174, 19.247629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519859, 36.583271, 19.268101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716864, -0.027920, 0.696654,
		-0.691577, -0.098326, -0.715579,
		0.088478, -0.994763, 0.051177,
		38.546402, 36.284843, 19.283455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791599, 36.717552, 19.351606>,  <38.484467, 36.981174, 19.247629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791599, 36.717552, 19.351606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.993855, 36.393295, 19.469719>,  <38.115208, 36.198742, 19.540586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.993855, 36.393295, 19.469719>,  <37.791599, 36.717552, 19.351606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993855, 36.393295, 19.469719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704588, -0.190492, 0.683571,
		-0.497883, -0.553689, -0.667489,
		0.505637, -0.810642, 0.295280,
		38.145546, 36.150101, 19.558304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280922, 36.107063, 19.452396>,  <37.791599, 36.717552, 19.351606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280922, 36.107063, 19.452396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.607552, 36.030029, 19.670065>,  <37.803528, 35.983810, 19.800665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.607552, 36.030029, 19.670065>,  <37.280922, 36.107063, 19.452396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607552, 36.030029, 19.670065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575992, -0.333869, 0.746167,
		0.037983, -0.922737, -0.383554,
		0.816573, -0.192582, 0.544170,
		37.852524, 35.972256, 19.833317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973595, 35.602257, 19.824322>,  <37.280922, 36.107063, 19.452396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973595, 35.602257, 19.824322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.312519, 35.691498, 20.017107>,  <37.515873, 35.745041, 20.132778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.312519, 35.691498, 20.017107>,  <36.973595, 35.602257, 19.824322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312519, 35.691498, 20.017107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468242, -0.114436, 0.876158,
		0.250624, -0.968055, 0.007501,
		0.847311, 0.223099, 0.481965,
		37.566711, 35.758427, 20.161697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.343002, 38.863937, 16.669182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.464848, 38.570065, 16.911652>,  <41.537956, 38.393742, 17.057133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.464848, 38.570065, 16.911652>,  <41.343002, 38.863937, 16.669182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464848, 38.570065, 16.911652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444568, 0.453173, 0.772654,
		-0.842359, -0.504847, -0.188575,
		0.304615, -0.734686, 0.606173,
		41.556232, 38.349659, 17.093504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824516, 38.672028, 17.089878>,  <41.343002, 38.863937, 16.669182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824516, 38.672028, 17.089878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.139889, 38.543610, 17.299757>,  <41.329113, 38.466560, 17.425684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.139889, 38.543610, 17.299757>,  <40.824516, 38.672028, 17.089878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139889, 38.543610, 17.299757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425914, 0.330526, 0.842229,
		-0.443821, -0.887515, 0.123858,
		0.788429, -0.321046, 0.524699,
		41.376419, 38.447296, 17.457167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591221, 38.256176, 17.566910>,  <40.824516, 38.672028, 17.089878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591221, 38.256176, 17.566910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.940697, 38.384266, 17.713396>,  <41.150383, 38.461121, 17.801289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.940697, 38.384266, 17.713396>,  <40.591221, 38.256176, 17.566910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940697, 38.384266, 17.713396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441277, 0.204786, 0.873692,
		0.204786, -0.924941, 0.320229,
		-0.873692, -0.320229, -0.366218,
		41.202805, 38.480335, 17.823261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665936, 37.858524, 18.225805>,  <40.591221, 38.256176, 17.566910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665936, 37.858524, 18.225805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.892422, 38.186367, 18.260763>,  <41.028313, 38.383072, 18.281738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.892422, 38.186367, 18.260763>,  <40.665936, 37.858524, 18.225805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892422, 38.186367, 18.260763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419386, 0.195189, 0.886576,
		0.709589, -0.538646, 0.454252,
		0.566215, 0.819611, 0.087397,
		41.062286, 38.432251, 18.286982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963676, 37.782860, 18.858339>,  <40.665936, 37.858524, 18.225805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963676, 37.782860, 18.858339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.042797, 38.167332, 18.781382>,  <41.090271, 38.398014, 18.735207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.042797, 38.167332, 18.781382>,  <40.963676, 37.782860, 18.858339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042797, 38.167332, 18.781382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288984, 0.244729, 0.925525,
		0.936676, -0.127475, 0.326173,
		0.197805, 0.961175, -0.192394,
		41.102139, 38.455685, 18.723663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315212, 38.023178, 19.443275>,  <40.963676, 37.782860, 18.858339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315212, 38.023178, 19.443275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.240761, 38.381954, 19.282848>,  <41.196091, 38.597221, 19.186592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.240761, 38.381954, 19.282848>,  <41.315212, 38.023178, 19.443275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240761, 38.381954, 19.282848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176999, 0.370913, 0.911644,
		0.966451, 0.240672, 0.089719,
		-0.186129, 0.896939, -0.401068,
		41.184921, 38.651035, 19.162529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714039, 38.519894, 19.847824>,  <41.315212, 38.023178, 19.443275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714039, 38.519894, 19.847824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.420547, 38.727783, 19.672766>,  <41.244453, 38.852516, 19.567730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.420547, 38.727783, 19.672766>,  <41.714039, 38.519894, 19.847824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420547, 38.727783, 19.672766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234520, 0.410818, 0.881038,
		0.637687, 0.749079, -0.179543,
		-0.733727, 0.519720, -0.437648,
		41.200428, 38.883698, 19.541471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736946, 39.282543, 20.114237>,  <41.714039, 38.519894, 19.847824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736946, 39.282543, 20.114237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.380028, 39.180771, 19.965063>,  <41.165878, 39.119705, 19.875559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.380028, 39.180771, 19.965063>,  <41.736946, 39.282543, 20.114237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380028, 39.180771, 19.965063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446978, 0.381775, 0.808986,
		-0.063457, 0.888544, -0.454381,
		-0.892291, -0.254434, -0.372933,
		41.112339, 39.104439, 19.853184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315907, 39.754452, 20.454096>,  <41.736946, 39.282543, 20.114237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315907, 39.754452, 20.454096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.073288, 39.468365, 20.315210>,  <40.927715, 39.296711, 20.231878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.073288, 39.468365, 20.315210>,  <41.315907, 39.754452, 20.454096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073288, 39.468365, 20.315210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565582, 0.081237, 0.820681,
		-0.558761, 0.694161, -0.453791,
		-0.606550, -0.715221, -0.347213,
		40.891323, 39.253799, 20.211046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603127, 40.045921, 20.535240>,  <41.315907, 39.754452, 20.454096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603127, 40.045921, 20.535240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.600330, 39.645935, 20.533245>,  <40.598652, 39.405945, 20.532047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.600330, 39.645935, 20.533245>,  <40.603127, 40.045921, 20.535240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600330, 39.645935, 20.533245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549028, -0.000332, 0.835804,
		-0.835775, 0.008582, -0.549006,
		-0.006990, -0.999963, -0.004989,
		40.598232, 39.345947, 20.531748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848377, 39.830925, 20.409676>,  <40.603127, 40.045921, 20.535240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848377, 39.830925, 20.409676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.054165, 39.545483, 20.599869>,  <40.177639, 39.374218, 20.713985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.054165, 39.545483, 20.599869>,  <39.848377, 39.830925, 20.409676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054165, 39.545483, 20.599869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745616, -0.098404, 0.659070,
		-0.423527, -0.693601, -0.582703,
		0.514472, -0.713607, 0.475483,
		40.208508, 39.331402, 20.742514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358723, 39.420364, 20.695650>,  <39.848377, 39.830925, 20.409676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358723, 39.420364, 20.695650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.674843, 39.294575, 20.905996>,  <39.864513, 39.219101, 21.032204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.674843, 39.294575, 20.905996>,  <39.358723, 39.420364, 20.695650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674843, 39.294575, 20.905996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575038, -0.084323, 0.813769,
		-0.211568, -0.945513, -0.247476,
		0.790297, -0.314476, 0.525866,
		39.911934, 39.200233, 21.063757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071152, 38.870216, 20.257088>,  <39.358723, 39.420364, 20.695650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071152, 38.870216, 20.257088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.697392, 38.835903, 20.118790>,  <38.473137, 38.815315, 20.035810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.697392, 38.835903, 20.118790>,  <39.071152, 38.870216, 20.257088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697392, 38.835903, 20.118790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309415, 0.285521, -0.907050,
		0.176524, -0.954526, -0.240249,
		-0.934399, -0.085780, -0.345746,
		38.417072, 38.810169, 20.015066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199623, 38.584648, 19.584284>,  <39.071152, 38.870216, 20.257088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199623, 38.584648, 19.584284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.820980, 38.711639, 19.606722>,  <38.593796, 38.787834, 19.620186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.820980, 38.711639, 19.606722>,  <39.199623, 38.584648, 19.584284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820980, 38.711639, 19.606722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075448, 0.387318, -0.918854,
		-0.313443, -0.865559, -0.390590,
		-0.946605, 0.317478, 0.056098,
		38.536999, 38.806881, 19.623550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840714, 38.261181, 19.082664>,  <39.199623, 38.584648, 19.584284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840714, 38.261181, 19.082664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.675362, 38.615070, 19.168810>,  <38.576153, 38.827404, 19.220497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.675362, 38.615070, 19.168810>,  <38.840714, 38.261181, 19.082664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675362, 38.615070, 19.168810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031389, 0.222529, -0.974420,
		-0.910019, -0.409562, -0.064218,
		-0.413376, 0.884726, 0.215362,
		38.551350, 38.880489, 19.233418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298061, 38.368153, 18.608406>,  <38.840714, 38.261181, 19.082664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298061, 38.368153, 18.608406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.359013, 38.747330, 18.720251>,  <38.395584, 38.974838, 18.787357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.359013, 38.747330, 18.720251>,  <38.298061, 38.368153, 18.608406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359013, 38.747330, 18.720251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185468, 0.305316, -0.934015,
		-0.970764, 0.090462, 0.222336,
		0.152375, 0.947944, 0.279612,
		38.404724, 39.031712, 18.804134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827663, 38.700138, 18.198524>,  <38.298061, 38.368153, 18.608406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827663, 38.700138, 18.198524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.079948, 38.989372, 18.311197>,  <38.231319, 39.162914, 18.378801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.079948, 38.989372, 18.311197>,  <37.827663, 38.700138, 18.198524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079948, 38.989372, 18.311197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059051, 0.406653, -0.911672,
		-0.773768, 0.558368, 0.299180,
		0.630711, 0.723089, 0.281683,
		38.269161, 39.206299, 18.395702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533165, 39.331184, 18.027273>,  <37.827663, 38.700138, 18.198524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533165, 39.331184, 18.027273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.920689, 39.426247, 18.055351>,  <38.153202, 39.483284, 18.072199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.920689, 39.426247, 18.055351>,  <37.533165, 39.331184, 18.027273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920689, 39.426247, 18.055351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051931, 0.471694, -0.880232,
		-0.242301, 0.849132, 0.469323,
		0.968810, 0.237654, 0.070196,
		38.211330, 39.497543, 18.076410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580742, 40.039268, 17.824057>,  <37.533165, 39.331184, 18.027273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580742, 40.039268, 17.824057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.944344, 39.877666, 17.783079>,  <38.162506, 39.780704, 17.758493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.944344, 39.877666, 17.783079>,  <37.580742, 40.039268, 17.824057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944344, 39.877666, 17.783079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018221, 0.284076, -0.958629,
		0.416389, 0.869530, 0.265587,
		0.909004, -0.404002, -0.102443,
		38.217045, 39.756466, 17.752346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888660, 40.501919, 17.403793>,  <37.580742, 40.039268, 17.824057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888660, 40.501919, 17.403793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.113396, 40.171539, 17.385250>,  <38.248238, 39.973312, 17.374125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.113396, 40.171539, 17.385250>,  <37.888660, 40.501919, 17.403793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113396, 40.171539, 17.385250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128628, 0.142580, -0.981390,
		0.817186, 0.545419, 0.186347,
		0.561838, -0.825947, -0.046358,
		38.281948, 39.923756, 17.371344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354424, 40.717793, 16.909910>,  <37.888660, 40.501919, 17.403793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354424, 40.717793, 16.909910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.385242, 40.318981, 16.909161>,  <38.403732, 40.079697, 16.908710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.385242, 40.318981, 16.909161>,  <38.354424, 40.717793, 16.909910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385242, 40.318981, 16.909161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303512, 0.025244, -0.952493,
		0.949708, 0.072816, 0.304555,
		0.077045, -0.997026, -0.001874,
		38.408356, 40.019875, 16.908598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821407, 40.598335, 16.294706>,  <38.354424, 40.717793, 16.909910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821407, 40.598335, 16.294706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.645874, 40.241722, 16.339600>,  <38.540554, 40.027756, 16.366535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.645874, 40.241722, 16.339600>,  <38.821407, 40.598335, 16.294706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645874, 40.241722, 16.339600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089843, -0.167810, -0.981717,
		0.894064, -0.420729, 0.153739,
		-0.438835, -0.891530, 0.112234,
		38.514225, 39.974262, 16.373270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327957, 40.164894, 15.914994>,  <38.821407, 40.598335, 16.294706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327957, 40.164894, 15.914994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.975876, 39.977573, 15.945782>,  <38.764626, 39.865181, 15.964254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.975876, 39.977573, 15.945782>,  <39.327957, 40.164894, 15.914994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975876, 39.977573, 15.945782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070648, -0.289666, -0.954517,
		0.469301, -0.834735, 0.288051,
		-0.880207, -0.468306, 0.076968,
		38.711815, 39.837082, 15.968872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414890, 39.477234, 15.639525>,  <39.327957, 40.164894, 15.914994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414890, 39.477234, 15.639525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.019585, 39.537880, 15.646923>,  <38.782402, 39.574268, 15.651361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.019585, 39.537880, 15.646923>,  <39.414890, 39.477234, 15.639525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019585, 39.537880, 15.646923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048460, -0.196409, -0.979324,
		-0.144848, -0.968729, 0.201452,
		-0.988266, 0.151616, 0.018495,
		38.723106, 39.583366, 15.652472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119976, 38.926998, 15.193343>,  <39.414890, 39.477234, 15.639525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119976, 38.926998, 15.193343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.845551, 39.215252, 15.233349>,  <38.680897, 39.388206, 15.257352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.845551, 39.215252, 15.233349>,  <39.119976, 38.926998, 15.193343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845551, 39.215252, 15.233349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242444, -0.096840, -0.965320,
		-0.685961, -0.686516, 0.241152,
		-0.686060, 0.720637, 0.100013,
		38.639732, 39.431442, 15.263352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325451, 38.814110, 15.992481>,  <39.119976, 38.926998, 15.193343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325451, 38.814110, 15.992481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.231766, 38.482159, 15.789919>,  <39.175556, 38.282990, 15.668382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.231766, 38.482159, 15.789919>,  <39.325451, 38.814110, 15.992481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231766, 38.482159, 15.789919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070722, -0.504971, 0.860234,
		-0.969610, 0.237290, 0.059579,
		-0.234211, -0.829878, -0.506406,
		39.161503, 38.233196, 15.637997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913464, 38.477493, 16.449551>,  <39.325451, 38.814110, 15.992481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913464, 38.477493, 16.449551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.995865, 38.195709, 16.177876>,  <39.045307, 38.026638, 16.014870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.995865, 38.195709, 16.177876>,  <38.913464, 38.477493, 16.449551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995865, 38.195709, 16.177876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104501, -0.705944, 0.700516,
		-0.972955, -0.073335, -0.219047,
		0.206007, -0.704461, -0.679188,
		39.057667, 37.984371, 15.974119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421005, 38.032318, 16.513704>,  <38.913464, 38.477493, 16.449551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421005, 38.032318, 16.513704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.758286, 37.862888, 16.381283>,  <38.960655, 37.761230, 16.301830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.758286, 37.862888, 16.381283>,  <38.421005, 38.032318, 16.513704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758286, 37.862888, 16.381283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135127, -0.763018, 0.632095,
		-0.520340, -0.488249, -0.700614,
		0.843201, -0.423576, -0.331053,
		39.011246, 37.735817, 16.281967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289921, 37.314690, 16.573486>,  <38.421005, 38.032318, 16.513704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289921, 37.314690, 16.573486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.689034, 37.318035, 16.547089>,  <38.928501, 37.320042, 16.531250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.689034, 37.318035, 16.547089>,  <38.289921, 37.314690, 16.573486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689034, 37.318035, 16.547089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050313, -0.743887, 0.666409,
		-0.043519, -0.668253, -0.742660,
		0.997785, 0.008364, -0.065995,
		38.988369, 37.320545, 16.527290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469807, 36.619434, 16.441336>,  <38.289921, 37.314690, 16.573486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469807, 36.619434, 16.441336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.788883, 36.801872, 16.599152>,  <38.980331, 36.911335, 16.693842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.788883, 36.801872, 16.599152>,  <38.469807, 36.619434, 16.441336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788883, 36.801872, 16.599152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015658, -0.638342, 0.769594,
		0.602861, -0.620077, -0.502059,
		0.797693, 0.456097, 0.394540,
		39.028191, 36.938702, 16.717514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784393, 36.100536, 16.762510>,  <38.469807, 36.619434, 16.441336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784393, 36.100536, 16.762510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.979893, 36.421288, 16.899982>,  <39.097195, 36.613739, 16.982466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.979893, 36.421288, 16.899982>,  <38.784393, 36.100536, 16.762510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979893, 36.421288, 16.899982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080238, -0.433587, 0.897533,
		0.868725, -0.411094, -0.276257,
		0.488752, 0.801876, 0.343682,
		39.126518, 36.661850, 17.003088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339485, 35.838547, 17.094257>,  <38.784393, 36.100536, 16.762510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339485, 35.838547, 17.094257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.265999, 36.195641, 17.258831>,  <39.221909, 36.409897, 17.357576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.265999, 36.195641, 17.258831>,  <39.339485, 35.838547, 17.094257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265999, 36.195641, 17.258831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139900, -0.390553, 0.909888,
		0.972974, 0.224718, -0.053144,
		-0.183712, 0.892732, 0.411436,
		39.210884, 36.463459, 17.382261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939777, 35.944527, 17.597776>,  <39.339485, 35.838547, 17.094257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939777, 35.944527, 17.597776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.621635, 36.156013, 17.716349>,  <39.430752, 36.282906, 17.787493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.621635, 36.156013, 17.716349>,  <39.939777, 35.944527, 17.597776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621635, 36.156013, 17.716349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247932, -0.162496, 0.955052,
		0.553121, 0.833099, -0.001845,
		-0.795353, 0.528717, 0.296432,
		39.383030, 36.314629, 17.805279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573116, 35.856449, 18.125343>,  <39.939777, 35.944527, 17.597776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573116, 35.856449, 18.125343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.745193, 35.495373, 18.128876>,  <40.848442, 35.278725, 18.130995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.745193, 35.495373, 18.128876>,  <40.573116, 35.856449, 18.125343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745193, 35.495373, 18.128876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239751, 0.104816, -0.965160,
		0.870317, 0.417324, 0.261513,
		0.430195, -0.902693, 0.008830,
		40.874252, 35.224564, 18.131525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240833, 35.956524, 17.848160>,  <40.573116, 35.856449, 18.125343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240833, 35.956524, 17.848160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.156189, 35.566952, 17.815451>,  <41.105404, 35.333210, 17.795826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.156189, 35.566952, 17.815451>,  <41.240833, 35.956524, 17.848160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156189, 35.566952, 17.815451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207621, 0.036961, -0.977511,
		0.955047, -0.223826, 0.194387,
		-0.211608, -0.973928, -0.081770,
		41.092705, 35.274773, 17.790920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796371, 35.568386, 17.524595>,  <41.240833, 35.956524, 17.848160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796371, 35.568386, 17.524595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.484772, 35.327805, 17.453705>,  <41.297810, 35.183456, 17.411171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.484772, 35.327805, 17.453705>,  <41.796371, 35.568386, 17.524595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484772, 35.327805, 17.453705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217570, 0.005804, -0.976028,
		0.588064, -0.798886, 0.126337,
		-0.779002, -0.601454, -0.177227,
		41.251072, 35.147369, 17.400537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103569, 35.079021, 17.140961>,  <41.796371, 35.568386, 17.524595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103569, 35.079021, 17.140961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.714008, 35.020195, 17.071817>,  <41.480270, 34.984898, 17.030331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.714008, 35.020195, 17.071817>,  <42.103569, 35.079021, 17.140961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714008, 35.020195, 17.071817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181710, -0.048951, -0.982133,
		0.135980, -0.987914, 0.074397,
		-0.973905, -0.147069, -0.172858,
		41.421837, 34.976074, 17.019960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970150, 34.499107, 16.655874>,  <42.103569, 35.079021, 17.140961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970150, 34.499107, 16.655874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.634953, 34.716427, 16.635513>,  <41.433834, 34.846821, 16.623297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.634953, 34.716427, 16.635513>,  <41.970150, 34.499107, 16.655874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634953, 34.716427, 16.635513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104415, 0.068086, -0.992201,
		-0.535600, -0.836771, -0.113784,
		-0.837992, 0.543303, -0.050904,
		41.383556, 34.879417, 16.620241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610870, 34.221375, 16.007774>,  <41.970150, 34.499107, 16.655874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610870, 34.221375, 16.007774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.447929, 34.578346, 16.085381>,  <41.350166, 34.792530, 16.131945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.447929, 34.578346, 16.085381>,  <41.610870, 34.221375, 16.007774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447929, 34.578346, 16.085381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079775, 0.176856, -0.980999,
		-0.909782, -0.415086, -0.000849,
		-0.407349, 0.892427, 0.194014,
		41.325726, 34.846073, 16.143585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016777, 34.244038, 15.562684>,  <41.610870, 34.221375, 16.007774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016777, 34.244038, 15.562684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.086464, 34.625729, 15.659922>,  <41.128277, 34.854744, 15.718264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.086464, 34.625729, 15.659922>,  <41.016777, 34.244038, 15.562684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086464, 34.625729, 15.659922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031446, 0.252134, -0.967181,
		-0.984205, 0.160852, 0.073932,
		0.174214, 0.954230, 0.243093,
		41.138729, 34.911999, 15.732849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574928, 34.651295, 15.044402>,  <41.016777, 34.244038, 15.562684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574928, 34.651295, 15.044402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.863640, 34.889668, 15.185200>,  <41.036865, 35.032692, 15.269678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.863640, 34.889668, 15.185200>,  <40.574928, 34.651295, 15.044402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863640, 34.889668, 15.185200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229261, 0.274004, -0.934003,
		-0.653049, 0.754843, 0.061147,
		0.721780, 0.595931, 0.351994,
		41.080173, 35.068447, 15.290798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435265, 35.283695, 14.839115>,  <40.574928, 34.651295, 15.044402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435265, 35.283695, 14.839115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.828545, 35.256462, 14.906853>,  <41.064514, 35.240124, 14.947495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.828545, 35.256462, 14.906853>,  <40.435265, 35.283695, 14.839115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828545, 35.256462, 14.906853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179534, 0.193700, -0.964494,
		0.032861, 0.978696, 0.202669,
		0.983203, -0.068080, 0.169344,
		41.123505, 35.236038, 14.957656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.504517, 33.129009, 30.894890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.867027, 33.298008, 30.889664>,  <38.084534, 33.399406, 30.886528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.867027, 33.298008, 30.889664>,  <37.504517, 33.129009, 30.894890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867027, 33.298008, 30.889664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094824, 0.173084, -0.980332,
		-0.411921, 0.889686, 0.196924,
		0.906272, 0.422493, -0.013067,
		38.138908, 33.424755, 30.885744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486717, 33.824608, 30.635561>,  <37.504517, 33.129009, 30.894890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486717, 33.824608, 30.635561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.838749, 33.646133, 30.570585>,  <38.049969, 33.539047, 30.531599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.838749, 33.646133, 30.570585>,  <37.486717, 33.824608, 30.635561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838749, 33.646133, 30.570585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077612, 0.202330, -0.976237,
		0.468449, 0.871769, 0.143436,
		0.880075, -0.446185, -0.162441,
		38.102772, 33.512280, 30.521852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847584, 34.296619, 30.199278>,  <37.486717, 33.824608, 30.635561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847584, 34.296619, 30.199278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.010853, 33.933052, 30.165190>,  <38.108814, 33.714912, 30.144737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.010853, 33.933052, 30.165190>,  <37.847584, 34.296619, 30.199278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010853, 33.933052, 30.165190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042272, 0.074433, -0.996330,
		0.911926, 0.410277, -0.008040,
		0.408173, -0.908918, -0.085220,
		38.133305, 33.660378, 30.139624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399746, 34.407570, 29.679192>,  <37.847584, 34.296619, 30.199278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399746, 34.407570, 29.679192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.325996, 34.014763, 29.695431>,  <38.281746, 33.779079, 29.705175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.325996, 34.014763, 29.695431>,  <38.399746, 34.407570, 29.679192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325996, 34.014763, 29.695431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107415, -0.020928, -0.993994,
		0.976968, -0.187631, -0.101625,
		-0.184378, -0.982017, 0.040600,
		38.270683, 33.720158, 29.707611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929428, 34.102406, 29.333553>,  <38.399746, 34.407570, 29.679192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929428, 34.102406, 29.333553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.674561, 33.798180, 29.283670>,  <38.521641, 33.615643, 29.253740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.674561, 33.798180, 29.283670>,  <38.929428, 34.102406, 29.333553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674561, 33.798180, 29.283670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173710, 0.015928, -0.984668,
		0.750891, -0.649065, 0.121969,
		-0.637171, -0.760566, -0.124709,
		38.483410, 33.570011, 29.246258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111462, 33.622952, 28.638605>,  <38.929428, 34.102406, 29.333553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111462, 33.622952, 28.638605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.726517, 33.534531, 28.701847>,  <38.495548, 33.481480, 28.739792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.726517, 33.534531, 28.701847>,  <39.111462, 33.622952, 28.638605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726517, 33.534531, 28.701847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169287, 0.032472, -0.985032,
		0.212610, -0.974721, -0.068671,
		-0.962361, -0.221053, 0.158104,
		38.437809, 33.468216, 28.749279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982689, 32.923702, 28.254128>,  <39.111462, 33.622952, 28.638605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982689, 32.923702, 28.254128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.655338, 33.147518, 28.306555>,  <38.458927, 33.281807, 28.338011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.655338, 33.147518, 28.306555>,  <38.982689, 32.923702, 28.254128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655338, 33.147518, 28.306555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196623, -0.058309, -0.978744,
		-0.540006, -0.826748, 0.157737,
		-0.818372, 0.559542, 0.131070,
		38.409828, 33.315380, 28.345877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475353, 32.529255, 27.874937>,  <38.982689, 32.923702, 28.254128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475353, 32.529255, 27.874937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.342308, 32.905788, 27.897789>,  <38.262482, 33.131706, 27.911499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.342308, 32.905788, 27.897789>,  <38.475353, 32.529255, 27.874937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342308, 32.905788, 27.897789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527998, -0.135689, -0.838336,
		-0.781399, -0.309008, 0.542153,
		-0.332616, 0.941330, 0.057128,
		38.242523, 33.188187, 27.914927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046074, 32.590996, 27.412325>,  <38.475353, 32.529255, 27.874937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046074, 32.590996, 27.412325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.023201, 32.980881, 27.498730>,  <38.009476, 33.214813, 27.550573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.023201, 32.980881, 27.498730>,  <38.046074, 32.590996, 27.412325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023201, 32.980881, 27.498730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342497, 0.184083, -0.921309,
		-0.937777, -0.126668, 0.323310,
		-0.057185, 0.974715, 0.216012,
		38.006046, 33.273296, 27.563534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452278, 32.850689, 27.009014>,  <38.046074, 32.590996, 27.412325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452278, 32.850689, 27.009014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.699032, 33.156853, 27.082342>,  <37.847084, 33.340549, 27.126339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.699032, 33.156853, 27.082342>,  <37.452278, 32.850689, 27.009014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699032, 33.156853, 27.082342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042432, 0.264922, -0.963336,
		-0.785912, 0.586485, 0.195903,
		0.616881, 0.765410, 0.183319,
		37.884094, 33.386475, 27.137339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195179, 33.532539, 26.706427>,  <37.452278, 32.850689, 27.009014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195179, 33.532539, 26.706427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.592693, 33.573261, 26.724436>,  <37.831203, 33.597694, 26.735241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.592693, 33.573261, 26.724436>,  <37.195179, 33.532539, 26.706427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592693, 33.573261, 26.724436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010381, 0.487450, -0.873089,
		-0.110834, 0.867195, 0.485477,
		0.993785, 0.101807, 0.045023,
		37.890827, 33.603802, 26.737944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297943, 34.094181, 26.247267>,  <37.195179, 33.532539, 26.706427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297943, 34.094181, 26.247267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660179, 33.926178, 26.270901>,  <37.877522, 33.825375, 26.285080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660179, 33.926178, 26.270901>,  <37.297943, 34.094181, 26.247267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660179, 33.926178, 26.270901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128948, 0.139926, -0.981730,
		0.404071, 0.896667, 0.180876,
		0.905593, -0.420012, 0.059083,
		37.931858, 33.800175, 26.288626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965343, 34.828167, 26.415274>,  <37.297943, 34.094181, 26.247267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965343, 34.828167, 26.415274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.586155, 34.858070, 26.291491>,  <36.358643, 34.876015, 26.217220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.586155, 34.858070, 26.291491>,  <36.965343, 34.828167, 26.415274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586155, 34.858070, 26.291491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317967, -0.270538, 0.908684,
		-0.015784, 0.959802, 0.280235,
		-0.947970, 0.074763, -0.309455,
		36.301765, 34.880501, 26.198654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661518, 35.302055, 26.836887>,  <36.965343, 34.828167, 26.415274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661518, 35.302055, 26.836887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365410, 35.078018, 26.688131>,  <36.187744, 34.943596, 26.598879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365410, 35.078018, 26.688131>,  <36.661518, 35.302055, 26.836887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365410, 35.078018, 26.688131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289319, -0.233921, 0.928211,
		-0.606875, 0.794719, 0.011119,
		-0.740268, -0.560091, -0.371888,
		36.143330, 34.909992, 26.576565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094612, 35.459160, 27.180576>,  <36.661518, 35.302055, 26.836887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094612, 35.459160, 27.180576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.941631, 35.117851, 27.038780>,  <35.849842, 34.913067, 26.953703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.941631, 35.117851, 27.038780>,  <36.094612, 35.459160, 27.180576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941631, 35.117851, 27.038780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441215, -0.168436, 0.881452,
		-0.811825, 0.493519, -0.312056,
		-0.382452, -0.853269, -0.354489,
		35.826897, 34.861870, 26.932434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420956, 35.501431, 27.403130>,  <36.094612, 35.459160, 27.180576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420956, 35.501431, 27.403130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.455799, 35.114849, 27.306477>,  <35.476707, 34.882900, 27.248486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.455799, 35.114849, 27.306477>,  <35.420956, 35.501431, 27.403130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455799, 35.114849, 27.306477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637776, -0.240433, 0.731733,
		-0.765280, 0.090365, -0.637323,
		0.087110, -0.966450, -0.241631,
		35.481934, 34.824913, 27.233988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720821, 35.231503, 27.348921>,  <35.420956, 35.501431, 27.403130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720821, 35.231503, 27.348921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946609, 34.905544, 27.401552>,  <35.082085, 34.709969, 27.433130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946609, 34.905544, 27.401552>,  <34.720821, 35.231503, 27.348921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946609, 34.905544, 27.401552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633804, -0.325756, 0.701553,
		-0.528831, -0.479402, -0.700365,
		0.564474, -0.814897, 0.131577,
		35.115952, 34.661076, 27.441025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272419, 34.613552, 27.369991>,  <34.720821, 35.231503, 27.348921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272419, 34.613552, 27.369991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605598, 34.526821, 27.573631>,  <34.805508, 34.474781, 27.695816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605598, 34.526821, 27.573631>,  <34.272419, 34.613552, 27.369991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605598, 34.526821, 27.573631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553003, -0.358828, 0.751951,
		0.019638, -0.907870, -0.418791,
		0.832948, -0.216826, 0.509102,
		34.855484, 34.461773, 27.726362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299614, 33.873428, 27.484512>,  <34.272419, 34.613552, 27.369991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299614, 33.873428, 27.484512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.534195, 34.049816, 27.756285>,  <34.674942, 34.155647, 27.919348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.534195, 34.049816, 27.756285>,  <34.299614, 33.873428, 27.484512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534195, 34.049816, 27.756285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507011, -0.454314, 0.732488,
		0.631679, -0.774045, -0.042855,
		0.586448, 0.440969, 0.679430,
		34.710129, 34.182106, 27.960114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165302, 33.478821, 28.023479>,  <34.299614, 33.873428, 27.484512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165302, 33.478821, 28.023479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.406765, 33.751076, 28.189529>,  <34.551643, 33.914429, 28.289160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.406765, 33.751076, 28.189529>,  <34.165302, 33.478821, 28.023479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406765, 33.751076, 28.189529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432874, -0.157438, 0.887600,
		0.669493, -0.715501, 0.199593,
		0.603655, 0.680640, 0.415126,
		34.587860, 33.955269, 28.314068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421612, 33.226810, 28.670961>,  <34.165302, 33.478821, 28.023479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421612, 33.226810, 28.670961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.434990, 33.624596, 28.710823>,  <34.443016, 33.863266, 28.734741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.434990, 33.624596, 28.710823>,  <34.421612, 33.226810, 28.670961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434990, 33.624596, 28.710823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449905, -0.074057, 0.890001,
		0.892450, -0.074604, 0.444935,
		0.033447, 0.994460, 0.099656,
		34.445023, 33.922932, 28.740721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460686, 33.304096, 29.449564>,  <34.421612, 33.226810, 28.670961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460686, 33.304096, 29.449564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328964, 33.645901, 29.288879>,  <34.249931, 33.850983, 29.192469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328964, 33.645901, 29.288879>,  <34.460686, 33.304096, 29.449564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328964, 33.645901, 29.288879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517680, 0.192408, 0.833658,
		0.789661, 0.482488, 0.379001,
		-0.329308, 0.854508, -0.401711,
		34.230171, 33.902252, 29.168365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578205, 33.817677, 29.935427>,  <34.460686, 33.304096, 29.449564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578205, 33.817677, 29.935427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.285130, 33.982342, 29.718649>,  <34.109283, 34.081142, 29.588583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.285130, 33.982342, 29.718649>,  <34.578205, 33.817677, 29.935427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285130, 33.982342, 29.718649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562391, 0.082207, 0.822775,
		0.383260, 0.907620, 0.171286,
		-0.732685, 0.411666, -0.541944,
		34.065323, 34.105843, 29.556067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310867, 34.366028, 30.317360>,  <34.578205, 33.817677, 29.935427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310867, 34.366028, 30.317360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033504, 34.308819, 30.034876>,  <33.867088, 34.274494, 29.865385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033504, 34.308819, 30.034876>,  <34.310867, 34.366028, 30.317360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033504, 34.308819, 30.034876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711086, -0.022469, 0.702745,
		-0.116377, 0.989464, -0.086121,
		-0.693406, -0.143023, -0.706210,
		33.825481, 34.265911, 29.823013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742886, 34.910671, 30.379930>,  <34.310867, 34.366028, 30.317360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742886, 34.910671, 30.379930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.588310, 34.579487, 30.217373>,  <33.495567, 34.380775, 30.119839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.588310, 34.579487, 30.217373>,  <33.742886, 34.910671, 30.379930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588310, 34.579487, 30.217373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767243, 0.044037, 0.639843,
		-0.511866, 0.559059, -0.652262,
		-0.386434, -0.827957, -0.406393,
		33.472382, 34.331100, 30.095455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025860, 35.087269, 30.245275>,  <33.742886, 34.910671, 30.379930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025860, 35.087269, 30.245275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.072090, 34.691906, 30.284674>,  <33.099827, 34.454689, 30.308311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.072090, 34.691906, 30.284674>,  <33.025860, 35.087269, 30.245275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072090, 34.691906, 30.284674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785737, -0.030309, 0.617818,
		-0.607669, -0.148793, -0.780128,
		0.115572, -0.988404, 0.098494,
		33.106762, 34.395386, 30.314222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106396, 35.479046, 29.561413>,  <33.025860, 35.087269, 30.245275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106396, 35.479046, 29.561413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.178486, 35.088928, 29.612507>,  <33.221741, 34.854858, 29.643164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.178486, 35.088928, 29.612507>,  <33.106396, 35.479046, 29.561413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178486, 35.088928, 29.612507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464218, -0.030150, -0.885207,
		0.867190, 0.218837, 0.447316,
		0.180229, -0.975296, 0.127734,
		33.232555, 34.796341, 29.650827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761520, 36.048656, 29.380066>,  <33.106396, 35.479046, 29.561413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761520, 36.048656, 29.380066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129353, 36.095383, 29.230011>,  <33.350052, 36.123421, 29.139978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129353, 36.095383, 29.230011>,  <32.761520, 36.048656, 29.380066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129353, 36.095383, 29.230011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392638, 0.237874, -0.888398,
		-0.014547, 0.964245, 0.264612,
		0.919578, 0.116820, -0.375139,
		33.405228, 36.130428, 29.117470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712040, 36.229294, 28.700533>,  <32.761520, 36.048656, 29.380066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712040, 36.229294, 28.700533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.104313, 36.296764, 28.740135>,  <33.339676, 36.337246, 28.763897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.104313, 36.296764, 28.740135>,  <32.712040, 36.229294, 28.700533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104313, 36.296764, 28.740135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018624, 0.423364, -0.905768,
		-0.194699, 0.890118, 0.412046,
		0.980686, 0.168678, 0.099006,
		33.398518, 36.347366, 28.769836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807419, 36.960060, 28.574524>,  <32.712040, 36.229294, 28.700533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807419, 36.960060, 28.574524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.167744, 36.795021, 28.520420>,  <33.383938, 36.695999, 28.487959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.167744, 36.795021, 28.520420>,  <32.807419, 36.960060, 28.574524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167744, 36.795021, 28.520420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174111, 0.628611, -0.757980,
		0.397766, 0.659250, 0.638100,
		0.900815, -0.412599, -0.135258,
		33.437988, 36.671242, 28.479843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278900, 37.584816, 28.516268>,  <32.807419, 36.960060, 28.574524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278900, 37.584816, 28.516268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.453972, 37.256035, 28.370487>,  <33.559017, 37.058765, 28.283018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.453972, 37.256035, 28.370487>,  <33.278900, 37.584816, 28.516268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453972, 37.256035, 28.370487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420222, 0.545347, -0.725265,
		0.794888, 0.164285, 0.584092,
		0.437683, -0.821953, -0.364454,
		33.585278, 37.009449, 28.261150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863277, 37.904503, 28.330620>,  <33.278900, 37.584816, 28.516268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863277, 37.904503, 28.330620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.869637, 37.546776, 28.151756>,  <33.873451, 37.332142, 28.044437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.869637, 37.546776, 28.151756>,  <33.863277, 37.904503, 28.330620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869637, 37.546776, 28.151756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532844, 0.385999, -0.753048,
		0.846064, -0.226293, 0.482667,
		0.015899, -0.894313, -0.447159,
		33.874405, 37.278481, 28.017609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636059, 37.749992, 28.142149>,  <33.863277, 37.904503, 28.330620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636059, 37.749992, 28.142149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.403229, 37.516438, 27.915781>,  <34.263531, 37.376305, 27.779961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.403229, 37.516438, 27.915781>,  <34.636059, 37.749992, 28.142149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403229, 37.516438, 27.915781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602188, 0.158134, -0.782536,
		0.546405, -0.796284, 0.259564,
		-0.582075, -0.583888, -0.565918,
		34.228607, 37.341270, 27.746006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198818, 37.317757, 27.793392>,  <34.636059, 37.749992, 28.142149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198818, 37.317757, 27.793392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.855846, 37.323002, 27.587616>,  <34.650063, 37.326149, 27.464149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.855846, 37.323002, 27.587616>,  <35.198818, 37.317757, 27.793392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855846, 37.323002, 27.587616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499038, 0.265225, -0.824995,
		0.125624, -0.964097, -0.233954,
		-0.857426, 0.013113, -0.514440,
		34.598618, 37.326935, 27.433283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331207, 36.899632, 27.139864>,  <35.198818, 37.317757, 27.793392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331207, 36.899632, 27.139864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.021557, 37.140476, 27.061703>,  <34.835766, 37.284985, 27.014807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.021557, 37.140476, 27.061703>,  <35.331207, 36.899632, 27.139864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021557, 37.140476, 27.061703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351764, 0.152534, -0.923577,
		-0.526293, -0.783705, -0.329883,
		-0.774130, 0.602113, -0.195402,
		34.789318, 37.321110, 27.003082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162880, 36.763992, 26.389067>,  <35.331207, 36.899632, 27.139864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162880, 36.763992, 26.389067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005600, 37.125767, 26.455259>,  <34.911232, 37.342831, 26.494974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005600, 37.125767, 26.455259>,  <35.162880, 36.763992, 26.389067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005600, 37.125767, 26.455259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234963, 0.272843, -0.932925,
		-0.888923, -0.327948, -0.319792,
		-0.393204, 0.904437, 0.165481,
		34.887638, 37.397099, 26.504904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873611, 36.910042, 25.755674>,  <35.162880, 36.763992, 26.389067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873611, 36.910042, 25.755674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.857796, 37.275761, 25.916914>,  <34.848309, 37.495193, 26.013659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.857796, 37.275761, 25.916914>,  <34.873611, 36.910042, 25.755674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857796, 37.275761, 25.916914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205177, 0.402249, -0.892243,
		-0.977926, 0.047430, -0.203497,
		-0.039537, 0.914301, 0.403101,
		34.845936, 37.550053, 26.037844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327995, 37.418686, 25.422686>,  <34.873611, 36.910042, 25.755674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327995, 37.418686, 25.422686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.622971, 37.639854, 25.577839>,  <34.799957, 37.772556, 25.670931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.622971, 37.639854, 25.577839>,  <34.327995, 37.418686, 25.422686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622971, 37.639854, 25.577839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277381, 0.275694, -0.920355,
		-0.615824, 0.786299, 0.049937,
		0.737442, 0.552925, 0.387883,
		34.844204, 37.805733, 25.694204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310707, 38.079445, 25.018425>,  <34.327995, 37.418686, 25.422686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310707, 38.079445, 25.018425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.658749, 38.037743, 25.211111>,  <34.867573, 38.012722, 25.326723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.658749, 38.037743, 25.211111>,  <34.310707, 38.079445, 25.018425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658749, 38.037743, 25.211111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482373, 0.380762, -0.788883,
		-0.101172, 0.918777, 0.381594,
		0.870104, -0.104258, 0.481716,
		34.919781, 38.006466, 25.355625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655418, 38.584267, 24.779493>,  <34.310707, 38.079445, 25.018425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655418, 38.584267, 24.779493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.955887, 38.359539, 24.918114>,  <35.136169, 38.224701, 25.001286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.955887, 38.359539, 24.918114>,  <34.655418, 38.584267, 24.779493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955887, 38.359539, 24.918114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542754, 0.226859, -0.808674,
		0.375712, 0.795544, 0.475341,
		0.751171, -0.561822, 0.346551,
		35.181240, 38.190994, 25.022079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237610, 38.876564, 24.556330>,  <34.655418, 38.584267, 24.779493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237610, 38.876564, 24.556330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.381168, 38.517326, 24.658007>,  <35.467304, 38.301785, 24.719013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.381168, 38.517326, 24.658007>,  <35.237610, 38.876564, 24.556330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381168, 38.517326, 24.658007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677592, 0.063395, -0.732701,
		0.641922, 0.435202, 0.631296,
		0.358894, -0.898098, 0.254195,
		35.488838, 38.247898, 24.734264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892616, 38.926685, 24.777374>,  <35.237610, 38.876564, 24.556330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892616, 38.926685, 24.777374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844936, 38.550598, 24.649759>,  <35.816330, 38.324947, 24.573191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844936, 38.550598, 24.649759>,  <35.892616, 38.926685, 24.777374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844936, 38.550598, 24.649759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650094, 0.168964, -0.740830,
		0.750447, -0.295710, 0.591088,
		-0.119198, -0.940216, -0.319038,
		35.809177, 38.268532, 24.554049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520287, 38.699829, 24.495794>,  <35.892616, 38.926685, 24.777374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520287, 38.699829, 24.495794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.303471, 38.401073, 24.341724>,  <36.173382, 38.221821, 24.249283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.303471, 38.401073, 24.341724>,  <36.520287, 38.699829, 24.495794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303471, 38.401073, 24.341724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631706, -0.059858, -0.772894,
		0.554207, -0.662254, 0.504257,
		-0.542036, -0.746885, -0.385176,
		36.140862, 38.177010, 24.226171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970856, 38.238457, 24.314291>,  <36.520287, 38.699829, 24.495794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970856, 38.238457, 24.314291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.638538, 38.148483, 24.110649>,  <36.439148, 38.094498, 23.988464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.638538, 38.148483, 24.110649>,  <36.970856, 38.238457, 24.314291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638538, 38.148483, 24.110649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549527, -0.186314, -0.814436,
		0.088345, -0.956394, 0.278398,
		-0.830791, -0.224938, -0.509105,
		36.389301, 38.081001, 23.957918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205395, 37.669113, 23.958334>,  <36.970856, 38.238457, 24.314291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205395, 37.669113, 23.958334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.893143, 37.799999, 23.745335>,  <36.705791, 37.878529, 23.617535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.893143, 37.799999, 23.745335>,  <37.205395, 37.669113, 23.958334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893143, 37.799999, 23.745335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430686, -0.335788, -0.837709,
		-0.452915, -0.883277, 0.121200,
		-0.780626, 0.327211, -0.532498,
		36.658955, 37.898163, 23.585585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207191, 37.136711, 23.310497>,  <37.205395, 37.669113, 23.958334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207191, 37.136711, 23.310497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.981380, 37.448051, 23.200605>,  <36.845894, 37.634857, 23.134670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.981380, 37.448051, 23.200605>,  <37.207191, 37.136711, 23.310497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981380, 37.448051, 23.200605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421732, -0.014123, -0.906611,
		-0.709542, -0.627670, -0.320283,
		-0.564529, 0.778352, -0.274730,
		36.812023, 37.681557, 23.118187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901199, 36.945118, 22.583824>,  <37.207191, 37.136711, 23.310497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901199, 36.945118, 22.583824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.870911, 37.341270, 22.630152>,  <36.852737, 37.578960, 22.657949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.870911, 37.341270, 22.630152>,  <36.901199, 36.945118, 22.583824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870911, 37.341270, 22.630152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360407, 0.135484, -0.922904,
		-0.929717, -0.028137, -0.367198,
		-0.075717, 0.990380, 0.115821,
		36.848194, 37.638386, 22.664898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616959, 37.175213, 22.004795>,  <36.901199, 36.945118, 22.583824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616959, 37.175213, 22.004795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.759068, 37.520275, 22.148798>,  <36.844334, 37.727314, 22.235199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.759068, 37.520275, 22.148798>,  <36.616959, 37.175213, 22.004795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759068, 37.520275, 22.148798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335100, 0.242000, -0.910574,
		-0.872635, 0.444137, -0.203101,
		0.355269, 0.862658, 0.360008,
		36.865646, 37.779072, 22.256800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419716, 37.744263, 21.522848>,  <36.616959, 37.175213, 22.004795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419716, 37.744263, 21.522848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.729221, 37.910202, 21.714340>,  <36.914925, 38.009766, 21.829235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.729221, 37.910202, 21.714340>,  <36.419716, 37.744263, 21.522848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729221, 37.910202, 21.714340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351347, 0.347779, -0.869256,
		-0.527103, 0.840802, 0.123344,
		0.773768, 0.414851, 0.478729,
		36.961353, 38.034657, 21.857958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446022, 38.528793, 21.401430>,  <36.419716, 37.744263, 21.522848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446022, 38.528793, 21.401430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.824070, 38.433395, 21.490763>,  <37.050900, 38.376156, 21.544363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.824070, 38.433395, 21.490763>,  <36.446022, 38.528793, 21.401430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824070, 38.433395, 21.490763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311242, 0.449175, -0.837479,
		0.099415, 0.861025, 0.498751,
		0.945116, -0.238490, 0.223333,
		37.107605, 38.361847, 21.557762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873798, 39.157665, 21.356144>,  <36.446022, 38.528793, 21.401430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873798, 39.157665, 21.356144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.123661, 38.845329, 21.352301>,  <37.273579, 38.657928, 21.349995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.123661, 38.845329, 21.352301>,  <36.873798, 39.157665, 21.356144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123661, 38.845329, 21.352301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423932, 0.349420, -0.835576,
		0.655810, 0.517874, 0.549290,
		0.624656, -0.780841, -0.009610,
		37.311058, 38.611076, 21.349419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534775, 39.392963, 21.248886>,  <36.873798, 39.157665, 21.356144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534775, 39.392963, 21.248886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.582462, 39.021400, 21.108652>,  <37.611076, 38.798462, 21.024511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.582462, 39.021400, 21.108652>,  <37.534775, 39.392963, 21.248886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582462, 39.021400, 21.108652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454860, 0.364969, -0.812343,
		0.882547, -0.062617, 0.466037,
		0.119223, -0.928912, -0.350584,
		37.618229, 38.742725, 21.003477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074188, 39.554474, 20.932135>,  <37.534775, 39.392963, 21.248886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074188, 39.554474, 20.932135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.972095, 39.189259, 20.804876>,  <37.910839, 38.970131, 20.728521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.972095, 39.189259, 20.804876>,  <38.074188, 39.554474, 20.932135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972095, 39.189259, 20.804876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605770, 0.105454, -0.788621,
		0.753591, -0.394005, 0.526176,
		-0.255233, -0.913039, -0.318145,
		37.895527, 38.915348, 20.709433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630623, 38.991207, 20.947828>,  <38.074188, 39.554474, 20.932135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630623, 38.991207, 20.947828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.366924, 38.930847, 20.653177>,  <38.208706, 38.894630, 20.476387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.366924, 38.930847, 20.653177>,  <38.630623, 38.991207, 20.947828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366924, 38.930847, 20.653177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679687, 0.299393, -0.669619,
		0.321589, -0.942121, -0.094807,
		-0.659247, -0.150903, -0.736629,
		38.169151, 38.885578, 20.432188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072540, 38.554283, 21.488535>,  <38.630623, 38.991207, 20.947828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072540, 38.554283, 21.488535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.444126, 38.691639, 21.543831>,  <39.667076, 38.774052, 21.577009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.444126, 38.691639, 21.543831>,  <39.072540, 38.554283, 21.488535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444126, 38.691639, 21.543831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081222, -0.175268, 0.981165,
		0.361149, -0.922695, -0.134927,
		0.928964, 0.343388, 0.138241,
		39.722816, 38.794655, 21.585302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486851, 38.105576, 21.913612>,  <39.072540, 38.554283, 21.488535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486851, 38.105576, 21.913612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.642426, 38.471031, 21.960928>,  <39.735771, 38.690304, 21.989317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.642426, 38.471031, 21.960928>,  <39.486851, 38.105576, 21.913612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642426, 38.471031, 21.960928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080585, -0.094167, 0.992289,
		0.917735, -0.395466, 0.037001,
		0.388933, 0.913640, 0.118289,
		39.759106, 38.745125, 21.996414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949741, 38.049541, 22.454828>,  <39.486851, 38.105576, 21.913612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949741, 38.049541, 22.454828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.867966, 38.440277, 22.429585>,  <39.818901, 38.674721, 22.414438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.867966, 38.440277, 22.429585>,  <39.949741, 38.049541, 22.454828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867966, 38.440277, 22.429585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208283, 0.019587, 0.977872,
		0.956464, 0.213058, 0.199455,
		-0.204436, 0.976844, -0.063110,
		39.806633, 38.733330, 22.410652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366524, 38.336147, 23.008591>,  <39.949741, 38.049541, 22.454828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366524, 38.336147, 23.008591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.101810, 38.617077, 22.903681>,  <39.942982, 38.785633, 22.840734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.101810, 38.617077, 22.903681>,  <40.366524, 38.336147, 23.008591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101810, 38.617077, 22.903681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253390, 0.119713, 0.959928,
		0.705576, 0.701722, 0.098737,
		-0.661783, 0.702321, -0.262276,
		39.903275, 38.827774, 22.824999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650990, 38.879002, 23.325859>,  <40.366524, 38.336147, 23.008591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650990, 38.879002, 23.325859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.259720, 38.938351, 23.267675>,  <40.024960, 38.973961, 23.232765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.259720, 38.938351, 23.267675>,  <40.650990, 38.879002, 23.325859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259720, 38.938351, 23.267675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127895, 0.121784, 0.984282,
		0.163756, 0.981404, -0.100150,
		-0.978175, 0.148373, -0.145460,
		39.966267, 38.982864, 23.224037>
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
