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
	<24.404591, 35.159512, 35.337894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351988, 35.163158, 34.941383>,  <24.320425, 35.165348, 34.703476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351988, 35.163158, 34.941383>,  <24.404591, 35.159512, 35.337894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.351988, 35.163158, 34.941383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124870, 0.991841, 0.025688,
		0.983419, 0.127159, -0.129298,
		-0.131509, 0.009116, -0.991273,
		24.312534, 35.165894, 34.644001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.904572, 35.693165, 34.850163>,  <24.404591, 35.159512, 35.337894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.904572, 35.693165, 34.850163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.566248, 35.617290, 34.650711>,  <24.363255, 35.571766, 34.531040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.566248, 35.617290, 34.650711>,  <24.904572, 35.693165, 34.850163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.566248, 35.617290, 34.650711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113238, 0.977190, -0.179655,
		0.521331, -0.095490, -0.847995,
		-0.845808, -0.189686, -0.498627,
		24.312506, 35.560387, 34.501122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.909132, 35.880947, 34.097412>,  <24.904572, 35.693165, 34.850163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.909132, 35.880947, 34.097412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.537952, 35.900887, 34.245152>,  <24.315245, 35.912849, 34.333797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.537952, 35.900887, 34.245152>,  <24.909132, 35.880947, 34.097412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.537952, 35.900887, 34.245152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074106, 0.946546, -0.313941,
		-0.365260, -0.318694, -0.874654,
		-0.927951, 0.049853, 0.369353,
		24.259567, 35.915844, 34.355957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.340303, 35.980633, 33.540279>,  <24.909132, 35.880947, 34.097412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.340303, 35.980633, 33.540279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203321, 35.733513, 33.257141>,  <25.121132, 35.585239, 33.087257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203321, 35.733513, 33.257141>,  <25.340303, 35.980633, 33.540279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203321, 35.733513, 33.257141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369395, 0.604190, -0.706047,
		0.863871, -0.503262, 0.021307,
		-0.342453, -0.617805, -0.707845,
		25.100586, 35.548172, 33.044788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.801140, 36.141651, 33.087212>,  <25.340303, 35.980633, 33.540279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.801140, 36.141651, 33.087212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.530182, 35.936951, 32.875835>,  <25.367607, 35.814133, 32.749008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.530182, 35.936951, 32.875835>,  <25.801140, 36.141651, 33.087212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.530182, 35.936951, 32.875835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281139, 0.483729, -0.828835,
		0.679775, -0.710015, -0.183805,
		-0.677397, -0.511747, -0.528440,
		25.326963, 35.783428, 32.717304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018482, 35.527725, 32.553040>,  <25.801140, 36.141651, 33.087212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.018482, 35.527725, 32.553040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701769, 35.759186, 32.474819>,  <25.511742, 35.898064, 32.427887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701769, 35.759186, 32.474819>,  <26.018482, 35.527725, 32.553040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.701769, 35.759186, 32.474819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486568, 0.404006, -0.774617,
		-0.369233, -0.708475, -0.601440,
		-0.791782, 0.578655, -0.195549,
		25.464233, 35.932781, 32.416153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.714962, 35.501476, 31.890728>,  <26.018482, 35.527725, 32.553040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.714962, 35.501476, 31.890728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715118, 35.491684, 31.490849>,  <25.715212, 35.485809, 31.250921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715118, 35.491684, 31.490849>,  <25.714962, 35.501476, 31.890728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.715118, 35.491684, 31.490849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360965, -0.932303, 0.022692,
		-0.932579, 0.360848, -0.009205,
		0.000393, -0.024485, -0.999700,
		25.715237, 35.484337, 31.190939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.127672, 35.381763, 31.604725>,  <25.714962, 35.501476, 31.890728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.127672, 35.381763, 31.604725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361120, 35.230831, 31.317110>,  <25.501188, 35.140274, 31.144541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361120, 35.230831, 31.317110>,  <25.127672, 35.381763, 31.604725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.361120, 35.230831, 31.317110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519641, -0.853978, 0.026367,
		-0.623990, 0.358252, -0.694473,
		0.583618, -0.377329, -0.719036,
		25.536205, 35.117634, 31.101398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.689688, 34.998230, 31.152515>,  <25.127672, 35.381763, 31.604725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.689688, 34.998230, 31.152515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048292, 34.838795, 31.075163>,  <25.263454, 34.743134, 31.028751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048292, 34.838795, 31.075163>,  <24.689688, 34.998230, 31.152515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.048292, 34.838795, 31.075163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413788, -0.909303, -0.044123,
		-0.158256, 0.119576, -0.980131,
		0.896512, -0.398584, -0.193382,
		25.317245, 34.719219, 31.017149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.601681, 34.518124, 30.646605>,  <24.689688, 34.998230, 31.152515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.601681, 34.518124, 30.646605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.948574, 34.408924, 30.813160>,  <25.156710, 34.343407, 30.913094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.948574, 34.408924, 30.813160>,  <24.601681, 34.518124, 30.646605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.948574, 34.408924, 30.813160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243514, -0.961998, -0.123531,
		0.434290, 0.005733, -0.900755,
		0.867233, -0.272995, 0.416390,
		25.208744, 34.327026, 30.938078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.991371, 34.127270, 30.147419>,  <24.601681, 34.518124, 30.646605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.991371, 34.127270, 30.147419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149103, 34.027042, 30.501078>,  <25.243742, 33.966908, 30.713274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149103, 34.027042, 30.501078>,  <24.991371, 34.127270, 30.147419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.149103, 34.027042, 30.501078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023043, -0.964503, -0.263064,
		0.918680, 0.083361, -0.386107,
		0.394331, -0.250569, 0.884149,
		25.267403, 33.951870, 30.766323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.538792, 33.677704, 29.954624>,  <24.991371, 34.127270, 30.147419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.538792, 33.677704, 29.954624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397602, 33.598915, 30.320490>,  <25.312887, 33.551640, 30.540009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397602, 33.598915, 30.320490>,  <25.538792, 33.677704, 29.954624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.397602, 33.598915, 30.320490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042569, -0.973195, -0.226008,
		0.934663, -0.118712, 0.335129,
		-0.352976, -0.196975, 0.914663,
		25.291710, 33.539822, 30.594889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933130, 33.201378, 30.369844>,  <25.538792, 33.677704, 29.954624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933130, 33.201378, 30.369844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.565861, 33.146141, 30.518379>,  <25.345499, 33.112999, 30.607500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.565861, 33.146141, 30.518379>,  <25.933130, 33.201378, 30.369844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.565861, 33.146141, 30.518379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069929, -0.979059, -0.191189,
		0.389962, -0.149577, 0.908602,
		-0.918172, -0.138094, 0.371336,
		25.290409, 33.104713, 30.629780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985357, 32.851368, 31.056177>,  <25.933130, 33.201378, 30.369844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985357, 32.851368, 31.056177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687819, 32.770668, 30.801310>,  <25.509295, 32.722248, 30.648390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687819, 32.770668, 30.801310>,  <25.985357, 32.851368, 31.056177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687819, 32.770668, 30.801310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231248, -0.972158, 0.037860,
		-0.627067, -0.119182, 0.769794,
		-0.743849, -0.201754, -0.637169,
		25.464664, 32.710140, 30.610159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722229, 32.928173, 31.245220>,  <25.985357, 32.851368, 31.056177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722229, 32.928173, 31.245220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896641, 32.827290, 31.590769>,  <27.001287, 32.766758, 31.798098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896641, 32.827290, 31.590769>,  <26.722229, 32.928173, 31.245220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896641, 32.827290, 31.590769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053515, 0.965495, 0.254866,
		-0.898340, -0.064899, 0.434480,
		0.436028, -0.252207, 0.863870,
		27.027449, 32.751629, 31.849930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399765, 33.230972, 31.900431>,  <26.722229, 32.928173, 31.245220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399765, 33.230972, 31.900431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796104, 33.184429, 31.927786>,  <27.033909, 33.156506, 31.944199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796104, 33.184429, 31.927786>,  <26.399765, 33.230972, 31.900431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796104, 33.184429, 31.927786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113495, 0.992549, 0.044325,
		-0.073038, -0.036157, 0.996674,
		0.990850, -0.116355, 0.068390,
		27.093359, 33.149521, 31.948303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741552, 33.677135, 31.896070>,  <26.399765, 33.230972, 31.900431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741552, 33.677135, 31.896070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630230, 33.763100, 31.521614>,  <25.563437, 33.814678, 31.296940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630230, 33.763100, 31.521614>,  <25.741552, 33.677135, 31.896070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.630230, 33.763100, 31.521614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287624, 0.948567, 0.132260,
		0.916417, -0.232448, -0.325804,
		-0.278304, 0.214914, -0.936140,
		25.546740, 33.827576, 31.240772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285431, 34.051697, 31.557117>,  <25.741552, 33.677135, 31.896070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285431, 34.051697, 31.557117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.956364, 34.123890, 31.341475>,  <25.758923, 34.167206, 31.212088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.956364, 34.123890, 31.341475>,  <26.285431, 34.051697, 31.557117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956364, 34.123890, 31.341475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304201, 0.940847, -0.149227,
		0.480286, -0.286762, -0.828910,
		-0.822670, 0.180484, -0.539109,
		25.709562, 34.178036, 31.179741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511677, 34.288376, 30.916117>,  <26.285431, 34.051697, 31.557117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511677, 34.288376, 30.916117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.131920, 34.413670, 30.906832>,  <25.904066, 34.488846, 30.901260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.131920, 34.413670, 30.906832>,  <26.511677, 34.288376, 30.916117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.131920, 34.413670, 30.906832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310791, 0.926170, -0.213585,
		-0.045404, -0.209989, -0.976649,
		-0.949393, 0.313231, -0.023211,
		25.847101, 34.507637, 30.899868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368837, 34.661247, 30.243464>,  <26.511677, 34.288376, 30.916117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368837, 34.661247, 30.243464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142288, 34.789635, 30.547094>,  <26.006359, 34.866669, 30.729273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142288, 34.789635, 30.547094>,  <26.368837, 34.661247, 30.243464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.142288, 34.789635, 30.547094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271397, 0.942309, -0.195952,
		-0.778181, 0.095029, -0.620809,
		-0.566373, 0.320972, 0.759078,
		25.972376, 34.885925, 30.774818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.924997, 35.280975, 29.947098>,  <26.368837, 34.661247, 30.243464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.924997, 35.280975, 29.947098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943882, 35.339199, 30.342386>,  <25.955212, 35.374134, 30.579559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943882, 35.339199, 30.342386>,  <25.924997, 35.280975, 29.947098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943882, 35.339199, 30.342386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135680, 0.979223, -0.150711,
		-0.989627, 0.141197, 0.026480,
		0.047210, 0.145555, 0.988223,
		25.958046, 35.382866, 30.638853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652536, 35.832615, 30.189915>,  <25.924997, 35.280975, 29.947098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652536, 35.832615, 30.189915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924753, 35.791264, 30.480068>,  <26.088083, 35.766453, 30.654160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924753, 35.791264, 30.480068>,  <25.652536, 35.832615, 30.189915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924753, 35.791264, 30.480068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217072, 0.973999, -0.064848,
		-0.699818, 0.201592, 0.685285,
		0.680540, -0.103374, 0.725382,
		26.128916, 35.760250, 30.697683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.523684, 36.302570, 30.754692>,  <25.652536, 35.832615, 30.189915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.523684, 36.302570, 30.754692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909578, 36.216572, 30.693953>,  <26.141115, 36.164974, 30.657509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909578, 36.216572, 30.693953>,  <25.523684, 36.302570, 30.754692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909578, 36.216572, 30.693953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237419, 0.959854, 0.149370,
		0.113640, -0.180155, 0.977052,
		0.964737, -0.214996, -0.151850,
		26.198999, 36.152073, 30.648397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974926, 36.596260, 31.248896>,  <25.523684, 36.302570, 30.754692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974926, 36.596260, 31.248896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193069, 36.547020, 30.917250>,  <26.323956, 36.517475, 30.718262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193069, 36.547020, 30.917250>,  <25.974926, 36.596260, 31.248896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193069, 36.547020, 30.917250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460364, 0.870602, 0.173546,
		0.700462, -0.476338, 0.531465,
		0.545360, -0.123105, -0.829113,
		26.356678, 36.510090, 30.668516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559841, 36.812897, 31.478550>,  <25.974926, 36.596260, 31.248896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559841, 36.812897, 31.478550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.624557, 36.836212, 31.084509>,  <26.663387, 36.850201, 30.848083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.624557, 36.836212, 31.084509>,  <26.559841, 36.812897, 31.478550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.624557, 36.836212, 31.084509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341853, 0.933132, 0.111359,
		0.925722, -0.354777, 0.131045,
		0.161790, 0.058289, -0.985103,
		26.673094, 36.853699, 30.788979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264896, 37.250851, 31.287447>,  <26.559841, 36.812897, 31.478550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264896, 37.250851, 31.287447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047764, 37.267120, 30.951904>,  <26.917484, 37.276882, 30.750580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047764, 37.267120, 30.951904>,  <27.264896, 37.250851, 31.287447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047764, 37.267120, 30.951904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126947, 0.991324, -0.034081,
		0.830192, -0.124990, -0.543286,
		-0.542832, 0.040674, -0.838856,
		26.884914, 37.279324, 30.700247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507175, 37.855671, 31.078472>,  <27.264896, 37.250851, 31.287447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507175, 37.855671, 31.078472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.195112, 37.784100, 30.838692>,  <27.007875, 37.741158, 30.694824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.195112, 37.784100, 30.838692>,  <27.507175, 37.855671, 31.078472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195112, 37.784100, 30.838692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120171, 0.983241, -0.137095,
		0.613935, -0.034919, -0.788584,
		-0.780156, -0.178933, -0.599450,
		26.961065, 37.730419, 30.658857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617838, 37.985905, 30.356003>,  <27.507175, 37.855671, 31.078472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617838, 37.985905, 30.356003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234123, 38.058849, 30.442274>,  <27.003895, 38.102615, 30.494038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234123, 38.058849, 30.442274>,  <27.617838, 37.985905, 30.356003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234123, 38.058849, 30.442274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098371, 0.931534, -0.350096,
		-0.264756, -0.314625, -0.911546,
		-0.959285, 0.182360, 0.215679,
		26.946339, 38.113556, 30.506977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775246, 38.703011, 29.941185>,  <27.617838, 37.985905, 30.356003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775246, 38.703011, 29.941185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848726, 39.095009, 29.971828>,  <27.892815, 39.330208, 29.990215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848726, 39.095009, 29.971828>,  <27.775246, 38.703011, 29.941185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848726, 39.095009, 29.971828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425067, 0.008923, 0.905118,
		0.886325, -0.198834, 0.418202,
		0.183699, 0.979992, 0.076610,
		27.903835, 39.389008, 29.994812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226139, 38.876060, 30.492914>,  <27.775246, 38.703011, 29.941185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226139, 38.876060, 30.492914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009178, 39.203060, 30.415457>,  <27.879002, 39.399261, 30.368982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009178, 39.203060, 30.415457>,  <28.226139, 38.876060, 30.492914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009178, 39.203060, 30.415457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483435, -0.115203, 0.867766,
		0.687090, 0.564291, 0.457694,
		-0.542401, 0.817499, -0.193643,
		27.846458, 39.448311, 30.357365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218519, 39.229717, 31.040474>,  <28.226139, 38.876060, 30.492914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218519, 39.229717, 31.040474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896885, 39.379623, 30.855867>,  <27.703905, 39.469566, 30.745104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896885, 39.379623, 30.855867>,  <28.218519, 39.229717, 31.040474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896885, 39.379623, 30.855867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478094, 0.053805, 0.876659,
		0.353371, 0.925558, 0.135908,
		-0.804086, 0.374763, -0.461517,
		27.655659, 39.492054, 30.717413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974007, 39.951813, 31.281836>,  <28.218519, 39.229717, 31.040474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974007, 39.951813, 31.281836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664522, 39.733833, 31.152592>,  <27.478832, 39.603046, 31.075047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664522, 39.733833, 31.152592>,  <27.974007, 39.951813, 31.281836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664522, 39.733833, 31.152592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442748, 0.100311, 0.891017,
		-0.453149, 0.832446, -0.318888,
		-0.773712, -0.544950, -0.323108,
		27.432409, 39.570347, 31.055658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309978, 40.307304, 31.300425>,  <27.974007, 39.951813, 31.281836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309978, 40.307304, 31.300425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187201, 39.927982, 31.332691>,  <27.113533, 39.700390, 31.352051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187201, 39.927982, 31.332691>,  <27.309978, 40.307304, 31.300425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.187201, 39.927982, 31.332691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313036, 0.180635, 0.932405,
		-0.898773, 0.260947, -0.352298,
		-0.306946, -0.948302, 0.080664,
		27.095118, 39.643490, 31.356890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616865, 40.282078, 31.631750>,  <27.309978, 40.307304, 31.300425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616865, 40.282078, 31.631750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770958, 39.918037, 31.692831>,  <26.863413, 39.699615, 31.729479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770958, 39.918037, 31.692831>,  <26.616865, 40.282078, 31.631750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770958, 39.918037, 31.692831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296354, 0.034701, 0.954447,
		-0.873940, -0.412936, -0.256344,
		0.385230, -0.910099, 0.152702,
		26.886526, 39.645008, 31.738642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145704, 39.745323, 31.722532>,  <26.616865, 40.282078, 31.631750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145704, 39.745323, 31.722532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491676, 39.685925, 31.914301>,  <26.699259, 39.650284, 32.029362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491676, 39.685925, 31.914301>,  <26.145704, 39.745323, 31.722532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491676, 39.685925, 31.914301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439485, 0.237220, 0.866360,
		-0.242380, -0.960039, 0.139916,
		0.864930, -0.148498, 0.479421,
		26.751156, 39.641376, 32.058128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261572, 40.235588, 32.305065>,  <26.145704, 39.745323, 31.722532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261572, 40.235588, 32.305065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249846, 40.439049, 31.960875>,  <26.242809, 40.561127, 31.754360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249846, 40.439049, 31.960875>,  <26.261572, 40.235588, 32.305065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.249846, 40.439049, 31.960875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396690, -0.784229, -0.477097,
		-0.917485, -0.355327, -0.178787,
		-0.029315, 0.508652, -0.860473,
		26.241051, 40.591644, 31.702732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516771, 39.727890, 32.811642>,  <26.261572, 40.235588, 32.305065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516771, 39.727890, 32.811642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673498, 39.364025, 32.866776>,  <26.767534, 39.145706, 32.899857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673498, 39.364025, 32.866776>,  <26.516771, 39.727890, 32.811642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673498, 39.364025, 32.866776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311684, -0.009713, -0.950136,
		0.865639, 0.415241, 0.279721,
		0.391819, -0.909660, 0.137832,
		26.791044, 39.091125, 32.908127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306139, 39.615593, 32.684021>,  <26.516771, 39.727890, 32.811642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306139, 39.615593, 32.684021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072784, 39.301552, 32.600811>,  <26.932772, 39.113129, 32.550884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072784, 39.301552, 32.600811>,  <27.306139, 39.615593, 32.684021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072784, 39.301552, 32.600811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112734, 0.175375, -0.978026,
		0.804333, -0.594019, -0.013804,
		-0.583386, -0.785102, -0.208026,
		26.897768, 39.066021, 32.538403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.642071, 39.002689, 32.361942>,  <27.306139, 39.615593, 32.684021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.642071, 39.002689, 32.361942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259712, 39.065151, 32.262440>,  <27.030298, 39.102627, 32.202736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259712, 39.065151, 32.262440>,  <27.642071, 39.002689, 32.361942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259712, 39.065151, 32.262440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276381, 0.191607, -0.941754,
		-0.099394, -0.968970, -0.226314,
		-0.955894, 0.156154, -0.248761,
		26.972944, 39.111996, 32.187813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432215, 38.448429, 31.709465>,  <27.642071, 39.002689, 32.361942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432215, 38.448429, 31.709465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224745, 38.788937, 31.741245>,  <27.100262, 38.993240, 31.760313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224745, 38.788937, 31.741245>,  <27.432215, 38.448429, 31.709465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224745, 38.788937, 31.741245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032914, 0.112742, -0.993079,
		-0.854337, -0.512472, -0.086496,
		-0.518677, 0.851271, 0.079452,
		27.069141, 39.044319, 31.765081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810781, 38.390469, 31.256731>,  <27.432215, 38.448429, 31.709465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810781, 38.390469, 31.256731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911381, 38.774170, 31.308231>,  <26.971741, 39.004391, 31.339130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911381, 38.774170, 31.308231>,  <26.810781, 38.390469, 31.256731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911381, 38.774170, 31.308231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054723, 0.118719, -0.991419,
		-0.966310, 0.256385, -0.022635,
		0.251498, 0.959256, 0.128750,
		26.986830, 39.061947, 31.346857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377226, 38.790638, 30.835106>,  <26.810781, 38.390469, 31.256731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377226, 38.790638, 30.835106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700338, 39.018879, 30.894300>,  <26.894205, 39.155823, 30.929817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700338, 39.018879, 30.894300>,  <26.377226, 38.790638, 30.835106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700338, 39.018879, 30.894300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233965, -0.079912, -0.968955,
		-0.541066, 0.817327, -0.198053,
		0.807780, 0.570606, 0.147988,
		26.942673, 39.190060, 30.938698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402264, 39.221828, 30.322292>,  <26.377226, 38.790638, 30.835106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402264, 39.221828, 30.322292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780964, 39.262268, 30.444565>,  <27.008184, 39.286533, 30.517929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780964, 39.262268, 30.444565>,  <26.402264, 39.221828, 30.322292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.780964, 39.262268, 30.444565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272900, 0.251816, -0.928501,
		-0.170847, 0.962480, 0.210817,
		0.946751, 0.101100, 0.305683,
		27.064989, 39.292599, 30.536270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667698, 39.917679, 30.188473>,  <26.402264, 39.221828, 30.322292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667698, 39.917679, 30.188473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948538, 39.632874, 30.184429>,  <27.117041, 39.461990, 30.182003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948538, 39.632874, 30.184429>,  <26.667698, 39.917679, 30.188473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948538, 39.632874, 30.184429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241238, 0.251189, -0.937394,
		0.669972, 0.655704, 0.348123,
		0.702098, -0.712008, -0.010109,
		27.159166, 39.419270, 30.181396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306770, 40.222530, 30.129410>,  <26.667698, 39.917679, 30.188473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306770, 40.222530, 30.129410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191826, 39.882343, 29.953167>,  <27.122860, 39.678230, 29.847422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191826, 39.882343, 29.953167>,  <27.306770, 40.222530, 30.129410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191826, 39.882343, 29.953167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241449, 0.380834, -0.892563,
		0.926891, -0.362870, 0.095908,
		-0.287359, -0.850465, -0.440607,
		27.105618, 39.627205, 29.820986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317364, 40.413101, 29.405478>,  <27.306770, 40.222530, 30.129410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.317364, 40.413101, 29.405478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225191, 40.025482, 29.370056>,  <27.169888, 39.792912, 29.348804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225191, 40.025482, 29.370056>,  <27.317364, 40.413101, 29.405478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225191, 40.025482, 29.370056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097630, 0.067519, -0.992929,
		0.968178, -0.237449, 0.079049,
		-0.230432, -0.969050, -0.088553,
		27.156061, 39.734768, 29.343491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857166, 40.133415, 29.117214>,  <27.317364, 40.413101, 29.405478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857166, 40.133415, 29.117214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513577, 39.952759, 29.020723>,  <27.307423, 39.844364, 28.962830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513577, 39.952759, 29.020723>,  <27.857166, 40.133415, 29.117214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513577, 39.952759, 29.020723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167269, 0.197757, -0.965874,
		0.483930, -0.870008, -0.094323,
		-0.858972, -0.451639, -0.241226,
		27.255884, 39.817268, 28.948355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120783, 40.552040, 28.650644>,  <27.857166, 40.133415, 29.117214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120783, 40.552040, 28.650644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100918, 40.951149, 28.668465>,  <28.088999, 41.190613, 28.679157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100918, 40.951149, 28.668465>,  <28.120783, 40.552040, 28.650644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100918, 40.951149, 28.668465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928732, 0.029723, 0.369559,
		0.367412, 0.059730, -0.928138,
		-0.049661, 0.997772, 0.044552,
		28.086020, 41.250481, 28.681829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744932, 40.716362, 28.496723>,  <28.120783, 40.552040, 28.650644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744932, 40.716362, 28.496723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599709, 41.030594, 28.697145>,  <28.512575, 41.219131, 28.817398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599709, 41.030594, 28.697145>,  <28.744932, 40.716362, 28.496723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599709, 41.030594, 28.697145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912187, 0.190007, 0.363059,
		0.190007, 0.588867, -0.785578,
		-0.363059, 0.785578, 0.501055,
		28.490791, 41.266266, 28.847462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390146, 41.063278, 28.651747>,  <28.744932, 40.716362, 28.496723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390146, 41.063278, 28.651747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138430, 41.231457, 28.913195>,  <28.987400, 41.332363, 29.070063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138430, 41.231457, 28.913195>,  <29.390146, 41.063278, 28.651747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138430, 41.231457, 28.913195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773384, 0.421682, 0.473352,
		-0.076602, 0.803376, -0.590525,
		-0.629293, 0.420443, 0.653619,
		28.949642, 41.357590, 29.109280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550777, 41.778858, 28.682526>,  <29.390146, 41.063278, 28.651747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550777, 41.778858, 28.682526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421144, 41.651840, 29.038982>,  <29.343365, 41.575630, 29.252857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421144, 41.651840, 29.038982>,  <29.550777, 41.778858, 28.682526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421144, 41.651840, 29.038982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773641, 0.453186, 0.442833,
		-0.544473, 0.832940, 0.098796,
		-0.324080, -0.317544, 0.891144,
		29.323921, 41.556576, 29.306326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201834, 42.354401, 29.184174>,  <29.550777, 41.778858, 28.682526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201834, 42.354401, 29.184174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401491, 42.038303, 29.326370>,  <29.521286, 41.848644, 29.411688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401491, 42.038303, 29.326370>,  <29.201834, 42.354401, 29.184174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401491, 42.038303, 29.326370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645994, 0.612791, 0.455169,
		-0.577535, 0.002450, 0.816363,
		0.499144, -0.790241, 0.355491,
		29.551235, 41.801231, 29.433018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148258, 42.329796, 29.902433>,  <29.201834, 42.354401, 29.184174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148258, 42.329796, 29.902433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.494936, 42.146584, 29.823389>,  <29.702942, 42.036655, 29.775963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.494936, 42.146584, 29.823389>,  <29.148258, 42.329796, 29.902433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494936, 42.146584, 29.823389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439338, 0.513234, 0.737274,
		-0.236274, -0.725808, 0.646047,
		0.866693, -0.458032, -0.197612,
		29.754944, 42.009174, 29.764105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562769, 41.895596, 30.523741>,  <29.148258, 42.329796, 29.902433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562769, 41.895596, 30.523741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780588, 42.070972, 30.237736>,  <29.911280, 42.176197, 30.066133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780588, 42.070972, 30.237736>,  <29.562769, 41.895596, 30.523741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780588, 42.070972, 30.237736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272618, 0.713679, 0.645245,
		0.793190, -0.546290, 0.269104,
		0.544545, 0.438439, -0.715011,
		29.943953, 42.202503, 30.023232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164240, 41.751514, 30.971100>,  <29.562769, 41.895596, 30.523741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164240, 41.751514, 30.971100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181999, 41.874474, 30.590881>,  <30.192656, 41.948250, 30.362751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181999, 41.874474, 30.590881>,  <30.164240, 41.751514, 30.971100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181999, 41.874474, 30.590881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982455, 0.159087, 0.097336,
		0.181140, -0.938189, -0.294941,
		0.044398, 0.307398, -0.950545,
		30.195318, 41.966694, 30.305717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591806, 41.288143, 30.497698>,  <30.164240, 41.751514, 30.971100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591806, 41.288143, 30.497698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597782, 41.678673, 30.411371>,  <30.601368, 41.912991, 30.359575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597782, 41.678673, 30.411371>,  <30.591806, 41.288143, 30.497698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597782, 41.678673, 30.411371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999882, -0.013850, 0.006552,
		0.003408, -0.215890, -0.976412,
		0.014937, 0.976319, -0.215817,
		30.602262, 41.971569, 30.346626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049011, 41.404140, 29.985771>,  <30.591806, 41.288143, 30.497698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049011, 41.404140, 29.985771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033401, 41.746410, 30.192186>,  <31.024035, 41.951771, 30.316036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033401, 41.746410, 30.192186>,  <31.049011, 41.404140, 29.985771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033401, 41.746410, 30.192186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995403, 0.078497, -0.054883,
		-0.087470, 0.511526, -0.854804,
		-0.039025, 0.855675, 0.516040,
		31.021694, 42.003113, 30.346998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459194, 41.924446, 29.727661>,  <31.049011, 41.404140, 29.985771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459194, 41.924446, 29.727661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435837, 42.009506, 30.117815>,  <31.421824, 42.060543, 30.351908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435837, 42.009506, 30.117815>,  <31.459194, 41.924446, 29.727661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435837, 42.009506, 30.117815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916615, 0.398489, -0.032002,
		-0.395484, 0.892182, -0.218184,
		-0.058393, 0.212647, 0.975383,
		31.418320, 42.073299, 30.410429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539783, 42.607468, 29.875139>,  <31.459194, 41.924446, 29.727661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539783, 42.607468, 29.875139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661196, 42.350315, 30.156441>,  <31.734043, 42.196022, 30.325222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661196, 42.350315, 30.156441>,  <31.539783, 42.607468, 29.875139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661196, 42.350315, 30.156441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946896, 0.285716, -0.147496,
		-0.106108, 0.710679, 0.695469,
		0.303529, -0.642886, 0.703255,
		31.752254, 42.157448, 30.367416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871954, 42.988384, 30.463512>,  <31.539783, 42.607468, 29.875139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871954, 42.988384, 30.463512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979206, 42.610703, 30.387003>,  <32.043556, 42.384094, 30.341097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979206, 42.610703, 30.387003>,  <31.871954, 42.988384, 30.463512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979206, 42.610703, 30.387003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935265, 0.302742, -0.183376,
		0.231052, -0.129724, 0.964254,
		0.268132, -0.944203, -0.191276,
		32.059647, 42.327442, 30.329620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322802, 43.331829, 30.176517>,  <31.871954, 42.988384, 30.463512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322802, 43.331829, 30.176517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638109, 43.507637, 30.348772>,  <31.827293, 43.613121, 30.452126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638109, 43.507637, 30.348772>,  <31.322802, 43.331829, 30.176517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638109, 43.507637, 30.348772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555818, -0.808862, -0.191858,
		0.264000, 0.390593, -0.881896,
		0.788270, 0.439523, 0.430638,
		31.874590, 43.639496, 30.477964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951782, 43.369995, 29.825224>,  <31.322802, 43.331829, 30.176517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951782, 43.369995, 29.825224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133644, 43.407413, 30.179522>,  <32.242760, 43.429867, 30.392099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133644, 43.407413, 30.179522>,  <31.951782, 43.369995, 29.825224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133644, 43.407413, 30.179522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549754, -0.811900, -0.196439,
		0.700757, 0.576252, -0.420563,
		0.454654, 0.093550, 0.885742,
		32.270039, 43.435478, 30.445244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608772, 43.532036, 29.775850>,  <31.951782, 43.369995, 29.825224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608772, 43.532036, 29.775850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575104, 43.293953, 30.095510>,  <32.554901, 43.151104, 30.287308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575104, 43.293953, 30.095510>,  <32.608772, 43.532036, 29.775850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575104, 43.293953, 30.095510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387725, -0.758360, -0.523985,
		0.917924, 0.265745, 0.294610,
		-0.084174, -0.595206, 0.799152,
		32.549850, 43.115391, 30.335257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938416, 42.877476, 29.674080>,  <32.608772, 43.532036, 29.775850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938416, 42.877476, 29.674080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717705, 42.770119, 29.989929>,  <32.585278, 42.705704, 30.179440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717705, 42.770119, 29.989929>,  <32.938416, 42.877476, 29.674080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717705, 42.770119, 29.989929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190765, -0.962318, -0.193783,
		0.811878, 0.043706, 0.582189,
		-0.551781, -0.268390, 0.789623,
		32.552170, 42.689602, 30.226816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313221, 42.472729, 30.031166>,  <32.938416, 42.877476, 29.674080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313221, 42.472729, 30.031166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930115, 42.372814, 30.088148>,  <32.700253, 42.312866, 30.122337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930115, 42.372814, 30.088148>,  <33.313221, 42.472729, 30.031166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930115, 42.372814, 30.088148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212762, -0.948846, -0.233290,
		0.193440, -0.193128, 0.961916,
		-0.957765, -0.249787, 0.142454,
		32.642784, 42.297878, 30.130884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168129, 41.835617, 30.396103>,  <33.313221, 42.472729, 30.031166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168129, 41.835617, 30.396103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860039, 41.864529, 30.142639>,  <32.675182, 41.881878, 29.990561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860039, 41.864529, 30.142639>,  <33.168129, 41.835617, 30.396103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860039, 41.864529, 30.142639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028197, -0.988726, -0.147057,
		-0.637143, -0.131135, 0.759508,
		-0.770229, 0.072281, -0.633657,
		32.628971, 41.886211, 29.952541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900021, 41.116432, 30.374384>,  <33.168129, 41.835617, 30.396103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900021, 41.116432, 30.374384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707027, 41.283997, 30.066690>,  <32.591232, 41.384537, 29.882074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707027, 41.283997, 30.066690>,  <32.900021, 41.116432, 30.374384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707027, 41.283997, 30.066690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155137, -0.905201, -0.395655,
		-0.862058, -0.071560, 0.501732,
		-0.482482, 0.418915, -0.769235,
		32.562283, 41.409672, 29.835920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170753, 40.746792, 30.246061>,  <32.900021, 41.116432, 30.374384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170753, 40.746792, 30.246061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314365, 40.924839, 29.917921>,  <32.400532, 41.031666, 29.721037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314365, 40.924839, 29.917921>,  <32.170753, 40.746792, 30.246061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314365, 40.924839, 29.917921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073505, -0.862737, -0.500282,
		-0.930428, 0.239915, -0.277027,
		0.359027, 0.445114, -0.820350,
		32.422073, 41.058372, 29.671816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684774, 40.582859, 29.708586>,  <32.170753, 40.746792, 30.246061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684774, 40.582859, 29.708586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017059, 40.683559, 29.509975>,  <32.216431, 40.743980, 29.390808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017059, 40.683559, 29.509975>,  <31.684774, 40.582859, 29.708586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017059, 40.683559, 29.509975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158010, -0.748606, -0.643911,
		-0.533806, 0.613361, -0.582098,
		0.830713, 0.251747, -0.496528,
		32.266273, 40.759083, 29.361017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521172, 40.654018, 29.057438>,  <31.684774, 40.582859, 29.708586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521172, 40.654018, 29.057438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916185, 40.594673, 29.036425>,  <32.153194, 40.559067, 29.023817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916185, 40.594673, 29.036425>,  <31.521172, 40.654018, 29.057438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916185, 40.594673, 29.036425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149564, -0.780674, -0.606778,
		0.049014, 0.607072, -0.793134,
		0.987537, -0.148364, -0.052532,
		32.212448, 40.550163, 29.020664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661119, 40.689602, 28.306782>,  <31.521172, 40.654018, 29.057438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661119, 40.689602, 28.306782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972883, 40.507389, 28.478832>,  <32.159943, 40.398060, 28.582064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972883, 40.507389, 28.478832>,  <31.661119, 40.689602, 28.306782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972883, 40.507389, 28.478832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035335, -0.653485, -0.756114,
		0.625518, 0.604521, -0.493236,
		0.779409, -0.455535, 0.430127,
		32.206707, 40.370728, 28.607870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062019, 40.628853, 27.791002>,  <31.661119, 40.689602, 28.306782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062019, 40.628853, 27.791002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204849, 40.360321, 28.050791>,  <32.290546, 40.199203, 28.206663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204849, 40.360321, 28.050791>,  <32.062019, 40.628853, 27.791002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204849, 40.360321, 28.050791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051915, -0.679972, -0.731398,
		0.932631, 0.294884, -0.207951,
		0.357079, -0.671328, 0.649472,
		32.311974, 40.158924, 28.245632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719330, 40.393768, 27.538643>,  <32.062019, 40.628853, 27.791002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719330, 40.393768, 27.538643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622253, 40.104645, 27.797455>,  <32.564007, 39.931171, 27.952742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622253, 40.104645, 27.797455>,  <32.719330, 40.393768, 27.538643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622253, 40.104645, 27.797455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299716, -0.690208, -0.658622,
		0.922643, 0.034082, 0.384147,
		-0.242694, -0.722808, 0.647030,
		32.549446, 39.887802, 27.991564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314838, 39.856056, 27.507473>,  <32.719330, 40.393768, 27.538643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314838, 39.856056, 27.507473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013165, 39.651924, 27.672770>,  <32.832161, 39.529446, 27.771948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013165, 39.651924, 27.672770>,  <33.314838, 39.856056, 27.507473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013165, 39.651924, 27.672770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155726, -0.750353, -0.642433,
		0.637928, -0.420162, 0.645377,
		-0.754187, -0.510328, 0.413241,
		32.786907, 39.498825, 27.796741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614220, 39.235687, 27.564838>,  <33.314838, 39.856056, 27.507473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614220, 39.235687, 27.564838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223114, 39.151962, 27.569904>,  <32.988449, 39.101727, 27.572945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223114, 39.151962, 27.569904>,  <33.614220, 39.235687, 27.564838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223114, 39.151962, 27.569904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157607, -0.773385, -0.614033,
		0.138322, -0.598384, 0.789179,
		-0.977767, -0.209314, 0.012667,
		32.929783, 39.089169, 27.573704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625637, 38.598690, 27.815420>,  <33.614220, 39.235687, 27.564838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625637, 38.598690, 27.815420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278172, 38.654228, 27.625202>,  <33.069691, 38.687550, 27.511072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278172, 38.654228, 27.625202>,  <33.625637, 38.598690, 27.815420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278172, 38.654228, 27.625202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166979, -0.821693, -0.544920,
		-0.466409, -0.552760, 0.690593,
		-0.868666, 0.138841, -0.475545,
		33.017570, 38.695881, 27.482538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356373, 37.996986, 27.824795>,  <33.625637, 38.598690, 27.815420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356373, 37.996986, 27.824795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170963, 38.175011, 27.518312>,  <33.059719, 38.281826, 27.334423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170963, 38.175011, 27.518312>,  <33.356373, 37.996986, 27.824795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170963, 38.175011, 27.518312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148138, -0.813617, -0.562212,
		-0.873616, -0.374100, 0.311197,
		-0.463519, 0.445057, -0.766208,
		33.031906, 38.308529, 27.288450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916660, 37.519470, 27.740198>,  <33.356373, 37.996986, 27.824795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916660, 37.519470, 27.740198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965107, 37.747395, 27.415077>,  <32.994175, 37.884148, 27.220005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965107, 37.747395, 27.415077>,  <32.916660, 37.519470, 27.740198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965107, 37.747395, 27.415077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259070, -0.808597, -0.528255,
		-0.958234, -0.146592, -0.245556,
		0.121118, 0.569809, -0.812803,
		33.001442, 37.918339, 27.171236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598270, 37.097343, 27.146809>,  <32.916660, 37.519470, 27.740198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598270, 37.097343, 27.146809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846588, 37.363316, 26.980684>,  <32.995579, 37.522900, 26.881010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846588, 37.363316, 26.980684>,  <32.598270, 37.097343, 27.146809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846588, 37.363316, 26.980684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282574, -0.683923, -0.672608,
		-0.731279, 0.300194, -0.612466,
		0.620792, 0.664931, -0.415312,
		33.032825, 37.562794, 26.856091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345760, 37.020355, 26.374252>,  <32.598270, 37.097343, 27.146809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345760, 37.020355, 26.374252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687832, 37.227654, 26.378145>,  <32.893074, 37.352032, 26.380482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687832, 37.227654, 26.378145>,  <32.345760, 37.020355, 26.374252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687832, 37.227654, 26.378145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252026, -0.399323, -0.881490,
		-0.452941, 0.756283, -0.472103,
		0.855177, 0.518245, 0.009733,
		32.944386, 37.383125, 26.381065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399990, 37.385128, 25.796576>,  <32.345760, 37.020355, 26.374252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399990, 37.385128, 25.796576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779865, 37.336926, 25.912212>,  <33.007790, 37.308002, 25.981594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779865, 37.336926, 25.912212>,  <32.399990, 37.385128, 25.796576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779865, 37.336926, 25.912212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239723, -0.314361, -0.918537,
		0.201570, 0.941624, -0.269656,
		0.949685, -0.120507, 0.289094,
		33.064770, 37.300774, 25.998941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736034, 37.624966, 25.293018>,  <32.399990, 37.385128, 25.796576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736034, 37.624966, 25.293018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014324, 37.400837, 25.472801>,  <33.181297, 37.266361, 25.580671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014324, 37.400837, 25.472801>,  <32.736034, 37.624966, 25.293018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014324, 37.400837, 25.472801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357696, -0.272368, -0.893235,
		0.622914, 0.782214, 0.010931,
		0.695724, -0.560319, 0.449456,
		33.223042, 37.232742, 25.607637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426918, 37.939278, 25.096367>,  <32.736034, 37.624966, 25.293018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426918, 37.939278, 25.096367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462658, 37.555481, 25.203249>,  <33.484100, 37.325203, 25.267378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462658, 37.555481, 25.203249>,  <33.426918, 37.939278, 25.096367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462658, 37.555481, 25.203249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454123, -0.199527, -0.868310,
		0.886448, 0.198925, 0.417898,
		0.089347, -0.959488, 0.267207,
		33.489460, 37.267635, 25.283411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029575, 37.804356, 24.900030>,  <33.426918, 37.939278, 25.096367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029575, 37.804356, 24.900030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869667, 37.438393, 24.922388>,  <33.773724, 37.218815, 24.935802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869667, 37.438393, 24.922388>,  <34.029575, 37.804356, 24.900030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869667, 37.438393, 24.922388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441746, -0.245737, -0.862829,
		0.803145, -0.320242, 0.502396,
		-0.399772, -0.914909, 0.055897,
		33.749737, 37.163921, 24.939157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613075, 37.331459, 24.919130>,  <34.029575, 37.804356, 24.900030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613075, 37.331459, 24.919130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286263, 37.150871, 24.775665>,  <34.090176, 37.042519, 24.689587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286263, 37.150871, 24.775665>,  <34.613075, 37.331459, 24.919130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286263, 37.150871, 24.775665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543885, -0.396895, -0.739367,
		0.191452, -0.799154, 0.569823,
		-0.817028, -0.451472, -0.358661,
		34.041153, 37.015430, 24.668066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958801, 36.750072, 24.574804>,  <34.613075, 37.331459, 24.919130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958801, 36.750072, 24.574804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580170, 36.749763, 24.445814>,  <34.352993, 36.749577, 24.368420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580170, 36.749763, 24.445814>,  <34.958801, 36.750072, 24.574804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580170, 36.749763, 24.445814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290179, -0.438248, -0.850726,
		-0.140668, -0.898853, 0.415060,
		-0.946577, -0.000772, -0.322476,
		34.296196, 36.749531, 24.349072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933220, 36.103325, 24.338427>,  <34.958801, 36.750072, 24.574804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933220, 36.103325, 24.338427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629742, 36.289585, 24.156197>,  <34.447655, 36.401340, 24.046860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629742, 36.289585, 24.156197>,  <34.933220, 36.103325, 24.338427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629742, 36.289585, 24.156197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286379, -0.389727, -0.875271,
		-0.585117, -0.794535, 0.162334,
		-0.758700, 0.465647, -0.455574,
		34.402130, 36.429279, 24.019524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514954, 35.563694, 24.020275>,  <34.933220, 36.103325, 24.338427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514954, 35.563694, 24.020275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450195, 35.912239, 23.835011>,  <34.411339, 36.121365, 23.723852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450195, 35.912239, 23.835011>,  <34.514954, 35.563694, 24.020275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450195, 35.912239, 23.835011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306188, -0.401832, -0.863006,
		-0.938104, -0.281533, -0.201745,
		-0.161897, 0.871361, -0.463162,
		34.401627, 36.173649, 23.696062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090149, 35.398735, 23.540642>,  <34.514954, 35.563694, 24.020275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090149, 35.398735, 23.540642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241489, 35.741825, 23.401409>,  <34.332294, 35.947678, 23.317869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241489, 35.741825, 23.401409>,  <34.090149, 35.398735, 23.540642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241489, 35.741825, 23.401409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477465, -0.502985, -0.720440,
		-0.793016, 0.106386, -0.599839,
		0.378354, 0.857723, -0.348080,
		34.354996, 35.999142, 23.296986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894108, 35.413452, 22.859751>,  <34.090149, 35.398735, 23.540642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894108, 35.413452, 22.859751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186195, 35.686607, 22.868153>,  <34.361450, 35.850502, 22.873194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186195, 35.686607, 22.868153>,  <33.894108, 35.413452, 22.859751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186195, 35.686607, 22.868153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356006, -0.354083, -0.864804,
		-0.583127, 0.638975, -0.501671,
		0.730221, 0.682888, 0.021003,
		34.405262, 35.891476, 22.874454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890263, 35.801662, 22.230288>,  <33.894108, 35.413452, 22.859751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890263, 35.801662, 22.230288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267323, 35.826000, 22.361565>,  <34.493557, 35.840603, 22.440331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267323, 35.826000, 22.361565>,  <33.890263, 35.801662, 22.230288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267323, 35.826000, 22.361565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333640, -0.200599, -0.921110,
		0.009795, 0.977782, -0.209393,
		0.942650, 0.060840, 0.328192,
		34.550117, 35.844254, 22.460022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175529, 35.969868, 21.691481>,  <33.890263, 35.801662, 22.230288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175529, 35.969868, 21.691481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506985, 35.865982, 21.889837>,  <34.705856, 35.803650, 22.008852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506985, 35.865982, 21.889837>,  <34.175529, 35.969868, 21.691481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506985, 35.865982, 21.889837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502540, -0.045125, -0.863376,
		0.246608, 0.964631, 0.093124,
		0.828636, -0.259714, 0.495894,
		34.755577, 35.788067, 22.038605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749413, 36.298691, 21.285721>,  <34.175529, 35.969868, 21.691481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749413, 36.298691, 21.285721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923901, 36.019630, 21.513052>,  <35.028595, 35.852196, 21.649450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923901, 36.019630, 21.513052>,  <34.749413, 36.298691, 21.285721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923901, 36.019630, 21.513052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734218, -0.089183, -0.673031,
		0.520223, 0.710869, 0.473321,
		0.436224, -0.697647, 0.568328,
		35.054768, 35.810337, 21.683550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557217, 36.439453, 21.339432>,  <34.749413, 36.298691, 21.285721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557217, 36.439453, 21.339432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468487, 36.053738, 21.397327>,  <35.415249, 35.822308, 21.432066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468487, 36.053738, 21.397327>,  <35.557217, 36.439453, 21.339432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468487, 36.053738, 21.397327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710547, -0.261506, -0.653251,
		0.667771, -0.042059, 0.743178,
		-0.221821, -0.964285, 0.144741,
		35.401939, 35.764454, 21.440750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139503, 36.223190, 21.228125>,  <35.557217, 36.439453, 21.339432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139503, 36.223190, 21.228125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902313, 35.903839, 21.186224>,  <35.759998, 35.712231, 21.161083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902313, 35.903839, 21.186224>,  <36.139503, 36.223190, 21.228125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902313, 35.903839, 21.186224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656603, -0.404123, -0.636835,
		0.466101, -0.446409, 0.763852,
		-0.592978, -0.798376, -0.104752,
		35.724419, 35.664326, 21.154799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582066, 35.568886, 21.130180>,  <36.139503, 36.223190, 21.228125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582066, 35.568886, 21.130180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223656, 35.480934, 20.975883>,  <36.008610, 35.428162, 20.883307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223656, 35.480934, 20.975883>,  <36.582066, 35.568886, 21.130180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223656, 35.480934, 20.975883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443011, -0.500976, -0.743481,
		-0.029768, -0.837063, 0.546296,
		-0.896022, -0.219883, -0.385741,
		35.954849, 35.414970, 20.860161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640491, 34.871342, 21.009604>,  <36.582066, 35.568886, 21.130180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640491, 34.871342, 21.009604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351807, 35.011501, 20.770823>,  <36.178596, 35.095596, 20.627554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351807, 35.011501, 20.770823>,  <36.640491, 34.871342, 21.009604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351807, 35.011501, 20.770823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475416, -0.375891, -0.795415,
		-0.503102, -0.857861, 0.104700,
		-0.721711, 0.350399, -0.596953,
		36.135292, 35.116619, 20.591736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437428, 34.280750, 20.514072>,  <36.640491, 34.871342, 21.009604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437428, 34.280750, 20.514072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312878, 34.629620, 20.363152>,  <36.238148, 34.838940, 20.272598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312878, 34.629620, 20.363152>,  <36.437428, 34.280750, 20.514072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312878, 34.629620, 20.363152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406030, -0.236868, -0.882629,
		-0.859176, -0.428027, -0.280373,
		-0.311378, 0.872174, -0.377303,
		36.219463, 34.891273, 20.249960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094940, 34.082859, 19.858339>,  <36.437428, 34.280750, 20.514072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094940, 34.082859, 19.858339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199982, 34.467487, 19.826292>,  <36.263008, 34.698265, 19.807064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199982, 34.467487, 19.826292>,  <36.094940, 34.082859, 19.858339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199982, 34.467487, 19.826292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504434, -0.207594, -0.838123,
		-0.822548, 0.179679, -0.539565,
		0.262604, 0.961572, -0.080120,
		36.278763, 34.755959, 19.802256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120472, 34.186825, 19.175812>,  <36.094940, 34.082859, 19.858339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120472, 34.186825, 19.175812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308834, 34.507626, 19.322798>,  <36.421852, 34.700108, 19.410990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308834, 34.507626, 19.322798>,  <36.120472, 34.186825, 19.175812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308834, 34.507626, 19.322798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638499, -0.022425, -0.769296,
		-0.608739, 0.596896, -0.522640,
		0.470910, 0.802005, 0.367466,
		36.450108, 34.748226, 19.433037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003448, 34.576954, 18.714066>,  <36.120472, 34.186825, 19.175812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003448, 34.576954, 18.714066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339977, 34.710560, 18.884058>,  <36.541897, 34.790722, 18.986053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339977, 34.710560, 18.884058>,  <36.003448, 34.576954, 18.714066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339977, 34.710560, 18.884058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476761, -0.088083, -0.874608,
		-0.254699, 0.938443, -0.233352,
		0.841324, 0.334015, 0.424979,
		36.592373, 34.810764, 19.011551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390182, 34.838268, 18.191662>,  <36.003448, 34.576954, 18.714066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390182, 34.838268, 18.191662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690212, 34.850811, 18.455908>,  <36.870228, 34.858337, 18.614456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690212, 34.850811, 18.455908>,  <36.390182, 34.838268, 18.191662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690212, 34.850811, 18.455908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661337, -0.027510, -0.749584,
		-0.005334, 0.999129, -0.041374,
		0.750070, 0.031360, 0.660615,
		36.915234, 34.860218, 18.654093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868511, 35.507236, 18.106524>,  <36.390182, 34.838268, 18.191662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868511, 35.507236, 18.106524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051422, 35.192650, 18.272594>,  <37.161167, 35.003899, 18.372238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051422, 35.192650, 18.272594>,  <36.868511, 35.507236, 18.106524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051422, 35.192650, 18.272594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703438, 0.034228, -0.709932,
		0.544124, 0.616689, 0.568879,
		0.457279, -0.786462, 0.415179,
		37.188606, 34.956711, 18.397148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574539, 35.627224, 18.171646>,  <36.868511, 35.507236, 18.106524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574539, 35.627224, 18.171646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565670, 35.227325, 18.173426>,  <37.560349, 34.987389, 18.174494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565670, 35.227325, 18.173426>,  <37.574539, 35.627224, 18.171646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565670, 35.227325, 18.173426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800550, -0.020424, -0.598918,
		0.598856, -0.009719, 0.800798,
		-0.022177, -0.999744, 0.004451,
		37.559017, 34.927402, 18.174761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256657, 35.412090, 18.386238>,  <37.574539, 35.627224, 18.171646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256657, 35.412090, 18.386238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098003, 35.118362, 18.165890>,  <38.002811, 34.942127, 18.033680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098003, 35.118362, 18.165890>,  <38.256657, 35.412090, 18.386238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098003, 35.118362, 18.165890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829958, -0.030445, -0.556995,
		0.392241, -0.678121, 0.621530,
		-0.396632, -0.734320, -0.550870,
		37.979015, 34.898067, 18.000629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834541, 35.057129, 18.280972>,  <38.256657, 35.412090, 18.386238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834541, 35.057129, 18.280972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562027, 34.930271, 18.017073>,  <38.398518, 34.854156, 17.858734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562027, 34.930271, 18.017073>,  <38.834541, 35.057129, 18.280972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562027, 34.930271, 18.017073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695832, -0.000725, -0.718204,
		0.227293, -0.948378, 0.221171,
		-0.681290, -0.317141, -0.659747,
		38.357639, 34.835129, 17.819149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105160, 34.325207, 18.031183>,  <38.834541, 35.057129, 18.280972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105160, 34.325207, 18.031183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847404, 34.458168, 17.755713>,  <38.692753, 34.537945, 17.590431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847404, 34.458168, 17.755713>,  <39.105160, 34.325207, 18.031183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847404, 34.458168, 17.755713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645278, -0.246897, -0.722950,
		-0.410341, -0.910248, -0.055393,
		-0.644388, 0.332400, -0.688676,
		38.654087, 34.557888, 17.549110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098049, 33.854485, 17.520098>,  <39.105160, 34.325207, 18.031183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098049, 33.854485, 17.520098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987003, 34.210617, 17.375738>,  <38.920376, 34.424297, 17.289122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987003, 34.210617, 17.375738>,  <39.098049, 33.854485, 17.520098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987003, 34.210617, 17.375738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724211, -0.052888, -0.687548,
		-0.631230, -0.452239, -0.630102,
		-0.277611, 0.890327, -0.360901,
		38.903721, 34.477715, 17.267467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137608, 33.740391, 16.846039>,  <39.098049, 33.854485, 17.520098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137608, 33.740391, 16.846039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120834, 34.139935, 16.855091>,  <39.110771, 34.379662, 16.860521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120834, 34.139935, 16.855091>,  <39.137608, 33.740391, 16.846039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120834, 34.139935, 16.855091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661455, 0.044729, -0.748650,
		-0.748812, -0.016424, -0.662579,
		-0.041932, 0.998864, 0.022630,
		39.108253, 34.439594, 16.861879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076576, 33.965210, 16.147915>,  <39.137608, 33.740391, 16.846039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076576, 33.965210, 16.147915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207985, 34.285439, 16.348377>,  <39.286831, 34.477577, 16.468655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207985, 34.285439, 16.348377>,  <39.076576, 33.965210, 16.147915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207985, 34.285439, 16.348377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621966, 0.215948, -0.752678,
		-0.710797, 0.558974, -0.426985,
		0.328521, 0.800572, 0.501158,
		39.306541, 34.525612, 16.498724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964657, 34.465118, 15.728633>,  <39.076576, 33.965210, 16.147915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964657, 34.465118, 15.728633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259701, 34.593235, 15.966405>,  <39.436726, 34.670105, 16.109068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259701, 34.593235, 15.966405>,  <38.964657, 34.465118, 15.728633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259701, 34.593235, 15.966405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561526, 0.197945, -0.803434,
		-0.374998, 0.926408, -0.033846,
		0.737608, 0.320291, 0.594431,
		39.480984, 34.689323, 16.144733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129093, 35.195335, 15.568587>,  <38.964657, 34.465118, 15.728633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129093, 35.195335, 15.568587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348316, 34.861099, 15.553491>,  <39.479851, 34.660557, 15.544433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348316, 34.861099, 15.553491>,  <39.129093, 35.195335, 15.568587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348316, 34.861099, 15.553491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407393, 0.306071, -0.860437,
		0.730523, 0.456194, 0.508157,
		0.548058, -0.835588, -0.037742,
		39.512733, 34.610424, 15.542169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381634, 35.749863, 16.043940>,  <39.129093, 35.195335, 15.568587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381634, 35.749863, 16.043940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499287, 36.130219, 16.005363>,  <39.569878, 36.358433, 15.982219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499287, 36.130219, 16.005363>,  <39.381634, 35.749863, 16.043940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499287, 36.130219, 16.005363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099651, -0.130862, -0.986380,
		-0.950556, 0.280514, -0.133247,
		0.294130, 0.950888, -0.096438,
		39.587524, 36.415485, 15.976432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248714, 35.962921, 15.342160>,  <39.381634, 35.749863, 16.043940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248714, 35.962921, 15.342160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494049, 36.260937, 15.447029>,  <39.641251, 36.439747, 15.509951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494049, 36.260937, 15.447029>,  <39.248714, 35.962921, 15.342160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494049, 36.260937, 15.447029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234333, 0.145338, -0.961231,
		-0.754257, 0.650996, -0.085445,
		0.613339, 0.745038, 0.262171,
		39.678051, 36.484447, 15.525681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228062, 36.403034, 14.718163>,  <39.248714, 35.962921, 15.342160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228062, 36.403034, 14.718163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564495, 36.488361, 14.916990>,  <39.766354, 36.539558, 15.036286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564495, 36.488361, 14.916990>,  <39.228062, 36.403034, 14.718163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564495, 36.488361, 14.916990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455200, 0.217258, -0.863477,
		-0.292185, 0.952521, 0.085630,
		0.841083, 0.213316, 0.497067,
		39.816818, 36.552357, 15.066111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798897, 36.381756, 14.214989>,  <39.228062, 36.403034, 14.718163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798897, 36.381756, 14.214989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874710, 36.757366, 14.329745>,  <39.920200, 36.982731, 14.398600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874710, 36.757366, 14.329745>,  <39.798897, 36.381756, 14.214989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874710, 36.757366, 14.329745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081300, -0.306194, 0.948491,
		0.978502, -0.156450, -0.134378,
		0.189537, 0.939025, 0.286892,
		39.931572, 37.039074, 14.415812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351414, 36.374371, 14.676077>,  <39.798897, 36.381756, 14.214989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351414, 36.374371, 14.676077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161495, 36.720470, 14.740464>,  <40.047543, 36.928131, 14.779097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161495, 36.720470, 14.740464>,  <40.351414, 36.374371, 14.676077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161495, 36.720470, 14.740464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018318, -0.192576, 0.981111,
		0.879904, 0.462881, 0.107284,
		-0.474798, 0.865249, 0.160969,
		40.019054, 36.980045, 14.788755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683781, 36.829838, 15.184957>,  <40.351414, 36.374371, 14.676077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683781, 36.829838, 15.184957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289593, 36.897583, 15.189997>,  <40.053078, 36.938229, 15.193021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289593, 36.897583, 15.189997>,  <40.683781, 36.829838, 15.184957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289593, 36.897583, 15.189997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007275, -0.116228, 0.993196,
		0.169676, 0.978676, 0.115772,
		-0.985473, 0.169364, 0.012601,
		39.993950, 36.948391, 15.193777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435219, 37.475891, 15.670467>,  <40.683781, 36.829838, 15.184957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435219, 37.475891, 15.670467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172333, 37.176014, 15.639400>,  <40.014603, 36.996090, 15.620759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172333, 37.176014, 15.639400>,  <40.435219, 37.475891, 15.670467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172333, 37.176014, 15.639400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013060, -0.091709, 0.995700,
		-0.753590, 0.655404, 0.050482,
		-0.657215, -0.749690, -0.077670,
		39.975166, 36.951107, 15.616098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880814, 37.629532, 15.850890>,  <40.435219, 37.475891, 15.670467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880814, 37.629532, 15.850890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819050, 37.236553, 15.892756>,  <39.781990, 37.000767, 15.917876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819050, 37.236553, 15.892756>,  <39.880814, 37.629532, 15.850890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819050, 37.236553, 15.892756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232340, 0.139072, 0.962641,
		-0.960300, 0.124322, -0.249736,
		-0.154409, -0.982448, 0.104666,
		39.772728, 36.941818, 15.924156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091549, 37.588200, 16.004692>,  <39.880814, 37.629532, 15.850890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091549, 37.588200, 16.004692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324844, 37.294708, 16.144104>,  <39.464821, 37.118614, 16.227751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324844, 37.294708, 16.144104>,  <39.091549, 37.588200, 16.004692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324844, 37.294708, 16.144104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365299, 0.146315, 0.919320,
		-0.725527, -0.663501, -0.182693,
		0.583239, -0.733729, 0.348532,
		39.499817, 37.074589, 16.248663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904232, 37.672043, 16.605766>,  <39.091549, 37.588200, 16.004692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904232, 37.672043, 16.605766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164688, 37.375237, 16.669538>,  <39.320961, 37.197151, 16.707802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164688, 37.375237, 16.669538>,  <38.904232, 37.672043, 16.605766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164688, 37.375237, 16.669538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102985, 0.121741, 0.987205,
		-0.751935, -0.659231, 0.002854,
		0.651144, -0.742020, 0.159432,
		39.360031, 37.152630, 16.717369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604584, 37.202206, 17.017841>,  <38.904232, 37.672043, 16.605766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604584, 37.202206, 17.017841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998619, 37.156113, 17.068958>,  <39.235039, 37.128456, 17.099628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998619, 37.156113, 17.068958>,  <38.604584, 37.202206, 17.017841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998619, 37.156113, 17.068958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130481, -0.016073, 0.991321,
		-0.112179, -0.993208, -0.030869,
		0.985084, -0.115233, 0.127791,
		39.294144, 37.121544, 17.107296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648106, 36.741325, 17.586418>,  <38.604584, 37.202206, 17.017841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648106, 36.741325, 17.586418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014122, 36.901821, 17.569923>,  <39.233734, 36.998119, 17.560026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014122, 36.901821, 17.569923>,  <38.648106, 36.741325, 17.586418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014122, 36.901821, 17.569923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019604, 0.146354, 0.989038,
		0.402878, -0.904205, 0.141786,
		0.915044, 0.401241, -0.041236,
		39.288635, 37.022194, 17.557552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016819, 36.494404, 18.169027>,  <38.648106, 36.741325, 17.586418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016819, 36.494404, 18.169027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279526, 36.779751, 18.071247>,  <39.437149, 36.950958, 18.012579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279526, 36.779751, 18.071247>,  <39.016819, 36.494404, 18.169027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279526, 36.779751, 18.071247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110712, 0.229437, 0.967007,
		0.745919, -0.662165, 0.071709,
		0.656771, 0.713370, -0.244451,
		39.476559, 36.993763, 17.997911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649326, 36.315731, 18.508423>,  <39.016819, 36.494404, 18.169027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649326, 36.315731, 18.508423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668003, 36.710030, 18.443766>,  <39.679211, 36.946609, 18.404970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668003, 36.710030, 18.443766>,  <39.649326, 36.315731, 18.508423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668003, 36.710030, 18.443766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336220, 0.136870, 0.931785,
		0.940625, -0.097856, -0.325035,
		0.046693, 0.985744, -0.161644,
		39.682011, 37.005753, 18.395273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279049, 36.602787, 18.562550>,  <39.649326, 36.315731, 18.508423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279049, 36.602787, 18.562550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025951, 36.897331, 18.658388>,  <39.874092, 37.074059, 18.715891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025951, 36.897331, 18.658388>,  <40.279049, 36.602787, 18.562550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025951, 36.897331, 18.658388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506602, 0.159630, 0.847273,
		0.585654, 0.657486, -0.474048,
		-0.632743, 0.736363, 0.239596,
		39.836128, 37.118240, 18.730267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586552, 36.912064, 19.122515>,  <40.279049, 36.602787, 18.562550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586552, 36.912064, 19.122515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253052, 37.132450, 19.108131>,  <40.052952, 37.264683, 19.099501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253052, 37.132450, 19.108131>,  <40.586552, 36.912064, 19.122515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253052, 37.132450, 19.108131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256268, 0.443837, 0.858682,
		0.489068, 0.706711, -0.511245,
		-0.833750, 0.550970, -0.035959,
		40.002926, 37.297741, 19.097343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742378, 37.656189, 19.256161>,  <40.586552, 36.912064, 19.122515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742378, 37.656189, 19.256161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355801, 37.611370, 19.348621>,  <40.123856, 37.584476, 19.404097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355801, 37.611370, 19.348621>,  <40.742378, 37.656189, 19.256161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355801, 37.611370, 19.348621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188343, 0.302814, 0.934254,
		-0.174678, 0.946440, -0.271549,
		-0.966444, -0.112049, 0.231150,
		40.065868, 37.577755, 19.417967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484894, 38.202740, 19.713383>,  <40.742378, 37.656189, 19.256161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484894, 38.202740, 19.713383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209930, 37.922665, 19.790548>,  <40.044952, 37.754620, 19.836847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209930, 37.922665, 19.790548>,  <40.484894, 38.202740, 19.713383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209930, 37.922665, 19.790548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048798, 0.220494, 0.974167,
		-0.724631, 0.679063, -0.117402,
		-0.687407, -0.700183, 0.192914,
		40.003708, 37.712608, 19.848423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106773, 38.462761, 20.297178>,  <40.484894, 38.202740, 19.713383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106773, 38.462761, 20.297178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006912, 38.075459, 20.292301>,  <39.946995, 37.843075, 20.289375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006912, 38.075459, 20.292301>,  <40.106773, 38.462761, 20.297178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006912, 38.075459, 20.292301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108029, 0.015338, 0.994030,
		-0.962291, 0.249480, -0.108429,
		-0.249653, -0.968259, -0.012191,
		39.932014, 37.784981, 20.288645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476082, 38.408512, 20.712360>,  <40.106773, 38.462761, 20.297178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476082, 38.408512, 20.712360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609180, 38.031807, 20.692896>,  <39.689041, 37.805786, 20.681217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609180, 38.031807, 20.692896>,  <39.476082, 38.408512, 20.712360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609180, 38.031807, 20.692896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242358, -0.135271, 0.960710,
		-0.911341, -0.307880, -0.273254,
		0.332747, -0.941759, -0.048661,
		39.709003, 37.749279, 20.678297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918644, 37.999901, 20.873674>,  <39.476082, 38.408512, 20.712360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918644, 37.999901, 20.873674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241188, 37.774029, 20.944008>,  <39.434715, 37.638504, 20.986208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241188, 37.774029, 20.944008>,  <38.918644, 37.999901, 20.873674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241188, 37.774029, 20.944008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258763, -0.069513, 0.963436,
		-0.531815, -0.822374, -0.202172,
		0.806359, -0.564685, 0.175832,
		39.483097, 37.604622, 20.996758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588943, 37.448895, 21.313700>,  <38.918644, 37.999901, 20.873674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588943, 37.448895, 21.313700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985046, 37.457684, 21.368690>,  <39.222710, 37.462955, 21.401686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985046, 37.457684, 21.368690>,  <38.588943, 37.448895, 21.313700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985046, 37.457684, 21.368690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131409, -0.178673, 0.975094,
		0.045986, -0.983663, -0.174046,
		0.990261, 0.021970, 0.137479,
		39.282124, 37.464275, 21.409933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669930, 36.917053, 21.621246>,  <38.588943, 37.448895, 21.313700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669930, 36.917053, 21.621246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994949, 37.138214, 21.695072>,  <39.189960, 37.270908, 21.739368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994949, 37.138214, 21.695072>,  <38.669930, 36.917053, 21.621246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994949, 37.138214, 21.695072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065557, -0.227946, 0.971464,
		0.579193, -0.801463, -0.148972,
		0.812550, 0.552900, 0.184566,
		39.238716, 37.304085, 21.750443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183552, 36.505337, 22.054920>,  <38.669930, 36.917053, 21.621246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183552, 36.505337, 22.054920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233639, 36.900509, 22.091393>,  <39.263691, 37.137611, 22.113276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233639, 36.900509, 22.091393>,  <39.183552, 36.505337, 22.054920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233639, 36.900509, 22.091393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210423, -0.063369, 0.975554,
		0.969557, -0.141347, 0.199948,
		0.125221, 0.987930, 0.091183,
		39.271206, 37.196888, 22.118748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593788, 36.632652, 22.729635>,  <39.183552, 36.505337, 22.054920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593788, 36.632652, 22.729635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414097, 36.977962, 22.637587>,  <39.306282, 37.185146, 22.582357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414097, 36.977962, 22.637587>,  <39.593788, 36.632652, 22.729635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414097, 36.977962, 22.637587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371565, 0.053715, 0.926852,
		0.812486, 0.501873, 0.296631,
		-0.449228, 0.863272, -0.230122,
		39.279327, 37.236942, 22.568550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603935, 37.131561, 23.316759>,  <39.593788, 36.632652, 22.729635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603935, 37.131561, 23.316759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305443, 37.287457, 23.100893>,  <39.126347, 37.380993, 22.971373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305443, 37.287457, 23.100893>,  <39.603935, 37.131561, 23.316759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305443, 37.287457, 23.100893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518586, 0.167944, 0.838370,
		0.417381, 0.905481, 0.076789,
		-0.746232, 0.389742, -0.539666,
		39.081573, 37.404381, 22.938993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395195, 37.647568, 23.697962>,  <39.603935, 37.131561, 23.316759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395195, 37.647568, 23.697962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093536, 37.643791, 23.435307>,  <38.912540, 37.641525, 23.277714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093536, 37.643791, 23.435307>,  <39.395195, 37.647568, 23.697962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093536, 37.643791, 23.435307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616714, 0.353794, 0.703203,
		0.225675, 0.935276, -0.272636,
		-0.754145, -0.009443, -0.656640,
		38.867294, 37.640957, 23.238314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041336, 38.359737, 23.690546>,  <39.395195, 37.647568, 23.697962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041336, 38.359737, 23.690546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773243, 38.103622, 23.540442>,  <38.612389, 37.949951, 23.450378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773243, 38.103622, 23.540442>,  <39.041336, 38.359737, 23.690546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773243, 38.103622, 23.540442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683980, 0.336671, 0.647166,
		-0.288036, 0.690420, -0.663593,
		-0.670229, -0.640291, -0.375260,
		38.572174, 37.911533, 23.427864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356293, 38.777306, 23.597780>,  <39.041336, 38.359737, 23.690546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356293, 38.777306, 23.597780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249390, 38.391869, 23.601175>,  <38.185249, 38.160606, 23.603212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249390, 38.391869, 23.601175>,  <38.356293, 38.777306, 23.597780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249390, 38.391869, 23.601175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743003, 0.211668, 0.634935,
		-0.613612, 0.163386, -0.772519,
		-0.267257, -0.963588, 0.008486,
		38.169212, 38.102791, 23.603722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659370, 38.689476, 23.434343>,  <38.356293, 38.777306, 23.597780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659370, 38.689476, 23.434343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728905, 38.353310, 23.639668>,  <37.770626, 38.151611, 23.762861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728905, 38.353310, 23.639668>,  <37.659370, 38.689476, 23.434343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728905, 38.353310, 23.639668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819099, 0.165963, 0.549119,
		-0.546677, -0.515911, -0.659530,
		0.173839, -0.840412, 0.513311,
		37.781055, 38.101185, 23.793661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050846, 38.265270, 23.417480>,  <37.659370, 38.689476, 23.434343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050846, 38.265270, 23.417480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257477, 38.142780, 23.737326>,  <37.381454, 38.069286, 23.929232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257477, 38.142780, 23.737326>,  <37.050846, 38.265270, 23.417480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257477, 38.142780, 23.737326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819494, 0.093832, 0.565353,
		-0.248155, -0.947323, -0.202479,
		0.516573, -0.306225, 0.799611,
		37.412449, 38.050915, 23.977209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512283, 38.035736, 23.853634>,  <37.050846, 38.265270, 23.417480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512283, 38.035736, 23.853634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794407, 37.989216, 24.133350>,  <36.963680, 37.961304, 24.301180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794407, 37.989216, 24.133350>,  <36.512283, 38.035736, 23.853634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794407, 37.989216, 24.133350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672603, 0.201808, 0.711954,
		-0.223924, -0.972495, 0.064113,
		0.705311, -0.116301, 0.699293,
		37.006001, 37.954327, 24.343138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194149, 37.721104, 24.372139>,  <36.512283, 38.035736, 23.853634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194149, 37.721104, 24.372139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512535, 37.887169, 24.548355>,  <36.703568, 37.986809, 24.654085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512535, 37.887169, 24.548355>,  <36.194149, 37.721104, 24.372139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512535, 37.887169, 24.548355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601916, 0.465490, 0.648858,
		0.064314, -0.781638, 0.620408,
		0.795965, 0.415164, 0.440543,
		36.751324, 38.011719, 24.680517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990067, 37.723686, 24.993526>,  <36.194149, 37.721104, 24.372139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990067, 37.723686, 24.993526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281284, 37.996075, 24.961969>,  <36.456017, 38.159508, 24.943035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281284, 37.996075, 24.961969>,  <35.990067, 37.723686, 24.993526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281284, 37.996075, 24.961969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586730, 0.678494, 0.442035,
		0.354541, -0.275534, 0.893522,
		0.728044, 0.680975, -0.078890,
		36.499699, 38.200367, 24.938303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157352, 38.038738, 25.737379>,  <35.990067, 37.723686, 24.993526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157352, 38.038738, 25.737379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297604, 38.332722, 25.505207>,  <36.381756, 38.509109, 25.365904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297604, 38.332722, 25.505207>,  <36.157352, 38.038738, 25.737379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297604, 38.332722, 25.505207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500739, 0.670871, 0.546985,
		0.791405, 0.098857, 0.603246,
		0.350627, 0.734955, -0.580432,
		36.402794, 38.553207, 25.331078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555607, 38.491367, 26.122911>,  <36.157352, 38.038738, 25.737379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555607, 38.491367, 26.122911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459141, 38.736000, 25.821499>,  <36.401260, 38.882778, 25.640652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459141, 38.736000, 25.821499>,  <36.555607, 38.491367, 26.122911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459141, 38.736000, 25.821499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095932, 0.757622, 0.645605,
		0.965731, 0.227985, -0.124042,
		-0.241165, 0.611581, -0.753530,
		36.386791, 38.919476, 25.595440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027874, 39.132092, 26.161234>,  <36.555607, 38.491367, 26.122911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027874, 39.132092, 26.161234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714977, 39.257206, 25.945730>,  <36.527241, 39.332275, 25.816427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714977, 39.257206, 25.945730>,  <37.027874, 39.132092, 26.161234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714977, 39.257206, 25.945730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112122, 0.780006, 0.615645,
		0.612804, 0.541989, -0.575082,
		-0.782241, 0.312791, -0.538759,
		36.480305, 39.351044, 25.784101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026375, 39.889790, 26.204050>,  <37.027874, 39.132092, 26.161234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026375, 39.889790, 26.204050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658676, 39.791672, 26.080879>,  <36.438057, 39.732800, 26.006977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658676, 39.791672, 26.080879>,  <37.026375, 39.889790, 26.204050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658676, 39.791672, 26.080879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380198, 0.756125, 0.532657,
		0.102169, 0.606715, -0.788326,
		-0.919245, -0.245299, -0.307925,
		36.382904, 39.718082, 25.988503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654865, 40.554741, 25.892235>,  <37.026375, 39.889790, 26.204050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654865, 40.554741, 25.892235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356724, 40.304974, 25.985661>,  <36.177837, 40.155113, 26.041716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356724, 40.304974, 25.985661>,  <36.654865, 40.554741, 25.892235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356724, 40.304974, 25.985661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468688, 0.739949, 0.482502,
		-0.474108, 0.250166, -0.844180,
		-0.745355, -0.624414, 0.233566,
		36.133118, 40.117649, 26.055731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126060, 40.957314, 25.704496>,  <36.654865, 40.554741, 25.892235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126060, 40.957314, 25.704496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987885, 40.682915, 25.960648>,  <35.904980, 40.518276, 26.114338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987885, 40.682915, 25.960648>,  <36.126060, 40.957314, 25.704496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987885, 40.682915, 25.960648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453981, 0.719378, 0.525734,
		-0.821324, -0.109110, -0.559930,
		-0.345438, -0.685996, 0.640377,
		35.884254, 40.477116, 26.152761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443638, 41.173435, 25.741093>,  <36.126060, 40.957314, 25.704496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443638, 41.173435, 25.741093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520573, 40.938564, 26.055603>,  <35.566734, 40.797642, 26.244308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520573, 40.938564, 26.055603>,  <35.443638, 41.173435, 25.741093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520573, 40.938564, 26.055603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409829, 0.679955, 0.608031,
		-0.891654, -0.439185, -0.109863,
		0.192336, -0.587179, 0.786275,
		35.578274, 40.762409, 26.291485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856720, 41.190193, 26.154686>,  <35.443638, 41.173435, 25.741093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856720, 41.190193, 26.154686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124222, 41.055790, 26.419975>,  <35.284721, 40.975147, 26.579149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124222, 41.055790, 26.419975>,  <34.856720, 41.190193, 26.154686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124222, 41.055790, 26.419975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295291, 0.698634, 0.651701,
		-0.682330, -0.631671, 0.367991,
		0.668752, -0.336011, 0.663226,
		35.324848, 40.954987, 26.618942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403625, 41.082214, 26.666672>,  <34.856720, 41.190193, 26.154686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403625, 41.082214, 26.666672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779793, 41.072933, 26.802366>,  <35.005493, 41.067364, 26.883783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779793, 41.072933, 26.802366>,  <34.403625, 41.082214, 26.666672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779793, 41.072933, 26.802366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272147, 0.546753, 0.791832,
		-0.203851, -0.836973, 0.507860,
		0.940415, -0.023203, 0.339236,
		35.061916, 41.065971, 26.904137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365253, 40.900539, 27.394197>,  <34.403625, 41.082214, 26.666672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365253, 40.900539, 27.394197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709618, 41.095623, 27.336269>,  <34.916237, 41.212673, 27.301512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709618, 41.095623, 27.336269>,  <34.365253, 40.900539, 27.394197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709618, 41.095623, 27.336269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105294, 0.449299, 0.887155,
		0.497743, -0.748511, 0.438159,
		0.860910, 0.487711, -0.144821,
		34.967892, 41.241936, 27.292824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580566, 40.970135, 28.138012>,  <34.365253, 40.900539, 27.394197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580566, 40.970135, 28.138012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776398, 41.222797, 27.897570>,  <34.893898, 41.374393, 27.753305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776398, 41.222797, 27.897570>,  <34.580566, 40.970135, 28.138012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776398, 41.222797, 27.897570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043999, 0.706390, 0.706453,
		0.870847, -0.319418, 0.373627,
		0.489580, 0.631652, -0.601104,
		34.923271, 41.412292, 27.717239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081795, 41.235313, 28.625710>,  <34.580566, 40.970135, 28.138012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081795, 41.235313, 28.625710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016384, 41.484848, 28.320007>,  <34.977139, 41.634567, 28.136585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016384, 41.484848, 28.320007>,  <35.081795, 41.235313, 28.625710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016384, 41.484848, 28.320007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262830, 0.719138, 0.643243,
		0.950883, 0.306058, 0.046364,
		-0.163527, 0.623835, -0.764257,
		34.967327, 41.671997, 28.090731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499203, 41.919437, 28.896429>,  <35.081795, 41.235313, 28.625710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499203, 41.919437, 28.896429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206623, 42.006214, 28.637842>,  <35.031075, 42.058281, 28.482691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206623, 42.006214, 28.637842>,  <35.499203, 41.919437, 28.896429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206623, 42.006214, 28.637842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344240, 0.700893, 0.624698,
		0.588625, 0.679475, -0.437989,
		-0.731450, 0.216939, -0.646466,
		34.987186, 42.071297, 28.443903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125599, 41.381752, 28.814587>,  <35.499203, 41.919437, 28.896429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125599, 41.381752, 28.814587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349678, 41.374634, 29.145855>,  <36.484127, 41.370361, 29.344616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349678, 41.374634, 29.145855>,  <36.125599, 41.381752, 28.814587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349678, 41.374634, 29.145855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659171, -0.595902, -0.458688,
		0.501670, 0.802860, -0.322090,
		0.560197, -0.017798, 0.828168,
		36.517738, 41.369293, 29.394306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758526, 41.470135, 28.532520>,  <36.125599, 41.381752, 28.814587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758526, 41.470135, 28.532520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809830, 41.315052, 28.897648>,  <36.840611, 41.222004, 29.116724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809830, 41.315052, 28.897648>,  <36.758526, 41.470135, 28.532520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809830, 41.315052, 28.897648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651761, -0.660793, -0.372237,
		0.747501, 0.642681, 0.167938,
		0.128257, -0.387703, 0.912818,
		36.848309, 41.198742, 29.171494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497177, 41.618416, 28.681486>,  <36.758526, 41.470135, 28.532520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497177, 41.618416, 28.681486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374794, 41.320240, 28.918371>,  <37.301365, 41.141335, 29.060503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374794, 41.320240, 28.918371>,  <37.497177, 41.618416, 28.681486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374794, 41.320240, 28.918371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760762, -0.565412, -0.318670,
		0.572392, 0.353034, 0.740090,
		-0.305955, -0.745437, 0.592213,
		37.283009, 41.096607, 29.096035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070572, 41.430901, 29.099710>,  <37.497177, 41.618416, 28.681486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070572, 41.430901, 29.099710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821651, 41.118649, 29.122883>,  <37.672298, 40.931297, 29.136786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821651, 41.118649, 29.122883>,  <38.070572, 41.430901, 29.099710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821651, 41.118649, 29.122883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712519, -0.595542, -0.371007,
		0.324119, -0.189603, 0.926821,
		-0.622305, -0.780628, 0.057930,
		37.634960, 40.884460, 29.140263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526028, 40.860710, 29.358242>,  <38.070572, 41.430901, 29.099710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526028, 40.860710, 29.358242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205971, 40.688515, 29.191168>,  <38.013939, 40.585197, 29.090923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205971, 40.688515, 29.191168>,  <38.526028, 40.860710, 29.358242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205971, 40.688515, 29.191168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571688, -0.758071, -0.313850,
		-0.181525, -0.489908, 0.852666,
		-0.800139, -0.430487, -0.417683,
		37.965931, 40.559368, 29.065863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550392, 40.147007, 29.634756>,  <38.526028, 40.860710, 29.358242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550392, 40.147007, 29.634756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358139, 40.160480, 29.284245>,  <38.242786, 40.168564, 29.073938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358139, 40.160480, 29.284245>,  <38.550392, 40.147007, 29.634756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358139, 40.160480, 29.284245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638782, -0.671163, -0.376162,
		-0.600795, -0.740544, 0.301064,
		-0.480628, 0.033682, -0.876277,
		38.213951, 40.170586, 29.021360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647278, 39.482548, 29.360144>,  <38.550392, 40.147007, 29.634756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647278, 39.482548, 29.360144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526733, 39.682587, 29.035408>,  <38.454407, 39.802612, 28.840567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526733, 39.682587, 29.035408>,  <38.647278, 39.482548, 29.360144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526733, 39.682587, 29.035408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493783, -0.646510, -0.581552,
		-0.815696, -0.576129, -0.052109,
		-0.301360, 0.500100, -0.811839,
		38.436325, 39.832615, 28.791857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601944, 39.072990, 28.775391>,  <38.647278, 39.482548, 29.360144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601944, 39.072990, 28.775391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627037, 39.415043, 28.569551>,  <38.642094, 39.620274, 28.446049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627037, 39.415043, 28.569551>,  <38.601944, 39.072990, 28.775391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627037, 39.415043, 28.569551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607391, -0.441842, -0.660190,
		-0.791922, -0.271147, -0.547119,
		0.062732, 0.855134, -0.514597,
		38.645855, 39.671585, 28.415173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391155, 38.932766, 28.075375>,  <38.601944, 39.072990, 28.775391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391155, 38.932766, 28.075375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603691, 39.270084, 28.043060>,  <38.731213, 39.472477, 28.023672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603691, 39.270084, 28.043060>,  <38.391155, 38.932766, 28.075375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603691, 39.270084, 28.043060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388732, -0.327433, -0.861205,
		-0.752704, 0.426190, -0.501796,
		0.531342, 0.843297, -0.080786,
		38.763092, 39.523075, 28.018824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246189, 39.196087, 27.390629>,  <38.391155, 38.932766, 28.075375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246189, 39.196087, 27.390629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596081, 39.333195, 27.527658>,  <38.806015, 39.415459, 27.609877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596081, 39.333195, 27.527658>,  <38.246189, 39.196087, 27.390629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596081, 39.333195, 27.527658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399402, -0.109569, -0.910205,
		-0.274459, 0.933006, -0.232748,
		0.874729, 0.342774, 0.342572,
		38.858498, 39.436028, 27.630430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419235, 39.728886, 26.917332>,  <38.246189, 39.196087, 27.390629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419235, 39.728886, 26.917332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765633, 39.628269, 27.090202>,  <38.973473, 39.567898, 27.193926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765633, 39.628269, 27.090202>,  <38.419235, 39.728886, 26.917332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765633, 39.628269, 27.090202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445216, -0.005642, -0.895405,
		0.227672, 0.967830, 0.107105,
		0.865995, -0.251543, 0.432178,
		39.025433, 39.552807, 27.219856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842129, 40.080734, 26.493570>,  <38.419235, 39.728886, 26.917332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842129, 40.080734, 26.493570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095551, 39.855080, 26.705362>,  <39.247604, 39.719688, 26.832438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095551, 39.855080, 26.705362>,  <38.842129, 40.080734, 26.493570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095551, 39.855080, 26.705362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574584, -0.115226, -0.810294,
		0.518128, 0.817601, 0.251142,
		0.633559, -0.564138, 0.529482,
		39.285618, 39.685837, 26.864206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537403, 40.326214, 26.376080>,  <38.842129, 40.080734, 26.493570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537403, 40.326214, 26.376080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605175, 39.952637, 26.501966>,  <39.645840, 39.728489, 26.577499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605175, 39.952637, 26.501966>,  <39.537403, 40.326214, 26.376080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605175, 39.952637, 26.501966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647737, -0.135151, -0.749780,
		0.742785, 0.330890, 0.582050,
		0.169430, -0.933941, 0.314718,
		39.656006, 39.672455, 26.596382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299671, 40.196312, 26.302946>,  <39.537403, 40.326214, 26.376080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299671, 40.196312, 26.302946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125969, 39.837360, 26.334272>,  <40.021748, 39.621990, 26.353069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125969, 39.837360, 26.334272>,  <40.299671, 40.196312, 26.302946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125969, 39.837360, 26.334272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595506, -0.351234, -0.722501,
		0.675863, -0.267114, 0.686920,
		-0.434259, -0.897377, 0.078318,
		39.995689, 39.568146, 26.357767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828552, 39.718113, 26.285089>,  <40.299671, 40.196312, 26.302946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828552, 39.718113, 26.285089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506054, 39.513069, 26.166969>,  <40.312557, 39.390041, 26.096096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506054, 39.513069, 26.166969>,  <40.828552, 39.718113, 26.285089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506054, 39.513069, 26.166969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568753, -0.534300, -0.625334,
		0.162774, -0.672125, 0.722325,
		-0.806241, -0.512613, -0.295303,
		40.264183, 39.359287, 26.078379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066322, 38.997326, 26.254240>,  <40.828552, 39.718113, 26.285089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066322, 38.997326, 26.254240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747299, 39.055248, 26.020000>,  <40.555885, 39.090004, 25.879456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747299, 39.055248, 26.020000>,  <41.066322, 38.997326, 26.254240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747299, 39.055248, 26.020000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423077, -0.557706, -0.714121,
		-0.430003, -0.817309, 0.383540,
		-0.797561, 0.144807, -0.585600,
		40.508030, 39.098690, 25.844320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922104, 38.369167, 25.966793>,  <41.066322, 38.997326, 26.254240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922104, 38.369167, 25.966793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723240, 38.606884, 25.713919>,  <40.603924, 38.749512, 25.562195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723240, 38.606884, 25.713919>,  <40.922104, 38.369167, 25.966793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723240, 38.606884, 25.713919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373385, -0.511155, -0.774147,
		-0.783211, -0.620921, 0.032226,
		-0.497157, 0.594288, -0.632184,
		40.574093, 38.785172, 25.524263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722343, 37.909489, 25.516445>,  <40.922104, 38.369167, 25.966793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722343, 37.909489, 25.516445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659199, 38.245384, 25.308630>,  <40.621311, 38.446922, 25.183941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659199, 38.245384, 25.308630>,  <40.722343, 37.909489, 25.516445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659199, 38.245384, 25.308630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426948, -0.416368, -0.802716,
		-0.890390, -0.348537, -0.292794,
		-0.157866, 0.839738, -0.519537,
		40.611839, 38.497307, 25.152769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591194, 37.612820, 24.900404>,  <40.722343, 37.909489, 25.516445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591194, 37.612820, 24.900404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699265, 37.992947, 24.838552>,  <40.764107, 38.221024, 24.801441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699265, 37.992947, 24.838552>,  <40.591194, 37.612820, 24.900404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699265, 37.992947, 24.838552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602908, -0.292201, -0.742375,
		-0.750672, 0.107344, -0.651897,
		0.270174, 0.950314, -0.154628,
		40.780315, 38.278042, 24.792164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373016, 37.787586, 24.186245>,  <40.591194, 37.612820, 24.900404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373016, 37.787586, 24.186245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688568, 38.011921, 24.286743>,  <40.877899, 38.146523, 24.347042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688568, 38.011921, 24.286743>,  <40.373016, 37.787586, 24.186245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688568, 38.011921, 24.286743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513762, -0.377542, -0.770396,
		-0.337210, 0.736834, -0.585973,
		0.788884, 0.560836, 0.251246,
		40.925232, 38.180172, 24.362118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500767, 38.280361, 23.606379>,  <40.373016, 37.787586, 24.186245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500767, 38.280361, 23.606379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827625, 38.260143, 23.836061>,  <41.023743, 38.248013, 23.973871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827625, 38.260143, 23.836061>,  <40.500767, 38.280361, 23.606379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827625, 38.260143, 23.836061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516505, -0.378046, -0.768312,
		0.255911, 0.924406, -0.282813,
		0.817149, -0.050545, 0.574207,
		41.072769, 38.244980, 24.008324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175961, 38.596622, 23.203672>,  <40.500767, 38.280361, 23.606379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175961, 38.596622, 23.203672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261658, 38.323479, 23.483044>,  <41.313076, 38.159592, 23.650667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261658, 38.323479, 23.483044>,  <41.175961, 38.596622, 23.203672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261658, 38.323479, 23.483044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619859, -0.457564, -0.637503,
		0.754902, 0.569505, 0.325250,
		0.214238, -0.682861, 0.698429,
		41.325928, 38.118622, 23.692572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917477, 38.528828, 23.135714>,  <41.175961, 38.596622, 23.203672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917477, 38.528828, 23.135714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737400, 38.215141, 23.306515>,  <41.629356, 38.026928, 23.408995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737400, 38.215141, 23.306515>,  <41.917477, 38.528828, 23.135714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737400, 38.215141, 23.306515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251628, -0.570240, -0.781991,
		0.856746, -0.244597, 0.454047,
		-0.450189, -0.784218, 0.427004,
		41.602345, 37.979877, 23.434616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337288, 37.965092, 22.926626>,  <41.917477, 38.528828, 23.135714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337288, 37.965092, 22.926626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000462, 37.794960, 23.059299>,  <41.798367, 37.692883, 23.138905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000462, 37.794960, 23.059299>,  <42.337288, 37.965092, 22.926626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000462, 37.794960, 23.059299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104367, -0.731815, -0.673465,
		0.529176, -0.532487, 0.660629,
		-0.842069, -0.425329, 0.331684,
		41.747841, 37.667362, 23.158804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408669, 37.221344, 23.118980>,  <42.337288, 37.965092, 22.926626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408669, 37.221344, 23.118980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024025, 37.248600, 23.012650>,  <41.793240, 37.264954, 22.948851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024025, 37.248600, 23.012650>,  <42.408669, 37.221344, 23.118980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024025, 37.248600, 23.012650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128164, -0.745031, -0.654601,
		-0.242652, -0.663540, 0.707696,
		-0.961610, 0.068139, -0.265825,
		41.735542, 37.269043, 22.932901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278690, 36.660355, 23.158808>,  <42.408669, 37.221344, 23.118980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278690, 36.660355, 23.158808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979515, 36.786110, 22.924971>,  <41.800011, 36.861565, 22.784668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979515, 36.786110, 22.924971>,  <42.278690, 36.660355, 23.158808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979515, 36.786110, 22.924971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063596, -0.842727, -0.534572,
		-0.660715, -0.437005, 0.610313,
		-0.747938, 0.314386, -0.584594,
		41.755135, 36.880424, 22.749592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005444, 36.055866, 23.085516>,  <42.278690, 36.660355, 23.158808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005444, 36.055866, 23.085516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821003, 36.276173, 22.807224>,  <41.710339, 36.408356, 22.640249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821003, 36.276173, 22.807224>,  <42.005444, 36.055866, 23.085516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821003, 36.276173, 22.807224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087903, -0.751847, -0.653452,
		-0.882981, -0.362467, 0.298266,
		-0.461105, 0.550767, -0.695728,
		41.682671, 36.441402, 22.598505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459869, 35.661762, 22.793892>,  <42.005444, 36.055866, 23.085516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459869, 35.661762, 22.793892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581219, 35.931000, 22.524105>,  <41.654030, 36.092541, 22.362232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581219, 35.931000, 22.524105>,  <41.459869, 35.661762, 22.793892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581219, 35.931000, 22.524105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193321, -0.736585, -0.648128,
		-0.933055, 0.066236, -0.353585,
		0.303375, 0.673094, -0.674469,
		41.672230, 36.132927, 22.321764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087837, 35.442631, 22.138552>,  <41.459869, 35.661762, 22.793892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087837, 35.442631, 22.138552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374420, 35.699348, 22.029160>,  <41.546368, 35.853378, 21.963524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374420, 35.699348, 22.029160>,  <41.087837, 35.442631, 22.138552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374420, 35.699348, 22.029160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094000, -0.477244, -0.873729,
		-0.691273, 0.600279, -0.402252,
		0.716454, 0.641796, -0.273480,
		41.589355, 35.891888, 21.947115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932671, 35.583694, 21.479486>,  <41.087837, 35.442631, 22.138552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932671, 35.583694, 21.479486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323162, 35.661217, 21.518305>,  <41.557457, 35.707729, 21.541595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323162, 35.661217, 21.518305>,  <40.932671, 35.583694, 21.479486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323162, 35.661217, 21.518305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174239, -0.435426, -0.883202,
		-0.128915, 0.879115, -0.458843,
		0.976228, 0.193806, 0.097044,
		41.616032, 35.719360, 21.547419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251511, 35.844227, 20.831635>,  <40.932671, 35.583694, 21.479486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251511, 35.844227, 20.831635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570385, 35.748062, 21.053156>,  <41.761711, 35.690365, 21.186069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570385, 35.748062, 21.053156>,  <41.251511, 35.844227, 20.831635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570385, 35.748062, 21.053156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416129, -0.445793, -0.792531,
		0.437415, 0.862248, -0.255338,
		0.797185, -0.240411, 0.553803,
		41.809540, 35.675938, 21.219297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867935, 35.915596, 20.337685>,  <41.251511, 35.844227, 20.831635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867935, 35.915596, 20.337685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995899, 35.684296, 20.637894>,  <42.072678, 35.545517, 20.818020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995899, 35.684296, 20.637894>,  <41.867935, 35.915596, 20.337685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995899, 35.684296, 20.637894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410202, -0.629525, -0.659873,
		0.854045, 0.518965, 0.035809,
		0.319908, -0.578251, 0.750523,
		42.091873, 35.510822, 20.863050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652550, 35.883331, 20.325905>,  <41.867935, 35.915596, 20.337685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652550, 35.883331, 20.325905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533043, 35.558804, 20.526903>,  <42.461338, 35.364086, 20.647503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533043, 35.558804, 20.526903>,  <42.652550, 35.883331, 20.325905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533043, 35.558804, 20.526903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378043, -0.584090, -0.718277,
		0.876253, -0.024635, 0.481221,
		-0.298771, -0.811315, 0.502498,
		42.443413, 35.315411, 20.677652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215790, 35.415375, 20.307871>,  <42.652550, 35.883331, 20.325905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215790, 35.415375, 20.307871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894176, 35.198906, 20.406395>,  <42.701210, 35.069027, 20.465509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894176, 35.198906, 20.406395>,  <43.215790, 35.415375, 20.307871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894176, 35.198906, 20.406395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243126, -0.677275, -0.694398,
		0.542606, -0.498434, 0.676123,
		-0.804033, -0.541167, 0.246311,
		42.652966, 35.036556, 20.480288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432079, 34.607166, 20.398508>,  <43.215790, 35.415375, 20.307871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432079, 34.607166, 20.398508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042854, 34.624043, 20.307842>,  <42.809319, 34.634167, 20.253443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042854, 34.624043, 20.307842>,  <43.432079, 34.607166, 20.398508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042854, 34.624043, 20.307842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105205, -0.793553, -0.599338,
		-0.205157, -0.607038, 0.767734,
		-0.973058, 0.042189, -0.226666,
		42.750938, 34.636700, 20.239841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187157, 33.916771, 20.488384>,  <43.432079, 34.607166, 20.398508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187157, 33.916771, 20.488384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925568, 34.093750, 20.242926>,  <42.768616, 34.199940, 20.095652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925568, 34.093750, 20.242926>,  <43.187157, 33.916771, 20.488384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925568, 34.093750, 20.242926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183348, -0.694264, -0.695975,
		-0.733969, -0.567656, 0.372903,
		-0.653967, 0.442453, -0.613647,
		42.729378, 34.226486, 20.058832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937317, 33.384449, 20.196190>,  <43.187157, 33.916771, 20.488384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937317, 33.384449, 20.196190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819065, 33.657764, 19.929142>,  <42.748116, 33.821754, 19.768913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819065, 33.657764, 19.929142>,  <42.937317, 33.384449, 20.196190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819065, 33.657764, 19.929142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238391, -0.623982, -0.744189,
		-0.925081, -0.379157, 0.021575,
		-0.295627, 0.683291, -0.667621,
		42.730377, 33.862751, 19.728855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537640, 32.997967, 19.784479>,  <42.937317, 33.384449, 20.196190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537640, 32.997967, 19.784479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673477, 33.327499, 19.602940>,  <42.754978, 33.525219, 19.494017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673477, 33.327499, 19.602940>,  <42.537640, 32.997967, 19.784479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673477, 33.327499, 19.602940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369225, -0.560554, -0.741250,
		-0.865071, 0.084152, -0.494540,
		0.339595, 0.823831, -0.453848,
		42.775356, 33.574650, 19.466785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549583, 32.271404, 19.603464>,  <42.537640, 32.997967, 19.784479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549583, 32.271404, 19.603464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832584, 32.059696, 19.790789>,  <43.002384, 31.932673, 19.903183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832584, 32.059696, 19.790789>,  <42.549583, 32.271404, 19.603464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832584, 32.059696, 19.790789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325572, 0.344058, 0.880697,
		-0.627249, -0.775566, 0.071108,
		0.707504, -0.529266, 0.468312,
		43.044834, 31.900917, 19.931282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219070, 31.853672, 20.227774>,  <42.549583, 32.271404, 19.603464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219070, 31.853672, 20.227774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612919, 31.856873, 20.297592>,  <42.849228, 31.858793, 20.339483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612919, 31.856873, 20.297592>,  <42.219070, 31.853672, 20.227774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612919, 31.856873, 20.297592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169735, 0.280936, 0.944598,
		-0.041481, -0.959693, 0.277972,
		0.984616, 0.007999, 0.174547,
		42.908302, 31.859272, 20.349957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219864, 31.489719, 20.904261>,  <42.219070, 31.853672, 20.227774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219864, 31.489719, 20.904261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566734, 31.686590, 20.873863>,  <42.774857, 31.804712, 20.855625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566734, 31.686590, 20.873863>,  <42.219864, 31.489719, 20.904261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566734, 31.686590, 20.873863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028316, 0.201079, 0.979166,
		0.497203, -0.846953, 0.188306,
		0.867172, 0.492176, -0.075994,
		42.826885, 31.834244, 20.851065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554619, 31.178844, 21.462677>,  <42.219864, 31.489719, 20.904261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554619, 31.178844, 21.462677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698208, 31.538870, 21.363863>,  <42.784359, 31.754885, 21.304575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698208, 31.538870, 21.363863>,  <42.554619, 31.178844, 21.462677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698208, 31.538870, 21.363863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097272, 0.299314, 0.949184,
		0.928267, -0.316698, 0.194996,
		0.358970, 0.900063, -0.247037,
		42.805901, 31.808889, 21.289751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124805, 31.321274, 21.876301>,  <42.554619, 31.178844, 21.462677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124805, 31.321274, 21.876301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.018242, 31.678768, 21.731932>,  <42.954304, 31.893265, 21.645311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.018242, 31.678768, 21.731932>,  <43.124805, 31.321274, 21.876301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018242, 31.678768, 21.731932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173076, 0.324010, 0.930087,
		0.948194, 0.310250, 0.068365,
		-0.266408, 0.893735, -0.360921,
		42.938320, 31.946888, 21.623655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489647, 31.806349, 22.345881>,  <43.124805, 31.321274, 21.876301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489647, 31.806349, 22.345881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211395, 32.021744, 22.155670>,  <43.044445, 32.150982, 22.041544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211395, 32.021744, 22.155670>,  <43.489647, 31.806349, 22.345881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211395, 32.021744, 22.155670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117708, 0.567548, 0.814883,
		0.708690, 0.622832, -0.331420,
		-0.695631, 0.538489, -0.475528,
		43.002705, 32.183289, 22.013012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587109, 32.545860, 22.552523>,  <43.489647, 31.806349, 22.345881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587109, 32.545860, 22.552523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213524, 32.511261, 22.413826>,  <42.989372, 32.490501, 22.330608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213524, 32.511261, 22.413826>,  <43.587109, 32.545860, 22.552523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213524, 32.511261, 22.413826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324352, 0.612506, 0.720855,
		0.150029, 0.785719, -0.600114,
		-0.933963, -0.086499, -0.346743,
		42.933334, 32.485310, 22.309803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.360981, 33.303776, 22.431589>,  <43.587109, 32.545860, 22.552523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.360981, 33.303776, 22.431589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026730, 33.084423, 22.444212>,  <42.826180, 32.952812, 22.451786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026730, 33.084423, 22.444212>,  <43.360981, 33.303776, 22.431589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026730, 33.084423, 22.444212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346955, 0.571489, 0.743655,
		-0.425844, 0.610472, -0.667819,
		-0.835631, -0.548384, 0.031559,
		42.776039, 32.919907, 22.453680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850319, 33.761940, 22.365412>,  <43.360981, 33.303776, 22.431589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850319, 33.761940, 22.365412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687634, 33.437523, 22.533600>,  <42.590023, 33.242874, 22.634512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687634, 33.437523, 22.533600>,  <42.850319, 33.761940, 22.365412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687634, 33.437523, 22.533600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379390, 0.568639, 0.729872,
		-0.831054, 0.137323, -0.538973,
		-0.406709, -0.811044, 0.420471,
		42.565620, 33.194210, 22.659740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225811, 33.947311, 22.518330>,  <42.850319, 33.761940, 22.365412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225811, 33.947311, 22.518330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243309, 33.634663, 22.767216>,  <42.253807, 33.447075, 22.916548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243309, 33.634663, 22.767216>,  <42.225811, 33.947311, 22.518330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243309, 33.634663, 22.767216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424844, 0.549138, 0.719691,
		-0.904209, -0.295826, -0.308047,
		0.043743, -0.781623, 0.622216,
		42.256432, 33.400177, 22.953880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475922, 33.802807, 22.736509>,  <42.225811, 33.947311, 22.518330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475922, 33.802807, 22.736509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713398, 33.622646, 23.003242>,  <41.855885, 33.514549, 23.163282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713398, 33.622646, 23.003242>,  <41.475922, 33.802807, 22.736509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713398, 33.622646, 23.003242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417940, 0.535557, 0.733828,
		-0.687644, -0.714366, 0.129716,
		0.593693, -0.450399, 0.666835,
		41.891506, 33.487526, 23.203293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041225, 33.670204, 23.276970>,  <41.475922, 33.802807, 22.736509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041225, 33.670204, 23.276970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401978, 33.631157, 23.445295>,  <41.618427, 33.607731, 23.546291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401978, 33.631157, 23.445295>,  <41.041225, 33.670204, 23.276970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401978, 33.631157, 23.445295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347876, 0.413425, 0.841464,
		-0.256115, -0.905291, 0.338901,
		0.901880, -0.097616, 0.420814,
		41.672543, 33.601871, 23.571539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895622, 33.319046, 23.956635>,  <41.041225, 33.670204, 23.276970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895622, 33.319046, 23.956635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254436, 33.495785, 23.952513>,  <41.469723, 33.601830, 23.950039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254436, 33.495785, 23.952513>,  <40.895622, 33.319046, 23.956635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254436, 33.495785, 23.952513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222232, 0.471085, 0.853635,
		0.382029, -0.763448, 0.520770,
		0.897032, 0.441845, -0.010305,
		41.523544, 33.628338, 23.949421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106903, 33.325253, 24.624815>,  <40.895622, 33.319046, 23.956635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106903, 33.325253, 24.624815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343647, 33.603832, 24.462503>,  <41.485695, 33.770981, 24.365116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343647, 33.603832, 24.462503>,  <41.106903, 33.325253, 24.624815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343647, 33.603832, 24.462503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191244, 0.610383, 0.768673,
		0.783023, -0.377346, 0.494454,
		0.591862, 0.696450, -0.405778,
		41.521206, 33.812767, 24.340771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539978, 33.441925, 25.185738>,  <41.106903, 33.325253, 24.624815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539978, 33.441925, 25.185738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555756, 33.753674, 24.935608>,  <41.565220, 33.940723, 24.785530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555756, 33.753674, 24.935608>,  <41.539978, 33.441925, 25.185738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555756, 33.753674, 24.935608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136048, 0.624171, 0.769352,
		0.989917, 0.054730, 0.130650,
		0.039441, 0.779369, -0.625323,
		41.567589, 33.987484, 24.748011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805473, 33.977272, 25.578903>,  <41.539978, 33.441925, 25.185738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805473, 33.977272, 25.578903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633446, 34.179314, 25.279594>,  <41.530228, 34.300537, 25.100010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633446, 34.179314, 25.279594>,  <41.805473, 33.977272, 25.578903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633446, 34.179314, 25.279594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024790, 0.821920, 0.569064,
		0.902455, 0.263288, -0.340961,
		-0.430070, 0.505102, -0.748273,
		41.504425, 34.330845, 25.055113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293945, 34.524567, 25.327583>,  <41.805473, 33.977272, 25.578903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293945, 34.524567, 25.327583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925507, 34.642136, 25.225458>,  <41.704441, 34.712677, 25.164183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925507, 34.642136, 25.225458>,  <42.293945, 34.524567, 25.327583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925507, 34.642136, 25.225458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145426, 0.868067, 0.474670,
		0.361142, 0.400090, -0.842321,
		-0.921101, 0.293919, -0.255312,
		41.649178, 34.730312, 25.148865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426758, 35.178501, 25.173920>,  <42.293945, 34.524567, 25.327583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426758, 35.178501, 25.173920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036430, 35.143230, 25.253925>,  <41.802235, 35.122066, 25.301928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036430, 35.143230, 25.253925>,  <42.426758, 35.178501, 25.173920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036430, 35.143230, 25.253925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034402, 0.841669, 0.538897,
		-0.215863, 0.532746, -0.818282,
		-0.975817, -0.088178, 0.200012,
		41.743687, 35.116776, 25.313929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248112, 35.872917, 25.173695>,  <42.426758, 35.178501, 25.173920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248112, 35.872917, 25.173695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921242, 35.707497, 25.334293>,  <41.725121, 35.608246, 25.430653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921242, 35.707497, 25.334293>,  <42.248112, 35.872917, 25.173695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921242, 35.707497, 25.334293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189319, 0.850505, 0.490713,
		-0.544411, 0.324987, -0.773305,
		-0.817175, -0.413551, 0.401498,
		41.676090, 35.583431, 25.454742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613304, 36.331253, 25.053423>,  <42.248112, 35.872917, 25.173695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613304, 36.331253, 25.053423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517044, 36.098011, 25.363796>,  <41.459286, 35.958065, 25.550020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517044, 36.098011, 25.363796>,  <41.613304, 36.331253, 25.053423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517044, 36.098011, 25.363796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194010, 0.812194, 0.550182,
		-0.951024, -0.018136, -0.308584,
		-0.240652, -0.583105, 0.775935,
		41.444847, 35.923080, 25.596577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884472, 36.511017, 25.244078>,  <41.613304, 36.331253, 25.053423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884472, 36.511017, 25.244078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098564, 36.357578, 25.545113>,  <41.227020, 36.265514, 25.725733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098564, 36.357578, 25.545113>,  <40.884472, 36.511017, 25.244078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098564, 36.357578, 25.545113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246479, 0.781249, 0.573497,
		-0.807946, -0.492449, 0.323600,
		0.535230, -0.383594, 0.752585,
		41.259132, 36.242500, 25.770887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480724, 36.630856, 25.827106>,  <40.884472, 36.511017, 25.244078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480724, 36.630856, 25.827106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831013, 36.543800, 25.999500>,  <41.041187, 36.491570, 26.102938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831013, 36.543800, 25.999500>,  <40.480724, 36.630856, 25.827106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831013, 36.543800, 25.999500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225867, 0.604285, 0.764084,
		-0.426729, -0.766469, 0.480029,
		0.875721, -0.217634, 0.430986,
		41.093727, 36.478512, 26.128796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260704, 36.371334, 26.353821>,  <40.480724, 36.630856, 25.827106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260704, 36.371334, 26.353821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632305, 36.492947, 26.438211>,  <40.855267, 36.565914, 26.488846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632305, 36.492947, 26.438211>,  <40.260704, 36.371334, 26.353821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632305, 36.492947, 26.438211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329886, 0.422038, 0.844428,
		0.167694, -0.854077, 0.492373,
		0.929007, 0.304033, 0.210975,
		40.911007, 36.584156, 26.501503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488712, 36.143929, 27.006882>,  <40.260704, 36.371334, 26.353821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488712, 36.143929, 27.006882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703381, 36.473759, 26.935270>,  <40.832184, 36.671658, 26.892303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703381, 36.473759, 26.935270>,  <40.488712, 36.143929, 27.006882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703381, 36.473759, 26.935270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201998, 0.331555, 0.921557,
		0.819254, -0.458413, 0.344500,
		0.536674, 0.824578, -0.179029,
		40.864384, 36.721130, 26.881561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805061, 36.281750, 27.654230>,  <40.488712, 36.143929, 27.006882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805061, 36.281750, 27.654230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833183, 36.627960, 27.455868>,  <40.850056, 36.835686, 27.336849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833183, 36.627960, 27.455868>,  <40.805061, 36.281750, 27.654230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833183, 36.627960, 27.455868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160028, 0.500485, 0.850827,
		0.984606, 0.019545, 0.173693,
		0.070301, 0.865524, -0.495908,
		40.854275, 36.887619, 27.307095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301849, 36.734547, 28.020887>,  <40.805061, 36.281750, 27.654230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301849, 36.734547, 28.020887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088104, 36.991302, 27.800913>,  <40.959858, 37.145355, 27.668928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088104, 36.991302, 27.800913>,  <41.301849, 36.734547, 28.020887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088104, 36.991302, 27.800913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055308, 0.675775, 0.735030,
		0.843442, 0.362358, -0.396613,
		-0.534365, 0.641891, -0.549936,
		40.927795, 37.183868, 27.635933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583504, 37.392403, 28.068981>,  <41.301849, 36.734547, 28.020887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583504, 37.392403, 28.068981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208923, 37.469429, 27.951691>,  <40.984177, 37.515644, 27.881315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208923, 37.469429, 27.951691>,  <41.583504, 37.392403, 28.068981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208923, 37.469429, 27.951691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070842, 0.714839, 0.695691,
		0.343580, 0.672251, -0.655768,
		-0.936448, 0.192570, -0.293228,
		40.927990, 37.527199, 27.863722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451847, 38.114174, 28.108206>,  <41.583504, 37.392403, 28.068981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451847, 38.114174, 28.108206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082542, 37.960567, 28.112642>,  <40.860962, 37.868404, 28.115303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082542, 37.960567, 28.112642>,  <41.451847, 38.114174, 28.108206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082542, 37.960567, 28.112642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271961, 0.673691, 0.687151,
		-0.271351, 0.631402, -0.726430,
		-0.923258, -0.384020, 0.011090,
		40.805565, 37.845360, 28.115969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001148, 38.776958, 28.138302>,  <41.451847, 38.114174, 28.108206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001148, 38.776958, 28.138302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844322, 38.436947, 28.279005>,  <40.750225, 38.232941, 28.363426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844322, 38.436947, 28.279005>,  <41.001148, 38.776958, 28.138302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844322, 38.436947, 28.279005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227813, 0.460174, 0.858103,
		-0.891283, 0.256298, -0.374067,
		-0.392066, -0.850030, 0.351757,
		40.726704, 38.181938, 28.384533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497322, 38.990345, 28.397762>,  <41.001148, 38.776958, 28.138302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497322, 38.990345, 28.397762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433670, 38.635815, 28.571711>,  <40.395481, 38.423096, 28.676079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433670, 38.635815, 28.571711>,  <40.497322, 38.990345, 28.397762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433670, 38.635815, 28.571711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457005, 0.456579, 0.763336,
		-0.875114, -0.077270, -0.477708,
		-0.159128, -0.886321, 0.434872,
		40.385933, 38.369919, 28.702171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879742, 39.097462, 28.620903>,  <40.497322, 38.990345, 28.397762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879742, 39.097462, 28.620903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993401, 38.781494, 28.838266>,  <40.061596, 38.591915, 28.968683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993401, 38.781494, 28.838266>,  <39.879742, 39.097462, 28.620903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993401, 38.781494, 28.838266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469687, 0.379423, 0.797140,
		-0.835857, -0.481733, -0.263203,
		0.284144, -0.789918, 0.543407,
		40.078644, 38.544518, 29.001289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291710, 38.973923, 29.067505>,  <39.879742, 39.097462, 28.620903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291710, 38.973923, 29.067505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593597, 38.785316, 29.249960>,  <39.774731, 38.672153, 29.359434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593597, 38.785316, 29.249960>,  <39.291710, 38.973923, 29.067505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593597, 38.785316, 29.249960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410047, 0.203700, 0.889026,
		-0.512107, -0.858008, -0.039607,
		0.754724, -0.471518, 0.456140,
		39.820015, 38.643860, 29.386803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941177, 38.509392, 29.640079>,  <39.291710, 38.973923, 29.067505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941177, 38.509392, 29.640079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325363, 38.546349, 29.745134>,  <39.555874, 38.568523, 29.808167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325363, 38.546349, 29.745134>,  <38.941177, 38.509392, 29.640079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325363, 38.546349, 29.745134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272916, 0.125876, 0.953767,
		0.055058, -0.987735, 0.146113,
		0.960461, 0.092389, 0.262638,
		39.613503, 38.574066, 29.823925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971031, 38.076168, 30.218258>,  <38.941177, 38.509392, 29.640079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971031, 38.076168, 30.218258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273804, 38.332783, 30.268030>,  <39.455467, 38.486752, 30.297894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273804, 38.332783, 30.268030>,  <38.971031, 38.076168, 30.218258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273804, 38.332783, 30.268030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073414, -0.105721, 0.991682,
		0.649358, -0.759770, -0.032926,
		0.756931, 0.641539, 0.124429,
		39.500885, 38.525246, 30.305359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417377, 37.741924, 30.756004>,  <38.971031, 38.076168, 30.218258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417377, 37.741924, 30.756004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494179, 38.134483, 30.755533>,  <39.540260, 38.370018, 30.755251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494179, 38.134483, 30.755533>,  <39.417377, 37.741924, 30.756004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494179, 38.134483, 30.755533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094208, 0.019624, 0.995359,
		0.976863, -0.190999, 0.096223,
		0.192001, 0.981394, -0.001176,
		39.551781, 38.428902, 30.755180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068039, 37.915157, 31.263905>,  <39.417377, 37.741924, 30.756004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068039, 37.915157, 31.263905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833160, 38.231586, 31.195312>,  <39.692234, 38.421444, 31.154158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833160, 38.231586, 31.195312>,  <40.068039, 37.915157, 31.263905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833160, 38.231586, 31.195312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164242, 0.091001, 0.982214,
		0.792604, 0.604920, 0.076491,
		-0.587200, 0.791069, -0.171480,
		39.657001, 38.468906, 31.143867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176434, 38.351780, 31.815224>,  <40.068039, 37.915157, 31.263905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176434, 38.351780, 31.815224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869732, 38.565353, 31.672678>,  <39.685711, 38.693497, 31.587151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869732, 38.565353, 31.672678>,  <40.176434, 38.351780, 31.815224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869732, 38.565353, 31.672678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174983, 0.360273, 0.916288,
		0.617628, 0.764929, -0.182812,
		-0.766757, 0.533936, -0.356364,
		39.639706, 38.725533, 31.565769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203743, 39.049400, 32.120003>,  <40.176434, 38.351780, 31.815224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203743, 39.049400, 32.120003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838497, 38.928963, 32.010048>,  <39.619350, 38.856701, 31.944075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838497, 38.928963, 32.010048>,  <40.203743, 39.049400, 32.120003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838497, 38.928963, 32.010048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348534, 0.226666, 0.909476,
		-0.211529, 0.926264, -0.311914,
		-0.913115, -0.301093, -0.274889,
		39.564564, 38.838634, 31.927582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716331, 39.627228, 32.327641>,  <40.203743, 39.049400, 32.120003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716331, 39.627228, 32.327641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472534, 39.311092, 32.302708>,  <39.326256, 39.121410, 32.287746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472534, 39.311092, 32.302708>,  <39.716331, 39.627228, 32.327641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472534, 39.311092, 32.302708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306822, 0.162655, 0.937765,
		-0.731012, 0.590687, -0.341630,
		-0.609493, -0.790337, -0.062333,
		39.289684, 39.073990, 32.284008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112846, 39.941734, 32.485367>,  <39.716331, 39.627228, 32.327641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112846, 39.941734, 32.485367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019360, 39.555058, 32.527084>,  <38.963268, 39.323051, 32.552116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019360, 39.555058, 32.527084>,  <39.112846, 39.941734, 32.485367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019360, 39.555058, 32.527084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466731, 0.205642, 0.860159,
		-0.852958, 0.152360, -0.499249,
		-0.233720, -0.966695, 0.104293,
		38.949242, 39.265049, 32.558372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489906, 39.989464, 32.799194>,  <39.112846, 39.941734, 32.485367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489906, 39.989464, 32.799194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607540, 39.613129, 32.866528>,  <38.678120, 39.387329, 32.906929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607540, 39.613129, 32.866528>,  <38.489906, 39.989464, 32.799194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607540, 39.613129, 32.866528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512411, -0.006525, 0.858715,
		-0.806814, -0.338792, -0.484015,
		0.294083, -0.940839, 0.168336,
		38.695766, 39.330875, 32.917030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943787, 39.754932, 32.997150>,  <38.489906, 39.989464, 32.799194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943787, 39.754932, 32.997150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227589, 39.510536, 33.137604>,  <38.397869, 39.363899, 33.221878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227589, 39.510536, 33.137604>,  <37.943787, 39.754932, 32.997150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227589, 39.510536, 33.137604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525843, -0.127302, 0.841002,
		-0.469143, -0.781335, -0.411606,
		0.709502, -0.610990, 0.351137,
		38.440441, 39.327240, 33.242947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609379, 39.156540, 33.251873>,  <37.943787, 39.754932, 32.997150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609379, 39.156540, 33.251873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955940, 39.216118, 33.442520>,  <38.163876, 39.251865, 33.556908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955940, 39.216118, 33.442520>,  <37.609379, 39.156540, 33.251873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955940, 39.216118, 33.442520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471275, -0.071653, 0.879071,
		0.165084, -0.986246, 0.008114,
		0.866399, 0.148944, 0.476622,
		38.215858, 39.260799, 33.585506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550949, 38.658134, 33.817020>,  <37.609379, 39.156540, 33.251873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550949, 38.658134, 33.817020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802811, 38.959461, 33.892967>,  <37.953930, 39.140255, 33.938534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802811, 38.959461, 33.892967>,  <37.550949, 38.658134, 33.817020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802811, 38.959461, 33.892967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138878, -0.131314, 0.981565,
		0.764359, -0.644418, 0.021936,
		0.629658, 0.753314, 0.189866,
		37.991707, 39.185455, 33.949928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002235, 38.460663, 34.302601>,  <37.550949, 38.658134, 33.817020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002235, 38.460663, 34.302601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037918, 38.855881, 34.352890>,  <38.059326, 39.093010, 34.383064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037918, 38.855881, 34.352890>,  <38.002235, 38.460663, 34.302601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037918, 38.855881, 34.352890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030088, -0.123499, 0.991888,
		0.995559, -0.092266, 0.018711,
		0.089207, 0.988046, 0.125727,
		38.064682, 39.152294, 34.390610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516747, 38.636909, 34.753223>,  <38.002235, 38.460663, 34.302601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516747, 38.636909, 34.753223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252838, 38.937317, 34.763630>,  <38.094494, 39.117561, 34.769875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252838, 38.937317, 34.763630>,  <38.516747, 38.636909, 34.753223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252838, 38.937317, 34.763630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126077, -0.144755, 0.981402,
		0.740817, 0.644219, 0.190190,
		-0.659769, 0.751018, 0.026016,
		38.054909, 39.162621, 34.771435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901184, 39.033951, 35.264713>,  <38.516747, 38.636909, 34.753223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901184, 39.033951, 35.264713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604225, 39.255589, 35.114075>,  <38.426052, 39.388573, 35.023689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604225, 39.255589, 35.114075>,  <38.901184, 39.033951, 35.264713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604225, 39.255589, 35.114075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258907, 0.281166, 0.924074,
		0.617915, 0.783530, -0.065276,
		-0.742394, 0.554099, -0.376598,
		38.381508, 39.421818, 35.001095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868778, 39.660709, 35.664356>,  <38.901184, 39.033951, 35.264713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868778, 39.660709, 35.664356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508160, 39.661655, 35.491291>,  <38.291786, 39.662224, 35.387451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508160, 39.661655, 35.491291>,  <38.868778, 39.660709, 35.664356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508160, 39.661655, 35.491291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431263, 0.075771, 0.899039,
		0.034908, 0.997122, -0.067293,
		-0.901551, 0.002363, -0.432667,
		38.237694, 39.662365, 35.361492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410954, 40.271809, 35.926098>,  <38.868778, 39.660709, 35.664356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410954, 40.271809, 35.926098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163654, 39.986244, 35.794590>,  <38.015274, 39.814903, 35.715687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163654, 39.986244, 35.794590>,  <38.410954, 40.271809, 35.926098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163654, 39.986244, 35.794590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432386, -0.040379, 0.900784,
		-0.656359, 0.699067, -0.283722,
		-0.618252, -0.713915, -0.328770,
		37.978180, 39.772068, 35.695957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734936, 40.379311, 36.230595>,  <38.410954, 40.271809, 35.926098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734936, 40.379311, 36.230595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640701, 40.009090, 36.112038>,  <37.584160, 39.786957, 36.040901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640701, 40.009090, 36.112038>,  <37.734936, 40.379311, 36.230595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640701, 40.009090, 36.112038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455698, -0.164172, 0.874864,
		-0.858394, 0.341169, -0.383097,
		-0.235583, -0.925554, -0.296395,
		37.570026, 39.731422, 36.023121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075771, 40.303112, 36.589474>,  <37.734936, 40.379311, 36.230595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075771, 40.303112, 36.589474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237144, 39.953465, 36.481285>,  <37.333969, 39.743675, 36.416374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237144, 39.953465, 36.481285>,  <37.075771, 40.303112, 36.589474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237144, 39.953465, 36.481285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325609, -0.413392, 0.850344,
		-0.855113, -0.254992, -0.451398,
		0.403435, -0.874120, -0.270469,
		37.358173, 39.691227, 36.400143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516857, 39.834938, 36.690903>,  <37.075771, 40.303112, 36.589474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516857, 39.834938, 36.690903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872604, 39.652119, 36.695347>,  <37.086052, 39.542427, 36.698013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872604, 39.652119, 36.695347>,  <36.516857, 39.834938, 36.690903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872604, 39.652119, 36.695347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257314, -0.480315, 0.838503,
		-0.377899, -0.748601, -0.544784,
		0.889372, -0.457049, 0.011115,
		37.139416, 39.515003, 36.698681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283821, 39.199127, 36.834984>,  <36.516857, 39.834938, 36.690903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283821, 39.199127, 36.834984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667046, 39.221226, 36.947460>,  <36.896980, 39.234486, 37.014946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667046, 39.221226, 36.947460>,  <36.283821, 39.199127, 36.834984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667046, 39.221226, 36.947460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196430, -0.587834, 0.784772,
		0.208646, -0.807093, -0.552329,
		0.958061, 0.055246, 0.281186,
		36.954464, 39.237801, 37.031815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574532, 38.494373, 36.839466>,  <36.283821, 39.199127, 36.834984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574532, 38.494373, 36.839466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787498, 38.722698, 37.089493>,  <36.915279, 38.859692, 37.239510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787498, 38.722698, 37.089493>,  <36.574532, 38.494373, 36.839466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787498, 38.722698, 37.089493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339651, -0.532318, 0.775419,
		0.775352, -0.625150, -0.089538,
		0.532416, 0.570811, 0.625067,
		36.947224, 38.893940, 37.277012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000023, 37.997742, 37.384983>,  <36.574532, 38.494373, 36.839466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000023, 37.997742, 37.384983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896347, 38.368874, 37.492279>,  <36.834141, 38.591553, 37.556656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896347, 38.368874, 37.492279>,  <37.000023, 37.997742, 37.384983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896347, 38.368874, 37.492279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423024, -0.358728, 0.832085,
		0.868257, 0.102198, 0.485474,
		-0.259191, 0.927831, 0.268236,
		36.818588, 38.647224, 37.572750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098782, 37.943611, 38.056084>,  <37.000023, 37.997742, 37.384983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098782, 37.943611, 38.056084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907207, 38.293663, 38.028446>,  <36.792263, 38.503693, 38.011864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907207, 38.293663, 38.028446>,  <37.098782, 37.943611, 38.056084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907207, 38.293663, 38.028446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477455, -0.193630, 0.857056,
		0.736655, 0.443461, 0.510570,
		-0.478933, 0.875128, -0.069094,
		36.763527, 38.556202, 38.007717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998417, 38.177338, 38.683392>,  <37.098782, 37.943611, 38.056084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998417, 38.177338, 38.683392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702091, 38.366444, 38.492527>,  <36.524296, 38.479908, 38.378010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702091, 38.366444, 38.492527>,  <36.998417, 38.177338, 38.683392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702091, 38.366444, 38.492527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638007, -0.273071, 0.719985,
		0.210089, 0.837807, 0.503926,
		-0.740817, 0.472769, -0.477158,
		36.479847, 38.508274, 38.349380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781235, 38.557026, 39.173298>,  <36.998417, 38.177338, 38.683392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781235, 38.557026, 39.173298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493992, 38.519295, 38.897491>,  <36.321648, 38.496655, 38.732010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493992, 38.519295, 38.897491>,  <36.781235, 38.557026, 39.173298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493992, 38.519295, 38.897491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653953, -0.247446, 0.714924,
		-0.238054, 0.964299, 0.116006,
		-0.718106, -0.094329, -0.689511,
		36.278561, 38.490997, 38.690639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240215, 39.017124, 39.415195>,  <36.781235, 38.557026, 39.173298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240215, 39.017124, 39.415195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098488, 38.732677, 39.172287>,  <36.013451, 38.562012, 39.026543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098488, 38.732677, 39.172287>,  <36.240215, 39.017124, 39.415195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098488, 38.732677, 39.172287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744678, -0.178221, 0.643189,
		-0.565609, 0.680113, -0.466404,
		-0.354318, -0.711114, -0.607268,
		35.992191, 38.519344, 38.990105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488117, 39.032665, 39.297825>,  <36.240215, 39.017124, 39.415195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488117, 39.032665, 39.297825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594105, 38.651272, 39.240318>,  <35.657700, 38.422436, 39.205814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594105, 38.651272, 39.240318>,  <35.488117, 39.032665, 39.297825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594105, 38.651272, 39.240318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579088, -0.276562, 0.766923,
		-0.771004, -0.119961, -0.625429,
		0.264971, -0.953479, -0.143763,
		35.673595, 38.365227, 39.197189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896065, 38.591511, 39.353840>,  <35.488117, 39.032665, 39.297825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896065, 38.591511, 39.353840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212925, 38.365440, 39.445984>,  <35.403042, 38.229797, 39.501270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212925, 38.365440, 39.445984>,  <34.896065, 38.591511, 39.353840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212925, 38.365440, 39.445984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448619, -0.283292, 0.847636,
		-0.413810, -0.774799, -0.477962,
		0.792150, -0.565183, 0.230360,
		35.450569, 38.195885, 39.515091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759979, 37.910156, 39.467167>,  <34.896065, 38.591511, 39.353840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759979, 37.910156, 39.467167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099010, 37.945770, 39.676430>,  <35.302429, 37.967140, 39.801987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099010, 37.945770, 39.676430>,  <34.759979, 37.910156, 39.467167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099010, 37.945770, 39.676430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429498, -0.463922, 0.774795,
		0.311689, -0.881390, -0.354967,
		0.847574, 0.089038, 0.523155,
		35.353283, 37.972481, 39.833378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081211, 37.287853, 39.647881>,  <34.759979, 37.910156, 39.467167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081211, 37.287853, 39.647881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197281, 37.562485, 39.914539>,  <35.266922, 37.727264, 40.074535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197281, 37.562485, 39.914539>,  <35.081211, 37.287853, 39.647881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197281, 37.562485, 39.914539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292127, -0.599818, 0.744903,
		0.911298, -0.410893, 0.026517,
		0.290170, 0.686575, 0.666646,
		35.284332, 37.768456, 40.114532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699291, 37.065556, 40.045174>,  <35.081211, 37.287853, 39.647881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699291, 37.065556, 40.045174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442635, 37.318172, 40.219276>,  <35.288643, 37.469742, 40.323738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442635, 37.318172, 40.219276>,  <35.699291, 37.065556, 40.045174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442635, 37.318172, 40.219276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186455, -0.678887, 0.710173,
		0.743999, 0.374518, 0.553355,
		-0.641638, 0.631545, 0.435261,
		35.250145, 37.507637, 40.349854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718559, 37.126415, 39.278950>,  <35.699291, 37.065556, 40.045174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718559, 37.126415, 39.278950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502846, 37.445717, 39.171646>,  <35.373417, 37.637299, 39.107265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502846, 37.445717, 39.171646>,  <35.718559, 37.126415, 39.278950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502846, 37.445717, 39.171646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809400, 0.403385, -0.426793,
		-0.232479, -0.447290, -0.863647,
		-0.539282, 0.798256, -0.268258,
		35.341061, 37.685192, 39.091167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603374, 37.256638, 38.564022>,  <35.718559, 37.126415, 39.278950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603374, 37.256638, 38.564022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579582, 37.614155, 38.741829>,  <35.565308, 37.828667, 38.848515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579582, 37.614155, 38.741829>,  <35.603374, 37.256638, 38.564022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579582, 37.614155, 38.741829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616822, 0.383025, -0.687621,
		-0.784852, 0.233290, -0.574093,
		-0.059477, 0.893794, 0.444517,
		35.561741, 37.882294, 38.875183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388081, 37.727638, 38.105350>,  <35.603374, 37.256638, 38.564022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388081, 37.727638, 38.105350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583096, 37.960033, 38.366043>,  <35.700104, 38.099472, 38.522461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583096, 37.960033, 38.366043>,  <35.388081, 37.727638, 38.105350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583096, 37.960033, 38.366043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515226, 0.411189, -0.751975,
		-0.704875, 0.702408, -0.098870,
		0.487538, 0.580988, 0.651735,
		35.729359, 38.134331, 38.561565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411625, 38.344044, 37.749496>,  <35.388081, 37.727638, 38.105350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411625, 38.344044, 37.749496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688362, 38.356274, 38.038055>,  <35.854404, 38.363613, 38.211189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688362, 38.356274, 38.038055>,  <35.411625, 38.344044, 37.749496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688362, 38.356274, 38.038055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607916, 0.514423, -0.604820,
		-0.389598, 0.856991, 0.337313,
		0.691847, 0.030579, 0.721397,
		35.895916, 38.365448, 38.254475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408367, 39.000561, 37.776340>,  <35.411625, 38.344044, 37.749496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408367, 39.000561, 37.776340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745247, 38.857086, 37.937359>,  <35.947376, 38.771000, 38.033970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745247, 38.857086, 37.937359>,  <35.408367, 39.000561, 37.776340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745247, 38.857086, 37.937359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538138, 0.513214, -0.668595,
		0.033224, 0.779716, 0.625252,
		0.842202, -0.358685, 0.402544,
		35.997906, 38.749481, 38.058121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931309, 39.496616, 37.988338>,  <35.408367, 39.000561, 37.776340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931309, 39.496616, 37.988338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163609, 39.172802, 37.953991>,  <36.302990, 38.978512, 37.933380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163609, 39.172802, 37.953991>,  <35.931309, 39.496616, 37.988338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163609, 39.172802, 37.953991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621607, 0.509085, -0.595347,
		0.525671, 0.292372, 0.798867,
		0.580754, -0.809538, -0.085871,
		36.337833, 38.929939, 37.928230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677692, 39.709892, 38.199249>,  <35.931309, 39.496616, 37.988338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677692, 39.709892, 38.199249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693386, 39.391644, 37.957439>,  <36.702801, 39.200695, 37.812355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693386, 39.391644, 37.957439>,  <36.677692, 39.709892, 38.199249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693386, 39.391644, 37.957439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798924, 0.388337, -0.459254,
		0.600150, -0.464950, 0.650877,
		0.039230, -0.795623, -0.604520,
		36.705154, 39.152958, 37.776085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207088, 39.997692, 37.959221>,  <36.677692, 39.709892, 38.199249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207088, 39.997692, 37.959221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114769, 39.661652, 37.762871>,  <37.059380, 39.460026, 37.645061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114769, 39.661652, 37.762871>,  <37.207088, 39.997692, 37.959221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114769, 39.661652, 37.762871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658901, 0.236272, -0.714161,
		0.715948, -0.488265, 0.499014,
		-0.230797, -0.840103, -0.490877,
		37.045528, 39.409622, 37.615608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807655, 39.548172, 37.938465>,  <37.207088, 39.997692, 37.959221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807655, 39.548172, 37.938465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562634, 39.312275, 37.727951>,  <37.415619, 39.170738, 37.601643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562634, 39.312275, 37.727951>,  <37.807655, 39.548172, 37.938465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562634, 39.312275, 37.727951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348629, 0.395978, -0.849505,
		0.709388, -0.703849, -0.036957,
		-0.612558, -0.589744, -0.526284,
		37.378868, 39.135353, 37.570065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196461, 39.246735, 37.399719>,  <37.807655, 39.548172, 37.938465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196461, 39.246735, 37.399719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822098, 39.200459, 37.266644>,  <37.597481, 39.172691, 37.186798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822098, 39.200459, 37.266644>,  <38.196461, 39.246735, 37.399719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822098, 39.200459, 37.266644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292411, 0.271401, -0.916972,
		0.196379, -0.955488, -0.220178,
		-0.935912, -0.115692, -0.332692,
		37.541325, 39.165752, 37.166836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197746, 38.856529, 36.781342>,  <38.196461, 39.246735, 37.399719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197746, 38.856529, 36.781342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828201, 39.005882, 36.747700>,  <37.606476, 39.095493, 36.727516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828201, 39.005882, 36.747700>,  <38.197746, 38.856529, 36.781342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828201, 39.005882, 36.747700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138933, 0.122411, -0.982707,
		-0.356627, -0.919567, -0.164965,
		-0.923859, 0.373379, -0.084103,
		37.551044, 39.117897, 36.722469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903156, 38.546589, 36.223923>,  <38.197746, 38.856529, 36.781342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903156, 38.546589, 36.223923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728657, 38.902378, 36.278378>,  <37.623959, 39.115852, 36.311050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728657, 38.902378, 36.278378>,  <37.903156, 38.546589, 36.223923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728657, 38.902378, 36.278378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161389, 0.226184, -0.960622,
		-0.885237, -0.397095, -0.242223,
		-0.436245, 0.889470, 0.136140,
		37.597782, 39.169220, 36.319218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346272, 38.602810, 35.691372>,  <37.903156, 38.546589, 36.223923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346272, 38.602810, 35.691372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504642, 38.948734, 35.814877>,  <37.599667, 39.156288, 35.888981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504642, 38.948734, 35.814877>,  <37.346272, 38.602810, 35.691372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504642, 38.948734, 35.814877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050441, 0.315253, -0.947666,
		-0.916894, 0.390784, 0.081195,
		0.395929, 0.864814, 0.308765,
		37.623421, 39.208179, 35.907505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972721, 39.199417, 35.355549>,  <37.346272, 38.602810, 35.691372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972721, 39.199417, 35.355549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362038, 39.269985, 35.414322>,  <37.595627, 39.312325, 35.449585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362038, 39.269985, 35.414322>,  <36.972721, 39.199417, 35.355549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362038, 39.269985, 35.414322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103653, 0.233399, -0.966841,
		-0.204862, 0.956243, 0.208878,
		0.973287, 0.176418, 0.146933,
		37.654022, 39.322910, 35.458401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013298, 39.790741, 34.901596>,  <36.972721, 39.199417, 35.355549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013298, 39.790741, 34.901596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378197, 39.697689, 35.036469>,  <37.597134, 39.641857, 35.117393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378197, 39.697689, 35.036469>,  <37.013298, 39.790741, 34.901596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378197, 39.697689, 35.036469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392773, 0.262916, -0.881251,
		0.116359, 0.936353, 0.331216,
		0.912244, -0.232634, 0.337182,
		37.651871, 39.627899, 35.137623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432594, 40.246719, 34.571354>,  <37.013298, 39.790741, 34.901596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432594, 40.246719, 34.571354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695290, 39.973518, 34.699230>,  <37.852909, 39.809597, 34.775955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695290, 39.973518, 34.699230>,  <37.432594, 40.246719, 34.571354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695290, 39.973518, 34.699230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479392, 0.050870, -0.876125,
		0.582130, 0.728646, 0.360833,
		0.656741, -0.682999, 0.319694,
		37.892311, 39.768620, 34.795139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163746, 40.443699, 34.357410>,  <37.432594, 40.246719, 34.571354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163746, 40.443699, 34.357410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156727, 40.044754, 34.385567>,  <38.152515, 39.805386, 34.402458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156727, 40.044754, 34.385567>,  <38.163746, 40.443699, 34.357410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156727, 40.044754, 34.385567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359895, -0.071978, -0.930212,
		0.932828, 0.009012, 0.360210,
		-0.017544, -0.997366, 0.070387,
		38.151463, 39.745544, 34.406681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777676, 40.218487, 34.295326>,  <38.163746, 40.443699, 34.357410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777676, 40.218487, 34.295326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534901, 39.922123, 34.180309>,  <38.389236, 39.744305, 34.111298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534901, 39.922123, 34.180309>,  <38.777676, 40.218487, 34.295326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534901, 39.922123, 34.180309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436331, -0.008241, -0.899748,
		0.664263, -0.671553, 0.328285,
		-0.606934, -0.740911, -0.287545,
		38.352821, 39.699848, 34.094048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187714, 39.693531, 33.975693>,  <38.777676, 40.218487, 34.295326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187714, 39.693531, 33.975693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813923, 39.639431, 33.843964>,  <38.589649, 39.606972, 33.764927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813923, 39.639431, 33.843964>,  <39.187714, 39.693531, 33.975693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813923, 39.639431, 33.843964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352025, -0.212869, -0.911463,
		0.053174, -0.967674, 0.246534,
		-0.934479, -0.135253, -0.329326,
		38.533581, 39.598854, 33.745167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524815, 39.020256, 34.188465>,  <39.187714, 39.693531, 33.975693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524815, 39.020256, 34.188465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165009, 39.051083, 34.016445>,  <38.949127, 39.069580, 33.913235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165009, 39.051083, 34.016445>,  <39.524815, 39.020256, 34.188465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165009, 39.051083, 34.016445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426211, -0.061596, -0.902525,
		-0.096048, -0.995121, 0.022557,
		-0.899511, 0.077072, -0.430047,
		38.895157, 39.074203, 33.887432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501564, 38.633915, 33.585300>,  <39.524815, 39.020256, 34.188465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501564, 38.633915, 33.585300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164700, 38.829613, 33.494610>,  <38.962582, 38.947029, 33.440193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164700, 38.829613, 33.494610>,  <39.501564, 38.633915, 33.585300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164700, 38.829613, 33.494610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237020, -0.041808, -0.970605,
		-0.484338, -0.871147, -0.080750,
		-0.842163, 0.489240, -0.226728,
		38.912052, 38.976383, 33.426590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997173, 38.131298, 33.262779>,  <39.501564, 38.633915, 33.585300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997173, 38.131298, 33.262779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930183, 38.511452, 33.157925>,  <38.889988, 38.739544, 33.095013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930183, 38.511452, 33.157925>,  <38.997173, 38.131298, 33.262779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930183, 38.511452, 33.157925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244784, -0.217482, -0.944872,
		-0.955004, -0.222411, -0.196217,
		-0.167476, 0.950387, -0.262138,
		38.879940, 38.796566, 33.079285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406925, 37.759289, 33.873047>,  <38.997173, 38.131298, 33.262779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406925, 37.759289, 33.873047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724010, 37.978889, 33.979027>,  <39.914261, 38.110649, 34.042614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724010, 37.978889, 33.979027>,  <39.406925, 37.759289, 33.873047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724010, 37.978889, 33.979027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597680, -0.785481, -0.160620,
		0.119932, 0.285681, -0.950790,
		0.792713, 0.549005, 0.264951,
		39.961826, 38.143593, 34.058514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024738, 37.511303, 33.490074>,  <39.406925, 37.759289, 33.873047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024738, 37.511303, 33.490074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181614, 37.729496, 33.786354>,  <40.275738, 37.860413, 33.964123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181614, 37.729496, 33.786354>,  <40.024738, 37.511303, 33.490074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181614, 37.729496, 33.786354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764579, -0.641013, 0.067240,
		0.511474, 0.539949, -0.668467,
		0.392190, 0.545487, 0.740696,
		40.299271, 37.893143, 34.008564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669842, 38.031223, 33.430984>,  <40.024738, 37.511303, 33.490074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669842, 38.031223, 33.430984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670082, 37.839054, 33.781799>,  <40.670227, 37.723755, 33.992287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670082, 37.839054, 33.781799>,  <40.669842, 38.031223, 33.430984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670082, 37.839054, 33.781799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855911, -0.453290, -0.248886,
		0.517123, 0.750816, 0.410925,
		0.000599, -0.480420, 0.877038,
		40.670261, 37.694927, 34.044910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375828, 38.178123, 33.700836>,  <40.669842, 38.031223, 33.430984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375828, 38.178123, 33.700836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199028, 37.852917, 33.852436>,  <41.092949, 37.657795, 33.943398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199028, 37.852917, 33.852436>,  <41.375828, 38.178123, 33.700836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199028, 37.852917, 33.852436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842064, -0.521680, -0.137036,
		0.309131, 0.258576, 0.915192,
		-0.442003, -0.813012, 0.379005,
		41.066425, 37.609013, 33.966137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017231, 37.926613, 33.904030>,  <41.375828, 38.178123, 33.700836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017231, 37.926613, 33.904030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715191, 37.664536, 33.913406>,  <41.533966, 37.507290, 33.919033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715191, 37.664536, 33.913406>,  <42.017231, 37.926613, 33.904030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715191, 37.664536, 33.913406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645274, -0.749047, -0.150168,
		0.115945, -0.098268, 0.988383,
		-0.755102, -0.655189, 0.023439,
		41.488659, 37.467979, 33.920437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168480, 37.437859, 34.388103>,  <42.017231, 37.926613, 33.904030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168480, 37.437859, 34.388103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965965, 37.267200, 34.088329>,  <41.844456, 37.164806, 33.908466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965965, 37.267200, 34.088329>,  <42.168480, 37.437859, 34.388103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965965, 37.267200, 34.088329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776039, -0.604397, -0.180185,
		-0.376081, -0.672815, 0.637090,
		-0.506286, -0.426643, -0.749433,
		41.814079, 37.139206, 33.863499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932178, 36.628445, 34.471622>,  <42.168480, 37.437859, 34.388103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932178, 36.628445, 34.471622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990891, 36.722347, 34.087257>,  <42.026119, 36.778687, 33.856640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990891, 36.722347, 34.087257>,  <41.932178, 36.628445, 34.471622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990891, 36.722347, 34.087257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805141, -0.592683, -0.021806,
		-0.574633, -0.770466, -0.276006,
		0.146783, 0.234754, -0.960909,
		42.034927, 36.792774, 33.798985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979488, 36.014935, 34.010517>,  <41.932178, 36.628445, 34.471622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979488, 36.014935, 34.010517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.191654, 36.328884, 33.882374>,  <42.318954, 36.517254, 33.805489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.191654, 36.328884, 33.882374>,  <41.979488, 36.014935, 34.010517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191654, 36.328884, 33.882374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834506, -0.549925, 0.034380,
		-0.149189, -0.285577, -0.946672,
		0.530417, 0.784875, -0.320359,
		42.350780, 36.564346, 33.786266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420383, 35.792225, 33.408409>,  <41.979488, 36.014935, 34.010517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420383, 35.792225, 33.408409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594551, 36.111088, 33.575714>,  <42.699051, 36.302406, 33.676098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594551, 36.111088, 33.575714>,  <42.420383, 35.792225, 33.408409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594551, 36.111088, 33.575714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884038, -0.466353, -0.031484,
		0.169962, 0.383472, -0.907779,
		0.435419, 0.797160, 0.418267,
		42.725178, 36.350235, 33.701195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112396, 35.770714, 33.110863>,  <42.420383, 35.792225, 33.408409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112396, 35.770714, 33.110863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062206, 35.961029, 33.459087>,  <43.032093, 36.075218, 33.668022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062206, 35.961029, 33.459087>,  <43.112396, 35.770714, 33.110863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062206, 35.961029, 33.459087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834928, -0.423326, 0.351695,
		0.535865, 0.770986, -0.344134,
		-0.125471, 0.475789, 0.870564,
		43.024567, 36.103767, 33.720257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693665, 36.084534, 33.280857>,  <43.112396, 35.770714, 33.110863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.693665, 36.084534, 33.280857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543941, 36.045536, 33.649723>,  <43.454109, 36.022137, 33.871044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543941, 36.045536, 33.649723>,  <43.693665, 36.084534, 33.280857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543941, 36.045536, 33.649723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879609, -0.352162, 0.319797,
		0.293572, 0.930847, 0.217575,
		-0.374304, -0.097497, 0.922166,
		43.431652, 36.016289, 33.926373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141506, 36.328938, 33.836281>,  <43.693665, 36.084534, 33.280857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141506, 36.328938, 33.836281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888206, 36.054996, 33.980484>,  <43.736225, 35.890633, 34.067005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888206, 36.054996, 33.980484>,  <44.141506, 36.328938, 33.836281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888206, 36.054996, 33.980484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772925, -0.535661, 0.340080,
		-0.039795, 0.494003, 0.868549,
		-0.633249, -0.684857, 0.360510,
		43.698231, 35.849541, 34.088638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061329, 36.314041, 34.643322>,  <44.141506, 36.328938, 33.836281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061329, 36.314041, 34.643322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989578, 35.949009, 34.496342>,  <43.946526, 35.729988, 34.408154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989578, 35.949009, 34.496342>,  <44.061329, 36.314041, 34.643322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989578, 35.949009, 34.496342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689214, -0.383103, 0.614993,
		-0.702002, -0.142936, 0.697684,
		-0.179380, -0.912579, -0.367453,
		43.935764, 35.675236, 34.386105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.519382, 36.942768, 35.020054>,  <44.061329, 36.314041, 34.643322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.519382, 36.942768, 35.020054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843334, 36.885101, 35.247494>,  <45.037704, 36.850502, 35.383957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843334, 36.885101, 35.247494>,  <44.519382, 36.942768, 35.020054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843334, 36.885101, 35.247494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542848, -0.551505, 0.633370,
		0.222278, -0.821620, -0.524913,
		0.809881, -0.144164, 0.568602,
		45.086300, 36.841854, 35.418076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.534939, 36.136879, 35.193527>,  <44.519382, 36.942768, 35.020054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.534939, 36.136879, 35.193527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658295, 36.406269, 35.462250>,  <44.732307, 36.567905, 35.623482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658295, 36.406269, 35.462250>,  <44.534939, 36.136879, 35.193527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658295, 36.406269, 35.462250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416490, -0.539343, 0.731878,
		0.855236, -0.505506, 0.114167,
		0.308393, 0.673478, 0.671804,
		44.750813, 36.608311, 35.663792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.682854, 35.398781, 35.309498>,  <44.534939, 36.136879, 35.193527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.682854, 35.398781, 35.309498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025864, 35.495033, 35.491375>,  <45.231670, 35.552784, 35.600502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025864, 35.495033, 35.491375>,  <44.682854, 35.398781, 35.309498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.025864, 35.495033, 35.491375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514194, -0.428038, -0.743228,
		0.015784, 0.871139, -0.490783,
		0.857528, 0.240627, 0.454691,
		45.283123, 35.567223, 35.627781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.367092, 35.090034, 35.118355>,  <44.682854, 35.398781, 35.309498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.367092, 35.090034, 35.118355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202435, 34.852497, 35.394875>,  <45.103642, 34.709972, 35.560787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.202435, 34.852497, 35.394875>,  <45.367092, 35.090034, 35.118355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202435, 34.852497, 35.394875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699239, 0.692289, 0.178327,
		-0.584480, -0.409980, -0.700214,
		-0.411640, -0.593845, 0.691303,
		45.078941, 34.674343, 35.602264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.024788, 35.388546, 34.985531>,  <45.367092, 35.090034, 35.118355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.024788, 35.388546, 34.985531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203617, 35.075108, 34.812969>,  <46.310913, 34.887047, 34.709431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203617, 35.075108, 34.812969>,  <46.024788, 35.388546, 34.985531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.203617, 35.075108, 34.812969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886374, 0.323224, 0.331462,
		-0.120291, -0.530572, 0.839061,
		0.447069, -0.783594, -0.431404,
		46.337738, 34.840031, 34.683548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.510662, 35.225697, 35.495289>,  <46.024788, 35.388546, 34.985531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.510662, 35.225697, 35.495289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.621620, 35.029758, 35.164688>,  <46.688194, 34.912197, 34.966328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.621620, 35.029758, 35.164688>,  <46.510662, 35.225697, 35.495289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.621620, 35.029758, 35.164688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959259, 0.189208, 0.209815,
		0.053604, -0.851032, 0.522372,
		0.277396, -0.489843, -0.826502,
		46.704838, 34.882805, 34.916737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.210537, 35.234200, 35.489235>,  <46.510662, 35.225697, 35.495289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.210537, 35.234200, 35.489235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203602, 35.041988, 35.138512>,  <47.199440, 34.926662, 34.928078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203602, 35.041988, 35.138512>,  <47.210537, 35.234200, 35.489235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.203602, 35.041988, 35.138512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918883, 0.338038, -0.203433,
		0.394149, -0.809209, 0.435691,
		-0.017340, -0.480532, -0.876806,
		47.198399, 34.897827, 34.875469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.815670, 34.863201, 35.521336>,  <47.210537, 35.234200, 35.489235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.815670, 34.863201, 35.521336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.681004, 34.977509, 35.162453>,  <47.600204, 35.046093, 34.947121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.681004, 34.977509, 35.162453>,  <47.815670, 34.863201, 35.521336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.681004, 34.977509, 35.162453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879293, 0.436316, -0.190975,
		0.336893, -0.853207, -0.398171,
		-0.336670, 0.285771, -0.897211,
		47.580002, 35.063240, 34.893288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.527760, 33.499317, 24.616625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.252754, 33.685841, 24.393957>,  <36.087749, 33.797752, 24.260357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.252754, 33.685841, 24.393957>,  <36.527760, 33.499317, 24.616625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252754, 33.685841, 24.393957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449785, 0.328378, 0.830579,
		0.570101, 0.821419, -0.016029,
		-0.687516, 0.466304, -0.556670,
		36.046501, 33.825733, 24.226955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486137, 34.081699, 24.866865>,  <36.527760, 33.499317, 24.616625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486137, 34.081699, 24.866865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138039, 34.063698, 24.670639>,  <35.929180, 34.052898, 24.552904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138039, 34.063698, 24.670639>,  <36.486137, 34.081699, 24.866865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138039, 34.063698, 24.670639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488059, 0.213988, 0.846172,
		0.066897, 0.975799, -0.208184,
		-0.870243, -0.045000, -0.490563,
		35.876965, 34.050198, 24.523470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183170, 34.662258, 25.076336>,  <36.486137, 34.081699, 24.866865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183170, 34.662258, 25.076336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.869835, 34.466167, 24.923468>,  <35.681831, 34.348515, 24.831745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.869835, 34.466167, 24.923468>,  <36.183170, 34.662258, 25.076336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869835, 34.466167, 24.923468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573891, 0.334180, 0.747645,
		-0.238799, 0.804987, -0.543112,
		-0.783342, -0.490224, -0.382173,
		35.634830, 34.319099, 24.808815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706051, 35.198650, 25.079155>,  <36.183170, 34.662258, 25.076336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706051, 35.198650, 25.079155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.486061, 34.865906, 25.049395>,  <35.354069, 34.666260, 25.031538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.486061, 34.865906, 25.049395>,  <35.706051, 35.198650, 25.079155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486061, 34.865906, 25.049395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661907, 0.379811, 0.646238,
		-0.509320, 0.404662, -0.759501,
		-0.549975, -0.831861, -0.074403,
		35.321068, 34.616348, 25.027073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986759, 35.294239, 24.918060>,  <35.706051, 35.198650, 25.079155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986759, 35.294239, 24.918060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.004589, 34.949162, 25.119566>,  <35.015285, 34.742115, 25.240469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.004589, 34.949162, 25.119566>,  <34.986759, 35.294239, 24.918060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004589, 34.949162, 25.119566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555539, 0.397700, 0.730213,
		-0.830295, -0.312407, -0.461532,
		0.044572, -0.862691, 0.503763,
		35.017960, 34.690353, 25.270695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191624, 35.133984, 25.201279>,  <34.986759, 35.294239, 24.918060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191624, 35.133984, 25.201279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.442036, 34.897881, 25.405117>,  <34.592281, 34.756218, 25.527420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.442036, 34.897881, 25.405117>,  <34.191624, 35.133984, 25.201279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442036, 34.897881, 25.405117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561982, 0.111553, 0.819593,
		-0.540615, -0.799472, -0.261877,
		0.626029, -0.590254, 0.509596,
		34.629845, 34.720806, 25.557997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739086, 34.960297, 25.797205>,  <34.191624, 35.133984, 25.201279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739086, 34.960297, 25.797205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.102444, 34.843040, 25.916460>,  <34.320457, 34.772686, 25.988012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.102444, 34.843040, 25.916460>,  <33.739086, 34.960297, 25.797205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102444, 34.843040, 25.916460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174398, 0.382416, 0.907383,
		-0.379999, -0.876258, 0.296264,
		0.908398, -0.293136, 0.298136,
		34.374962, 34.755100, 26.005901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713890, 34.640266, 26.531897>,  <33.739086, 34.960297, 25.797205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713890, 34.640266, 26.531897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.092785, 34.753616, 26.471983>,  <34.320122, 34.821625, 26.436035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.092785, 34.753616, 26.471983>,  <33.713890, 34.640266, 26.531897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092785, 34.753616, 26.471983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039197, 0.361383, 0.931593,
		0.318121, -0.888313, 0.331209,
		0.947239, 0.283376, -0.149783,
		34.376957, 34.838631, 26.427048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993359, 34.617111, 27.163815>,  <33.713890, 34.640266, 26.531897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993359, 34.617111, 27.163815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.266273, 34.858429, 26.998640>,  <34.430023, 35.003220, 26.899536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.266273, 34.858429, 26.998640>,  <33.993359, 34.617111, 27.163815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266273, 34.858429, 26.998640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208397, 0.380899, 0.900825,
		0.700754, -0.700676, 0.134157,
		0.682287, 0.603299, -0.412935,
		34.470959, 35.039417, 26.874760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577328, 34.662491, 27.691538>,  <33.993359, 34.617111, 27.163815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577328, 34.662491, 27.691538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.605724, 34.980350, 27.450377>,  <34.622761, 35.171066, 27.305679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.605724, 34.980350, 27.450377>,  <34.577328, 34.662491, 27.691538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605724, 34.980350, 27.450377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136524, 0.590999, 0.795035,
		0.988090, -0.138749, -0.066535,
		0.070988, 0.794650, -0.602903,
		34.627022, 35.218746, 27.269506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259708, 34.954006, 27.839619>,  <34.577328, 34.662491, 27.691538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259708, 34.954006, 27.839619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.058857, 35.248112, 27.657513>,  <34.938347, 35.424576, 27.548250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.058857, 35.248112, 27.657513>,  <35.259708, 34.954006, 27.839619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058857, 35.248112, 27.657513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277221, 0.635510, 0.720608,
		0.819158, 0.235626, -0.522934,
		-0.502124, 0.735260, -0.455263,
		34.908218, 35.468689, 27.520933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703705, 35.572975, 27.807653>,  <35.259708, 34.954006, 27.839619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703705, 35.572975, 27.807653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.339634, 35.730801, 27.757219>,  <35.121193, 35.825497, 27.726959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.339634, 35.730801, 27.757219>,  <35.703705, 35.572975, 27.807653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339634, 35.730801, 27.757219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164264, 0.623254, 0.764573,
		0.380255, 0.675186, -0.632084,
		-0.910178, 0.394561, -0.126087,
		35.066582, 35.849171, 27.719393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877975, 36.236610, 27.824652>,  <35.703705, 35.572975, 27.807653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877975, 36.236610, 27.824652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.499557, 36.182846, 27.942587>,  <35.272507, 36.150585, 28.013348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.499557, 36.182846, 27.942587>,  <35.877975, 36.236610, 27.824652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499557, 36.182846, 27.942587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190454, 0.505487, 0.841552,
		-0.262154, 0.852300, -0.452614,
		-0.946046, -0.134414, 0.294840,
		35.215744, 36.142521, 28.031038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592655, 36.872211, 27.877188>,  <35.877975, 36.236610, 27.824652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592655, 36.872211, 27.877188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.369755, 36.648441, 28.122629>,  <35.236015, 36.514179, 28.269894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.369755, 36.648441, 28.122629>,  <35.592655, 36.872211, 27.877188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369755, 36.648441, 28.122629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001537, 0.739670, 0.672968,
		-0.830343, 0.374069, -0.413041,
		-0.557251, -0.559429, 0.613605,
		35.202579, 36.480614, 28.306711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165646, 37.356651, 28.309397>,  <35.592655, 36.872211, 27.877188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165646, 37.356651, 28.309397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.095367, 37.024330, 28.520643>,  <35.053200, 36.824940, 28.647390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.095367, 37.024330, 28.520643>,  <35.165646, 37.356651, 28.309397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095367, 37.024330, 28.520643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063870, 0.525711, 0.848262,
		-0.982371, 0.182763, -0.039299,
		-0.175691, -0.830798, 0.528116,
		35.042660, 36.775089, 28.679079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891048, 37.625660, 28.941645>,  <35.165646, 37.356651, 28.309397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891048, 37.625660, 28.941645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.952293, 37.242458, 29.038624>,  <34.989040, 37.012535, 29.096811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.952293, 37.242458, 29.038624>,  <34.891048, 37.625660, 28.941645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952293, 37.242458, 29.038624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294937, 0.278460, 0.914042,
		-0.943169, -0.068449, 0.325188,
		0.153117, -0.958006, 0.242446,
		34.998230, 36.955055, 29.111359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453735, 37.374859, 29.609898>,  <34.891048, 37.625660, 28.941645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453735, 37.374859, 29.609898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.799263, 37.180161, 29.557909>,  <35.006580, 37.063339, 29.526716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.799263, 37.180161, 29.557909>,  <34.453735, 37.374859, 29.609898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799263, 37.180161, 29.557909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304974, 0.299865, 0.903920,
		-0.401007, -0.820462, 0.407474,
		0.863819, -0.486748, -0.129972,
		35.058411, 37.034138, 29.518917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551849, 37.005447, 30.225887>,  <34.453735, 37.374859, 29.609898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551849, 37.005447, 30.225887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.922508, 37.001942, 30.075554>,  <35.144901, 36.999840, 29.985353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.922508, 37.001942, 30.075554>,  <34.551849, 37.005447, 30.225887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922508, 37.001942, 30.075554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374580, -0.063373, 0.925027,
		-0.031917, -0.997952, -0.055444,
		0.926645, -0.008756, -0.375835,
		35.200500, 36.999313, 29.962803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864841, 36.412220, 30.476782>,  <34.551849, 37.005447, 30.225887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864841, 36.412220, 30.476782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136776, 36.689896, 30.382185>,  <35.299934, 36.856503, 30.325426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136776, 36.689896, 30.382185>,  <34.864841, 36.412220, 30.476782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136776, 36.689896, 30.382185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373790, -0.050547, 0.926135,
		0.630958, -0.718016, -0.293844,
		0.679833, 0.694188, -0.236494,
		35.340725, 36.898151, 30.311237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408054, 36.376484, 30.977795>,  <34.864841, 36.412220, 30.476782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408054, 36.376484, 30.977795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.508633, 36.726109, 30.811520>,  <35.568977, 36.935883, 30.711756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.508633, 36.726109, 30.811520>,  <35.408054, 36.376484, 30.977795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508633, 36.726109, 30.811520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150343, 0.388999, 0.908888,
		0.956124, -0.291028, -0.033599,
		0.251442, 0.874061, -0.415685,
		35.584064, 36.988327, 30.686813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857349, 36.573441, 31.385487>,  <35.408054, 36.376484, 30.977795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857349, 36.573441, 31.385487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757282, 36.911087, 31.195799>,  <35.697243, 37.113674, 31.081985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757282, 36.911087, 31.195799>,  <35.857349, 36.573441, 31.385487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757282, 36.911087, 31.195799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174977, 0.521145, 0.835339,
		0.952260, 0.125998, -0.278074,
		-0.250168, 0.844116, -0.474219,
		35.682232, 37.164322, 31.053534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381847, 37.121231, 31.539215>,  <35.857349, 36.573441, 31.385487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381847, 37.121231, 31.539215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.057636, 37.319107, 31.413788>,  <35.863110, 37.437832, 31.338531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.057636, 37.319107, 31.413788>,  <36.381847, 37.121231, 31.539215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057636, 37.319107, 31.413788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124303, 0.668467, 0.733280,
		0.572359, 0.555366, -0.603303,
		-0.810527, 0.494691, -0.313570,
		35.814480, 37.467514, 31.319717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834076, 37.387939, 32.013092>,  <36.381847, 37.121231, 31.539215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834076, 37.387939, 32.013092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115734, 37.133984, 32.140274>,  <37.284729, 36.981609, 32.216583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115734, 37.133984, 32.140274>,  <36.834076, 37.387939, 32.013092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115734, 37.133984, 32.140274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004275, -0.443985, -0.896024,
		0.710042, 0.632292, -0.309916,
		0.704147, -0.634889, 0.317951,
		37.326977, 36.943516, 32.235661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335526, 37.358826, 31.471718>,  <36.834076, 37.387939, 32.013092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335526, 37.358826, 31.471718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407806, 37.038021, 31.699442>,  <37.451176, 36.845539, 31.836077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407806, 37.038021, 31.699442>,  <37.335526, 37.358826, 31.471718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407806, 37.038021, 31.699442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040934, -0.572207, -0.819087,
		0.982685, 0.171318, -0.070571,
		0.180705, -0.802016, 0.569312,
		37.462017, 36.797417, 31.870235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955547, 37.035912, 31.340000>,  <37.335526, 37.358826, 31.471718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955547, 37.035912, 31.340000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.741154, 36.730049, 31.483118>,  <37.612518, 36.546532, 31.568989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.741154, 36.730049, 31.483118>,  <37.955547, 37.035912, 31.340000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741154, 36.730049, 31.483118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115170, -0.486079, -0.866293,
		0.836337, -0.423110, 0.348595,
		-0.535982, -0.764660, 0.357796,
		37.580360, 36.500652, 31.590456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340405, 36.499397, 31.134592>,  <37.955547, 37.035912, 31.340000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340405, 36.499397, 31.134592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.987110, 36.336124, 31.226925>,  <37.775135, 36.238159, 31.282326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.987110, 36.336124, 31.226925>,  <38.340405, 36.499397, 31.134592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987110, 36.336124, 31.226925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143228, -0.703551, -0.696062,
		0.446525, -0.581723, 0.679863,
		-0.883233, -0.408184, 0.230834,
		37.722141, 36.213669, 31.296175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457363, 35.791862, 31.260345>,  <38.340405, 36.499397, 31.134592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457363, 35.791862, 31.260345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065151, 35.820431, 31.187183>,  <37.829823, 35.837574, 31.143286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065151, 35.820431, 31.187183>,  <38.457363, 35.791862, 31.260345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065151, 35.820431, 31.187183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049417, -0.811757, -0.581901,
		-0.190036, -0.579612, 0.792424,
		-0.980533, 0.071423, -0.182906,
		37.770992, 35.841858, 31.132311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251083, 35.198784, 31.266289>,  <38.457363, 35.791862, 31.260345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251083, 35.198784, 31.266289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.943722, 35.373245, 31.078960>,  <37.759304, 35.477924, 30.966564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.943722, 35.373245, 31.078960>,  <38.251083, 35.198784, 31.266289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943722, 35.373245, 31.078960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087160, -0.796295, -0.598596,
		-0.634001, -0.419145, 0.649892,
		-0.768405, 0.436155, -0.468319,
		37.713200, 35.504093, 30.938465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728596, 34.669720, 31.203917>,  <38.251083, 35.198784, 31.266289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728596, 34.669720, 31.203917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.674591, 34.954552, 30.928320>,  <37.642189, 35.125450, 30.762962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.674591, 34.954552, 30.928320>,  <37.728596, 34.669720, 31.203917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674591, 34.954552, 30.928320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083804, -0.701072, -0.708149,
		-0.987294, -0.037869, 0.154329,
		-0.135013, 0.712084, -0.688990,
		37.634087, 35.168179, 30.721622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094475, 34.435158, 30.741503>,  <37.728596, 34.669720, 31.203917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094475, 34.435158, 30.741503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.313770, 34.699154, 30.536039>,  <37.445347, 34.857552, 30.412762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.313770, 34.699154, 30.536039>,  <37.094475, 34.435158, 30.741503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313770, 34.699154, 30.536039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099191, -0.558539, -0.823526,
		-0.830416, 0.502443, -0.240750,
		0.548243, 0.659989, -0.513658,
		37.478245, 34.897152, 30.381943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732361, 34.362808, 30.018816>,  <37.094475, 34.435158, 30.741503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732361, 34.362808, 30.018816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.086426, 34.544945, 29.980568>,  <37.298866, 34.654228, 29.957619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.086426, 34.544945, 29.980568>,  <36.732361, 34.362808, 30.018816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086426, 34.544945, 29.980568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047542, -0.292956, -0.954943,
		-0.462838, 0.840738, -0.280963,
		0.885167, 0.455342, -0.095621,
		37.351974, 34.681549, 29.951881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769169, 34.791740, 29.282486>,  <36.732361, 34.362808, 30.018816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769169, 34.791740, 29.282486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.139462, 34.709980, 29.409760>,  <37.361637, 34.660923, 29.486124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.139462, 34.709980, 29.409760>,  <36.769169, 34.791740, 29.282486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139462, 34.709980, 29.409760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218319, -0.398158, -0.890958,
		0.308796, 0.894255, -0.323964,
		0.925733, -0.204396, 0.318183,
		37.417183, 34.648663, 29.505215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209343, 35.134537, 28.754541>,  <36.769169, 34.791740, 29.282486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209343, 35.134537, 28.754541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386612, 34.831825, 28.946741>,  <37.492973, 34.650196, 29.062061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386612, 34.831825, 28.946741>,  <37.209343, 35.134537, 28.754541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386612, 34.831825, 28.946741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107205, -0.487423, -0.866560,
		0.890003, 0.435547, -0.134881,
		0.443172, -0.756781, 0.480501,
		37.519562, 34.604790, 29.090891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579933, 34.998066, 28.239960>,  <37.209343, 35.134537, 28.754541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579933, 34.998066, 28.239960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.633476, 34.694740, 28.495159>,  <37.665604, 34.512745, 28.648279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.633476, 34.694740, 28.495159>,  <37.579933, 34.998066, 28.239960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633476, 34.694740, 28.495159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220612, -0.604835, -0.765183,
		0.966133, 0.243175, 0.086332,
		0.133857, -0.758315, 0.637998,
		37.673634, 34.467247, 28.686558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281120, 34.719269, 28.122093>,  <37.579933, 34.998066, 28.239960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281120, 34.719269, 28.122093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.054516, 34.429554, 28.279306>,  <37.918552, 34.255726, 28.373634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.054516, 34.429554, 28.279306>,  <38.281120, 34.719269, 28.122093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054516, 34.429554, 28.279306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218027, -0.591694, -0.776120,
		0.794689, -0.353988, 0.493114,
		-0.566510, -0.724287, 0.393034,
		37.884563, 34.212269, 28.397217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547394, 34.099655, 27.820379>,  <38.281120, 34.719269, 28.122093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547394, 34.099655, 27.820379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.217373, 33.949154, 27.989008>,  <38.019360, 33.858852, 28.090185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.217373, 33.949154, 27.989008>,  <38.547394, 34.099655, 27.820379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217373, 33.949154, 27.989008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017669, -0.762884, -0.646294,
		0.564783, -0.525776, 0.636065,
		-0.825050, -0.376255, 0.421574,
		37.969856, 33.836277, 28.115480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691502, 33.352512, 28.041729>,  <38.547394, 34.099655, 27.820379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691502, 33.352512, 28.041729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.304928, 33.433517, 27.978487>,  <38.072983, 33.482121, 27.940542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.304928, 33.433517, 27.978487>,  <38.691502, 33.352512, 28.041729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304928, 33.433517, 27.978487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023518, -0.682532, -0.730477,
		-0.255840, -0.702239, 0.664384,
		-0.966433, 0.202510, -0.158103,
		38.014999, 33.494270, 27.931055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397690, 32.678528, 28.000694>,  <38.691502, 33.352512, 28.041729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397690, 32.678528, 28.000694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.164768, 32.948753, 27.819792>,  <38.025013, 33.110889, 27.711250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.164768, 32.948753, 27.819792>,  <38.397690, 32.678528, 28.000694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164768, 32.948753, 27.819792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059658, -0.519296, -0.852510,
		-0.810777, -0.523404, 0.262087,
		-0.582307, 0.675560, -0.452258,
		37.990078, 33.151421, 27.684114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935173, 32.333229, 27.495173>,  <38.397690, 32.678528, 28.000694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935173, 32.333229, 27.495173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869606, 32.711346, 27.382353>,  <37.830265, 32.938217, 27.314661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869606, 32.711346, 27.382353>,  <37.935173, 32.333229, 27.495173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869606, 32.711346, 27.382353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051517, -0.293731, -0.954499,
		-0.985127, -0.141933, 0.096848,
		-0.163922, 0.945292, -0.282051,
		37.820431, 32.994934, 27.297737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283520, 32.379921, 27.164898>,  <37.935173, 32.333229, 27.495173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283520, 32.379921, 27.164898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.503845, 32.671436, 27.002182>,  <37.636040, 32.846344, 26.904552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.503845, 32.671436, 27.002182>,  <37.283520, 32.379921, 27.164898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503845, 32.671436, 27.002182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274874, -0.301804, -0.912885,
		-0.788068, 0.614643, 0.034088,
		0.550811, 0.728785, -0.406792,
		37.669090, 32.890072, 26.880144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.929951, 32.548847, 26.560633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.285805, 32.724365, 26.510019>,  <37.499317, 32.829678, 26.479650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.285805, 32.724365, 26.510019>,  <36.929951, 32.548847, 26.560633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285805, 32.724365, 26.510019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020169, -0.314558, -0.949024,
		-0.456234, 0.841729, -0.288690,
		0.889631, 0.438800, -0.126535,
		37.552692, 32.856007, 26.472059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745811, 32.906898, 25.993649>,  <36.929951, 32.548847, 26.560633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745811, 32.906898, 25.993649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.143703, 32.867733, 26.005873>,  <37.382439, 32.844234, 26.013206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.143703, 32.867733, 26.005873>,  <36.745811, 32.906898, 25.993649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143703, 32.867733, 26.005873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008388, -0.219297, -0.975622,
		0.102229, 0.970733, -0.217319,
		0.994726, -0.097914, 0.030561,
		37.442120, 32.838360, 26.015041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996826, 33.272953, 25.402529>,  <36.745811, 32.906898, 25.993649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996826, 33.272953, 25.402529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.283646, 33.012943, 25.503172>,  <37.455738, 32.856937, 25.563559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.283646, 33.012943, 25.503172>,  <36.996826, 33.272953, 25.402529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283646, 33.012943, 25.503172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159259, -0.198642, -0.967046,
		0.678580, 0.733495, -0.038915,
		0.717053, -0.650021, 0.251610,
		37.498760, 32.817936, 25.578655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476917, 33.337780, 24.877857>,  <36.996826, 33.272953, 25.402529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476917, 33.337780, 24.877857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627087, 33.004906, 25.041086>,  <37.717190, 32.805180, 25.139023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627087, 33.004906, 25.041086>,  <37.476917, 33.337780, 24.877857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627087, 33.004906, 25.041086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316518, -0.298695, -0.900332,
		0.871133, 0.467167, 0.151265,
		0.375424, -0.832187, 0.408071,
		37.739716, 32.755249, 25.163507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190872, 33.360470, 24.677896>,  <37.476917, 33.337780, 24.877857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190872, 33.360470, 24.677896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.143909, 32.981464, 24.796844>,  <38.115734, 32.754059, 24.868214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.143909, 32.981464, 24.796844>,  <38.190872, 33.360470, 24.677896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143909, 32.981464, 24.796844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565524, -0.309933, -0.764280,
		0.816332, 0.078439, 0.572231,
		-0.117404, -0.947517, 0.297368,
		38.108688, 32.697208, 24.886055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934132, 32.995316, 24.728127>,  <38.190872, 33.360470, 24.677896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934132, 32.995316, 24.728127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.625938, 32.751602, 24.653158>,  <38.441021, 32.605373, 24.608177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.625938, 32.751602, 24.653158>,  <38.934132, 32.995316, 24.728127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625938, 32.751602, 24.653158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445595, -0.304528, -0.841848,
		0.455847, -0.732146, 0.506128,
		-0.770486, -0.609282, -0.187423,
		38.394794, 32.568817, 24.596931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113968, 32.317986, 24.677811>,  <38.934132, 32.995316, 24.728127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113968, 32.317986, 24.677811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.777401, 32.324314, 24.461752>,  <38.575459, 32.328114, 24.332117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.777401, 32.324314, 24.461752>,  <39.113968, 32.317986, 24.677811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777401, 32.324314, 24.461752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483548, -0.424171, -0.765677,
		-0.241232, -0.905444, 0.349254,
		-0.841421, 0.015825, -0.540149,
		38.524975, 32.329063, 24.299707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142605, 31.657196, 24.358334>,  <39.113968, 32.317986, 24.677811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142605, 31.657196, 24.358334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.853291, 31.864893, 24.176233>,  <38.679703, 31.989511, 24.066973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.853291, 31.864893, 24.176233>,  <39.142605, 31.657196, 24.358334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853291, 31.864893, 24.176233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186802, -0.487558, -0.852873,
		-0.664808, -0.701908, 0.255646,
		-0.723281, 0.519242, -0.455250,
		38.636307, 32.020664, 24.039658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793140, 31.153879, 23.929861>,  <39.142605, 31.657196, 24.358334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793140, 31.153879, 23.929861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.715565, 31.506254, 23.757193>,  <38.669018, 31.717678, 23.653591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.715565, 31.506254, 23.757193>,  <38.793140, 31.153879, 23.929861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715565, 31.506254, 23.757193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161093, -0.405453, -0.899809,
		-0.967696, -0.244050, -0.063278,
		-0.193942, 0.880935, -0.431670,
		38.657383, 31.770535, 23.627691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294113, 30.995451, 23.441826>,  <38.793140, 31.153879, 23.929861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294113, 30.995451, 23.441826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457409, 31.346317, 23.340698>,  <38.555389, 31.556837, 23.280022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457409, 31.346317, 23.340698>,  <38.294113, 30.995451, 23.441826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457409, 31.346317, 23.340698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175378, -0.347153, -0.921264,
		-0.895868, 0.331762, -0.295558,
		0.408244, 0.877165, -0.252820,
		38.579884, 31.609467, 23.264853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049126, 31.001244, 22.768465>,  <38.294113, 30.995451, 23.441826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049126, 31.001244, 22.768465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.362724, 31.247887, 22.797157>,  <38.550884, 31.395874, 22.814373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.362724, 31.247887, 22.797157>,  <38.049126, 31.001244, 22.768465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362724, 31.247887, 22.797157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284081, -0.253629, -0.924646,
		-0.551953, 0.745295, -0.374010,
		0.783994, 0.616610, 0.071733,
		38.597923, 31.432869, 22.818678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155602, 31.144121, 22.163488>,  <38.049126, 31.001244, 22.768465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155602, 31.144121, 22.163488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506321, 31.254606, 22.320934>,  <38.716751, 31.320898, 22.415401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506321, 31.254606, 22.320934>,  <38.155602, 31.144121, 22.163488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506321, 31.254606, 22.320934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438500, -0.123355, -0.890225,
		-0.197338, 0.953147, -0.229277,
		0.876798, 0.276214, 0.393613,
		38.769360, 31.337471, 22.439018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408024, 31.417130, 21.590561>,  <38.155602, 31.144121, 22.163488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408024, 31.417130, 21.590561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724998, 31.380993, 21.831850>,  <38.915184, 31.359310, 21.976624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724998, 31.380993, 21.831850>,  <38.408024, 31.417130, 21.590561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724998, 31.380993, 21.831850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572514, -0.230977, -0.786687,
		0.210403, 0.968756, -0.131311,
		0.792438, -0.090344, 0.603225,
		38.962730, 31.353889, 22.012817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971584, 31.893038, 21.329990>,  <38.408024, 31.417130, 21.590561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971584, 31.893038, 21.329990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.127056, 31.609034, 21.564875>,  <39.220341, 31.438631, 21.705805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.127056, 31.609034, 21.564875>,  <38.971584, 31.893038, 21.329990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127056, 31.609034, 21.564875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740463, -0.138564, -0.657658,
		0.548310, 0.690425, 0.471879,
		0.388678, -0.710010, 0.587210,
		39.243660, 31.396030, 21.741037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636242, 32.078476, 21.357628>,  <38.971584, 31.893038, 21.329990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636242, 32.078476, 21.357628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.628304, 31.687180, 21.440229>,  <39.623539, 31.452400, 21.489790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.628304, 31.687180, 21.440229>,  <39.636242, 32.078476, 21.357628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628304, 31.687180, 21.440229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715898, -0.158089, -0.680072,
		0.697922, 0.134338, 0.703461,
		-0.019850, -0.978244, 0.206506,
		39.622349, 31.393707, 21.502182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335690, 31.885160, 21.301561>,  <39.636242, 32.078476, 21.357628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335690, 31.885160, 21.301561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.133438, 31.540421, 21.285770>,  <40.012089, 31.333576, 21.276297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.133438, 31.540421, 21.285770>,  <40.335690, 31.885160, 21.301561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133438, 31.540421, 21.285770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691155, -0.377250, -0.616431,
		0.516378, -0.338967, 0.786419,
		-0.505627, -0.861849, -0.039475,
		39.981750, 31.281866, 21.273928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847908, 31.392750, 21.311035>,  <40.335690, 31.885160, 21.301561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847908, 31.392750, 21.311035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.558598, 31.154655, 21.170996>,  <40.385010, 31.011799, 21.086973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.558598, 31.154655, 21.170996>,  <40.847908, 31.392750, 21.311035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558598, 31.154655, 21.170996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621077, -0.339076, -0.706605,
		0.301886, -0.728508, 0.614932,
		-0.723276, -0.595234, -0.350097,
		40.341614, 30.976086, 21.065966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154854, 30.684692, 21.146442>,  <40.847908, 31.392750, 21.311035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154854, 30.684692, 21.146442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.824322, 30.723709, 20.924570>,  <40.626003, 30.747120, 20.791447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.824322, 30.723709, 20.924570>,  <41.154854, 30.684692, 21.146442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824322, 30.723709, 20.924570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453332, -0.469198, -0.757855,
		-0.334176, -0.877689, 0.343493,
		-0.826327, 0.097541, -0.554679,
		40.576424, 30.752972, 20.758165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056843, 29.999540, 20.823256>,  <41.154854, 30.684692, 21.146442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056843, 29.999540, 20.823256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.855629, 30.242380, 20.577204>,  <40.734901, 30.388084, 20.429573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.855629, 30.242380, 20.577204>,  <41.056843, 29.999540, 20.823256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855629, 30.242380, 20.577204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396225, -0.470538, -0.788416,
		-0.768088, -0.640333, -0.003849,
		-0.503038, 0.607098, -0.615130,
		40.704716, 30.424509, 20.392664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705021, 29.546322, 20.333618>,  <41.056843, 29.999540, 20.823256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705021, 29.546322, 20.333618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.725887, 29.908459, 20.165031>,  <40.738407, 30.125740, 20.063879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.725887, 29.908459, 20.165031>,  <40.705021, 29.546322, 20.333618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725887, 29.908459, 20.165031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484772, -0.391938, -0.781908,
		-0.873083, -0.163527, -0.459330,
		0.052166, 0.905342, -0.421468,
		40.741539, 30.180061, 20.038591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587067, 29.384653, 19.650225>,  <40.705021, 29.546322, 20.333618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587067, 29.384653, 19.650225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.778473, 29.735867, 19.653900>,  <40.893314, 29.946594, 19.656105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.778473, 29.735867, 19.653900>,  <40.587067, 29.384653, 19.650225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778473, 29.735867, 19.653900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582682, -0.309689, -0.751382,
		-0.656892, 0.364900, -0.659803,
		0.478513, 0.878033, 0.009188,
		40.922028, 29.999277, 19.656656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641304, 29.649366, 18.890709>,  <40.587067, 29.384653, 19.650225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641304, 29.649366, 18.890709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.938305, 29.825726, 19.092424>,  <41.116505, 29.931541, 19.213453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.938305, 29.825726, 19.092424>,  <40.641304, 29.649366, 18.890709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938305, 29.825726, 19.092424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630834, -0.207075, -0.747776,
		-0.225268, 0.873344, -0.431886,
		0.742498, 0.440898, 0.504287,
		41.161053, 29.957994, 19.243711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078110, 30.238207, 18.480337>,  <40.641304, 29.649366, 18.890709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078110, 30.238207, 18.480337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.288334, 30.034058, 18.752604>,  <41.414467, 29.911568, 18.915962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.288334, 30.034058, 18.752604>,  <41.078110, 30.238207, 18.480337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288334, 30.034058, 18.752604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684395, -0.221620, -0.694614,
		0.505362, 0.830905, 0.232823,
		0.525560, -0.510375, 0.680665,
		41.446003, 29.880945, 18.956802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860027, 31.018667, 18.469719>,  <41.078110, 30.238207, 18.480337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860027, 31.018667, 18.469719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.684582, 31.092165, 18.117844>,  <40.579315, 31.136263, 17.906717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.684582, 31.092165, 18.117844>,  <40.860027, 31.018667, 18.469719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684582, 31.092165, 18.117844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722688, 0.509722, 0.466803,
		0.534169, 0.840489, -0.090784,
		-0.438617, 0.183743, -0.879689,
		40.552998, 31.147287, 17.853937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343838, 31.466604, 18.640812>,  <40.860027, 31.018667, 18.469719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343838, 31.466604, 18.640812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.238560, 31.472454, 18.254959>,  <40.175392, 31.475964, 18.023447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.238560, 31.472454, 18.254959>,  <40.343838, 31.466604, 18.640812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238560, 31.472454, 18.254959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760908, 0.611542, 0.216877,
		0.593085, 0.791077, -0.149825,
		-0.263190, 0.014623, -0.964633,
		40.159603, 31.476841, 17.965569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348186, 32.122513, 18.448614>,  <40.343838, 31.466604, 18.640812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348186, 32.122513, 18.448614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.082573, 31.933655, 18.216705>,  <39.923203, 31.820341, 18.077560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.082573, 31.933655, 18.216705>,  <40.348186, 32.122513, 18.448614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082573, 31.933655, 18.216705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726413, 0.591077, 0.350645,
		0.177135, 0.653995, -0.735468,
		-0.664039, -0.472142, -0.579771,
		39.883362, 31.792011, 18.042774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010780, 32.623207, 18.030174>,  <40.348186, 32.122513, 18.448614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010780, 32.623207, 18.030174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772942, 32.303524, 18.065331>,  <39.630238, 32.111713, 18.086424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772942, 32.303524, 18.065331>,  <40.010780, 32.623207, 18.030174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772942, 32.303524, 18.065331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684124, 0.560322, 0.466919,
		-0.422413, 0.217499, -0.879921,
		-0.594594, -0.799208, 0.087891,
		39.594563, 32.063763, 18.091698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359127, 32.901760, 17.890787>,  <40.010780, 32.623207, 18.030174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359127, 32.901760, 17.890787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.276356, 32.561310, 18.083771>,  <39.226692, 32.357040, 18.199560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.276356, 32.561310, 18.083771>,  <39.359127, 32.901760, 17.890787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276356, 32.561310, 18.083771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715837, 0.467860, 0.518348,
		-0.666902, -0.238103, -0.706080,
		-0.206926, -0.851125, 0.482459,
		39.214279, 32.305973, 18.228508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699638, 32.795483, 17.867506>,  <39.359127, 32.901760, 17.890787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699638, 32.795483, 17.867506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.761173, 32.555180, 18.181301>,  <38.798096, 32.410995, 18.369577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.761173, 32.555180, 18.181301>,  <38.699638, 32.795483, 17.867506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761173, 32.555180, 18.181301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727641, 0.468253, 0.501276,
		-0.668486, -0.647941, -0.365103,
		0.153837, -0.600760, 0.784488,
		38.807323, 32.374950, 18.416647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997223, 32.694832, 18.124924>,  <38.699638, 32.795483, 17.867506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997223, 32.694832, 18.124924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255188, 32.612228, 18.419252>,  <38.409969, 32.562664, 18.595850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255188, 32.612228, 18.419252>,  <37.997223, 32.694832, 18.124924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255188, 32.612228, 18.419252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589667, 0.478037, 0.650979,
		-0.486185, -0.853718, 0.186521,
		0.644916, -0.206511, 0.735824,
		38.448662, 32.550274, 18.639999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585743, 32.442448, 18.734877>,  <37.997223, 32.694832, 18.124924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585743, 32.442448, 18.734877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.930691, 32.556610, 18.902145>,  <38.137657, 32.625107, 19.002506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.930691, 32.556610, 18.902145>,  <37.585743, 32.442448, 18.734877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930691, 32.556610, 18.902145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489667, 0.260306, 0.832146,
		0.128642, -0.922381, 0.364231,
		0.862367, 0.285401, 0.418173,
		38.189400, 32.642231, 19.027597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475189, 32.127323, 19.367453>,  <37.585743, 32.442448, 18.734877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475189, 32.127323, 19.367453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.771519, 32.391399, 19.416973>,  <37.949314, 32.549847, 19.446686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.771519, 32.391399, 19.416973>,  <37.475189, 32.127323, 19.367453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771519, 32.391399, 19.416973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460102, 0.364476, 0.809606,
		0.489378, -0.656732, 0.573770,
		0.740820, 0.660197, 0.123797,
		37.993767, 32.589458, 19.454113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840759, 32.000271, 20.082121>,  <37.475189, 32.127323, 19.367453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840759, 32.000271, 20.082121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.916882, 32.379837, 19.981455>,  <37.962555, 32.607578, 19.921055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.916882, 32.379837, 19.981455>,  <37.840759, 32.000271, 20.082121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916882, 32.379837, 19.981455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465186, 0.312906, 0.828065,
		0.864514, -0.040516, 0.500973,
		0.190307, 0.948920, -0.251664,
		37.973972, 32.664513, 19.905956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188122, 32.266666, 20.689777>,  <37.840759, 32.000271, 20.082121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188122, 32.266666, 20.689777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030109, 32.565552, 20.476002>,  <37.935303, 32.744884, 20.347736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030109, 32.565552, 20.476002>,  <38.188122, 32.266666, 20.689777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030109, 32.565552, 20.476002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332328, 0.426122, 0.841414,
		0.856453, 0.509990, 0.079991,
		-0.395027, 0.747215, -0.534438,
		37.911602, 32.789715, 20.315670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414471, 32.889103, 21.073507>,  <38.188122, 32.266666, 20.689777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414471, 32.889103, 21.073507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.102909, 33.009872, 20.853636>,  <37.915970, 33.082333, 20.721714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.102909, 33.009872, 20.853636>,  <38.414471, 32.889103, 21.073507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102909, 33.009872, 20.853636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333334, 0.543112, 0.770660,
		0.531217, 0.783499, -0.322393,
		-0.778907, 0.301923, -0.549678,
		37.869236, 33.100449, 20.688732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333096, 33.567669, 21.317059>,  <38.414471, 32.889103, 21.073507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333096, 33.567669, 21.317059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.989288, 33.439648, 21.157660>,  <37.783005, 33.362835, 21.062019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.989288, 33.439648, 21.157660>,  <38.333096, 33.567669, 21.317059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989288, 33.439648, 21.157660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503088, 0.392162, 0.770137,
		-0.090210, 0.862423, -0.498085,
		-0.859514, -0.320054, -0.398498,
		37.731434, 33.343632, 21.038111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922153, 34.026230, 21.677744>,  <38.333096, 33.567669, 21.317059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922153, 34.026230, 21.677744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684803, 33.739525, 21.531235>,  <37.542393, 33.567501, 21.443329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684803, 33.739525, 21.531235>,  <37.922153, 34.026230, 21.677744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684803, 33.739525, 21.531235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605340, 0.097444, 0.789980,
		-0.530537, 0.690475, -0.491706,
		-0.593375, -0.716762, -0.366275,
		37.506790, 33.524498, 21.421352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246510, 34.342983, 21.716549>,  <37.922153, 34.026230, 21.677744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246510, 34.342983, 21.716549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.182709, 33.950562, 21.672567>,  <37.144428, 33.715107, 21.646177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.182709, 33.950562, 21.672567>,  <37.246510, 34.342983, 21.716549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182709, 33.950562, 21.672567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582463, 0.003594, 0.812849,
		-0.797055, 0.193694, -0.572002,
		-0.159500, -0.981055, -0.109955,
		37.134857, 33.656246, 21.639582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533138, 34.245750, 21.828802>,  <37.246510, 34.342983, 21.716549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533138, 34.245750, 21.828802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.662010, 33.870037, 21.876030>,  <36.739334, 33.644608, 21.904366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.662010, 33.870037, 21.876030>,  <36.533138, 34.245750, 21.828802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662010, 33.870037, 21.876030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381081, -0.014513, 0.924428,
		-0.866589, -0.342826, -0.362620,
		0.322180, -0.939287, 0.118068,
		36.758663, 33.588249, 21.911449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989353, 33.804565, 21.987431>,  <36.533138, 34.245750, 21.828802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989353, 33.804565, 21.987431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290565, 33.580498, 22.125505>,  <36.471291, 33.446056, 22.208351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290565, 33.580498, 22.125505>,  <35.989353, 33.804565, 21.987431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290565, 33.580498, 22.125505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468585, -0.088256, 0.878999,
		-0.461927, -0.823661, -0.328947,
		0.753029, -0.560173, 0.345187,
		36.516476, 33.412445, 22.229061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747177, 33.107849, 22.126060>,  <35.989353, 33.804565, 21.987431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747177, 33.107849, 22.126060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.071129, 33.189522, 22.346025>,  <36.265499, 33.238525, 22.478004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.071129, 33.189522, 22.346025>,  <35.747177, 33.107849, 22.126060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071129, 33.189522, 22.346025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579590, 0.134080, 0.803802,
		0.090390, -0.969707, 0.226932,
		0.809879, 0.204183, 0.549913,
		36.314095, 33.250774, 22.511000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502548, 32.994724, 22.783648>,  <35.747177, 33.107849, 22.126060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502548, 32.994724, 22.783648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.842167, 33.190964, 22.862062>,  <36.045940, 33.308708, 22.909111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.842167, 33.190964, 22.862062>,  <35.502548, 32.994724, 22.783648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842167, 33.190964, 22.862062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419838, 0.401298, 0.814061,
		0.320702, -0.773484, 0.546692,
		0.849050, 0.490593, 0.196041,
		36.096882, 33.338142, 22.920874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561329, 32.846375, 23.465994>,  <35.502548, 32.994724, 22.783648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561329, 32.846375, 23.465994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821636, 33.147598, 23.427214>,  <35.977821, 33.328331, 23.403946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821636, 33.147598, 23.427214>,  <35.561329, 32.846375, 23.465994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821636, 33.147598, 23.427214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243337, 0.327807, 0.912869,
		0.719225, -0.570478, 0.396574,
		0.650771, 0.753059, -0.096948,
		36.016869, 33.373516, 23.398129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947987, 32.872345, 24.102560>,  <35.561329, 32.846375, 23.465994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947987, 32.872345, 24.102560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.948544, 33.236980, 23.938122>,  <35.948879, 33.455761, 23.839458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.948544, 33.236980, 23.938122>,  <35.947987, 32.872345, 24.102560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948544, 33.236980, 23.938122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270293, 0.396136, 0.877507,
		0.962777, 0.109894, 0.246948,
		0.001393, 0.911592, -0.411094,
		35.948963, 33.510460, 23.814793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.766788, 33.351101, 29.368574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.743637, 33.696148, 29.167561>,  <37.729748, 33.903175, 29.046953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.743637, 33.696148, 29.167561>,  <37.766788, 33.351101, 29.368574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743637, 33.696148, 29.167561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194313, 0.503485, 0.841870,
		0.979230, -0.048922, -0.196759,
		-0.057879, 0.862618, -0.502535,
		37.726273, 33.954933, 29.016800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307449, 33.737812, 29.644888>,  <37.766788, 33.351101, 29.368574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307449, 33.737812, 29.644888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.061890, 34.007488, 29.480652>,  <37.914555, 34.169296, 29.382111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.061890, 34.007488, 29.480652>,  <38.307449, 33.737812, 29.644888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061890, 34.007488, 29.480652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220146, 0.645730, 0.731142,
		0.758062, 0.358461, -0.544837,
		-0.613904, 0.674194, -0.410590,
		37.877720, 34.209747, 29.357475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626568, 34.379986, 29.871006>,  <38.307449, 33.737812, 29.644888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626568, 34.379986, 29.871006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.255016, 34.478294, 29.760170>,  <38.032085, 34.537281, 29.693668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.255016, 34.478294, 29.760170>,  <38.626568, 34.379986, 29.871006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255016, 34.478294, 29.760170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008365, 0.734004, 0.679093,
		0.370290, 0.633113, -0.679745,
		-0.928879, 0.245775, -0.277090,
		37.976353, 34.552029, 29.677042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546021, 35.215229, 29.963490>,  <38.626568, 34.379986, 29.871006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546021, 35.215229, 29.963490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.173859, 35.070343, 29.941036>,  <37.950562, 34.983410, 29.927565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.173859, 35.070343, 29.941036>,  <38.546021, 35.215229, 29.963490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173859, 35.070343, 29.941036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316975, 0.718191, 0.619458,
		-0.184066, 0.594137, -0.783020,
		-0.930401, -0.362219, -0.056132,
		37.894737, 34.961678, 29.924196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068726, 35.806881, 29.693279>,  <38.546021, 35.215229, 29.963490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068726, 35.806881, 29.693279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.862259, 35.522343, 29.884094>,  <37.738380, 35.351620, 29.998583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.862259, 35.522343, 29.884094>,  <38.068726, 35.806881, 29.693279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862259, 35.522343, 29.884094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314377, 0.675443, 0.667041,
		-0.796707, 0.194334, -0.572270,
		-0.516164, -0.711345, 0.477036,
		37.707409, 35.308941, 30.027205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354069, 35.944183, 29.697109>,  <38.068726, 35.806881, 29.693279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354069, 35.944183, 29.697109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.446743, 35.728748, 30.021145>,  <37.502346, 35.599487, 30.215567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.446743, 35.728748, 30.021145>,  <37.354069, 35.944183, 29.697109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446743, 35.728748, 30.021145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351746, 0.730019, 0.585958,
		-0.906971, -0.420703, -0.020311,
		0.231687, -0.538591, 0.810087,
		37.516251, 35.567169, 30.264172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916370, 36.168194, 30.182678>,  <37.354069, 35.944183, 29.697109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916370, 36.168194, 30.182678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.152805, 35.953190, 30.423244>,  <37.294666, 35.824188, 30.567585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.152805, 35.953190, 30.423244>,  <36.916370, 36.168194, 30.182678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152805, 35.953190, 30.423244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261387, 0.577734, 0.773240,
		-0.763082, -0.614254, 0.200993,
		0.591087, -0.537509, 0.601416,
		37.330132, 35.791939, 30.603670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574268, 35.961884, 30.822760>,  <36.916370, 36.168194, 30.182678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574268, 35.961884, 30.822760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.956593, 35.895908, 30.920105>,  <37.185986, 35.856323, 30.978512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.956593, 35.895908, 30.920105>,  <36.574268, 35.961884, 30.822760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956593, 35.895908, 30.920105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114236, 0.554383, 0.824385,
		-0.270887, -0.815755, 0.511042,
		0.955809, -0.164936, 0.243364,
		37.243336, 35.846428, 30.993114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495235, 35.803440, 31.518782>,  <36.574268, 35.961884, 30.822760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495235, 35.803440, 31.518782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.877991, 35.905426, 31.463140>,  <37.107643, 35.966618, 31.429756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.877991, 35.905426, 31.463140>,  <36.495235, 35.803440, 31.518782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877991, 35.905426, 31.463140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011676, 0.512312, 0.858720,
		0.290208, -0.820079, 0.493204,
		0.956893, 0.254965, -0.139102,
		37.165058, 35.981915, 31.421410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792507, 35.656017, 32.082283>,  <36.495235, 35.803440, 31.518782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792507, 35.656017, 32.082283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.053036, 35.910019, 31.916128>,  <37.209354, 36.062420, 31.816435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.053036, 35.910019, 31.916128>,  <36.792507, 35.656017, 32.082283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053036, 35.910019, 31.916128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211063, 0.374211, 0.903005,
		0.728858, -0.675819, 0.109705,
		0.651321, 0.635008, -0.415387,
		37.248432, 36.100521, 31.791512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413902, 35.637981, 32.410343>,  <36.792507, 35.656017, 32.082283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413902, 35.637981, 32.410343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.425396, 36.001678, 32.244232>,  <37.432293, 36.219894, 32.144566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.425396, 36.001678, 32.244232>,  <37.413902, 35.637981, 32.410343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425396, 36.001678, 32.244232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293006, 0.389539, 0.873159,
		0.955679, -0.146770, -0.255220,
		0.028735, 0.909240, -0.415279,
		37.434017, 36.274452, 32.119648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021614, 35.981407, 32.632774>,  <37.413902, 35.637981, 32.410343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021614, 35.981407, 32.632774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.780460, 36.284790, 32.533756>,  <37.635769, 36.466820, 32.474346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.780460, 36.284790, 32.533756>,  <38.021614, 35.981407, 32.632774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780460, 36.284790, 32.533756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370693, 0.541038, 0.754893,
		0.706484, 0.363349, -0.607337,
		-0.602882, 0.758456, -0.247544,
		37.599594, 36.512325, 32.459492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402363, 36.602360, 32.497280>,  <38.021614, 35.981407, 32.632774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402363, 36.602360, 32.497280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.041931, 36.719414, 32.625298>,  <37.825672, 36.789646, 32.702106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.041931, 36.719414, 32.625298>,  <38.402363, 36.602360, 32.497280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041931, 36.719414, 32.625298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427011, 0.469990, 0.772510,
		0.075648, 0.832751, -0.548455,
		-0.901076, 0.292635, 0.320040,
		37.771606, 36.807205, 32.721310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520782, 37.266609, 32.712063>,  <38.402363, 36.602360, 32.497280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520782, 37.266609, 32.712063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.200481, 37.101101, 32.885311>,  <38.008301, 37.001797, 32.989262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.200481, 37.101101, 32.885311>,  <38.520782, 37.266609, 32.712063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200481, 37.101101, 32.885311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288223, 0.367719, 0.884144,
		-0.525100, 0.832813, -0.175192,
		-0.800748, -0.413770, 0.433125,
		37.960258, 36.976971, 33.015247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616837, 38.030087, 32.658031>,  <38.520782, 37.266609, 32.712063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616837, 38.030087, 32.658031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.764511, 38.401505, 32.673580>,  <38.853115, 38.624355, 32.682907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.764511, 38.401505, 32.673580>,  <38.616837, 38.030087, 32.658031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764511, 38.401505, 32.673580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133584, -0.011631, -0.990969,
		-0.919705, 0.371044, -0.128332,
		0.369186, 0.928542, 0.038868,
		38.875267, 38.680069, 32.685242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443741, 38.176716, 31.974995>,  <38.616837, 38.030087, 32.658031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443741, 38.176716, 31.974995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.695293, 38.471359, 32.074528>,  <38.846226, 38.648144, 32.134247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.695293, 38.471359, 32.074528>,  <38.443741, 38.176716, 31.974995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695293, 38.471359, 32.074528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269243, 0.093918, -0.958482,
		-0.729392, 0.669771, -0.139262,
		0.628884, 0.736605, 0.248834,
		38.883957, 38.692341, 32.149178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281166, 38.784378, 31.614283>,  <38.443741, 38.176716, 31.974995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281166, 38.784378, 31.614283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.670017, 38.827888, 31.697355>,  <38.903328, 38.853996, 31.747198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.670017, 38.827888, 31.697355>,  <38.281166, 38.784378, 31.614283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670017, 38.827888, 31.697355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206652, 0.020781, -0.978194,
		-0.110721, 0.993849, -0.002277,
		0.972130, 0.108777, 0.207682,
		38.961655, 38.860523, 31.759659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512840, 39.165504, 31.105896>,  <38.281166, 38.784378, 31.614283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512840, 39.165504, 31.105896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.871326, 39.047482, 31.238403>,  <39.086418, 38.976669, 31.317907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.871326, 39.047482, 31.238403>,  <38.512840, 39.165504, 31.105896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871326, 39.047482, 31.238403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384572, 0.144506, -0.911714,
		0.221134, 0.944490, 0.242978,
		0.896217, -0.295054, 0.331269,
		39.140190, 38.958965, 31.337784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011036, 39.631245, 30.925177>,  <38.512840, 39.165504, 31.105896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011036, 39.631245, 30.925177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.218025, 39.297871, 31.002754>,  <39.342216, 39.097847, 31.049301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.218025, 39.297871, 31.002754>,  <39.011036, 39.631245, 30.925177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218025, 39.297871, 31.002754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432708, 0.059326, -0.899580,
		0.738233, 0.549428, 0.391332,
		0.517470, -0.833433, 0.193945,
		39.373268, 39.047840, 31.060938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698311, 39.751625, 30.676910>,  <39.011036, 39.631245, 30.925177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698311, 39.751625, 30.676910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.651344, 39.355389, 30.705050>,  <39.623165, 39.117649, 30.721933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.651344, 39.355389, 30.705050>,  <39.698311, 39.751625, 30.676910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651344, 39.355389, 30.705050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464977, -0.117429, -0.877500,
		0.877502, -0.070321, 0.474389,
		-0.117414, -0.990588, 0.070347,
		39.616119, 39.058212, 30.726154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368114, 39.463833, 30.425013>,  <39.698311, 39.751625, 30.676910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368114, 39.463833, 30.425013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.100712, 39.166916, 30.406731>,  <39.940269, 38.988766, 30.395761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.100712, 39.166916, 30.406731>,  <40.368114, 39.463833, 30.425013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100712, 39.166916, 30.406731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341742, -0.252025, -0.905370,
		0.660535, -0.620869, 0.422156,
		-0.668510, -0.742297, -0.045706,
		39.900158, 38.944225, 30.393019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801682, 38.926926, 30.132086>,  <40.368114, 39.463833, 30.425013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801682, 38.926926, 30.132086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.440037, 38.774487, 30.054789>,  <40.223049, 38.683025, 30.008410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.440037, 38.774487, 30.054789>,  <40.801682, 38.926926, 30.132086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440037, 38.774487, 30.054789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373936, -0.486836, -0.789407,
		0.206761, -0.785975, 0.582660,
		-0.904114, -0.381096, -0.193245,
		40.168804, 38.660156, 29.996815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933334, 38.190704, 29.870974>,  <40.801682, 38.926926, 30.132086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933334, 38.190704, 29.870974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.583237, 38.331203, 29.737970>,  <40.373177, 38.415504, 29.658169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.583237, 38.331203, 29.737970>,  <40.933334, 38.190704, 29.870974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583237, 38.331203, 29.737970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204184, -0.354876, -0.912344,
		-0.438462, -0.866421, 0.238884,
		-0.875248, 0.351252, -0.332509,
		40.320663, 38.436581, 29.638218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572681, 37.509243, 29.537498>,  <40.933334, 38.190704, 29.870974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572681, 37.509243, 29.537498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.351337, 37.811375, 29.397060>,  <40.218533, 37.992653, 29.312798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.351337, 37.811375, 29.397060>,  <40.572681, 37.509243, 29.537498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351337, 37.811375, 29.397060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107046, -0.353527, -0.929279,
		-0.826036, -0.551809, 0.114772,
		-0.553359, 0.755332, -0.351094,
		40.185329, 38.037975, 29.291733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020794, 37.223545, 29.225718>,  <40.572681, 37.509243, 29.537498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020794, 37.223545, 29.225718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.135422, 37.573040, 29.068516>,  <40.204201, 37.782738, 28.974195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.135422, 37.573040, 29.068516>,  <40.020794, 37.223545, 29.225718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135422, 37.573040, 29.068516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212771, -0.458006, -0.863110,
		-0.934133, 0.163725, -0.317160,
		0.286574, 0.873742, -0.393002,
		40.221394, 37.835163, 28.950615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756905, 37.150192, 28.566853>,  <40.020794, 37.223545, 29.225718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756905, 37.150192, 28.566853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.010662, 37.455975, 28.520975>,  <40.162918, 37.639442, 28.493448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.010662, 37.455975, 28.520975>,  <39.756905, 37.150192, 28.566853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010662, 37.455975, 28.520975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124534, -0.247503, -0.960850,
		-0.762913, 0.595274, -0.252215,
		0.634393, 0.764455, -0.114691,
		40.200981, 37.685310, 28.486568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585987, 37.532730, 27.946259>,  <39.756905, 37.150192, 28.566853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585987, 37.532730, 27.946259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.964962, 37.631924, 28.027124>,  <40.192345, 37.691441, 28.075644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.964962, 37.631924, 28.027124>,  <39.585987, 37.532730, 27.946259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964962, 37.631924, 28.027124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253319, -0.195437, -0.947435,
		-0.195437, 0.948846, -0.247982,
		0.947435, 0.247982, 0.202165,
		40.249191, 37.706318, 28.087774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871891, 38.139660, 27.521240>,  <39.585987, 37.532730, 27.946259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871891, 38.139660, 27.521240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.160851, 37.887169, 27.634163>,  <40.334225, 37.735676, 27.701918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.160851, 37.887169, 27.634163>,  <39.871891, 38.139660, 27.521240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160851, 37.887169, 27.634163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268604, -0.120044, -0.955741,
		0.637178, 0.766252, 0.082830,
		0.722396, -0.631226, 0.282308,
		40.377571, 37.697800, 27.718855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053150, 38.828014, 27.461040>,  <39.871891, 38.139660, 27.521240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053150, 38.828014, 27.461040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.822437, 39.098412, 27.277580>,  <39.684010, 39.260651, 27.167503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.822437, 39.098412, 27.277580>,  <40.053150, 38.828014, 27.461040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822437, 39.098412, 27.277580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362973, 0.290909, 0.885224,
		0.731828, 0.677060, 0.077574,
		-0.576783, 0.675989, -0.458650,
		39.649403, 39.301208, 27.139986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149361, 39.390728, 27.896227>,  <40.053150, 38.828014, 27.461040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149361, 39.390728, 27.896227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.814392, 39.441521, 27.683588>,  <39.613411, 39.471996, 27.556005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.814392, 39.441521, 27.683588>,  <40.149361, 39.390728, 27.896227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814392, 39.441521, 27.683588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483807, 0.280257, 0.829088,
		0.254262, 0.951490, -0.173260,
		-0.837426, 0.126981, -0.531595,
		39.563164, 39.479614, 27.524109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914143, 40.102303, 27.963163>,  <40.149361, 39.390728, 27.896227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914143, 40.102303, 27.963163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.595211, 39.885902, 27.856150>,  <39.403851, 39.756062, 27.791941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.595211, 39.885902, 27.856150>,  <39.914143, 40.102303, 27.963163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595211, 39.885902, 27.856150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502932, 0.350529, 0.790056,
		-0.333645, 0.764489, -0.551576,
		-0.797333, -0.541004, -0.267534,
		39.356010, 39.723602, 27.775890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354897, 40.632862, 27.867170>,  <39.914143, 40.102303, 27.963163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354897, 40.632862, 27.867170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.173393, 40.279892, 27.916876>,  <39.064491, 40.068111, 27.946699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.173393, 40.279892, 27.916876>,  <39.354897, 40.632862, 27.867170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173393, 40.279892, 27.916876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650186, 0.423192, 0.631004,
		-0.609398, 0.205527, -0.765763,
		-0.453754, -0.882421, 0.124262,
		39.037266, 40.015167, 27.954155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700657, 40.848179, 27.810059>,  <39.354897, 40.632862, 27.867170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700657, 40.848179, 27.810059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.666676, 40.483047, 27.969820>,  <38.646286, 40.263969, 28.065676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.666676, 40.483047, 27.969820>,  <38.700657, 40.848179, 27.810059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666676, 40.483047, 27.969820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682007, 0.345508, 0.644586,
		-0.726394, -0.217632, -0.651911,
		-0.084957, -0.912831, 0.399401,
		38.641190, 40.209198, 28.089640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036900, 40.499592, 27.755587>,  <38.700657, 40.848179, 27.810059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036900, 40.499592, 27.755587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.176193, 40.315186, 28.082071>,  <38.259769, 40.204544, 28.277962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.176193, 40.315186, 28.082071>,  <38.036900, 40.499592, 27.755587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176193, 40.315186, 28.082071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877977, 0.144694, 0.456310,
		-0.328466, -0.875518, -0.354372,
		0.348233, -0.461013, 0.816212,
		38.280663, 40.176884, 28.326935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364506, 40.252445, 28.087162>,  <38.036900, 40.499592, 27.755587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364506, 40.252445, 28.087162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.633213, 40.218323, 28.381495>,  <37.794437, 40.197849, 28.558094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.633213, 40.218323, 28.381495>,  <37.364506, 40.252445, 28.087162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633213, 40.218323, 28.381495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630533, 0.455503, 0.628447,
		-0.388781, -0.886138, 0.252208,
		0.671772, -0.085303, 0.735831,
		37.834743, 40.192734, 28.602243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908886, 40.018108, 28.558247>,  <37.364506, 40.252445, 28.087162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908886, 40.018108, 28.558247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.241558, 40.161331, 28.728001>,  <37.441162, 40.247265, 28.829853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.241558, 40.161331, 28.728001>,  <36.908886, 40.018108, 28.558247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241558, 40.161331, 28.728001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555213, 0.545648, 0.627700,
		-0.006811, -0.757669, 0.652604,
		0.831681, 0.358058, 0.424384,
		37.491062, 40.268749, 28.855316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896847, 39.850128, 29.213388>,  <36.908886, 40.018108, 28.558247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896847, 39.850128, 29.213388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.131531, 40.173573, 29.195887>,  <37.272343, 40.367641, 29.185385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.131531, 40.173573, 29.195887>,  <36.896847, 39.850128, 29.213388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131531, 40.173573, 29.195887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551316, 0.438428, 0.709811,
		0.593147, -0.392330, 0.703032,
		0.586709, 0.808615, -0.043754,
		37.307545, 40.416157, 29.182760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811413, 40.130356, 29.883257>,  <36.896847, 39.850128, 29.213388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811413, 40.130356, 29.883257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.970161, 40.420906, 29.658806>,  <37.065411, 40.595238, 29.524136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.970161, 40.420906, 29.658806>,  <36.811413, 40.130356, 29.883257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970161, 40.420906, 29.658806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399274, 0.687088, 0.607034,
		0.826481, -0.016872, 0.562712,
		0.396874, 0.726378, -0.561129,
		37.089226, 40.638821, 29.490467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070923, 40.591480, 30.314081>,  <36.811413, 40.130356, 29.883257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070923, 40.591480, 30.314081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.003414, 40.783794, 29.969904>,  <36.962910, 40.899181, 29.763397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.003414, 40.783794, 29.969904>,  <37.070923, 40.591480, 30.314081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003414, 40.783794, 29.969904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429470, 0.749869, 0.503241,
		0.887170, 0.454469, 0.079922,
		-0.168776, 0.480784, -0.860442,
		36.952782, 40.928028, 29.711771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320835, 41.259552, 30.423849>,  <37.070923, 40.591480, 30.314081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320835, 41.259552, 30.423849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.040661, 41.273438, 30.138700>,  <36.872555, 41.281769, 29.967611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.040661, 41.273438, 30.138700>,  <37.320835, 41.259552, 30.423849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040661, 41.273438, 30.138700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353108, 0.851154, 0.388396,
		0.620246, 0.523767, -0.583920,
		-0.700435, 0.034715, -0.712871,
		36.830532, 41.283852, 29.924839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.060192, 38.140385, 24.845972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764568, 38.171940, 24.578369>,  <41.587196, 38.190872, 24.417807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764568, 38.171940, 24.578369>,  <42.060192, 38.140385, 24.845972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764568, 38.171940, 24.578369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506653, 0.589409, 0.629205,
		0.443956, 0.803974, -0.395638,
		-0.739057, 0.078888, -0.669008,
		41.542850, 38.195606, 24.377666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938728, 38.963123, 24.662922>,  <42.060192, 38.140385, 24.845972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938728, 38.963123, 24.662922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622597, 38.729874, 24.587717>,  <41.432919, 38.589924, 24.542595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622597, 38.729874, 24.587717>,  <41.938728, 38.963123, 24.662922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622597, 38.729874, 24.587717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589889, 0.641295, 0.490685,
		-0.165560, 0.498708, -0.850811,
		-0.790329, -0.583122, -0.188010,
		41.385498, 38.554935, 24.531315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339115, 39.392509, 24.481068>,  <41.938728, 38.963123, 24.662922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339115, 39.392509, 24.481068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166504, 39.051785, 24.599855>,  <41.062935, 38.847347, 24.671127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166504, 39.051785, 24.599855>,  <41.339115, 39.392509, 24.481068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166504, 39.051785, 24.599855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700532, 0.523840, 0.484610,
		-0.568362, 0.001088, -0.822778,
		-0.431531, -0.851816, 0.296969,
		41.037045, 38.796238, 24.688946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714218, 39.605232, 24.509768>,  <41.339115, 39.392509, 24.481068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714218, 39.605232, 24.509768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678017, 39.262127, 24.712173>,  <40.656296, 39.056263, 24.833616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678017, 39.262127, 24.712173>,  <40.714218, 39.605232, 24.509768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678017, 39.262127, 24.712173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672817, 0.427275, 0.603947,
		-0.734251, -0.285792, -0.615790,
		-0.090509, -0.857763, 0.506013,
		40.650864, 39.004799, 24.863977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984486, 39.469536, 24.609814>,  <40.714218, 39.605232, 24.509768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984486, 39.469536, 24.609814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174404, 39.258282, 24.891418>,  <40.288357, 39.131527, 25.060381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174404, 39.258282, 24.891418>,  <39.984486, 39.469536, 24.609814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174404, 39.258282, 24.891418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634990, 0.348309, 0.689543,
		-0.609388, -0.774436, -0.169985,
		0.474800, -0.528137, 0.704014,
		40.316845, 39.099842, 25.102623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446877, 39.208187, 25.025814>,  <39.984486, 39.469536, 24.609814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446877, 39.208187, 25.025814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782513, 39.206089, 25.243399>,  <39.983894, 39.204830, 25.373949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782513, 39.206089, 25.243399>,  <39.446877, 39.208187, 25.025814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782513, 39.206089, 25.243399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539537, 0.119640, 0.833418,
		-0.069451, -0.992804, 0.097559,
		0.839092, -0.005245, 0.543964,
		40.034241, 39.204517, 25.406588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271832, 38.711216, 25.618185>,  <39.446877, 39.208187, 25.025814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271832, 38.711216, 25.618185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565598, 38.944263, 25.757433>,  <39.741856, 39.084091, 25.840982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565598, 38.944263, 25.757433>,  <39.271832, 38.711216, 25.618185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565598, 38.944263, 25.757433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553902, 0.218111, 0.803505,
		0.392210, -0.782931, 0.482898,
		0.734414, 0.582621, 0.348122,
		39.785923, 39.119049, 25.861870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294163, 38.502991, 26.314894>,  <39.271832, 38.711216, 25.618185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294163, 38.502991, 26.314894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549786, 38.810390, 26.327604>,  <39.703159, 38.994831, 26.335230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549786, 38.810390, 26.327604>,  <39.294163, 38.502991, 26.314894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549786, 38.810390, 26.327604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362173, 0.264213, 0.893881,
		0.678552, -0.582751, 0.447178,
		0.639061, 0.768500, 0.031774,
		39.741505, 39.040939, 26.337137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798470, 38.456528, 26.881681>,  <39.294163, 38.502991, 26.314894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798470, 38.456528, 26.881681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758995, 38.846088, 26.799927>,  <39.735310, 39.079826, 26.750874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758995, 38.846088, 26.799927>,  <39.798470, 38.456528, 26.881681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758995, 38.846088, 26.799927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228298, 0.177753, 0.957227,
		0.968577, 0.141125, 0.204799,
		-0.098685, 0.973903, -0.204386,
		39.729389, 39.138260, 26.738611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353340, 38.055313, 26.880838>,  <39.798470, 38.456528, 26.881681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353340, 38.055313, 26.880838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523952, 37.779922, 27.115469>,  <40.626320, 37.614689, 27.256248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523952, 37.779922, 27.115469>,  <40.353340, 38.055313, 26.880838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523952, 37.779922, 27.115469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380831, -0.451537, -0.806897,
		0.820389, 0.567554, 0.069597,
		0.426532, -0.688474, 0.586578,
		40.651913, 37.573380, 27.291443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992241, 37.957581, 26.629812>,  <40.353340, 38.055313, 26.880838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992241, 37.957581, 26.629812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964775, 37.623093, 26.847443>,  <40.948296, 37.422401, 26.978022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964775, 37.623093, 26.847443>,  <40.992241, 37.957581, 26.629812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964775, 37.623093, 26.847443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573446, -0.479348, -0.664368,
		0.816361, 0.266384, 0.512439,
		-0.068660, -0.836221, 0.544078,
		40.944176, 37.372227, 27.010666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623318, 37.715355, 26.588900>,  <40.992241, 37.957581, 26.629812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623318, 37.715355, 26.588900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412205, 37.390316, 26.687803>,  <41.285538, 37.195293, 26.747145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412205, 37.390316, 26.687803>,  <41.623318, 37.715355, 26.588900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412205, 37.390316, 26.687803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464045, -0.519674, -0.717356,
		0.711416, -0.263865, 0.651354,
		-0.527778, -0.812597, 0.247259,
		41.253872, 37.146538, 26.761982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080933, 37.035645, 26.733894>,  <41.623318, 37.715355, 26.588900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080933, 37.035645, 26.733894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704315, 36.915115, 26.673632>,  <41.478344, 36.842796, 26.637474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704315, 36.915115, 26.673632>,  <42.080933, 37.035645, 26.733894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704315, 36.915115, 26.673632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331098, -0.745116, -0.578944,
		0.062195, -0.594984, 0.801328,
		-0.941544, -0.301326, -0.150656,
		41.421852, 36.824718, 26.628435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176224, 36.220646, 26.808123>,  <42.080933, 37.035645, 26.733894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176224, 36.220646, 26.808123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850197, 36.310673, 26.594578>,  <41.654579, 36.364689, 26.466452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850197, 36.310673, 26.594578>,  <42.176224, 36.220646, 26.808123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850197, 36.310673, 26.594578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208073, -0.746265, -0.632293,
		-0.540712, -0.626444, 0.561426,
		-0.815069, 0.225070, -0.533860,
		41.605675, 36.378193, 26.434420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743031, 35.615303, 26.795515>,  <42.176224, 36.220646, 26.808123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743031, 35.615303, 26.795515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630993, 35.822765, 26.472395>,  <41.563770, 35.947243, 26.278522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630993, 35.822765, 26.472395>,  <41.743031, 35.615303, 26.795515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630993, 35.822765, 26.472395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057516, -0.830906, -0.553432,
		-0.958247, -0.201476, 0.202903,
		-0.280097, 0.518655, -0.807801,
		41.546963, 35.978363, 26.230055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166634, 35.174625, 26.627836>,  <41.743031, 35.615303, 26.795515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166634, 35.174625, 26.627836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250805, 35.416969, 26.320940>,  <41.301308, 35.562374, 26.136803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250805, 35.416969, 26.320940>,  <41.166634, 35.174625, 26.627836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250805, 35.416969, 26.320940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056020, -0.790996, -0.609251,
		-0.976002, 0.085224, -0.200390,
		0.210430, 0.605856, -0.767240,
		41.313934, 35.598724, 26.090769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670372, 35.018238, 26.147884>,  <41.166634, 35.174625, 26.627836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670372, 35.018238, 26.147884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962494, 35.204983, 25.948406>,  <41.137768, 35.317028, 25.828720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962494, 35.204983, 25.948406>,  <40.670372, 35.018238, 26.147884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962494, 35.204983, 25.948406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023541, -0.712390, -0.701389,
		-0.682717, 0.523966, -0.509271,
		0.730303, 0.466862, -0.498695,
		41.181583, 35.345043, 25.798798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459591, 34.927059, 25.495285>,  <40.670372, 35.018238, 26.147884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459591, 34.927059, 25.495285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846767, 35.001450, 25.427746>,  <41.079071, 35.046085, 25.387222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846767, 35.001450, 25.427746>,  <40.459591, 34.927059, 25.495285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846767, 35.001450, 25.427746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019437, -0.614726, -0.788501,
		-0.250438, 0.766502, -0.591401,
		0.967937, 0.185976, -0.168850,
		41.137150, 35.057243, 25.377090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506626, 35.119942, 24.795664>,  <40.459591, 34.927059, 25.495285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506626, 35.119942, 24.795664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871979, 34.998154, 24.903763>,  <41.091190, 34.925083, 24.968622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871979, 34.998154, 24.903763>,  <40.506626, 35.119942, 24.795664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871979, 34.998154, 24.903763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030863, -0.610133, -0.791697,
		0.405933, 0.731462, -0.547888,
		0.913381, -0.304467, 0.270248,
		41.145992, 34.906815, 24.984837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846214, 34.935101, 24.157623>,  <40.506626, 35.119942, 24.795664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846214, 34.935101, 24.157623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095764, 34.772060, 24.424349>,  <41.245495, 34.674236, 24.584385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095764, 34.772060, 24.424349>,  <40.846214, 34.935101, 24.157623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095764, 34.772060, 24.424349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356481, -0.610875, -0.706932,
		0.695491, 0.678741, -0.235804,
		0.623870, -0.407605, 0.666816,
		41.282925, 34.649780, 24.624393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408119, 34.911953, 23.826626>,  <40.846214, 34.935101, 24.157623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408119, 34.911953, 23.826626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483322, 34.647923, 24.117542>,  <41.528442, 34.489502, 24.292091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483322, 34.647923, 24.117542>,  <41.408119, 34.911953, 23.826626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483322, 34.647923, 24.117542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381822, -0.633128, -0.673320,
		0.904912, 0.404284, 0.133000,
		0.188007, -0.660078, 0.727290,
		41.539722, 34.449898, 24.335730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157772, 34.810749, 23.841711>,  <41.408119, 34.911953, 23.826626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157772, 34.810749, 23.841711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966679, 34.493973, 23.993818>,  <41.852024, 34.303909, 24.085083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966679, 34.493973, 23.993818>,  <42.157772, 34.810749, 23.841711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966679, 34.493973, 23.993818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381289, -0.576879, -0.722378,
		0.791448, -0.200112, 0.577551,
		-0.477733, -0.791938, 0.380269,
		41.823360, 34.256390, 24.107899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626583, 34.323483, 23.971275>,  <42.157772, 34.810749, 23.841711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626583, 34.323483, 23.971275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292797, 34.103306, 23.960884>,  <42.092525, 33.971199, 23.954649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292797, 34.103306, 23.960884>,  <42.626583, 34.323483, 23.971275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292797, 34.103306, 23.960884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488054, -0.716356, -0.498635,
		0.255861, -0.428774, 0.866422,
		-0.834469, -0.550442, -0.025978,
		42.042458, 33.938171, 23.953091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.914944, 34.692913, 20.992895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.191444, 34.973755, 21.061275>,  <35.357346, 35.142258, 21.102304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.191444, 34.973755, 21.061275>,  <34.914944, 34.692913, 20.992895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191444, 34.973755, 21.061275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392149, 0.165774, 0.904841,
		0.606950, -0.692512, 0.389920,
		0.691252, 0.702101, 0.170952,
		35.398819, 35.184383, 21.112560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255535, 34.484760, 21.651133>,  <34.914944, 34.692913, 20.992895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255535, 34.484760, 21.651133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.290535, 34.876720, 21.579428>,  <35.311535, 35.111897, 21.536404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.290535, 34.876720, 21.579428>,  <35.255535, 34.484760, 21.651133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290535, 34.876720, 21.579428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389234, 0.199279, 0.899325,
		0.916974, -0.008917, 0.398848,
		0.087502, 0.979902, -0.179263,
		35.316784, 35.170692, 21.525648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537540, 34.742699, 22.283829>,  <35.255535, 34.484760, 21.651133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537540, 34.742699, 22.283829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.380039, 35.060944, 22.099669>,  <35.285538, 35.251888, 21.989172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.380039, 35.060944, 22.099669>,  <35.537540, 34.742699, 22.283829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380039, 35.060944, 22.099669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339310, 0.339690, 0.877200,
		0.854301, 0.501614, 0.136206,
		-0.393748, 0.795609, -0.460401,
		35.261913, 35.299625, 21.961548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817970, 35.322773, 22.560810>,  <35.537540, 34.742699, 22.283829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817970, 35.322773, 22.560810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.477421, 35.469025, 22.410357>,  <35.273090, 35.556774, 22.320084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.477421, 35.469025, 22.410357>,  <35.817970, 35.322773, 22.560810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477421, 35.469025, 22.410357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198831, 0.438608, 0.876407,
		0.485414, 0.820938, -0.300722,
		-0.851375, 0.365627, -0.376135,
		35.222008, 35.578712, 22.297516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784328, 35.929939, 22.872295>,  <35.817970, 35.322773, 22.560810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784328, 35.929939, 22.872295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.407665, 35.916157, 22.738375>,  <35.181667, 35.907887, 22.658022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.407665, 35.916157, 22.738375>,  <35.784328, 35.929939, 22.872295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407665, 35.916157, 22.738375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286947, 0.602080, 0.745091,
		0.175903, 0.797692, -0.576841,
		-0.941658, -0.034459, -0.334803,
		35.125168, 35.905819, 22.637934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416325, 36.656815, 22.912861>,  <35.784328, 35.929939, 22.872295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416325, 36.656815, 22.912861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.093334, 36.420876, 22.916136>,  <34.899540, 36.279312, 22.918100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.093334, 36.420876, 22.916136>,  <35.416325, 36.656815, 22.912861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093334, 36.420876, 22.916136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387166, 0.540377, 0.747058,
		-0.445075, 0.600059, -0.664709,
		-0.807471, -0.589850, 0.008186,
		34.851093, 36.243919, 22.918592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885178, 37.099422, 22.802206>,  <35.416325, 36.656815, 22.912861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885178, 37.099422, 22.802206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.725021, 36.772076, 22.967108>,  <34.628925, 36.575668, 23.066050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.725021, 36.772076, 22.967108>,  <34.885178, 37.099422, 22.802206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725021, 36.772076, 22.967108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542787, 0.574285, 0.612846,
		-0.738286, 0.021614, -0.674141,
		-0.400395, -0.818370, 0.412254,
		34.604904, 36.526566, 23.090784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118332, 37.246082, 22.979830>,  <34.885178, 37.099422, 22.802206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118332, 37.246082, 22.979830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.208050, 36.923248, 23.198298>,  <34.261879, 36.729546, 23.329378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.208050, 36.923248, 23.198298>,  <34.118332, 37.246082, 22.979830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208050, 36.923248, 23.198298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604634, 0.324284, 0.727501,
		-0.764271, -0.493406, -0.415259,
		0.224292, -0.807088, 0.546171,
		34.275337, 36.681122, 23.362148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477104, 37.039951, 23.380030>,  <34.118332, 37.246082, 22.979830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477104, 37.039951, 23.380030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.768806, 36.857574, 23.584110>,  <33.943829, 36.748150, 23.706558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.768806, 36.857574, 23.584110>,  <33.477104, 37.039951, 23.380030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768806, 36.857574, 23.584110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506950, 0.140765, 0.850404,
		-0.459554, -0.878807, -0.128487,
		0.729254, -0.455943, 0.510201,
		33.987583, 36.720791, 23.737171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079807, 36.580956, 23.793247>,  <33.477104, 37.039951, 23.380030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079807, 36.580956, 23.793247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.434456, 36.655075, 23.962744>,  <33.647247, 36.699547, 24.064442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.434456, 36.655075, 23.962744>,  <33.079807, 36.580956, 23.793247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434456, 36.655075, 23.962744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438150, 0.043249, 0.897861,
		0.148052, -0.981729, 0.119537,
		0.886626, 0.185305, 0.423741,
		33.700443, 36.710667, 24.089867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035831, 36.298885, 24.434847>,  <33.079807, 36.580956, 23.793247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035831, 36.298885, 24.434847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.370792, 36.510864, 24.488394>,  <33.571770, 36.638050, 24.520521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.370792, 36.510864, 24.488394>,  <33.035831, 36.298885, 24.434847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370792, 36.510864, 24.488394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218839, 0.100632, 0.970558,
		0.500874, -0.842038, 0.200243,
		0.837398, 0.529948, 0.133867,
		33.622013, 36.669849, 24.528553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198868, 36.014664, 25.051609>,  <33.035831, 36.298885, 24.434847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198868, 36.014664, 25.051609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.390457, 36.364296, 25.019197>,  <33.505409, 36.574078, 24.999750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.390457, 36.364296, 25.019197>,  <33.198868, 36.014664, 25.051609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390457, 36.364296, 25.019197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259732, 0.229284, 0.938066,
		0.838525, -0.428262, 0.336848,
		0.478972, 0.874083, -0.081027,
		33.534149, 36.626522, 24.994890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527920, 36.077789, 25.777277>,  <33.198868, 36.014664, 25.051609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527920, 36.077789, 25.777277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.569630, 36.445774, 25.626120>,  <33.594654, 36.666565, 25.535425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.569630, 36.445774, 25.626120>,  <33.527920, 36.077789, 25.777277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569630, 36.445774, 25.626120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232165, 0.391981, 0.890197,
		0.967071, -0.005091, 0.254456,
		0.104274, 0.919959, -0.377892,
		33.600910, 36.721764, 25.512753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964539, 36.450268, 26.251064>,  <33.527920, 36.077789, 25.777277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964539, 36.450268, 26.251064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.752846, 36.717812, 26.042240>,  <33.625832, 36.878338, 25.916946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.752846, 36.717812, 26.042240>,  <33.964539, 36.450268, 26.251064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752846, 36.717812, 26.042240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262244, 0.456220, 0.850348,
		0.806935, 0.586937, -0.066042,
		-0.529230, 0.668856, -0.522060,
		33.594078, 36.918468, 25.885622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699020, 36.322361, 26.582853>,  <33.964539, 36.450268, 26.251064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699020, 36.322361, 26.582853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.670956, 35.978535, 26.785330>,  <34.654118, 35.772240, 26.906815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.670956, 35.978535, 26.785330>,  <34.699020, 36.322361, 26.582853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670956, 35.978535, 26.785330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006595, -0.507830, -0.861432,
		0.997513, -0.057105, 0.041301,
		-0.070166, -0.859563, 0.506190,
		34.649906, 35.720665, 26.937187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177769, 35.886173, 26.227753>,  <34.699020, 36.322361, 26.582853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177769, 35.886173, 26.227753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.981174, 35.615097, 26.446545>,  <34.863220, 35.452454, 26.577820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.981174, 35.615097, 26.446545>,  <35.177769, 35.886173, 26.227753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981174, 35.615097, 26.446545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078610, -0.660028, -0.747117,
		0.867332, -0.324197, 0.377666,
		-0.491483, -0.677687, 0.546979,
		34.833729, 35.411793, 26.610638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557476, 35.325615, 26.130287>,  <35.177769, 35.886173, 26.227753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557476, 35.325615, 26.130287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.198338, 35.194962, 26.248390>,  <34.982853, 35.116570, 26.319252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.198338, 35.194962, 26.248390>,  <35.557476, 35.325615, 26.130287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198338, 35.194962, 26.248390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033431, -0.719220, -0.693978,
		0.439029, -0.613218, 0.656671,
		-0.897851, -0.326630, 0.295258,
		34.928982, 35.096973, 26.336967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574070, 34.619499, 26.368101>,  <35.557476, 35.325615, 26.130287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574070, 34.619499, 26.368101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.194374, 34.661312, 26.249434>,  <34.966557, 34.686398, 26.178234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.194374, 34.661312, 26.249434>,  <35.574070, 34.619499, 26.368101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194374, 34.661312, 26.249434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142700, -0.697410, -0.702321,
		-0.280311, -0.709008, 0.647096,
		-0.949243, 0.104528, -0.296668,
		34.909599, 34.692669, 26.160433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330482, 33.978619, 26.294788>,  <35.574070, 34.619499, 26.368101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330482, 33.978619, 26.294788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.113281, 34.201096, 26.043139>,  <34.982960, 34.334579, 25.892149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.113281, 34.201096, 26.043139>,  <35.330482, 33.978619, 26.294788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113281, 34.201096, 26.043139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385184, -0.500757, -0.775161,
		-0.746175, -0.663246, 0.057680,
		-0.543007, 0.556189, -0.629125,
		34.950378, 34.367950, 25.854401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947117, 33.490551, 25.711321>,  <35.330482, 33.978619, 26.294788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947117, 33.490551, 25.711321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.007233, 33.861553, 25.574419>,  <35.043304, 34.084156, 25.492279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.007233, 33.861553, 25.574419>,  <34.947117, 33.490551, 25.711321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007233, 33.861553, 25.574419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385423, -0.373764, -0.843653,
		-0.910418, -0.005117, -0.413657,
		0.150293, 0.927510, -0.342254,
		35.052319, 34.139805, 25.471743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824211, 33.370640, 25.079412>,  <34.947117, 33.490551, 25.711321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824211, 33.370640, 25.079412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.964054, 33.744511, 25.053614>,  <35.047958, 33.968834, 25.038136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.964054, 33.744511, 25.053614>,  <34.824211, 33.370640, 25.079412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964054, 33.744511, 25.053614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353867, -0.195474, -0.914641,
		-0.867498, 0.296942, -0.399090,
		0.349607, 0.934674, -0.064496,
		35.068935, 34.024914, 25.034266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607037, 33.693451, 24.375578>,  <34.824211, 33.370640, 25.079412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607037, 33.693451, 24.375578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.933624, 33.892803, 24.492197>,  <35.129578, 34.012413, 24.562168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.933624, 33.892803, 24.492197>,  <34.607037, 33.693451, 24.375578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933624, 33.892803, 24.492197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404161, -0.132684, -0.905013,
		-0.412358, 0.856744, -0.309759,
		0.816465, 0.498382, 0.291550,
		35.178562, 34.042316, 24.579662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773022, 34.062061, 23.827126>,  <34.607037, 33.693451, 24.375578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773022, 34.062061, 23.827126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.108990, 34.060883, 24.044205>,  <35.310570, 34.060173, 24.174452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.108990, 34.060883, 24.044205>,  <34.773022, 34.062061, 23.827126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108990, 34.060883, 24.044205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542548, 0.028517, -0.839540,
		-0.012998, 0.999589, 0.025553,
		0.839924, -0.002951, 0.542696,
		35.360966, 34.059998, 24.207014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216095, 34.428509, 23.414057>,  <34.773022, 34.062061, 23.827126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216095, 34.428509, 23.414057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.461906, 34.245350, 23.671017>,  <35.609394, 34.135456, 23.825193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.461906, 34.245350, 23.671017>,  <35.216095, 34.428509, 23.414057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461906, 34.245350, 23.671017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698769, -0.062009, -0.712654,
		0.366156, 0.886841, 0.281857,
		0.614533, -0.457896, 0.642402,
		35.646267, 34.107983, 23.863737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917778, 34.658890, 23.142307>,  <35.216095, 34.428509, 23.414057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917778, 34.658890, 23.142307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.949955, 34.325466, 23.360926>,  <35.969261, 34.125412, 23.492096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.949955, 34.325466, 23.360926>,  <35.917778, 34.658890, 23.142307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949955, 34.325466, 23.360926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589015, -0.402593, -0.700699,
		0.804108, 0.378288, 0.458593,
		0.080440, -0.833557, 0.546546,
		35.974087, 34.075397, 23.524889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588596, 34.520943, 23.287130>,  <35.917778, 34.658890, 23.142307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588596, 34.520943, 23.287130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.432285, 34.153748, 23.314266>,  <36.338501, 33.933430, 23.330547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.432285, 34.153748, 23.314266>,  <36.588596, 34.520943, 23.287130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432285, 34.153748, 23.314266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670571, -0.334392, -0.662206,
		0.630580, -0.213280, 0.746245,
		-0.390773, -0.917984, 0.067841,
		36.315052, 33.878353, 23.334620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154209, 34.095551, 23.203104>,  <36.588596, 34.520943, 23.287130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154209, 34.095551, 23.203104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.853241, 33.841084, 23.134794>,  <36.672661, 33.688404, 23.093807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.853241, 33.841084, 23.134794>,  <37.154209, 34.095551, 23.203104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853241, 33.841084, 23.134794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465099, -0.329524, -0.821643,
		0.466425, -0.697645, 0.543819,
		-0.752416, -0.636164, -0.170776,
		36.627518, 33.650234, 23.083561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410828, 33.368408, 23.243368>,  <37.154209, 34.095551, 23.203104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410828, 33.368408, 23.243368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.089108, 33.359093, 23.005859>,  <36.896076, 33.353504, 22.863354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.089108, 33.359093, 23.005859>,  <37.410828, 33.368408, 23.243368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089108, 33.359093, 23.005859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554952, -0.386686, -0.736548,
		-0.212451, -0.921918, 0.323933,
		-0.804297, -0.023287, -0.593772,
		36.847820, 33.352108, 22.827728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677914, 32.717430, 23.343706>,  <37.410828, 33.368408, 23.243368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677914, 32.717430, 23.343706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.969631, 32.515011, 23.527903>,  <38.144661, 32.393559, 23.638420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.969631, 32.515011, 23.527903>,  <37.677914, 32.717430, 23.343706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969631, 32.515011, 23.527903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455738, 0.142716, 0.878598,
		-0.510332, -0.850616, -0.126544,
		0.729290, -0.506048, 0.460491,
		38.188419, 32.363197, 23.666050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334675, 32.142082, 23.834625>,  <37.677914, 32.717430, 23.343706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334675, 32.142082, 23.834625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.706181, 32.234806, 23.950317>,  <37.929085, 32.290440, 24.019732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.706181, 32.234806, 23.950317>,  <37.334675, 32.142082, 23.834625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706181, 32.234806, 23.950317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302319, 0.022282, 0.952946,
		0.214462, -0.972505, 0.090776,
		0.928768, 0.231814, 0.289228,
		37.984810, 32.304348, 24.037086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425472, 31.690117, 24.491228>,  <37.334675, 32.142082, 23.834625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425472, 31.690117, 24.491228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.739540, 31.935295, 24.526579>,  <37.927979, 32.082401, 24.547789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.739540, 31.935295, 24.526579>,  <37.425472, 31.690117, 24.491228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739540, 31.935295, 24.526579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172560, 0.079489, 0.981786,
		0.594758, -0.786115, 0.168183,
		0.785165, 0.612947, 0.088376,
		37.975090, 32.119179, 24.553091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814308, 31.451790, 25.061361>,  <37.425472, 31.690117, 24.491228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814308, 31.451790, 25.061361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.861221, 31.842680, 24.990625>,  <37.889370, 32.077213, 24.948185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.861221, 31.842680, 24.990625>,  <37.814308, 31.451790, 25.061361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861221, 31.842680, 24.990625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330901, 0.206344, 0.920829,
		0.936349, -0.049479, 0.347566,
		0.117280, 0.977228, -0.176838,
		37.896404, 32.135849, 24.937574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176643, 31.666553, 25.687769>,  <37.814308, 31.451790, 25.061361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176643, 31.666553, 25.687769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.024391, 31.994347, 25.516388>,  <37.933041, 32.191021, 25.413559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.024391, 31.994347, 25.516388>,  <38.176643, 31.666553, 25.687769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024391, 31.994347, 25.516388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159303, 0.398291, 0.903320,
		0.910902, 0.412084, -0.021056,
		-0.380630, 0.819482, -0.428451,
		37.910202, 32.240192, 25.387854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600803, 32.141235, 25.967514>,  <38.176643, 31.666553, 25.687769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600803, 32.141235, 25.967514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.284809, 32.349712, 25.838341>,  <38.095215, 32.474800, 25.760838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.284809, 32.349712, 25.838341>,  <38.600803, 32.141235, 25.967514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284809, 32.349712, 25.838341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015118, 0.543093, 0.839536,
		0.612944, 0.658336, -0.436913,
		-0.789982, 0.521194, -0.322933,
		38.047813, 32.506069, 25.741461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737843, 32.752983, 26.174633>,  <38.600803, 32.141235, 25.967514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737843, 32.752983, 26.174633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.344135, 32.771488, 26.106417>,  <38.107910, 32.782593, 26.065487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.344135, 32.771488, 26.106417>,  <38.737843, 32.752983, 26.174633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344135, 32.771488, 26.106417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119555, 0.536328, 0.835499,
		0.130120, 0.842740, -0.522357,
		-0.984264, 0.046265, -0.170541,
		38.048855, 32.785366, 26.055254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646965, 33.447254, 26.245583>,  <38.737843, 32.752983, 26.174633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646965, 33.447254, 26.245583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.297840, 33.262794, 26.309509>,  <38.088364, 33.152119, 26.347864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.297840, 33.262794, 26.309509>,  <38.646965, 33.447254, 26.245583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297840, 33.262794, 26.309509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078490, 0.455819, 0.886605,
		-0.481703, 0.761296, -0.434040,
		-0.872813, -0.461148, 0.159816,
		38.035995, 33.124451, 26.357454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222527, 33.986160, 26.455587>,  <38.646965, 33.447254, 26.245583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222527, 33.986160, 26.455587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.061142, 33.646248, 26.591284>,  <37.964310, 33.442299, 26.672701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.061142, 33.646248, 26.591284>,  <38.222527, 33.986160, 26.455587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061142, 33.646248, 26.591284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081741, 0.402749, 0.911653,
		-0.911337, 0.340089, -0.231957,
		-0.403463, -0.849784, 0.339241,
		37.940102, 33.391312, 26.693056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643501, 34.143799, 26.737579>,  <38.222527, 33.986160, 26.455587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643501, 34.143799, 26.737579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.706043, 33.788692, 26.910749>,  <37.743568, 33.575630, 27.014652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.706043, 33.788692, 26.910749>,  <37.643501, 34.143799, 26.737579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706043, 33.788692, 26.910749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210818, 0.398220, 0.892736,
		-0.964940, -0.230855, -0.124892,
		0.156358, -0.887765, 0.432926,
		37.752949, 33.522362, 27.040627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053379, 34.007797, 27.148525>,  <37.643501, 34.143799, 26.737579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053379, 34.007797, 27.148525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.331425, 33.766624, 27.305134>,  <37.498253, 33.621922, 27.399099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.331425, 33.766624, 27.305134>,  <37.053379, 34.007797, 27.148525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331425, 33.766624, 27.305134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240013, 0.318727, 0.916955,
		-0.677652, -0.731357, 0.076839,
		0.695112, -0.602934, 0.391522,
		37.539959, 33.585743, 27.422590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751110, 33.763485, 27.801342>,  <37.053379, 34.007797, 27.148525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751110, 33.763485, 27.801342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.138577, 33.671154, 27.838018>,  <37.371056, 33.615757, 27.860023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.138577, 33.671154, 27.838018>,  <36.751110, 33.763485, 27.801342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138577, 33.671154, 27.838018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027555, 0.466762, 0.883953,
		-0.246840, -0.853728, 0.458496,
		0.968665, -0.230829, 0.091691,
		37.429176, 33.601906, 27.865526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777782, 33.542240, 28.508768>,  <36.751110, 33.763485, 27.801342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777782, 33.542240, 28.508768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.139954, 33.662910, 28.389311>,  <37.357258, 33.735313, 28.317636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.139954, 33.662910, 28.389311>,  <36.777782, 33.542240, 28.508768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139954, 33.662910, 28.389311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160137, 0.408802, 0.898464,
		0.393117, -0.861325, 0.321836,
		0.905437, 0.301663, -0.298637,
		37.411583, 33.753414, 28.299719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195004, 33.259350, 28.929892>,  <36.777782, 33.542240, 28.508768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195004, 33.259350, 28.929892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.365936, 33.586296, 28.775337>,  <37.468494, 33.782463, 28.682604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.365936, 33.586296, 28.775337>,  <37.195004, 33.259350, 28.929892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365936, 33.586296, 28.775337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209990, 0.325954, 0.921769,
		0.879371, -0.475037, -0.032349,
		0.427330, 0.817370, -0.386387,
		37.494137, 33.831509, 28.659422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.898899, 33.657948, 24.013039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.518917, 33.611664, 23.896967>,  <42.290928, 33.583893, 23.827324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.518917, 33.611664, 23.896967>,  <42.898899, 33.657948, 24.013039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518917, 33.611664, 23.896967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282770, -0.713320, -0.641261,
		-0.132790, -0.691221, 0.710339,
		-0.949952, -0.115710, -0.290178,
		42.233932, 33.576950, 23.809914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638374, 32.890572, 24.070593>,  <42.898899, 33.657948, 24.013039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638374, 32.890572, 24.070593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.418274, 33.080730, 23.796009>,  <42.286213, 33.194824, 23.631258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.418274, 33.080730, 23.796009>,  <42.638374, 32.890572, 24.070593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418274, 33.080730, 23.796009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227467, -0.705673, -0.671031,
		-0.803421, -0.525381, 0.280160,
		-0.550249, 0.475393, -0.686460,
		42.253201, 33.223347, 23.590071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350624, 32.303333, 23.702690>,  <42.638374, 32.890572, 24.070593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350624, 32.303333, 23.702690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.317017, 32.621105, 23.462084>,  <42.296852, 32.811768, 23.317720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.317017, 32.621105, 23.462084>,  <42.350624, 32.303333, 23.702690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317017, 32.621105, 23.462084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231122, -0.571654, -0.787270,
		-0.969291, -0.205166, -0.135583,
		-0.084014, 0.794430, -0.601517,
		42.291813, 32.859436, 23.281630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909325, 32.125549, 23.160973>,  <42.350624, 32.303333, 23.702690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909325, 32.125549, 23.160973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.108818, 32.442188, 23.019753>,  <42.228512, 32.632172, 22.935020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.108818, 32.442188, 23.019753>,  <41.909325, 32.125549, 23.160973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108818, 32.442188, 23.019753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139864, -0.475485, -0.868535,
		-0.855399, 0.383785, -0.347854,
		0.498729, 0.791596, -0.353052,
		42.258438, 32.679668, 22.913837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677689, 32.148136, 22.537258>,  <41.909325, 32.125549, 23.160973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677689, 32.148136, 22.537258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.996975, 32.388176, 22.516359>,  <42.188545, 32.532200, 22.503820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.996975, 32.388176, 22.516359>,  <41.677689, 32.148136, 22.537258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996975, 32.388176, 22.516359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270203, -0.434219, -0.859328,
		-0.538372, 0.671811, -0.508749,
		0.798214, 0.600104, -0.052246,
		42.236439, 32.568207, 22.500685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716904, 32.357777, 21.834023>,  <41.677689, 32.148136, 22.537258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716904, 32.357777, 21.834023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.088009, 32.438988, 21.959267>,  <42.310673, 32.487717, 22.034414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.088009, 32.438988, 21.959267>,  <41.716904, 32.357777, 21.834023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088009, 32.438988, 21.959267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350358, -0.185005, -0.918162,
		-0.128488, 0.961536, -0.242774,
		0.927761, 0.203030, 0.313111,
		42.366337, 32.499897, 22.053200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064365, 32.777733, 21.373838>,  <41.716904, 32.357777, 21.834023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064365, 32.777733, 21.373838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.355534, 32.606148, 21.587799>,  <42.530235, 32.503197, 21.716175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.355534, 32.606148, 21.587799>,  <42.064365, 32.777733, 21.373838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355534, 32.606148, 21.587799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496152, -0.208914, -0.842727,
		0.473247, 0.878832, 0.060757,
		0.727922, -0.428962, 0.534902,
		42.573910, 32.477459, 21.748270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668850, 33.148346, 21.089367>,  <42.064365, 32.777733, 21.373838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668850, 33.148346, 21.089367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.751804, 32.792164, 21.251394>,  <42.801575, 32.578453, 21.348610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.751804, 32.792164, 21.251394>,  <42.668850, 33.148346, 21.089367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751804, 32.792164, 21.251394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378232, -0.308883, -0.872658,
		0.902182, 0.334184, 0.272741,
		0.207383, -0.890456, 0.405068,
		42.814018, 32.525028, 21.372915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277435, 32.907627, 20.768906>,  <42.668850, 33.148346, 21.089367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277435, 32.907627, 20.768906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.154327, 32.569092, 20.942793>,  <43.080463, 32.365971, 21.047125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.154327, 32.569092, 20.942793>,  <43.277435, 32.907627, 20.768906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154327, 32.569092, 20.942793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405649, -0.530011, -0.744672,
		0.860653, -0.052848, 0.506442,
		-0.307774, -0.846342, 0.434718,
		43.061996, 32.315189, 21.073208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918175, 32.477234, 20.756021>,  <43.277435, 32.907627, 20.768906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918175, 32.477234, 20.756021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.582489, 32.261395, 20.783007>,  <43.381077, 32.131889, 20.799198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.582489, 32.261395, 20.783007>,  <43.918175, 32.477234, 20.756021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.582489, 32.261395, 20.783007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346594, -0.626348, -0.698256,
		0.419033, -0.562604, 0.712662,
		-0.839216, -0.539597, 0.067465,
		43.330723, 32.099514, 20.803246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.125801, 31.745138, 20.748846>,  <43.918175, 32.477234, 20.756021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.125801, 31.745138, 20.748846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.752972, 31.800547, 20.614946>,  <43.529274, 31.833792, 20.534607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.752972, 31.800547, 20.614946>,  <44.125801, 31.745138, 20.748846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752972, 31.800547, 20.614946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233948, -0.475370, -0.848110,
		-0.276611, -0.868812, 0.410672,
		-0.932070, 0.138521, -0.334749,
		43.473351, 31.842102, 20.514521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036919, 31.157259, 20.442947>,  <44.125801, 31.745138, 20.748846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036919, 31.157259, 20.442947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.744499, 31.391502, 20.302870>,  <43.569050, 31.532049, 20.218822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.744499, 31.391502, 20.302870>,  <44.036919, 31.157259, 20.442947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744499, 31.391502, 20.302870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076763, -0.439392, -0.895010,
		-0.677999, -0.681174, 0.276262,
		-0.731044, 0.585609, -0.350196,
		43.525185, 31.567184, 20.197811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428043, 30.752157, 20.313122>,  <44.036919, 31.157259, 20.442947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428043, 30.752157, 20.313122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.455349, 31.080179, 20.085842>,  <43.471733, 31.276993, 19.949474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.455349, 31.080179, 20.085842>,  <43.428043, 30.752157, 20.313122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455349, 31.080179, 20.085842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019790, -0.570531, -0.821038,
		-0.997471, 0.044803, -0.055176,
		0.068265, 0.820053, -0.568201,
		43.475830, 31.326195, 19.915382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709923, 31.000420, 19.949909>,  <43.428043, 30.752157, 20.313122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709923, 31.000420, 19.949909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.069656, 31.059715, 19.785360>,  <43.285496, 31.095293, 19.686632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.069656, 31.059715, 19.785360>,  <42.709923, 31.000420, 19.949909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069656, 31.059715, 19.785360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267711, -0.557187, -0.786049,
		-0.345732, 0.817049, -0.461412,
		0.899333, 0.148238, -0.411370,
		43.339455, 31.104187, 19.661949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982758, 30.649315, 19.963940>,  <42.709923, 31.000420, 19.949909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982758, 30.649315, 19.963940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.734562, 30.460554, 19.713404>,  <41.585644, 30.347298, 19.563082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.734562, 30.460554, 19.713404>,  <41.982758, 30.649315, 19.963940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734562, 30.460554, 19.713404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773861, 0.497803, 0.391574,
		0.127011, 0.727669, -0.674066,
		-0.620489, -0.471900, -0.626341,
		41.548416, 30.318985, 19.525501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563618, 31.108938, 19.710655>,  <41.982758, 30.649315, 19.963940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563618, 31.108938, 19.710655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.363529, 30.763912, 19.680294>,  <41.243477, 30.556896, 19.662077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.363529, 30.763912, 19.680294>,  <41.563618, 31.108938, 19.710655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363529, 30.763912, 19.680294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743497, 0.382920, 0.548256,
		-0.443842, 0.330682, -0.832859,
		-0.500217, -0.862567, -0.075905,
		41.213463, 30.505142, 19.657522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887184, 31.372513, 19.564901>,  <41.563618, 31.108938, 19.710655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887184, 31.372513, 19.564901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.850746, 31.006241, 19.721479>,  <40.828884, 30.786478, 19.815426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.850746, 31.006241, 19.721479>,  <40.887184, 31.372513, 19.564901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850746, 31.006241, 19.721479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740376, 0.325155, 0.588318,
		-0.665992, -0.236224, -0.707569,
		-0.091095, -0.915682, 0.391445,
		40.823418, 30.731537, 19.838913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115166, 31.184294, 19.551701>,  <40.887184, 31.372513, 19.564901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115166, 31.184294, 19.551701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.315254, 30.976681, 19.828939>,  <40.435307, 30.852114, 19.995283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.315254, 30.976681, 19.828939>,  <40.115166, 31.184294, 19.551701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315254, 30.976681, 19.828939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687776, 0.248132, 0.682198,
		-0.526063, -0.817946, -0.232858,
		0.500221, -0.519033, 0.693096,
		40.465321, 30.820971, 20.036869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623058, 30.736963, 19.872417>,  <40.115166, 31.184294, 19.551701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623058, 30.736963, 19.872417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.905872, 30.750351, 20.154970>,  <40.075562, 30.758385, 20.324501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.905872, 30.750351, 20.154970>,  <39.623058, 30.736963, 19.872417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905872, 30.750351, 20.154970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705131, 0.109238, 0.700612,
		-0.053714, -0.993452, 0.100837,
		0.707039, 0.033471, 0.706381,
		40.117985, 30.760393, 20.366884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303974, 30.407988, 20.487015>,  <39.623058, 30.736963, 19.872417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303974, 30.407988, 20.487015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.636913, 30.561419, 20.647051>,  <39.836678, 30.653477, 20.743073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.636913, 30.561419, 20.647051>,  <39.303974, 30.407988, 20.487015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636913, 30.561419, 20.647051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477238, 0.128892, 0.869270,
		0.281867, -0.914469, 0.290342,
		0.832343, 0.383580, 0.400088,
		39.886616, 30.676491, 20.767078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419483, 30.149876, 21.154537>,  <39.303974, 30.407988, 20.487015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419483, 30.149876, 21.154537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.602577, 30.503305, 21.194096>,  <39.712433, 30.715363, 21.217831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.602577, 30.503305, 21.194096>,  <39.419483, 30.149876, 21.154537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602577, 30.503305, 21.194096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386426, 0.097534, 0.917149,
		0.800723, -0.458023, 0.386080,
		0.457731, 0.883574, 0.098894,
		39.739895, 30.768377, 21.223764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574184, 30.163494, 21.820024>,  <39.419483, 30.149876, 21.154537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574184, 30.163494, 21.820024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.633923, 30.551542, 21.743540>,  <39.669765, 30.784370, 21.697649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.633923, 30.551542, 21.743540>,  <39.574184, 30.163494, 21.820024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633923, 30.551542, 21.743540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379176, 0.234785, 0.895043,
		0.913193, -0.061168, 0.402911,
		0.149346, 0.970121, -0.191211,
		39.678726, 30.842579, 21.686176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907085, 30.505102, 22.430305>,  <39.574184, 30.163494, 21.820024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907085, 30.505102, 22.430305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.719978, 30.793734, 22.226141>,  <39.607712, 30.966911, 22.103643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.719978, 30.793734, 22.226141>,  <39.907085, 30.505102, 22.430305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719978, 30.793734, 22.226141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405069, 0.338247, 0.849417,
		0.785564, 0.604082, 0.134068,
		-0.467770, 0.721577, -0.510409,
		39.579647, 31.010206, 22.073019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050411, 31.131006, 22.694361>,  <39.907085, 30.505102, 22.430305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050411, 31.131006, 22.694361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.707134, 31.224678, 22.511639>,  <39.501167, 31.280880, 22.402004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.707134, 31.224678, 22.511639>,  <40.050411, 31.131006, 22.694361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707134, 31.224678, 22.511639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315786, 0.460744, 0.829454,
		0.404711, 0.856082, -0.321455,
		-0.858189, 0.234178, -0.456807,
		39.449677, 31.294931, 22.374596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924412, 31.787226, 22.920654>,  <40.050411, 31.131006, 22.694361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924412, 31.787226, 22.920654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.576118, 31.656828, 22.773382>,  <39.367142, 31.578590, 22.685019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.576118, 31.656828, 22.773382>,  <39.924412, 31.787226, 22.920654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576118, 31.656828, 22.773382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490567, 0.523706, 0.696474,
		-0.034228, 0.787058, -0.615929,
		-0.870731, -0.325994, -0.368179,
		39.314899, 31.559031, 22.662928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533871, 32.400379, 22.860699>,  <39.924412, 31.787226, 22.920654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533871, 32.400379, 22.860699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.243298, 32.126011, 22.843649>,  <39.068954, 31.961391, 22.833420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.243298, 32.126011, 22.843649>,  <39.533871, 32.400379, 22.860699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243298, 32.126011, 22.843649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463335, 0.443007, 0.767505,
		-0.507563, 0.577287, -0.639624,
		-0.726429, -0.685918, -0.042624,
		39.025368, 31.920235, 22.830862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930325, 32.731518, 22.733738>,  <39.533871, 32.400379, 22.860699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930325, 32.731518, 22.733738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.833714, 32.382404, 22.903404>,  <38.775749, 32.172935, 23.005203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.833714, 32.382404, 22.903404>,  <38.930325, 32.731518, 22.733738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833714, 32.382404, 22.903404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479295, 0.487360, 0.729901,
		-0.843767, -0.027012, -0.536030,
		-0.241524, -0.872783, 0.424165,
		38.761257, 32.120571, 23.030653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237595, 32.748749, 22.836370>,  <38.930325, 32.731518, 22.733738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237595, 32.748749, 22.836370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.392307, 32.497490, 23.106428>,  <38.485134, 32.346733, 23.268463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.392307, 32.497490, 23.106428>,  <38.237595, 32.748749, 22.836370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392307, 32.497490, 23.106428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565271, 0.416954, 0.711771,
		-0.728605, -0.656943, -0.193804,
		0.386785, -0.628152, 0.675146,
		38.508343, 32.309044, 23.308971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542767, 32.732834, 22.652504>,  <38.237595, 32.748749, 22.836370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542767, 32.732834, 22.652504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.219955, 32.929974, 22.522392>,  <37.026268, 33.048256, 22.444326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.219955, 32.929974, 22.522392>,  <37.542767, 32.732834, 22.652504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219955, 32.929974, 22.522392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232718, -0.240815, -0.942258,
		-0.542725, -0.836125, 0.079648,
		-0.807027, 0.492852, -0.325277,
		36.977848, 33.077827, 22.424809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209396, 32.401001, 22.151062>,  <37.542767, 32.732834, 22.652504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209396, 32.401001, 22.151062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.074085, 32.770267, 22.078035>,  <36.992897, 32.991829, 22.034220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.074085, 32.770267, 22.078035>,  <37.209396, 32.401001, 22.151062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074085, 32.770267, 22.078035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361259, -0.051743, -0.931029,
		-0.868940, -0.380903, -0.315998,
		-0.338282, 0.923166, -0.182566,
		36.972599, 33.047218, 22.023266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871773, 32.390545, 21.559717>,  <37.209396, 32.401001, 22.151062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871773, 32.390545, 21.559717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.973454, 32.775993, 21.592747>,  <37.034462, 33.007263, 21.612564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.973454, 32.775993, 21.592747>,  <36.871773, 32.390545, 21.559717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973454, 32.775993, 21.592747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412056, -0.030667, -0.910642,
		-0.874979, 0.265517, -0.404861,
		0.254207, 0.963618, 0.082575,
		37.049717, 33.065079, 21.617519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604309, 32.639057, 20.971722>,  <36.871773, 32.390545, 21.559717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604309, 32.639057, 20.971722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.872990, 32.905617, 21.101173>,  <37.034199, 33.065552, 21.178844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.872990, 32.905617, 21.101173>,  <36.604309, 32.639057, 20.971722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872990, 32.905617, 21.101173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427675, 0.007893, -0.903898,
		-0.604907, 0.745557, -0.279698,
		0.671700, 0.666395, 0.323630,
		37.074501, 33.105534, 21.198263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609642, 33.049721, 20.480431>,  <36.604309, 32.639057, 20.971722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609642, 33.049721, 20.480431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.952538, 33.136520, 20.667213>,  <37.158276, 33.188602, 20.779284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.952538, 33.136520, 20.667213>,  <36.609642, 33.049721, 20.480431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952538, 33.136520, 20.667213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500371, -0.137031, -0.854898,
		-0.121527, 0.966505, -0.226050,
		0.857240, 0.217002, 0.466959,
		37.209709, 33.201622, 20.807301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819626, 33.482998, 20.010941>,  <36.609642, 33.049721, 20.480431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819626, 33.482998, 20.010941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.140862, 33.361160, 20.215792>,  <37.333603, 33.288059, 20.338701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.140862, 33.361160, 20.215792>,  <36.819626, 33.482998, 20.010941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140862, 33.361160, 20.215792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528295, -0.033547, -0.848398,
		0.275593, 0.951893, 0.133972,
		0.803089, -0.304589, 0.512126,
		37.381790, 33.269783, 20.369429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472504, 33.831909, 19.685160>,  <36.819626, 33.482998, 20.010941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472504, 33.831909, 19.685160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.590111, 33.493500, 19.863060>,  <37.660675, 33.290455, 19.969801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.590111, 33.493500, 19.863060>,  <37.472504, 33.831909, 19.685160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590111, 33.493500, 19.863060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656981, -0.159084, -0.736932,
		0.694212, 0.508863, 0.509046,
		0.294016, -0.846020, 0.444752,
		37.678314, 33.239693, 19.996485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689167, 34.494652, 19.586432>,  <37.472504, 33.831909, 19.685160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689167, 34.494652, 19.586432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.460938, 34.642670, 19.293171>,  <37.324001, 34.731480, 19.117214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.460938, 34.642670, 19.293171>,  <37.689167, 34.494652, 19.586432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460938, 34.642670, 19.293171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659672, 0.325228, 0.677540,
		0.489163, 0.870226, 0.058543,
		-0.570572, 0.370046, -0.733153,
		37.289764, 34.753685, 19.073225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488552, 35.180508, 19.900768>,  <37.689167, 34.494652, 19.586432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488552, 35.180508, 19.900768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.219124, 35.100525, 19.616144>,  <37.057468, 35.052536, 19.445370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.219124, 35.100525, 19.616144>,  <37.488552, 35.180508, 19.900768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219124, 35.100525, 19.616144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738094, 0.131181, 0.661823,
		-0.038991, 0.970984, -0.235945,
		-0.673571, -0.199954, -0.711562,
		37.017052, 35.040539, 19.402676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057720, 35.800388, 19.751001>,  <37.488552, 35.180508, 19.900768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057720, 35.800388, 19.751001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.848301, 35.477585, 19.641727>,  <36.722649, 35.283901, 19.576162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.848301, 35.477585, 19.641727>,  <37.057720, 35.800388, 19.751001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848301, 35.477585, 19.641727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700446, 0.225152, 0.677261,
		-0.485047, 0.545933, -0.683145,
		-0.523551, -0.807009, -0.273187,
		36.691235, 35.235481, 19.559771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489677, 36.007343, 19.538542>,  <37.057720, 35.800388, 19.751001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489677, 36.007343, 19.538542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.423965, 35.627045, 19.643681>,  <36.384537, 35.398865, 19.706764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.423965, 35.627045, 19.643681>,  <36.489677, 36.007343, 19.538542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423965, 35.627045, 19.643681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795273, 0.285301, 0.534924,
		-0.583569, -0.121158, -0.802974,
		-0.164279, -0.950749, 0.262847,
		36.374683, 35.341820, 19.722534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791733, 36.044716, 19.778130>,  <36.489677, 36.007343, 19.538542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791733, 36.044716, 19.778130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.920334, 35.687088, 19.902882>,  <35.997494, 35.472511, 19.977734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.920334, 35.687088, 19.902882>,  <35.791733, 36.044716, 19.778130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920334, 35.687088, 19.902882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689846, 0.004469, 0.723942,
		-0.648649, -0.447902, -0.615335,
		0.321506, -0.894071, 0.311882,
		36.016785, 35.418865, 19.996447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183109, 35.553070, 19.821810>,  <35.791733, 36.044716, 19.778130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183109, 35.553070, 19.821810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.479195, 35.415115, 20.052681>,  <35.656845, 35.332344, 20.191204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.479195, 35.415115, 20.052681>,  <35.183109, 35.553070, 19.821810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479195, 35.415115, 20.052681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615055, -0.000519, 0.788484,
		-0.271637, -0.938645, -0.212507,
		0.740217, -0.344886, 0.577177,
		35.701260, 35.311649, 20.225834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853024, 35.031578, 20.316103>,  <35.183109, 35.553070, 19.821810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853024, 35.031578, 20.316103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.183208, 35.140125, 20.514080>,  <35.381321, 35.205254, 20.632866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.183208, 35.140125, 20.514080>,  <34.853024, 35.031578, 20.316103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183208, 35.140125, 20.514080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561054, 0.298321, 0.772155,
		0.061887, -0.915076, 0.398506,
		0.825463, 0.271370, 0.494944,
		35.430847, 35.221535, 20.662563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.173763, 34.605865, 18.825203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.011692, 34.281086, 18.993284>,  <42.914452, 34.086220, 19.094133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.011692, 34.281086, 18.993284>,  <43.173763, 34.605865, 18.825203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011692, 34.281086, 18.993284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516477, 0.582536, 0.627616,
		-0.754376, 0.037270, -0.655383,
		-0.405176, -0.811950, 0.420203,
		42.890141, 34.037502, 19.119345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420177, 34.764568, 18.884098>,  <43.173763, 34.605865, 18.825203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420177, 34.764568, 18.884098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.525017, 34.477772, 19.142473>,  <42.587921, 34.305695, 19.297499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.525017, 34.477772, 19.142473>,  <42.420177, 34.764568, 18.884098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525017, 34.477772, 19.142473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527958, 0.453754, 0.717891,
		-0.807816, -0.529183, -0.259614,
		0.262095, -0.716989, 0.645936,
		42.603645, 34.262676, 19.336254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813282, 34.778324, 19.331570>,  <42.420177, 34.764568, 18.884098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813282, 34.778324, 19.331570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.109474, 34.619457, 19.548437>,  <42.287189, 34.524136, 19.678556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.109474, 34.619457, 19.548437>,  <41.813282, 34.778324, 19.331570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.109474, 34.619457, 19.548437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364032, 0.441094, 0.820315,
		-0.564952, -0.804793, 0.182039,
		0.740480, -0.397170, 0.542167,
		42.331619, 34.500305, 19.711088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485279, 34.788280, 20.004339>,  <41.813282, 34.778324, 19.331570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485279, 34.788280, 20.004339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.869202, 34.721592, 20.094646>,  <42.099556, 34.681580, 20.148830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.869202, 34.721592, 20.094646>,  <41.485279, 34.788280, 20.004339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869202, 34.721592, 20.094646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162711, 0.324895, 0.931648,
		-0.228679, -0.930938, 0.284709,
		0.959808, -0.166723, 0.225770,
		42.157143, 34.671574, 20.162378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593933, 34.390762, 20.729708>,  <41.485279, 34.788280, 20.004339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593933, 34.390762, 20.729708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.922665, 34.595581, 20.629786>,  <42.119904, 34.718472, 20.569832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.922665, 34.595581, 20.629786>,  <41.593933, 34.390762, 20.729708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922665, 34.595581, 20.629786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066492, 0.521672, 0.850551,
		0.565840, -0.682398, 0.462773,
		0.821830, 0.512046, -0.249809,
		42.169216, 34.749195, 20.554844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041096, 34.258404, 21.298326>,  <41.593933, 34.390762, 20.729708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041096, 34.258404, 21.298326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.158489, 34.587173, 21.103062>,  <42.228924, 34.784435, 20.985903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.158489, 34.587173, 21.103062>,  <42.041096, 34.258404, 21.298326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158489, 34.587173, 21.103062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017046, 0.515066, 0.856981,
		0.955812, -0.243189, 0.165174,
		0.293484, 0.821928, -0.488161,
		42.246536, 34.833752, 20.956614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517548, 34.681141, 21.741930>,  <42.041096, 34.258404, 21.298326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517548, 34.681141, 21.741930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.382439, 34.941158, 21.469650>,  <42.301373, 35.097168, 21.306282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.382439, 34.941158, 21.469650>,  <42.517548, 34.681141, 21.741930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382439, 34.941158, 21.469650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126609, 0.685254, 0.717215,
		0.932672, 0.328441, -0.149161,
		-0.337776, 0.650041, -0.680701,
		42.281105, 35.136169, 21.265440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795513, 35.267330, 21.966257>,  <42.517548, 34.681141, 21.741930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795513, 35.267330, 21.966257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.495716, 35.369152, 21.721809>,  <42.315838, 35.430244, 21.575140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.495716, 35.369152, 21.721809>,  <42.795513, 35.267330, 21.966257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495716, 35.369152, 21.721809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321734, 0.666715, 0.672294,
		0.578578, 0.700495, -0.417797,
		-0.749490, 0.254555, -0.611120,
		42.270870, 35.445518, 21.538473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852940, 35.959885, 21.747803>,  <42.795513, 35.267330, 21.966257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852940, 35.959885, 21.747803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.467468, 35.876312, 21.681273>,  <42.236183, 35.826168, 21.641356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.467468, 35.876312, 21.681273>,  <42.852940, 35.959885, 21.747803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467468, 35.876312, 21.681273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265455, 0.681435, 0.682041,
		-0.029162, 0.701423, -0.712149,
		-0.963682, -0.208933, -0.166324,
		42.178364, 35.813633, 21.631374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559540, 36.584476, 21.475393>,  <42.852940, 35.959885, 21.747803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.559540, 36.584476, 21.475393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.256474, 36.381489, 21.639549>,  <42.074635, 36.259697, 21.738043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.256474, 36.381489, 21.639549>,  <42.559540, 36.584476, 21.475393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256474, 36.381489, 21.639549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304788, 0.831151, 0.465073,
		-0.577107, 0.227286, -0.784403,
		-0.757662, -0.507473, 0.410389,
		42.029175, 36.229248, 21.762667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948864, 37.006020, 21.444248>,  <42.559540, 36.584476, 21.475393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948864, 37.006020, 21.444248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.878586, 36.739075, 21.733734>,  <41.836418, 36.578907, 21.907427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.878586, 36.739075, 21.733734>,  <41.948864, 37.006020, 21.444248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878586, 36.739075, 21.733734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376269, 0.724857, 0.577065,
		-0.909700, -0.170926, -0.378458,
		-0.175692, -0.667358, 0.723716,
		41.825878, 36.538868, 21.950850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246609, 37.132629, 21.622086>,  <41.948864, 37.006020, 21.444248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246609, 37.132629, 21.622086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.401642, 36.925484, 21.927135>,  <41.494659, 36.801197, 22.110165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.401642, 36.925484, 21.927135>,  <41.246609, 37.132629, 21.622086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401642, 36.925484, 21.927135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464904, 0.604567, 0.646810,
		-0.796020, -0.605236, -0.006442,
		0.387578, -0.517869, 0.762624,
		41.517914, 36.770123, 22.155922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547535, 36.920883, 21.268133>,  <41.246609, 37.132629, 21.622086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547535, 36.920883, 21.268133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.218079, 37.118652, 21.157017>,  <40.020405, 37.237312, 21.090347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.218079, 37.118652, 21.157017>,  <40.547535, 36.920883, 21.268133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218079, 37.118652, 21.157017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175027, -0.244304, -0.953772,
		-0.539430, -0.834184, 0.114681,
		-0.823639, 0.494421, -0.277789,
		39.970985, 37.266979, 21.073681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188286, 36.551033, 20.715910>,  <40.547535, 36.920883, 21.268133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188286, 36.551033, 20.715910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.029003, 36.917610, 20.700058>,  <39.933434, 37.137554, 20.690546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.029003, 36.917610, 20.700058>,  <40.188286, 36.551033, 20.715910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029003, 36.917610, 20.700058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095784, -0.084508, -0.991808,
		-0.912283, -0.391145, 0.121432,
		-0.398203, 0.916441, -0.039630,
		39.909542, 37.192543, 20.688169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522518, 36.548874, 20.260139>,  <40.188286, 36.551033, 20.715910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522518, 36.548874, 20.260139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.647579, 36.928589, 20.273397>,  <39.722618, 37.156418, 20.281351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.647579, 36.928589, 20.273397>,  <39.522518, 36.548874, 20.260139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647579, 36.928589, 20.273397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270005, 0.122274, -0.955064,
		-0.910683, 0.289657, 0.294542,
		0.312656, 0.949288, 0.033144,
		39.741375, 37.213375, 20.283340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000751, 36.936028, 20.005238>,  <39.522518, 36.548874, 20.260139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000751, 36.936028, 20.005238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.326176, 37.160938, 19.945950>,  <39.521431, 37.295883, 19.910378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.326176, 37.160938, 19.945950>,  <39.000751, 36.936028, 20.005238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326176, 37.160938, 19.945950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285065, 0.163495, -0.944461,
		-0.506812, 0.810628, 0.293297,
		0.813560, 0.562274, -0.148220,
		39.570244, 37.329620, 19.901484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785416, 37.509922, 19.762791>,  <39.000751, 36.936028, 20.005238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785416, 37.509922, 19.762791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.170513, 37.501938, 19.654924>,  <39.401573, 37.497147, 19.590204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.170513, 37.501938, 19.654924>,  <38.785416, 37.509922, 19.762791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170513, 37.501938, 19.654924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266123, 0.106775, -0.958007,
		0.047916, 0.994083, 0.097485,
		0.962747, -0.019961, -0.269665,
		39.459339, 37.495949, 19.574024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890442, 37.914436, 19.175846>,  <38.785416, 37.509922, 19.762791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890442, 37.914436, 19.175846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.240612, 37.721615, 19.161701>,  <39.450714, 37.605923, 19.153214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.240612, 37.721615, 19.161701>,  <38.890442, 37.914436, 19.175846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240612, 37.721615, 19.161701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064381, -0.043780, -0.996964,
		0.479039, 0.875049, -0.069361,
		0.875429, -0.482050, -0.035364,
		39.503242, 37.577000, 19.151093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274979, 38.288422, 18.745419>,  <38.890442, 37.914436, 19.175846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274979, 38.288422, 18.745419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.446892, 37.927464, 18.757860>,  <39.550037, 37.710888, 18.765326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.446892, 37.927464, 18.757860>,  <39.274979, 38.288422, 18.745419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446892, 37.927464, 18.757860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015183, -0.041667, -0.999016,
		0.902806, 0.428884, -0.031608,
		0.429779, -0.902398, 0.031106,
		39.575825, 37.656746, 18.767193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732384, 38.317791, 18.194138>,  <39.274979, 38.288422, 18.745419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732384, 38.317791, 18.194138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.709194, 37.924900, 18.265549>,  <39.695282, 37.689167, 18.308395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.709194, 37.924900, 18.265549>,  <39.732384, 38.317791, 18.194138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709194, 37.924900, 18.265549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031981, -0.180562, -0.983043,
		0.997806, -0.051281, 0.041880,
		-0.057973, -0.982226, 0.178526,
		39.691803, 37.630234, 18.319107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244045, 38.044361, 17.760639>,  <39.732384, 38.317791, 18.194138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244045, 38.044361, 17.760639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.025684, 37.722023, 17.852381>,  <39.894669, 37.528622, 17.907425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.025684, 37.722023, 17.852381>,  <40.244045, 38.044361, 17.760639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025684, 37.722023, 17.852381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010251, -0.267296, -0.963560,
		0.837786, -0.528360, 0.137657,
		-0.545902, -0.805846, 0.229353,
		39.861916, 37.480270, 17.921186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518070, 37.426804, 17.425867>,  <40.244045, 38.044361, 17.760639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518070, 37.426804, 17.425867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.130184, 37.335045, 17.459414>,  <39.897453, 37.279987, 17.479542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.130184, 37.335045, 17.459414>,  <40.518070, 37.426804, 17.425867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130184, 37.335045, 17.459414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008837, -0.376093, -0.926540,
		0.244090, -0.897736, 0.366729,
		-0.969712, -0.229400, 0.083867,
		39.839272, 37.266224, 17.484573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506622, 36.792381, 17.286451>,  <40.518070, 37.426804, 17.425867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506622, 36.792381, 17.286451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.120743, 36.884377, 17.235144>,  <39.889214, 36.939575, 17.204359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.120743, 36.884377, 17.235144>,  <40.506622, 36.792381, 17.286451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120743, 36.884377, 17.235144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037686, -0.602640, -0.797123,
		-0.260632, -0.764152, 0.590036,
		-0.964702, 0.229992, -0.128270,
		39.831333, 36.953373, 17.196663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118233, 36.164898, 17.106976>,  <40.506622, 36.792381, 17.286451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118233, 36.164898, 17.106976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.940746, 36.492588, 16.961657>,  <39.834255, 36.689201, 16.874466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.940746, 36.492588, 16.961657>,  <40.118233, 36.164898, 17.106976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940746, 36.492588, 16.961657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052391, -0.428408, -0.902065,
		-0.894637, -0.381223, 0.233010,
		-0.443711, 0.819229, -0.363297,
		39.807632, 36.738358, 16.852667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946194, 35.917332, 16.519773>,  <40.118233, 36.164898, 17.106976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946194, 35.917332, 16.519773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.845287, 36.299564, 16.458817>,  <39.784744, 36.528904, 16.422243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.845287, 36.299564, 16.458817>,  <39.946194, 35.917332, 16.519773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845287, 36.299564, 16.458817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071893, -0.175556, -0.981841,
		-0.964985, -0.236725, 0.112986,
		-0.252262, 0.955584, -0.152390,
		39.769608, 36.586239, 16.413099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742985, 35.521729, 17.068628>,  <39.946194, 35.917332, 16.519773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742985, 35.521729, 17.068628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.550102, 35.242634, 16.856724>,  <39.434372, 35.075176, 16.729580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.550102, 35.242634, 16.856724>,  <39.742985, 35.521729, 17.068628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550102, 35.242634, 16.856724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749459, 0.015420, 0.661871,
		-0.453640, 0.716193, -0.530358,
		-0.482205, -0.697732, -0.529762,
		39.405441, 35.033314, 16.697796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073498, 35.734776, 16.920856>,  <39.742985, 35.521729, 17.068628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073498, 35.734776, 16.920856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.054638, 35.336937, 16.883846>,  <39.043324, 35.098236, 16.861641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.054638, 35.336937, 16.883846>,  <39.073498, 35.734776, 16.920856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054638, 35.336937, 16.883846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818915, -0.014551, 0.573731,
		-0.571975, 0.102823, -0.813801,
		-0.047151, -0.994593, -0.092526,
		39.040493, 35.038559, 16.856089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341850, 35.546669, 16.793362>,  <39.073498, 35.734776, 16.920856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341850, 35.546669, 16.793362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.522289, 35.210251, 16.912792>,  <38.630554, 35.008400, 16.984451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.522289, 35.210251, 16.912792>,  <38.341850, 35.546669, 16.793362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522289, 35.210251, 16.912792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814934, -0.251781, 0.522005,
		-0.363855, -0.478797, -0.798976,
		0.451101, -0.841047, 0.298576,
		38.657619, 34.957935, 17.002365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696445, 34.970268, 16.753002>,  <38.341850, 35.546669, 16.793362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696445, 34.970268, 16.753002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.003380, 34.884926, 16.994884>,  <38.187542, 34.833721, 17.140015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.003380, 34.884926, 16.994884>,  <37.696445, 34.970268, 16.753002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003380, 34.884926, 16.994884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638844, -0.335854, 0.692156,
		0.055416, -0.917432, -0.394016,
		0.767337, -0.213358, 0.604707,
		38.233582, 34.820919, 17.176296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437061, 34.300259, 17.031487>,  <37.696445, 34.970268, 16.753002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437061, 34.300259, 17.031487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.723022, 34.462151, 17.259562>,  <37.894600, 34.559284, 17.396406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.723022, 34.462151, 17.259562>,  <37.437061, 34.300259, 17.031487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723022, 34.462151, 17.259562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560968, -0.154817, 0.813232,
		0.417411, -0.901237, 0.116360,
		0.714900, 0.404726, 0.570188,
		37.937492, 34.583569, 17.430618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500835, 33.785366, 17.520704>,  <37.437061, 34.300259, 17.031487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500835, 33.785366, 17.520704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.626751, 34.133068, 17.673176>,  <37.702301, 34.341690, 17.764660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.626751, 34.133068, 17.673176>,  <37.500835, 33.785366, 17.520704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626751, 34.133068, 17.673176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505978, -0.186097, 0.842232,
		0.803053, -0.457995, 0.381244,
		0.314789, 0.869258, 0.381181,
		37.721188, 34.393845, 17.787531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598694, 33.623795, 18.238998>,  <37.500835, 33.785366, 17.520704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598694, 33.623795, 18.238998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.577602, 34.022343, 18.212275>,  <37.564949, 34.261471, 18.196239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.577602, 34.022343, 18.212275>,  <37.598694, 33.623795, 18.238998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577602, 34.022343, 18.212275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440658, 0.036823, 0.896919,
		0.896125, 0.076731, 0.437118,
		-0.052725, 0.996372, -0.066810,
		37.561787, 34.321255, 18.192232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739075, 33.889256, 18.891550>,  <37.598694, 33.623795, 18.238998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739075, 33.889256, 18.891550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.552261, 34.202343, 18.726999>,  <37.440174, 34.390194, 18.628269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.552261, 34.202343, 18.726999>,  <37.739075, 33.889256, 18.891550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552261, 34.202343, 18.726999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594254, 0.066670, 0.801509,
		0.654783, 0.618793, 0.433997,
		-0.467034, 0.782720, -0.411375,
		37.412151, 34.437160, 18.603586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177334, 33.851860, 19.514488>,  <37.739075, 33.889256, 18.891550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177334, 33.851860, 19.514488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.116909, 33.482796, 19.656403>,  <38.080654, 33.261356, 19.741552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.116909, 33.482796, 19.656403>,  <38.177334, 33.851860, 19.514488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116909, 33.482796, 19.656403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709380, -0.351138, -0.611131,
		0.688448, 0.159360, 0.707562,
		-0.151062, -0.922663, 0.354787,
		38.071590, 33.205997, 19.762838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850552, 33.538734, 19.483908>,  <38.177334, 33.851860, 19.514488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850552, 33.538734, 19.483908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.577961, 33.246666, 19.503695>,  <38.414406, 33.071426, 19.515566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.577961, 33.246666, 19.503695>,  <38.850552, 33.538734, 19.483908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577961, 33.246666, 19.503695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590709, -0.588695, -0.551816,
		0.432039, -0.346828, 0.832498,
		-0.681472, -0.730170, 0.049465,
		38.373520, 33.027615, 19.518534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269733, 32.976753, 19.552114>,  <38.850552, 33.538734, 19.483908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269733, 32.976753, 19.552114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.916267, 32.874294, 19.395386>,  <38.704189, 32.812820, 19.301348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.916267, 32.874294, 19.395386>,  <39.269733, 32.976753, 19.552114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916267, 32.874294, 19.395386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460361, -0.627273, -0.628169,
		-0.084875, -0.735470, 0.672220,
		-0.883665, -0.256148, -0.391822,
		38.651169, 32.797451, 19.277840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239296, 32.275822, 19.663019>,  <39.269733, 32.976753, 19.552114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239296, 32.275822, 19.663019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.978062, 32.341591, 19.367332>,  <38.821320, 32.381054, 19.189920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.978062, 32.341591, 19.367332>,  <39.239296, 32.275822, 19.663019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978062, 32.341591, 19.367332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551215, -0.566124, -0.612916,
		-0.519267, -0.807755, 0.279095,
		-0.653088, 0.164425, -0.739216,
		38.782135, 32.390919, 19.145567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067802, 31.565836, 19.361599>,  <39.239296, 32.275822, 19.663019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067802, 31.565836, 19.361599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.989990, 31.835030, 19.076153>,  <38.943302, 31.996546, 18.904884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.989990, 31.835030, 19.076153>,  <39.067802, 31.565836, 19.361599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989990, 31.835030, 19.076153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545707, -0.530284, -0.648847,
		-0.815084, -0.515645, -0.264098,
		-0.194528, 0.672985, -0.713617,
		38.931633, 32.036926, 18.862068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839024, 31.196600, 18.780682>,  <39.067802, 31.565836, 19.361599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839024, 31.196600, 18.780682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.961414, 31.533676, 18.603479>,  <39.034847, 31.735922, 18.497158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.961414, 31.533676, 18.603479>,  <38.839024, 31.196600, 18.780682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961414, 31.533676, 18.603479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450404, -0.538081, -0.712465,
		-0.838759, 0.018464, -0.544189,
		0.305972, 0.842691, -0.443004,
		39.053207, 31.786484, 18.470577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732376, 31.134031, 18.001871>,  <38.839024, 31.196600, 18.780682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732376, 31.134031, 18.001871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.006332, 31.422169, 18.045757>,  <39.170704, 31.595051, 18.072088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.006332, 31.422169, 18.045757>,  <38.732376, 31.134031, 18.001871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006332, 31.422169, 18.045757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513648, -0.370497, -0.773885,
		-0.516813, 0.586378, -0.623751,
		0.684887, 0.720342, 0.109714,
		39.211800, 31.638271, 18.078672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069138, 31.129166, 17.294428>,  <38.732376, 31.134031, 18.001871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069138, 31.129166, 17.294428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.311245, 31.359035, 17.514757>,  <39.456509, 31.496958, 17.646954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.311245, 31.359035, 17.514757>,  <39.069138, 31.129166, 17.294428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311245, 31.359035, 17.514757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783376, -0.307148, -0.540354,
		-0.141344, 0.758556, -0.636093,
		0.605264, 0.574676, 0.550821,
		39.492825, 31.531439, 17.680004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355156, 31.688395, 16.947145>,  <39.069138, 31.129166, 17.294428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355156, 31.688395, 16.947145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.572956, 31.521008, 17.237911>,  <39.703636, 31.420574, 17.412371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.572956, 31.521008, 17.237911>,  <39.355156, 31.688395, 16.947145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572956, 31.521008, 17.237911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673578, -0.298270, -0.676259,
		0.499810, 0.857857, 0.119463,
		0.544502, -0.418469, 0.726912,
		39.736305, 31.395468, 17.455984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.788841, 38.133495, 30.930233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.114975, 37.934982, 31.049520>,  <35.310654, 37.815876, 31.121092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.114975, 37.934982, 31.049520>,  <34.788841, 38.133495, 30.930233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114975, 37.934982, 31.049520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086407, -0.404999, -0.910225,
		0.572506, 0.767906, -0.287328,
		0.815335, -0.496282, 0.298217,
		35.359577, 37.786098, 31.138985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336147, 38.300842, 30.468046>,  <34.788841, 38.133495, 30.930233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336147, 38.300842, 30.468046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428791, 37.952919, 30.642309>,  <35.484379, 37.744167, 30.746868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428791, 37.952919, 30.642309>,  <35.336147, 38.300842, 30.468046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428791, 37.952919, 30.642309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002892, -0.448450, -0.893803,
		0.972805, 0.205753, -0.106380,
		0.231609, -0.869804, 0.435659,
		35.498272, 37.691978, 30.773006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821381, 38.093601, 30.049578>,  <35.336147, 38.300842, 30.468046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821381, 38.093601, 30.049578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.728107, 37.760460, 30.250370>,  <35.672142, 37.560577, 30.370846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.728107, 37.760460, 30.250370>,  <35.821381, 38.093601, 30.049578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728107, 37.760460, 30.250370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021228, -0.520450, -0.853628,
		0.972201, -0.188397, 0.139040,
		-0.233185, -0.832850, 0.501983,
		35.658154, 37.510605, 30.400965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269825, 37.670143, 29.816101>,  <35.821381, 38.093601, 30.049578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269825, 37.670143, 29.816101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.978249, 37.447201, 29.975098>,  <35.803303, 37.313435, 30.070496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.978249, 37.447201, 29.975098>,  <36.269825, 37.670143, 29.816101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978249, 37.447201, 29.975098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176829, -0.407633, -0.895861,
		0.661345, -0.723317, 0.198583,
		-0.728940, -0.557358, 0.397489,
		35.759567, 37.279995, 30.094345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470898, 37.029549, 29.588345>,  <36.269825, 37.670143, 29.816101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470898, 37.029549, 29.588345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.081684, 37.043732, 29.679518>,  <35.848156, 37.052242, 29.734221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.081684, 37.043732, 29.679518>,  <36.470898, 37.029549, 29.588345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081684, 37.043732, 29.679518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214893, -0.498524, -0.839818,
		0.083852, -0.866150, 0.492699,
		-0.973032, 0.035457, 0.227932,
		35.789776, 37.054367, 29.747898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153854, 36.323841, 29.394320>,  <36.470898, 37.029549, 29.588345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153854, 36.323841, 29.394320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.820526, 36.540092, 29.440445>,  <35.620529, 36.669842, 29.468121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.820526, 36.540092, 29.440445>,  <36.153854, 36.323841, 29.394320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820526, 36.540092, 29.440445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414439, -0.472974, -0.777519,
		-0.365807, -0.695715, 0.618196,
		-0.833322, 0.540627, 0.115315,
		35.570530, 36.702282, 29.475039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604897, 35.832985, 29.292217>,  <36.153854, 36.323841, 29.394320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604897, 35.832985, 29.292217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.401981, 36.173832, 29.240755>,  <35.280231, 36.378342, 29.209877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.401981, 36.173832, 29.240755>,  <35.604897, 35.832985, 29.292217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401981, 36.173832, 29.240755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517580, -0.420626, -0.745107,
		-0.689038, -0.311391, 0.654417,
		-0.507284, 0.852121, -0.128657,
		35.249794, 36.429466, 29.202158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939171, 35.740868, 29.397243>,  <35.604897, 35.832985, 29.292217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939171, 35.740868, 29.397243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.976311, 36.055611, 29.153198>,  <34.998592, 36.244457, 29.006771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.976311, 36.055611, 29.153198>,  <34.939171, 35.740868, 29.397243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976311, 36.055611, 29.153198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354152, -0.546591, -0.758825,
		-0.930568, 0.286527, 0.227917,
		0.092847, 0.786855, -0.610114,
		35.004166, 36.291668, 28.970163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446297, 35.618290, 28.977530>,  <34.939171, 35.740868, 29.397243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446297, 35.618290, 28.977530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685879, 35.883274, 28.797579>,  <34.829628, 36.042267, 28.689608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685879, 35.883274, 28.797579>,  <34.446297, 35.618290, 28.977530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685879, 35.883274, 28.797579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194677, -0.424483, -0.884260,
		-0.776755, 0.617217, -0.125282,
		0.598960, 0.662463, -0.449877,
		34.865566, 36.082012, 28.662615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966969, 35.928707, 28.400824>,  <34.446297, 35.618290, 28.977530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966969, 35.928707, 28.400824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351192, 35.988132, 28.306801>,  <34.581726, 36.023788, 28.250387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351192, 35.988132, 28.306801>,  <33.966969, 35.928707, 28.400824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351192, 35.988132, 28.306801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163626, -0.381479, -0.909780,
		-0.224833, 0.912360, -0.342124,
		0.960561, 0.148568, -0.235055,
		34.639362, 36.032703, 28.236284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920586, 36.344234, 27.751463>,  <33.966969, 35.928707, 28.400824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920586, 36.344234, 27.751463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.279629, 36.167919, 27.751905>,  <34.495056, 36.062130, 27.752171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.279629, 36.167919, 27.751905>,  <33.920586, 36.344234, 27.751463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279629, 36.167919, 27.751905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175089, -0.358842, -0.916830,
		0.404528, 0.822760, -0.399278,
		0.897608, -0.440793, 0.001105,
		34.548912, 36.035683, 27.752237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235355, 36.515408, 27.081934>,  <33.920586, 36.344234, 27.751463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235355, 36.515408, 27.081934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431896, 36.198406, 27.226440>,  <34.549820, 36.008205, 27.313145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431896, 36.198406, 27.226440>,  <34.235355, 36.515408, 27.081934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431896, 36.198406, 27.226440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055088, -0.385684, -0.920985,
		0.869216, 0.472431, -0.145849,
		0.491353, -0.792501, 0.361268,
		34.579304, 35.960655, 27.334822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227558, 37.119316, 26.563593>,  <34.235355, 36.515408, 27.081934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227558, 37.119316, 26.563593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894005, 37.208252, 26.361523>,  <33.693874, 37.261616, 26.240280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894005, 37.208252, 26.361523>,  <34.227558, 37.119316, 26.563593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894005, 37.208252, 26.361523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293305, 0.596834, 0.746835,
		0.467561, 0.770943, -0.432474,
		-0.833882, 0.222344, -0.505177,
		33.643841, 37.274956, 26.209970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167923, 37.869228, 26.432840>,  <34.227558, 37.119316, 26.563593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167923, 37.869228, 26.432840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799198, 37.718029, 26.398479>,  <33.577961, 37.627312, 26.377863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799198, 37.718029, 26.398479>,  <34.167923, 37.869228, 26.432840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799198, 37.718029, 26.398479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342389, 0.690082, 0.637618,
		-0.181737, 0.617177, -0.765548,
		-0.921814, -0.377994, -0.085901,
		33.522655, 37.604630, 26.372709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770512, 38.370895, 26.155670>,  <34.167923, 37.869228, 26.432840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770512, 38.370895, 26.155670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.535824, 38.126865, 26.368671>,  <33.395012, 37.980446, 26.496471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.535824, 38.126865, 26.368671>,  <33.770512, 38.370895, 26.155670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535824, 38.126865, 26.368671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326507, 0.779987, 0.533866,
		-0.741047, 0.139364, -0.656831,
		-0.586722, -0.610080, 0.532504,
		33.359806, 37.943840, 26.528423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156929, 38.787617, 26.195677>,  <33.770512, 38.370895, 26.155670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156929, 38.787617, 26.195677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.059166, 38.498169, 26.453867>,  <33.000507, 38.324501, 26.608782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.059166, 38.498169, 26.453867>,  <33.156929, 38.787617, 26.195677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059166, 38.498169, 26.453867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517894, 0.660182, 0.544008,
		-0.819788, -0.201332, -0.536110,
		-0.244404, -0.723620, 0.645478,
		32.985844, 38.281082, 26.647511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361843, 38.809673, 26.307167>,  <33.156929, 38.787617, 26.195677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361843, 38.809673, 26.307167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.550186, 38.646912, 26.620272>,  <32.663193, 38.549255, 26.808134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.550186, 38.646912, 26.620272>,  <32.361843, 38.809673, 26.307167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550186, 38.646912, 26.620272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439865, 0.660837, 0.608122,
		-0.764728, -0.630651, 0.132178,
		0.470861, -0.406908, 0.782762,
		32.691444, 38.524837, 26.855101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887867, 38.865917, 26.850666>,  <32.361843, 38.809673, 26.307167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887867, 38.865917, 26.850666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.226234, 38.791592, 27.050625>,  <32.429256, 38.746998, 27.170601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.226234, 38.791592, 27.050625>,  <31.887867, 38.865917, 26.850666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226234, 38.791592, 27.050625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323103, 0.567181, 0.757569,
		-0.424298, -0.802359, 0.419752,
		0.845917, -0.185811, 0.499898,
		32.480011, 38.735847, 27.200594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696501, 38.780239, 27.606907>,  <31.887867, 38.865917, 26.850666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696501, 38.780239, 27.606907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.089611, 38.854000, 27.601990>,  <32.325478, 38.898254, 27.599039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.089611, 38.854000, 27.601990>,  <31.696501, 38.780239, 27.606907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089611, 38.854000, 27.601990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112454, 0.649459, 0.752036,
		0.146656, -0.737700, 0.659008,
		0.982775, 0.184399, -0.012290,
		32.384445, 38.909321, 27.598303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757746, 38.832226, 28.283873>,  <31.696501, 38.780239, 27.606907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757746, 38.832226, 28.283873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.074650, 39.026543, 28.136181>,  <32.264793, 39.143131, 28.047565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.074650, 39.026543, 28.136181>,  <31.757746, 38.832226, 28.283873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074650, 39.026543, 28.136181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055340, 0.659823, 0.749380,
		0.607668, -0.573271, 0.549636,
		0.792261, 0.485792, -0.369229,
		32.312328, 39.172279, 28.025412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239910, 39.028469, 28.890715>,  <31.757746, 38.832226, 28.283873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239910, 39.028469, 28.890715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.344028, 39.286896, 28.603704>,  <32.406498, 39.441952, 28.431499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.344028, 39.286896, 28.603704>,  <32.239910, 39.028469, 28.890715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344028, 39.286896, 28.603704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170254, 0.700784, 0.692759,
		0.950400, -0.302484, 0.072416,
		0.260296, 0.646069, -0.717524,
		32.422119, 39.480717, 28.388447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817844, 39.308735, 29.122618>,  <32.239910, 39.028469, 28.890715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817844, 39.308735, 29.122618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.684746, 39.568558, 28.849165>,  <32.604885, 39.724453, 28.685093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.684746, 39.568558, 28.849165>,  <32.817844, 39.308735, 29.122618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684746, 39.568558, 28.849165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127180, 0.749231, 0.649983,
		0.934400, 0.129337, -0.331916,
		-0.332749, 0.649557, -0.683633,
		32.584923, 39.763424, 28.644075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361412, 39.851246, 28.937315>,  <32.817844, 39.308735, 29.122618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361412, 39.851246, 28.937315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.001396, 40.015194, 28.878084>,  <32.785385, 40.113564, 28.842546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.001396, 40.015194, 28.878084>,  <33.361412, 39.851246, 28.937315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001396, 40.015194, 28.878084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278304, 0.802048, 0.528455,
		0.335362, 0.434423, -0.835948,
		-0.900044, 0.409872, -0.148075,
		32.731384, 40.138157, 28.833662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459759, 40.495739, 29.141962>,  <33.361412, 39.851246, 28.937315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459759, 40.495739, 29.141962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067871, 40.518925, 29.065231>,  <32.832741, 40.532837, 29.019192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067871, 40.518925, 29.065231>,  <33.459759, 40.495739, 29.141962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067871, 40.518925, 29.065231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004873, 0.950080, 0.311970,
		0.200334, 0.306576, -0.930525,
		-0.979715, 0.057964, -0.191828,
		32.773956, 40.536312, 29.007683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387428, 41.162098, 28.734301>,  <33.459759, 40.495739, 29.141962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387428, 41.162098, 28.734301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051147, 41.036785, 28.910971>,  <32.849380, 40.961597, 29.016973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051147, 41.036785, 28.910971>,  <33.387428, 41.162098, 28.734301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051147, 41.036785, 28.910971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270188, 0.949549, 0.159234,
		-0.469279, 0.014532, -0.882931,
		-0.840700, -0.313282, 0.441677,
		32.798939, 40.942799, 29.043474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872818, 41.578228, 28.551430>,  <33.387428, 41.162098, 28.734301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872818, 41.578228, 28.551430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.761459, 41.407738, 28.895716>,  <32.694645, 41.305443, 29.102287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.761459, 41.407738, 28.895716>,  <32.872818, 41.578228, 28.551430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761459, 41.407738, 28.895716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093253, 0.879913, 0.465895,
		-0.955929, 0.209966, -0.205217,
		-0.278395, -0.426225, 0.860714,
		32.677940, 41.279869, 29.153931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455303, 41.792175, 28.091106>,  <32.872818, 41.578228, 28.551430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455303, 41.792175, 28.091106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.182659, 42.004684, 27.889849>,  <33.019073, 42.132191, 27.769094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.182659, 42.004684, 27.889849>,  <33.455303, 41.792175, 28.091106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182659, 42.004684, 27.889849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340944, -0.839015, -0.424041,
		-0.647427, -0.117487, 0.753018,
		-0.681613, 0.531272, -0.503144,
		32.978176, 42.164066, 27.738905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800365, 42.357208, 28.145212>,  <33.455303, 41.792175, 28.091106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800365, 42.357208, 28.145212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179337, 42.452057, 28.231146>,  <34.406719, 42.508965, 28.282707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179337, 42.452057, 28.231146>,  <33.800365, 42.357208, 28.145212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179337, 42.452057, 28.231146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319702, -0.674189, -0.665778,
		-0.013027, 0.699461, -0.714553,
		0.947428, 0.237117, 0.214837,
		34.463566, 42.523193, 28.295597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176109, 42.527699, 27.570238>,  <33.800365, 42.357208, 28.145212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176109, 42.527699, 27.570238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.438576, 42.382401, 27.834814>,  <34.596054, 42.295223, 27.993559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.438576, 42.382401, 27.834814>,  <34.176109, 42.527699, 27.570238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438576, 42.382401, 27.834814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412242, -0.561624, -0.717380,
		0.632063, 0.743394, -0.218775,
		0.656166, -0.363241, 0.661440,
		34.635426, 42.273430, 28.033247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833763, 42.633869, 27.241480>,  <34.176109, 42.527699, 27.570238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833763, 42.633869, 27.241480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.894135, 42.335480, 27.500938>,  <34.930359, 42.156445, 27.656614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.894135, 42.335480, 27.500938>,  <34.833763, 42.633869, 27.241480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894135, 42.335480, 27.500938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497378, -0.509753, -0.701974,
		0.854304, 0.428571, 0.294094,
		0.150930, -0.745975, 0.648646,
		34.939415, 42.111687, 27.695532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366421, 42.274971, 26.883993>,  <34.833763, 42.633869, 27.241480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366421, 42.274971, 26.883993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.259388, 42.018570, 27.171749>,  <35.195168, 41.864731, 27.344402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.259388, 42.018570, 27.171749>,  <35.366421, 42.274971, 26.883993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259388, 42.018570, 27.171749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522070, -0.723973, -0.450894,
		0.809841, 0.254921, 0.528369,
		-0.267582, -0.640998, 0.719389,
		35.179111, 41.826271, 27.387566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992092, 41.991615, 27.162983>,  <35.366421, 42.274971, 26.883993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992092, 41.991615, 27.162983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690266, 41.734138, 27.214041>,  <35.509171, 41.579651, 27.244675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690266, 41.734138, 27.214041>,  <35.992092, 41.991615, 27.162983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690266, 41.734138, 27.214041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381438, -0.588496, -0.712865,
		0.533986, -0.489213, 0.689586,
		-0.754562, -0.643695, 0.127645,
		35.463898, 41.541031, 27.252335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359989, 41.392601, 27.294916>,  <35.992092, 41.991615, 27.162983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359989, 41.392601, 27.294916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.986454, 41.288956, 27.196274>,  <35.762333, 41.226768, 27.137089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.986454, 41.288956, 27.196274>,  <36.359989, 41.392601, 27.294916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986454, 41.288956, 27.196274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357293, -0.708878, -0.608140,
		-0.017233, -0.656011, 0.754555,
		-0.933833, -0.259117, -0.246604,
		35.706303, 41.211220, 27.122293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287491, 40.651169, 27.450245>,  <36.359989, 41.392601, 27.294916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287491, 40.651169, 27.450245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.975510, 40.720299, 27.209646>,  <35.788319, 40.761776, 27.065287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.975510, 40.720299, 27.209646>,  <36.287491, 40.651169, 27.450245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975510, 40.720299, 27.209646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225546, -0.818901, -0.527759,
		-0.583780, -0.547294, 0.599725,
		-0.779956, 0.172829, -0.601498,
		35.741524, 40.772148, 27.029198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779087, 40.094971, 27.386593>,  <36.287491, 40.651169, 27.450245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779087, 40.094971, 27.386593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.736622, 40.300903, 27.046314>,  <35.711143, 40.424461, 26.842148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.736622, 40.300903, 27.046314>,  <35.779087, 40.094971, 27.386593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736622, 40.300903, 27.046314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026035, -0.853798, -0.519954,
		-0.994008, -0.077347, 0.077239,
		-0.106163, 0.514827, -0.850695,
		35.704773, 40.455353, 26.791105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406479, 39.619328, 26.956591>,  <35.779087, 40.094971, 27.386593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406479, 39.619328, 26.956591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.568241, 39.885357, 26.705473>,  <35.665298, 40.044975, 26.554802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.568241, 39.885357, 26.705473>,  <35.406479, 39.619328, 26.956591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568241, 39.885357, 26.705473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243180, -0.739917, -0.627205,
		-0.881655, 0.100980, -0.460963,
		0.404410, 0.665075, -0.627796,
		35.689564, 40.084881, 26.517134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168713, 39.334011, 26.264946>,  <35.406479, 39.619328, 26.956591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168713, 39.334011, 26.264946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476803, 39.583378, 26.211128>,  <35.661659, 39.732998, 26.178837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476803, 39.583378, 26.211128>,  <35.168713, 39.334011, 26.264946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476803, 39.583378, 26.211128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390091, -0.627405, -0.673938,
		-0.504558, 0.466601, -0.726433,
		0.770228, 0.623415, -0.134546,
		35.707870, 39.770401, 26.170765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110203, 39.576576, 25.606415>,  <35.168713, 39.334011, 26.264946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110203, 39.576576, 25.606415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.492447, 39.594707, 25.722870>,  <35.721794, 39.605587, 25.792744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.492447, 39.594707, 25.722870>,  <35.110203, 39.576576, 25.606415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492447, 39.594707, 25.722870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262453, -0.580066, -0.771131,
		0.133922, 0.813307, -0.566212,
		0.955606, 0.045333, 0.291138,
		35.779129, 39.608307, 25.810211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521687, 39.771324, 25.127790>,  <35.110203, 39.576576, 25.606415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521687, 39.771324, 25.127790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.799305, 39.598114, 25.357847>,  <35.965878, 39.494190, 25.495882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.799305, 39.598114, 25.357847>,  <35.521687, 39.771324, 25.127790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799305, 39.598114, 25.357847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413926, -0.413621, -0.810915,
		0.589034, 0.800881, -0.107834,
		0.694049, -0.433021, 0.575142,
		36.007519, 39.468208, 25.530390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091377, 39.754963, 24.681929>,  <35.521687, 39.771324, 25.127790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091377, 39.754963, 24.681929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.180183, 39.487625, 24.965908>,  <36.233467, 39.327221, 25.136295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.180183, 39.487625, 24.965908>,  <36.091377, 39.754963, 24.681929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180183, 39.487625, 24.965908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512913, -0.539181, -0.667985,
		0.829234, 0.512443, 0.223096,
		0.222015, -0.668345, 0.709946,
		36.246788, 39.287121, 25.178892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800220, 39.440296, 24.558908>,  <36.091377, 39.754963, 24.681929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800220, 39.440296, 24.558908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.695843, 39.161144, 24.825703>,  <36.633217, 38.993652, 24.985779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.695843, 39.161144, 24.825703>,  <36.800220, 39.440296, 24.558908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695843, 39.161144, 24.825703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587025, -0.663215, -0.464270,
		0.766360, 0.270388, 0.582738,
		-0.260948, -0.697879, 0.666986,
		36.617558, 38.951782, 25.025799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425426, 39.170906, 24.902695>,  <36.800220, 39.440296, 24.558908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425426, 39.170906, 24.902695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.140850, 38.889988, 24.912752>,  <36.970104, 38.721436, 24.918787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.140850, 38.889988, 24.912752>,  <37.425426, 39.170906, 24.902695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140850, 38.889988, 24.912752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615700, -0.640168, -0.459454,
		0.338768, -0.311395, 0.887845,
		-0.711442, -0.702295, 0.025142,
		36.927418, 38.679298, 24.920294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602467, 38.625744, 25.395161>,  <37.425426, 39.170906, 24.902695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602467, 38.625744, 25.395161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.352413, 38.484962, 25.116497>,  <37.202381, 38.400494, 24.949299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.352413, 38.484962, 25.116497>,  <37.602467, 38.625744, 25.395161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352413, 38.484962, 25.116497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721894, -0.600094, -0.344612,
		-0.296774, -0.718343, 0.629213,
		-0.625136, -0.351953, -0.696660,
		37.164871, 38.379375, 24.907499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957924, 38.066868, 25.169350>,  <37.602467, 38.625744, 25.395161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957924, 38.066868, 25.169350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.672131, 37.995220, 24.898815>,  <37.500656, 37.952232, 24.736494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.672131, 37.995220, 24.898815>,  <37.957924, 38.066868, 25.169350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672131, 37.995220, 24.898815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687411, -0.359771, -0.630897,
		-0.130320, -0.915686, 0.380179,
		-0.714481, -0.179121, -0.676338,
		37.457787, 37.941483, 24.695913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106606, 37.391190, 24.850311>,  <37.957924, 38.066868, 25.169350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106606, 37.391190, 24.850311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.875507, 37.588043, 24.589846>,  <37.736847, 37.706158, 24.433567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.875507, 37.588043, 24.589846>,  <38.106606, 37.391190, 24.850311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875507, 37.588043, 24.589846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568842, -0.329350, -0.753623,
		-0.585347, -0.805809, -0.089669,
		-0.577744, 0.492139, -0.651162,
		37.702183, 37.735683, 24.394497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023857, 36.977840, 24.314720>,  <38.106606, 37.391190, 24.850311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023857, 36.977840, 24.314720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.905643, 37.317871, 24.140350>,  <37.834717, 37.521889, 24.035728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.905643, 37.317871, 24.140350>,  <38.023857, 36.977840, 24.314720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905643, 37.317871, 24.140350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504063, -0.248868, -0.827034,
		-0.811530, -0.464148, -0.354944,
		-0.295532, 0.850077, -0.435924,
		37.816982, 37.572895, 24.009573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857059, 36.823380, 23.643650>,  <38.023857, 36.977840, 24.314720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857059, 36.823380, 23.643650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.940468, 37.214218, 23.626690>,  <37.990513, 37.448723, 23.616514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.940468, 37.214218, 23.626690>,  <37.857059, 36.823380, 23.643650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940468, 37.214218, 23.626690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494013, -0.142647, -0.857673,
		-0.844079, 0.157899, -0.512444,
		0.208524, 0.977098, -0.042401,
		38.003025, 37.507347, 23.613970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696796, 37.066292, 22.881748>,  <37.857059, 36.823380, 23.643650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696796, 37.066292, 22.881748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.960861, 37.322430, 23.038790>,  <38.119301, 37.476112, 23.133015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.960861, 37.322430, 23.038790>,  <37.696796, 37.066292, 22.881748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960861, 37.322430, 23.038790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527896, -0.023717, -0.848978,
		-0.534329, 0.767720, -0.353693,
		0.660166, 0.640346, 0.392603,
		38.158913, 37.514534, 23.156570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827728, 37.576256, 22.485371>,  <37.696796, 37.066292, 22.881748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827728, 37.576256, 22.485371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.157455, 37.583546, 22.711706>,  <38.355289, 37.587917, 22.847507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.157455, 37.583546, 22.711706>,  <37.827728, 37.576256, 22.485371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157455, 37.583546, 22.711706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566088, -0.039276, -0.823409,
		0.007219, 0.999062, -0.042692,
		0.824313, 0.018223, 0.565841,
		38.404751, 37.589012, 22.881458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212837, 38.116810, 22.222126>,  <37.827728, 37.576256, 22.485371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212837, 38.116810, 22.222126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.495258, 37.923843, 22.429497>,  <38.664711, 37.808064, 22.553919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.495258, 37.923843, 22.429497>,  <38.212837, 38.116810, 22.222126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495258, 37.923843, 22.429497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629779, 0.092969, -0.771190,
		0.323834, 0.870996, 0.369455,
		0.706052, -0.482413, 0.518429,
		38.707073, 37.779121, 22.585026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840397, 38.534615, 22.337353>,  <38.212837, 38.116810, 22.222126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840397, 38.534615, 22.337353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.961857, 38.159557, 22.405027>,  <39.034733, 37.934525, 22.445633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.961857, 38.159557, 22.405027>,  <38.840397, 38.534615, 22.337353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961857, 38.159557, 22.405027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720120, 0.109581, -0.685141,
		0.623877, 0.329879, 0.708489,
		0.303650, -0.937642, 0.169187,
		39.052952, 37.878265, 22.455784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558563, 38.495392, 22.181494>,  <38.840397, 38.534615, 22.337353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558563, 38.495392, 22.181494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.477432, 38.104008, 22.166149>,  <39.428753, 37.869175, 22.156942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.477432, 38.104008, 22.166149>,  <39.558563, 38.495392, 22.181494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477432, 38.104008, 22.166149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647686, -0.104670, -0.754683,
		0.734414, -0.177917, 0.654967,
		-0.202826, -0.978463, -0.038363,
		39.416584, 37.810471, 22.154640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140495, 38.134754, 22.110977>,  <39.558563, 38.495392, 22.181494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140495, 38.134754, 22.110977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.866302, 37.879433, 21.970871>,  <39.701786, 37.726238, 21.886808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.866302, 37.879433, 21.970871>,  <40.140495, 38.134754, 22.110977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866302, 37.879433, 21.970871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476004, -0.028857, -0.878970,
		0.550945, -0.769241, 0.323617,
		-0.685478, -0.638307, -0.350263,
		39.660660, 37.687943, 21.865791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552582, 37.588451, 21.661171>,  <40.140495, 38.134754, 22.110977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552582, 37.588451, 21.661171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.166779, 37.543034, 21.565807>,  <39.935299, 37.515781, 21.508589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.166779, 37.543034, 21.565807>,  <40.552582, 37.588451, 21.661171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166779, 37.543034, 21.565807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252374, -0.130669, -0.958766,
		0.077714, -0.984902, 0.154687,
		-0.964504, -0.113549, -0.238409,
		39.877426, 37.508968, 21.494286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653603, 37.085300, 22.157621>,  <40.552582, 37.588451, 21.661171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653603, 37.085300, 22.157621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.008591, 37.048649, 22.338287>,  <41.221584, 37.026657, 22.446688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.008591, 37.048649, 22.338287>,  <40.653603, 37.085300, 22.157621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008591, 37.048649, 22.338287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201851, 0.803762, 0.559663,
		-0.414312, -0.587853, 0.694820,
		0.887469, -0.091625, 0.451667,
		41.274830, 37.021160, 22.473787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529770, 37.425396, 22.816895>,  <40.653603, 37.085300, 22.157621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529770, 37.425396, 22.816895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.916183, 37.339027, 22.873686>,  <41.148033, 37.287209, 22.907761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.916183, 37.339027, 22.873686>,  <40.529770, 37.425396, 22.816895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916183, 37.339027, 22.873686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008057, 0.574320, 0.818591,
		-0.258291, -0.789643, 0.556552,
		0.966034, -0.215919, 0.141980,
		41.205994, 37.274250, 22.916279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596584, 37.107307, 23.571074>,  <40.529770, 37.425396, 22.816895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596584, 37.107307, 23.571074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.945587, 37.258331, 23.447027>,  <41.154991, 37.348946, 23.372599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.945587, 37.258331, 23.447027>,  <40.596584, 37.107307, 23.571074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945587, 37.258331, 23.447027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108160, 0.469707, 0.876171,
		0.476478, -0.798009, 0.368986,
		0.872508, 0.377567, -0.310118,
		41.207340, 37.371601, 23.353992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147732, 36.956707, 24.060020>,  <40.596584, 37.107307, 23.571074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147732, 36.956707, 24.060020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.311703, 37.267078, 23.868229>,  <41.410084, 37.453300, 23.753155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.311703, 37.267078, 23.868229>,  <41.147732, 36.956707, 24.060020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311703, 37.267078, 23.868229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084755, 0.555804, 0.826982,
		0.908172, -0.298365, 0.293603,
		0.409928, 0.775925, -0.479477,
		41.434681, 37.499855, 23.724386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686390, 37.179657, 24.477587>,  <41.147732, 36.956707, 24.060020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686390, 37.179657, 24.477587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.566715, 37.481430, 24.243893>,  <41.494911, 37.662495, 24.103676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.566715, 37.481430, 24.243893>,  <41.686390, 37.179657, 24.477587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566715, 37.481430, 24.243893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031993, 0.604002, 0.796340,
		0.953659, 0.256942, -0.156570,
		-0.299182, 0.754428, -0.584233,
		41.476959, 37.707760, 24.068623>
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
