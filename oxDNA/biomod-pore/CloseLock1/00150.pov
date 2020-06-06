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
	<24.681129, 34.548630, 35.138298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373636, 34.786259, 35.043530>,  <24.189140, 34.928837, 34.986668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373636, 34.786259, 35.043530>,  <24.681129, 34.548630, 35.138298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.373636, 34.786259, 35.043530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615460, 0.586374, -0.526664,
		-0.173950, -0.550680, -0.816390,
		-0.768733, 0.594068, -0.236922,
		24.143017, 34.964478, 34.972454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.718403, 34.721886, 34.351467>,  <24.681129, 34.548630, 35.138298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.718403, 34.721886, 34.351467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533777, 35.011192, 34.556931>,  <24.423002, 35.184776, 34.680210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533777, 35.011192, 34.556931>,  <24.718403, 34.721886, 34.351467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.533777, 35.011192, 34.556931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513215, 0.690002, -0.510399,
		-0.723580, 0.028036, -0.689671,
		-0.461565, 0.723264, 0.513660,
		24.395308, 35.228172, 34.711029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.592636, 35.255722, 33.854229>,  <24.718403, 34.721886, 34.351467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.592636, 35.255722, 33.854229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545084, 35.455364, 34.197567>,  <24.516552, 35.575150, 34.403572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545084, 35.455364, 34.197567>,  <24.592636, 35.255722, 33.854229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.545084, 35.455364, 34.197567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283048, 0.845644, -0.452515,
		-0.951710, 0.189159, -0.241801,
		-0.118881, 0.499105, 0.858348,
		24.509420, 35.605095, 34.455070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.214642, 35.432781, 34.097160>,  <24.592636, 35.255722, 33.854229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.214642, 35.432781, 34.097160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.167671, 35.829967, 34.091137>,  <25.139490, 36.068279, 34.087524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.167671, 35.829967, 34.091137>,  <25.214642, 35.432781, 34.097160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.167671, 35.829967, 34.091137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963401, 0.117580, 0.240904,
		0.240980, 0.013783, -0.970432,
		-0.117424, 0.992968, -0.015056,
		25.132444, 36.127857, 34.086620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.651785, 35.777462, 33.523338>,  <25.214642, 35.432781, 34.097160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.651785, 35.777462, 33.523338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.633646, 36.003414, 33.852909>,  <25.622763, 36.138985, 34.050652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.633646, 36.003414, 33.852909>,  <25.651785, 35.777462, 33.523338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.633646, 36.003414, 33.852909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935517, -0.265253, 0.233345,
		0.350360, 0.781380, -0.516424,
		-0.045348, 0.564878, 0.823928,
		25.620041, 36.172878, 34.100086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264145, 36.282688, 33.601330>,  <25.651785, 35.777462, 33.523338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264145, 36.282688, 33.601330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115278, 36.166611, 33.953983>,  <26.025957, 36.096966, 34.165577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115278, 36.166611, 33.953983>,  <26.264145, 36.282688, 33.601330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115278, 36.166611, 33.953983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924411, -0.201240, 0.323986,
		0.083401, 0.935569, 0.343154,
		-0.372168, -0.290194, 0.881634,
		26.003628, 36.079552, 34.218475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581299, 36.912766, 33.183811>,  <26.264145, 36.282688, 33.601330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581299, 36.912766, 33.183811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862890, 36.970604, 33.461952>,  <27.031845, 37.005306, 33.628838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862890, 36.970604, 33.461952>,  <26.581299, 36.912766, 33.183811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862890, 36.970604, 33.461952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227816, 0.973294, 0.028255,
		-0.672694, -0.178303, 0.718117,
		0.703977, 0.144592, 0.695349,
		27.074083, 37.013981, 33.670555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248039, 37.292099, 33.583775>,  <26.581299, 36.912766, 33.183811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248039, 37.292099, 33.583775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629274, 37.379154, 33.667923>,  <26.858015, 37.431389, 33.718414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629274, 37.379154, 33.667923>,  <26.248039, 37.292099, 33.583775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629274, 37.379154, 33.667923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208367, 0.975851, -0.065561,
		-0.219562, 0.018650, 0.975420,
		0.953088, 0.217640, 0.210373,
		26.915201, 37.444447, 33.731033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197704, 37.896957, 34.039646>,  <26.248039, 37.292099, 33.583775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197704, 37.896957, 34.039646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573936, 37.889824, 33.904007>,  <26.799677, 37.885544, 33.822624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573936, 37.889824, 33.904007>,  <26.197704, 37.896957, 34.039646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573936, 37.889824, 33.904007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037196, 0.987202, -0.155080,
		0.337524, 0.158478, 0.927880,
		0.940582, -0.017830, -0.339099,
		26.856112, 37.884476, 33.802277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541216, 38.425350, 34.425705>,  <26.197704, 37.896957, 34.039646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541216, 38.425350, 34.425705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786814, 38.383755, 34.112732>,  <26.934172, 38.358799, 33.924950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786814, 38.383755, 34.112732>,  <26.541216, 38.425350, 34.425705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786814, 38.383755, 34.112732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181803, 0.946000, -0.268389,
		0.768087, 0.307038, 0.561935,
		0.613995, -0.103984, -0.782430,
		26.971012, 38.352558, 33.878002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195276, 38.764404, 34.560219>,  <26.541216, 38.425350, 34.425705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195276, 38.764404, 34.560219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144461, 38.725571, 34.165363>,  <27.113972, 38.702271, 33.928452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144461, 38.725571, 34.165363>,  <27.195276, 38.764404, 34.560219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144461, 38.725571, 34.165363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035835, 0.994099, -0.102383,
		0.991250, -0.048381, -0.122814,
		-0.127043, -0.097086, -0.987135,
		27.106348, 38.696445, 33.869225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593718, 39.375057, 34.263538>,  <27.195276, 38.764404, 34.560219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593718, 39.375057, 34.263538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347895, 39.247204, 33.975052>,  <27.200401, 39.170490, 33.801960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347895, 39.247204, 33.975052>,  <27.593718, 39.375057, 34.263538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347895, 39.247204, 33.975052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167880, 0.946287, -0.276328,
		0.770800, -0.048742, -0.635210,
		-0.614560, -0.319633, -0.721215,
		27.163527, 39.151314, 33.758686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844255, 39.700649, 33.664436>,  <27.593718, 39.375057, 34.263538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844255, 39.700649, 33.664436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467749, 39.593689, 33.581959>,  <27.241844, 39.529514, 33.532471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467749, 39.593689, 33.581959>,  <27.844255, 39.700649, 33.664436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467749, 39.593689, 33.581959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230105, 0.954858, -0.187876,
		0.247124, -0.129395, -0.960306,
		-0.941266, -0.267400, -0.206194,
		27.185369, 39.513470, 33.520100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682655, 40.092041, 32.965382>,  <27.844255, 39.700649, 33.664436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682655, 40.092041, 32.965382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351418, 39.983818, 33.161774>,  <27.152676, 39.918884, 33.279610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351418, 39.983818, 33.161774>,  <27.682655, 40.092041, 32.965382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351418, 39.983818, 33.161774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345071, 0.936248, -0.066078,
		-0.441798, -0.224140, -0.868663,
		-0.828094, -0.270557, 0.490977,
		27.102989, 39.902649, 33.309067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161247, 40.236725, 32.622513>,  <27.682655, 40.092041, 32.965382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161247, 40.236725, 32.622513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.015779, 40.258453, 32.994492>,  <26.928499, 40.271492, 33.217678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.015779, 40.258453, 32.994492>,  <27.161247, 40.236725, 32.622513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015779, 40.258453, 32.994492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281109, 0.945358, -0.165155,
		-0.888100, -0.321477, -0.328529,
		-0.363671, 0.054321, 0.929942,
		26.906677, 40.274750, 33.273476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747194, 40.839302, 32.529850>,  <27.161247, 40.236725, 32.622513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747194, 40.839302, 32.529850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713985, 40.752350, 32.918869>,  <26.694059, 40.700176, 33.152279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713985, 40.752350, 32.918869>,  <26.747194, 40.839302, 32.529850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.713985, 40.752350, 32.918869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399622, 0.901277, 0.167340,
		-0.912913, -0.374760, -0.161697,
		-0.083021, -0.217384, 0.972549,
		26.689079, 40.687134, 33.210632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035099, 41.004082, 32.677132>,  <26.747194, 40.839302, 32.529850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035099, 41.004082, 32.677132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249359, 41.000374, 33.014889>,  <26.377914, 40.998150, 33.217541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249359, 41.000374, 33.014889>,  <26.035099, 41.004082, 32.677132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.249359, 41.000374, 33.014889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303815, 0.930864, 0.202951,
		-0.787894, -0.365249, 0.495798,
		0.535648, -0.009273, 0.844390,
		26.410053, 40.997593, 33.268208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593662, 41.303898, 33.331207>,  <26.035099, 41.004082, 32.677132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593662, 41.303898, 33.331207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977474, 41.367329, 33.424294>,  <26.207762, 41.405388, 33.480145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977474, 41.367329, 33.424294>,  <25.593662, 41.303898, 33.331207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977474, 41.367329, 33.424294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241663, 0.887949, 0.391340,
		-0.144584, -0.431741, 0.890334,
		0.959528, 0.158579, 0.232719,
		26.265333, 41.414902, 33.494110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614473, 41.742538, 33.919720>,  <25.593662, 41.303898, 33.331207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614473, 41.742538, 33.919720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.990282, 41.777607, 33.787289>,  <26.215767, 41.798649, 33.707832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.990282, 41.777607, 33.787289>,  <25.614473, 41.742538, 33.919720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.990282, 41.777607, 33.787289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097918, 0.857567, 0.504967,
		0.328191, -0.506846, 0.797118,
		0.939523, 0.087673, -0.331075,
		26.272139, 41.803909, 33.687965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031204, 42.072765, 34.453224>,  <25.614473, 41.742538, 33.919720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031204, 42.072765, 34.453224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245853, 42.136963, 34.121857>,  <26.374643, 42.175480, 33.923035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245853, 42.136963, 34.121857>,  <26.031204, 42.072765, 34.453224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245853, 42.136963, 34.121857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214071, 0.923735, 0.317629,
		0.816217, -0.347786, 0.461339,
		0.536622, 0.160495, -0.828419,
		26.406839, 42.185112, 33.873329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545578, 42.518372, 34.704681>,  <26.031204, 42.072765, 34.453224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545578, 42.518372, 34.704681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490534, 42.576027, 34.312706>,  <26.457508, 42.610619, 34.077518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490534, 42.576027, 34.312706>,  <26.545578, 42.518372, 34.704681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490534, 42.576027, 34.312706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190308, 0.974769, 0.116652,
		0.972032, -0.170439, -0.161568,
		-0.137610, 0.144137, -0.979943,
		26.449251, 42.619267, 34.018723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066345, 42.980972, 34.477226>,  <26.545578, 42.518372, 34.704681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066345, 42.980972, 34.477226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827477, 42.982803, 34.156387>,  <26.684155, 42.983902, 33.963882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827477, 42.982803, 34.156387>,  <27.066345, 42.980972, 34.477226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827477, 42.982803, 34.156387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099267, 0.992718, -0.068243,
		0.795946, -0.120376, -0.593279,
		-0.597173, 0.004575, -0.802099,
		26.648325, 42.984177, 33.915756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368408, 43.531307, 33.969776>,  <27.066345, 42.980972, 34.477226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368408, 43.531307, 33.969776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987181, 43.493370, 33.854771>,  <26.758444, 43.470608, 33.785767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987181, 43.493370, 33.854771>,  <27.368408, 43.531307, 33.969776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987181, 43.493370, 33.854771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070637, 0.993116, -0.093437,
		0.294392, -0.068743, -0.953209,
		-0.953071, -0.094839, -0.287510,
		26.701260, 43.464920, 33.768517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337345, 43.849899, 33.229366>,  <27.368408, 43.531307, 33.969776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337345, 43.849899, 33.229366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984352, 43.861347, 33.417156>,  <26.772556, 43.868217, 33.529831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984352, 43.861347, 33.417156>,  <27.337345, 43.849899, 33.229366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984352, 43.861347, 33.417156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042074, 0.989341, -0.139404,
		-0.468464, -0.142774, -0.871870,
		-0.882480, 0.028622, 0.469478,
		26.719608, 43.869934, 33.557999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927591, 44.239216, 32.754753>,  <27.337345, 43.849899, 33.229366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927591, 44.239216, 32.754753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769268, 44.262295, 33.121361>,  <26.674274, 44.276142, 33.341324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769268, 44.262295, 33.121361>,  <26.927591, 44.239216, 32.754753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769268, 44.262295, 33.121361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200610, 0.968488, -0.147601,
		-0.896154, -0.242284, -0.371762,
		-0.395809, 0.057694, 0.916519,
		26.650526, 44.279602, 33.396317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492439, 44.680370, 32.555046>,  <26.927591, 44.239216, 32.754753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492439, 44.680370, 32.555046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538345, 44.682030, 32.952400>,  <26.565889, 44.683025, 33.190811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538345, 44.682030, 32.952400>,  <26.492439, 44.680370, 32.555046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538345, 44.682030, 32.952400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107205, 0.994203, 0.008230,
		-0.987591, -0.107440, 0.114543,
		0.114763, 0.004151, 0.993384,
		26.572775, 44.683273, 33.250416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970577, 45.039890, 32.788429>,  <26.492439, 44.680370, 32.555046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.970577, 45.039890, 32.788429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302853, 45.048664, 33.010952>,  <26.502218, 45.053928, 33.144466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302853, 45.048664, 33.010952>,  <25.970577, 45.039890, 32.788429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.302853, 45.048664, 33.010952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076092, 0.985374, -0.152471,
		-0.551516, 0.168986, 0.816868,
		0.830686, 0.021933, 0.556309,
		26.552059, 45.055244, 33.177845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873102, 45.307487, 33.490166>,  <25.970577, 45.039890, 32.788429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873102, 45.307487, 33.490166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.237986, 45.367149, 33.337521>,  <26.456915, 45.402946, 33.245934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.237986, 45.367149, 33.337521>,  <25.873102, 45.307487, 33.490166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237986, 45.367149, 33.337521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211247, 0.969261, -0.126126,
		0.351071, 0.195668, 0.915676,
		0.912208, 0.149155, -0.381614,
		26.511648, 45.411896, 33.223038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292398, 45.934479, 33.278275>,  <25.873102, 45.307487, 33.490166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292398, 45.934479, 33.278275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954716, 45.992428, 33.484703>,  <25.752106, 46.027199, 33.608559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954716, 45.992428, 33.484703>,  <26.292398, 45.934479, 33.278275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954716, 45.992428, 33.484703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522189, 0.004988, 0.852815,
		0.120977, 0.989437, -0.079862,
		-0.844205, 0.144874, 0.516070,
		25.701454, 46.035889, 33.639523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.180931, 46.584801, 33.761696>,  <26.292398, 45.934479, 33.278275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.180931, 46.584801, 33.761696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944508, 46.313309, 33.936043>,  <25.802652, 46.150414, 34.040649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944508, 46.313309, 33.936043>,  <26.180931, 46.584801, 33.761696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944508, 46.313309, 33.936043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477160, 0.141468, 0.867355,
		-0.650359, 0.720635, 0.240245,
		-0.591060, -0.678728, 0.435863,
		25.767189, 46.109692, 34.066803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.672302, 46.825085, 34.407391>,  <26.180931, 46.584801, 33.761696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.672302, 46.825085, 34.407391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862715, 46.476139, 34.362900>,  <25.976961, 46.266769, 34.336205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862715, 46.476139, 34.362900>,  <25.672302, 46.825085, 34.407391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.862715, 46.476139, 34.362900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585517, 0.220024, 0.780230,
		-0.656174, -0.436538, 0.615524,
		0.476030, -0.872367, -0.111226,
		26.005524, 46.214428, 34.329533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.762800, 46.452198, 35.034939>,  <25.672302, 46.825085, 34.407391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.762800, 46.452198, 35.034939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081549, 46.351646, 34.815189>,  <26.272797, 46.291317, 34.683338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081549, 46.351646, 34.815189>,  <25.762800, 46.452198, 35.034939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081549, 46.351646, 34.815189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595397, 0.172505, 0.784694,
		-0.102484, -0.952392, 0.287133,
		0.796869, -0.251377, -0.549372,
		26.320610, 46.276234, 34.650379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.245558, 46.205101, 35.533081>,  <25.762800, 46.452198, 35.034939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.245558, 46.205101, 35.533081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501480, 46.280830, 35.235142>,  <26.655033, 46.326267, 35.056377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501480, 46.280830, 35.235142>,  <26.245558, 46.205101, 35.533081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501480, 46.280830, 35.235142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764189, -0.053788, 0.642746,
		0.081625, -0.980440, -0.179096,
		0.639807, 0.189327, -0.744851,
		26.693422, 46.337627, 35.011688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355947, 45.607845, 35.632442>,  <26.245558, 46.205101, 35.533081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355947, 45.607845, 35.632442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090424, 45.538883, 35.341339>,  <25.931108, 45.497505, 35.166676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090424, 45.538883, 35.341339>,  <26.355947, 45.607845, 35.632442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090424, 45.538883, 35.341339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625264, 0.661841, 0.413536,
		0.410365, 0.729551, -0.547135,
		-0.663812, -0.172403, -0.727758,
		25.891279, 45.487164, 35.123013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072426, 44.847538, 35.790115>,  <26.355947, 45.607845, 35.632442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072426, 44.847538, 35.790115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863237, 45.002983, 36.093559>,  <25.737724, 45.096249, 36.275623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863237, 45.002983, 36.093559>,  <26.072426, 44.847538, 35.790115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863237, 45.002983, 36.093559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545609, -0.531145, 0.648225,
		0.654837, 0.752905, 0.065744,
		-0.522972, 0.388611, 0.758605,
		25.706347, 45.119568, 36.321140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.493704, 45.084385, 36.364624>,  <26.072426, 44.847538, 35.790115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.493704, 45.084385, 36.364624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.131018, 44.959328, 36.477852>,  <25.913406, 44.884293, 36.545788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.131018, 44.959328, 36.477852>,  <26.493704, 45.084385, 36.364624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.131018, 44.959328, 36.477852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417152, -0.763627, 0.492806,
		0.062085, 0.564915, 0.822810,
		-0.906714, -0.312641, 0.283066,
		25.859003, 44.865536, 36.562771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593740, 44.892765, 37.018375>,  <26.493704, 45.084385, 36.364624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593740, 44.892765, 37.018375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253883, 44.706535, 36.919304>,  <26.049969, 44.594799, 36.859859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253883, 44.706535, 36.919304>,  <26.593740, 44.892765, 37.018375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253883, 44.706535, 36.919304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358709, -0.854497, 0.375715,
		-0.386565, 0.230379, 0.893024,
		-0.849644, -0.465574, -0.247680,
		25.998991, 44.566864, 36.845001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333799, 44.372604, 37.652298>,  <26.593740, 44.892765, 37.018375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333799, 44.372604, 37.652298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207150, 44.236809, 37.298012>,  <26.131161, 44.155331, 37.085442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207150, 44.236809, 37.298012>,  <26.333799, 44.372604, 37.652298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.207150, 44.236809, 37.298012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453528, -0.874293, 0.172989,
		-0.833104, -0.346925, 0.430791,
		-0.316623, -0.339493, -0.885717,
		26.112164, 44.134960, 37.032295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312962, 43.691776, 37.759064>,  <26.333799, 44.372604, 37.652298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312962, 43.691776, 37.759064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288727, 43.708885, 37.360165>,  <26.274185, 43.719151, 37.120827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288727, 43.708885, 37.360165>,  <26.312962, 43.691776, 37.759064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288727, 43.708885, 37.360165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352620, -0.933745, -0.061475,
		-0.933804, -0.355373, 0.041481,
		-0.060579, 0.042778, -0.997247,
		26.270552, 43.721718, 37.060989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891211, 43.033821, 37.559319>,  <26.312962, 43.691776, 37.759064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891211, 43.033821, 37.559319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103668, 43.182850, 37.254929>,  <26.231144, 43.272266, 37.072296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103668, 43.182850, 37.254929>,  <25.891211, 43.033821, 37.559319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103668, 43.182850, 37.254929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281192, -0.924742, -0.256482,
		-0.799259, -0.077750, -0.595936,
		0.531145, 0.372568, -0.760972,
		26.263012, 43.294621, 37.026638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776638, 42.544575, 37.042053>,  <25.891211, 43.033821, 37.559319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776638, 42.544575, 37.042053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093571, 42.764774, 36.936859>,  <26.283731, 42.896893, 36.873745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093571, 42.764774, 36.936859>,  <25.776638, 42.544575, 37.042053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093571, 42.764774, 36.936859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496784, -0.832380, -0.245659,
		-0.354136, 0.063998, -0.933001,
		0.792334, 0.550498, -0.262983,
		26.331270, 42.929924, 36.857964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.969933, 42.198208, 36.519218>,  <25.776638, 42.544575, 37.042053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.969933, 42.198208, 36.519218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307882, 42.388702, 36.616692>,  <26.510653, 42.502998, 36.675175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307882, 42.388702, 36.616692>,  <25.969933, 42.198208, 36.519218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307882, 42.388702, 36.616692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531620, -0.798279, -0.283074,
		0.059717, 0.368710, -0.927625,
		0.844875, 0.476239, 0.243684,
		26.561344, 42.531574, 36.689796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484903, 42.137375, 35.915909>,  <25.969933, 42.198208, 36.519218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484903, 42.137375, 35.915909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685131, 42.222641, 36.251526>,  <26.805267, 42.273800, 36.452896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685131, 42.222641, 36.251526>,  <26.484903, 42.137375, 35.915909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685131, 42.222641, 36.251526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620441, -0.764251, -0.175993,
		0.603724, 0.608674, -0.514815,
		0.500570, 0.213161, 0.839042,
		26.835302, 42.286591, 36.503239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205881, 42.133591, 35.688747>,  <26.484903, 42.137375, 35.915909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205881, 42.133591, 35.688747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205727, 42.102367, 36.087528>,  <27.205633, 42.083633, 36.326797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205727, 42.102367, 36.087528>,  <27.205881, 42.133591, 35.688747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.205727, 42.102367, 36.087528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654173, -0.754057, -0.058789,
		0.756345, 0.652154, 0.051358,
		-0.000388, -0.078061, 0.996949,
		27.205610, 42.078949, 36.386612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984091, 42.073044, 35.937435>,  <27.205881, 42.133591, 35.688747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984091, 42.073044, 35.937435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734272, 41.922424, 36.211121>,  <27.584381, 41.832050, 36.375332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734272, 41.922424, 36.211121>,  <27.984091, 42.073044, 35.937435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734272, 41.922424, 36.211121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477126, -0.877554, -0.047439,
		0.618300, 0.296829, 0.727735,
		-0.624545, -0.376553, 0.684216,
		27.546909, 41.809460, 36.416386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395880, 41.747192, 36.390560>,  <27.984091, 42.073044, 35.937435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395880, 41.747192, 36.390560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033375, 41.584438, 36.436413>,  <27.815872, 41.486786, 36.463924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033375, 41.584438, 36.436413>,  <28.395880, 41.747192, 36.390560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033375, 41.584438, 36.436413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409888, -0.912131, 0.002933,
		0.103365, 0.049644, 0.993404,
		-0.906260, -0.406881, 0.114630,
		27.761497, 41.462376, 36.470802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532248, 41.161163, 36.769169>,  <28.395880, 41.747192, 36.390560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532248, 41.161163, 36.769169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159691, 41.067474, 36.657707>,  <27.936157, 41.011261, 36.590828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159691, 41.067474, 36.657707>,  <28.532248, 41.161163, 36.769169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159691, 41.067474, 36.657707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188437, -0.965178, 0.181447,
		-0.311454, 0.116489, 0.943094,
		-0.931390, -0.234226, -0.278658,
		27.880274, 40.997208, 36.574108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241940, 40.676811, 37.258080>,  <28.532248, 41.161163, 36.769169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241940, 40.676811, 37.258080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060955, 40.646877, 36.902622>,  <27.952364, 40.628918, 36.689350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060955, 40.646877, 36.902622>,  <28.241940, 40.676811, 37.258080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060955, 40.646877, 36.902622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180855, -0.983466, -0.009263,
		-0.873253, -0.164906, 0.458514,
		-0.452461, -0.074836, -0.888639,
		27.925217, 40.624428, 36.636032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694019, 40.303959, 37.314377>,  <28.241940, 40.676811, 37.258080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694019, 40.303959, 37.314377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794952, 40.266354, 36.929150>,  <27.855513, 40.243790, 36.698013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794952, 40.266354, 36.929150>,  <27.694019, 40.303959, 37.314377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794952, 40.266354, 36.929150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153708, -0.978738, 0.135816,
		-0.955355, -0.182301, -0.232515,
		0.252331, -0.094013, -0.963063,
		27.870651, 40.238152, 36.640232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714224, 39.594780, 37.157650>,  <27.694019, 40.303959, 37.314377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714224, 39.594780, 37.157650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858292, 39.718636, 36.805649>,  <27.944733, 39.792950, 36.594448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858292, 39.718636, 36.805649>,  <27.714224, 39.594780, 37.157650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858292, 39.718636, 36.805649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224074, -0.944408, -0.240593,
		-0.905577, -0.110531, -0.409528,
		0.360168, 0.309640, -0.880001,
		27.966343, 39.811527, 36.541649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432636, 39.141735, 36.667511>,  <27.714224, 39.594780, 37.157650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432636, 39.141735, 36.667511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749199, 39.303158, 36.483852>,  <27.939137, 39.400013, 36.373657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749199, 39.303158, 36.483852>,  <27.432636, 39.141735, 36.667511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749199, 39.303158, 36.483852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273667, -0.905538, -0.324204,
		-0.546611, 0.130923, -0.827089,
		0.791406, 0.403560, -0.459147,
		27.986620, 39.424225, 36.346107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425673, 38.850754, 36.006134>,  <27.432636, 39.141735, 36.667511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425673, 38.850754, 36.006134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806931, 38.959717, 36.058765>,  <28.035685, 39.025093, 36.090343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806931, 38.959717, 36.058765>,  <27.425673, 38.850754, 36.006134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806931, 38.959717, 36.058765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301865, -0.884914, -0.354688,
		0.019814, 0.377787, -0.925681,
		0.953145, 0.272403, 0.131574,
		28.092875, 39.041439, 36.098236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780247, 38.445129, 35.502350>,  <27.425673, 38.850754, 36.006134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780247, 38.445129, 35.502350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070988, 38.584347, 35.739178>,  <28.245434, 38.667877, 35.881275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070988, 38.584347, 35.739178>,  <27.780247, 38.445129, 35.502350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070988, 38.584347, 35.739178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608894, -0.725352, -0.321113,
		0.317696, 0.593910, -0.739149,
		0.726855, 0.348047, 0.592069,
		28.289043, 38.688763, 35.916798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374500, 38.553764, 35.089413>,  <27.780247, 38.445129, 35.502350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374500, 38.553764, 35.089413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509083, 38.510483, 35.463596>,  <28.589832, 38.484516, 35.688107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509083, 38.510483, 35.463596>,  <28.374500, 38.553764, 35.089413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509083, 38.510483, 35.463596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710542, -0.622747, -0.327590,
		0.618002, 0.774905, -0.132646,
		0.336456, -0.108201, 0.935462,
		28.610020, 38.478024, 35.744236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033792, 38.558483, 34.951382>,  <28.374500, 38.553764, 35.089413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033792, 38.558483, 34.951382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978716, 38.399704, 35.314365>,  <28.945669, 38.304436, 35.532154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978716, 38.399704, 35.314365>,  <29.033792, 38.558483, 34.951382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978716, 38.399704, 35.314365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553030, -0.790881, -0.262041,
		0.821705, 0.465769, 0.328421,
		-0.137691, -0.396947, 0.907455,
		28.937408, 38.280621, 35.586601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668921, 38.214314, 35.206638>,  <29.033792, 38.558483, 34.951382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668921, 38.214314, 35.206638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459988, 38.058495, 35.510063>,  <29.334627, 37.965004, 35.692120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459988, 38.058495, 35.510063>,  <29.668921, 38.214314, 35.206638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459988, 38.058495, 35.510063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563122, -0.825580, -0.036204,
		0.640360, 0.408254, 0.650590,
		-0.522334, -0.389545, 0.758565,
		29.303288, 37.941631, 35.737633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191818, 37.919044, 35.718609>,  <29.668921, 38.214314, 35.206638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191818, 37.919044, 35.718609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835056, 37.743214, 35.676132>,  <29.620998, 37.637714, 35.650646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835056, 37.743214, 35.676132>,  <30.191818, 37.919044, 35.718609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835056, 37.743214, 35.676132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451566, -0.853108, -0.261333,
		0.024286, -0.281035, 0.959390,
		-0.891907, -0.439575, -0.106187,
		29.567484, 37.611340, 35.644276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291267, 37.215073, 35.979828>,  <30.191818, 37.919044, 35.718609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291267, 37.215073, 35.979828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959368, 37.212814, 35.756584>,  <29.760227, 37.211460, 35.622639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959368, 37.212814, 35.756584>,  <30.291267, 37.215073, 35.979828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959368, 37.212814, 35.756584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175911, -0.951629, -0.251909,
		-0.529690, -0.307199, 0.790606,
		-0.829749, -0.005642, -0.558108,
		29.710443, 37.211121, 35.589153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920137, 36.655846, 36.257034>,  <30.291267, 37.215073, 35.979828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920137, 36.655846, 36.257034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855669, 36.727283, 35.868782>,  <29.816988, 36.770145, 35.635830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855669, 36.727283, 35.868782>,  <29.920137, 36.655846, 36.257034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855669, 36.727283, 35.868782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424131, -0.875506, -0.231521,
		-0.891144, -0.448990, 0.065356,
		-0.161170, 0.178599, -0.970632,
		29.807318, 36.780865, 35.577591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996502, 35.826153, 36.263725>,  <29.920137, 36.655846, 36.257034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996502, 35.826153, 36.263725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050043, 35.438686, 36.180050>,  <30.082167, 35.206207, 36.129845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050043, 35.438686, 36.180050>,  <29.996502, 35.826153, 36.263725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050043, 35.438686, 36.180050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990936, 0.133250, 0.017028,
		0.011380, -0.209574, 0.977727,
		0.133851, -0.968671, -0.209191,
		30.090199, 35.148087, 36.117294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457350, 35.503998, 36.825588>,  <29.996502, 35.826153, 36.263725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457350, 35.503998, 36.825588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450943, 35.353237, 36.455143>,  <30.447098, 35.262779, 36.232876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450943, 35.353237, 36.455143>,  <30.457350, 35.503998, 36.825588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450943, 35.353237, 36.455143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981491, 0.170857, -0.086511,
		0.190839, -0.910357, 0.367193,
		-0.016018, -0.376906, -0.926113,
		30.446138, 35.240166, 36.177307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905891, 34.899185, 36.708847>,  <30.457350, 35.503998, 36.825588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905891, 34.899185, 36.708847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863535, 35.116146, 36.375481>,  <30.838121, 35.246323, 36.175461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863535, 35.116146, 36.375481>,  <30.905891, 34.899185, 36.708847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863535, 35.116146, 36.375481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994215, 0.072898, -0.078880,
		0.017969, -0.836950, -0.546984,
		-0.105893, 0.542402, -0.833419,
		30.831768, 35.278866, 36.125454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334555, 34.569916, 36.162090>,  <30.905891, 34.899185, 36.708847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334555, 34.569916, 36.162090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290724, 34.964455, 36.112911>,  <31.264425, 35.201176, 36.083405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290724, 34.964455, 36.112911>,  <31.334555, 34.569916, 36.162090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290724, 34.964455, 36.112911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993946, 0.107735, -0.021548,
		-0.008008, -0.124566, -0.992179,
		-0.109576, 0.986345, -0.122949,
		31.257851, 35.260357, 36.076027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784929, 34.901085, 35.693295>,  <31.334555, 34.569916, 36.162090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784929, 34.901085, 35.693295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684853, 35.227009, 35.902477>,  <31.624807, 35.422562, 36.027988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684853, 35.227009, 35.902477>,  <31.784929, 34.901085, 35.693295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684853, 35.227009, 35.902477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925478, 0.042595, 0.376398,
		0.284418, 0.578160, -0.764747,
		-0.250192, 0.814811, 0.522959,
		31.609795, 35.471451, 36.059364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236118, 35.364761, 35.923748>,  <31.784929, 34.901085, 35.693295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236118, 35.364761, 35.923748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600315, 35.294712, 35.773899>,  <32.818832, 35.252682, 35.683990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600315, 35.294712, 35.773899>,  <32.236118, 35.364761, 35.923748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600315, 35.294712, 35.773899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400969, 0.152243, 0.903353,
		-0.101162, -0.972705, 0.208833,
		0.910489, -0.175120, -0.374623,
		32.873463, 35.242176, 35.661510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505024, 34.936516, 36.339275>,  <32.236118, 35.364761, 35.923748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505024, 34.936516, 36.339275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785980, 35.146523, 36.147022>,  <32.954552, 35.272526, 36.031670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785980, 35.146523, 36.147022>,  <32.505024, 34.936516, 36.339275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785980, 35.146523, 36.147022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339259, 0.346673, 0.874483,
		0.625743, -0.777285, 0.065381,
		0.702388, 0.525020, -0.480629,
		32.996696, 35.304028, 36.002834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140125, 34.816307, 36.675488>,  <32.505024, 34.936516, 36.339275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140125, 34.816307, 36.675488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163757, 35.171501, 36.493065>,  <33.177937, 35.384617, 36.383614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163757, 35.171501, 36.493065>,  <33.140125, 34.816307, 36.675488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163757, 35.171501, 36.493065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275524, 0.424601, 0.862439,
		0.959477, -0.176607, -0.219577,
		0.059080, 0.887989, -0.456054,
		33.181480, 35.437897, 36.356247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833378, 34.976513, 36.843204>,  <33.140125, 34.816307, 36.675488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833378, 34.976513, 36.843204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654652, 35.322521, 36.751907>,  <33.547417, 35.530125, 36.697128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654652, 35.322521, 36.751907>,  <33.833378, 34.976513, 36.843204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654652, 35.322521, 36.751907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392084, 0.418662, 0.819141,
		0.804132, 0.276513, -0.526225,
		-0.446813, 0.865022, -0.228243,
		33.520607, 35.582027, 36.683434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281384, 35.444321, 36.837849>,  <33.833378, 34.976513, 36.843204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281384, 35.444321, 36.837849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979202, 35.706303, 36.845085>,  <33.797894, 35.863491, 36.849426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979202, 35.706303, 36.845085>,  <34.281384, 35.444321, 36.837849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979202, 35.706303, 36.845085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480715, 0.535284, 0.694538,
		0.445207, 0.533387, -0.719228,
		-0.755450, 0.654957, 0.018095,
		33.752567, 35.902790, 36.850513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570553, 36.098206, 36.836189>,  <34.281384, 35.444321, 36.837849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570553, 36.098206, 36.836189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215557, 36.179638, 37.001556>,  <34.002560, 36.228497, 37.100777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215557, 36.179638, 37.001556>,  <34.570553, 36.098206, 36.836189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215557, 36.179638, 37.001556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454359, 0.536348, 0.711258,
		-0.076938, 0.819076, -0.568502,
		-0.887490, 0.203582, 0.413420,
		33.949310, 36.240711, 37.125584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660442, 36.847466, 36.946255>,  <34.570553, 36.098206, 36.836189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660442, 36.847466, 36.946255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373421, 36.697441, 37.181011>,  <34.201206, 36.607426, 37.321865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373421, 36.697441, 37.181011>,  <34.660442, 36.847466, 36.946255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373421, 36.697441, 37.181011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522345, 0.267614, 0.809653,
		-0.460729, 0.887533, 0.003882,
		-0.717555, -0.375058, 0.586896,
		34.158154, 36.584923, 37.357079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584801, 37.363663, 37.424290>,  <34.660442, 36.847466, 36.946255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584801, 37.363663, 37.424290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410587, 37.043491, 37.589031>,  <34.306061, 36.851387, 37.687878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410587, 37.043491, 37.589031>,  <34.584801, 37.363663, 37.424290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410587, 37.043491, 37.589031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552486, 0.123530, 0.824318,
		-0.710686, 0.586559, 0.388425,
		-0.435529, -0.800430, 0.411857,
		34.279930, 36.803364, 37.712589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336708, 37.534176, 38.156120>,  <34.584801, 37.363663, 37.424290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336708, 37.534176, 38.156120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387402, 37.139095, 38.119480>,  <34.417816, 36.902046, 38.097496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387402, 37.139095, 38.119480>,  <34.336708, 37.534176, 38.156120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387402, 37.139095, 38.119480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619274, 0.006644, 0.785147,
		-0.774880, -0.156227, 0.612498,
		0.126731, -0.987699, -0.091599,
		34.425419, 36.842785, 38.091999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190720, 37.395924, 38.852795>,  <34.336708, 37.534176, 38.156120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190720, 37.395924, 38.852795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345066, 37.049461, 38.725746>,  <34.437675, 36.841583, 38.649517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345066, 37.049461, 38.725746>,  <34.190720, 37.395924, 38.852795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345066, 37.049461, 38.725746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309491, -0.202795, 0.929026,
		-0.869093, -0.456778, 0.189816,
		0.385865, -0.866157, -0.317617,
		34.460827, 36.789616, 38.630463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893238, 37.060806, 39.299072>,  <34.190720, 37.395924, 38.852795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893238, 37.060806, 39.299072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191574, 36.838898, 39.151581>,  <34.370575, 36.705753, 39.063087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191574, 36.838898, 39.151581>,  <33.893238, 37.060806, 39.299072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191574, 36.838898, 39.151581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269222, -0.255266, 0.928633,
		-0.609301, -0.791877, -0.041030,
		0.745837, -0.554770, -0.368725,
		34.415325, 36.672466, 39.040962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925922, 36.489468, 39.687870>,  <33.893238, 37.060806, 39.299072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925922, 36.489468, 39.687870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302490, 36.458069, 39.556675>,  <34.528431, 36.439232, 39.477959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302490, 36.458069, 39.556675>,  <33.925922, 36.489468, 39.687870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302490, 36.458069, 39.556675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312824, -0.160115, 0.936218,
		-0.126000, -0.983973, -0.126182,
		0.941417, -0.078491, -0.327985,
		34.584915, 36.434521, 39.458279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183132, 35.734234, 39.854771>,  <33.925922, 36.489468, 39.687870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183132, 35.734234, 39.854771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480644, 35.996166, 39.801113>,  <34.659153, 36.153324, 39.768917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480644, 35.996166, 39.801113>,  <34.183132, 35.734234, 39.854771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480644, 35.996166, 39.801113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371816, -0.238538, 0.897135,
		0.555469, -0.717148, -0.420895,
		0.743779, 0.654827, -0.134147,
		34.703777, 36.192616, 39.760868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753895, 35.357769, 39.876118>,  <34.183132, 35.734234, 39.854771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753895, 35.357769, 39.876118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876919, 35.729416, 39.958241>,  <34.950733, 35.952404, 40.007515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876919, 35.729416, 39.958241>,  <34.753895, 35.357769, 39.876118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876919, 35.729416, 39.958241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425285, -0.327244, 0.843827,
		0.851199, -0.172212, -0.495785,
		0.307560, 0.929115, 0.205311,
		34.969185, 36.008152, 40.019833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423046, 35.284740, 39.987766>,  <34.753895, 35.357769, 39.876118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423046, 35.284740, 39.987766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344879, 35.627914, 40.177826>,  <35.297977, 35.833817, 40.291862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344879, 35.627914, 40.177826>,  <35.423046, 35.284740, 39.987766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344879, 35.627914, 40.177826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132874, -0.456857, 0.879560,
		0.971677, 0.235017, -0.024719,
		-0.195419, 0.857933, 0.475146,
		35.286255, 35.885296, 40.320370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922394, 35.287624, 40.546364>,  <35.423046, 35.284740, 39.987766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922394, 35.287624, 40.546364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682186, 35.591427, 40.646389>,  <35.538063, 35.773708, 40.706402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682186, 35.591427, 40.646389>,  <35.922394, 35.287624, 40.546364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682186, 35.591427, 40.646389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078933, -0.254891, 0.963743,
		0.795706, 0.598483, 0.093116,
		-0.600518, 0.759506, 0.250059,
		35.502029, 35.819279, 40.721405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275375, 35.653439, 41.092613>,  <35.922394, 35.287624, 40.546364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275375, 35.653439, 41.092613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901115, 35.794006, 41.105595>,  <35.676559, 35.878349, 41.113384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901115, 35.794006, 41.105595>,  <36.275375, 35.653439, 41.092613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901115, 35.794006, 41.105595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070220, 0.095250, 0.992974,
		0.345861, 0.931359, -0.113798,
		-0.935654, 0.351422, 0.032457,
		35.620419, 35.899433, 41.115334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292828, 36.256538, 41.530281>,  <36.275375, 35.653439, 41.092613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292828, 36.256538, 41.530281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924168, 36.103180, 41.554184>,  <35.702972, 36.011166, 41.568523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924168, 36.103180, 41.554184>,  <36.292828, 36.256538, 41.530281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924168, 36.103180, 41.554184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093392, -0.069711, 0.993186,
		-0.376619, 0.920949, 0.100055,
		-0.921649, -0.383397, 0.059755,
		35.647675, 35.988159, 41.572109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827354, 36.654568, 42.081753>,  <36.292828, 36.256538, 41.530281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827354, 36.654568, 42.081753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664429, 36.291912, 42.037762>,  <35.566673, 36.074318, 42.011368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664429, 36.291912, 42.037762>,  <35.827354, 36.654568, 42.081753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664429, 36.291912, 42.037762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023859, -0.109814, 0.993666,
		-0.912976, 0.407359, 0.023097,
		-0.407315, -0.906642, -0.109977,
		35.542233, 36.019920, 42.004768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306293, 36.655334, 42.575394>,  <35.827354, 36.654568, 42.081753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306293, 36.655334, 42.575394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405388, 36.276340, 42.494507>,  <35.464844, 36.048943, 42.445976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405388, 36.276340, 42.494507>,  <35.306293, 36.655334, 42.575394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405388, 36.276340, 42.494507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093372, -0.184401, 0.978406,
		-0.964318, -0.261266, 0.042786,
		0.247734, -0.947490, -0.202216,
		35.479710, 35.992092, 42.433842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981022, 36.281040, 43.066730>,  <35.306293, 36.655334, 42.575394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981022, 36.281040, 43.066730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269085, 36.030121, 42.948162>,  <35.441925, 35.879570, 42.877022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269085, 36.030121, 42.948162>,  <34.981022, 36.281040, 43.066730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269085, 36.030121, 42.948162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145048, -0.281674, 0.948483,
		-0.678476, -0.726056, -0.111863,
		0.720161, -0.627298, -0.296422,
		35.485134, 35.841930, 42.859234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748646, 35.599663, 43.461479>,  <34.981022, 36.281040, 43.066730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748646, 35.599663, 43.461479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127598, 35.580029, 43.334946>,  <35.354969, 35.568249, 43.259026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127598, 35.580029, 43.334946>,  <34.748646, 35.599663, 43.461479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127598, 35.580029, 43.334946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290693, -0.281940, 0.914334,
		-0.134068, -0.958175, -0.252835,
		0.947377, -0.049086, -0.316334,
		35.411812, 35.565304, 43.240044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867111, 34.960735, 43.604771>,  <34.748646, 35.599663, 43.461479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867111, 34.960735, 43.604771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203903, 35.176346, 43.595654>,  <35.405979, 35.305714, 43.590183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203903, 35.176346, 43.595654>,  <34.867111, 34.960735, 43.604771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203903, 35.176346, 43.595654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255239, -0.360770, 0.897050,
		0.475312, -0.761115, -0.441342,
		0.841981, 0.539026, -0.022788,
		35.456497, 35.338055, 43.588818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341713, 34.487434, 43.941257>,  <34.867111, 34.960735, 43.604771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341713, 34.487434, 43.941257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562561, 34.820541, 43.957561>,  <35.695072, 35.020405, 43.967342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562561, 34.820541, 43.957561>,  <35.341713, 34.487434, 43.941257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562561, 34.820541, 43.957561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443583, -0.334784, 0.831357,
		0.705970, -0.440933, -0.554243,
		0.552125, 0.832765, 0.040757,
		35.728199, 35.070370, 43.969788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046658, 34.316727, 43.900440>,  <35.341713, 34.487434, 43.941257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046658, 34.316727, 43.900440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034512, 34.688446, 44.047676>,  <36.027225, 34.911476, 44.136017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034512, 34.688446, 44.047676>,  <36.046658, 34.316727, 43.900440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034512, 34.688446, 44.047676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375636, -0.330654, 0.865775,
		0.926270, 0.164557, -0.339035,
		-0.030366, 0.929295, 0.368088,
		36.025402, 34.967236, 44.158104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644173, 34.251968, 44.353001>,  <36.046658, 34.316727, 43.900440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644173, 34.251968, 44.353001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442333, 34.572201, 44.482273>,  <36.321232, 34.764339, 44.559837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442333, 34.572201, 44.482273>,  <36.644173, 34.251968, 44.353001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442333, 34.572201, 44.482273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095934, -0.320023, 0.942540,
		0.858010, 0.506605, 0.084678,
		-0.504595, 0.800585, 0.323184,
		36.290955, 34.812378, 44.579227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137028, 34.645203, 44.839794>,  <36.644173, 34.251968, 44.353001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137028, 34.645203, 44.839794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769161, 34.776371, 44.926224>,  <36.548443, 34.855072, 44.978081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769161, 34.776371, 44.926224>,  <37.137028, 34.645203, 44.839794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769161, 34.776371, 44.926224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191779, -0.105135, 0.975791,
		0.342695, 0.938838, 0.033801,
		-0.919663, 0.327917, 0.216078,
		36.493263, 34.874744, 44.991047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272491, 35.136028, 45.298561>,  <37.137028, 34.645203, 44.839794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272491, 35.136028, 45.298561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896992, 35.016296, 45.366856>,  <36.671692, 34.944458, 45.407833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896992, 35.016296, 45.366856>,  <37.272491, 35.136028, 45.298561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896992, 35.016296, 45.366856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208024, -0.097233, 0.973279,
		-0.274733, 0.949181, 0.153546,
		-0.938748, -0.299333, 0.170739,
		36.615368, 34.926495, 45.418076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966389, 35.549534, 45.853954>,  <37.272491, 35.136028, 45.298561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966389, 35.549534, 45.853954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708527, 35.243908, 45.843937>,  <36.553810, 35.060532, 45.837925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708527, 35.243908, 45.843937>,  <36.966389, 35.549534, 45.853954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708527, 35.243908, 45.843937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038141, -0.064869, 0.997165,
		-0.763525, 0.641869, 0.070960,
		-0.644652, -0.764066, -0.025048,
		36.515133, 35.014687, 45.836422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423634, 35.686054, 46.353722>,  <36.966389, 35.549534, 45.853954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423634, 35.686054, 46.353722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471497, 35.295822, 46.280052>,  <36.500214, 35.061684, 46.235851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471497, 35.295822, 46.280052>,  <36.423634, 35.686054, 46.353722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471497, 35.295822, 46.280052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313554, -0.138875, 0.939361,
		-0.942002, -0.170146, 0.289281,
		0.119654, -0.975584, -0.184170,
		36.507393, 35.003147, 46.224800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108459, 35.311630, 46.972271>,  <36.423634, 35.686054, 46.353722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108459, 35.311630, 46.972271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350311, 35.054871, 46.783638>,  <36.495422, 34.900814, 46.670456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350311, 35.054871, 46.783638>,  <36.108459, 35.311630, 46.972271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350311, 35.054871, 46.783638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266490, -0.394922, 0.879216,
		-0.750605, -0.657272, -0.067722,
		0.604629, -0.641896, -0.471587,
		36.531700, 34.862301, 46.642162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104855, 34.746109, 47.524178>,  <36.108459, 35.311630, 46.972271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104855, 34.746109, 47.524178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415447, 34.695396, 47.277279>,  <36.601803, 34.664967, 47.129139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415447, 34.695396, 47.277279>,  <36.104855, 34.746109, 47.524178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415447, 34.695396, 47.277279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501209, -0.469426, 0.726931,
		-0.381915, -0.873822, -0.300958,
		0.776486, -0.126783, -0.617249,
		36.648392, 34.657360, 47.092106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318108, 34.245171, 47.867596>,  <36.104855, 34.746109, 47.524178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318108, 34.245171, 47.867596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627327, 34.333672, 47.629791>,  <36.812859, 34.386772, 47.487106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627327, 34.333672, 47.629791>,  <36.318108, 34.245171, 47.867596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627327, 34.333672, 47.629791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632086, -0.347798, 0.692463,
		-0.053560, -0.911089, -0.408715,
		0.773045, 0.221255, -0.594514,
		36.859241, 34.400047, 47.451435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680832, 33.535473, 47.763496>,  <36.318108, 34.245171, 47.867596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680832, 33.535473, 47.763496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943676, 33.827316, 47.687729>,  <37.101383, 34.002422, 47.642269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943676, 33.827316, 47.687729>,  <36.680832, 33.535473, 47.763496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943676, 33.827316, 47.687729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664415, -0.441926, 0.602705,
		0.356031, -0.521895, -0.775156,
		0.657110, 0.729607, -0.189416,
		37.140808, 34.046200, 47.630905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240635, 33.236740, 47.546177>,  <36.680832, 33.535473, 47.763496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240635, 33.236740, 47.546177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343079, 33.581818, 47.720604>,  <37.404545, 33.788864, 47.825260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343079, 33.581818, 47.720604>,  <37.240635, 33.236740, 47.546177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343079, 33.581818, 47.720604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700725, -0.476446, 0.531022,
		0.665876, 0.169564, -0.726538,
		0.256114, 0.862698, 0.436072,
		37.419914, 33.840626, 47.851425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012726, 33.334007, 47.471207>,  <37.240635, 33.236740, 47.546177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012726, 33.334007, 47.471207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894306, 33.574413, 47.768162>,  <37.823254, 33.718658, 47.946335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894306, 33.574413, 47.768162>,  <38.012726, 33.334007, 47.471207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894306, 33.574413, 47.768162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718187, -0.372353, 0.587844,
		0.629732, 0.707203, -0.321405,
		-0.296049, 0.601014, 0.742387,
		37.805492, 33.754719, 47.990879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716774, 33.658752, 47.848923>,  <38.012726, 33.334007, 47.471207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716774, 33.658752, 47.848923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410431, 33.690922, 48.104107>,  <38.226624, 33.710224, 48.257217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410431, 33.690922, 48.104107>,  <38.716774, 33.658752, 47.848923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410431, 33.690922, 48.104107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555585, -0.416693, 0.719508,
		0.323700, 0.905482, 0.274445,
		-0.765861, 0.080428, 0.637956,
		38.180672, 33.715050, 48.295494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122940, 33.772266, 48.527336>,  <38.716774, 33.658752, 47.848923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122940, 33.772266, 48.527336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740677, 33.718380, 48.632072>,  <38.511318, 33.686047, 48.694916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740677, 33.718380, 48.632072>,  <39.122940, 33.772266, 48.527336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740677, 33.718380, 48.632072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294141, -0.395129, 0.870261,
		-0.013779, 0.908694, 0.417236,
		-0.955663, -0.134717, 0.261840,
		38.453979, 33.677963, 48.710625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054562, 34.094280, 49.221336>,  <39.122940, 33.772266, 48.527336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054562, 34.094280, 49.221336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736626, 33.852921, 49.195610>,  <38.545864, 33.708103, 49.180176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736626, 33.852921, 49.195610>,  <39.054562, 34.094280, 49.221336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736626, 33.852921, 49.195610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198269, -0.358411, 0.912267,
		-0.573513, 0.712356, 0.404515,
		-0.794841, -0.603400, -0.064315,
		38.498173, 33.671902, 49.176315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765049, 34.074062, 49.910309>,  <39.054562, 34.094280, 49.221336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765049, 34.074062, 49.910309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617805, 33.752426, 49.723572>,  <38.529461, 33.559444, 49.611530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617805, 33.752426, 49.723572>,  <38.765049, 34.074062, 49.910309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617805, 33.752426, 49.723572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326429, -0.581902, 0.744872,
		-0.870599, 0.121801, 0.476678,
		-0.368106, -0.804087, -0.466844,
		38.507374, 33.511200, 49.583519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573383, 33.695992, 50.423515>,  <38.765049, 34.074062, 49.910309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573383, 33.695992, 50.423515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591057, 33.434662, 50.121201>,  <38.601662, 33.277863, 49.939812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591057, 33.434662, 50.121201>,  <38.573383, 33.695992, 50.423515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591057, 33.434662, 50.121201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526196, -0.627859, 0.573507,
		-0.849215, -0.423031, 0.316037,
		0.044184, -0.653328, -0.755784,
		38.604313, 33.238663, 49.894466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219162, 33.065529, 50.586929>,  <38.573383, 33.695992, 50.423515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219162, 33.065529, 50.586929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514999, 33.027321, 50.320431>,  <38.692501, 33.004395, 50.160530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514999, 33.027321, 50.320431>,  <38.219162, 33.065529, 50.586929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514999, 33.027321, 50.320431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434699, -0.687938, 0.581187,
		-0.513853, -0.719456, -0.467267,
		0.739589, -0.095524, -0.666246,
		38.736877, 32.998665, 50.120556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223206, 32.401287, 50.563335>,  <38.219162, 33.065529, 50.586929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223206, 32.401287, 50.563335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579552, 32.547928, 50.456032>,  <38.793362, 32.635910, 50.391651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579552, 32.547928, 50.456032>,  <38.223206, 32.401287, 50.563335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579552, 32.547928, 50.456032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451416, -0.780456, 0.432564,
		-0.050786, -0.506453, -0.860771,
		0.890867, 0.366598, -0.268257,
		38.846813, 32.657906, 50.375553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786621, 31.990326, 50.231777>,  <38.223206, 32.401287, 50.563335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786621, 31.990326, 50.231777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971210, 32.244152, 50.479767>,  <39.081963, 32.396446, 50.628563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971210, 32.244152, 50.479767>,  <38.786621, 31.990326, 50.231777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971210, 32.244152, 50.479767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329902, -0.771467, 0.544061,
		0.823534, -0.046537, -0.565355,
		0.461472, 0.634565, 0.619977,
		39.109653, 32.434521, 50.665760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203800, 31.554234, 50.433716>,  <38.786621, 31.990326, 50.231777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203800, 31.554234, 50.433716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278015, 31.853359, 50.688698>,  <39.322544, 32.032833, 50.841686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278015, 31.853359, 50.688698>,  <39.203800, 31.554234, 50.433716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278015, 31.853359, 50.688698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321076, -0.659249, 0.679927,
		0.928701, 0.078521, -0.362420,
		0.185537, 0.747814, 0.637456,
		39.333675, 32.077702, 50.879936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996586, 31.560688, 50.839565>,  <39.203800, 31.554234, 50.433716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996586, 31.560688, 50.839565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660648, 31.661667, 51.031784>,  <39.459084, 31.722254, 51.147114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660648, 31.661667, 51.031784>,  <39.996586, 31.560688, 50.839565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660648, 31.661667, 51.031784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316480, -0.491524, 0.811323,
		0.441018, 0.833471, 0.332910,
		-0.839848, 0.252449, 0.480548,
		39.408695, 31.737402, 51.175949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181969, 32.148270, 50.482349>,  <39.996586, 31.560688, 50.839565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181969, 32.148270, 50.482349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388153, 31.982347, 50.182419>,  <40.511864, 31.882795, 50.002460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388153, 31.982347, 50.182419>,  <40.181969, 32.148270, 50.482349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388153, 31.982347, 50.182419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535043, -0.839297, 0.096489,
		-0.669352, 0.351454, -0.654560,
		0.515458, -0.414803, -0.749828,
		40.542789, 31.857906, 49.957470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798672, 31.736538, 49.985847>,  <40.181969, 32.148270, 50.482349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798672, 31.736538, 49.985847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155125, 31.557922, 49.953613>,  <40.368996, 31.450752, 49.934273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155125, 31.557922, 49.953613>,  <39.798672, 31.736538, 49.985847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155125, 31.557922, 49.953613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447054, -0.894419, 0.012537,
		-0.077679, 0.024855, -0.996669,
		0.891128, -0.446538, -0.080589,
		40.422462, 31.423962, 49.929436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600643, 31.110126, 49.576344>,  <39.798672, 31.736538, 49.985847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600643, 31.110126, 49.576344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915684, 31.064985, 49.818645>,  <40.104710, 31.037901, 49.964027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915684, 31.064985, 49.818645>,  <39.600643, 31.110126, 49.576344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915684, 31.064985, 49.818645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347645, -0.893061, 0.285632,
		0.508744, -0.435554, -0.742612,
		0.787606, -0.112851, 0.605757,
		40.151966, 31.031130, 50.000374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781227, 30.706154, 50.213295>,  <39.600643, 31.110126, 49.576344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781227, 30.706154, 50.213295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384686, 30.699379, 50.161259>,  <39.146759, 30.695314, 50.130035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384686, 30.699379, 50.161259>,  <39.781227, 30.706154, 50.213295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384686, 30.699379, 50.161259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129630, -0.278945, -0.951518,
		-0.020169, -0.960158, 0.278730,
		-0.991357, -0.016940, -0.130091,
		39.087276, 30.694298, 50.122231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548073, 30.036819, 49.849659>,  <39.781227, 30.706154, 50.213295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548073, 30.036819, 49.849659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302734, 30.345377, 49.781826>,  <39.155529, 30.530512, 49.741127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302734, 30.345377, 49.781826>,  <39.548073, 30.036819, 49.849659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302734, 30.345377, 49.781826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081474, -0.151774, -0.985052,
		-0.785599, -0.617996, 0.030242,
		-0.613348, 0.771392, -0.169584,
		39.118729, 30.576794, 49.730949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067009, 29.814167, 49.373684>,  <39.548073, 30.036819, 49.849659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067009, 29.814167, 49.373684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074608, 30.213566, 49.353104>,  <39.079166, 30.453205, 49.340755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074608, 30.213566, 49.353104>,  <39.067009, 29.814167, 49.373684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074608, 30.213566, 49.353104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109777, -0.053230, -0.992530,
		-0.993775, 0.013205, -0.110623,
		0.018994, 0.998495, -0.051449,
		39.080307, 30.513115, 49.337669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606548, 29.949072, 48.838791>,  <39.067009, 29.814167, 49.373684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606548, 29.949072, 48.838791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875267, 30.242970, 48.876408>,  <39.036499, 30.419308, 48.898979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875267, 30.242970, 48.876408>,  <38.606548, 29.949072, 48.838791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875267, 30.242970, 48.876408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149438, -0.010079, -0.988720,
		-0.725508, 0.678270, -0.116570,
		0.671794, 0.734744, 0.094046,
		39.076805, 30.463392, 48.904621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319542, 30.350979, 48.370495>,  <38.606548, 29.949072, 48.838791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319542, 30.350979, 48.370495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695816, 30.468645, 48.438114>,  <38.921581, 30.539246, 48.478687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695816, 30.468645, 48.438114>,  <38.319542, 30.350979, 48.370495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695816, 30.468645, 48.438114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113956, 0.195375, -0.974086,
		-0.319572, 0.935572, 0.150264,
		0.940685, 0.294167, 0.169050,
		38.978020, 30.556894, 48.488831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396732, 31.066219, 48.109821>,  <38.319542, 30.350979, 48.370495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396732, 31.066219, 48.109821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754570, 30.887510, 48.113682>,  <38.969273, 30.780285, 48.115997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754570, 30.887510, 48.113682>,  <38.396732, 31.066219, 48.109821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754570, 30.887510, 48.113682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080841, 0.140552, -0.986767,
		0.439504, 0.883538, 0.161854,
		0.894596, -0.446772, 0.009653,
		39.022949, 30.753479, 48.116577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826019, 31.460863, 47.617168>,  <38.396732, 31.066219, 48.109821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826019, 31.460863, 47.617168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053192, 31.132624, 47.642670>,  <39.189495, 30.935680, 47.657970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053192, 31.132624, 47.642670>,  <38.826019, 31.460863, 47.617168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053192, 31.132624, 47.642670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215011, 0.073153, -0.973868,
		0.794493, 0.566801, 0.217985,
		0.567935, -0.820601, 0.063749,
		39.223572, 30.886444, 47.661793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247746, 31.566700, 47.075954>,  <38.826019, 31.460863, 47.617168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247746, 31.566700, 47.075954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331070, 31.182186, 47.148109>,  <39.381065, 30.951479, 47.191402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331070, 31.182186, 47.148109>,  <39.247746, 31.566700, 47.075954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331070, 31.182186, 47.148109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362883, -0.095309, -0.926947,
		0.908252, 0.258555, 0.328980,
		0.208312, -0.961283, 0.180390,
		39.393562, 30.893801, 47.202225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994934, 31.517828, 47.066982>,  <39.247746, 31.566700, 47.075954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994934, 31.517828, 47.066982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794155, 31.189545, 46.957817>,  <39.673687, 30.992575, 46.892319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794155, 31.189545, 46.957817>,  <39.994934, 31.517828, 47.066982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794155, 31.189545, 46.957817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368669, 0.082413, -0.925900,
		0.782386, -0.565372, 0.261203,
		-0.501952, -0.820708, -0.272914,
		39.643570, 30.943333, 46.875942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336578, 31.189466, 46.498730>,  <39.994934, 31.517828, 47.066982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336578, 31.189466, 46.498730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987793, 30.997139, 46.461853>,  <39.778522, 30.881742, 46.439728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987793, 30.997139, 46.461853>,  <40.336578, 31.189466, 46.498730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987793, 30.997139, 46.461853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120288, -0.027859, -0.992348,
		0.474569, -0.876378, 0.082129,
		-0.871960, -0.480817, -0.092196,
		39.726204, 30.852894, 46.434193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474842, 30.641232, 45.890087>,  <40.336578, 31.189466, 46.498730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474842, 30.641232, 45.890087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082481, 30.688715, 45.951721>,  <39.847065, 30.717205, 45.988701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082481, 30.688715, 45.951721>,  <40.474842, 30.641232, 45.890087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082481, 30.688715, 45.951721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145159, 0.080526, -0.986126,
		-0.129469, -0.989658, -0.061756,
		-0.980901, 0.118709, 0.154083,
		39.788212, 30.724327, 45.997948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315403, 30.262646, 45.307613>,  <40.474842, 30.641232, 45.890087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315403, 30.262646, 45.307613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999916, 30.477652, 45.426949>,  <39.810623, 30.606655, 45.498550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999916, 30.477652, 45.426949>,  <40.315403, 30.262646, 45.307613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999916, 30.477652, 45.426949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208642, 0.222439, -0.952360,
		-0.578268, -0.813388, -0.063293,
		-0.788717, 0.537514, 0.298336,
		39.763302, 30.638906, 45.516449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874405, 29.974709, 44.984497>,  <40.315403, 30.262646, 45.307613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874405, 29.974709, 44.984497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742950, 30.341934, 45.073181>,  <39.664078, 30.562269, 45.126392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742950, 30.341934, 45.073181>,  <39.874405, 29.974709, 44.984497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742950, 30.341934, 45.073181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023872, 0.226596, -0.973696,
		-0.944155, -0.325284, -0.052552,
		-0.328636, 0.918066, 0.221707,
		39.644360, 30.617353, 45.139694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390213, 30.039738, 44.529457>,  <39.874405, 29.974709, 44.984497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390213, 30.039738, 44.529457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497993, 30.407560, 44.643867>,  <39.562664, 30.628254, 44.712513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497993, 30.407560, 44.643867>,  <39.390213, 30.039738, 44.529457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497993, 30.407560, 44.643867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172701, 0.338340, -0.925041,
		-0.947401, 0.199859, 0.249975,
		0.269454, 0.919556, 0.286028,
		39.578831, 30.683428, 44.729675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819435, 30.425524, 44.414871>,  <39.390213, 30.039738, 44.529457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819435, 30.425524, 44.414871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137287, 30.668312, 44.409985>,  <39.327999, 30.813986, 44.407055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137287, 30.668312, 44.409985>,  <38.819435, 30.425524, 44.414871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137287, 30.668312, 44.409985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299279, 0.374144, -0.877752,
		-0.528201, 0.701143, 0.478960,
		0.794629, 0.606972, -0.012214,
		39.375675, 30.850403, 44.406319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514088, 31.003838, 44.109447>,  <38.819435, 30.425524, 44.414871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514088, 31.003838, 44.109447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909683, 31.063032, 44.108295>,  <39.147041, 31.098549, 44.107605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909683, 31.063032, 44.108295>,  <38.514088, 31.003838, 44.109447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909683, 31.063032, 44.108295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073030, 0.470954, -0.879130,
		-0.128743, 0.869657, 0.476574,
		0.988985, 0.147986, -0.002879,
		39.206379, 31.107428, 44.107433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636047, 31.726456, 44.077557>,  <38.514088, 31.003838, 44.109447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636047, 31.726456, 44.077557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943008, 31.527130, 43.916176>,  <39.127186, 31.407536, 43.819347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943008, 31.527130, 43.916176>,  <38.636047, 31.726456, 44.077557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943008, 31.527130, 43.916176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042543, 0.588288, -0.807532,
		0.639750, 0.636868, 0.430255,
		0.767405, -0.498314, -0.403451,
		39.173229, 31.377636, 43.795139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024422, 32.220921, 43.811512>,  <38.636047, 31.726456, 44.077557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024422, 32.220921, 43.811512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153545, 31.897295, 43.615063>,  <39.231018, 31.703119, 43.497192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153545, 31.897295, 43.615063>,  <39.024422, 32.220921, 43.811512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153545, 31.897295, 43.615063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181904, 0.456197, -0.871089,
		0.928819, 0.370533, 0.000092,
		0.322809, -0.809067, -0.491126,
		39.250389, 31.654575, 43.467724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357311, 32.465126, 43.208591>,  <39.024422, 32.220921, 43.811512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357311, 32.465126, 43.208591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306988, 32.083038, 43.101456>,  <39.276794, 31.853786, 43.037174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306988, 32.083038, 43.101456>,  <39.357311, 32.465126, 43.208591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306988, 32.083038, 43.101456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404706, 0.295913, -0.865245,
		0.905751, -0.000458, -0.423809,
		-0.125807, -0.955215, -0.267838,
		39.269245, 31.796474, 43.021103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567806, 32.417210, 42.455025>,  <39.357311, 32.465126, 43.208591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567806, 32.417210, 42.455025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330059, 32.103317, 42.525360>,  <39.187408, 31.914982, 42.567562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330059, 32.103317, 42.525360>,  <39.567806, 32.417210, 42.455025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330059, 32.103317, 42.525360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467534, 0.159281, -0.869507,
		0.654319, -0.599023, -0.461560,
		-0.594373, -0.784730, 0.175843,
		39.151749, 31.867899, 42.578114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586849, 32.076710, 41.751163>,  <39.567806, 32.417210, 42.455025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586849, 32.076710, 41.751163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276558, 31.890705, 41.921814>,  <39.090382, 31.779102, 42.024204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276558, 31.890705, 41.921814>,  <39.586849, 32.076710, 41.751163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276558, 31.890705, 41.921814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494371, 0.027614, -0.868812,
		0.392225, -0.884875, -0.251308,
		-0.775730, -0.465009, 0.426626,
		39.043839, 31.751204, 42.049801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510403, 31.394306, 41.384544>,  <39.586849, 32.076710, 41.751163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510403, 31.394306, 41.384544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183422, 31.506851, 41.585587>,  <38.987236, 31.574379, 41.706211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183422, 31.506851, 41.585587>,  <39.510403, 31.394306, 41.384544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183422, 31.506851, 41.585587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555289, -0.153069, -0.817450,
		-0.153069, -0.947314, 0.281365,
		0.817450, -0.281365, -0.502603,
		38.938187, 31.591261, 41.736366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945698, 31.023661, 41.097210>,  <39.510403, 31.394306, 41.384544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945698, 31.023661, 41.097210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742546, 31.321623, 41.270264>,  <38.620655, 31.500401, 41.374096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742546, 31.321623, 41.270264>,  <38.945698, 31.023661, 41.097210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742546, 31.321623, 41.270264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652468, -0.004723, -0.757801,
		-0.562448, -0.667152, 0.488427,
		-0.507875, 0.744907, 0.432639,
		38.590183, 31.545095, 41.400055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291275, 30.802481, 41.001110>,  <38.945698, 31.023661, 41.097210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291275, 30.802481, 41.001110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268608, 31.198765, 41.050560>,  <38.255009, 31.436535, 41.080231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268608, 31.198765, 41.050560>,  <38.291275, 30.802481, 41.001110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268608, 31.198765, 41.050560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759618, 0.037572, -0.649284,
		-0.647897, -0.130696, 0.750432,
		-0.056664, 0.990710, 0.123622,
		38.251610, 31.495977, 41.087646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542648, 30.959583, 41.119164>,  <38.291275, 30.802481, 41.001110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542648, 30.959583, 41.119164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707344, 31.305683, 41.004749>,  <37.806160, 31.513342, 40.936100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707344, 31.305683, 41.004749>,  <37.542648, 30.959583, 41.119164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707344, 31.305683, 41.004749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715716, 0.112733, -0.689233,
		-0.564111, 0.488506, 0.665688,
		0.411740, 0.865247, -0.286038,
		37.830868, 31.565258, 40.918938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926552, 31.382217, 41.024754>,  <37.542648, 30.959583, 41.119164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926552, 31.382217, 41.024754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219982, 31.580973, 40.839298>,  <37.396042, 31.700226, 40.728024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219982, 31.580973, 40.839298>,  <36.926552, 31.382217, 41.024754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219982, 31.580973, 40.839298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584386, 0.112943, -0.803578,
		-0.346924, 0.860433, 0.373227,
		0.733578, 0.496889, -0.463642,
		37.440056, 31.730040, 40.700207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631638, 32.034332, 40.868465>,  <36.926552, 31.382217, 41.024754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631638, 32.034332, 40.868465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941658, 31.959644, 40.626995>,  <37.127670, 31.914831, 40.482113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941658, 31.959644, 40.626995>,  <36.631638, 32.034332, 40.868465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941658, 31.959644, 40.626995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599632, 0.084033, -0.795852,
		0.199332, 0.978812, -0.046835,
		0.775054, -0.186722, -0.603677,
		37.174175, 31.903627, 40.445892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452248, 32.386715, 40.277954>,  <36.631638, 32.034332, 40.868465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452248, 32.386715, 40.277954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733803, 32.139019, 40.138767>,  <36.902737, 31.990400, 40.055256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733803, 32.139019, 40.138767>,  <36.452248, 32.386715, 40.277954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733803, 32.139019, 40.138767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503082, -0.088784, -0.859666,
		0.501448, 0.780164, -0.374023,
		0.703888, -0.619242, -0.347966,
		36.944969, 31.953247, 40.034378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705948, 32.731884, 39.683609>,  <36.452248, 32.386715, 40.277954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705948, 32.731884, 39.683609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780396, 32.342945, 39.627178>,  <36.825066, 32.109581, 39.593319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780396, 32.342945, 39.627178>,  <36.705948, 32.731884, 39.683609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780396, 32.342945, 39.627178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348537, 0.068907, -0.934759,
		0.918630, 0.223149, -0.326074,
		0.186121, -0.972346, -0.141075,
		36.836231, 32.051243, 39.584854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076557, 32.643997, 39.065453>,  <36.705948, 32.731884, 39.683609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076557, 32.643997, 39.065453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905670, 32.289291, 39.136021>,  <36.803139, 32.076466, 39.178360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905670, 32.289291, 39.136021>,  <37.076557, 32.643997, 39.065453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905670, 32.289291, 39.136021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329006, -0.029276, -0.943874,
		0.842162, -0.461287, -0.279244,
		-0.427222, -0.886768, 0.176422,
		36.777504, 32.023262, 39.188946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176754, 32.381294, 38.476360>,  <37.076557, 32.643997, 39.065453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176754, 32.381294, 38.476360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913898, 32.117104, 38.621655>,  <36.756184, 31.958590, 38.708832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913898, 32.117104, 38.621655>,  <37.176754, 32.381294, 38.476360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913898, 32.117104, 38.621655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405990, -0.095889, -0.908833,
		0.635090, -0.744702, -0.205133,
		-0.657140, -0.660473, 0.363239,
		36.716755, 31.918962, 38.730625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199268, 31.770510, 38.029713>,  <37.176754, 32.381294, 38.476360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199268, 31.770510, 38.029713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849876, 31.785076, 38.223911>,  <36.640240, 31.793816, 38.340431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849876, 31.785076, 38.223911>,  <37.199268, 31.770510, 38.029713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849876, 31.785076, 38.223911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481072, -0.217907, -0.849168,
		0.074870, -0.975290, 0.207856,
		-0.873478, 0.036417, 0.485499,
		36.587833, 31.796001, 38.369560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822636, 31.319635, 37.654736>,  <37.199268, 31.770510, 38.029713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822636, 31.319635, 37.654736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555336, 31.553329, 37.838959>,  <36.394955, 31.693546, 37.949493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555336, 31.553329, 37.838959>,  <36.822636, 31.319635, 37.654736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555336, 31.553329, 37.838959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580924, -0.023066, -0.813631,
		-0.464728, -0.811257, 0.354810,
		-0.668248, 0.584235, 0.460559,
		36.354862, 31.728600, 37.977127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134735, 31.046106, 37.498550>,  <36.822636, 31.319635, 37.654736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134735, 31.046106, 37.498550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074326, 31.421957, 37.621380>,  <36.038078, 31.647467, 37.695080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074326, 31.421957, 37.621380>,  <36.134735, 31.046106, 37.498550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074326, 31.421957, 37.621380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540236, 0.181694, -0.821665,
		-0.827851, -0.289987, 0.480178,
		-0.151026, 0.939625, 0.307076,
		36.029018, 31.703844, 37.713501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407936, 31.182165, 37.483379>,  <36.134735, 31.046106, 37.498550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407936, 31.182165, 37.483379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577621, 31.544003, 37.466618>,  <35.679432, 31.761105, 37.456562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577621, 31.544003, 37.466618>,  <35.407936, 31.182165, 37.483379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577621, 31.544003, 37.466618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615095, 0.253874, -0.746463,
		-0.664608, 0.342429, 0.664107,
		0.424210, 0.904594, -0.041900,
		35.704884, 31.815380, 37.454048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790089, 31.649603, 37.381508>,  <35.407936, 31.182165, 37.483379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790089, 31.649603, 37.381508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106758, 31.869614, 37.275131>,  <35.296761, 32.001621, 37.211304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106758, 31.869614, 37.275131>,  <34.790089, 31.649603, 37.381508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106758, 31.869614, 37.275131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517865, 0.373186, -0.769772,
		-0.324148, 0.747130, 0.580280,
		0.791672, 0.550027, -0.265944,
		35.344261, 32.034622, 37.195347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431065, 32.196571, 37.216228>,  <34.790089, 31.649603, 37.381508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431065, 32.196571, 37.216228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792763, 32.256657, 37.056343>,  <35.009781, 32.292709, 36.960411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792763, 32.256657, 37.056343>,  <34.431065, 32.196571, 37.216228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792763, 32.256657, 37.056343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420183, 0.479735, -0.770260,
		0.076053, 0.864459, 0.496916,
		0.904247, 0.150215, -0.399717,
		35.064037, 32.301720, 36.936428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390419, 32.813835, 36.934574>,  <34.431065, 32.196571, 37.216228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390419, 32.813835, 36.934574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702286, 32.664852, 36.733219>,  <34.889404, 32.575462, 36.612408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702286, 32.664852, 36.733219>,  <34.390419, 32.813835, 36.934574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702286, 32.664852, 36.733219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251272, 0.550240, -0.796303,
		0.573573, 0.747337, 0.335415,
		0.779665, -0.372457, -0.503387,
		34.936184, 32.553116, 36.582203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899952, 33.359169, 36.775585>,  <34.390419, 32.813835, 36.934574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899952, 33.359169, 36.775585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981995, 33.081463, 36.499638>,  <35.031219, 32.914837, 36.334068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981995, 33.081463, 36.499638>,  <34.899952, 33.359169, 36.775585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981995, 33.081463, 36.499638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199630, 0.660365, -0.723924,
		0.958165, 0.286201, -0.003152,
		0.205106, -0.694268, -0.689872,
		35.043526, 32.873184, 36.292675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164314, 33.759697, 36.276043>,  <34.899952, 33.359169, 36.775585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164314, 33.759697, 36.276043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112450, 33.417454, 36.075596>,  <35.081329, 33.212109, 35.955326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112450, 33.417454, 36.075596>,  <35.164314, 33.759697, 36.276043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112450, 33.417454, 36.075596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227862, 0.517574, -0.824740,
		0.965022, 0.007250, -0.262070,
		-0.129662, -0.855608, -0.501122,
		35.073551, 33.160770, 35.925259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523373, 33.738743, 35.534672>,  <35.164314, 33.759697, 36.276043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523373, 33.738743, 35.534672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209099, 33.491322, 35.530952>,  <35.020535, 33.342869, 35.528721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209099, 33.491322, 35.530952>,  <35.523373, 33.738743, 35.534672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209099, 33.491322, 35.530952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347437, 0.453645, -0.820666,
		0.511846, -0.641555, -0.571332,
		-0.785685, -0.618557, -0.009296,
		34.973392, 33.305756, 35.528164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171818, 33.770332, 35.317013>,  <35.523373, 33.738743, 35.534672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171818, 33.770332, 35.317013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448383, 33.560558, 35.118252>,  <36.614323, 33.434692, 34.998997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448383, 33.560558, 35.118252>,  <36.171818, 33.770332, 35.317013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448383, 33.560558, 35.118252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481992, -0.177502, 0.858008,
		-0.538170, -0.832743, 0.130045,
		0.691417, -0.524435, -0.496901,
		36.655807, 33.403229, 34.969181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303028, 33.181786, 35.791576>,  <36.171818, 33.770332, 35.317013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303028, 33.181786, 35.791576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607365, 33.303074, 35.562084>,  <36.789967, 33.375847, 35.424389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607365, 33.303074, 35.562084>,  <36.303028, 33.181786, 35.791576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607365, 33.303074, 35.562084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637563, -0.184512, 0.747977,
		0.120945, -0.934885, -0.333710,
		0.760846, 0.303226, -0.573732,
		36.835617, 33.394043, 35.389965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847874, 32.696457, 35.668018>,  <36.303028, 33.181786, 35.791576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847874, 32.696457, 35.668018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029217, 33.050983, 35.630241>,  <37.138023, 33.263699, 35.607574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029217, 33.050983, 35.630241>,  <36.847874, 32.696457, 35.668018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029217, 33.050983, 35.630241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678417, -0.274397, 0.681510,
		0.578118, -0.373035, -0.725689,
		0.453355, 0.886313, -0.094439,
		37.165222, 33.316875, 35.601910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611141, 32.663223, 35.603298>,  <36.847874, 32.696457, 35.668018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611141, 32.663223, 35.603298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552280, 33.035992, 35.735886>,  <37.516964, 33.259651, 35.815437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552280, 33.035992, 35.735886>,  <37.611141, 32.663223, 35.603298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552280, 33.035992, 35.735886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654333, -0.159591, 0.739175,
		0.741751, 0.325663, -0.586301,
		-0.147154, 0.931920, 0.331469,
		37.508133, 33.315567, 35.835327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245632, 32.964619, 35.666073>,  <37.611141, 32.663223, 35.603298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245632, 32.964619, 35.666073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035568, 33.194260, 35.917347>,  <37.909531, 33.332043, 36.068111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035568, 33.194260, 35.917347>,  <38.245632, 32.964619, 35.666073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035568, 33.194260, 35.917347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750759, -0.035039, 0.659646,
		0.400714, 0.818035, -0.412609,
		-0.525156, 0.574100, 0.628188,
		37.878021, 33.366489, 36.105804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680279, 33.442375, 36.017189>,  <38.245632, 32.964619, 35.666073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680279, 33.442375, 36.017189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372120, 33.477852, 36.269733>,  <38.187225, 33.499138, 36.421261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372120, 33.477852, 36.269733>,  <38.680279, 33.442375, 36.017189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372120, 33.477852, 36.269733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637161, 0.142167, 0.757505,
		-0.022574, 0.985861, -0.166037,
		-0.770400, 0.088692, 0.631361,
		38.140999, 33.504459, 36.459141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830757, 34.127586, 36.304363>,  <38.680279, 33.442375, 36.017189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830757, 34.127586, 36.304363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587273, 33.900337, 36.525890>,  <38.441181, 33.763988, 36.658806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587273, 33.900337, 36.525890>,  <38.830757, 34.127586, 36.304363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587273, 33.900337, 36.525890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660760, 0.023383, 0.750233,
		-0.439172, 0.822613, 0.361158,
		-0.608707, -0.568120, 0.553819,
		38.404659, 33.729900, 36.692036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868191, 34.438107, 36.937874>,  <38.830757, 34.127586, 36.304363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868191, 34.438107, 36.937874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744358, 34.069397, 37.031254>,  <38.670059, 33.848171, 37.087280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744358, 34.069397, 37.031254>,  <38.868191, 34.438107, 36.937874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744358, 34.069397, 37.031254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606805, -0.002495, 0.794847,
		-0.732085, 0.387725, 0.560108,
		-0.309579, -0.921772, 0.233447,
		38.651485, 33.792866, 37.101288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841579, 34.393723, 37.652405>,  <38.868191, 34.438107, 36.937874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841579, 34.393723, 37.652405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852169, 34.006554, 37.552460>,  <38.858524, 33.774254, 37.492493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852169, 34.006554, 37.552460>,  <38.841579, 34.393723, 37.652405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852169, 34.006554, 37.552460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694322, -0.162016, 0.701190,
		-0.719177, -0.192051, 0.667758,
		0.026476, -0.967919, -0.249863,
		38.860111, 33.716179, 37.477501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896500, 34.101604, 38.241138>,  <38.841579, 34.393723, 37.652405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896500, 34.101604, 38.241138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020592, 33.826462, 37.978653>,  <39.095047, 33.661377, 37.821163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020592, 33.826462, 37.978653>,  <38.896500, 34.101604, 38.241138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020592, 33.826462, 37.978653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610246, -0.385193, 0.692261,
		-0.728944, -0.615209, 0.300263,
		0.310226, -0.687855, -0.656214,
		39.113659, 33.620106, 37.781788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778488, 33.427422, 38.562958>,  <38.896500, 34.101604, 38.241138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778488, 33.427422, 38.562958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059093, 33.391777, 38.280132>,  <39.227455, 33.370388, 38.110439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059093, 33.391777, 38.280132>,  <38.778488, 33.427422, 38.562958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059093, 33.391777, 38.280132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617803, -0.418517, 0.665705,
		-0.355241, -0.903826, -0.238540,
		0.701515, -0.089115, -0.707062,
		39.269547, 33.365044, 38.068012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914074, 32.712509, 38.475613>,  <38.778488, 33.427422, 38.562958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914074, 32.712509, 38.475613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237144, 32.896393, 38.327923>,  <39.430984, 33.006721, 38.239307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237144, 32.896393, 38.327923>,  <38.914074, 32.712509, 38.475613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237144, 32.896393, 38.327923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555487, -0.383260, 0.737934,
		0.197726, -0.801111, -0.564912,
		0.807675, 0.459710, -0.369226,
		39.479446, 33.034306, 38.217155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445057, 32.195896, 38.648785>,  <38.914074, 32.712509, 38.475613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445057, 32.195896, 38.648785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636536, 32.540417, 38.580662>,  <39.751423, 32.747128, 38.539787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636536, 32.540417, 38.580662>,  <39.445057, 32.195896, 38.648785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636536, 32.540417, 38.580662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626992, -0.199573, 0.753028,
		0.614595, -0.467257, -0.635565,
		0.478700, 0.861302, -0.170310,
		39.780144, 32.798809, 38.529568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123844, 31.999678, 38.537178>,  <39.445057, 32.195896, 38.648785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123844, 31.999678, 38.537178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143402, 32.393349, 38.605301>,  <40.155136, 32.629551, 38.646175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143402, 32.393349, 38.605301>,  <40.123844, 31.999678, 38.537178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143402, 32.393349, 38.605301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666728, -0.159116, 0.728118,
		0.743696, 0.077949, -0.663958,
		0.048890, 0.984178, 0.170304,
		40.158070, 32.688602, 38.656391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837795, 32.081608, 38.636192>,  <40.123844, 31.999678, 38.537178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837795, 32.081608, 38.636192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664608, 32.388985, 38.824677>,  <40.560696, 32.573410, 38.937767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664608, 32.388985, 38.824677>,  <40.837795, 32.081608, 38.636192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664608, 32.388985, 38.824677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533068, -0.203269, 0.821292,
		0.726897, 0.606777, -0.321623,
		-0.432965, 0.768442, 0.471209,
		40.534718, 32.619518, 38.966038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406860, 32.311481, 38.989799>,  <40.837795, 32.081608, 38.636192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406860, 32.311481, 38.989799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.096401, 32.480198, 39.177280>,  <40.910126, 32.581429, 39.289768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.096401, 32.480198, 39.177280>,  <41.406860, 32.311481, 38.989799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096401, 32.480198, 39.177280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471243, -0.105874, 0.875626,
		0.418955, 0.900491, -0.116592,
		-0.776149, 0.421791, 0.468707,
		40.863556, 32.606735, 39.317894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595421, 32.879784, 39.406387>,  <41.406860, 32.311481, 38.989799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595421, 32.879784, 39.406387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249233, 32.774410, 39.576828>,  <41.041519, 32.711185, 39.679092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249233, 32.774410, 39.576828>,  <41.595421, 32.879784, 39.406387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249233, 32.774410, 39.576828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449281, -0.031913, 0.892820,
		-0.221599, 0.964150, 0.145974,
		-0.865471, -0.263432, 0.426103,
		40.989594, 32.695381, 39.704659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512291, 33.264534, 40.042595>,  <41.595421, 32.879784, 39.406387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512291, 33.264534, 40.042595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265503, 32.951820, 40.078735>,  <41.117432, 32.764191, 40.100418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265503, 32.951820, 40.078735>,  <41.512291, 33.264534, 40.042595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265503, 32.951820, 40.078735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362023, -0.180002, 0.914625,
		-0.698776, 0.597004, 0.394080,
		-0.616969, -0.781784, 0.090348,
		41.080414, 32.717285, 40.105839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246143, 33.277046, 40.698589>,  <41.512291, 33.264534, 40.042595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246143, 33.277046, 40.698589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150997, 32.895420, 40.625721>,  <41.093910, 32.666447, 40.582001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150997, 32.895420, 40.625721>,  <41.246143, 33.277046, 40.698589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150997, 32.895420, 40.625721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394905, -0.266349, 0.879266,
		-0.887395, 0.137207, 0.440119,
		-0.237866, -0.954061, -0.182173,
		41.079636, 32.609203, 40.571068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939140, 32.981163, 41.369545>,  <41.246143, 33.277046, 40.698589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939140, 32.981163, 41.369545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078957, 32.675983, 41.152020>,  <41.162846, 32.492874, 41.021503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078957, 32.675983, 41.152020>,  <40.939140, 32.981163, 41.369545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078957, 32.675983, 41.152020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250260, -0.483306, 0.838919,
		-0.902880, -0.429329, 0.022002,
		0.349538, -0.762950, -0.543811,
		41.183819, 32.447098, 40.988876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571960, 32.405025, 41.533634>,  <40.939140, 32.981163, 41.369545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571960, 32.405025, 41.533634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913940, 32.256947, 41.388298>,  <41.119129, 32.168098, 41.301098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913940, 32.256947, 41.388298>,  <40.571960, 32.405025, 41.533634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913940, 32.256947, 41.388298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162046, -0.474788, 0.865054,
		-0.492752, -0.798454, -0.345930,
		0.854948, -0.370200, -0.363339,
		41.170425, 32.145889, 41.279297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526173, 31.608513, 41.679073>,  <40.571960, 32.405025, 41.533634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526173, 31.608513, 41.679073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909229, 31.705980, 41.617691>,  <41.139065, 31.764462, 41.580864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909229, 31.705980, 41.617691>,  <40.526173, 31.608513, 41.679073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909229, 31.705980, 41.617691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249919, -0.438560, 0.863253,
		0.143051, -0.865037, -0.480881,
		0.957641, 0.243671, -0.153453,
		41.196522, 31.779081, 41.571655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832039, 31.106960, 42.127392>,  <40.526173, 31.608513, 41.679073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832039, 31.106960, 42.127392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130333, 31.363775, 42.056213>,  <41.309311, 31.517864, 42.013508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130333, 31.363775, 42.056213>,  <40.832039, 31.106960, 42.127392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130333, 31.363775, 42.056213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424871, -0.252561, 0.869308,
		0.513188, -0.723878, -0.461128,
		0.745737, 0.642038, -0.177944,
		41.354053, 31.556387, 42.002831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514095, 30.721949, 42.216526>,  <40.832039, 31.106960, 42.127392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514095, 30.721949, 42.216526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558636, 31.114962, 42.276161>,  <41.585361, 31.350769, 42.311943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558636, 31.114962, 42.276161>,  <41.514095, 30.721949, 42.216526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558636, 31.114962, 42.276161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421615, -0.182558, 0.888208,
		0.899912, -0.036048, -0.434580,
		0.111354, 0.982534, 0.149088,
		41.592041, 31.409721, 42.320889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237747, 30.806067, 42.421768>,  <41.514095, 30.721949, 42.216526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237747, 30.806067, 42.421768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030006, 31.127497, 42.538074>,  <41.905361, 31.320354, 42.607857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030006, 31.127497, 42.538074>,  <42.237747, 30.806067, 42.421768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030006, 31.127497, 42.538074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306523, -0.142438, 0.941146,
		0.797696, 0.577910, -0.172339,
		-0.519350, 0.803574, 0.290765,
		41.874203, 31.368568, 42.625305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658768, 31.016237, 42.899719>,  <42.237747, 30.806067, 42.421768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658768, 31.016237, 42.899719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308811, 31.198099, 42.966480>,  <42.098839, 31.307217, 43.006538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308811, 31.198099, 42.966480>,  <42.658768, 31.016237, 42.899719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308811, 31.198099, 42.966480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195381, 0.015990, 0.980597,
		0.443165, 0.890524, -0.102821,
		-0.874889, 0.454655, 0.166905,
		42.046345, 31.334496, 43.016552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791679, 31.445143, 43.354496>,  <42.658768, 31.016237, 42.899719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791679, 31.445143, 43.354496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.394817, 31.410099, 43.390179>,  <42.156700, 31.389072, 43.411587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.394817, 31.410099, 43.390179>,  <42.791679, 31.445143, 43.354496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394817, 31.410099, 43.390179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085636, 0.043720, 0.995367,
		-0.091106, 0.995195, -0.035874,
		-0.992152, -0.087612, 0.089208,
		42.097172, 31.383816, 43.416943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631207, 31.931746, 43.763210>,  <42.791679, 31.445143, 43.354496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631207, 31.931746, 43.763210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301846, 31.706257, 43.789227>,  <42.104229, 31.570963, 43.804836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301846, 31.706257, 43.789227>,  <42.631207, 31.931746, 43.763210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301846, 31.706257, 43.789227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053290, 0.037296, 0.997882,
		-0.564954, 0.825122, -0.000669,
		-0.823400, -0.563722, 0.065041,
		42.054825, 31.537140, 43.808739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129803, 32.305088, 44.167782>,  <42.631207, 31.931746, 43.763210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129803, 32.305088, 44.167782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039509, 31.915636, 44.180977>,  <41.985332, 31.681965, 44.188892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039509, 31.915636, 44.180977>,  <42.129803, 32.305088, 44.167782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039509, 31.915636, 44.180977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040000, 0.024567, 0.998898,
		-0.973367, 0.226805, 0.033400,
		-0.225734, -0.973630, 0.032985,
		41.971790, 31.623547, 44.190872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743958, 32.301655, 44.702679>,  <42.129803, 32.305088, 44.167782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743958, 32.301655, 44.702679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824375, 31.911804, 44.663296>,  <41.872623, 31.677895, 44.639664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824375, 31.911804, 44.663296>,  <41.743958, 32.301655, 44.702679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824375, 31.911804, 44.663296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174885, -0.063187, 0.982559,
		-0.963846, -0.214752, 0.157744,
		0.201039, -0.974623, -0.098459,
		41.884686, 31.619417, 44.633759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365463, 32.020679, 45.171654>,  <41.743958, 32.301655, 44.702679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365463, 32.020679, 45.171654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660999, 31.759153, 45.106361>,  <41.838322, 31.602240, 45.067188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660999, 31.759153, 45.106361>,  <41.365463, 32.020679, 45.171654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660999, 31.759153, 45.106361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301318, 0.103868, 0.947849,
		-0.602760, -0.749495, 0.273748,
		0.738842, -0.653811, -0.163229,
		41.882652, 31.563009, 45.057392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418602, 31.732803, 45.763660>,  <41.365463, 32.020679, 45.171654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418602, 31.732803, 45.763660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768703, 31.620218, 45.606327>,  <41.978764, 31.552668, 45.511925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768703, 31.620218, 45.606327>,  <41.418602, 31.732803, 45.763660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768703, 31.620218, 45.606327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395151, -0.052831, 0.917096,
		-0.278907, -0.958117, 0.064979,
		0.875252, -0.281461, -0.393336,
		42.031281, 31.535780, 45.488327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528027, 31.148762, 46.160316>,  <41.418602, 31.732803, 45.763660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528027, 31.148762, 46.160316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871349, 31.279428, 46.002029>,  <42.077343, 31.357828, 45.907055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871349, 31.279428, 46.002029>,  <41.528027, 31.148762, 46.160316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871349, 31.279428, 46.002029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355196, 0.178333, 0.917624,
		0.370330, -0.928162, 0.037033,
		0.858307, 0.326670, -0.395721,
		42.128841, 31.377430, 45.883312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006104, 30.775602, 46.479946>,  <41.528027, 31.148762, 46.160316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006104, 30.775602, 46.479946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218361, 31.087074, 46.346035>,  <42.345715, 31.273956, 46.265686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218361, 31.087074, 46.346035>,  <42.006104, 30.775602, 46.479946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218361, 31.087074, 46.346035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351717, 0.157077, 0.922834,
		0.771177, -0.607443, -0.190523,
		0.530642, 0.778678, -0.334782,
		42.377552, 31.320679, 46.245602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719032, 30.771818, 46.903351>,  <42.006104, 30.775602, 46.479946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719032, 30.771818, 46.903351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674862, 31.134275, 46.740028>,  <42.648361, 31.351749, 46.642036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674862, 31.134275, 46.740028>,  <42.719032, 30.771818, 46.903351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674862, 31.134275, 46.740028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120579, 0.419997, 0.899479,
		0.986543, 0.050091, -0.155639,
		-0.110424, 0.906142, -0.408305,
		42.641735, 31.406118, 46.617538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358658, 31.120333, 47.085079>,  <42.719032, 30.771818, 46.903351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358658, 31.120333, 47.085079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080898, 31.400188, 47.017765>,  <42.914242, 31.568102, 46.977379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080898, 31.400188, 47.017765>,  <43.358658, 31.120333, 47.085079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080898, 31.400188, 47.017765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210645, 0.421246, 0.882145,
		0.688073, 0.577110, -0.439887,
		-0.694395, 0.699640, -0.168283,
		42.872581, 31.610081, 46.967281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654499, 31.793255, 47.184139>,  <43.358658, 31.120333, 47.085079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.654499, 31.793255, 47.184139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258595, 31.801538, 47.240631>,  <43.021053, 31.806509, 47.274525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258595, 31.801538, 47.240631>,  <43.654499, 31.793255, 47.184139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258595, 31.801538, 47.240631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136169, 0.433725, 0.890697,
		-0.042809, 0.900807, -0.432103,
		-0.989760, 0.020710, 0.141229,
		42.961666, 31.807751, 47.283001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395390, 32.475574, 47.223022>,  <43.654499, 31.793255, 47.184139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395390, 32.475574, 47.223022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173302, 32.229160, 47.446533>,  <43.040051, 32.081310, 47.580639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.173302, 32.229160, 47.446533>,  <43.395390, 32.475574, 47.223022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173302, 32.229160, 47.446533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175547, 0.569905, 0.802740,
		-0.812966, 0.543789, -0.208280,
		-0.555221, -0.616037, 0.558774,
		43.006737, 32.044350, 47.614166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236198, 32.934944, 47.753540>,  <43.395390, 32.475574, 47.223022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236198, 32.934944, 47.753540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146114, 33.287994, 47.918591>,  <43.092064, 33.499825, 48.017620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146114, 33.287994, 47.918591>,  <43.236198, 32.934944, 47.753540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146114, 33.287994, 47.918591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131935, 0.447228, -0.884636,
		-0.965337, -0.144786, -0.217168,
		-0.225207, 0.882623, 0.412623,
		43.078552, 33.552780, 48.042377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633003, 33.269440, 47.483898>,  <43.236198, 32.934944, 47.753540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633003, 33.269440, 47.483898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914581, 33.524239, 47.609562>,  <43.083527, 33.677116, 47.684959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914581, 33.524239, 47.609562>,  <42.633003, 33.269440, 47.483898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914581, 33.524239, 47.609562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159737, 0.288998, -0.943909,
		-0.692060, 0.714642, 0.101686,
		0.703944, 0.636998, 0.314159,
		43.125763, 33.715340, 47.703808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444939, 33.941841, 47.199444>,  <42.633003, 33.269440, 47.483898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444939, 33.941841, 47.199444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838917, 33.954388, 47.267452>,  <43.075302, 33.961914, 47.308258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838917, 33.954388, 47.267452>,  <42.444939, 33.941841, 47.199444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838917, 33.954388, 47.267452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147574, 0.359813, -0.921280,
		-0.090069, 0.932497, 0.349767,
		0.984941, 0.031362, 0.170020,
		43.134399, 33.963795, 47.318459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738266, 34.611927, 46.958176>,  <42.444939, 33.941841, 47.199444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738266, 34.611927, 46.958176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071556, 34.391155, 46.971470>,  <43.271530, 34.258690, 46.979446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071556, 34.391155, 46.971470>,  <42.738266, 34.611927, 46.958176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071556, 34.391155, 46.971470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382033, 0.531195, -0.756229,
		0.399731, 0.642808, 0.653462,
		0.833226, -0.551933, 0.033238,
		43.321526, 34.225574, 46.981441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.274738, 35.238491, 46.937592>,  <42.738266, 34.611927, 46.958176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.274738, 35.238491, 46.937592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451244, 34.886303, 46.868240>,  <43.557148, 34.674992, 46.826630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451244, 34.886303, 46.868240>,  <43.274738, 35.238491, 46.937592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451244, 34.886303, 46.868240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476204, 0.393509, -0.786372,
		0.760601, 0.264437, 0.592925,
		0.441267, -0.880468, -0.173378,
		43.583626, 34.622162, 46.816227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986824, 35.428146, 46.676476>,  <43.274738, 35.238491, 46.937592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986824, 35.428146, 46.676476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904320, 35.048229, 46.582371>,  <43.854816, 34.820278, 46.525909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904320, 35.048229, 46.582371>,  <43.986824, 35.428146, 46.676476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904320, 35.048229, 46.582371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364545, 0.148534, -0.919263,
		0.908055, -0.275373, 0.315605,
		-0.206262, -0.949793, -0.235263,
		43.842442, 34.763290, 46.511791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517525, 35.171444, 46.210419>,  <43.986824, 35.428146, 46.676476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517525, 35.171444, 46.210419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.207424, 34.921440, 46.173885>,  <44.021362, 34.771439, 46.151966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.207424, 34.921440, 46.173885>,  <44.517525, 35.171444, 46.210419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207424, 34.921440, 46.173885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171023, -0.068512, -0.982882,
		0.608054, -0.777605, 0.160006,
		-0.775256, -0.625009, -0.091330,
		43.974846, 34.733936, 46.146488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738865, 34.575703, 45.766098>,  <44.517525, 35.171444, 46.210419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738865, 34.575703, 45.766098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342060, 34.624538, 45.753448>,  <44.103977, 34.653839, 45.745861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342060, 34.624538, 45.753448>,  <44.738865, 34.575703, 45.766098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342060, 34.624538, 45.753448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018550, -0.106737, -0.994114,
		-0.124752, -0.986762, 0.103620,
		-0.992015, 0.122096, -0.031620,
		44.044456, 34.661163, 45.743961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556145, 34.210922, 45.249073>,  <44.738865, 34.575703, 45.766098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556145, 34.210922, 45.249073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224041, 34.426044, 45.307648>,  <44.024780, 34.555119, 45.342793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224041, 34.426044, 45.307648>,  <44.556145, 34.210922, 45.249073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224041, 34.426044, 45.307648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160570, 0.020798, -0.986805,
		-0.533752, -0.842814, 0.069087,
		-0.830256, 0.537803, 0.146432,
		43.974964, 34.587387, 45.351578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078358, 33.820488, 44.944511>,  <44.556145, 34.210922, 45.249073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078358, 33.820488, 44.944511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.919445, 34.187012, 44.964672>,  <43.824097, 34.406925, 44.976768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.919445, 34.187012, 44.964672>,  <44.078358, 33.820488, 44.944511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.919445, 34.187012, 44.964672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067263, 0.025695, -0.997405,
		-0.915228, -0.399641, 0.051425,
		-0.397283, 0.916312, 0.050398,
		43.800259, 34.461906, 44.979790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351505, 33.796108, 44.790031>,  <44.078358, 33.820488, 44.944511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351505, 33.796108, 44.790031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493412, 34.164028, 44.722965>,  <43.578556, 34.384781, 44.682728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493412, 34.164028, 44.722965>,  <43.351505, 33.796108, 44.790031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493412, 34.164028, 44.722965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336492, -0.041700, -0.940763,
		-0.872305, 0.390167, 0.294711,
		0.354765, 0.919799, -0.167663,
		43.599842, 34.439968, 44.672665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877731, 34.150826, 44.354774>,  <43.351505, 33.796108, 44.790031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877731, 34.150826, 44.354774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205200, 34.375874, 44.308758>,  <43.401680, 34.510902, 44.281147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205200, 34.375874, 44.308758>,  <42.877731, 34.150826, 44.354774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205200, 34.375874, 44.308758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254053, 0.175174, -0.951194,
		-0.515008, 0.807944, 0.286346,
		0.818672, 0.562620, -0.115045,
		43.450802, 34.544659, 44.274246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586617, 34.643646, 44.073486>,  <42.877731, 34.150826, 44.354774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586617, 34.643646, 44.073486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973755, 34.675930, 43.978191>,  <43.206039, 34.695301, 43.921013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973755, 34.675930, 43.978191>,  <42.586617, 34.643646, 44.073486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973755, 34.675930, 43.978191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246344, 0.112662, -0.962612,
		-0.050852, 0.990350, 0.128922,
		0.967847, 0.080710, -0.238238,
		43.264111, 34.700142, 43.906719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847130, 35.295650, 43.732342>,  <42.586617, 34.643646, 44.073486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847130, 35.295650, 43.732342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129898, 35.045975, 43.599285>,  <43.299561, 34.896168, 43.519451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129898, 35.045975, 43.599285>,  <42.847130, 35.295650, 43.732342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129898, 35.045975, 43.599285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198253, 0.276584, -0.940317,
		0.678939, 0.730678, 0.071776,
		0.706921, -0.624188, -0.332643,
		43.341976, 34.858719, 43.499493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220112, 35.621208, 43.257515>,  <42.847130, 35.295650, 43.732342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220112, 35.621208, 43.257515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305305, 35.241070, 43.166763>,  <43.356422, 35.012985, 43.112312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305305, 35.241070, 43.166763>,  <43.220112, 35.621208, 43.257515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305305, 35.241070, 43.166763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339689, 0.145701, -0.929184,
		0.916106, 0.274969, -0.291791,
		0.212983, -0.950349, -0.226882,
		43.369202, 34.955967, 43.098698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.553822, 35.772369, 42.632820>,  <43.220112, 35.621208, 43.257515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.553822, 35.772369, 42.632820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429348, 35.392982, 42.656731>,  <43.354664, 35.165352, 42.671078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429348, 35.392982, 42.656731>,  <43.553822, 35.772369, 42.632820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429348, 35.392982, 42.656731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213246, 0.008389, -0.976962,
		0.926116, -0.316762, -0.204868,
		-0.311183, -0.948468, 0.059778,
		43.335995, 35.108440, 42.674664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320312, 35.639328, 41.880722>,  <43.553822, 35.772369, 42.632820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320312, 35.639328, 41.880722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245167, 35.282116, 42.044285>,  <43.200081, 35.067787, 42.142422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245167, 35.282116, 42.044285>,  <43.320312, 35.639328, 41.880722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245167, 35.282116, 42.044285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419599, -0.303446, -0.855486,
		0.888057, -0.332288, -0.317710,
		-0.187860, -0.893031, 0.408905,
		43.188808, 35.014206, 42.166958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674915, 35.010952, 41.442478>,  <43.320312, 35.639328, 41.880722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674915, 35.010952, 41.442478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342934, 34.918430, 41.645527>,  <43.143745, 34.862919, 41.767357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342934, 34.918430, 41.645527>,  <43.674915, 35.010952, 41.442478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342934, 34.918430, 41.645527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462295, -0.224080, -0.857946,
		0.312195, -0.946724, 0.079044,
		-0.829951, -0.231305, 0.507622,
		43.093948, 34.849037, 41.797813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454552, 34.441769, 41.060791>,  <43.674915, 35.010952, 41.442478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454552, 34.441769, 41.060791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140011, 34.591125, 41.257660>,  <42.951286, 34.680740, 41.375782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140011, 34.591125, 41.257660>,  <43.454552, 34.441769, 41.060791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140011, 34.591125, 41.257660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550786, -0.062917, -0.832272,
		-0.279797, -0.925538, 0.255134,
		-0.786351, 0.373392, 0.492169,
		42.904106, 34.703144, 41.405312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939846, 34.099312, 40.765518>,  <43.454552, 34.441769, 41.060791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939846, 34.099312, 40.765518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745567, 34.398609, 40.946285>,  <42.629002, 34.578190, 41.054745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745567, 34.398609, 40.946285>,  <42.939846, 34.099312, 40.765518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745567, 34.398609, 40.946285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693103, -0.014633, -0.720690,
		-0.532641, -0.663259, 0.525720,
		-0.485697, 0.748247, 0.451913,
		42.599857, 34.623081, 41.081860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162693, 33.985886, 40.717712>,  <42.939846, 34.099312, 40.765518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162693, 33.985886, 40.717712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195255, 34.378002, 40.789707>,  <42.214794, 34.613274, 40.832905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195255, 34.378002, 40.789707>,  <42.162693, 33.985886, 40.717712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195255, 34.378002, 40.789707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756194, 0.178388, -0.629562,
		-0.649263, -0.084851, 0.755816,
		0.081409, 0.980295, 0.179984,
		42.219677, 34.672092, 40.843704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517979, 34.281261, 40.953579>,  <42.162693, 33.985886, 40.717712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517979, 34.281261, 40.953579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738705, 34.577015, 40.799274>,  <41.871140, 34.754467, 40.706692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738705, 34.577015, 40.799274>,  <41.517979, 34.281261, 40.953579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738705, 34.577015, 40.799274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725420, 0.197358, -0.659405,
		-0.411423, 0.643705, 0.645271,
		0.551812, 0.739387, -0.385759,
		41.904247, 34.798832, 40.683548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002033, 34.499218, 40.492596>,  <41.517979, 34.281261, 40.953579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002033, 34.499218, 40.492596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295486, 34.750618, 40.389233>,  <41.471558, 34.901459, 40.327217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295486, 34.750618, 40.389233>,  <41.002033, 34.499218, 40.492596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295486, 34.750618, 40.389233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542212, 0.312178, -0.780097,
		-0.409623, 0.712413, 0.569804,
		0.733632, 0.628500, -0.258403,
		41.515575, 34.939167, 40.311710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725945, 35.170288, 40.187714>,  <41.002033, 34.499218, 40.492596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725945, 35.170288, 40.187714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081921, 35.073364, 40.033157>,  <41.295506, 35.015209, 39.940422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081921, 35.073364, 40.033157>,  <40.725945, 35.170288, 40.187714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081921, 35.073364, 40.033157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355008, 0.163838, -0.920395,
		0.286328, 0.956265, 0.059782,
		0.889936, -0.242312, -0.386393,
		41.348900, 35.000671, 39.917240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841492, 35.563107, 39.627579>,  <40.725945, 35.170288, 40.187714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841492, 35.563107, 39.627579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149639, 35.329140, 39.526070>,  <41.334530, 35.188759, 39.465164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149639, 35.329140, 39.526070>,  <40.841492, 35.563107, 39.627579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149639, 35.329140, 39.526070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253659, 0.084009, -0.963639,
		0.584967, 0.806732, -0.083651,
		0.770370, -0.584916, -0.253777,
		41.380749, 35.153664, 39.449936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357883, 35.971901, 39.147274>,  <40.841492, 35.563107, 39.627579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357883, 35.971901, 39.147274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396858, 35.576786, 39.098652>,  <41.420242, 35.339718, 39.069477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396858, 35.576786, 39.098652>,  <41.357883, 35.971901, 39.147274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396858, 35.576786, 39.098652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077411, 0.114243, -0.990432,
		0.992227, 0.105915, -0.065334,
		0.097437, -0.987791, -0.121554,
		41.426090, 35.280449, 39.062187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655968, 36.046597, 38.595875>,  <41.357883, 35.971901, 39.147274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655968, 36.046597, 38.595875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533482, 35.665962, 38.585114>,  <41.459991, 35.437584, 38.578659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533482, 35.665962, 38.585114>,  <41.655968, 36.046597, 38.595875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533482, 35.665962, 38.585114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098700, 0.059841, -0.993316,
		0.946833, -0.301511, -0.112245,
		-0.306213, -0.951583, -0.026900,
		41.441616, 35.380486, 38.577042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070049, 35.621361, 38.067577>,  <41.655968, 36.046597, 38.595875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070049, 35.621361, 38.067577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708622, 35.457371, 38.117371>,  <41.491768, 35.358978, 38.147247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708622, 35.457371, 38.117371>,  <42.070049, 35.621361, 38.067577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708622, 35.457371, 38.117371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098895, -0.083127, -0.991620,
		0.416884, -0.908302, 0.034566,
		-0.903564, -0.409972, 0.124481,
		41.437553, 35.334381, 38.154716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191277, 35.017830, 37.588303>,  <42.070049, 35.621361, 38.067577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191277, 35.017830, 37.588303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801773, 35.060085, 37.668938>,  <41.568069, 35.085438, 37.717319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801773, 35.060085, 37.668938>,  <42.191277, 35.017830, 37.588303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801773, 35.060085, 37.668938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226299, -0.355276, -0.906955,
		-0.024192, -0.928773, 0.369859,
		-0.973757, 0.105640, 0.201586,
		41.509647, 35.091778, 37.729412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922977, 34.388206, 37.411190>,  <42.191277, 35.017830, 37.588303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922977, 34.388206, 37.411190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614830, 34.642082, 37.435493>,  <41.429939, 34.794407, 37.450073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614830, 34.642082, 37.435493>,  <41.922977, 34.388206, 37.411190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614830, 34.642082, 37.435493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329016, -0.314106, -0.890554,
		-0.546145, -0.706047, 0.450803,
		-0.770373, 0.634693, 0.060754,
		41.383717, 34.832489, 37.453720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509544, 34.016392, 37.108494>,  <41.922977, 34.388206, 37.411190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509544, 34.016392, 37.108494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352734, 34.383987, 37.091663>,  <41.258648, 34.604546, 37.081566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352734, 34.383987, 37.091663>,  <41.509544, 34.016392, 37.108494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352734, 34.383987, 37.091663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242449, -0.147324, -0.958913,
		-0.887433, -0.365716, 0.280563,
		-0.392023, 0.918993, -0.042073,
		41.235126, 34.659687, 37.079041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816006, 33.939049, 36.772709>,  <41.509544, 34.016392, 37.108494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816006, 33.939049, 36.772709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942989, 34.314491, 36.718689>,  <41.019180, 34.539757, 36.686279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942989, 34.314491, 36.718689>,  <40.816006, 33.939049, 36.772709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942989, 34.314491, 36.718689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168640, -0.084262, -0.982069,
		-0.933154, 0.334546, 0.131536,
		0.317464, 0.938605, -0.135048,
		41.038227, 34.596073, 36.678173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299126, 34.293026, 36.451900>,  <40.816006, 33.939049, 36.772709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299126, 34.293026, 36.451900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632011, 34.496582, 36.363853>,  <40.831741, 34.618717, 36.311028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632011, 34.496582, 36.363853>,  <40.299126, 34.293026, 36.451900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632011, 34.496582, 36.363853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268633, 0.022782, -0.962973,
		-0.485037, 0.860527, 0.155666,
		0.832211, 0.508895, -0.220116,
		40.881676, 34.649250, 36.297817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019909, 34.803295, 35.931488>,  <40.299126, 34.293026, 36.451900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019909, 34.803295, 35.931488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413887, 34.862064, 35.895039>,  <40.650272, 34.897324, 35.873169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413887, 34.862064, 35.895039>,  <40.019909, 34.803295, 35.931488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413887, 34.862064, 35.895039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090951, -0.007934, -0.995824,
		-0.147030, 0.989116, 0.005548,
		0.984942, 0.146920, -0.091128,
		40.709370, 34.906139, 35.867699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997105, 35.334091, 35.525501>,  <40.019909, 34.803295, 35.931488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997105, 35.334091, 35.525501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352394, 35.151764, 35.502571>,  <40.565567, 35.042366, 35.488811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352394, 35.151764, 35.502571>,  <39.997105, 35.334091, 35.525501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352394, 35.151764, 35.502571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004813, 0.115550, -0.993290,
		0.459388, 0.882538, 0.100441,
		0.888223, -0.455822, -0.057330,
		40.618862, 35.015018, 35.485371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401749, 35.688957, 35.094643>,  <39.997105, 35.334091, 35.525501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401749, 35.688957, 35.094643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568523, 35.326122, 35.071465>,  <40.668591, 35.108421, 35.057556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568523, 35.326122, 35.071465>,  <40.401749, 35.688957, 35.094643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568523, 35.326122, 35.071465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099903, 0.017635, -0.994841,
		0.903428, 0.420577, -0.083268,
		0.416939, -0.907085, -0.057948,
		40.693604, 35.053997, 35.054081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895123, 35.710545, 34.563080>,  <40.401749, 35.688957, 35.094643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895123, 35.710545, 34.563080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828369, 35.316566, 34.581123>,  <40.788319, 35.080181, 34.591949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828369, 35.316566, 34.581123>,  <40.895123, 35.710545, 34.563080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828369, 35.316566, 34.581123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058274, -0.055519, -0.996756,
		0.984253, -0.163712, 0.066661,
		-0.166882, -0.984945, 0.045105,
		40.778305, 35.021084, 34.594654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354282, 35.437431, 34.099823>,  <40.895123, 35.710545, 34.563080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354282, 35.437431, 34.099823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053493, 35.178982, 34.152061>,  <40.873020, 35.023911, 34.183407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053493, 35.178982, 34.152061>,  <41.354282, 35.437431, 34.099823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053493, 35.178982, 34.152061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200466, 0.035414, -0.979060,
		0.627972, -0.762408, -0.156157,
		-0.751974, -0.646127, 0.130598,
		40.827900, 34.985142, 34.191242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310379, 35.184551, 33.434563>,  <41.354282, 35.437431, 34.099823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310379, 35.184551, 33.434563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960491, 35.081760, 33.598923>,  <40.750561, 35.020084, 33.697536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960491, 35.081760, 33.598923>,  <41.310379, 35.184551, 33.434563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960491, 35.081760, 33.598923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361454, -0.218859, -0.906340,
		0.322836, -0.941310, 0.098554,
		-0.874716, -0.256976, 0.410896,
		40.698078, 35.004669, 33.722191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137184, 34.634460, 33.143097>,  <41.310379, 35.184551, 33.434563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137184, 34.634460, 33.143097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780083, 34.775547, 33.255230>,  <40.565823, 34.860199, 33.322510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780083, 34.775547, 33.255230>,  <41.137184, 34.634460, 33.143097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780083, 34.775547, 33.255230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354646, -0.166383, -0.920078,
		-0.277885, -0.920819, 0.273628,
		-0.892752, 0.352717, 0.280329,
		40.512257, 34.881363, 33.339329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596897, 34.124352, 33.004581>,  <41.137184, 34.634460, 33.143097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596897, 34.124352, 33.004581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390327, 34.466522, 32.988857>,  <40.266384, 34.671825, 32.979424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390327, 34.466522, 32.988857>,  <40.596897, 34.124352, 33.004581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390327, 34.466522, 32.988857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256080, -0.198078, -0.946144,
		-0.817146, -0.478546, 0.321350,
		-0.516426, 0.855429, -0.039312,
		40.235401, 34.723152, 32.977062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557522, 33.410622, 32.765450>,  <40.596897, 34.124352, 33.004581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557522, 33.410622, 32.765450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722366, 33.613163, 32.462460>,  <40.821274, 33.734688, 32.280666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722366, 33.613163, 32.462460>,  <40.557522, 33.410622, 32.765450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722366, 33.613163, 32.462460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887764, -0.036079, 0.458882,
		0.205028, -0.861570, -0.464392,
		0.412114, 0.506354, -0.757474,
		40.846001, 33.765068, 32.235218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262367, 33.152439, 32.529476>,  <40.557522, 33.410622, 32.765450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262367, 33.152439, 32.529476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194141, 33.542686, 32.474232>,  <41.153206, 33.776836, 32.441086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194141, 33.542686, 32.474232>,  <41.262367, 33.152439, 32.529476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194141, 33.542686, 32.474232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614383, 0.214882, 0.759183,
		0.770351, 0.044640, -0.636055,
		-0.170566, 0.975619, -0.138109,
		41.142971, 33.835373, 32.432800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898132, 33.528515, 32.427418>,  <41.262367, 33.152439, 32.529476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898132, 33.528515, 32.427418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637135, 33.777946, 32.599648>,  <41.480534, 33.927605, 32.702988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637135, 33.777946, 32.599648>,  <41.898132, 33.528515, 32.427418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637135, 33.777946, 32.599648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685534, 0.243592, 0.686080,
		0.322939, 0.742841, -0.586428,
		-0.652498, 0.623578, 0.430578,
		41.441387, 33.965019, 32.728821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084000, 34.237629, 32.666603>,  <41.898132, 33.528515, 32.427418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084000, 34.237629, 32.666603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837334, 34.043751, 32.914730>,  <41.689335, 33.927422, 33.063606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837334, 34.043751, 32.914730>,  <42.084000, 34.237629, 32.666603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837334, 34.043751, 32.914730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702842, 0.015951, 0.711167,
		-0.354596, 0.874536, 0.330829,
		-0.616664, -0.484698, 0.620317,
		41.652336, 33.898342, 33.100826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120228, 34.570904, 33.404720>,  <42.084000, 34.237629, 32.666603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120228, 34.570904, 33.404720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008526, 34.186947, 33.414768>,  <41.941505, 33.956573, 33.420795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008526, 34.186947, 33.414768>,  <42.120228, 34.570904, 33.404720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008526, 34.186947, 33.414768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620792, -0.160522, 0.767365,
		-0.732553, 0.229883, 0.640718,
		-0.279254, -0.959889, 0.025119,
		41.924751, 33.898979, 33.422302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113129, 34.257118, 34.100800>,  <42.120228, 34.570904, 33.404720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113129, 34.257118, 34.100800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142254, 33.937325, 33.862293>,  <42.159729, 33.745449, 33.719189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142254, 33.937325, 33.862293>,  <42.113129, 34.257118, 34.100800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142254, 33.937325, 33.862293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563794, -0.460163, 0.685847,
		-0.822700, -0.386107, 0.417237,
		0.072813, -0.799482, -0.596261,
		42.164097, 33.697479, 33.683414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713993, 33.659344, 34.373608>,  <42.113129, 34.257118, 34.100800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713993, 33.659344, 34.373608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018230, 33.522793, 34.152718>,  <42.200775, 33.440861, 34.020184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018230, 33.522793, 34.152718>,  <41.713993, 33.659344, 34.373608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018230, 33.522793, 34.152718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419553, -0.390665, 0.819363,
		-0.495451, -0.854892, -0.153910,
		0.760594, -0.341381, -0.552228,
		42.246410, 33.420380, 33.987049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727711, 32.959446, 34.468071>,  <41.713993, 33.659344, 34.373608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727711, 32.959446, 34.468071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109558, 33.051533, 34.392490>,  <42.338665, 33.106785, 34.347141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109558, 33.051533, 34.392490>,  <41.727711, 32.959446, 34.468071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.109558, 33.051533, 34.392490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297331, -0.699899, 0.649412,
		0.017263, -0.676121, -0.736588,
		0.954619, 0.230221, -0.188949,
		42.395943, 33.120598, 34.335804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134811, 32.287045, 34.379623>,  <41.727711, 32.959446, 34.468071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134811, 32.287045, 34.379623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.394814, 32.574490, 34.478493>,  <42.550816, 32.746956, 34.537815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.394814, 32.574490, 34.478493>,  <42.134811, 32.287045, 34.379623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394814, 32.574490, 34.478493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399638, -0.599891, 0.693123,
		0.646363, -0.351752, -0.677115,
		0.650003, 0.718611, 0.247174,
		42.589813, 32.790073, 34.552647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761147, 31.977118, 34.507027>,  <42.134811, 32.287045, 34.379623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761147, 31.977118, 34.507027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796684, 32.326408, 34.698685>,  <42.818005, 32.535984, 34.813679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796684, 32.326408, 34.698685>,  <42.761147, 31.977118, 34.507027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796684, 32.326408, 34.698685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253860, -0.485014, 0.836849,
		0.963152, 0.047291, -0.264766,
		0.088840, 0.873227, 0.479148,
		42.823338, 32.588375, 34.842430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321320, 31.957056, 34.933105>,  <42.761147, 31.977118, 34.507027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321320, 31.957056, 34.933105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077118, 32.221634, 35.107361>,  <42.930599, 32.380383, 35.211914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077118, 32.221634, 35.107361>,  <43.321320, 31.957056, 34.933105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077118, 32.221634, 35.107361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297317, -0.318411, 0.900120,
		0.734091, 0.679047, -0.002268,
		-0.610502, 0.661445, 0.435635,
		42.893967, 32.420067, 35.238052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651852, 32.082687, 35.498222>,  <43.321320, 31.957056, 34.933105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651852, 32.082687, 35.498222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310978, 32.274830, 35.581207>,  <43.106453, 32.390118, 35.631001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310978, 32.274830, 35.581207>,  <43.651852, 32.082687, 35.498222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310978, 32.274830, 35.581207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114127, -0.216313, 0.969631,
		0.510648, 0.849979, 0.129516,
		-0.852181, 0.480359, 0.207466,
		43.055325, 32.418938, 35.643448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799026, 32.426807, 36.081978>,  <43.651852, 32.082687, 35.498222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799026, 32.426807, 36.081978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399212, 32.419285, 36.072403>,  <43.159325, 32.414772, 36.066658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399212, 32.419285, 36.072403>,  <43.799026, 32.426807, 36.081978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399212, 32.419285, 36.072403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021713, -0.110746, 0.993612,
		-0.021335, 0.993671, 0.110287,
		-0.999537, -0.018804, -0.023939,
		43.099350, 32.413643, 36.065220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.582714, 32.706833, 36.688343>,  <43.799026, 32.426807, 36.081978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.582714, 32.706833, 36.688343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246845, 32.515129, 36.586155>,  <43.045322, 32.400108, 36.524841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246845, 32.515129, 36.586155>,  <43.582714, 32.706833, 36.688343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246845, 32.515129, 36.586155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131665, -0.276720, 0.951888,
		-0.526891, 0.832910, 0.169253,
		-0.839672, -0.479257, -0.255466,
		42.994942, 32.371353, 36.509514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146587, 32.826447, 37.217533>,  <43.582714, 32.706833, 36.688343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146587, 32.826447, 37.217533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.960316, 32.511162, 37.056606>,  <42.848553, 32.321991, 36.960049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.960316, 32.511162, 37.056606>,  <43.146587, 32.826447, 37.217533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.960316, 32.511162, 37.056606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133479, -0.386856, 0.912429,
		-0.874829, 0.478600, 0.074940,
		-0.465679, -0.788216, -0.402316,
		42.820614, 32.274696, 36.935913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564171, 32.680408, 37.659809>,  <43.146587, 32.826447, 37.217533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564171, 32.680408, 37.659809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603931, 32.333939, 37.463905>,  <42.627789, 32.126057, 37.346363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603931, 32.333939, 37.463905>,  <42.564171, 32.680408, 37.659809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603931, 32.333939, 37.463905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128430, -0.499250, 0.856887,
		-0.986724, -0.022278, -0.160870,
		0.099404, -0.866171, -0.489761,
		42.633751, 32.074089, 37.316978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004654, 32.290886, 37.799809>,  <42.564171, 32.680408, 37.659809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004654, 32.290886, 37.799809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286564, 32.029438, 37.689484>,  <42.455711, 31.872570, 37.623287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286564, 32.029438, 37.689484>,  <42.004654, 32.290886, 37.799809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286564, 32.029438, 37.689484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183292, -0.543344, 0.819256,
		-0.685343, -0.526838, -0.502740,
		0.704776, -0.653620, -0.275812,
		42.497997, 31.833353, 37.606739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837387, 31.735262, 38.192223>,  <42.004654, 32.290886, 37.799809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837387, 31.735262, 38.192223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188725, 31.614166, 38.044243>,  <42.399529, 31.541508, 37.955456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188725, 31.614166, 38.044243>,  <41.837387, 31.735262, 38.192223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188725, 31.614166, 38.044243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131704, -0.590689, 0.796079,
		-0.459527, -0.747955, -0.478956,
		0.878345, -0.302739, -0.369945,
		42.452229, 31.523344, 37.933258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884689, 31.031078, 38.275482>,  <41.837387, 31.735262, 38.192223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884689, 31.031078, 38.275482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259659, 31.164688, 38.236156>,  <42.484642, 31.244854, 38.212563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259659, 31.164688, 38.236156>,  <41.884689, 31.031078, 38.275482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259659, 31.164688, 38.236156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294407, -0.609608, 0.736004,
		0.185910, -0.718892, -0.669800,
		0.937423, 0.334024, -0.098315,
		42.540886, 31.264894, 38.206661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316269, 30.428217, 38.412159>,  <41.884689, 31.031078, 38.275482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316269, 30.428217, 38.412159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547295, 30.750683, 38.463562>,  <42.685909, 30.944162, 38.494404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547295, 30.750683, 38.463562>,  <42.316269, 30.428217, 38.412159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547295, 30.750683, 38.463562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393890, -0.413084, 0.821104,
		0.715029, -0.423627, -0.556124,
		0.577568, 0.806165, 0.128505,
		42.720566, 30.992533, 38.502113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007397, 30.184816, 38.411613>,  <42.316269, 30.428217, 38.412159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007397, 30.184816, 38.411613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007473, 30.537840, 38.599697>,  <43.007519, 30.749653, 38.712547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007473, 30.537840, 38.599697>,  <43.007397, 30.184816, 38.411613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007473, 30.537840, 38.599697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549121, -0.393061, 0.737542,
		0.835742, 0.258061, -0.484705,
		0.000187, 0.882557, 0.470205,
		43.007530, 30.802607, 38.740757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713032, 30.286200, 38.578693>,  <43.007397, 30.184816, 38.411613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713032, 30.286200, 38.578693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526070, 30.556942, 38.806168>,  <43.413895, 30.719387, 38.942654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526070, 30.556942, 38.806168>,  <43.713032, 30.286200, 38.578693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526070, 30.556942, 38.806168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597397, -0.232350, 0.767548,
		0.651653, 0.698484, -0.295751,
		-0.467402, 0.676856, 0.568684,
		43.385849, 30.759998, 38.976772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196503, 30.661139, 38.945072>,  <43.713032, 30.286200, 38.578693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.196503, 30.661139, 38.945072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.867805, 30.717781, 39.165867>,  <43.670589, 30.751766, 39.298344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.867805, 30.717781, 39.165867>,  <44.196503, 30.661139, 38.945072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867805, 30.717781, 39.165867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522056, -0.201284, 0.828820,
		0.228474, 0.969243, 0.091475,
		-0.821740, 0.141608, 0.551988,
		43.621284, 30.760263, 39.331463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417114, 31.168211, 39.469711>,  <44.196503, 30.661139, 38.945072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417114, 31.168211, 39.469711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.095592, 30.973047, 39.605854>,  <43.902679, 30.855949, 39.687538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.095592, 30.973047, 39.605854>,  <44.417114, 31.168211, 39.469711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.095592, 30.973047, 39.605854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463054, -0.153970, 0.872854,
		-0.373469, 0.859207, 0.349690,
		-0.803804, -0.487910, 0.340357,
		43.854450, 30.826674, 39.707962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.410370, 31.357519, 40.101238>,  <44.417114, 31.168211, 39.469711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.410370, 31.357519, 40.101238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.176464, 31.033348, 40.087078>,  <44.036121, 30.838844, 40.078583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.176464, 31.033348, 40.087078>,  <44.410370, 31.357519, 40.101238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.176464, 31.033348, 40.087078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318560, -0.269558, 0.908768,
		-0.746036, 0.520137, 0.415798,
		-0.584765, -0.810430, -0.035405,
		44.001034, 30.790218, 40.076458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073666, 31.256954, 40.714111>,  <44.410370, 31.357519, 40.101238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073666, 31.256954, 40.714111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028389, 30.879559, 40.589520>,  <44.001225, 30.653122, 40.514763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028389, 30.879559, 40.589520>,  <44.073666, 31.256954, 40.714111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028389, 30.879559, 40.589520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406807, -0.330020, 0.851819,
		-0.906475, -0.030293, 0.421172,
		-0.113191, -0.943488, -0.311478,
		43.994431, 30.596512, 40.496075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772137, 30.966387, 41.176128>,  <44.073666, 31.256954, 40.714111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772137, 30.966387, 41.176128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924965, 30.651003, 40.983318>,  <44.016663, 30.461773, 40.867630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924965, 30.651003, 40.983318>,  <43.772137, 30.966387, 41.176128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924965, 30.651003, 40.983318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217135, -0.430405, 0.876130,
		-0.898262, -0.439408, 0.006758,
		0.382070, -0.788462, -0.482028,
		44.039585, 30.414465, 40.838711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457203, 30.431141, 41.551983>,  <43.772137, 30.966387, 41.176128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457203, 30.431141, 41.551983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768444, 30.297707, 41.339088>,  <43.955189, 30.217646, 41.211349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768444, 30.297707, 41.339088>,  <43.457203, 30.431141, 41.551983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768444, 30.297707, 41.339088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345617, -0.480166, 0.806219,
		-0.524508, -0.811271, -0.258324,
		0.778100, -0.333588, -0.532240,
		44.001873, 30.197632, 41.179417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443993, 29.701017, 41.382210>,  <43.457203, 30.431141, 41.551983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443993, 29.701017, 41.382210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817074, 29.840208, 41.420105>,  <44.040924, 29.923723, 41.442841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817074, 29.840208, 41.420105>,  <43.443993, 29.701017, 41.382210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817074, 29.840208, 41.420105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168056, -0.651786, 0.739549,
		0.319093, -0.673859, -0.666403,
		0.932704, 0.347978, 0.094734,
		44.096886, 29.944601, 41.448524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740448, 29.514446, 41.542435>,  <43.443993, 29.701017, 41.382210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740448, 29.514446, 41.542435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458210, 29.333452, 41.324299>,  <42.288868, 29.224855, 41.193417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458210, 29.333452, 41.324299>,  <42.740448, 29.514446, 41.542435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458210, 29.333452, 41.324299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464543, 0.285774, -0.838172,
		0.535104, -0.844742, 0.008558,
		-0.705594, -0.452485, -0.545339,
		42.246532, 29.197706, 41.160698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.058964, 29.041586, 40.950077>,  <42.740448, 29.514446, 41.542435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.058964, 29.041586, 40.950077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710003, 29.198917, 40.834000>,  <42.500626, 29.293316, 40.764355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710003, 29.198917, 40.834000>,  <43.058964, 29.041586, 40.950077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710003, 29.198917, 40.834000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459769, 0.458780, -0.760351,
		-0.165933, -0.796751, -0.581080,
		-0.872398, 0.393330, -0.290195,
		42.448284, 29.316916, 40.746941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437962, 28.555264, 40.635399>,  <43.058964, 29.041586, 40.950077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437962, 28.555264, 40.635399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345211, 28.166971, 40.610374>,  <43.289558, 27.933996, 40.595360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345211, 28.166971, 40.610374>,  <43.437962, 28.555264, 40.635399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345211, 28.166971, 40.610374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831865, -0.164548, -0.530024,
		0.504215, -0.174948, 0.845671,
		-0.231880, -0.970730, -0.062565,
		43.275646, 27.875751, 40.591606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123039, 28.181107, 40.588112>,  <43.437962, 28.555264, 40.635399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123039, 28.181107, 40.588112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854744, 27.895477, 40.507900>,  <43.693768, 27.724100, 40.459774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854744, 27.895477, 40.507900>,  <44.123039, 28.181107, 40.588112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854744, 27.895477, 40.507900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630532, -0.406602, -0.661138,
		0.390566, -0.569890, 0.722969,
		-0.670737, -0.714073, -0.200529,
		43.653522, 27.681255, 40.447742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.412392, 27.581116, 40.525555>,  <44.123039, 28.181107, 40.588112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.412392, 27.581116, 40.525555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.074924, 27.539410, 40.314896>,  <43.872444, 27.514387, 40.188499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.074924, 27.539410, 40.314896>,  <44.412392, 27.581116, 40.525555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.074924, 27.539410, 40.314896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534887, -0.247493, -0.807863,
		-0.046112, -0.963263, 0.264570,
		-0.843664, -0.104263, -0.526650,
		43.821827, 27.508131, 40.156902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082233, 27.873091, 40.168892>,  <44.412392, 27.581116, 40.525555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082233, 27.873091, 40.168892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471478, 27.892540, 40.258957>,  <45.705025, 27.904209, 40.312996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471478, 27.892540, 40.258957>,  <45.082233, 27.873091, 40.168892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.471478, 27.892540, 40.258957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075187, 0.856883, -0.509999,
		-0.217732, 0.513213, 0.830184,
		0.973108, 0.048624, 0.225158,
		45.763409, 27.907127, 40.326504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.121727, 28.553471, 40.527969>,  <45.082233, 27.873091, 40.168892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.121727, 28.553471, 40.527969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450329, 28.422215, 40.341442>,  <45.647491, 28.343460, 40.229527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450329, 28.422215, 40.341442>,  <45.121727, 28.553471, 40.527969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.450329, 28.422215, 40.341442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114774, 0.896237, -0.428470,
		0.558532, 0.298468, 0.773924,
		0.821504, -0.328141, -0.466321,
		45.696781, 28.323772, 40.201546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.663025, 28.951822, 40.554703>,  <45.121727, 28.553471, 40.527969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.663025, 28.951822, 40.554703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653011, 28.755964, 40.206078>,  <45.647003, 28.638451, 39.996902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653011, 28.755964, 40.206078>,  <45.663025, 28.951822, 40.554703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653011, 28.755964, 40.206078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021043, 0.871902, -0.489229,
		0.999465, 0.006092, -0.032133,
		-0.025037, -0.489643, -0.871563,
		45.645500, 28.609072, 39.944607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.977837, 29.372238, 40.175350>,  <45.663025, 28.951822, 40.554703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.977837, 29.372238, 40.175350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.773098, 29.135666, 39.926121>,  <45.650257, 28.993723, 39.776581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.773098, 29.135666, 39.926121>,  <45.977837, 29.372238, 40.175350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.773098, 29.135666, 39.926121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167643, 0.780105, -0.602771,
		0.842563, -0.204070, -0.498440,
		-0.511843, -0.591433, -0.623077,
		45.619545, 28.958237, 39.739197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.294872, 29.323669, 39.514057>,  <45.977837, 29.372238, 40.175350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.294872, 29.323669, 39.514057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.896889, 29.288538, 39.494667>,  <45.658100, 29.267460, 39.483032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.896889, 29.288538, 39.494667>,  <46.294872, 29.323669, 39.514057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.896889, 29.288538, 39.494667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027596, 0.704198, -0.709467,
		0.096446, -0.704551, -0.703069,
		-0.994956, -0.087827, -0.048474,
		45.598404, 29.262190, 39.480125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.141621, 29.190647, 38.808220>,  <46.294872, 29.323669, 39.514057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.141621, 29.190647, 38.808220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825367, 29.357546, 38.987465>,  <45.635616, 29.457685, 39.095013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825367, 29.357546, 38.987465>,  <46.141621, 29.190647, 38.808220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.825367, 29.357546, 38.987465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050958, 0.684487, -0.727242,
		-0.610169, -0.597815, -0.519914,
		-0.790631, 0.417247, 0.448116,
		45.588177, 29.482719, 39.121899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.802795, 29.475407, 38.314117>,  <46.141621, 29.190647, 38.808220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.802795, 29.475407, 38.314117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638538, 29.666044, 38.625046>,  <45.539986, 29.780428, 38.811604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638538, 29.666044, 38.625046>,  <45.802795, 29.475407, 38.314117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638538, 29.666044, 38.625046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020971, 0.847355, -0.530613,
		-0.911557, -0.234191, -0.337962,
		-0.410638, 0.476596, 0.777324,
		45.515347, 29.809023, 38.858242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.455307, 29.919151, 37.969913>,  <45.802795, 29.475407, 38.314117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.455307, 29.919151, 37.969913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420052, 30.071756, 38.337975>,  <45.398899, 30.163321, 38.558811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420052, 30.071756, 38.337975>,  <45.455307, 29.919151, 37.969913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420052, 30.071756, 38.337975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075585, 0.918522, -0.388079,
		-0.993236, -0.103755, -0.052122,
		-0.088140, 0.381514, 0.920151,
		45.393608, 30.186211, 38.614021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.820648, 30.291687, 37.992123>,  <45.455307, 29.919151, 37.969913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.820648, 30.291687, 37.992123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037632, 30.432817, 38.297081>,  <45.167824, 30.517496, 38.480057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037632, 30.432817, 38.297081>,  <44.820648, 30.291687, 37.992123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037632, 30.432817, 38.297081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013708, 0.911124, -0.411904,
		-0.839968, 0.212992, 0.499088,
		0.542463, 0.352827, 0.762395,
		45.200371, 30.538666, 38.525799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.588886, 30.928865, 38.094982>,  <44.820648, 30.291687, 37.992123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.588886, 30.928865, 38.094982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925613, 30.943542, 38.310387>,  <45.127651, 30.952349, 38.439629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925613, 30.943542, 38.310387>,  <44.588886, 30.928865, 38.094982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925613, 30.943542, 38.310387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104224, 0.967860, -0.228875,
		-0.529601, 0.248797, 0.810939,
		0.841820, 0.036694, 0.538510,
		45.178158, 30.954550, 38.471939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.501862, 31.457066, 38.541893>,  <44.588886, 30.928865, 38.094982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.501862, 31.457066, 38.541893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.887558, 31.406481, 38.448730>,  <45.118977, 31.376129, 38.392834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.887558, 31.406481, 38.448730>,  <44.501862, 31.457066, 38.541893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.887558, 31.406481, 38.448730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043760, 0.942719, -0.330706,
		0.261387, 0.308688, 0.914543,
		0.964242, -0.126463, -0.232906,
		45.176830, 31.368542, 38.378860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809738, 32.101631, 38.671318>,  <44.501862, 31.457066, 38.541893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809738, 32.101631, 38.671318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105564, 31.915773, 38.476528>,  <45.283062, 31.804258, 38.359653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105564, 31.915773, 38.476528>,  <44.809738, 32.101631, 38.671318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105564, 31.915773, 38.476528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233688, 0.855749, -0.461609,
		0.631214, 0.227590, 0.741466,
		0.739567, -0.464646, -0.486976,
		45.327435, 31.776379, 38.330437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.324997, 32.584396, 38.676624>,  <44.809738, 32.101631, 38.671318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.324997, 32.584396, 38.676624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.401516, 32.337959, 38.370987>,  <45.447426, 32.190098, 38.187603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.401516, 32.337959, 38.370987>,  <45.324997, 32.584396, 38.676624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401516, 32.337959, 38.370987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020143, 0.780771, -0.624492,
		0.981325, 0.104073, 0.161770,
		0.191298, -0.616089, -0.764094,
		45.458904, 32.153133, 38.141758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.905403, 32.835747, 38.317707>,  <45.324997, 32.584396, 38.676624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.905403, 32.835747, 38.317707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704990, 32.608814, 38.056293>,  <45.584743, 32.472656, 37.899445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704990, 32.608814, 38.056293>,  <45.905403, 32.835747, 38.317707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.704990, 32.608814, 38.056293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017276, 0.748450, -0.662966,
		0.865256, -0.343458, -0.365197,
		-0.501033, -0.567326, -0.653534,
		45.554680, 32.438618, 37.860233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223289, 32.850178, 37.721607>,  <45.905403, 32.835747, 38.317707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223289, 32.850178, 37.721607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.860039, 32.740547, 37.595001>,  <45.642086, 32.674767, 37.519039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.860039, 32.740547, 37.595001>,  <46.223289, 32.850178, 37.721607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.860039, 32.740547, 37.595001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046649, 0.685021, -0.727028,
		0.416080, -0.675002, -0.609303,
		-0.908131, -0.274078, -0.316512,
		45.587601, 32.658325, 37.500046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.298107, 32.572453, 37.030460>,  <46.223289, 32.850178, 37.721607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.298107, 32.572453, 37.030460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.915459, 32.681915, 37.070415>,  <45.685867, 32.747593, 37.094387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.915459, 32.681915, 37.070415>,  <46.298107, 32.572453, 37.030460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.915459, 32.681915, 37.070415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118099, 0.677731, -0.725764,
		-0.266309, -0.682488, -0.680654,
		-0.956625, 0.273662, 0.099884,
		45.628471, 32.764015, 37.100380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.012413, 32.641819, 36.379665>,  <46.298107, 32.572453, 37.030460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.012413, 32.641819, 36.379665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741207, 32.833763, 36.602383>,  <45.578484, 32.948929, 36.736015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741207, 32.833763, 36.602383>,  <46.012413, 32.641819, 36.379665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.741207, 32.833763, 36.602383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050679, 0.725178, -0.686693,
		-0.733296, -0.493808, -0.467365,
		-0.678018, 0.479864, 0.556797,
		45.537804, 32.977722, 36.769421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.557941, 32.813046, 35.818295>,  <46.012413, 32.641819, 36.379665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.557941, 32.813046, 35.818295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.455353, 33.036404, 36.133865>,  <45.393799, 33.170418, 36.323208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.455353, 33.036404, 36.133865>,  <45.557941, 32.813046, 35.818295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.455353, 33.036404, 36.133865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335552, 0.714026, -0.614468,
		-0.906436, -0.422323, 0.004243,
		-0.256474, 0.558400, 0.788930,
		45.378410, 33.203922, 36.370544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864784, 32.960083, 35.836140>,  <45.557941, 32.813046, 35.818295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864784, 32.960083, 35.836140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.032391, 33.261585, 36.038635>,  <45.132954, 33.442486, 36.160133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.032391, 33.261585, 36.038635>,  <44.864784, 32.960083, 35.836140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032391, 33.261585, 36.038635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493184, 0.657071, -0.570112,
		-0.762360, -0.010783, 0.647063,
		0.419019, 0.753752, 0.506243,
		45.158096, 33.487709, 36.190510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386501, 33.415367, 36.164646>,  <44.864784, 32.960083, 35.836140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386501, 33.415367, 36.164646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.704288, 33.654522, 36.122036>,  <44.894962, 33.798016, 36.096470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.704288, 33.654522, 36.122036>,  <44.386501, 33.415367, 36.164646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.704288, 33.654522, 36.122036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583096, 0.701945, -0.408991,
		-0.169759, 0.387042, 0.906300,
		0.794469, 0.597890, -0.106521,
		44.942631, 33.833889, 36.090080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.100018, 34.052387, 35.944721>,  <44.386501, 33.415367, 36.164646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.100018, 34.052387, 35.944721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488434, 34.110550, 35.868900>,  <44.721485, 34.145447, 35.823406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488434, 34.110550, 35.868900>,  <44.100018, 34.052387, 35.944721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488434, 34.110550, 35.868900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238787, 0.566133, -0.788970,
		-0.007407, 0.811388, 0.584461,
		0.971044, 0.145406, -0.189556,
		44.779747, 34.154171, 35.812035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233707, 34.723011, 35.649048>,  <44.100018, 34.052387, 35.944721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233707, 34.723011, 35.649048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562595, 34.534016, 35.522102>,  <44.759926, 34.420620, 35.445934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562595, 34.534016, 35.522102>,  <44.233707, 34.723011, 35.649048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562595, 34.534016, 35.522102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169905, 0.328410, -0.929128,
		0.543223, 0.817866, 0.189747,
		0.822217, -0.472485, -0.317360,
		44.809261, 34.392269, 35.426895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.627701, 35.271103, 35.161301>,  <44.233707, 34.723011, 35.649048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.627701, 35.271103, 35.161301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814690, 34.927032, 35.079742>,  <44.926884, 34.720592, 35.030807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814690, 34.927032, 35.079742>,  <44.627701, 35.271103, 35.161301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.814690, 34.927032, 35.079742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046716, 0.206290, -0.977375,
		0.882772, 0.466422, 0.056252,
		0.467474, -0.860171, -0.203896,
		44.954933, 34.668980, 35.018574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164001, 35.508335, 34.725479>,  <44.627701, 35.271103, 35.161301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164001, 35.508335, 34.725479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106407, 35.119289, 34.652489>,  <45.071850, 34.885864, 34.608696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106407, 35.119289, 34.652489>,  <45.164001, 35.508335, 34.725479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.106407, 35.119289, 34.652489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125594, 0.200869, -0.971534,
		0.981577, -0.116971, -0.151076,
		-0.143988, -0.972610, -0.182477,
		45.063210, 34.827507, 34.597744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.712978, 35.369972, 34.100498>,  <45.164001, 35.508335, 34.725479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.712978, 35.369972, 34.100498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423145, 35.094551, 34.112309>,  <45.249245, 34.929298, 34.119392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423145, 35.094551, 34.112309>,  <45.712978, 35.369972, 34.100498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423145, 35.094551, 34.112309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166976, 0.133831, -0.976836,
		0.668653, -0.712730, -0.211944,
		-0.724585, -0.688554, 0.029523,
		45.205769, 34.887985, 34.121166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249214, 35.851749, 34.512058>,  <45.712978, 35.369972, 34.100498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249214, 35.851749, 34.512058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.494411, 35.993511, 34.794514>,  <46.641529, 36.078568, 34.963985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.494411, 35.993511, 34.794514>,  <46.249214, 35.851749, 34.512058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.494411, 35.993511, 34.794514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401786, -0.909387, 0.107627,
		0.680295, 0.217741, -0.699848,
		0.612998, 0.354408, 0.706137,
		46.678310, 36.099834, 35.006355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.902470, 35.683254, 34.351097>,  <46.249214, 35.851749, 34.512058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.902470, 35.683254, 34.351097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914242, 35.686386, 34.750912>,  <46.921307, 35.688263, 34.990799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914242, 35.686386, 34.750912>,  <46.902470, 35.683254, 34.351097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.914242, 35.686386, 34.750912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487855, -0.872892, -0.007532,
		0.872428, 0.487850, -0.029512,
		0.029436, 0.007826, 0.999536,
		46.923073, 35.688732, 35.050774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.571163, 35.322239, 34.490204>,  <46.902470, 35.683254, 34.351097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.571163, 35.322239, 34.490204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.307030, 35.250751, 34.781963>,  <47.148548, 35.207859, 34.957020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.307030, 35.250751, 34.781963>,  <47.571163, 35.322239, 34.490204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.307030, 35.250751, 34.781963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494595, -0.834369, 0.243319,
		0.565099, 0.521427, 0.639356,
		-0.660332, -0.178723, 0.729397,
		47.108929, 35.197136, 35.000782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.917091, 35.374805, 35.151779>,  <47.571163, 35.322239, 34.490204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.917091, 35.374805, 35.151779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610966, 35.122406, 35.100964>,  <47.427292, 34.970966, 35.070477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610966, 35.122406, 35.100964>,  <47.917091, 35.374805, 35.151779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.610966, 35.122406, 35.100964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571225, -0.756790, 0.317759,
		-0.296644, 0.170620, 0.939623,
		-0.765313, -0.630997, -0.127036,
		47.381371, 34.933105, 35.062855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.937904, 36.949535, 43.267151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.548267, 36.977512, 43.353168>,  <38.314484, 36.994297, 43.404778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.548267, 36.977512, 43.353168>,  <38.937904, 36.949535, 43.267151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548267, 36.977512, 43.353168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208738, 0.087650, -0.974036,
		-0.086976, -0.993693, -0.070779,
		-0.974096, 0.069943, 0.215045,
		38.256039, 36.998493, 43.417683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606171, 36.456409, 42.801891>,  <38.937904, 36.949535, 43.267151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606171, 36.456409, 42.801891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.310932, 36.704224, 42.908768>,  <38.133789, 36.852913, 42.972893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.310932, 36.704224, 42.908768>,  <38.606171, 36.456409, 42.801891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310932, 36.704224, 42.908768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394719, -0.075325, -0.915709,
		-0.547190, -0.781345, 0.300140,
		-0.738092, 0.619538, 0.267195,
		38.089504, 36.890083, 42.988926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972366, 36.155888, 42.581749>,  <38.606171, 36.456409, 42.801891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972366, 36.155888, 42.581749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.921837, 36.551350, 42.614246>,  <37.891518, 36.788628, 42.633747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.921837, 36.551350, 42.614246>,  <37.972366, 36.155888, 42.581749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921837, 36.551350, 42.614246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365206, 0.029799, -0.930450,
		-0.922316, -0.147211, 0.357298,
		-0.126325, 0.988656, 0.081247,
		37.883938, 36.847946, 42.638622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185265, 36.311783, 42.387711>,  <37.972366, 36.155888, 42.581749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185265, 36.311783, 42.387711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.413960, 36.637543, 42.347958>,  <37.551174, 36.833000, 42.324108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.413960, 36.637543, 42.347958>,  <37.185265, 36.311783, 42.387711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413960, 36.637543, 42.347958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411713, 0.180022, -0.893356,
		-0.709657, 0.551677, 0.438223,
		0.571734, 0.814398, -0.099379,
		37.585480, 36.881863, 42.318146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692978, 36.842842, 42.142532>,  <37.185265, 36.311783, 42.387711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692978, 36.842842, 42.142532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.070564, 36.941864, 42.055222>,  <37.297115, 37.001278, 42.002834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.070564, 36.941864, 42.055222>,  <36.692978, 36.842842, 42.142532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070564, 36.941864, 42.055222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285071, 0.278266, -0.917226,
		-0.166325, 0.928054, 0.333245,
		0.943965, 0.247556, -0.218279,
		37.353752, 37.016132, 41.989738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584408, 37.501446, 41.795292>,  <36.692978, 36.842842, 42.142532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584408, 37.501446, 41.795292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.951275, 37.383675, 41.687881>,  <37.171394, 37.313011, 41.623436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.951275, 37.383675, 41.687881>,  <36.584408, 37.501446, 41.795292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951275, 37.383675, 41.687881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177548, 0.301353, -0.936837,
		0.356752, 0.906918, 0.224118,
		0.917172, -0.294426, -0.268530,
		37.226425, 37.295345, 41.607323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718494, 38.050468, 41.413429>,  <36.584408, 37.501446, 41.795292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718494, 38.050468, 41.413429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.994225, 37.773132, 41.329422>,  <37.159664, 37.606731, 41.279018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.994225, 37.773132, 41.329422>,  <36.718494, 38.050468, 41.413429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994225, 37.773132, 41.329422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097019, 0.198931, -0.975199,
		0.717926, 0.692605, 0.069861,
		0.689326, -0.693343, -0.210014,
		37.201023, 37.565128, 41.266418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151100, 38.356262, 40.827896>,  <36.718494, 38.050468, 41.413429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151100, 38.356262, 40.827896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.234737, 37.965115, 40.830593>,  <37.284920, 37.730427, 40.832211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.234737, 37.965115, 40.830593>,  <37.151100, 38.356262, 40.827896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234737, 37.965115, 40.830593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242515, -0.058529, -0.968381,
		0.947348, 0.200843, -0.249387,
		0.209089, -0.977873, 0.006740,
		37.297462, 37.671753, 40.832615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710144, 38.256802, 40.402615>,  <37.151100, 38.356262, 40.827896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710144, 38.256802, 40.402615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.515522, 37.907478, 40.392841>,  <37.398746, 37.697884, 40.386978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.515522, 37.907478, 40.392841>,  <37.710144, 38.256802, 40.402615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515522, 37.907478, 40.392841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004892, 0.025242, -0.999669,
		0.873634, -0.486518, -0.008009,
		-0.486559, -0.873306, -0.024432,
		37.369553, 37.645485, 40.385513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094791, 37.870049, 39.839478>,  <37.710144, 38.256802, 40.402615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094791, 37.870049, 39.839478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.740200, 37.692112, 39.890499>,  <37.527443, 37.585350, 39.921112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.740200, 37.692112, 39.890499>,  <38.094791, 37.870049, 39.839478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740200, 37.692112, 39.890499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097536, -0.089833, -0.991169,
		0.452369, -0.891094, 0.036248,
		-0.886482, -0.444839, 0.127552,
		37.474255, 37.558659, 39.928764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120548, 37.293278, 39.417465>,  <38.094791, 37.870049, 39.839478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120548, 37.293278, 39.417465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.730843, 37.371906, 39.461594>,  <37.497021, 37.419083, 39.488071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.730843, 37.371906, 39.461594>,  <38.120548, 37.293278, 39.417465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730843, 37.371906, 39.461594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128219, -0.080762, -0.988452,
		-0.185391, -0.977158, 0.103887,
		-0.974264, 0.196571, 0.110317,
		37.438564, 37.430878, 39.494690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744640, 36.690544, 39.147751>,  <38.120548, 37.293278, 39.417465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744640, 36.690544, 39.147751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.497692, 37.005199, 39.144581>,  <37.349525, 37.193993, 39.142681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.497692, 37.005199, 39.144581>,  <37.744640, 36.690544, 39.147751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497692, 37.005199, 39.144581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224405, -0.185752, -0.956629,
		-0.753991, -0.588812, 0.291202,
		-0.617366, 0.786637, -0.007923,
		37.312481, 37.241192, 39.142204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230507, 36.338638, 38.826569>,  <37.744640, 36.690544, 39.147751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230507, 36.338638, 38.826569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126228, 36.724335, 38.807480>,  <37.063660, 36.955753, 38.796028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126228, 36.724335, 38.807480>,  <37.230507, 36.338638, 38.826569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126228, 36.724335, 38.807480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329997, -0.135453, -0.934214,
		-0.907270, -0.227802, 0.353508,
		-0.260699, 0.964240, -0.047718,
		37.048019, 37.013607, 38.793163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555408, 36.453686, 38.402237>,  <37.230507, 36.338638, 38.826569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555408, 36.453686, 38.402237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.724403, 36.815273, 38.375866>,  <36.825802, 37.032227, 38.360043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.724403, 36.815273, 38.375866>,  <36.555408, 36.453686, 38.402237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724403, 36.815273, 38.375866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257431, 0.049935, -0.965006,
		-0.869040, 0.424678, 0.253806,
		0.422490, 0.903966, -0.065929,
		36.851151, 37.086464, 38.356087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118324, 36.950542, 38.013554>,  <36.555408, 36.453686, 38.402237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118324, 36.950542, 38.013554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.493797, 37.087574, 37.998013>,  <36.719082, 37.169792, 37.988689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.493797, 37.087574, 37.998013>,  <36.118324, 36.950542, 38.013554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493797, 37.087574, 37.998013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021029, -0.055596, -0.998232,
		-0.344134, 0.937842, -0.044983,
		0.938685, 0.342579, -0.038854,
		36.775402, 37.190350, 37.986355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058910, 37.583717, 37.562973>,  <36.118324, 36.950542, 38.013554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058910, 37.583717, 37.562973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.450741, 37.504967, 37.579308>,  <36.685841, 37.457718, 37.589108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.450741, 37.504967, 37.579308>,  <36.058910, 37.583717, 37.562973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450741, 37.504967, 37.579308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006710, -0.234987, -0.971975,
		0.200956, 0.951851, -0.231509,
		0.979577, -0.196878, 0.040835,
		36.744614, 37.445904, 37.591557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350456, 37.757137, 36.855907>,  <36.058910, 37.583717, 37.562973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350456, 37.757137, 36.855907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.609684, 37.501659, 37.021835>,  <36.765221, 37.348373, 37.121391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.609684, 37.501659, 37.021835>,  <36.350456, 37.757137, 36.855907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609684, 37.501659, 37.021835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171403, -0.408393, -0.896569,
		0.742043, 0.652140, -0.155193,
		0.648069, -0.638692, 0.414824,
		36.804104, 37.310051, 37.146282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757309, 37.908566, 36.399071>,  <36.350456, 37.757137, 36.855907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757309, 37.908566, 36.399071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.853939, 37.566254, 36.582058>,  <36.911919, 37.360867, 36.691853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.853939, 37.566254, 36.582058>,  <36.757309, 37.908566, 36.399071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853939, 37.566254, 36.582058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174018, -0.425586, -0.888028,
		0.954650, 0.294138, 0.046108,
		0.241580, -0.855780, 0.457471,
		36.926414, 37.309521, 36.719299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329388, 37.689045, 35.984661>,  <36.757309, 37.908566, 36.399071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329388, 37.689045, 35.984661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.189522, 37.365833, 36.174328>,  <37.105602, 37.171906, 36.288128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.189522, 37.365833, 36.174328>,  <37.329388, 37.689045, 35.984661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189522, 37.365833, 36.174328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079052, -0.529755, -0.844459,
		0.933535, -0.257791, 0.249110,
		-0.349661, -0.808025, 0.474166,
		37.084625, 37.123425, 36.316578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750851, 37.120197, 35.795223>,  <37.329388, 37.689045, 35.984661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750851, 37.120197, 35.795223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435936, 36.939919, 35.963539>,  <37.246986, 36.831753, 36.064529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435936, 36.939919, 35.963539>,  <37.750851, 37.120197, 35.795223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435936, 36.939919, 35.963539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049419, -0.634121, -0.771653,
		0.614607, -0.628304, 0.476960,
		-0.787283, -0.450693, 0.420785,
		37.199749, 36.804710, 36.089775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902008, 36.344341, 35.798763>,  <37.750851, 37.120197, 35.795223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902008, 36.344341, 35.798763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.508591, 36.416607, 35.798866>,  <37.272541, 36.459965, 35.798927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.508591, 36.416607, 35.798866>,  <37.902008, 36.344341, 35.798763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508591, 36.416607, 35.798866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135401, -0.736193, -0.663088,
		-0.119604, -0.652212, 0.748541,
		-0.983545, 0.180661, 0.000258,
		37.213528, 36.470806, 35.798943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777798, 35.739983, 35.475296>,  <37.902008, 36.344341, 35.798763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777798, 35.739983, 35.475296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.176552, 35.712631, 35.459545>,  <38.415802, 35.696220, 35.450096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.176552, 35.712631, 35.459545>,  <37.777798, 35.739983, 35.475296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176552, 35.712631, 35.459545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074538, -0.652458, -0.754150,
		0.025875, 0.754734, -0.655520,
		0.996882, -0.068374, -0.039374,
		38.475616, 35.692120, 35.447735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335159, 36.205177, 35.127769>,  <37.777798, 35.739983, 35.475296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335159, 36.205177, 35.127769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.603752, 36.422489, 34.926189>,  <38.764908, 36.552876, 34.805241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.603752, 36.422489, 34.926189>,  <38.335159, 36.205177, 35.127769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603752, 36.422489, 34.926189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192737, 0.528626, 0.826684,
		0.715520, -0.652231, 0.250252,
		0.671479, 0.543276, -0.503951,
		38.805195, 36.585472, 34.775005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867523, 36.187214, 35.558735>,  <38.335159, 36.205177, 35.127769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867523, 36.187214, 35.558735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.914291, 36.509064, 35.325871>,  <38.942352, 36.702171, 35.186153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.914291, 36.509064, 35.325871>,  <38.867523, 36.187214, 35.558735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914291, 36.509064, 35.325871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163435, 0.562603, 0.810412,
		0.979602, -0.189897, -0.065725,
		0.116917, 0.804622, -0.582162,
		38.949368, 36.750450, 35.151222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437206, 36.530304, 35.744438>,  <38.867523, 36.187214, 35.558735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437206, 36.530304, 35.744438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.258774, 36.839462, 35.563927>,  <39.151714, 37.024956, 35.455620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.258774, 36.839462, 35.563927>,  <39.437206, 36.530304, 35.744438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258774, 36.839462, 35.563927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217667, 0.582771, 0.782943,
		0.868121, 0.251028, -0.428196,
		-0.446081, 0.772893, -0.451275,
		39.124950, 37.071331, 35.428543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899700, 37.072472, 35.762299>,  <39.437206, 36.530304, 35.744438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899700, 37.072472, 35.762299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.558659, 37.273415, 35.704746>,  <39.354034, 37.393982, 35.670216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.558659, 37.273415, 35.704746>,  <39.899700, 37.072472, 35.762299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558659, 37.273415, 35.704746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308075, 0.705625, 0.638109,
		0.422081, 0.499731, -0.756383,
		-0.852606, 0.502357, -0.143876,
		39.302876, 37.424122, 35.661583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112267, 37.731407, 35.873207>,  <39.899700, 37.072472, 35.762299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112267, 37.731407, 35.873207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.714840, 37.718555, 35.916641>,  <39.476383, 37.710842, 35.942703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.714840, 37.718555, 35.916641>,  <40.112267, 37.731407, 35.873207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714840, 37.718555, 35.916641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064971, 0.623649, 0.779000,
		-0.092752, 0.781044, -0.617549,
		-0.993567, -0.032131, 0.108590,
		39.416771, 37.708916, 35.949219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909382, 38.401611, 35.852150>,  <40.112267, 37.731407, 35.873207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909382, 38.401611, 35.852150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623173, 38.189110, 36.033607>,  <39.451447, 38.061607, 36.142483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623173, 38.189110, 36.033607>,  <39.909382, 38.401611, 35.852150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623173, 38.189110, 36.033607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018881, 0.634429, 0.772750,
		-0.698335, 0.561485, -0.443917,
		-0.715522, -0.531257, 0.453646,
		39.408516, 38.029732, 36.169701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525677, 38.811886, 36.132980>,  <39.909382, 38.401611, 35.852150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525677, 38.811886, 36.132980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.401413, 38.497940, 36.347450>,  <39.326855, 38.309574, 36.476131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.401413, 38.497940, 36.347450>,  <39.525677, 38.811886, 36.132980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401413, 38.497940, 36.347450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049162, 0.576593, 0.815551,
		-0.949248, 0.227001, -0.217711,
		-0.310662, -0.784864, 0.536171,
		39.308216, 38.262482, 36.508301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178219, 39.068653, 36.790131>,  <39.525677, 38.811886, 36.132980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178219, 39.068653, 36.790131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.210743, 38.683041, 36.891346>,  <39.230259, 38.451672, 36.952076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.210743, 38.683041, 36.891346>,  <39.178219, 39.068653, 36.790131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210743, 38.683041, 36.891346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031548, 0.256237, 0.966099,
		-0.996189, -0.070574, 0.051249,
		0.081313, -0.964034, 0.253035,
		39.235138, 38.393829, 36.967255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837681, 38.950371, 37.481407>,  <39.178219, 39.068653, 36.790131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837681, 38.950371, 37.481407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064987, 38.625698, 37.427372>,  <39.201370, 38.430897, 37.394951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064987, 38.625698, 37.427372>,  <38.837681, 38.950371, 37.481407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064987, 38.625698, 37.427372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225150, -0.004520, 0.974314,
		-0.791442, -0.584085, 0.180181,
		0.568267, -0.811680, -0.135084,
		39.235466, 38.382195, 37.386848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679733, 38.474926, 38.056446>,  <38.837681, 38.950371, 37.481407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679733, 38.474926, 38.056446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.052212, 38.386017, 37.940880>,  <39.275700, 38.332672, 37.871540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.052212, 38.386017, 37.940880>,  <38.679733, 38.474926, 38.056446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052212, 38.386017, 37.940880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289104, -0.032447, 0.956747,
		-0.222038, -0.974443, 0.034047,
		0.931192, -0.222277, -0.288920,
		39.331570, 38.319332, 37.854202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839779, 38.037148, 38.543751>,  <38.679733, 38.474926, 38.056446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839779, 38.037148, 38.543751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.181347, 38.110294, 38.348862>,  <39.386288, 38.154182, 38.231930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.181347, 38.110294, 38.348862>,  <38.839779, 38.037148, 38.543751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181347, 38.110294, 38.348862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508860, -0.097259, 0.855337,
		0.109030, -0.978314, -0.176107,
		0.853917, 0.182872, -0.487221,
		39.437523, 38.165157, 38.202694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272251, 37.531361, 38.713062>,  <38.839779, 38.037148, 38.543751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272251, 37.531361, 38.713062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.509426, 37.832664, 38.599209>,  <39.651733, 38.013447, 38.530895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.509426, 37.832664, 38.599209>,  <39.272251, 37.531361, 38.713062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509426, 37.832664, 38.599209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496565, -0.063774, 0.865654,
		0.633912, -0.654621, -0.411858,
		0.592941, 0.753262, -0.284634,
		39.687309, 38.058643, 38.513817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973091, 37.323677, 38.828770>,  <39.272251, 37.531361, 38.713062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973091, 37.323677, 38.828770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.919548, 37.718735, 38.861343>,  <39.887421, 37.955769, 38.880886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.919548, 37.718735, 38.861343>,  <39.973091, 37.323677, 38.828770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919548, 37.718735, 38.861343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495792, -0.004406, 0.868430,
		0.858063, 0.156622, -0.489079,
		-0.133860, 0.987649, 0.081433,
		39.879391, 38.015030, 38.885773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644115, 37.613338, 38.952461>,  <39.973091, 37.323677, 38.828770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644115, 37.613338, 38.952461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.337788, 37.810291, 39.117908>,  <40.153992, 37.928463, 39.217178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.337788, 37.810291, 39.117908>,  <40.644115, 37.613338, 38.952461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337788, 37.810291, 39.117908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408454, -0.124343, 0.904270,
		0.496677, 0.861452, -0.105891,
		-0.765818, 0.492381, 0.413622,
		40.108044, 37.958004, 39.241997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837521, 37.880959, 39.589031>,  <40.644115, 37.613338, 38.952461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837521, 37.880959, 39.589031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.446033, 37.939880, 39.646172>,  <40.211140, 37.975235, 39.680454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.446033, 37.939880, 39.646172>,  <40.837521, 37.880959, 39.589031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446033, 37.939880, 39.646172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129243, -0.098184, 0.986740,
		0.159381, 0.984205, 0.077056,
		-0.978720, 0.147309, 0.142850,
		40.152416, 37.984074, 39.689026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797733, 38.446239, 40.132793>,  <40.837521, 37.880959, 39.589031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797733, 38.446239, 40.132793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.456718, 38.237968, 40.151005>,  <40.252110, 38.113007, 40.161934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.456718, 38.237968, 40.151005>,  <40.797733, 38.446239, 40.132793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456718, 38.237968, 40.151005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123993, -0.116851, 0.985379,
		-0.507745, 0.845718, 0.164180,
		-0.852538, -0.520679, 0.045533,
		40.200958, 38.081764, 40.164665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660618, 38.498051, 40.733498>,  <40.797733, 38.446239, 40.132793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660618, 38.498051, 40.733498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.382820, 38.220116, 40.658798>,  <40.216141, 38.053352, 40.613979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.382820, 38.220116, 40.658798>,  <40.660618, 38.498051, 40.733498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382820, 38.220116, 40.658798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110174, -0.359189, 0.926739,
		-0.711014, 0.623039, 0.326008,
		-0.694493, -0.694842, -0.186745,
		40.174473, 38.011662, 40.602776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143330, 38.663551, 41.174988>,  <40.660618, 38.498051, 40.733498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143330, 38.663551, 41.174988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.123665, 38.274830, 41.082745>,  <40.111866, 38.041595, 41.027397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.123665, 38.274830, 41.082745>,  <40.143330, 38.663551, 41.174988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123665, 38.274830, 41.082745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042711, -0.228631, 0.972576,
		-0.997877, 0.057663, -0.030267,
		-0.049161, -0.971804, -0.230608,
		40.108917, 37.983288, 41.013561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.648701, 38.357197, 41.581413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.845924, 38.032677, 41.455753>,  <39.964256, 37.837963, 41.380360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.845924, 38.032677, 41.455753>,  <39.648701, 38.357197, 41.581413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845924, 38.032677, 41.455753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038232, -0.340536, 0.939454,
		-0.869158, -0.475213, -0.136885,
		0.493055, -0.811300, -0.314148,
		39.993839, 37.789288, 41.361507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308968, 37.791714, 41.979778>,  <39.648701, 38.357197, 41.581413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308968, 37.791714, 41.979778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.661900, 37.658524, 41.846733>,  <39.873657, 37.578609, 41.766907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.661900, 37.658524, 41.846733>,  <39.308968, 37.791714, 41.979778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661900, 37.658524, 41.846733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214936, -0.343636, 0.914175,
		-0.418692, -0.878091, -0.231632,
		0.882326, -0.332972, -0.332611,
		39.926598, 37.558632, 41.746948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228996, 37.165199, 42.306499>,  <39.308968, 37.791714, 41.979778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228996, 37.165199, 42.306499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.604443, 37.270592, 42.217434>,  <39.829708, 37.333828, 42.163994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.604443, 37.270592, 42.217434>,  <39.228996, 37.165199, 42.306499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604443, 37.270592, 42.217434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316457, -0.400691, 0.859827,
		0.137331, -0.877509, -0.459475,
		0.938613, 0.263485, -0.222666,
		39.886028, 37.349636, 42.150635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609524, 36.540543, 42.565315>,  <39.228996, 37.165199, 42.306499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609524, 36.540543, 42.565315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.852215, 36.858501, 42.563095>,  <39.997829, 37.049274, 42.561764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.852215, 36.858501, 42.563095>,  <39.609524, 36.540543, 42.565315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852215, 36.858501, 42.563095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370453, -0.276569, 0.886721,
		0.703313, -0.540051, -0.462272,
		0.606725, 0.794893, -0.005549,
		40.034233, 37.096970, 42.561432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144680, 36.208229, 42.937374>,  <39.609524, 36.540543, 42.565315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144680, 36.208229, 42.937374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.256474, 36.592209, 42.929451>,  <40.323551, 36.822598, 42.924698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.256474, 36.592209, 42.929451>,  <40.144680, 36.208229, 42.937374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256474, 36.592209, 42.929451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524418, -0.135335, 0.840637,
		0.804285, -0.245332, -0.541237,
		0.279483, 0.959946, -0.019809,
		40.340317, 36.880192, 42.923508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974117, 36.254837, 43.069355>,  <40.144680, 36.208229, 42.937374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974117, 36.254837, 43.069355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.785858, 36.593365, 43.169140>,  <40.672901, 36.796482, 43.229012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.785858, 36.593365, 43.169140>,  <40.974117, 36.254837, 43.069355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785858, 36.593365, 43.169140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341566, -0.085920, 0.935922,
		0.813523, 0.525700, -0.248636,
		-0.470652, 0.846320, 0.249459,
		40.644661, 36.847260, 43.243977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448235, 36.625648, 43.585823>,  <40.974117, 36.254837, 43.069355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448235, 36.625648, 43.585823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.083843, 36.780075, 43.643883>,  <40.865208, 36.872730, 43.678719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.083843, 36.780075, 43.643883>,  <41.448235, 36.625648, 43.585823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083843, 36.780075, 43.643883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138340, -0.045520, 0.989338,
		0.388560, 0.921346, -0.011941,
		-0.910980, 0.386069, 0.145146,
		40.810551, 36.895897, 43.687428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496616, 37.213120, 43.990410>,  <41.448235, 36.625648, 43.585823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496616, 37.213120, 43.990410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.108013, 37.133839, 44.042404>,  <40.874851, 37.086269, 44.073601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.108013, 37.133839, 44.042404>,  <41.496616, 37.213120, 43.990410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108013, 37.133839, 44.042404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001896, 0.541888, 0.840449,
		-0.237011, 0.816747, -0.526071,
		-0.971505, -0.198198, 0.129982,
		40.816563, 37.074379, 44.081398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180466, 37.790993, 44.255936>,  <41.496616, 37.213120, 43.990410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180466, 37.790993, 44.255936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.952251, 37.479206, 44.359417>,  <40.815323, 37.292133, 44.421505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.952251, 37.479206, 44.359417>,  <41.180466, 37.790993, 44.255936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952251, 37.479206, 44.359417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017213, 0.326280, 0.945116,
		-0.821095, 0.534766, -0.199570,
		-0.570531, -0.779466, 0.258702,
		40.781094, 37.245365, 44.437027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681477, 38.045551, 44.833427>,  <41.180466, 37.790993, 44.255936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681477, 38.045551, 44.833427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.707508, 37.648739, 44.876579>,  <40.723125, 37.410652, 44.902470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.707508, 37.648739, 44.876579>,  <40.681477, 38.045551, 44.833427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707508, 37.648739, 44.876579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099060, 0.113999, 0.988530,
		-0.992951, -0.053642, 0.105689,
		0.065075, -0.992032, 0.107882,
		40.727032, 37.351128, 44.908943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225151, 37.907009, 45.299683>,  <40.681477, 38.045551, 44.833427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225151, 37.907009, 45.299683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.479374, 37.598347, 45.309692>,  <40.631908, 37.413151, 45.315697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.479374, 37.598347, 45.309692>,  <40.225151, 37.907009, 45.299683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479374, 37.598347, 45.309692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057819, -0.015251, 0.998210,
		-0.769890, -0.635862, -0.054309,
		0.635552, -0.771652, 0.025023,
		40.670040, 37.366852, 45.317200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966934, 37.501995, 45.795837>,  <40.225151, 37.907009, 45.299683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966934, 37.501995, 45.795837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.344696, 37.377018, 45.754883>,  <40.571354, 37.302032, 45.730312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.344696, 37.377018, 45.754883>,  <39.966934, 37.501995, 45.795837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344696, 37.377018, 45.754883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030879, -0.225731, 0.973700,
		-0.327336, -0.922727, -0.203533,
		0.944403, -0.312442, -0.102383,
		40.628017, 37.283287, 45.724167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993259, 36.885750, 46.241627>,  <39.966934, 37.501995, 45.795837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993259, 36.885750, 46.241627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.378120, 36.978611, 46.184551>,  <40.609039, 37.034328, 46.150307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.378120, 36.978611, 46.184551>,  <39.993259, 36.885750, 46.241627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378120, 36.978611, 46.184551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201191, -0.252033, 0.946573,
		0.183790, -0.939459, -0.289203,
		0.962156, 0.232155, -0.142689,
		40.666767, 37.048256, 46.141743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389915, 36.411453, 46.657631>,  <39.993259, 36.885750, 46.241627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389915, 36.411453, 46.657631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.689232, 36.669800, 46.597084>,  <40.868820, 36.824810, 46.560757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.689232, 36.669800, 46.597084>,  <40.389915, 36.411453, 46.657631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689232, 36.669800, 46.597084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299389, -0.125181, 0.945883,
		0.591968, -0.753116, -0.287038,
		0.748292, 0.645869, -0.151372,
		40.913719, 36.863560, 46.551674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934010, 36.036926, 46.798103>,  <40.389915, 36.411453, 46.657631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934010, 36.036926, 46.798103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.069653, 36.408897, 46.854996>,  <41.151039, 36.632080, 46.889133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.069653, 36.408897, 46.854996>,  <40.934010, 36.036926, 46.798103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069653, 36.408897, 46.854996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485347, -0.302460, 0.820339,
		0.805880, -0.209152, -0.553907,
		0.339110, 0.929932, 0.142235,
		41.171387, 36.687878, 46.897667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708424, 35.924686, 47.042751>,  <40.934010, 36.036926, 46.798103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708424, 35.924686, 47.042751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.641308, 36.305046, 47.146778>,  <41.601040, 36.533260, 47.209194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.641308, 36.305046, 47.146778>,  <41.708424, 35.924686, 47.042751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641308, 36.305046, 47.146778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408505, -0.173029, 0.896206,
		0.897201, 0.256613, -0.359415,
		-0.167789, 0.950900, 0.260069,
		41.590973, 36.590317, 47.224800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344761, 36.309879, 47.390381>,  <41.708424, 35.924686, 47.042751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.344761, 36.309879, 47.390381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.036297, 36.546242, 47.485161>,  <41.851219, 36.688057, 47.542030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.036297, 36.546242, 47.485161>,  <42.344761, 36.309879, 47.390381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036297, 36.546242, 47.485161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317050, 0.033693, 0.947810,
		0.552079, 0.806040, -0.213328,
		-0.771160, 0.590902, 0.236954,
		41.804951, 36.723511, 47.556248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615398, 36.829300, 47.805096>,  <42.344761, 36.309879, 47.390381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615398, 36.829300, 47.805096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.226372, 36.800987, 47.893742>,  <41.992958, 36.784000, 47.946930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.226372, 36.800987, 47.893742>,  <42.615398, 36.829300, 47.805096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226372, 36.800987, 47.893742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221249, 0.013061, 0.975130,
		-0.071916, 0.997406, 0.002957,
		-0.972562, -0.070782, 0.221615,
		41.934605, 36.779755, 47.960224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569927, 37.206078, 48.475746>,  <42.615398, 36.829300, 47.805096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569927, 37.206078, 48.475746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.242119, 36.983051, 48.422836>,  <42.045433, 36.849236, 48.391090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.242119, 36.983051, 48.422836>,  <42.569927, 37.206078, 48.475746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242119, 36.983051, 48.422836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037090, -0.178726, 0.983199,
		-0.571842, 0.810662, 0.125790,
		-0.819525, -0.557569, -0.132270,
		41.996262, 36.815781, 48.383156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167912, 37.396286, 48.989525>,  <42.569927, 37.206078, 48.475746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167912, 37.396286, 48.989525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.042988, 37.022926, 48.918835>,  <41.968033, 36.798912, 48.876419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.042988, 37.022926, 48.918835>,  <42.167912, 37.396286, 48.989525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042988, 37.022926, 48.918835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161822, -0.235585, 0.958287,
		-0.936096, 0.270685, 0.224620,
		-0.312311, -0.933397, -0.176727,
		41.949295, 36.742908, 48.865818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735359, 37.200382, 49.503998>,  <42.167912, 37.396286, 48.989525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735359, 37.200382, 49.503998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.906929, 36.875340, 49.346165>,  <42.009872, 36.680313, 49.251465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.906929, 36.875340, 49.346165>,  <41.735359, 37.200382, 49.503998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906929, 36.875340, 49.346165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245655, -0.315416, 0.916606,
		-0.869297, -0.490086, 0.064332,
		0.428925, -0.812606, -0.394582,
		42.035606, 36.631557, 49.227791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508812, 36.599697, 49.673695>,  <41.735359, 37.200382, 49.503998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508812, 36.599697, 49.673695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.890205, 36.530651, 49.574848>,  <42.119041, 36.489223, 49.515541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.890205, 36.530651, 49.574848>,  <41.508812, 36.599697, 49.673695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890205, 36.530651, 49.574848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166807, -0.380706, 0.909527,
		-0.251073, -0.908443, -0.334206,
		0.953487, -0.172610, -0.247119,
		42.176250, 36.478867, 49.500713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733532, 35.874279, 49.971725>,  <41.508812, 36.599697, 49.673695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733532, 35.874279, 49.971725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.016544, 36.156254, 49.951839>,  <42.186352, 36.325439, 49.939907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.016544, 36.156254, 49.951839>,  <41.733532, 35.874279, 49.971725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016544, 36.156254, 49.951839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238288, -0.171747, 0.955888,
		0.665300, -0.688163, -0.289493,
		0.707527, 0.704935, -0.049718,
		42.228802, 36.367733, 49.936924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561478, 35.484596, 50.523624>,  <41.733532, 35.874279, 49.971725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561478, 35.484596, 50.523624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.262428, 35.274776, 50.686554>,  <41.083000, 35.148884, 50.784313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.262428, 35.274776, 50.686554>,  <41.561478, 35.484596, 50.523624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262428, 35.274776, 50.686554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562047, 0.173008, -0.808808,
		0.353792, -0.833615, -0.424167,
		-0.747619, -0.524552, 0.407322,
		41.038143, 35.117413, 50.808750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419506, 34.930573, 50.086712>,  <41.561478, 35.484596, 50.523624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419506, 34.930573, 50.086712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.083351, 34.994076, 50.293995>,  <40.881657, 35.032177, 50.418365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.083351, 34.994076, 50.293995>,  <41.419506, 34.930573, 50.086712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083351, 34.994076, 50.293995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509087, 0.096806, -0.855253,
		-0.185945, -0.982560, -0.000533,
		-0.840390, 0.158758, 0.518210,
		40.831234, 35.041702, 50.449459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916039, 34.584915, 49.663204>,  <41.419506, 34.930573, 50.086712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916039, 34.584915, 49.663204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.695461, 34.813354, 49.906433>,  <40.563114, 34.950417, 50.052372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.695461, 34.813354, 49.906433>,  <40.916039, 34.584915, 49.663204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695461, 34.813354, 49.906433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675579, 0.121891, -0.727143,
		-0.489389, -0.811782, 0.318606,
		-0.551446, 0.571098, 0.608074,
		40.530029, 34.984684, 50.088856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220150, 34.381271, 49.610649>,  <40.916039, 34.584915, 49.663204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220150, 34.381271, 49.610649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.209808, 34.761726, 49.733723>,  <40.203602, 34.989998, 49.807568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.209808, 34.761726, 49.733723>,  <40.220150, 34.381271, 49.610649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209808, 34.761726, 49.733723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778715, 0.173839, -0.602812,
		-0.626844, -0.255187, 0.736170,
		-0.025855, 0.951136, 0.307688,
		40.202053, 35.047066, 49.826031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504494, 34.512695, 49.705688>,  <40.220150, 34.381271, 49.610649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504494, 34.512695, 49.705688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.702106, 34.860325, 49.695587>,  <39.820675, 35.068905, 49.689526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.702106, 34.860325, 49.695587>,  <39.504494, 34.512695, 49.705688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702106, 34.860325, 49.695587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654218, 0.352446, -0.669164,
		-0.572655, 0.347108, 0.742686,
		0.494029, 0.869079, -0.025255,
		39.850315, 35.121048, 49.688011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027740, 34.968014, 49.582932>,  <39.504494, 34.512695, 49.705688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027740, 34.968014, 49.582932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.345806, 35.188190, 49.481171>,  <39.536648, 35.320297, 49.420113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.345806, 35.188190, 49.481171>,  <39.027740, 34.968014, 49.582932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345806, 35.188190, 49.481171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545624, 0.466414, -0.696242,
		-0.264584, 0.692438, 0.671212,
		0.795167, 0.550444, -0.254405,
		39.584354, 35.353325, 49.404850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783176, 35.712292, 49.445244>,  <39.027740, 34.968014, 49.582932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783176, 35.712292, 49.445244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.119724, 35.647411, 49.239025>,  <39.321651, 35.608482, 49.115292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.119724, 35.647411, 49.239025>,  <38.783176, 35.712292, 49.445244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119724, 35.647411, 49.239025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453485, 0.307085, -0.836690,
		0.294031, 0.937757, 0.184815,
		0.841366, -0.162202, -0.515551,
		39.372135, 35.598751, 49.084358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061932, 36.369404, 49.171379>,  <38.783176, 35.712292, 49.445244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061932, 36.369404, 49.171379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.234852, 36.086720, 48.947353>,  <39.338604, 35.917110, 48.812939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.234852, 36.086720, 48.947353>,  <39.061932, 36.369404, 49.171379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234852, 36.086720, 48.947353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249138, 0.503319, -0.827406,
		0.866630, 0.497222, 0.041516,
		0.432300, -0.706711, -0.560067,
		39.364540, 35.874706, 48.779335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355190, 36.726898, 48.630894>,  <39.061932, 36.369404, 49.171379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355190, 36.726898, 48.630894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.369911, 36.352097, 48.491943>,  <39.378746, 36.127216, 48.408573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.369911, 36.352097, 48.491943>,  <39.355190, 36.726898, 48.630894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369911, 36.352097, 48.491943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252781, 0.327579, -0.910381,
		0.966823, 0.121318, -0.224800,
		0.036806, -0.937002, -0.347378,
		39.380955, 36.070995, 48.387730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626137, 36.788559, 47.937500>,  <39.355190, 36.726898, 48.630894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626137, 36.788559, 47.937500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.439777, 36.435741, 47.965626>,  <39.327961, 36.224052, 47.982502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.439777, 36.435741, 47.965626>,  <39.626137, 36.788559, 47.937500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439777, 36.435741, 47.965626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361036, 0.116944, -0.925190,
		0.807832, -0.456431, -0.372933,
		-0.465897, -0.882041, 0.070317,
		39.300007, 36.171131, 47.986721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888863, 36.366291, 47.359020>,  <39.626137, 36.788559, 47.937500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888863, 36.366291, 47.359020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.539680, 36.206169, 47.470528>,  <39.330173, 36.110096, 47.537430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.539680, 36.206169, 47.470528>,  <39.888863, 36.366291, 47.359020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539680, 36.206169, 47.470528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324335, 0.049444, -0.944649,
		0.364366, -0.915046, -0.172996,
		-0.872951, -0.400307, 0.278765,
		39.277794, 36.086079, 47.554157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797375, 35.882511, 46.853336>,  <39.888863, 36.366291, 47.359020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797375, 35.882511, 46.853336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.433823, 35.933441, 47.012196>,  <39.215691, 35.964001, 47.107513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.433823, 35.933441, 47.012196>,  <39.797375, 35.882511, 46.853336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433823, 35.933441, 47.012196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396188, 0.033904, -0.917543,
		-0.130295, -0.991281, 0.019632,
		-0.908877, 0.127329, 0.397152,
		39.161160, 35.971638, 47.131340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358040, 35.514275, 46.416615>,  <39.797375, 35.882511, 46.853336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358040, 35.514275, 46.416615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.128014, 35.782040, 46.604736>,  <38.989998, 35.942699, 46.717609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.128014, 35.782040, 46.604736>,  <39.358040, 35.514275, 46.416615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128014, 35.782040, 46.604736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448808, 0.222504, -0.865485,
		-0.684010, -0.708788, 0.172483,
		-0.575067, 0.669412, 0.470304,
		38.955494, 35.982864, 46.745827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701538, 35.343597, 46.201023>,  <39.358040, 35.514275, 46.416615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701538, 35.343597, 46.201023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.680859, 35.722134, 46.328629>,  <38.668449, 35.949253, 46.405193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.680859, 35.722134, 46.328629>,  <38.701538, 35.343597, 46.201023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680859, 35.722134, 46.328629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382075, 0.276395, -0.881830,
		-0.922684, -0.167478, 0.347282,
		-0.051700, 0.946338, 0.319014,
		38.665348, 36.006035, 46.424332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134125, 35.536587, 45.926262>,  <38.701538, 35.343597, 46.201023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134125, 35.536587, 45.926262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.321503, 35.877533, 46.019249>,  <38.433929, 36.082100, 46.075039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.321503, 35.877533, 46.019249>,  <38.134125, 35.536587, 45.926262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321503, 35.877533, 46.019249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365551, 0.426530, -0.827312,
		-0.804323, 0.302569, 0.511386,
		0.468440, 0.852364, 0.232464,
		38.462036, 36.133244, 46.088989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652981, 36.097588, 45.807709>,  <38.134125, 35.536587, 45.926262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652981, 36.097588, 45.807709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.009003, 36.278618, 45.785912>,  <38.222618, 36.387238, 45.772835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.009003, 36.278618, 45.785912>,  <37.652981, 36.097588, 45.807709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009003, 36.278618, 45.785912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295229, 0.481233, -0.825381,
		-0.347328, 0.750724, 0.561940,
		0.890058, 0.452580, -0.054490,
		38.276020, 36.414391, 45.769566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588604, 36.832115, 45.759155>,  <37.652981, 36.097588, 45.807709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588604, 36.832115, 45.759155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.946453, 36.769661, 45.591690>,  <38.161163, 36.732189, 45.491211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.946453, 36.769661, 45.591690>,  <37.588604, 36.832115, 45.759155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946453, 36.769661, 45.591690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227543, 0.647181, -0.727585,
		0.384553, 0.746175, 0.543453,
		0.894619, -0.156136, -0.418663,
		38.214840, 36.722820, 45.466091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663639, 37.471199, 45.517887>,  <37.588604, 36.832115, 45.759155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663639, 37.471199, 45.517887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.952297, 37.239971, 45.365536>,  <38.125492, 37.101234, 45.274124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.952297, 37.239971, 45.365536>,  <37.663639, 37.471199, 45.517887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952297, 37.239971, 45.365536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191851, 0.361636, -0.912366,
		0.665150, 0.731474, 0.150069,
		0.721643, -0.578070, -0.380876,
		38.168789, 37.066551, 45.251274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977493, 37.910450, 44.996349>,  <37.663639, 37.471199, 45.517887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977493, 37.910450, 44.996349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.063206, 37.533863, 44.892254>,  <38.114632, 37.307911, 44.829796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.063206, 37.533863, 44.892254>,  <37.977493, 37.910450, 44.996349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063206, 37.533863, 44.892254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197606, 0.219140, -0.955474,
		0.956575, 0.256166, -0.139082,
		0.214282, -0.941465, -0.260243,
		38.127491, 37.251423, 44.814182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405293, 38.020336, 44.474663>,  <37.977493, 37.910450, 44.996349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405293, 38.020336, 44.474663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.289562, 37.641247, 44.420841>,  <38.220123, 37.413792, 44.388550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.289562, 37.641247, 44.420841>,  <38.405293, 38.020336, 44.474663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289562, 37.641247, 44.420841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183881, 0.192973, -0.963820,
		0.939402, -0.254120, -0.230102,
		-0.289329, -0.947726, -0.134552,
		38.202763, 37.356930, 44.380474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694344, 37.875370, 43.819523>,  <38.405293, 38.020336, 44.474663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694344, 37.875370, 43.819523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.387093, 37.625248, 43.874615>,  <38.202740, 37.475174, 43.907669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.387093, 37.625248, 43.874615>,  <38.694344, 37.875370, 43.819523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387093, 37.625248, 43.874615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259435, 0.107291, -0.959782,
		0.585378, -0.772971, -0.244639,
		-0.768131, -0.625304, 0.137730,
		38.156654, 37.437656, 43.915936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.094250, 29.603359, 40.656387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.764683, 29.789516, 40.785736>,  <44.566940, 29.901211, 40.863346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.764683, 29.789516, 40.785736>,  <45.094250, 29.603359, 40.656387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764683, 29.789516, 40.785736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315676, 0.096980, -0.943898,
		-0.470643, -0.879776, 0.067009,
		-0.823920, 0.465392, 0.323367,
		44.517506, 29.929134, 40.882748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.514465, 29.425730, 40.124935>,  <45.094250, 29.603359, 40.656387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.514465, 29.425730, 40.124935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.368198, 29.723372, 40.348576>,  <44.280437, 29.901957, 40.482761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.368198, 29.723372, 40.348576>,  <44.514465, 29.425730, 40.124935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368198, 29.723372, 40.348576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518826, 0.335759, -0.786184,
		-0.772728, -0.577556, 0.263286,
		-0.365665, 0.744107, 0.559101,
		44.258499, 29.946604, 40.516308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861214, 29.447018, 39.968563>,  <44.514465, 29.425730, 40.124935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861214, 29.447018, 39.968563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.915401, 29.806444, 40.135529>,  <43.947914, 30.022100, 40.235706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.915401, 29.806444, 40.135529>,  <43.861214, 29.447018, 39.968563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915401, 29.806444, 40.135529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561843, 0.416678, -0.714642,
		-0.816076, -0.137705, 0.561300,
		0.135471, 0.898564, 0.417409,
		43.956043, 30.076014, 40.260750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215378, 29.737936, 40.045361>,  <43.861214, 29.447018, 39.968563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215378, 29.737936, 40.045361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.449490, 30.061226, 40.071354>,  <43.589958, 30.255199, 40.086952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.449490, 30.061226, 40.071354>,  <43.215378, 29.737936, 40.045361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449490, 30.061226, 40.071354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503579, 0.425145, -0.752103,
		-0.635496, 0.407465, 0.655833,
		0.585280, 0.808223, 0.064987,
		43.625072, 30.303692, 40.090851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740238, 30.200680, 39.913239>,  <43.215378, 29.737936, 40.045361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740238, 30.200680, 39.913239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.097267, 30.375574, 39.869160>,  <43.311485, 30.480511, 39.842712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.097267, 30.375574, 39.869160>,  <42.740238, 30.200680, 39.913239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097267, 30.375574, 39.869160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375723, 0.586068, -0.717883,
		-0.249301, 0.682165, 0.687387,
		0.892570, 0.437236, -0.110198,
		43.365040, 30.506744, 39.836102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569946, 30.924967, 40.026169>,  <42.740238, 30.200680, 39.913239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569946, 30.924967, 40.026169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.908916, 30.863338, 39.822941>,  <43.112297, 30.826361, 39.701004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.908916, 30.863338, 39.822941>,  <42.569946, 30.924967, 40.026169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.908916, 30.863338, 39.822941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401953, 0.439015, -0.803554,
		0.346855, 0.885171, 0.310102,
		0.847423, -0.154071, -0.508072,
		43.163143, 30.817118, 39.670521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702297, 31.504120, 39.753212>,  <42.569946, 30.924967, 40.026169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702297, 31.504120, 39.753212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.942245, 31.272671, 39.532177>,  <43.086216, 31.133801, 39.399555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.942245, 31.272671, 39.532177>,  <42.702297, 31.504120, 39.753212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942245, 31.272671, 39.532177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234212, 0.533401, -0.812790,
		0.765048, 0.616992, 0.184452,
		0.599872, -0.578623, -0.552584,
		43.122208, 31.099083, 39.366402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084553, 32.004440, 39.262321>,  <42.702297, 31.504120, 39.753212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084553, 32.004440, 39.262321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.054188, 31.630787, 39.122818>,  <43.035969, 31.406595, 39.039116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.054188, 31.630787, 39.122818>,  <43.084553, 32.004440, 39.262321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054188, 31.630787, 39.122818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271439, 0.355922, -0.894226,
		0.959457, 0.026781, -0.280580,
		-0.075916, -0.934132, -0.348761,
		43.031414, 31.350548, 39.018188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475594, 32.030754, 38.625984>,  <43.084553, 32.004440, 39.262321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475594, 32.030754, 38.625984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.246670, 31.703697, 38.600948>,  <43.109314, 31.507463, 38.585926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.246670, 31.703697, 38.600948>,  <43.475594, 32.030754, 38.625984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246670, 31.703697, 38.600948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269898, 0.259892, -0.927152,
		0.774347, -0.513728, -0.369420,
		-0.572313, -0.817643, -0.062593,
		43.074974, 31.458405, 38.582172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719585, 31.721203, 38.060730>,  <43.475594, 32.030754, 38.625984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719585, 31.721203, 38.060730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.349758, 31.573915, 38.099903>,  <43.127861, 31.485544, 38.123405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.349758, 31.573915, 38.099903>,  <43.719585, 31.721203, 38.060730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349758, 31.573915, 38.099903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231882, 0.339834, -0.911452,
		0.302322, -0.865411, -0.399581,
		-0.924572, -0.368208, 0.097934,
		43.072388, 31.463451, 38.129284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726543, 31.274311, 37.550850>,  <43.719585, 31.721203, 38.060730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726543, 31.274311, 37.550850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.350494, 31.345648, 37.667027>,  <43.124863, 31.388449, 37.736732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.350494, 31.345648, 37.667027>,  <43.726543, 31.274311, 37.550850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350494, 31.345648, 37.667027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237802, 0.267250, -0.933824,
		-0.244161, -0.946980, -0.208839,
		-0.940125, 0.178341, 0.290446,
		43.068459, 31.399149, 37.754162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296284, 30.972790, 37.042885>,  <43.726543, 31.274311, 37.550850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296284, 30.972790, 37.042885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.068932, 31.246767, 37.225224>,  <42.932522, 31.411154, 37.334629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.068932, 31.246767, 37.225224>,  <43.296284, 30.972790, 37.042885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068932, 31.246767, 37.225224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284662, 0.356119, -0.890026,
		-0.771954, -0.635635, -0.007433,
		-0.568379, 0.684944, 0.455849,
		42.898418, 31.452250, 37.361977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856457, 31.009508, 36.574593>,  <43.296284, 30.972790, 37.042885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856457, 31.009508, 36.574593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.796303, 31.324514, 36.813660>,  <42.760212, 31.513517, 36.957100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.796303, 31.324514, 36.813660>,  <42.856457, 31.009508, 36.574593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796303, 31.324514, 36.813660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421248, 0.495871, -0.759382,
		-0.894391, -0.365965, 0.257168,
		-0.150385, 0.787516, 0.597665,
		42.751186, 31.560770, 36.992958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157406, 31.207104, 36.587929>,  <42.856457, 31.009508, 36.574593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157406, 31.207104, 36.587929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.378452, 31.534079, 36.652931>,  <42.511082, 31.730263, 36.691933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.378452, 31.534079, 36.652931>,  <42.157406, 31.207104, 36.587929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378452, 31.534079, 36.652931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514123, 0.487820, -0.705485,
		-0.655963, 0.306316, 0.689842,
		0.552620, 0.817436, 0.162507,
		42.544239, 31.779310, 36.701683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870937, 31.783361, 36.251690>,  <42.157406, 31.207104, 36.587929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870937, 31.783361, 36.251690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.229935, 31.946007, 36.320000>,  <42.445335, 32.043594, 36.360985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.229935, 31.946007, 36.320000>,  <41.870937, 31.783361, 36.251690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229935, 31.946007, 36.320000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123289, 0.603108, -0.788074,
		-0.423435, 0.686240, 0.591420,
		0.897498, 0.406614, 0.170771,
		42.499184, 32.067989, 36.371231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746662, 32.406960, 36.042492>,  <41.870937, 31.783361, 36.251690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746662, 32.406960, 36.042492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.146408, 32.392693, 36.042004>,  <42.386253, 32.384132, 36.041710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.146408, 32.392693, 36.042004>,  <41.746662, 32.406960, 36.042492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146408, 32.392693, 36.042004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016397, 0.489166, -0.872037,
		0.031698, 0.871461, 0.489439,
		0.999363, -0.035667, -0.001216,
		42.446217, 32.381992, 36.041637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004276, 33.019665, 36.025780>,  <41.746662, 32.406960, 36.042492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004276, 33.019665, 36.025780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.328403, 32.833008, 35.883999>,  <42.522881, 32.721012, 35.798931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.328403, 32.833008, 35.883999>,  <42.004276, 33.019665, 36.025780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328403, 32.833008, 35.883999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107696, 0.713158, -0.692681,
		0.576013, 0.523117, 0.628138,
		0.810315, -0.466641, -0.354451,
		42.571499, 32.693016, 35.777664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604385, 33.456333, 35.920090>,  <42.004276, 33.019665, 36.025780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604385, 33.456333, 35.920090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.679214, 33.164131, 35.657375>,  <42.724113, 32.988808, 35.499748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.679214, 33.164131, 35.657375>,  <42.604385, 33.456333, 35.920090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679214, 33.164131, 35.657375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088383, 0.678390, -0.729367,
		0.978362, 0.078396, 0.191472,
		0.187072, -0.730508, -0.656782,
		42.735336, 32.944981, 35.460342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844547, 33.795593, 35.320358>,  <42.604385, 33.456333, 35.920090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844547, 33.795593, 35.320358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.859371, 33.426849, 35.166054>,  <42.868263, 33.205605, 35.073471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.859371, 33.426849, 35.166054>,  <42.844547, 33.795593, 35.320358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859371, 33.426849, 35.166054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051495, 0.383748, -0.922001,
		0.997986, 0.054032, -0.033250,
		0.037058, -0.921856, -0.385757,
		42.870487, 33.150291, 35.050327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416592, 33.686726, 34.798264>,  <42.844547, 33.795593, 35.320358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416592, 33.686726, 34.798264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.150257, 33.400806, 34.712730>,  <42.990456, 33.229256, 34.661411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.150257, 33.400806, 34.712730>,  <43.416592, 33.686726, 34.798264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150257, 33.400806, 34.712730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007304, 0.292833, -0.956136,
		0.746059, -0.635072, -0.200201,
		-0.665841, -0.714796, -0.213832,
		42.950504, 33.186367, 34.648582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626808, 33.539345, 34.185001>,  <43.416592, 33.686726, 34.798264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626808, 33.539345, 34.185001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.249638, 33.411480, 34.222328>,  <43.023335, 33.334759, 34.244724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.249638, 33.411480, 34.222328>,  <43.626808, 33.539345, 34.185001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.249638, 33.411480, 34.222328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225005, 0.404995, -0.886201,
		0.245491, -0.856618, -0.453806,
		-0.942924, -0.319663, 0.093321,
		42.966759, 33.315582, 34.250324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355347, 33.935722, 34.009819>,  <43.626808, 33.539345, 34.185001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355347, 33.935722, 34.009819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.635880, 34.219387, 34.038742>,  <44.804199, 34.389587, 34.056095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.635880, 34.219387, 34.038742>,  <44.355347, 33.935722, 34.009819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.635880, 34.219387, 34.038742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148054, -0.244140, 0.958371,
		0.697294, -0.661426, -0.276217,
		0.701328, 0.709162, 0.072310,
		44.846279, 34.432137, 34.060436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734112, 33.543190, 34.309170>,  <44.355347, 33.935722, 34.009819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734112, 33.543190, 34.309170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.864719, 33.912525, 34.389996>,  <44.943085, 34.134125, 34.438492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.864719, 33.912525, 34.389996>,  <44.734112, 33.543190, 34.309170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.864719, 33.912525, 34.389996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221479, -0.282569, 0.933329,
		0.918874, -0.260001, -0.296765,
		0.326523, 0.923339, 0.202061,
		44.962677, 34.189526, 34.450615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348957, 33.500172, 34.659962>,  <44.734112, 33.543190, 34.309170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348957, 33.500172, 34.659962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.250423, 33.874409, 34.761147>,  <45.191303, 34.098949, 34.821857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.250423, 33.874409, 34.761147>,  <45.348957, 33.500172, 34.659962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.250423, 33.874409, 34.761147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274966, -0.182818, 0.943913,
		0.929361, 0.302078, -0.212221,
		-0.246337, 0.935589, 0.252965,
		45.176521, 34.155087, 34.837036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.874920, 33.660618, 35.093914>,  <45.348957, 33.500172, 34.659962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.874920, 33.660618, 35.093914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.568653, 33.898540, 35.191868>,  <45.384895, 34.041294, 35.250641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.568653, 33.898540, 35.191868>,  <45.874920, 33.660618, 35.093914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568653, 33.898540, 35.191868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201081, -0.140297, 0.969476,
		0.611005, 0.791533, -0.012184,
		-0.765662, 0.594805, 0.244885,
		45.338955, 34.076981, 35.265335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.101955, 34.316494, 35.627937>,  <45.874920, 33.660618, 35.093914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.101955, 34.316494, 35.627937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.708141, 34.272377, 35.682381>,  <45.471851, 34.245907, 35.715046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.708141, 34.272377, 35.682381>,  <46.101955, 34.316494, 35.627937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.708141, 34.272377, 35.682381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144350, -0.070552, 0.987008,
		-0.099258, 0.991392, 0.085382,
		-0.984536, -0.110293, 0.136105,
		45.412781, 34.239288, 35.723213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.893959, 34.682629, 36.205246>,  <46.101955, 34.316494, 35.627937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.893959, 34.682629, 36.205246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.604843, 34.407459, 36.178932>,  <45.431374, 34.242355, 36.163143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.604843, 34.407459, 36.178932>,  <45.893959, 34.682629, 36.205246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.604843, 34.407459, 36.178932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249327, -0.348372, 0.903589,
		-0.644521, 0.636705, 0.423319,
		-0.722792, -0.687927, -0.065785,
		45.388004, 34.201080, 36.159195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.758823, 34.430473, 36.895229>,  <45.893959, 34.682629, 36.205246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.758823, 34.430473, 36.895229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.574100, 34.158070, 36.667912>,  <45.463268, 33.994629, 36.531521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.574100, 34.158070, 36.667912>,  <45.758823, 34.430473, 36.895229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.574100, 34.158070, 36.667912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093528, -0.674525, 0.732303,
		-0.882035, 0.285031, 0.375194,
		-0.461807, -0.681009, -0.568297,
		45.435558, 33.953766, 36.497421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.412643, 34.013332, 37.394207>,  <45.758823, 34.430473, 36.895229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.412643, 34.013332, 37.394207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.353165, 33.767704, 37.084160>,  <45.317478, 33.620327, 36.898132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.353165, 33.767704, 37.084160>,  <45.412643, 34.013332, 37.394207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.353165, 33.767704, 37.084160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198439, -0.749358, 0.631732,
		-0.968768, 0.247750, -0.010428,
		-0.148697, -0.614071, -0.775117,
		45.308556, 33.583485, 36.851624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690292, 33.704628, 37.468346>,  <45.412643, 34.013332, 37.394207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690292, 33.704628, 37.468346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.919044, 33.468143, 37.240864>,  <45.056293, 33.326252, 37.104374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.919044, 33.468143, 37.240864>,  <44.690292, 33.704628, 37.468346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.919044, 33.468143, 37.240864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124319, -0.747710, 0.652284,
		-0.810865, -0.302325, -0.501097,
		0.571877, -0.591210, -0.568707,
		45.090607, 33.290779, 37.070251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.317608, 33.002098, 37.209667>,  <44.690292, 33.704628, 37.468346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.317608, 33.002098, 37.209667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.714283, 32.952206, 37.197075>,  <44.952290, 32.922268, 37.189518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.714283, 32.952206, 37.197075>,  <44.317608, 33.002098, 37.209667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.714283, 32.952206, 37.197075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076892, -0.770912, 0.632283,
		-0.103139, -0.624608, -0.774098,
		0.991690, -0.124735, -0.031483,
		45.011791, 32.914783, 37.187630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415478, 32.347549, 37.012871>,  <44.317608, 33.002098, 37.209667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415478, 32.347549, 37.012871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.768620, 32.444206, 37.173958>,  <44.980503, 32.502201, 37.270611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.768620, 32.444206, 37.173958>,  <44.415478, 32.347549, 37.012871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768620, 32.444206, 37.173958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031281, -0.825323, 0.563794,
		0.468611, -0.510344, -0.721078,
		0.882851, 0.241644, 0.402719,
		45.033474, 32.516701, 37.294773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.988712, 31.813433, 36.888290>,  <44.415478, 32.347549, 37.012871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.988712, 31.813433, 36.888290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.102978, 31.999821, 37.223255>,  <45.171539, 32.111652, 37.424236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.102978, 31.999821, 37.223255>,  <44.988712, 31.813433, 36.888290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.102978, 31.999821, 37.223255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129140, -0.884576, 0.448161,
		0.949588, -0.019881, -0.312870,
		0.285667, 0.465972, 0.837415,
		45.188679, 32.139614, 37.474480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513954, 31.372595, 37.109989>,  <44.988712, 31.813433, 36.888290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513954, 31.372595, 37.109989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.491932, 31.614069, 37.428116>,  <45.478718, 31.758953, 37.618992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.491932, 31.614069, 37.428116>,  <45.513954, 31.372595, 37.109989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491932, 31.614069, 37.428116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262110, -0.759856, 0.594909,
		0.963466, 0.241214, -0.116399,
		-0.055054, 0.603684, 0.795320,
		45.475414, 31.795174, 37.666714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.169331, 31.322842, 37.496872>,  <45.513954, 31.372595, 37.109989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.169331, 31.322842, 37.496872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.899830, 31.451376, 37.763042>,  <45.738129, 31.528498, 37.922745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.899830, 31.451376, 37.763042>,  <46.169331, 31.322842, 37.496872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.899830, 31.451376, 37.763042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146260, -0.824696, 0.546337,
		0.724335, 0.465423, 0.508645,
		-0.673755, 0.321337, 0.665429,
		45.697704, 31.547777, 37.962669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.502525, 31.186144, 38.181923>,  <46.169331, 31.322842, 37.496872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.502525, 31.186144, 38.181923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.106537, 31.214506, 38.230808>,  <45.868946, 31.231524, 38.260139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.106537, 31.214506, 38.230808>,  <46.502525, 31.186144, 38.181923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.106537, 31.214506, 38.230808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010005, -0.827614, 0.561208,
		0.140940, 0.556800, 0.818602,
		-0.989967, 0.070906, 0.122215,
		45.809547, 31.235779, 38.267471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420265, 30.955105, 38.838642>,  <46.502525, 31.186144, 38.181923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420265, 30.955105, 38.838642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.034718, 30.964460, 38.732498>,  <45.803391, 30.970074, 38.668812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.034718, 30.964460, 38.732498>,  <46.420265, 30.955105, 38.838642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.034718, 30.964460, 38.732498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201532, -0.715453, 0.668962,
		-0.174205, 0.698268, 0.694315,
		-0.963866, 0.023390, -0.265360,
		45.745560, 30.971478, 38.652889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.054867, 30.987616, 39.506466>,  <46.420265, 30.955105, 38.838642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.054867, 30.987616, 39.506466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.812397, 30.857979, 39.215942>,  <45.666916, 30.780197, 39.041630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.812397, 30.857979, 39.215942>,  <46.054867, 30.987616, 39.506466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.812397, 30.857979, 39.215942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296106, -0.755597, 0.584290,
		-0.738157, 0.569244, 0.362058,
		-0.606173, -0.324090, -0.726305,
		45.630547, 30.760752, 38.998051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433960, 30.835260, 39.768353>,  <46.054867, 30.987616, 39.506466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.433960, 30.835260, 39.768353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.422131, 30.624905, 39.428337>,  <45.415035, 30.498692, 39.224327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.422131, 30.624905, 39.428337>,  <45.433960, 30.835260, 39.768353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.422131, 30.624905, 39.428337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209101, -0.828340, 0.519740,
		-0.977447, 0.193112, -0.085471,
		-0.029569, -0.525891, -0.850038,
		45.413261, 30.467138, 39.173325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.858395, 30.425766, 39.833282>,  <45.433960, 30.835260, 39.768353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.858395, 30.425766, 39.833282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.060577, 30.245199, 39.539143>,  <45.181885, 30.136858, 39.362659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.060577, 30.245199, 39.539143>,  <44.858395, 30.425766, 39.833282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060577, 30.245199, 39.539143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322244, -0.889324, 0.324441,
		-0.800422, 0.072972, -0.594978,
		0.505453, -0.451418, -0.735349,
		45.212212, 30.109774, 39.318539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452244, 29.918724, 39.582970>,  <44.858395, 30.425766, 39.833282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.452244, 29.918724, 39.582970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.802845, 29.787607, 39.441952>,  <45.013206, 29.708937, 39.357342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.802845, 29.787607, 39.441952>,  <44.452244, 29.918724, 39.582970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802845, 29.787607, 39.441952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152228, -0.883502, 0.443001,
		-0.456688, -0.334627, -0.824295,
		0.876506, -0.327794, -0.352545,
		45.065796, 29.689270, 39.336189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297100, 29.232187, 39.419701>,  <44.452244, 29.918724, 39.582970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297100, 29.232187, 39.419701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.694824, 29.256475, 39.454731>,  <44.933456, 29.271049, 39.475750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.694824, 29.256475, 39.454731>,  <44.297100, 29.232187, 39.419701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.694824, 29.256475, 39.454731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013276, -0.885963, 0.463566,
		0.105735, -0.459763, -0.881724,
		0.994306, 0.060721, 0.087574,
		44.993114, 29.274693, 39.481003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.445751, 39.063591, 38.143986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198521, 38.773830, 38.266117>,  <40.050182, 38.599976, 38.339397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198521, 38.773830, 38.266117>,  <40.445751, 39.063591, 38.143986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198521, 38.773830, 38.266117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297272, -0.144189, -0.943843,
		0.727746, -0.674131, -0.126225,
		-0.618073, -0.724401, 0.305333,
		40.013100, 38.556511, 38.357716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499378, 38.634991, 37.594521>,  <40.445751, 39.063591, 38.143986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499378, 38.634991, 37.594521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175526, 38.510620, 37.793644>,  <39.981213, 38.435997, 37.913116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175526, 38.510620, 37.793644>,  <40.499378, 38.634991, 37.594521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175526, 38.510620, 37.793644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418841, -0.288098, -0.861145,
		0.411174, -0.905717, 0.103024,
		-0.809635, -0.310930, 0.497810,
		39.932636, 38.417343, 37.942986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454117, 37.964924, 37.406868>,  <40.499378, 38.634991, 37.594521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454117, 37.964924, 37.406868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092510, 38.050575, 37.554871>,  <39.875546, 38.101967, 37.643673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092510, 38.050575, 37.554871>,  <40.454117, 37.964924, 37.406868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092510, 38.050575, 37.554871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422146, -0.310584, -0.851663,
		-0.067449, -0.926113, 0.371167,
		-0.904015, 0.214130, 0.370007,
		39.821304, 38.114815, 37.665871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067753, 37.394634, 37.262829>,  <40.454117, 37.964924, 37.406868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067753, 37.394634, 37.262829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819355, 37.706669, 37.293373>,  <39.670315, 37.893890, 37.311699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819355, 37.706669, 37.293373>,  <40.067753, 37.394634, 37.262829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819355, 37.706669, 37.293373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405877, -0.236691, -0.882747,
		-0.670543, -0.579176, 0.463602,
		-0.620996, 0.780085, 0.076363,
		39.633057, 37.940693, 37.316280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423122, 37.165295, 37.354603>,  <40.067753, 37.394634, 37.262829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423122, 37.165295, 37.354603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364960, 37.533367, 37.209209>,  <39.330063, 37.754211, 37.121971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364960, 37.533367, 37.209209>,  <39.423122, 37.165295, 37.354603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364960, 37.533367, 37.209209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450770, -0.388657, -0.803587,
		-0.880718, 0.047005, 0.471302,
		-0.145402, 0.920183, -0.363486,
		39.321339, 37.809422, 37.100163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776085, 37.176685, 37.126209>,  <39.423122, 37.165295, 37.354603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776085, 37.176685, 37.126209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951466, 37.489338, 36.948753>,  <39.056694, 37.676929, 36.842278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951466, 37.489338, 36.948753>,  <38.776085, 37.176685, 37.126209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951466, 37.489338, 36.948753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423763, -0.255516, -0.868986,
		-0.792580, 0.569009, 0.219193,
		0.438453, 0.781627, -0.443642,
		39.083000, 37.723827, 36.815662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333755, 37.429329, 36.638260>,  <38.776085, 37.176685, 37.126209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333755, 37.429329, 36.638260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674522, 37.596680, 36.512276>,  <38.878983, 37.697090, 36.436684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674522, 37.596680, 36.512276>,  <38.333755, 37.429329, 36.638260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674522, 37.596680, 36.512276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254888, -0.194123, -0.947285,
		-0.457466, 0.887285, -0.058736,
		0.851913, 0.418380, -0.314963,
		38.930096, 37.722195, 36.417786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154312, 37.748947, 36.056915>,  <38.333755, 37.429329, 36.638260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154312, 37.748947, 36.056915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552353, 37.725826, 36.024834>,  <38.791176, 37.711956, 36.005585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552353, 37.725826, 36.024834>,  <38.154312, 37.748947, 36.056915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552353, 37.725826, 36.024834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096695, -0.400270, -0.911281,
		0.020570, 0.914572, -0.403899,
		0.995101, -0.057801, -0.080201,
		38.850883, 37.708485, 36.000774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258595, 38.114712, 35.420498>,  <38.154312, 37.748947, 36.056915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258595, 38.114712, 35.420498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577892, 37.882351, 35.484203>,  <38.769470, 37.742935, 35.522427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577892, 37.882351, 35.484203>,  <38.258595, 38.114712, 35.420498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577892, 37.882351, 35.484203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084452, -0.369736, -0.925291,
		0.596386, 0.725156, -0.344197,
		0.798243, -0.580899, 0.159265,
		38.817364, 37.708080, 35.531982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461254, 37.904251, 34.765995>,  <38.258595, 38.114712, 35.420498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461254, 37.904251, 34.765995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703056, 37.657101, 34.967113>,  <38.848137, 37.508808, 35.087784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703056, 37.657101, 34.967113>,  <38.461254, 37.904251, 34.765995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703056, 37.657101, 34.967113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167755, -0.518278, -0.838598,
		0.778738, 0.591282, -0.209649,
		0.604504, -0.617878, 0.502793,
		38.884407, 37.471737, 35.117950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085175, 37.886345, 34.395809>,  <38.461254, 37.904251, 34.765995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085175, 37.886345, 34.395809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060310, 37.544689, 34.602337>,  <39.045391, 37.339695, 34.726254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060310, 37.544689, 34.602337>,  <39.085175, 37.886345, 34.395809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060310, 37.544689, 34.602337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146660, -0.519521, -0.841777,
		0.987232, 0.023395, 0.157563,
		-0.062163, -0.854137, 0.516319,
		39.041660, 37.288448, 34.757233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623302, 37.408272, 34.144127>,  <39.085175, 37.886345, 34.395809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623302, 37.408272, 34.144127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350925, 37.176632, 34.323441>,  <39.187500, 37.037647, 34.431030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350925, 37.176632, 34.323441>,  <39.623302, 37.408272, 34.144127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350925, 37.176632, 34.323441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055799, -0.651380, -0.756697,
		0.730208, -0.490254, 0.475865,
		-0.680943, -0.579099, 0.448287,
		39.146641, 37.002903, 34.457928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772205, 36.727875, 34.120247>,  <39.623302, 37.408272, 34.144127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772205, 36.727875, 34.120247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374947, 36.714336, 34.165005>,  <39.136593, 36.706215, 34.191860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374947, 36.714336, 34.165005>,  <39.772205, 36.727875, 34.120247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374947, 36.714336, 34.165005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073541, -0.563165, -0.823065,
		0.090874, -0.825651, 0.556814,
		-0.993143, -0.033847, 0.111896,
		39.077003, 36.704182, 34.198574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392113, 35.946060, 34.064156>,  <39.772205, 36.727875, 34.120247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392113, 35.946060, 34.064156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142490, 36.244823, 33.972351>,  <38.992718, 36.424084, 33.917271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142490, 36.244823, 33.972351>,  <39.392113, 35.946060, 34.064156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142490, 36.244823, 33.972351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134732, -0.392181, -0.909967,
		-0.769674, -0.536951, 0.345377,
		-0.624059, 0.746912, -0.229507,
		38.955273, 36.468899, 33.903500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637268, 35.844612, 33.321621>,  <39.392113, 35.946060, 34.064156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637268, 35.844612, 33.321621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825783, 35.505363, 33.224815>,  <39.938892, 35.301815, 33.166733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825783, 35.505363, 33.224815>,  <39.637268, 35.844612, 33.321621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825783, 35.505363, 33.224815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232769, -0.145062, 0.961652,
		-0.850707, -0.509551, 0.129051,
		0.471291, -0.848124, -0.242013,
		39.967171, 35.250927, 33.152210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341457, 35.182377, 33.767384>,  <39.637268, 35.844612, 33.321621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341457, 35.182377, 33.767384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706608, 35.088245, 33.633949>,  <39.925697, 35.031765, 33.553886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706608, 35.088245, 33.633949>,  <39.341457, 35.182377, 33.767384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706608, 35.088245, 33.633949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334493, -0.037301, 0.941660,
		-0.234046, -0.971199, 0.044665,
		0.912873, -0.235332, -0.333590,
		39.980469, 35.017647, 33.533871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533306, 34.577152, 34.247036>,  <39.341457, 35.182377, 33.767384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533306, 34.577152, 34.247036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881695, 34.697994, 34.092041>,  <40.090729, 34.770500, 33.999043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881695, 34.697994, 34.092041>,  <39.533306, 34.577152, 34.247036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881695, 34.697994, 34.092041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470580, -0.286080, 0.834693,
		0.141309, -0.909336, -0.391330,
		0.870969, 0.302102, -0.387490,
		40.142986, 34.788624, 33.975796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942810, 34.062340, 34.372669>,  <39.533306, 34.577152, 34.247036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942810, 34.062340, 34.372669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213875, 34.349144, 34.307339>,  <40.376514, 34.521225, 34.268143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213875, 34.349144, 34.307339>,  <39.942810, 34.062340, 34.372669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213875, 34.349144, 34.307339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468429, -0.249681, 0.847486,
		0.566876, -0.650814, -0.505067,
		0.677662, 0.717008, -0.163322,
		40.417171, 34.564247, 34.258343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604652, 33.780567, 34.707642>,  <39.942810, 34.062340, 34.372669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604652, 33.780567, 34.707642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654915, 34.176910, 34.688023>,  <40.685070, 34.414719, 34.676250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654915, 34.176910, 34.688023>,  <40.604652, 33.780567, 34.707642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654915, 34.176910, 34.688023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503419, -0.021087, 0.863785,
		0.854857, -0.133227, -0.501468,
		0.125654, 0.990861, -0.049043,
		40.692612, 34.474167, 34.673309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311764, 33.938354, 34.998131>,  <40.604652, 33.780567, 34.707642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311764, 33.938354, 34.998131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132580, 34.295826, 35.008495>,  <41.025070, 34.510307, 35.014713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132580, 34.295826, 35.008495>,  <41.311764, 33.938354, 34.998131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132580, 34.295826, 35.008495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475901, 0.213817, 0.853112,
		0.756867, 0.394491, -0.521084,
		-0.447962, 0.893677, 0.025907,
		40.998192, 34.563931, 35.016266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765392, 34.395432, 35.354633>,  <41.311764, 33.938354, 34.998131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765392, 34.395432, 35.354633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433422, 34.617290, 35.378624>,  <41.234241, 34.750404, 35.393017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433422, 34.617290, 35.378624>,  <41.765392, 34.395432, 35.354633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433422, 34.617290, 35.378624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312249, 0.372729, 0.873827,
		0.462310, 0.743935, -0.482524,
		-0.829921, 0.554647, 0.059976,
		41.184444, 34.783684, 35.396618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966133, 35.019352, 35.609436>,  <41.765392, 34.395432, 35.354633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966133, 35.019352, 35.609436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577599, 34.990414, 35.700012>,  <41.344479, 34.973049, 35.754356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577599, 34.990414, 35.700012>,  <41.966133, 35.019352, 35.609436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577599, 34.990414, 35.700012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203472, 0.239516, 0.949332,
		-0.122915, 0.968193, -0.217930,
		-0.971335, -0.072345, 0.226441,
		41.286198, 34.968712, 35.767944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783943, 35.531372, 36.044243>,  <41.966133, 35.019352, 35.609436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783943, 35.531372, 36.044243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493652, 35.270912, 36.133080>,  <41.319477, 35.114635, 36.186382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493652, 35.270912, 36.133080>,  <41.783943, 35.531372, 36.044243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493652, 35.270912, 36.133080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013682, 0.336409, 0.941616,
		-0.687844, 0.680320, -0.253051,
		-0.725729, -0.651148, 0.222089,
		41.275932, 35.075569, 36.199707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412994, 35.848423, 36.470638>,  <41.783943, 35.531372, 36.044243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412994, 35.848423, 36.470638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291962, 35.474579, 36.545418>,  <41.219341, 35.250275, 36.590286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291962, 35.474579, 36.545418>,  <41.412994, 35.848423, 36.470638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291962, 35.474579, 36.545418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128164, 0.234262, 0.963688,
		-0.944466, 0.267636, -0.190667,
		-0.302584, -0.934608, 0.186951,
		41.201187, 35.194195, 36.601501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834236, 35.901928, 37.023178>,  <41.412994, 35.848423, 36.470638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834236, 35.901928, 37.023178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953884, 35.520397, 37.034138>,  <41.025673, 35.291481, 37.040714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953884, 35.520397, 37.034138>,  <40.834236, 35.901928, 37.023178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953884, 35.520397, 37.034138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152552, -0.019461, 0.988104,
		-0.941943, -0.299738, -0.151329,
		0.299117, -0.953823, 0.027395,
		41.043621, 35.234249, 37.042355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418530, 35.812695, 37.524509>,  <40.834236, 35.901928, 37.023178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418530, 35.812695, 37.524509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695160, 35.524921, 37.498772>,  <40.861137, 35.352257, 37.483330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695160, 35.524921, 37.498772>,  <40.418530, 35.812695, 37.524509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695160, 35.524921, 37.498772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006633, -0.082753, 0.996548,
		-0.722273, -0.689616, -0.052458,
		0.691577, -0.719432, -0.064344,
		40.902634, 35.309093, 37.479469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177124, 35.164146, 37.865582>,  <40.418530, 35.812695, 37.524509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177124, 35.164146, 37.865582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576984, 35.171097, 37.857590>,  <40.816902, 35.175266, 37.852795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576984, 35.171097, 37.857590>,  <40.177124, 35.164146, 37.865582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576984, 35.171097, 37.857590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022871, -0.186681, 0.982154,
		0.013333, -0.982267, -0.187012,
		0.999650, 0.017372, -0.019977,
		40.876881, 35.176308, 37.851597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373013, 34.640053, 38.239223>,  <40.177124, 35.164146, 37.865582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373013, 34.640053, 38.239223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725670, 34.827690, 38.218609>,  <40.937263, 34.940273, 38.206242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725670, 34.827690, 38.218609>,  <40.373013, 34.640053, 38.239223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725670, 34.827690, 38.218609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206904, -0.286084, 0.935600,
		0.424144, -0.835526, -0.349282,
		0.881642, 0.469097, -0.051532,
		40.990162, 34.968418, 38.203148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382309, 33.925396, 38.158260>,  <40.373013, 34.640053, 38.239223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382309, 33.925396, 38.158260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219822, 33.576019, 38.265648>,  <40.122330, 33.366394, 38.330082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219822, 33.576019, 38.265648>,  <40.382309, 33.925396, 38.158260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219822, 33.576019, 38.265648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593406, 0.028733, -0.804390,
		0.694876, -0.486074, -0.529980,
		-0.406221, -0.873445, 0.268473,
		40.097954, 33.313984, 38.346191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537773, 33.371941, 37.607533>,  <40.382309, 33.925396, 38.158260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537773, 33.371941, 37.607533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196674, 33.305977, 37.805779>,  <39.992016, 33.266399, 37.924725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196674, 33.305977, 37.805779>,  <40.537773, 33.371941, 37.607533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196674, 33.305977, 37.805779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517038, 0.131766, -0.845760,
		0.074164, -0.977468, -0.197625,
		-0.852743, -0.164904, 0.495616,
		39.940853, 33.256504, 37.954464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105289, 33.237766, 37.109226>,  <40.537773, 33.371941, 37.607533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105289, 33.237766, 37.109226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856140, 33.257683, 37.421520>,  <39.706650, 33.269630, 37.608898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856140, 33.257683, 37.421520>,  <40.105289, 33.237766, 37.109226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856140, 33.257683, 37.421520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768007, 0.151143, -0.622351,
		-0.148990, -0.987257, -0.055904,
		-0.622870, 0.049789, 0.780739,
		39.669277, 33.272621, 37.655743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614304, 32.800209, 36.914112>,  <40.105289, 33.237766, 37.109226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614304, 32.800209, 36.914112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456520, 33.037666, 37.194683>,  <39.361851, 33.180141, 37.363026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456520, 33.037666, 37.194683>,  <39.614304, 32.800209, 36.914112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456520, 33.037666, 37.194683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789588, 0.171501, -0.589184,
		-0.470059, -0.786243, 0.401082,
		-0.394456, 0.593641, 0.701424,
		39.338184, 33.215759, 37.405109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890686, 32.514847, 37.064758>,  <39.614304, 32.800209, 36.914112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890686, 32.514847, 37.064758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897583, 32.892612, 37.196079>,  <38.901722, 33.119270, 37.274872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897583, 32.892612, 37.196079>,  <38.890686, 32.514847, 37.064758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897583, 32.892612, 37.196079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873786, 0.173835, -0.454180,
		-0.486005, -0.279035, 0.828214,
		0.017240, 0.944416, 0.328302,
		38.902756, 33.175938, 37.294571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234951, 32.603081, 37.257324>,  <38.890686, 32.514847, 37.064758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234951, 32.603081, 37.257324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348904, 32.984600, 37.219154>,  <38.417274, 33.213512, 37.196251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348904, 32.984600, 37.219154>,  <38.234951, 32.603081, 37.257324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348904, 32.984600, 37.219154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895844, 0.229498, -0.380519,
		-0.341038, 0.193892, 0.919836,
		0.284880, 0.953801, -0.095429,
		38.434368, 33.270741, 37.190525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752956, 33.047409, 37.619881>,  <38.234951, 32.603081, 37.257324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752956, 33.047409, 37.619881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924324, 33.260071, 37.327633>,  <38.027145, 33.387669, 37.152287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924324, 33.260071, 37.327633>,  <37.752956, 33.047409, 37.619881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924324, 33.260071, 37.327633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856857, -0.017601, -0.515253,
		-0.286797, 0.846778, 0.448013,
		0.428419, 0.531656, -0.730616,
		38.052849, 33.419567, 37.108448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208794, 33.402649, 37.321602>,  <37.752956, 33.047409, 37.619881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208794, 33.402649, 37.321602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501160, 33.457718, 37.054226>,  <37.676579, 33.490761, 36.893799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501160, 33.457718, 37.054226>,  <37.208794, 33.402649, 37.321602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501160, 33.457718, 37.054226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681968, 0.109630, -0.723119,
		-0.026271, 0.984392, 0.174017,
		0.730910, 0.137672, -0.668443,
		37.720432, 33.499020, 36.853691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077171, 34.057968, 36.909336>,  <37.208794, 33.402649, 37.321602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077171, 34.057968, 36.909336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316154, 33.861004, 36.656170>,  <37.459545, 33.742825, 36.504269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316154, 33.861004, 36.656170>,  <37.077171, 34.057968, 36.909336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316154, 33.861004, 36.656170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598295, 0.251809, -0.760681,
		0.533939, 0.833143, -0.144160,
		0.597455, -0.492408, -0.632915,
		37.495392, 33.713280, 36.466297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179546, 34.424591, 36.347733>,  <37.077171, 34.057968, 36.909336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179546, 34.424591, 36.347733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278210, 34.067631, 36.196590>,  <37.337406, 33.853455, 36.105904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278210, 34.067631, 36.196590>,  <37.179546, 34.424591, 36.347733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278210, 34.067631, 36.196590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546945, 0.193676, -0.814457,
		0.800006, 0.407560, -0.440324,
		0.246660, -0.892404, -0.377855,
		37.352207, 33.799908, 36.083233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457573, 34.574703, 35.660233>,  <37.179546, 34.424591, 36.347733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457573, 34.574703, 35.660233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327583, 34.196415, 35.659943>,  <37.249588, 33.969440, 35.659767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327583, 34.196415, 35.659943>,  <37.457573, 34.574703, 35.660233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327583, 34.196415, 35.659943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537537, 0.185344, -0.822619,
		0.778105, -0.266937, -0.568593,
		-0.324973, -0.945723, -0.000729,
		37.230091, 33.912697, 35.659725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436935, 34.381294, 34.930595>,  <37.457573, 34.574703, 35.660233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436935, 34.381294, 34.930595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187634, 34.155483, 35.147060>,  <37.038052, 34.019997, 35.276939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187634, 34.155483, 35.147060>,  <37.436935, 34.381294, 34.930595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187634, 34.155483, 35.147060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645132, -0.019949, -0.763811,
		0.441989, -0.825172, -0.351763,
		-0.623258, -0.564529, 0.541162,
		37.000656, 33.986126, 35.309410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.430847, 32.035175, 41.329071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.042885, 31.992588, 41.416656>,  <41.810108, 31.967035, 41.469208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.042885, 31.992588, 41.416656>,  <42.430847, 32.035175, 41.329071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042885, 31.992588, 41.416656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214448, -0.052275, -0.975336,
		0.115291, -0.992941, 0.027870,
		-0.969907, -0.106471, 0.218961,
		41.751911, 31.960648, 41.482346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282177, 31.748585, 40.715576>,  <42.430847, 32.035175, 41.329071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282177, 31.748585, 40.715576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.945099, 31.868448, 40.894493>,  <41.742851, 31.940367, 41.001842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.945099, 31.868448, 40.894493>,  <42.282177, 31.748585, 40.715576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945099, 31.868448, 40.894493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398678, 0.211019, -0.892484,
		-0.361826, -0.930417, -0.058359,
		-0.842697, 0.299657, 0.447289,
		41.692291, 31.958345, 41.028679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658245, 31.408016, 40.372276>,  <42.282177, 31.748585, 40.715576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658245, 31.408016, 40.372276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.534710, 31.740448, 40.557281>,  <41.460587, 31.939907, 40.668285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.534710, 31.740448, 40.557281>,  <41.658245, 31.408016, 40.372276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534710, 31.740448, 40.557281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546598, 0.242873, -0.801401,
		-0.778362, -0.500315, 0.379258,
		-0.308841, 0.831082, 0.462515,
		41.442059, 31.989773, 40.696037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864887, 31.406168, 40.415077>,  <41.658245, 31.408016, 40.372276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864887, 31.406168, 40.415077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.988064, 31.785843, 40.441040>,  <41.061970, 32.013649, 40.456615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.988064, 31.785843, 40.441040>,  <40.864887, 31.406168, 40.415077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988064, 31.785843, 40.441040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660800, 0.262462, -0.703177,
		-0.684483, 0.173648, 0.708046,
		0.307940, 0.949189, 0.064904,
		41.080444, 32.070599, 40.460510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196705, 31.808601, 40.417389>,  <40.864887, 31.406168, 40.415077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196705, 31.808601, 40.417389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.478367, 32.077393, 40.325638>,  <40.647362, 32.238667, 40.270588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.478367, 32.077393, 40.325638>,  <40.196705, 31.808601, 40.417389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478367, 32.077393, 40.325638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637239, 0.455568, -0.621598,
		-0.313201, 0.583871, 0.749000,
		0.704153, 0.671977, -0.229381,
		40.689613, 32.278984, 40.256824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853035, 32.455868, 40.244701>,  <40.196705, 31.808601, 40.417389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853035, 32.455868, 40.244701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.212337, 32.509144, 40.077183>,  <40.427921, 32.541111, 39.976673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.212337, 32.509144, 40.077183>,  <39.853035, 32.455868, 40.244701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212337, 32.509144, 40.077183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437702, 0.356477, -0.825434,
		0.039349, 0.924761, 0.378507,
		0.898259, 0.133193, -0.418797,
		40.481815, 32.549103, 39.951542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809578, 33.104565, 39.899776>,  <39.853035, 32.455868, 40.244701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809578, 33.104565, 39.899776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.122673, 32.925961, 39.726364>,  <40.310532, 32.818798, 39.622318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.122673, 32.925961, 39.726364>,  <39.809578, 33.104565, 39.899776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122673, 32.925961, 39.726364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360476, 0.242569, -0.900676,
		0.507325, 0.861270, 0.028910,
		0.782738, -0.446514, -0.433528,
		40.357494, 32.792007, 39.596306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123531, 33.740101, 39.477432>,  <39.809578, 33.104565, 39.899776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123531, 33.740101, 39.477432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.236355, 33.391418, 39.317142>,  <40.304047, 33.182209, 39.220970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.236355, 33.391418, 39.317142>,  <40.123531, 33.740101, 39.477432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236355, 33.391418, 39.317142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300771, 0.316282, -0.899724,
		0.911034, 0.374296, -0.172974,
		0.282054, -0.871704, -0.400721,
		40.320972, 33.129906, 39.196926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367893, 33.930779, 38.886650>,  <40.123531, 33.740101, 39.477432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367893, 33.930779, 38.886650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.307384, 33.540695, 38.822041>,  <40.271080, 33.306644, 38.783276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.307384, 33.540695, 38.822041>,  <40.367893, 33.930779, 38.886650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307384, 33.540695, 38.822041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140660, 0.182981, -0.973002,
		0.978434, -0.124464, -0.164852,
		-0.151269, -0.975206, -0.161528,
		40.262005, 33.248135, 38.773582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040401, 34.129326, 38.548065>,  <40.367893, 33.930779, 38.886650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040401, 34.129326, 38.548065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.145210, 34.515121, 38.561386>,  <41.208096, 34.746597, 38.569378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.145210, 34.515121, 38.561386>,  <41.040401, 34.129326, 38.548065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145210, 34.515121, 38.561386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184422, -0.083914, 0.979258,
		0.947276, -0.250448, -0.199860,
		0.262025, 0.964487, 0.033301,
		41.223816, 34.804466, 38.571377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685787, 34.073238, 38.705364>,  <41.040401, 34.129326, 38.548065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685787, 34.073238, 38.705364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.559509, 34.426178, 38.844967>,  <41.483742, 34.637939, 38.928726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.559509, 34.426178, 38.844967>,  <41.685787, 34.073238, 38.705364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559509, 34.426178, 38.844967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438891, -0.190313, 0.878155,
		0.841255, 0.430406, -0.327171,
		-0.315698, 0.882345, 0.349003,
		41.464802, 34.690880, 38.949669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238049, 34.286659, 39.112854>,  <41.685787, 34.073238, 38.705364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238049, 34.286659, 39.112854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.973167, 34.566910, 39.219147>,  <41.814240, 34.735062, 39.282921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.973167, 34.566910, 39.219147>,  <42.238049, 34.286659, 39.112854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973167, 34.566910, 39.219147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484782, 0.130158, 0.864896,
		0.571382, 0.701557, -0.425842,
		-0.662201, 0.700626, 0.265732,
		41.774506, 34.777096, 39.298866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549519, 34.841110, 39.361496>,  <42.238049, 34.286659, 39.112854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549519, 34.841110, 39.361496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.189617, 34.848354, 39.535908>,  <41.973679, 34.852699, 39.640556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.189617, 34.848354, 39.535908>,  <42.549519, 34.841110, 39.361496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189617, 34.848354, 39.535908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434742, 0.124340, 0.891930,
		-0.038061, 0.992074, -0.119749,
		-0.899750, 0.018112, 0.436029,
		41.919693, 34.853786, 39.666718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539318, 35.511520, 39.686497>,  <42.549519, 34.841110, 39.361496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539318, 35.511520, 39.686497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.252728, 35.304668, 39.873787>,  <42.080772, 35.180557, 39.986160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.252728, 35.304668, 39.873787>,  <42.539318, 35.511520, 39.686497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252728, 35.304668, 39.873787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433468, 0.195869, 0.879625,
		-0.546594, 0.833192, 0.083825,
		-0.716478, -0.517133, 0.468223,
		42.037785, 35.149529, 40.014256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498291, 35.848785, 40.226982>,  <42.539318, 35.511520, 39.686497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498291, 35.848785, 40.226982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.322182, 35.509178, 40.343826>,  <42.216515, 35.305416, 40.413933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.322182, 35.509178, 40.343826>,  <42.498291, 35.848785, 40.226982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322182, 35.509178, 40.343826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333028, 0.147710, 0.931276,
		-0.833815, 0.507300, 0.217713,
		-0.440278, -0.849016, 0.292108,
		42.190098, 35.254475, 40.431458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309624, 35.932213, 40.957973>,  <42.498291, 35.848785, 40.226982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309624, 35.932213, 40.957973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.335815, 35.538960, 40.889671>,  <42.351532, 35.303005, 40.848690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.335815, 35.538960, 40.889671>,  <42.309624, 35.932213, 40.957973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335815, 35.538960, 40.889671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432618, -0.126231, 0.892697,
		-0.899196, -0.132326, 0.417056,
		0.065482, -0.983135, -0.170753,
		42.355461, 35.244019, 40.838444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071159, 35.683517, 41.606747>,  <42.309624, 35.932213, 40.957973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071159, 35.683517, 41.606747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.215469, 35.350224, 41.439148>,  <42.302055, 35.150246, 41.338589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.215469, 35.350224, 41.439148>,  <42.071159, 35.683517, 41.606747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215469, 35.350224, 41.439148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381850, -0.277911, 0.881451,
		-0.850900, -0.478001, 0.217908,
		0.360776, -0.833235, -0.418999,
		42.323704, 35.100254, 41.313450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895454, 35.168995, 42.074932>,  <42.071159, 35.683517, 41.606747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895454, 35.168995, 42.074932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.213615, 35.056221, 41.860325>,  <42.404510, 34.988556, 41.731560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.213615, 35.056221, 41.860325>,  <41.895454, 35.168995, 42.074932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213615, 35.056221, 41.860325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510373, -0.165875, 0.843804,
		-0.326893, -0.944986, 0.011956,
		0.795399, -0.281936, -0.536519,
		42.452236, 34.971642, 41.699368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044365, 34.563419, 42.530018>,  <41.895454, 35.168995, 42.074932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044365, 34.563419, 42.530018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.367287, 34.628197, 42.303024>,  <42.561039, 34.667065, 42.166828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.367287, 34.628197, 42.303024>,  <42.044365, 34.563419, 42.530018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367287, 34.628197, 42.303024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582926, -0.068931, 0.809596,
		0.091996, -0.984389, -0.150052,
		0.807301, 0.161949, -0.567484,
		42.609478, 34.676781, 42.132778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495049, 33.994797, 42.582138>,  <42.044365, 34.563419, 42.530018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495049, 33.994797, 42.582138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.746330, 34.279934, 42.457420>,  <42.897099, 34.451015, 42.382591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.746330, 34.279934, 42.457420>,  <42.495049, 33.994797, 42.582138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746330, 34.279934, 42.457420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557823, -0.133282, 0.819188,
		0.542396, -0.688543, -0.481368,
		0.628204, 0.712842, -0.311794,
		42.934792, 34.493786, 42.363884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113682, 33.762444, 42.748020>,  <42.495049, 33.994797, 42.582138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113682, 33.762444, 42.748020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.131699, 34.161068, 42.720196>,  <43.142509, 34.400242, 42.703503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.131699, 34.161068, 42.720196>,  <43.113682, 33.762444, 42.748020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131699, 34.161068, 42.720196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359322, 0.048808, 0.931937,
		0.932126, -0.066974, -0.355887,
		0.045045, 0.996560, -0.069561,
		43.145214, 34.460037, 42.699329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824600, 33.765778, 42.817768>,  <43.113682, 33.762444, 42.748020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824600, 33.765778, 42.817768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.682751, 34.131969, 42.893806>,  <43.597641, 34.351685, 42.939430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.682751, 34.131969, 42.893806>,  <43.824600, 33.765778, 42.817768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682751, 34.131969, 42.893806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584743, 0.058497, 0.809107,
		0.729602, 0.398086, -0.556065,
		-0.354623, 0.915481, 0.190098,
		43.576363, 34.406612, 42.950836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397346, 34.135731, 43.074215>,  <43.824600, 33.765778, 42.817768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397346, 34.135731, 43.074215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.066696, 34.327065, 43.192795>,  <43.868305, 34.441864, 43.263943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.066696, 34.327065, 43.192795>,  <44.397346, 34.135731, 43.074215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066696, 34.327065, 43.192795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409785, 0.150596, 0.899665,
		0.385694, 0.865170, -0.320501,
		-0.826629, 0.478332, 0.296450,
		43.818707, 34.470566, 43.281731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.336781, 35.266918, 45.447395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.694721, 35.154903, 45.308361>,  <35.909485, 35.087696, 45.224941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.694721, 35.154903, 45.308361>,  <35.336781, 35.266918, 45.447395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694721, 35.154903, 45.308361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199268, 0.446180, -0.872477,
		0.399410, 0.850002, 0.343465,
		0.894854, -0.280035, -0.347587,
		35.963177, 35.070892, 45.204086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681065, 35.858368, 45.078236>,  <35.336781, 35.266918, 45.447395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681065, 35.858368, 45.078236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.880878, 35.545433, 44.929424>,  <36.000767, 35.357670, 44.840137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.880878, 35.545433, 44.929424>,  <35.681065, 35.858368, 45.078236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880878, 35.545433, 44.929424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048107, 0.453839, -0.889784,
		0.864955, 0.426584, 0.264347,
		0.499539, -0.782340, -0.372029,
		36.030739, 35.310730, 44.817814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925797, 36.190044, 44.566616>,  <35.681065, 35.858368, 45.078236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925797, 36.190044, 44.566616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.983486, 35.807957, 44.463264>,  <36.018101, 35.578705, 44.401253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.983486, 35.807957, 44.463264>,  <35.925797, 36.190044, 44.566616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983486, 35.807957, 44.463264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091312, 0.247145, -0.964667,
		0.985323, 0.162720, -0.051579,
		0.144223, -0.955218, -0.258376,
		36.026752, 35.521393, 44.385754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457886, 36.124447, 44.023594>,  <35.925797, 36.190044, 44.566616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457886, 36.124447, 44.023594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.247051, 35.786812, 43.984211>,  <36.120548, 35.584232, 43.960579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.247051, 35.786812, 43.984211>,  <36.457886, 36.124447, 44.023594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247051, 35.786812, 43.984211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093310, 0.172647, -0.980554,
		0.844671, -0.507654, -0.169762,
		-0.527091, -0.844086, -0.098461,
		36.088924, 35.533585, 43.954674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712727, 35.738049, 43.443558>,  <36.457886, 36.124447, 44.023594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712727, 35.738049, 43.443558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.327168, 35.645264, 43.495857>,  <36.095833, 35.589592, 43.527237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.327168, 35.645264, 43.495857>,  <36.712727, 35.738049, 43.443558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327168, 35.645264, 43.495857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165103, 0.135397, -0.976939,
		0.208910, -0.963256, -0.168807,
		-0.963897, -0.231962, 0.130750,
		36.037998, 35.575676, 43.535084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665485, 35.539059, 42.819813>,  <36.712727, 35.738049, 43.443558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665485, 35.539059, 42.819813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.291687, 35.524105, 42.961418>,  <36.067410, 35.515133, 43.046383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.291687, 35.524105, 42.961418>,  <36.665485, 35.539059, 42.819813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291687, 35.524105, 42.961418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351038, -0.068448, -0.933856,
		0.059145, -0.996954, 0.050840,
		-0.934491, -0.037386, 0.354017,
		36.011341, 35.512890, 43.067623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259514, 34.909950, 42.568523>,  <36.665485, 35.539059, 42.819813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259514, 34.909950, 42.568523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002396, 35.208740, 42.636444>,  <35.848125, 35.388016, 42.677197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002396, 35.208740, 42.636444>,  <36.259514, 34.909950, 42.568523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002396, 35.208740, 42.636444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398386, -0.136648, -0.906982,
		-0.654291, -0.650656, 0.385422,
		-0.642800, 0.746977, 0.169805,
		35.809555, 35.432835, 42.687386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700523, 34.741367, 42.081966>,  <36.259514, 34.909950, 42.568523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700523, 34.741367, 42.081966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630535, 35.118805, 42.194401>,  <35.588543, 35.345268, 42.261864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630535, 35.118805, 42.194401>,  <35.700523, 34.741367, 42.081966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630535, 35.118805, 42.194401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349684, 0.207325, -0.913640,
		-0.920385, -0.258149, 0.293686,
		-0.174967, 0.943597, 0.281089,
		35.578045, 35.401886, 42.278728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994270, 34.866749, 41.986801>,  <35.700523, 34.741367, 42.081966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994270, 34.866749, 41.986801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.166004, 35.227997, 41.983952>,  <35.269047, 35.444744, 41.982243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.166004, 35.227997, 41.983952>,  <34.994270, 34.866749, 41.986801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166004, 35.227997, 41.983952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462683, 0.213170, -0.860513,
		-0.775625, 0.372746, 0.509378,
		0.429337, 0.903116, -0.007123,
		35.294804, 35.498932, 41.981815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522846, 35.324120, 41.616596>,  <34.994270, 34.866749, 41.986801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522846, 35.324120, 41.616596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.865093, 35.530300, 41.597717>,  <35.070442, 35.654007, 41.586388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.865093, 35.530300, 41.597717>,  <34.522846, 35.324120, 41.616596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865093, 35.530300, 41.597717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220825, 0.281037, -0.933946,
		-0.468137, 0.809525, 0.354285,
		0.855619, 0.515449, -0.047199,
		35.121780, 35.684937, 41.583557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307091, 36.024574, 41.287003>,  <34.522846, 35.324120, 41.616596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307091, 36.024574, 41.287003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.702160, 35.966209, 41.264317>,  <34.939201, 35.931190, 41.250706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.702160, 35.966209, 41.264317>,  <34.307091, 36.024574, 41.287003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702160, 35.966209, 41.264317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018393, 0.251641, -0.967646,
		0.155461, 0.956759, 0.245855,
		0.987671, -0.145909, -0.056718,
		34.998463, 35.922436, 41.247303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559155, 36.633438, 41.102180>,  <34.307091, 36.024574, 41.287003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559155, 36.633438, 41.102180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.838963, 36.372303, 40.985920>,  <35.006847, 36.215622, 40.916164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.838963, 36.372303, 40.985920>,  <34.559155, 36.633438, 41.102180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838963, 36.372303, 40.985920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083577, 0.478668, -0.874009,
		0.709710, 0.587095, 0.389399,
		0.699519, -0.652838, -0.290648,
		35.048817, 36.176453, 40.898727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203396, 37.048630, 40.801376>,  <34.559155, 36.633438, 41.102180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203396, 37.048630, 40.801376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.182354, 36.681709, 40.643494>,  <35.169727, 36.461559, 40.548763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.182354, 36.681709, 40.643494>,  <35.203396, 37.048630, 40.801376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182354, 36.681709, 40.643494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090809, 0.389226, -0.916655,
		0.994478, -0.084066, 0.062823,
		-0.052607, -0.917298, -0.394711,
		35.166573, 36.406521, 40.525082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529644, 37.175507, 40.226482>,  <35.203396, 37.048630, 40.801376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529644, 37.175507, 40.226482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.331841, 36.834606, 40.158226>,  <35.213158, 36.630066, 40.117271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.331841, 36.834606, 40.158226>,  <35.529644, 37.175507, 40.226482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331841, 36.834606, 40.158226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207215, 0.306265, -0.929120,
		0.844108, -0.424102, -0.328053,
		-0.494513, -0.852255, -0.170641,
		35.183487, 36.578930, 40.107033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256611, 37.108871, 40.094509>,  <35.529644, 37.175507, 40.226482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256611, 37.108871, 40.094509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.642403, 37.204540, 40.049648>,  <36.873878, 37.261940, 40.022732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.642403, 37.204540, 40.049648>,  <36.256611, 37.108871, 40.094509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642403, 37.204540, 40.049648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164181, -0.210121, 0.963791,
		0.206942, -0.947971, -0.241924,
		0.964479, 0.239168, -0.112156,
		36.931747, 37.276291, 40.016003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599003, 36.623234, 40.481857>,  <36.256611, 37.108871, 40.094509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599003, 36.623234, 40.481857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.848900, 36.931541, 40.431873>,  <36.998837, 37.116524, 40.401882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.848900, 36.931541, 40.431873>,  <36.599003, 36.623234, 40.481857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848900, 36.931541, 40.431873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266440, -0.060000, 0.961982,
		0.733966, -0.634286, -0.242848,
		0.624743, 0.770766, -0.124962,
		37.036324, 37.162773, 40.394386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200848, 36.363361, 40.737961>,  <36.599003, 36.623234, 40.481857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200848, 36.363361, 40.737961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.219929, 36.762573, 40.754238>,  <37.231377, 37.002102, 40.764004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.219929, 36.762573, 40.754238>,  <37.200848, 36.363361, 40.737961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219929, 36.762573, 40.754238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441076, -0.057598, 0.895620,
		0.896201, -0.024776, -0.442955,
		0.047704, 0.998032, 0.040691,
		37.234241, 37.061981, 40.766445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966846, 36.595718, 40.807575>,  <37.200848, 36.363361, 40.737961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966846, 36.595718, 40.807575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.709808, 36.860222, 40.962395>,  <37.555584, 37.018925, 41.055286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.709808, 36.860222, 40.962395>,  <37.966846, 36.595718, 40.807575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709808, 36.860222, 40.962395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514255, -0.002245, 0.857634,
		0.567990, 0.750151, -0.338615,
		-0.642595, 0.661262, 0.387044,
		37.517029, 37.058601, 41.078506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366890, 36.901199, 41.266003>,  <37.966846, 36.595718, 40.807575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366890, 36.901199, 41.266003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.010601, 37.031311, 41.393009>,  <37.796829, 37.109379, 41.469212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.010601, 37.031311, 41.393009>,  <38.366890, 36.901199, 41.266003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010601, 37.031311, 41.393009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365404, 0.096898, 0.925792,
		0.270374, 0.940641, -0.205166,
		-0.890718, 0.325278, 0.317515,
		37.743385, 37.128895, 41.488262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509048, 37.532719, 41.656437>,  <38.366890, 36.901199, 41.266003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509048, 37.532719, 41.656437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.149853, 37.388977, 41.758011>,  <37.934334, 37.302734, 41.818954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.149853, 37.388977, 41.758011>,  <38.509048, 37.532719, 41.656437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149853, 37.388977, 41.758011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277287, -0.014048, 0.960684,
		-0.341656, 0.933097, 0.112259,
		-0.897988, -0.359351, 0.253936,
		37.880455, 37.281170, 41.834190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189335, 38.028511, 42.064293>,  <38.509048, 37.532719, 41.656437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189335, 38.028511, 42.064293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.045982, 37.665001, 42.149799>,  <37.959972, 37.446896, 42.201103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.045982, 37.665001, 42.149799>,  <38.189335, 38.028511, 42.064293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045982, 37.665001, 42.149799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188221, 0.153944, 0.969987,
		-0.914405, 0.387859, 0.115880,
		-0.358379, -0.908772, 0.213771,
		37.938469, 37.392368, 42.213932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655819, 38.120205, 42.654732>,  <38.189335, 38.028511, 42.064293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655819, 38.120205, 42.654732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.761150, 37.734364, 42.649017>,  <37.824348, 37.502861, 42.645588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.761150, 37.734364, 42.649017>,  <37.655819, 38.120205, 42.654732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761150, 37.734364, 42.649017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050885, -0.028675, 0.998293,
		-0.963363, -0.262154, -0.056634,
		0.263331, -0.964600, -0.014285,
		37.840149, 37.444984, 42.644733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264233, 37.816147, 43.275646>,  <37.655819, 38.120205, 42.654732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264233, 37.816147, 43.275646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.498722, 37.500340, 43.202972>,  <37.639416, 37.310856, 43.159367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.498722, 37.500340, 43.202972>,  <37.264233, 37.816147, 43.275646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498722, 37.500340, 43.202972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049060, -0.189257, 0.980701,
		-0.808665, -0.583820, -0.072213,
		0.586220, -0.789516, -0.181688,
		37.674587, 37.263485, 43.148464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025723, 37.191963, 43.726532>,  <37.264233, 37.816147, 43.275646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025723, 37.191963, 43.726532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.408264, 37.125507, 43.630371>,  <37.637787, 37.085632, 43.572674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.408264, 37.125507, 43.630371>,  <37.025723, 37.191963, 43.726532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408264, 37.125507, 43.630371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204062, -0.209171, 0.956350,
		-0.209171, -0.963663, -0.166138,
		-0.956350, 0.166138, 0.240400,
		37.695168, 37.075665, 43.558250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194824, 36.519978, 44.071018>,  <37.025723, 37.191963, 43.726532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194824, 36.519978, 44.071018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.500805, 36.770321, 44.010151>,  <37.684391, 36.920528, 43.973629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.500805, 36.770321, 44.010151>,  <37.194824, 36.519978, 44.071018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500805, 36.770321, 44.010151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320203, -0.164526, 0.932953,
		0.558860, -0.762387, -0.326256,
		0.764948, 0.625858, -0.152172,
		37.730289, 36.958076, 43.964500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879658, 36.169281, 44.138885>,  <37.194824, 36.519978, 44.071018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879658, 36.169281, 44.138885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.931568, 36.556503, 44.224705>,  <37.962715, 36.788837, 44.276196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.931568, 36.556503, 44.224705>,  <37.879658, 36.169281, 44.138885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931568, 36.556503, 44.224705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308012, -0.245036, 0.919286,
		0.942490, -0.053217, -0.329971,
		0.129777, 0.968052, 0.214553,
		37.970501, 36.846920, 44.289070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462830, 36.073997, 44.556580>,  <37.879658, 36.169281, 44.138885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462830, 36.073997, 44.556580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.350208, 36.446514, 44.649036>,  <38.282635, 36.670025, 44.704510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.350208, 36.446514, 44.649036>,  <38.462830, 36.073997, 44.556580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350208, 36.446514, 44.649036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451585, -0.083939, 0.888271,
		0.846639, 0.354479, -0.396923,
		-0.281556, 0.931289, 0.231143,
		38.265743, 36.725903, 44.718380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098740, 36.429325, 44.646233>,  <38.462830, 36.073997, 44.556580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098740, 36.429325, 44.646233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.809437, 36.615307, 44.850475>,  <38.635853, 36.726894, 44.973019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.809437, 36.615307, 44.850475>,  <39.098740, 36.429325, 44.646233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809437, 36.615307, 44.850475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496475, -0.163850, 0.852447,
		0.480008, 0.870043, -0.112330,
		-0.723260, 0.464950, 0.510604,
		38.592461, 36.754791, 45.003658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591282, 36.804047, 44.308361>,  <39.098740, 36.429325, 44.646233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591282, 36.804047, 44.308361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.970390, 36.892826, 44.216736>,  <40.197857, 36.946095, 44.161762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.970390, 36.892826, 44.216736>,  <39.591282, 36.804047, 44.308361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970390, 36.892826, 44.216736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258785, 0.115314, -0.959027,
		-0.186438, 0.968216, 0.166728,
		0.947772, 0.221946, -0.229061,
		40.254723, 36.959412, 44.148018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669224, 37.416870, 43.946686>,  <39.591282, 36.804047, 44.308361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669224, 37.416870, 43.946686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.025757, 37.263435, 43.850029>,  <40.239677, 37.171375, 43.792034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.025757, 37.263435, 43.850029>,  <39.669224, 37.416870, 43.946686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025757, 37.263435, 43.850029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143767, 0.266336, -0.953098,
		0.429955, 0.884266, 0.182245,
		0.891330, -0.383589, -0.241641,
		40.293156, 37.148357, 43.777538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022728, 37.965969, 43.582870>,  <39.669224, 37.416870, 43.946686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022728, 37.965969, 43.582870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.190815, 37.617741, 43.480480>,  <40.291668, 37.408802, 43.419048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.190815, 37.617741, 43.480480>,  <40.022728, 37.965969, 43.582870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190815, 37.617741, 43.480480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002998, 0.280756, -0.959775,
		0.907418, 0.404082, 0.115369,
		0.420218, -0.870571, -0.255974,
		40.316879, 37.356567, 43.403687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538960, 38.173523, 43.071152>,  <40.022728, 37.965969, 43.582870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538960, 38.173523, 43.071152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.505600, 37.778313, 43.019226>,  <40.485584, 37.541187, 42.988071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.505600, 37.778313, 43.019226>,  <40.538960, 38.173523, 43.071152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505600, 37.778313, 43.019226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054171, 0.134566, -0.989423,
		0.995043, -0.075488, -0.064746,
		-0.083402, -0.988025, -0.129810,
		40.480579, 37.481907, 42.980282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888954, 38.030033, 42.419666>,  <40.538960, 38.173523, 43.071152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888954, 38.030033, 42.419666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.638626, 37.721210, 42.463974>,  <40.488430, 37.535915, 42.490559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.638626, 37.721210, 42.463974>,  <40.888954, 38.030033, 42.419666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638626, 37.721210, 42.463974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187947, 0.011448, -0.982113,
		0.756982, -0.635446, -0.152271,
		-0.625822, -0.772061, 0.110765,
		40.450878, 37.489594, 42.497204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200714, 37.496517, 41.986378>,  <40.888954, 38.030033, 42.419666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200714, 37.496517, 41.986378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.805149, 37.453934, 42.027790>,  <40.567810, 37.428383, 42.052635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.805149, 37.453934, 42.027790>,  <41.200714, 37.496517, 41.986378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805149, 37.453934, 42.027790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103222, -0.008395, -0.994623,
		0.106762, -0.994281, -0.002687,
		-0.988912, -0.106465, 0.103528,
		40.508476, 37.421993, 42.058849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061096, 37.056274, 41.414703>,  <41.200714, 37.496517, 41.986378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061096, 37.056274, 41.414703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.705135, 37.208958, 41.514606>,  <40.491558, 37.300568, 41.574547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.705135, 37.208958, 41.514606>,  <41.061096, 37.056274, 41.414703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705135, 37.208958, 41.514606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149573, 0.273072, -0.950294,
		-0.430939, -0.883022, -0.185913,
		-0.889898, 0.381712, 0.249754,
		40.438168, 37.323471, 41.589531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619778, 36.767578, 40.815430>,  <41.061096, 37.056274, 41.414703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619778, 36.767578, 40.815430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.407211, 37.059116, 40.988121>,  <40.279671, 37.234039, 41.091736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.407211, 37.059116, 40.988121>,  <40.619778, 36.767578, 40.815430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407211, 37.059116, 40.988121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293447, 0.319705, -0.900932,
		-0.794663, -0.605455, 0.043981,
		-0.531413, 0.728844, 0.431726,
		40.247787, 37.277771, 41.117638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973484, 36.719070, 40.628906>,  <40.619778, 36.767578, 40.815430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973484, 36.719070, 40.628906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.011070, 37.100849, 40.742184>,  <40.033623, 37.329918, 40.810150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.011070, 37.100849, 40.742184>,  <39.973484, 36.719070, 40.628906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011070, 37.100849, 40.742184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318201, 0.298321, -0.899863,
		-0.943355, -0.005557, 0.331738,
		0.093964, 0.954449, 0.283191,
		40.039261, 37.387184, 40.827141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394245, 37.044662, 40.358185>,  <39.973484, 36.719070, 40.628906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394245, 37.044662, 40.358185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.630287, 37.361458, 40.420837>,  <39.771912, 37.551533, 40.458427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.630287, 37.361458, 40.420837>,  <39.394245, 37.044662, 40.358185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630287, 37.361458, 40.420837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262442, 0.371659, -0.890502,
		-0.763478, 0.484384, 0.427169,
		0.590106, 0.791986, 0.156631,
		39.807320, 37.599052, 40.467827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023102, 37.603645, 40.201290>,  <39.394245, 37.044662, 40.358185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023102, 37.603645, 40.201290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.386475, 37.770782, 40.206223>,  <39.604500, 37.871067, 40.209183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.386475, 37.770782, 40.206223>,  <39.023102, 37.603645, 40.201290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386475, 37.770782, 40.206223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153571, 0.361014, -0.919829,
		-0.388797, 0.833711, 0.392127,
		0.908435, 0.417845, 0.012327,
		39.659004, 37.896137, 40.209919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921146, 38.248474, 39.951427>,  <39.023102, 37.603645, 40.201290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921146, 38.248474, 39.951427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.305893, 38.170189, 39.875008>,  <39.536743, 38.123219, 39.829155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.305893, 38.170189, 39.875008>,  <38.921146, 38.248474, 39.951427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305893, 38.170189, 39.875008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129866, 0.287950, -0.948799,
		0.240709, 0.937433, 0.251553,
		0.961870, -0.195716, -0.191053,
		39.594456, 38.111473, 39.817692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154747, 38.814651, 39.609634>,  <38.921146, 38.248474, 39.951427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154747, 38.814651, 39.609634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.421242, 38.540489, 39.492092>,  <39.581139, 38.375992, 39.421566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.421242, 38.540489, 39.492092>,  <39.154747, 38.814651, 39.609634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421242, 38.540489, 39.492092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114558, 0.295307, -0.948510,
		0.736891, 0.665593, 0.118225,
		0.666234, -0.685405, -0.293858,
		39.621113, 38.334869, 39.403934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596142, 39.216648, 39.058334>,  <39.154747, 38.814651, 39.609634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596142, 39.216648, 39.058334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.656269, 38.822689, 39.023987>,  <39.692345, 38.586311, 39.003380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.656269, 38.822689, 39.023987>,  <39.596142, 39.216648, 39.058334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656269, 38.822689, 39.023987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026384, 0.082826, -0.996215,
		0.988285, 0.152016, -0.013535,
		0.150320, -0.984901, -0.085866,
		39.701366, 38.527218, 38.998226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.953093, 44.388248, 34.399487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.137980, 44.356544, 34.046200>,  <26.248911, 44.337524, 33.834229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.137980, 44.356544, 34.046200>,  <25.953093, 44.388248, 34.399487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137980, 44.356544, 34.046200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054882, -0.991532, 0.117699,
		-0.885067, -0.102875, -0.453953,
		0.462217, -0.079258, -0.883217,
		26.276646, 44.332767, 33.781235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490425, 43.910233, 33.932186>,  <25.953093, 44.388248, 34.399487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490425, 43.910233, 33.932186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.868298, 43.892792, 33.802155>,  <26.095022, 43.882328, 33.724136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.868298, 43.892792, 33.802155>,  <25.490425, 43.910233, 33.932186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.868298, 43.892792, 33.802155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068429, -0.995515, -0.065320,
		-0.320768, 0.083951, -0.943430,
		0.944682, -0.043606, -0.325075,
		26.151703, 43.879711, 33.704632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499290, 43.353741, 33.431049>,  <25.490425, 43.910233, 33.932186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499290, 43.353741, 33.431049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.882477, 43.395760, 33.537830>,  <26.112389, 43.420971, 33.601898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.882477, 43.395760, 33.537830>,  <25.499290, 43.353741, 33.431049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882477, 43.395760, 33.537830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139961, -0.983423, -0.115286,
		0.250422, 0.147804, -0.956788,
		0.957967, 0.105043, 0.266957,
		26.169867, 43.427273, 33.617916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.935129, 43.081860, 32.843971>,  <25.499290, 43.353741, 33.431049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.935129, 43.081860, 32.843971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.123163, 43.053913, 33.195911>,  <26.235985, 43.037148, 33.407074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.123163, 43.053913, 33.195911>,  <25.935129, 43.081860, 32.843971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.123163, 43.053913, 33.195911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110471, -0.984366, -0.137184,
		0.875679, 0.161686, -0.455020,
		0.470087, -0.069862, 0.879851,
		26.264189, 43.032955, 33.459866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605688, 42.820705, 32.703392>,  <25.935129, 43.081860, 32.843971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605688, 42.820705, 32.703392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.531601, 42.738823, 33.087849>,  <26.487148, 42.689693, 33.318523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.531601, 42.738823, 33.087849>,  <26.605688, 42.820705, 32.703392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.531601, 42.738823, 33.087849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251308, -0.955406, -0.155062,
		0.950021, 0.212822, 0.228401,
		-0.185215, -0.204711, 0.961139,
		26.476036, 42.677410, 33.376190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206459, 42.436245, 32.956940>,  <26.605688, 42.820705, 32.703392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206459, 42.436245, 32.956940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.926458, 42.344929, 33.227608>,  <26.758457, 42.290138, 33.390007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.926458, 42.344929, 33.227608>,  <27.206459, 42.436245, 32.956940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926458, 42.344929, 33.227608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156492, -0.973535, -0.166555,
		0.696782, -0.010696, 0.717203,
		-0.700004, -0.228289, 0.676668,
		26.716457, 42.276443, 33.430607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472971, 41.901237, 33.176857>,  <27.206459, 42.436245, 32.956940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472971, 41.901237, 33.176857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.113546, 41.872471, 33.350021>,  <26.897892, 41.855209, 33.453922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.113546, 41.872471, 33.350021>,  <27.472971, 41.901237, 33.176857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113546, 41.872471, 33.350021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004797, -0.984812, -0.173558,
		0.438822, -0.158029, 0.884569,
		-0.898561, -0.071918, 0.432915,
		26.843979, 41.850895, 33.479897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551741, 41.530632, 33.775326>,  <27.472971, 41.901237, 33.176857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551741, 41.530632, 33.775326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.161894, 41.483463, 33.699203>,  <26.927986, 41.455162, 33.653530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.161894, 41.483463, 33.699203>,  <27.551741, 41.530632, 33.775326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161894, 41.483463, 33.699203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117701, -0.992970, 0.012528,
		-0.190445, -0.010189, 0.981645,
		-0.974617, -0.117926, -0.190305,
		26.869509, 41.448086, 33.642113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247120, 41.014870, 34.328743>,  <27.551741, 41.530632, 33.775326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247120, 41.014870, 34.328743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.996883, 41.010258, 34.016716>,  <26.846741, 41.007492, 33.829498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.996883, 41.010258, 34.016716>,  <27.247120, 41.014870, 34.328743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996883, 41.010258, 34.016716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040505, -0.999022, -0.017716,
		-0.779099, -0.042680, 0.625447,
		-0.625591, -0.011531, -0.780066,
		26.809206, 41.006798, 33.782696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675207, 40.623291, 34.502441>,  <27.247120, 41.014870, 34.328743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675207, 40.623291, 34.502441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.676954, 40.614937, 34.102531>,  <26.678003, 40.609924, 33.862587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.676954, 40.614937, 34.102531>,  <26.675207, 40.623291, 34.502441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676954, 40.614937, 34.102531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178638, -0.983716, 0.019765,
		-0.983905, 0.178511, -0.008026,
		0.004367, -0.020881, -0.999773,
		26.678265, 40.608673, 33.802601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023092, 40.204449, 34.266087>,  <26.675207, 40.623291, 34.502441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023092, 40.204449, 34.266087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.311499, 40.216824, 33.989197>,  <26.484543, 40.224247, 33.823063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.311499, 40.216824, 33.989197>,  <26.023092, 40.204449, 34.266087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311499, 40.216824, 33.989197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056418, -0.993065, -0.103148,
		-0.690616, 0.113426, -0.714271,
		0.721017, 0.030937, -0.692226,
		26.527803, 40.226105, 33.781528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048018, 39.473129, 33.961636>,  <26.023092, 40.204449, 34.266087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048018, 39.473129, 33.961636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.362766, 39.615978, 33.760323>,  <26.551617, 39.701687, 33.639534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.362766, 39.615978, 33.760323>,  <26.048018, 39.473129, 33.961636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362766, 39.615978, 33.760323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286554, -0.933734, -0.214541,
		-0.546551, 0.024598, -0.837064,
		0.786873, 0.357121, -0.503285,
		26.598827, 39.723114, 33.609337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978456, 39.217251, 33.169209>,  <26.048018, 39.473129, 33.961636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.978456, 39.217251, 33.169209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.351973, 39.304821, 33.282425>,  <26.576082, 39.357365, 33.350353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.351973, 39.304821, 33.282425>,  <25.978456, 39.217251, 33.169209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351973, 39.304821, 33.282425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261092, -0.957753, -0.120583,
		0.244681, 0.186498, -0.951499,
		0.933789, 0.218924, 0.283037,
		26.632109, 39.370499, 33.367336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447670, 38.767609, 32.747211>,  <25.978456, 39.217251, 33.169209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447670, 38.767609, 32.747211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.676188, 38.871422, 33.058662>,  <26.813299, 38.933708, 33.245533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.676188, 38.871422, 33.058662>,  <26.447670, 38.767609, 32.747211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676188, 38.871422, 33.058662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463665, -0.884854, -0.045260,
		0.677227, 0.386880, -0.625850,
		0.571296, 0.259533, 0.778629,
		26.847576, 38.949284, 33.292252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095362, 38.564400, 32.546726>,  <26.447670, 38.767609, 32.747211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095362, 38.564400, 32.546726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.106318, 38.601192, 32.944881>,  <27.112890, 38.623268, 33.183773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.106318, 38.601192, 32.944881>,  <27.095362, 38.564400, 32.546726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.106318, 38.601192, 32.944881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338908, -0.937637, 0.077319,
		0.940421, 0.335226, -0.056855,
		0.027390, 0.091981, 0.995384,
		27.114534, 38.628788, 33.243496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689512, 38.308254, 32.786797>,  <27.095362, 38.564400, 32.546726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689512, 38.308254, 32.786797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.475515, 38.288822, 33.124180>,  <27.347116, 38.277164, 33.326611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.475515, 38.288822, 33.124180>,  <27.689512, 38.308254, 32.786797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475515, 38.288822, 33.124180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389928, -0.899854, 0.195498,
		0.749492, 0.433478, 0.500359,
		-0.534994, -0.048580, 0.843458,
		27.315018, 38.274250, 33.377216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090458, 37.938675, 33.376270>,  <27.689512, 38.308254, 32.786797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090458, 37.938675, 33.376270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.710751, 37.926846, 33.501499>,  <27.482925, 37.919746, 33.576637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.710751, 37.926846, 33.501499>,  <28.090458, 37.938675, 33.376270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710751, 37.926846, 33.501499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129558, -0.943931, 0.303661,
		0.286538, 0.328817, 0.899875,
		-0.949268, -0.029575, 0.313073,
		27.425970, 37.917973, 33.595421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167145, 37.659393, 33.930313>,  <28.090458, 37.938675, 33.376270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167145, 37.659393, 33.930313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.780449, 37.608978, 33.841290>,  <27.548431, 37.578732, 33.787876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.780449, 37.608978, 33.841290>,  <28.167145, 37.659393, 33.930313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780449, 37.608978, 33.841290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083686, -0.978133, 0.190402,
		-0.241688, 0.165444, 0.956146,
		-0.966738, -0.126035, -0.222558,
		27.490427, 37.571167, 33.774521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110846, 37.109711, 34.387802>,  <28.167145, 37.659393, 33.930313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110846, 37.109711, 34.387802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.783892, 37.080120, 34.159271>,  <27.587719, 37.062366, 34.022152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.783892, 37.080120, 34.159271>,  <28.110846, 37.109711, 34.387802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783892, 37.080120, 34.159271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010503, -0.989642, 0.143171,
		-0.575997, 0.123026, 0.808141,
		-0.817384, -0.073979, -0.571324,
		27.538677, 37.057926, 33.987873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608145, 37.013470, 34.936237>,  <28.110846, 37.109711, 34.387802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608145, 37.013470, 34.936237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.926222, 37.064087, 35.173439>,  <29.117069, 37.094456, 35.315762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.926222, 37.064087, 35.173439>,  <28.608145, 37.013470, 34.936237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926222, 37.064087, 35.173439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429428, 0.807982, 0.403433,
		-0.428086, -0.575459, 0.696842,
		0.795195, 0.126539, 0.593004,
		29.164780, 37.102047, 35.351341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309151, 37.076832, 35.526455>,  <28.608145, 37.013470, 34.936237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309151, 37.076832, 35.526455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.672472, 37.234142, 35.583473>,  <28.890465, 37.328529, 35.617683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.672472, 37.234142, 35.583473>,  <28.309151, 37.076832, 35.526455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672472, 37.234142, 35.583473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415352, 0.807399, 0.419033,
		0.049704, -0.439816, 0.896712,
		0.908302, 0.393279, 0.142547,
		28.944963, 37.352127, 35.626236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353477, 37.325363, 36.246548>,  <28.309151, 37.076832, 35.526455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353477, 37.325363, 36.246548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674932, 37.524300, 36.115818>,  <28.867805, 37.643661, 36.037380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674932, 37.524300, 36.115818>,  <28.353477, 37.325363, 36.246548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674932, 37.524300, 36.115818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273058, 0.796110, 0.540045,
		0.528776, -0.344759, 0.775588,
		0.803639, 0.497343, -0.326825,
		28.916023, 37.673504, 36.017769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649916, 37.758476, 36.722790>,  <28.353477, 37.325363, 36.246548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649916, 37.758476, 36.722790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.766905, 37.914482, 36.373539>,  <28.837097, 38.008083, 36.163990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.766905, 37.914482, 36.373539>,  <28.649916, 37.758476, 36.722790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766905, 37.914482, 36.373539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317176, 0.900930, 0.296184,
		0.902149, 0.190320, 0.387176,
		0.292449, 0.390006, -0.873138,
		28.854647, 38.031487, 36.111599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240129, 38.284782, 36.848457>,  <28.649916, 37.758476, 36.722790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240129, 38.284782, 36.848457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.026201, 38.351768, 36.517174>,  <28.897844, 38.391960, 36.318405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.026201, 38.351768, 36.517174>,  <29.240129, 38.284782, 36.848457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026201, 38.351768, 36.517174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108147, 0.958536, 0.263653,
		0.838017, 0.230575, -0.494534,
		-0.534820, 0.167463, -0.828205,
		28.865755, 38.402008, 36.268711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137020, 38.936626, 36.818180>,  <29.240129, 38.284782, 36.848457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137020, 38.936626, 36.818180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887077, 38.860329, 36.515347>,  <28.737112, 38.814548, 36.333649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887077, 38.860329, 36.515347>,  <29.137020, 38.936626, 36.818180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887077, 38.860329, 36.515347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258152, 0.965631, -0.030225,
		0.736826, 0.176556, -0.652622,
		-0.624855, -0.190747, -0.757081,
		28.699621, 38.803104, 36.288223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331154, 39.381393, 36.274242>,  <29.137020, 38.936626, 36.818180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331154, 39.381393, 36.274242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.950502, 39.280983, 36.203377>,  <28.722111, 39.220737, 36.160858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.950502, 39.280983, 36.203377>,  <29.331154, 39.381393, 36.274242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950502, 39.280983, 36.203377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241298, 0.967563, -0.074816,
		0.190201, -0.028447, -0.981333,
		-0.951630, -0.251023, -0.177167,
		28.665014, 39.205677, 36.150227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070332, 39.933807, 35.860344>,  <29.331154, 39.381393, 36.274242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070332, 39.933807, 35.860344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.724443, 39.768780, 35.974918>,  <28.516911, 39.669762, 36.043663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.724443, 39.768780, 35.974918>,  <29.070332, 39.933807, 35.860344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724443, 39.768780, 35.974918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454359, 0.885625, -0.096057,
		-0.214044, -0.213207, -0.953272,
		-0.864721, -0.412567, 0.286435,
		28.465027, 39.645008, 36.060848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564247, 40.287971, 35.492481>,  <29.070332, 39.933807, 35.860344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564247, 40.287971, 35.492481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.345264, 40.116821, 35.780151>,  <28.213875, 40.014130, 35.952755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.345264, 40.116821, 35.780151>,  <28.564247, 40.287971, 35.492481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345264, 40.116821, 35.780151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547294, 0.833195, 0.079096,
		-0.633059, -0.350300, -0.690309,
		-0.547455, -0.427874, 0.719178,
		28.181028, 39.988461, 35.995903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894663, 40.452560, 35.330582>,  <28.564247, 40.287971, 35.492481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894663, 40.452560, 35.330582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.906860, 40.354034, 35.718067>,  <27.914179, 40.294918, 35.950558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.906860, 40.354034, 35.718067>,  <27.894663, 40.452560, 35.330582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906860, 40.354034, 35.718067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503295, 0.833549, 0.227795,
		-0.863576, -0.494493, -0.098551,
		0.030496, -0.246318, 0.968709,
		27.916010, 40.280140, 36.008678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190678, 40.427025, 35.600372>,  <27.894663, 40.452560, 35.330582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190678, 40.427025, 35.600372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.429468, 40.501705, 35.912464>,  <27.572742, 40.546513, 36.099720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.429468, 40.501705, 35.912464>,  <27.190678, 40.427025, 35.600372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429468, 40.501705, 35.912464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536407, 0.816076, 0.215144,
		-0.596564, -0.546959, 0.587323,
		0.596975, 0.186697, 0.780234,
		27.608561, 40.557713, 36.146534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726206, 40.693581, 36.144081>,  <27.190678, 40.427025, 35.600372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726206, 40.693581, 36.144081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.097330, 40.781128, 36.264919>,  <27.320005, 40.833656, 36.337421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.097330, 40.781128, 36.264919>,  <26.726206, 40.693581, 36.144081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097330, 40.781128, 36.264919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285981, 0.937292, 0.199245,
		-0.239547, -0.271257, 0.932222,
		0.927811, 0.218869, 0.302099,
		27.375673, 40.846790, 36.355549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676517, 40.848732, 36.819679>,  <26.726206, 40.693581, 36.144081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676517, 40.848732, 36.819679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.024054, 41.040173, 36.768982>,  <27.232574, 41.155037, 36.738564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.024054, 41.040173, 36.768982>,  <26.676517, 40.848732, 36.819679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024054, 41.040173, 36.768982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392724, 0.822105, 0.412202,
		0.301475, -0.308362, 0.902234,
		0.868839, 0.478598, -0.126743,
		27.284704, 41.183750, 36.730961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737949, 41.282734, 37.263176>,  <26.676517, 40.848732, 36.819679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737949, 41.282734, 37.263176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.997858, 41.438526, 37.002071>,  <27.153803, 41.532001, 36.845409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.997858, 41.438526, 37.002071>,  <26.737949, 41.282734, 37.263176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.997858, 41.438526, 37.002071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377536, 0.910705, 0.167581,
		0.659743, 0.137551, 0.738796,
		0.649774, 0.389482, -0.652762,
		27.192791, 41.555370, 36.806244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972952, 41.841690, 37.640705>,  <26.737949, 41.282734, 37.263176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972952, 41.841690, 37.640705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.052788, 41.913284, 37.255348>,  <27.100689, 41.956242, 37.024136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.052788, 41.913284, 37.255348>,  <26.972952, 41.841690, 37.640705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.052788, 41.913284, 37.255348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228048, 0.964664, 0.131975,
		0.952973, 0.193359, 0.233357,
		0.199593, 0.178985, -0.963394,
		27.112665, 41.966980, 36.966331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533833, 42.476181, 37.557220>,  <26.972952, 41.841690, 37.640705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.533833, 42.476181, 37.557220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.304125, 42.423943, 37.233948>,  <27.166300, 42.392601, 37.039986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.304125, 42.423943, 37.233948>,  <27.533833, 42.476181, 37.557220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304125, 42.423943, 37.233948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290352, 0.955511, 0.051913,
		0.765448, 0.264470, -0.586639,
		-0.574270, -0.130595, -0.808183,
		27.131844, 42.384766, 36.991493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641335, 43.044563, 37.148434>,  <27.533833, 42.476181, 37.557220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641335, 43.044563, 37.148434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.300682, 42.896187, 37.000309>,  <27.096291, 42.807163, 36.911434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.300682, 42.896187, 37.000309>,  <27.641335, 43.044563, 37.148434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300682, 42.896187, 37.000309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346909, 0.928523, -0.132282,
		0.392907, 0.015808, -0.919442,
		-0.851633, -0.370938, -0.370307,
		27.045193, 42.784904, 36.889217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448193, 43.473919, 36.431526>,  <27.641335, 43.044563, 37.148434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448193, 43.473919, 36.431526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.105402, 43.292427, 36.529278>,  <26.899729, 43.183533, 36.587929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.105402, 43.292427, 36.529278>,  <27.448193, 43.473919, 36.431526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105402, 43.292427, 36.529278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485194, 0.870187, -0.085796,
		-0.173730, -0.192098, -0.965876,
		-0.856974, -0.453732, 0.244382,
		26.848310, 43.156307, 36.602592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843901, 43.745018, 35.975624>,  <27.448193, 43.473919, 36.431526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843901, 43.745018, 35.975624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.671509, 43.591045, 36.302078>,  <26.568073, 43.498661, 36.497952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.671509, 43.591045, 36.302078>,  <26.843901, 43.745018, 35.975624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671509, 43.591045, 36.302078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627063, 0.778142, 0.035881,
		-0.648884, -0.496307, -0.576741,
		-0.430978, -0.384935, 0.816139,
		26.542215, 43.475563, 36.546921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223778, 43.951981, 35.813717>,  <26.843901, 43.745018, 35.975624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223778, 43.951981, 35.813717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.199934, 43.846809, 36.198906>,  <26.185629, 43.783707, 36.430019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.199934, 43.846809, 36.198906>,  <26.223778, 43.951981, 35.813717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199934, 43.846809, 36.198906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829596, 0.549570, 0.098704,
		-0.555173, -0.792994, -0.250884,
		-0.059607, -0.262930, 0.962972,
		26.182053, 43.767929, 36.487797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500561, 43.791088, 35.967224>,  <26.223778, 43.951981, 35.813717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.500561, 43.791088, 35.967224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.701010, 43.892990, 36.298035>,  <25.821280, 43.954132, 36.496521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.701010, 43.892990, 36.298035>,  <25.500561, 43.791088, 35.967224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.701010, 43.892990, 36.298035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650221, 0.741480, 0.165590,
		-0.571041, -0.620733, 0.537218,
		0.501123, 0.254752, 0.827029,
		25.851347, 43.969418, 36.546143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.949274, 43.941803, 36.456535>,  <25.500561, 43.791088, 35.967224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.949274, 43.941803, 36.456535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.282949, 44.124290, 36.580467>,  <25.483154, 44.233784, 36.654827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.282949, 44.124290, 36.580467>,  <24.949274, 43.941803, 36.456535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.282949, 44.124290, 36.580467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488418, 0.872062, 0.030918,
		-0.256086, -0.177118, 0.950289,
		0.834187, 0.456220, 0.309830,
		25.533205, 44.261158, 36.673416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.820852, 44.418926, 37.093243>,  <24.949274, 43.941803, 36.456535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.820852, 44.418926, 37.093243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.142691, 44.548901, 36.894432>,  <25.335794, 44.626884, 36.775146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.142691, 44.548901, 36.894432>,  <24.820852, 44.418926, 37.093243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.142691, 44.548901, 36.894432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405138, 0.912324, -0.059405,
		0.434149, 0.249163, 0.865698,
		0.804598, 0.324936, -0.497030,
		25.384069, 44.646381, 36.745323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<44.535072, 34.759220, 43.588348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.144417, 34.754276, 43.674160>,  <43.910023, 34.751308, 43.725647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.144417, 34.754276, 43.674160>,  <44.535072, 34.759220, 43.588348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144417, 34.754276, 43.674160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186157, 0.450009, 0.873406,
		-0.107333, 0.892938, -0.437196,
		-0.976640, -0.012358, 0.214527,
		43.851425, 34.750568, 43.738518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.391506, 35.362946, 43.883553>,  <44.535072, 34.759220, 43.588348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.391506, 35.362946, 43.883553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.108292, 35.107929, 44.005024>,  <43.938362, 34.954918, 44.077908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.108292, 35.107929, 44.005024>,  <44.391506, 35.362946, 43.883553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108292, 35.107929, 44.005024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159354, 0.274694, 0.948235,
		-0.687958, 0.719781, -0.092900,
		-0.708040, -0.637542, 0.303677,
		43.895878, 34.916668, 44.096127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.979420, 35.646286, 44.517159>,  <44.391506, 35.362946, 43.883553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.979420, 35.646286, 44.517159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.863701, 35.264843, 44.550480>,  <43.794270, 35.035976, 44.570473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.863701, 35.264843, 44.550480>,  <43.979420, 35.646286, 44.517159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863701, 35.264843, 44.550480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017931, 0.092409, 0.995560,
		-0.957071, 0.286521, -0.043833,
		-0.289300, -0.953607, 0.083304,
		43.776913, 34.978760, 44.575470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499191, 35.716839, 44.964958>,  <43.979420, 35.646286, 44.517159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499191, 35.716839, 44.964958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.586529, 35.326496, 44.963085>,  <43.638931, 35.092289, 44.961964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.586529, 35.326496, 44.963085>,  <43.499191, 35.716839, 44.964958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586529, 35.326496, 44.963085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056356, 0.007822, 0.998380,
		-0.974244, -0.218251, 0.056704,
		0.218341, -0.975861, -0.004679,
		43.652031, 35.033737, 44.961681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041321, 35.452553, 45.442333>,  <43.499191, 35.716839, 44.964958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041321, 35.452553, 45.442333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.318012, 35.165802, 45.407459>,  <43.484028, 34.993752, 45.386536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.318012, 35.165802, 45.407459>,  <43.041321, 35.452553, 45.442333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318012, 35.165802, 45.407459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155660, -0.265905, 0.951349,
		-0.705184, -0.644502, -0.295523,
		0.691727, -0.716876, -0.087189,
		43.525532, 34.950741, 45.381302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740047, 34.705715, 45.752567>,  <43.041321, 35.452553, 45.442333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740047, 34.705715, 45.752567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.139805, 34.693047, 45.746796>,  <43.379658, 34.685444, 45.743332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.139805, 34.693047, 45.746796>,  <42.740047, 34.705715, 45.752567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139805, 34.693047, 45.746796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003638, -0.317185, 0.948357,
		-0.034613, -0.947835, -0.316878,
		0.999394, -0.031672, -0.014427,
		43.439625, 34.683544, 45.742466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.902702, 34.034199, 46.003445>,  <42.740047, 34.705715, 45.752567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.902702, 34.034199, 46.003445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.235336, 34.254051, 46.035374>,  <43.434917, 34.385963, 46.054531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.235336, 34.254051, 46.035374>,  <42.902702, 34.034199, 46.003445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235336, 34.254051, 46.035374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072094, -0.249328, 0.965732,
		0.550695, -0.797336, -0.246963,
		0.831588, 0.549628, 0.079821,
		43.484814, 34.418938, 46.059319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557758, 33.585400, 46.132217>,  <42.902702, 34.034199, 46.003445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557758, 33.585400, 46.132217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.663685, 33.944950, 46.271873>,  <43.727242, 34.160679, 46.355667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.663685, 33.944950, 46.271873>,  <43.557758, 33.585400, 46.132217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663685, 33.944950, 46.271873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062841, -0.377383, 0.923923,
		0.962248, -0.222733, -0.156425,
		0.264820, 0.898873, 0.349139,
		43.743130, 34.214611, 46.376614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143799, 33.421021, 46.519302>,  <43.557758, 33.585400, 46.132217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143799, 33.421021, 46.519302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.007153, 33.785095, 46.612984>,  <43.925163, 34.003540, 46.669193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.007153, 33.785095, 46.612984>,  <44.143799, 33.421021, 46.519302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007153, 33.785095, 46.612984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322301, -0.347539, 0.880533,
		0.882846, 0.225324, 0.412082,
		-0.341620, 0.910190, 0.234202,
		43.904667, 34.058151, 46.683243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.456261, 33.698936, 47.076447>,  <44.143799, 33.421021, 46.519302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.456261, 33.698936, 47.076447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.099754, 33.880157, 47.068596>,  <43.885849, 33.988888, 47.063885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.099754, 33.880157, 47.068596>,  <44.456261, 33.698936, 47.076447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.099754, 33.880157, 47.068596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214991, -0.384046, 0.897935,
		0.399273, 0.804521, 0.439690,
		-0.891269, 0.453051, -0.019626,
		43.832375, 34.016071, 47.062710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.375862, 34.123356, 47.707020>,  <44.456261, 33.698936, 47.076447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.375862, 34.123356, 47.707020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.996834, 34.083408, 47.585598>,  <43.769417, 34.059441, 47.512745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.996834, 34.083408, 47.585598>,  <44.375862, 34.123356, 47.707020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.996834, 34.083408, 47.585598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286678, -0.154008, 0.945567,
		-0.141185, 0.983009, 0.117302,
		-0.947567, -0.099872, -0.303550,
		43.712563, 34.053448, 47.494534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004032, 34.507786, 48.073124>,  <44.375862, 34.123356, 47.707020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004032, 34.507786, 48.073124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.735287, 34.234394, 47.958965>,  <43.574039, 34.070358, 47.890469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.735287, 34.234394, 47.958965>,  <44.004032, 34.507786, 48.073124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735287, 34.234394, 47.958965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250615, -0.152819, 0.955949,
		-0.696989, 0.713792, -0.068617,
		-0.671863, -0.683482, -0.285400,
		43.533730, 34.029350, 47.873344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355835, 34.640026, 48.378277>,  <44.004032, 34.507786, 48.073124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355835, 34.640026, 48.378277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.389210, 34.249531, 48.298275>,  <43.409233, 34.015236, 48.250275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.389210, 34.249531, 48.298275>,  <43.355835, 34.640026, 48.378277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389210, 34.249531, 48.298275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290570, -0.215816, 0.932198,
		-0.953209, -0.019661, -0.301671,
		0.083434, -0.976236, -0.200005,
		43.414242, 33.956661, 48.238274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195404, 35.329720, 48.423695>,  <43.355835, 34.640026, 48.378277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195404, 35.329720, 48.423695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.507534, 35.472691, 48.628960>,  <43.694813, 35.558472, 48.752117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.507534, 35.472691, 48.628960>,  <43.195404, 35.329720, 48.423695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507534, 35.472691, 48.628960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446505, 0.892963, 0.057009,
		-0.437860, -0.273616, 0.856395,
		0.780328, 0.357423, 0.513164,
		43.741631, 35.579918, 48.782909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985661, 35.751331, 48.982601>,  <43.195404, 35.329720, 48.423695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985661, 35.751331, 48.982601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.677723, 35.934437, 49.160496>,  <42.492962, 36.044300, 49.267231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.677723, 35.934437, 49.160496>,  <42.985661, 35.751331, 48.982601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677723, 35.934437, 49.160496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366043, 0.254151, -0.895221,
		-0.522830, -0.851974, -0.028096,
		-0.769845, 0.457764, 0.444737,
		42.446770, 36.071766, 49.293919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341805, 35.463699, 48.735294>,  <42.985661, 35.751331, 48.982601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341805, 35.463699, 48.735294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.263981, 35.834312, 48.864090>,  <42.217289, 36.056683, 48.941368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.263981, 35.834312, 48.864090>,  <42.341805, 35.463699, 48.735294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263981, 35.834312, 48.864090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502099, 0.187926, -0.844145,
		-0.842642, -0.325903, 0.428652,
		-0.194554, 0.926537, 0.321989,
		42.205616, 36.112274, 48.960686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619915, 35.556660, 48.498409>,  <42.341805, 35.463699, 48.735294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619915, 35.556660, 48.498409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.708282, 35.926231, 48.623337>,  <41.761303, 36.147976, 48.698292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.708282, 35.926231, 48.623337>,  <41.619915, 35.556660, 48.498409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708282, 35.926231, 48.623337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399975, 0.377893, -0.834995,
		-0.889502, 0.059550, 0.453035,
		0.220922, 0.923932, 0.312318,
		41.774559, 36.203411, 48.717033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001846, 36.001476, 48.303833>,  <41.619915, 35.556660, 48.498409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001846, 36.001476, 48.303833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.296764, 36.266205, 48.358067>,  <41.473717, 36.425041, 48.390606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.296764, 36.266205, 48.358067>,  <41.001846, 36.001476, 48.303833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296764, 36.266205, 48.358067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161663, 0.367706, -0.915783,
		-0.655942, 0.653284, 0.378101,
		0.737296, 0.661825, 0.135582,
		41.517952, 36.464752, 48.398743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692192, 36.661430, 48.284393>,  <41.001846, 36.001476, 48.303833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692192, 36.661430, 48.284393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.075520, 36.695656, 48.175362>,  <41.305515, 36.716190, 48.109943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.075520, 36.695656, 48.175362>,  <40.692192, 36.661430, 48.284393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075520, 36.695656, 48.175362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284532, 0.371753, -0.883652,
		0.025726, 0.924380, 0.380603,
		0.958321, 0.085561, -0.272580,
		41.363014, 36.721325, 48.093586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723469, 37.306362, 47.995415>,  <40.692192, 36.661430, 48.284393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723469, 37.306362, 47.995415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.052757, 37.122063, 47.862743>,  <41.250332, 37.011482, 47.783142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.052757, 37.122063, 47.862743>,  <40.723469, 37.306362, 47.995415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052757, 37.122063, 47.862743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187689, 0.330499, -0.924956,
		0.535793, 0.823699, 0.185597,
		0.823225, -0.460750, -0.331678,
		41.299725, 36.983837, 47.763241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935261, 37.791100, 47.557686>,  <40.723469, 37.306362, 47.995415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935261, 37.791100, 47.557686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.115356, 37.445763, 47.466534>,  <41.223415, 37.238560, 47.411842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.115356, 37.445763, 47.466534>,  <40.935261, 37.791100, 47.557686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115356, 37.445763, 47.466534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080210, 0.215074, -0.973298,
		0.889297, 0.456497, 0.027587,
		0.450241, -0.863338, -0.227881,
		41.250427, 37.186760, 47.398170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434994, 37.907013, 47.120411>,  <40.935261, 37.791100, 47.557686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434994, 37.907013, 47.120411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.368755, 37.520004, 47.044018>,  <41.329014, 37.287800, 46.998180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.368755, 37.520004, 47.044018>,  <41.434994, 37.907013, 47.120411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368755, 37.520004, 47.044018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030636, 0.188516, -0.981592,
		0.985717, -0.168400, -0.001577,
		-0.165597, -0.967524, -0.190983,
		41.319077, 37.229748, 46.986725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575863, 37.919392, 46.439190>,  <41.434994, 37.907013, 47.120411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575863, 37.919392, 46.439190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.399860, 37.563293, 46.486290>,  <41.294258, 37.349636, 46.514549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.399860, 37.563293, 46.486290>,  <41.575863, 37.919392, 46.439190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399860, 37.563293, 46.486290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170684, -0.045821, -0.984260,
		0.881625, -0.453178, -0.131788,
		-0.440006, -0.890242, 0.117747,
		41.267860, 37.296223, 46.521614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914898, 37.346569, 46.015575>,  <41.575863, 37.919392, 46.439190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914898, 37.346569, 46.015575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.533073, 37.232452, 46.050030>,  <41.303978, 37.163982, 46.070702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.533073, 37.232452, 46.050030>,  <41.914898, 37.346569, 46.015575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533073, 37.232452, 46.050030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038297, -0.169212, -0.984835,
		0.295542, -0.943385, 0.150597,
		-0.954562, -0.285292, 0.086138,
		41.246704, 37.146866, 46.075871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832943, 36.760067, 45.612988>,  <41.914898, 37.346569, 46.015575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832943, 36.760067, 45.612988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.468845, 36.921104, 45.651726>,  <41.250385, 37.017727, 45.674969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.468845, 36.921104, 45.651726>,  <41.832943, 36.760067, 45.612988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468845, 36.921104, 45.651726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165444, -0.139202, -0.976346,
		-0.379589, -0.904733, 0.193314,
		-0.910242, 0.402592, 0.096843,
		41.195774, 37.041882, 45.680779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355022, 36.233376, 45.245205>,  <41.832943, 36.760067, 45.612988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355022, 36.233376, 45.245205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.166740, 36.586067, 45.257793>,  <41.053772, 36.797684, 45.265347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.166740, 36.586067, 45.257793>,  <41.355022, 36.233376, 45.245205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166740, 36.586067, 45.257793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355814, -0.157068, -0.921263,
		-0.807365, -0.444835, 0.387665,
		-0.470700, 0.881732, 0.031467,
		41.025532, 36.850586, 45.267235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655441, 36.041618, 45.060093>,  <41.355022, 36.233376, 45.245205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655441, 36.041618, 45.060093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.700760, 36.435642, 45.008224>,  <40.727951, 36.672058, 44.977104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.700760, 36.435642, 45.008224>,  <40.655441, 36.041618, 45.060093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700760, 36.435642, 45.008224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552645, -0.045980, -0.832148,
		-0.825680, 0.165942, 0.539181,
		0.113297, 0.985063, -0.129672,
		40.734749, 36.731163, 44.969322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995571, 36.263844, 44.725849>,  <40.655441, 36.041618, 45.060093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995571, 36.263844, 44.725849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.248077, 36.558620, 44.629173>,  <40.399582, 36.735485, 44.571167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.248077, 36.558620, 44.629173>,  <39.995571, 36.263844, 44.725849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248077, 36.558620, 44.629173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339616, -0.017505, -0.940401,
		-0.697252, 0.675729, 0.239227,
		0.631269, 0.736942, -0.241693,
		40.437458, 36.779705, 44.556664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454109, 36.645550, 45.278694>,  <39.995571, 36.263844, 44.725849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454109, 36.645550, 45.278694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.070335, 36.719193, 45.364094>,  <38.840069, 36.763378, 45.415333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.070335, 36.719193, 45.364094>,  <39.454109, 36.645550, 45.278694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070335, 36.719193, 45.364094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180054, -0.182550, 0.966569,
		0.216927, 0.965805, 0.141997,
		-0.959439, 0.184108, 0.213497,
		38.782505, 36.774426, 45.428143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355801, 37.132774, 45.861362>,  <39.454109, 36.645550, 45.278694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355801, 37.132774, 45.861362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.026997, 36.906548, 45.834747>,  <38.829712, 36.770809, 45.818779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.026997, 36.906548, 45.834747>,  <39.355801, 37.132774, 45.861362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026997, 36.906548, 45.834747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103140, -0.262762, 0.959332,
		-0.560051, 0.781721, 0.274327,
		-0.822013, -0.565569, -0.066533,
		38.780392, 36.736877, 45.814789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085583, 37.255886, 46.399349>,  <39.355801, 37.132774, 45.861362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085583, 37.255886, 46.399349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.892498, 36.921371, 46.295345>,  <38.776646, 36.720661, 46.232941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.892498, 36.921371, 46.295345>,  <39.085583, 37.255886, 46.399349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892498, 36.921371, 46.295345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090595, -0.342983, 0.934962,
		-0.871081, 0.427761, 0.241326,
		-0.482711, -0.836291, -0.260014,
		38.747684, 36.670483, 46.217342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629059, 37.184978, 46.872540>,  <39.085583, 37.255886, 46.399349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629059, 37.184978, 46.872540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.656132, 36.811214, 46.732658>,  <38.672375, 36.586956, 46.648731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.656132, 36.811214, 46.732658>,  <38.629059, 37.184978, 46.872540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656132, 36.811214, 46.732658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202144, -0.356078, 0.912330,
		-0.977014, 0.008942, -0.212986,
		0.067681, -0.934414, -0.349701,
		38.676437, 36.530891, 46.627747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166248, 36.849297, 47.283882>,  <38.629059, 37.184978, 46.872540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166248, 36.849297, 47.283882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.403278, 36.571247, 47.121075>,  <38.545494, 36.404419, 47.023392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.403278, 36.571247, 47.121075>,  <38.166248, 36.849297, 47.283882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403278, 36.571247, 47.121075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135749, -0.411887, 0.901067,
		-0.793998, -0.589198, -0.149710,
		0.592571, -0.695122, -0.407020,
		38.581051, 36.362709, 46.998970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986141, 36.325485, 47.680786>,  <38.166248, 36.849297, 47.283882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986141, 36.325485, 47.680786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.329178, 36.203392, 47.515198>,  <38.535000, 36.130135, 47.415844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.329178, 36.203392, 47.515198>,  <37.986141, 36.325485, 47.680786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329178, 36.203392, 47.515198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280610, -0.396864, 0.873932,
		-0.431049, -0.865637, -0.254692,
		0.857586, -0.305239, -0.413974,
		38.586452, 36.111820, 47.391006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143791, 35.610958, 47.950111>,  <37.986141, 36.325485, 47.680786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143791, 35.610958, 47.950111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.493515, 35.741066, 47.806011>,  <38.703350, 35.819130, 47.719551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.493515, 35.741066, 47.806011>,  <38.143791, 35.610958, 47.950111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493515, 35.741066, 47.806011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458160, -0.308055, 0.833781,
		0.160225, -0.894037, -0.418361,
		0.874309, 0.325269, -0.360254,
		38.755806, 35.838646, 47.697933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968281, 34.980637, 47.538605>,  <38.143791, 35.610958, 47.950111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968281, 34.980637, 47.538605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.702168, 34.682076, 47.545273>,  <37.542500, 34.502937, 47.549274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.702168, 34.682076, 47.545273>,  <37.968281, 34.980637, 47.538605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702168, 34.682076, 47.545273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372571, 0.312560, -0.873784,
		0.646987, -0.587524, -0.486029,
		-0.665282, -0.746406, 0.016672,
		37.502583, 34.458153, 47.550274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001007, 34.643490, 46.856632>,  <37.968281, 34.980637, 47.538605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001007, 34.643490, 46.856632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.635078, 34.584393, 47.006977>,  <37.415520, 34.548935, 47.097183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.635078, 34.584393, 47.006977>,  <38.001007, 34.643490, 46.856632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635078, 34.584393, 47.006977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402547, 0.258662, -0.878095,
		0.032508, -0.954603, -0.296102,
		-0.914822, -0.147740, 0.375864,
		37.360630, 34.540070, 47.119736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730843, 34.248257, 46.303177>,  <38.001007, 34.643490, 46.856632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730843, 34.248257, 46.303177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.400055, 34.378937, 46.486210>,  <37.201580, 34.457344, 46.596031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.400055, 34.378937, 46.486210>,  <37.730843, 34.248257, 46.303177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400055, 34.378937, 46.486210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534539, -0.204523, -0.820023,
		-0.174306, -0.922737, 0.343764,
		-0.826974, 0.326690, 0.457590,
		37.151962, 34.476948, 46.623486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208279, 33.912022, 46.021515>,  <37.730843, 34.248257, 46.303177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208279, 33.912022, 46.021515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009892, 34.197281, 46.219681>,  <36.890858, 34.368439, 46.338581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009892, 34.197281, 46.219681>,  <37.208279, 33.912022, 46.021515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009892, 34.197281, 46.219681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691316, 0.020949, -0.722249,
		-0.525450, -0.700699, 0.482621,
		-0.495969, 0.713150, 0.495412,
		36.861099, 34.411224, 46.368305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558247, 33.718075, 45.820045>,  <37.208279, 33.912022, 46.021515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558247, 33.718075, 45.820045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.541622, 34.096382, 45.948914>,  <36.531647, 34.323368, 46.026234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.541622, 34.096382, 45.948914>,  <36.558247, 33.718075, 45.820045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541622, 34.096382, 45.948914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600845, 0.233971, -0.764358,
		-0.798285, -0.225340, 0.558536,
		-0.041559, 0.945769, 0.322170,
		36.529156, 34.380112, 46.045567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779289, 33.914818, 45.786945>,  <36.558247, 33.718075, 45.820045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779289, 33.914818, 45.786945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019096, 34.234798, 45.776733>,  <36.162979, 34.426788, 45.770607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019096, 34.234798, 45.776733>,  <35.779289, 33.914818, 45.786945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019096, 34.234798, 45.776733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404817, 0.275555, -0.871890,
		-0.690437, 0.533050, 0.489035,
		0.599517, 0.799955, -0.025535,
		36.198952, 34.474785, 45.769073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385708, 34.511963, 45.541828>,  <35.779289, 33.914818, 45.786945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385708, 34.511963, 45.541828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.757996, 34.656475, 45.519047>,  <35.981369, 34.743183, 45.505379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.757996, 34.656475, 45.519047>,  <35.385708, 34.511963, 45.541828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757996, 34.656475, 45.519047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226007, 0.445684, -0.866191,
		-0.287559, 0.819048, 0.496457,
		0.930715, 0.361284, -0.056950,
		36.037209, 34.764862, 45.501961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<42.502422, 31.296413, 48.384739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.523445, 31.669147, 48.241119>,  <42.536060, 31.892788, 48.154945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.523445, 31.669147, 48.241119>,  <42.502422, 31.296413, 48.384739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523445, 31.669147, 48.241119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160799, -0.346960, -0.923993,
		-0.985587, 0.106299, 0.131602,
		0.052559, 0.931837, -0.359051,
		42.539211, 31.948698, 48.133404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981323, 31.431974, 47.834953>,  <42.502422, 31.296413, 48.384739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981323, 31.431974, 47.834953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.277142, 31.698330, 47.795631>,  <42.454632, 31.858143, 47.772038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.277142, 31.698330, 47.795631>,  <41.981323, 31.431974, 47.834953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277142, 31.698330, 47.795631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082499, -0.234615, -0.968581,
		-0.668031, 0.708200, -0.228444,
		0.739546, 0.665889, -0.098304,
		42.499004, 31.898096, 47.766140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761936, 32.149914, 47.380348>,  <41.981323, 31.431974, 47.834953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761936, 32.149914, 47.380348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.143826, 32.030918, 47.379387>,  <42.372959, 31.959520, 47.378811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.143826, 32.030918, 47.379387>,  <41.761936, 32.149914, 47.380348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143826, 32.030918, 47.379387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059470, -0.182933, -0.981325,
		0.291496, 0.937035, -0.192341,
		0.954722, -0.297491, -0.002401,
		42.430241, 31.941671, 47.378666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925003, 32.398312, 46.709835>,  <41.761936, 32.149914, 47.380348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925003, 32.398312, 46.709835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.233620, 32.160908, 46.801460>,  <42.418789, 32.018463, 46.856434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.233620, 32.160908, 46.801460>,  <41.925003, 32.398312, 46.709835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233620, 32.160908, 46.801460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123499, -0.213474, -0.969111,
		0.624077, 0.775998, -0.091406,
		0.771541, -0.593511, 0.229059,
		42.465080, 31.982855, 46.870178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512497, 32.645367, 46.248524>,  <41.925003, 32.398312, 46.709835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512497, 32.645367, 46.248524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.568665, 32.258606, 46.333736>,  <42.602364, 32.026550, 46.384865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.568665, 32.258606, 46.333736>,  <42.512497, 32.645367, 46.248524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568665, 32.258606, 46.333736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032792, -0.219589, -0.975041,
		0.989549, 0.129927, -0.062541,
		0.140418, -0.966902, 0.213034,
		42.610790, 31.968534, 46.397648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943970, 32.363277, 45.746979>,  <42.512497, 32.645367, 46.248524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943970, 32.363277, 45.746979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.787498, 32.029594, 45.902458>,  <42.693615, 31.829386, 45.995747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.787498, 32.029594, 45.902458>,  <42.943970, 32.363277, 45.746979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787498, 32.029594, 45.902458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039886, -0.406589, -0.912740,
		0.919451, -0.372545, 0.125775,
		-0.391176, -0.834203, 0.388698,
		42.670147, 31.779333, 46.019066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222115, 31.883884, 45.419090>,  <42.943970, 32.363277, 45.746979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222115, 31.883884, 45.419090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.883835, 31.728909, 45.565887>,  <42.680866, 31.635923, 45.653965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.883835, 31.728909, 45.565887>,  <43.222115, 31.883884, 45.419090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883835, 31.728909, 45.565887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204524, -0.399870, -0.893462,
		0.492910, -0.830660, 0.258930,
		-0.845701, -0.387438, 0.366990,
		42.630123, 31.612677, 45.675983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198181, 31.176640, 45.170471>,  <43.222115, 31.883884, 45.419090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198181, 31.176640, 45.170471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.821301, 31.256292, 45.278252>,  <42.595173, 31.304085, 45.342918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.821301, 31.256292, 45.278252>,  <43.198181, 31.176640, 45.170471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821301, 31.256292, 45.278252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324575, -0.342988, -0.881482,
		-0.083111, -0.917990, 0.387797,
		-0.942201, 0.199130, 0.269451,
		42.538639, 31.316032, 45.359085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818432, 30.656107, 44.910690>,  <43.198181, 31.176640, 45.170471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818432, 30.656107, 44.910690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.539288, 30.940922, 44.941666>,  <42.371799, 31.111811, 44.960251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.539288, 30.940922, 44.941666>,  <42.818432, 30.656107, 44.910690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539288, 30.940922, 44.941666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302990, -0.195518, -0.932722,
		-0.648991, -0.674372, 0.352184,
		-0.697860, 0.712036, 0.077438,
		42.329929, 31.154533, 44.964897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346176, 30.416113, 44.393219>,  <42.818432, 30.656107, 44.910690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346176, 30.416113, 44.393219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.191998, 30.773600, 44.485043>,  <42.099491, 30.988092, 44.540134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.191998, 30.773600, 44.485043>,  <42.346176, 30.416113, 44.393219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191998, 30.773600, 44.485043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434340, 0.043763, -0.899685,
		-0.814112, -0.446488, 0.371310,
		-0.385449, 0.893719, 0.229555,
		42.076363, 31.041716, 44.553909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745556, 30.299461, 44.128426>,  <42.346176, 30.416113, 44.393219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745556, 30.299461, 44.128426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.809822, 30.691868, 44.171871>,  <41.848381, 30.927311, 44.197937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.809822, 30.691868, 44.171871>,  <41.745556, 30.299461, 44.128426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809822, 30.691868, 44.171871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488566, 0.174660, -0.854867,
		-0.857607, 0.084287, 0.507352,
		0.160668, 0.981015, 0.108610,
		41.858021, 30.986172, 44.204453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147903, 30.638529, 43.864601>,  <41.745556, 30.299461, 44.128426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147903, 30.638529, 43.864601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.436188, 30.915730, 43.857403>,  <41.609158, 31.082050, 43.853085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.436188, 30.915730, 43.857403>,  <41.147903, 30.638529, 43.864601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436188, 30.915730, 43.857403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283641, 0.271094, -0.919813,
		-0.632555, 0.668023, 0.391944,
		0.720710, 0.693004, -0.017997,
		41.652401, 31.123631, 43.852005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497845, 31.189110, 44.115353>,  <41.147903, 30.638529, 43.864601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497845, 31.189110, 44.115353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.099117, 31.212654, 44.093861>,  <39.859882, 31.226780, 44.080967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.099117, 31.212654, 44.093861>,  <40.497845, 31.189110, 44.115353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099117, 31.212654, 44.093861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062913, -0.167382, 0.983883,
		0.048920, 0.984133, 0.170553,
		-0.996819, 0.058861, -0.053726,
		39.800072, 31.230312, 44.077744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268742, 31.777174, 44.620556>,  <40.497845, 31.189110, 44.115353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268742, 31.777174, 44.620556> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.977974, 31.517210, 44.531826>,  <39.803513, 31.361233, 44.478588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.977974, 31.517210, 44.531826>,  <40.268742, 31.777174, 44.620556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977974, 31.517210, 44.531826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110792, -0.207802, 0.971876,
		-0.677727, 0.731052, 0.079050,
		-0.726919, -0.649909, -0.221828,
		39.759899, 31.322237, 44.465279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635643, 31.955845, 44.975925>,  <40.268742, 31.777174, 44.620556>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635643, 31.955845, 44.975925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.632278, 31.563263, 44.899323>,  <39.630260, 31.327713, 44.853359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.632278, 31.563263, 44.899323>,  <39.635643, 31.955845, 44.975925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632278, 31.563263, 44.899323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345723, -0.176852, 0.921520,
		-0.938299, 0.073964, -0.337823,
		-0.008415, -0.981454, -0.191511,
		39.629753, 31.268827, 44.841869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325912, 31.788740, 45.541405>,  <39.635643, 31.955845, 44.975925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325912, 31.788740, 45.541405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.384594, 31.415392, 45.410378>,  <39.419804, 31.191383, 45.331760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.384594, 31.415392, 45.410378>,  <39.325912, 31.788740, 45.541405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384594, 31.415392, 45.410378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144006, -0.347773, 0.926453,
		-0.978641, -0.088747, -0.185432,
		0.146708, -0.933369, -0.327565,
		39.428608, 31.135382, 45.312107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722687, 31.458189, 45.701550>,  <39.325912, 31.788740, 45.541405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722687, 31.458189, 45.701550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.035126, 31.210133, 45.672409>,  <39.222591, 31.061298, 45.654922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.035126, 31.210133, 45.672409>,  <38.722687, 31.458189, 45.701550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035126, 31.210133, 45.672409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141776, -0.289776, 0.946536,
		-0.608098, -0.729009, -0.314265,
		0.781099, -0.620142, -0.072856,
		39.269455, 31.024090, 45.650551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475567, 30.883724, 46.083927>,  <38.722687, 31.458189, 45.701550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475567, 30.883724, 46.083927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.870499, 30.829506, 46.050922>,  <39.107456, 30.796974, 46.031120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.870499, 30.829506, 46.050922>,  <38.475567, 30.883724, 46.083927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870499, 30.829506, 46.050922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021997, -0.398061, 0.917095,
		-0.157153, -0.907290, -0.390036,
		0.987329, -0.135544, -0.082514,
		39.166698, 30.788843, 46.026169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663834, 30.092077, 46.170197>,  <38.475567, 30.883724, 46.083927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663834, 30.092077, 46.170197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.979527, 30.324045, 46.250999>,  <39.168941, 30.463226, 46.299480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.979527, 30.324045, 46.250999>,  <38.663834, 30.092077, 46.170197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979527, 30.324045, 46.250999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030758, -0.365869, 0.930158,
		0.613327, -0.727896, -0.306592,
		0.789230, 0.579921, 0.202009,
		39.216297, 30.498022, 46.311604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021324, 29.729935, 46.833618>,  <38.663834, 30.092077, 46.170197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021324, 29.729935, 46.833618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.205036, 30.085220, 46.828873>,  <39.315262, 30.298391, 46.826023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.205036, 30.085220, 46.828873>,  <39.021324, 29.729935, 46.833618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205036, 30.085220, 46.828873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025055, 0.026307, 0.999340,
		0.887938, -0.458680, 0.034336,
		0.459280, 0.888213, -0.011867,
		39.342819, 30.351685, 46.825314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336342, 29.627043, 47.476372>,  <39.021324, 29.729935, 46.833618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336342, 29.627043, 47.476372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.359154, 30.017799, 47.393978>,  <39.372841, 30.252253, 47.344543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.359154, 30.017799, 47.393978>,  <39.336342, 29.627043, 47.476372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359154, 30.017799, 47.393978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117065, 0.198355, 0.973114,
		0.991485, -0.079609, -0.103048,
		0.057028, 0.976892, -0.205985,
		39.376263, 30.310867, 47.332184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838326, 29.780293, 47.866085>,  <39.336342, 29.627043, 47.476372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838326, 29.780293, 47.866085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.651936, 30.129913, 47.811100>,  <39.540100, 30.339685, 47.778111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.651936, 30.129913, 47.811100>,  <39.838326, 29.780293, 47.866085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651936, 30.129913, 47.811100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007213, 0.159108, 0.987235,
		0.884766, 0.459039, -0.080446,
		-0.465979, 0.874052, -0.137462,
		39.512142, 30.392130, 47.769863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228199, 30.274178, 48.295010>,  <39.838326, 29.780293, 47.866085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228199, 30.274178, 48.295010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.870586, 30.429764, 48.206100>,  <39.656017, 30.523115, 48.152756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.870586, 30.429764, 48.206100>,  <40.228199, 30.274178, 48.295010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870586, 30.429764, 48.206100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139739, 0.229276, 0.963279,
		0.425643, 0.892266, -0.150628,
		-0.894036, 0.388965, -0.222274,
		39.602375, 30.546453, 48.139420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236572, 30.933779, 48.647186>,  <40.228199, 30.274178, 48.295010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236572, 30.933779, 48.647186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.851883, 30.835375, 48.598907>,  <39.621071, 30.776333, 48.569939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.851883, 30.835375, 48.598907>,  <40.236572, 30.933779, 48.647186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851883, 30.835375, 48.598907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219226, 0.426477, 0.877529,
		-0.164405, 0.870400, -0.464085,
		-0.961723, -0.246010, -0.120699,
		39.563366, 30.761572, 48.562698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860050, 31.515701, 48.979046>,  <40.236572, 30.933779, 48.647186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860050, 31.515701, 48.979046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.616299, 31.199686, 48.952221>,  <39.470047, 31.010077, 48.936127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.616299, 31.199686, 48.952221>,  <39.860050, 31.515701, 48.979046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616299, 31.199686, 48.952221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336361, 0.180996, 0.924176,
		-0.717996, 0.585731, -0.376033,
		-0.609379, -0.790038, -0.067063,
		39.433483, 30.962675, 48.932102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283592, 31.786556, 49.131542>,  <39.860050, 31.515701, 48.979046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283592, 31.786556, 49.131542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.239346, 31.392561, 49.184551>,  <39.212799, 31.156164, 49.216354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.239346, 31.392561, 49.184551>,  <39.283592, 31.786556, 49.131542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239346, 31.392561, 49.184551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302154, 0.160357, 0.939675,
		-0.946820, 0.063901, -0.315356,
		-0.110615, -0.984988, 0.132521,
		39.206161, 31.097065, 49.224308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814285, 32.357185, 48.973003>,  <39.283592, 31.786556, 49.131542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814285, 32.357185, 48.973003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.718742, 32.616776, 49.261940>,  <38.661415, 32.772530, 49.435303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.718742, 32.616776, 49.261940>,  <38.814285, 32.357185, 48.973003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718742, 32.616776, 49.261940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615745, 0.473974, -0.629449,
		-0.750869, -0.595126, 0.286392,
		-0.238859, 0.648978, 0.722339,
		38.647083, 32.811470, 49.478642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104767, 32.378498, 48.996971>,  <38.814285, 32.357185, 48.973003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104767, 32.378498, 48.996971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.210514, 32.714687, 49.186165>,  <38.273964, 32.916401, 49.299679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.210514, 32.714687, 49.186165>,  <38.104767, 32.378498, 48.996971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210514, 32.714687, 49.186165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556059, 0.533542, -0.637284,
		-0.787977, -0.094527, 0.608406,
		0.264369, 0.840475, 0.472981,
		38.289825, 32.966831, 49.328060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528667, 32.790920, 49.114464>,  <38.104767, 32.378498, 48.996971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528667, 32.790920, 49.114464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.839390, 33.042274, 49.097919>,  <38.025822, 33.193085, 49.087994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.839390, 33.042274, 49.097919>,  <37.528667, 32.790920, 49.114464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839390, 33.042274, 49.097919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444300, 0.500331, -0.743146,
		-0.446289, 0.595653, 0.667850,
		0.776803, 0.628384, -0.041357,
		38.072430, 33.230789, 49.085514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282589, 33.397995, 49.120472>,  <37.528667, 32.790920, 49.114464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282589, 33.397995, 49.120472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.647209, 33.471336, 48.973248>,  <37.865982, 33.515339, 48.884914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.647209, 33.471336, 48.973248>,  <37.282589, 33.397995, 49.120472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647209, 33.471336, 48.973248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388199, 0.678874, -0.623243,
		0.135591, 0.710994, 0.690002,
		0.911546, 0.183352, -0.368057,
		37.920673, 33.526340, 48.862831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285431, 34.130486, 49.125420>,  <37.282589, 33.397995, 49.120472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285431, 34.130486, 49.125420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.530788, 33.962742, 48.857723>,  <37.678001, 33.862095, 48.697105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.530788, 33.962742, 48.857723>,  <37.285431, 34.130486, 49.125420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530788, 33.962742, 48.857723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369522, 0.596523, -0.712471,
		0.697999, 0.684326, 0.210941,
		0.613393, -0.419356, -0.669246,
		37.714806, 33.836933, 48.656948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437794, 34.673073, 48.785740>,  <37.285431, 34.130486, 49.125420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437794, 34.673073, 48.785740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.548218, 34.368343, 48.551334>,  <37.614471, 34.185505, 48.410690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.548218, 34.368343, 48.551334>,  <37.437794, 34.673073, 48.785740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548218, 34.368343, 48.551334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404836, 0.460822, -0.789779,
		0.871721, 0.455268, -0.181199,
		0.276061, -0.761823, -0.586017,
		37.631035, 34.139797, 48.375530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833298, 35.014046, 48.229782>,  <37.437794, 34.673073, 48.785740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833298, 35.014046, 48.229782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.679237, 34.659908, 48.125614>,  <37.586800, 34.447426, 48.063114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.679237, 34.659908, 48.125614>,  <37.833298, 35.014046, 48.229782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679237, 34.659908, 48.125614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254315, 0.373093, -0.892259,
		0.887119, -0.277426, -0.368854,
		-0.385153, -0.885345, -0.260424,
		37.563690, 34.394306, 48.047485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608147, 35.062107, 48.153622>,  <37.833298, 35.014046, 48.229782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608147, 35.062107, 48.153622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.831425, 35.390289, 48.104206>,  <38.965393, 35.587200, 48.074554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.831425, 35.390289, 48.104206>,  <38.608147, 35.062107, 48.153622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831425, 35.390289, 48.104206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545963, -0.251090, 0.799299,
		0.624770, -0.513618, -0.588098,
		0.558200, 0.820457, -0.123543,
		38.998886, 35.636425, 48.067142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253445, 34.837067, 48.024963>,  <38.608147, 35.062107, 48.153622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253445, 34.837067, 48.024963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.321289, 35.217850, 48.126957>,  <39.361996, 35.446320, 48.188152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.321289, 35.217850, 48.126957>,  <39.253445, 34.837067, 48.024963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321289, 35.217850, 48.126957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506706, -0.306151, 0.805928,
		0.845270, -0.007492, -0.534287,
		0.169610, 0.951953, 0.254984,
		39.372173, 35.503437, 48.203453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004879, 35.007812, 48.159374>,  <39.253445, 34.837067, 48.024963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004879, 35.007812, 48.159374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.827606, 35.308224, 48.355148>,  <39.721241, 35.488472, 48.472610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.827606, 35.308224, 48.355148>,  <40.004879, 35.007812, 48.159374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827606, 35.308224, 48.355148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486555, -0.257029, 0.834985,
		0.752896, 0.608189, -0.251505,
		-0.443185, 0.751028, 0.489433,
		39.694653, 35.533531, 48.501980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538425, 35.481483, 48.469139>,  <40.004879, 35.007812, 48.159374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538425, 35.481483, 48.469139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.191639, 35.538364, 48.660198>,  <39.983566, 35.572495, 48.774834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.191639, 35.538364, 48.660198>,  <40.538425, 35.481483, 48.469139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191639, 35.538364, 48.660198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472647, -0.069313, 0.878522,
		0.158038, 0.987407, -0.007121,
		-0.866965, 0.142206, 0.477649,
		39.931549, 35.581028, 48.803493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601421, 36.047012, 48.940239>,  <40.538425, 35.481483, 48.469139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601421, 36.047012, 48.940239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.304695, 35.826351, 49.092758>,  <40.126659, 35.693954, 49.184269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.304695, 35.826351, 49.092758>,  <40.601421, 36.047012, 48.940239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304695, 35.826351, 49.092758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457798, -0.001109, 0.889055,
		-0.490024, 0.834075, 0.253367,
		-0.741820, -0.551650, 0.381295,
		40.082150, 35.660858, 49.207146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581795, 36.198288, 49.592167>,  <40.601421, 36.047012, 48.940239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581795, 36.198288, 49.592167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.351135, 35.873150, 49.625072>,  <40.212738, 35.678066, 49.644814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.351135, 35.873150, 49.625072>,  <40.581795, 36.198288, 49.592167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351135, 35.873150, 49.625072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393325, -0.187955, 0.899982,
		-0.716081, 0.551328, 0.428095,
		-0.576648, -0.812841, 0.082260,
		40.178143, 35.629299, 49.649750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227169, 36.244408, 50.280064>,  <40.581795, 36.198288, 49.592167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227169, 36.244408, 50.280064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.239246, 35.865173, 50.153435>,  <40.246494, 35.637630, 50.077457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.239246, 35.865173, 50.153435>,  <40.227169, 36.244408, 50.280064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239246, 35.865173, 50.153435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270273, -0.297170, 0.915774,
		-0.962310, -0.113210, 0.247270,
		0.030194, -0.948089, -0.316568,
		40.248306, 35.580746, 50.058464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823505, 35.858746, 50.775105>,  <40.227169, 36.244408, 50.280064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823505, 35.858746, 50.775105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.065975, 35.609127, 50.577873>,  <40.211456, 35.459358, 50.459534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.065975, 35.609127, 50.577873>,  <39.823505, 35.858746, 50.775105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065975, 35.609127, 50.577873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299679, -0.395061, 0.868400,
		-0.736716, -0.674164, -0.052462,
		0.606170, -0.624043, -0.493081,
		40.247826, 35.421913, 50.429951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750851, 35.226139, 51.043514>,  <39.823505, 35.858746, 50.775105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750851, 35.226139, 51.043514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.115070, 35.215092, 50.878521>,  <40.333603, 35.208466, 50.779526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.115070, 35.215092, 50.878521>,  <39.750851, 35.226139, 51.043514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115070, 35.215092, 50.878521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373703, -0.371653, 0.849835,
		-0.176768, -0.927961, -0.328088,
		0.910548, -0.027616, -0.412479,
		40.388233, 35.206806, 50.754776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.247574, 36.993847, 35.352726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460949, 36.666401, 35.437874>,  <36.588974, 36.469933, 35.488960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460949, 36.666401, 35.437874>,  <36.247574, 36.993847, 35.352726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460949, 36.666401, 35.437874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237248, 0.386368, 0.891310,
		-0.811886, -0.424955, 0.400317,
		0.533436, -0.818617, 0.212867,
		36.620979, 36.420815, 35.501736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901314, 36.762939, 35.917545>,  <36.247574, 36.993847, 35.352726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901314, 36.762939, 35.917545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282143, 36.642334, 35.896927>,  <36.510639, 36.569973, 35.884556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282143, 36.642334, 35.896927>,  <35.901314, 36.762939, 35.917545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282143, 36.642334, 35.896927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229757, 0.593660, 0.771219,
		-0.201933, -0.746096, 0.634479,
		0.952068, -0.301511, -0.051542,
		36.567764, 36.551880, 35.881466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102341, 36.333340, 36.489605>,  <35.901314, 36.762939, 35.917545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102341, 36.333340, 36.489605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452961, 36.479588, 36.364399>,  <36.663334, 36.567337, 36.289276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452961, 36.479588, 36.364399>,  <36.102341, 36.333340, 36.489605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452961, 36.479588, 36.364399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158900, 0.394047, 0.905250,
		0.454325, -0.843235, 0.287303,
		0.876550, 0.365625, -0.313016,
		36.715927, 36.589275, 36.270496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612167, 36.183136, 37.080269>,  <36.102341, 36.333340, 36.489605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612167, 36.183136, 37.080269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764839, 36.457340, 36.832268>,  <36.856441, 36.621861, 36.683468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764839, 36.457340, 36.832268>,  <36.612167, 36.183136, 37.080269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764839, 36.457340, 36.832268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449443, 0.448493, 0.772564,
		0.807662, -0.573529, -0.136914,
		0.381683, 0.685506, -0.620000,
		36.879345, 36.662991, 36.646267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371147, 36.172836, 37.164082>,  <36.612167, 36.183136, 37.080269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371147, 36.172836, 37.164082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221523, 36.521656, 37.037834>,  <37.131748, 36.730946, 36.962086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221523, 36.521656, 37.037834>,  <37.371147, 36.172836, 37.164082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221523, 36.521656, 37.037834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306686, 0.437493, 0.845307,
		0.875226, 0.219402, -0.431094,
		-0.374063, 0.872045, -0.315618,
		37.109306, 36.783268, 36.943150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763157, 36.537071, 37.557396>,  <37.371147, 36.172836, 37.164082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763157, 36.537071, 37.557396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493580, 36.801506, 37.425476>,  <37.331833, 36.960167, 37.346325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493580, 36.801506, 37.425476>,  <37.763157, 36.537071, 37.557396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493580, 36.801506, 37.425476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072666, 0.503566, 0.860895,
		0.735202, 0.556228, -0.387413,
		-0.673942, 0.661083, -0.329804,
		37.291397, 36.999832, 37.326534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053707, 37.071678, 37.631123>,  <37.763157, 36.537071, 37.557396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053707, 37.071678, 37.631123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660847, 37.143448, 37.653667>,  <37.425129, 37.186508, 37.667194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660847, 37.143448, 37.653667>,  <38.053707, 37.071678, 37.631123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660847, 37.143448, 37.653667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106687, 0.284725, 0.952654,
		0.154882, 0.941668, -0.298787,
		-0.982156, 0.179425, 0.056365,
		37.366199, 37.197277, 37.670578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012321, 37.619225, 38.099495>,  <38.053707, 37.071678, 37.631123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012321, 37.619225, 38.099495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631668, 37.499062, 38.073719>,  <37.403278, 37.426964, 38.058254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631668, 37.499062, 38.073719>,  <38.012321, 37.619225, 38.099495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631668, 37.499062, 38.073719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170433, 0.341647, 0.924246,
		-0.255636, 0.890524, -0.376322,
		-0.951632, -0.300408, -0.064437,
		37.346180, 37.408939, 38.054386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542683, 38.202843, 38.309071>,  <38.012321, 37.619225, 38.099495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542683, 38.202843, 38.309071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329231, 37.865738, 38.337349>,  <37.201160, 37.663475, 38.354317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329231, 37.865738, 38.337349>,  <37.542683, 38.202843, 38.309071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329231, 37.865738, 38.337349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246462, 0.234927, 0.940247,
		-0.809009, 0.484321, -0.333072,
		-0.533629, -0.842759, 0.070691,
		37.169144, 37.612911, 38.358555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883778, 38.303062, 38.621307>,  <37.542683, 38.202843, 38.309071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883778, 38.303062, 38.621307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938679, 37.911163, 38.679634>,  <36.971619, 37.676025, 38.714630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938679, 37.911163, 38.679634>,  <36.883778, 38.303062, 38.621307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938679, 37.911163, 38.679634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149889, 0.124970, 0.980773,
		-0.979130, -0.156467, -0.129701,
		0.137249, -0.979745, 0.145815,
		36.979855, 37.617241, 38.723377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281021, 38.044899, 39.029785>,  <36.883778, 38.303062, 38.621307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281021, 38.044899, 39.029785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604813, 37.818050, 39.090599>,  <36.799088, 37.681942, 39.127087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604813, 37.818050, 39.090599>,  <36.281021, 38.044899, 39.029785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604813, 37.818050, 39.090599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260967, -0.115567, 0.958405,
		-0.525962, -0.815486, -0.241549,
		0.809482, -0.567121, 0.152031,
		36.847656, 37.647915, 39.136208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139904, 37.676453, 39.642040>,  <36.281021, 38.044899, 39.029785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139904, 37.676453, 39.642040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521816, 37.566170, 39.597530>,  <36.750961, 37.500000, 39.570824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521816, 37.566170, 39.597530>,  <36.139904, 37.676453, 39.642040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521816, 37.566170, 39.597530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067235, -0.164362, 0.984106,
		-0.289619, -0.947084, -0.138392,
		0.954778, -0.275711, -0.111279,
		36.808250, 37.483456, 39.564148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762745, 36.968712, 39.558773>,  <36.139904, 37.676453, 39.642040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762745, 36.968712, 39.558773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448956, 36.725967, 39.609867>,  <35.260681, 36.580322, 39.640522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448956, 36.725967, 39.609867>,  <35.762745, 36.968712, 39.558773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448956, 36.725967, 39.609867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205249, 0.059700, -0.976887,
		0.585211, -0.792561, -0.171392,
		-0.784475, -0.606863, 0.127735,
		35.213612, 36.543907, 39.648190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830284, 36.528446, 39.039398>,  <35.762745, 36.968712, 39.558773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830284, 36.528446, 39.039398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449493, 36.508888, 39.160290>,  <35.221020, 36.497154, 39.232826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449493, 36.508888, 39.160290>,  <35.830284, 36.528446, 39.039398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449493, 36.508888, 39.160290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300847, -0.033732, -0.953076,
		0.056799, -0.998234, 0.017401,
		-0.951980, -0.048899, 0.302232,
		35.163898, 36.494217, 39.250957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502312, 36.095085, 38.585098>,  <35.830284, 36.528446, 39.039398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502312, 36.095085, 38.585098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176247, 36.272987, 38.733532>,  <34.980606, 36.379726, 38.822590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176247, 36.272987, 38.733532>,  <35.502312, 36.095085, 38.585098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176247, 36.272987, 38.733532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424407, -0.022627, -0.905189,
		-0.394189, -0.895367, 0.207201,
		-0.815165, 0.444753, 0.371081,
		34.931698, 36.406414, 38.844856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041134, 35.666740, 38.416843>,  <35.502312, 36.095085, 38.585098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041134, 35.666740, 38.416843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856049, 36.015205, 38.482533>,  <34.744995, 36.224285, 38.521946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856049, 36.015205, 38.482533>,  <35.041134, 35.666740, 38.416843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856049, 36.015205, 38.482533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494682, -0.100010, -0.863300,
		-0.735652, -0.480700, 0.477226,
		-0.462715, 0.871163, 0.164221,
		34.717236, 36.276554, 38.531799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492031, 35.597214, 38.032848>,  <35.041134, 35.666740, 38.416843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492031, 35.597214, 38.032848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435379, 35.990406, 38.079659>,  <34.401386, 36.226322, 38.107746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435379, 35.990406, 38.079659>,  <34.492031, 35.597214, 38.032848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435379, 35.990406, 38.079659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607803, 0.006962, -0.794058,
		-0.781356, -0.183593, 0.596471,
		-0.141631, 0.982978, 0.117028,
		34.392891, 36.285301, 38.114765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747406, 35.694309, 38.216240>,  <34.492031, 35.597214, 38.032848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747406, 35.694309, 38.216240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886570, 36.044941, 38.083237>,  <33.970066, 36.255322, 38.003433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886570, 36.044941, 38.083237>,  <33.747406, 35.694309, 38.216240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886570, 36.044941, 38.083237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666615, -0.018094, -0.745183,
		-0.659231, 0.480911, 0.578048,
		0.347907, 0.876583, -0.332510,
		33.990944, 36.307915, 37.983482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203823, 36.122437, 38.156666>,  <33.747406, 35.694309, 38.216240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203823, 36.122437, 38.156666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484146, 36.245152, 37.899059>,  <33.652340, 36.318779, 37.744495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484146, 36.245152, 37.899059>,  <33.203823, 36.122437, 38.156666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484146, 36.245152, 37.899059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669665, -0.028146, -0.742129,
		-0.245803, 0.951362, 0.185721,
		0.700806, 0.306788, -0.644012,
		33.694389, 36.337189, 37.705856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796211, 36.313450, 37.636272>,  <33.203823, 36.122437, 38.156666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796211, 36.313450, 37.636272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156666, 36.325722, 37.463291>,  <33.372936, 36.333084, 37.359501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156666, 36.325722, 37.463291>,  <32.796211, 36.313450, 37.636272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156666, 36.325722, 37.463291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425039, -0.134052, -0.895194,
		-0.085433, 0.990499, -0.107760,
		0.901134, 0.030677, -0.432453,
		33.427006, 36.334927, 37.333553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693256, 36.594261, 37.023754>,  <32.796211, 36.313450, 37.636272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693256, 36.594261, 37.023754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034348, 36.391659, 36.972683>,  <33.239002, 36.270096, 36.942039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034348, 36.391659, 36.972683>,  <32.693256, 36.594261, 37.023754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034348, 36.391659, 36.972683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398533, -0.472848, -0.785867,
		0.337674, 0.721016, -0.605072,
		0.852730, -0.506508, -0.127680,
		33.290165, 36.239708, 36.934380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935162, 36.679066, 36.350056>,  <32.693256, 36.594261, 37.023754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935162, 36.679066, 36.350056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124802, 36.341133, 36.449245>,  <33.238586, 36.138374, 36.508759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124802, 36.341133, 36.449245>,  <32.935162, 36.679066, 36.350056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124802, 36.341133, 36.449245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167229, -0.362907, -0.916696,
		0.864445, 0.393135, -0.313334,
		0.474097, -0.844833, 0.247970,
		33.267033, 36.087685, 36.523636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298458, 36.625839, 35.836349>,  <32.935162, 36.679066, 36.350056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298458, 36.625839, 35.836349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271103, 36.258392, 35.992027>,  <33.254688, 36.037926, 36.085434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271103, 36.258392, 35.992027>,  <33.298458, 36.625839, 35.836349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271103, 36.258392, 35.992027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033712, -0.387755, -0.921146,
		0.997089, -0.076117, -0.004449,
		-0.068390, -0.918614, 0.389192,
		33.250587, 35.982807, 36.108784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859200, 36.220779, 35.698620>,  <33.298458, 36.625839, 35.836349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859200, 36.220779, 35.698620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559128, 35.961063, 35.748661>,  <33.379086, 35.805233, 35.778687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559128, 35.961063, 35.748661>,  <33.859200, 36.220779, 35.698620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559128, 35.961063, 35.748661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204287, -0.407527, -0.890050,
		0.628886, -0.642139, 0.438360,
		-0.750179, -0.649292, 0.125108,
		33.334072, 35.766277, 35.786194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005749, 35.558105, 35.786274>,  <33.859200, 36.220779, 35.698620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005749, 35.558105, 35.786274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647106, 35.538795, 35.610199>,  <33.431919, 35.527210, 35.504555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647106, 35.538795, 35.610199>,  <34.005749, 35.558105, 35.786274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647106, 35.538795, 35.610199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421107, -0.400443, -0.813827,
		-0.136978, -0.915049, 0.379371,
		-0.896608, -0.048279, -0.440185,
		33.378124, 35.524311, 35.478142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968178, 34.948372, 35.588108>,  <34.005749, 35.558105, 35.786274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968178, 34.948372, 35.588108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745422, 35.165775, 35.336880>,  <33.611771, 35.296219, 35.186142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745422, 35.165775, 35.336880>,  <33.968178, 34.948372, 35.588108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745422, 35.165775, 35.336880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544774, -0.331789, -0.770154,
		-0.626975, -0.771045, -0.111323,
		-0.556888, 0.543513, -0.628069,
		33.578358, 35.328831, 35.148460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872204, 34.534565, 35.018986>,  <33.968178, 34.948372, 35.588108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872204, 34.534565, 35.018986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847931, 34.928333, 34.952980>,  <33.833366, 35.164597, 34.913376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847931, 34.928333, 34.952980>,  <33.872204, 34.534565, 35.018986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847931, 34.928333, 34.952980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771086, -0.058741, -0.634016,
		-0.633833, -0.165716, -0.755509,
		-0.060687, 0.984423, -0.165013,
		33.829723, 35.223660, 34.903477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699905, 33.799038, 34.985664>,  <33.872204, 34.534565, 35.018986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699905, 33.799038, 34.985664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075092, 33.672298, 34.929348>,  <34.300205, 33.596252, 34.895557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075092, 33.672298, 34.929348>,  <33.699905, 33.799038, 34.985664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075092, 33.672298, 34.929348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120176, 0.677979, -0.725191,
		0.325228, 0.663288, 0.674000,
		0.937968, -0.316851, -0.140787,
		34.356483, 33.577244, 34.887112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987972, 33.102268, 35.020100>,  <33.699905, 33.799038, 34.985664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987972, 33.102268, 35.020100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363930, 32.974609, 34.971523>,  <34.589504, 32.898014, 34.942379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363930, 32.974609, 34.971523>,  <33.987972, 33.102268, 35.020100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363930, 32.974609, 34.971523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016916, -0.398723, 0.916915,
		-0.341049, -0.859748, -0.380156,
		0.939893, -0.319144, -0.121440,
		34.645897, 32.878864, 34.935093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236485, 32.438385, 35.149578>,  <33.987972, 33.102268, 35.020100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236485, 32.438385, 35.149578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565308, 32.655663, 35.217873>,  <34.762604, 32.786030, 35.258850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565308, 32.655663, 35.217873>,  <34.236485, 32.438385, 35.149578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565308, 32.655663, 35.217873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113530, -0.450202, 0.885680,
		0.557967, -0.708699, -0.431763,
		0.822061, 0.543198, 0.170739,
		34.811924, 32.818623, 35.269093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662968, 32.004707, 35.286896>,  <34.236485, 32.438385, 35.149578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662968, 32.004707, 35.286896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795078, 32.334732, 35.470280>,  <34.874344, 32.532749, 35.580311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795078, 32.334732, 35.470280>,  <34.662968, 32.004707, 35.286896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795078, 32.334732, 35.470280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268310, -0.547746, 0.792455,
		0.904946, -0.138720, -0.402281,
		0.330277, 0.825064, 0.458460,
		34.894161, 32.582253, 35.607819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349072, 31.978691, 35.429001>,  <34.662968, 32.004707, 35.286896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349072, 31.978691, 35.429001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280071, 32.256420, 35.708473>,  <35.238670, 32.423058, 35.876156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280071, 32.256420, 35.708473>,  <35.349072, 31.978691, 35.429001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280071, 32.256420, 35.708473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344896, -0.621840, 0.703108,
		0.922654, 0.362260, -0.132201,
		-0.172500, 0.694322, 0.698685,
		35.228321, 32.464718, 35.918079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886536, 31.958961, 35.938751>,  <35.349072, 31.978691, 35.429001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886536, 31.958961, 35.938751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631969, 32.179554, 36.154469>,  <35.479229, 32.311909, 36.283901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631969, 32.179554, 36.154469>,  <35.886536, 31.958961, 35.938751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631969, 32.179554, 36.154469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209727, -0.549107, 0.809009,
		0.742286, 0.627972, 0.233800,
		-0.636416, 0.551482, 0.539298,
		35.441044, 32.344997, 36.316257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251495, 32.455723, 36.389309>,  <35.886536, 31.958961, 35.938751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251495, 32.455723, 36.389309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888363, 32.429256, 36.554947>,  <35.670483, 32.413376, 36.654327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888363, 32.429256, 36.554947>,  <36.251495, 32.455723, 36.389309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888363, 32.429256, 36.554947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405876, -0.386897, 0.827995,
		0.105426, 0.919746, 0.378091,
		-0.907827, -0.066166, 0.414091,
		35.616016, 32.409405, 36.679173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391434, 32.735245, 36.947655>,  <36.251495, 32.455723, 36.389309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391434, 32.735245, 36.947655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067345, 32.512791, 37.021687>,  <35.872890, 32.379318, 37.066105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067345, 32.512791, 37.021687>,  <36.391434, 32.735245, 36.947655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067345, 32.512791, 37.021687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320020, -0.155204, 0.934611,
		-0.491043, 0.816473, 0.303724,
		-0.810224, -0.556133, 0.185076,
		35.824276, 32.345951, 37.077209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196312, 32.978333, 37.501698>,  <36.391434, 32.735245, 36.947655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196312, 32.978333, 37.501698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026466, 32.616234, 37.495583>,  <35.924557, 32.398975, 37.491913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026466, 32.616234, 37.495583>,  <36.196312, 32.978333, 37.501698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026466, 32.616234, 37.495583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175580, -0.098902, 0.979485,
		-0.888185, 0.413220, 0.200938,
		-0.424616, -0.905245, -0.015290,
		35.899082, 32.344662, 37.490997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831207, 32.867702, 38.237522>,  <36.196312, 32.978333, 37.501698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831207, 32.867702, 38.237522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891449, 32.517242, 38.054356>,  <35.927593, 32.306969, 37.944454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891449, 32.517242, 38.054356>,  <35.831207, 32.867702, 38.237522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891449, 32.517242, 38.054356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239593, -0.417041, 0.876740,
		-0.959121, -0.241755, 0.147110,
		0.150606, -0.876146, -0.457915,
		35.936630, 32.254398, 37.916981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407116, 32.367851, 38.638897>,  <35.831207, 32.867702, 38.237522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407116, 32.367851, 38.638897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703125, 32.184486, 38.442028>,  <35.880730, 32.074467, 38.323906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703125, 32.184486, 38.442028>,  <35.407116, 32.367851, 38.638897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703125, 32.184486, 38.442028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364659, -0.341410, 0.866293,
		-0.565152, -0.820545, -0.085485,
		0.740018, -0.458415, -0.492168,
		35.925129, 32.046963, 38.294376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456951, 31.776461, 38.986866>,  <35.407116, 32.367851, 38.638897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456951, 31.776461, 38.986866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810005, 31.775900, 38.798847>,  <36.021839, 31.775562, 38.686035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810005, 31.775900, 38.798847>,  <35.456951, 31.776461, 38.986866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810005, 31.775900, 38.798847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442859, -0.332715, 0.832572,
		-0.157562, -0.943026, -0.293045,
		0.882638, -0.001404, -0.470051,
		36.074799, 31.775478, 38.657833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819534, 31.048447, 39.031990>,  <35.456951, 31.776461, 38.986866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819534, 31.048447, 39.031990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087189, 31.338474, 38.966831>,  <36.247780, 31.512491, 38.927734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087189, 31.338474, 38.966831>,  <35.819534, 31.048447, 39.031990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087189, 31.338474, 38.966831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504582, -0.282354, 0.815888,
		0.545578, -0.628135, -0.554789,
		0.669134, 0.725067, -0.162900,
		36.287930, 31.555994, 38.917961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437099, 30.785738, 39.168297>,  <35.819534, 31.048447, 39.031990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437099, 30.785738, 39.168297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489449, 31.180685, 39.204021>,  <36.520859, 31.417654, 39.225456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489449, 31.180685, 39.204021>,  <36.437099, 30.785738, 39.168297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489449, 31.180685, 39.204021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576366, -0.149072, 0.803479,
		0.806643, -0.053681, -0.588596,
		0.130875, 0.987368, 0.089309,
		36.528709, 31.476896, 39.230816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104023, 30.822470, 39.312817>,  <36.437099, 30.785738, 39.168297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104023, 30.822470, 39.312817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047485, 31.208982, 39.398907>,  <37.013565, 31.440889, 39.450562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047485, 31.208982, 39.398907>,  <37.104023, 30.822470, 39.312817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047485, 31.208982, 39.398907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589210, -0.092594, 0.802657,
		0.795522, 0.240260, -0.556256,
		-0.141340, 0.966282, 0.215224,
		37.005085, 31.498867, 39.463474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781326, 31.040766, 39.604591>,  <37.104023, 30.822470, 39.312817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781326, 31.040766, 39.604591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544987, 31.343090, 39.717484>,  <37.403183, 31.524485, 39.785217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544987, 31.343090, 39.717484>,  <37.781326, 31.040766, 39.604591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544987, 31.343090, 39.717484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599869, 0.177630, 0.780131,
		0.539498, 0.630239, -0.558338,
		-0.590847, 0.755809, 0.282229,
		37.367733, 31.569832, 39.802151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135357, 31.776413, 39.590794>,  <37.781326, 31.040766, 39.604591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135357, 31.776413, 39.590794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847115, 31.766256, 39.867943>,  <37.674168, 31.760162, 40.034233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847115, 31.766256, 39.867943>,  <38.135357, 31.776413, 39.590794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847115, 31.766256, 39.867943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644999, 0.342060, 0.683353,
		-0.254358, 0.939335, -0.230113,
		-0.720610, -0.025393, 0.692876,
		37.630932, 31.758638, 40.075806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316998, 32.424206, 39.951019>,  <38.135357, 31.776413, 39.590794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316998, 32.424206, 39.951019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055801, 32.239262, 40.190960>,  <37.899082, 32.128296, 40.334927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055801, 32.239262, 40.190960>,  <38.316998, 32.424206, 39.951019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055801, 32.239262, 40.190960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593657, 0.179343, 0.784479,
		-0.470293, 0.868365, 0.157375,
		-0.652990, -0.462362, 0.599855,
		37.859905, 32.100552, 40.370914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203678, 32.727943, 40.594990>,  <38.316998, 32.424206, 39.951019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203678, 32.727943, 40.594990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094585, 32.356560, 40.695847>,  <38.029129, 32.133728, 40.756363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094585, 32.356560, 40.695847>,  <38.203678, 32.727943, 40.594990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094585, 32.356560, 40.695847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488399, 0.092190, 0.867737,
		-0.828906, 0.359806, 0.428317,
		-0.272730, -0.928461, 0.252146,
		38.012768, 32.078022, 40.771492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969749, 32.771065, 41.253384>,  <38.203678, 32.727943, 40.594990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969749, 32.771065, 41.253384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082939, 32.389736, 41.211231>,  <38.150852, 32.160938, 41.185940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082939, 32.389736, 41.211231>,  <37.969749, 32.771065, 41.253384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082939, 32.389736, 41.211231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407365, 0.019993, 0.913047,
		-0.868319, -0.301300, 0.394006,
		0.282978, -0.953320, -0.105379,
		38.167831, 32.103741, 41.179619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809258, 32.405567, 41.877777>,  <37.969749, 32.771065, 41.253384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809258, 32.405567, 41.877777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082195, 32.158215, 41.721825>,  <38.245960, 32.009804, 41.628254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082195, 32.158215, 41.721825>,  <37.809258, 32.405567, 41.877777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082195, 32.158215, 41.721825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402739, -0.127103, 0.906447,
		-0.610083, -0.775534, 0.162317,
		0.682349, -0.618379, -0.389881,
		38.286900, 31.972700, 41.604858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902725, 31.997219, 42.386894>,  <37.809258, 32.405567, 41.877777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902725, 31.997219, 42.386894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223080, 31.877066, 42.179684>,  <38.415291, 31.804974, 42.055359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223080, 31.877066, 42.179684>,  <37.902725, 31.997219, 42.386894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223080, 31.877066, 42.179684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469386, -0.222259, 0.854563,
		-0.371833, -0.927562, -0.037009,
		0.800885, -0.300383, -0.518028,
		38.463345, 31.786951, 42.024277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977863, 31.307009, 42.581406>,  <37.902725, 31.997219, 42.386894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977863, 31.307009, 42.581406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330631, 31.421581, 42.431641>,  <38.542290, 31.490324, 42.341782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330631, 31.421581, 42.431641>,  <37.977863, 31.307009, 42.581406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330631, 31.421581, 42.431641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457536, -0.328839, 0.826151,
		0.113514, -0.899902, -0.421061,
		0.881915, 0.286430, -0.374410,
		38.595207, 31.507509, 42.319317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456097, 30.804573, 42.712555>,  <37.977863, 31.307009, 42.581406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456097, 30.804573, 42.712555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671700, 31.140549, 42.687332>,  <38.801060, 31.342134, 42.672199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671700, 31.140549, 42.687332>,  <38.456097, 30.804573, 42.712555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671700, 31.140549, 42.687332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645970, -0.364163, 0.670901,
		0.540551, -0.402355, -0.738861,
		0.539006, 0.839938, -0.063060,
		38.833401, 31.392530, 42.668415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084774, 30.474358, 42.840744>,  <38.456097, 30.804573, 42.712555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084774, 30.474358, 42.840744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164276, 30.862684, 42.894432>,  <39.211979, 31.095680, 42.926643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164276, 30.862684, 42.894432>,  <39.084774, 30.474358, 42.840744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164276, 30.862684, 42.894432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550136, -0.223857, 0.804511,
		0.811077, -0.086064, -0.578574,
		0.198757, 0.970815, 0.134219,
		39.223904, 31.153929, 42.934696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750774, 30.532774, 43.008911>,  <39.084774, 30.474358, 42.840744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750774, 30.532774, 43.008911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582703, 30.872375, 43.137058>,  <39.481857, 31.076138, 43.213947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582703, 30.872375, 43.137058>,  <39.750774, 30.532774, 43.008911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582703, 30.872375, 43.137058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427116, -0.126458, 0.895310,
		0.800637, 0.513027, -0.309489,
		-0.420181, 0.849006, 0.320369,
		39.456650, 31.127077, 43.233170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245045, 30.779947, 43.409126>,  <39.750774, 30.532774, 43.008911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245045, 30.779947, 43.409126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919704, 30.977442, 43.532211>,  <39.724499, 31.095940, 43.606060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919704, 30.977442, 43.532211>,  <40.245045, 30.779947, 43.409126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919704, 30.977442, 43.532211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315963, -0.069226, 0.946243,
		0.488497, 0.866851, -0.099698,
		-0.813350, 0.493737, 0.307709,
		39.675701, 31.125563, 43.624523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766586, 31.239412, 43.447601>,  <40.245045, 30.779947, 43.409126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766586, 31.239412, 43.447601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163506, 31.287876, 43.457947>,  <41.401657, 31.316954, 43.464153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163506, 31.287876, 43.457947>,  <40.766586, 31.239412, 43.447601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163506, 31.287876, 43.457947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035072, 0.474933, -0.879323,
		-0.118821, 0.871641, 0.475523,
		0.992296, 0.121159, 0.025861,
		41.461193, 31.324224, 43.465706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844723, 31.965086, 43.135597>,  <40.766586, 31.239412, 43.447601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844723, 31.965086, 43.135597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200794, 31.783264, 43.148029>,  <41.414436, 31.674171, 43.155487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200794, 31.783264, 43.148029>,  <40.844723, 31.965086, 43.135597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200794, 31.783264, 43.148029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214342, 0.357605, -0.908942,
		0.402049, 0.815781, 0.415762,
		0.890176, -0.454554, 0.031081,
		41.467846, 31.646898, 43.157352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410679, 32.466267, 43.125751>,  <40.844723, 31.965086, 43.135597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410679, 32.466267, 43.125751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520710, 32.117023, 42.964752>,  <41.586731, 31.907476, 42.868153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520710, 32.117023, 42.964752>,  <41.410679, 32.466267, 43.125751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520710, 32.117023, 42.964752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024954, 0.424996, -0.904851,
		0.961097, 0.238863, 0.138696,
		0.275081, -0.873111, -0.402502,
		41.603233, 31.855091, 42.844002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825733, 32.670265, 42.513058>,  <41.410679, 32.466267, 43.125751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825733, 32.670265, 42.513058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729870, 32.284725, 42.466476>,  <41.672352, 32.053402, 42.438526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729870, 32.284725, 42.466476>,  <41.825733, 32.670265, 42.513058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729870, 32.284725, 42.466476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226382, 0.172123, -0.958710,
		0.944096, -0.203397, -0.259448,
		-0.239655, -0.963848, -0.116455,
		41.657974, 31.995571, 42.431541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273880, 32.408344, 42.069332>,  <41.825733, 32.670265, 42.513058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273880, 32.408344, 42.069332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954254, 32.172234, 42.023586>,  <41.762478, 32.030567, 41.996140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954254, 32.172234, 42.023586>,  <42.273880, 32.408344, 42.069332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954254, 32.172234, 42.023586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028001, 0.226545, -0.973598,
		0.600598, -0.774762, -0.197551,
		-0.799061, -0.590272, -0.114369,
		41.714535, 31.995152, 41.989277>
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
