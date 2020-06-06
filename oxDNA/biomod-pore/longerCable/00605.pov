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
	<24.060143, 35.241177, 35.098072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.192610, 34.866348, 35.053844>,  <24.272091, 34.641453, 35.027309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.192610, 34.866348, 35.053844>,  <24.060143, 35.241177, 35.098072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.192610, 34.866348, 35.053844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940776, 0.336927, -0.037687,
		0.072569, -0.091541, 0.993154,
		0.331170, -0.937070, -0.110570,
		24.291962, 34.585228, 35.020672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.626116, 35.238804, 35.579952>,  <24.060143, 35.241177, 35.098072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.626116, 35.238804, 35.579952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.669176, 34.979053, 35.278828>,  <24.695011, 34.823204, 35.098152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.669176, 34.979053, 35.278828>,  <24.626116, 35.238804, 35.579952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.669176, 34.979053, 35.278828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959484, 0.266180, -0.092405,
		0.260388, -0.712360, 0.651721,
		0.107650, -0.649377, -0.752808,
		24.701471, 34.784241, 35.052986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.127834, 34.802532, 35.729691>,  <24.626116, 35.238804, 35.579952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.127834, 34.802532, 35.729691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078384, 34.903278, 35.345757>,  <25.048714, 34.963726, 35.115395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078384, 34.903278, 35.345757>,  <25.127834, 34.802532, 35.729691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.078384, 34.903278, 35.345757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870315, 0.492200, 0.017057,
		0.476727, -0.833250, -0.280047,
		-0.123626, 0.251861, -0.959835,
		25.041296, 34.978836, 35.057808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.777573, 34.988281, 35.699120>,  <25.127834, 34.802532, 35.729691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.777573, 34.988281, 35.699120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618809, 35.227303, 35.420437>,  <25.523550, 35.370716, 35.253227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618809, 35.227303, 35.420437>,  <25.777573, 34.988281, 35.699120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618809, 35.227303, 35.420437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293226, 0.801829, 0.520662,
		0.869760, 0.002363, -0.493470,
		-0.396909, 0.597549, -0.696706,
		25.499737, 35.406567, 35.211426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284620, 35.472221, 35.397629>,  <25.777573, 34.988281, 35.699120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284620, 35.472221, 35.397629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915789, 35.622822, 35.361824>,  <25.694489, 35.713184, 35.340343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915789, 35.622822, 35.361824>,  <26.284620, 35.472221, 35.397629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.915789, 35.622822, 35.361824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338769, 0.897099, 0.283635,
		0.187088, 0.231212, -0.954746,
		-0.922081, 0.376503, -0.089509,
		25.639164, 35.735771, 35.334972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252337, 36.050442, 35.029388>,  <26.284620, 35.472221, 35.397629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252337, 36.050442, 35.029388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925783, 36.132080, 35.245487>,  <25.729851, 36.181065, 35.375145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925783, 36.132080, 35.245487>,  <26.252337, 36.050442, 35.029388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925783, 36.132080, 35.245487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321705, 0.937605, 0.131922,
		-0.479609, 0.281498, -0.831105,
		-0.816383, 0.204099, 0.540242,
		25.680868, 36.193310, 35.407558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785904, 36.544651, 34.673428>,  <26.252337, 36.050442, 35.029388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785904, 36.544651, 34.673428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823812, 36.564823, 35.071117>,  <25.846558, 36.576927, 35.309731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823812, 36.564823, 35.071117>,  <25.785904, 36.544651, 34.673428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823812, 36.564823, 35.071117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302853, 0.949917, -0.077053,
		-0.948313, 0.308405, 0.074753,
		0.094772, 0.050432, 0.994221,
		25.852243, 36.579952, 35.369385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547148, 37.141651, 34.360050>,  <25.785904, 36.544651, 34.673428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547148, 37.141651, 34.360050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477085, 37.534565, 34.333397>,  <25.435047, 37.770313, 34.317406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477085, 37.534565, 34.333397>,  <25.547148, 37.141651, 34.360050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.477085, 37.534565, 34.333397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402803, -0.009741, 0.915235,
		0.898371, 0.187150, 0.397372,
		-0.175157, 0.982283, -0.066634,
		25.424538, 37.829250, 34.313408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.250879, 37.275452, 34.031128>,  <25.547148, 37.141651, 34.360050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.250879, 37.275452, 34.031128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151304, 36.911079, 33.899529>,  <26.091558, 36.692455, 33.820568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151304, 36.911079, 33.899529>,  <26.250879, 37.275452, 34.031128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151304, 36.911079, 33.899529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835875, -0.030482, -0.548072,
		0.489226, -0.411435, 0.769011,
		-0.248937, -0.910929, -0.328996,
		26.076624, 36.637802, 33.800831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.800968, 36.926628, 34.078918>,  <26.250879, 37.275452, 34.031128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.800968, 36.926628, 34.078918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582033, 36.779240, 33.778343>,  <26.450672, 36.690807, 33.598000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582033, 36.779240, 33.778343>,  <26.800968, 36.926628, 34.078918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582033, 36.779240, 33.778343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772536, 0.122888, -0.622966,
		0.321887, -0.921482, 0.217396,
		-0.547337, -0.368470, -0.751434,
		26.417831, 36.668697, 33.552914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247280, 36.476311, 33.642426>,  <26.800968, 36.926628, 34.078918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247280, 36.476311, 33.642426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942732, 36.629566, 33.433228>,  <26.760002, 36.721519, 33.307709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942732, 36.629566, 33.433228>,  <27.247280, 36.476311, 33.642426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942732, 36.629566, 33.433228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560656, -0.015957, -0.827895,
		-0.325545, -0.923553, -0.202660,
		-0.761371, 0.383139, -0.522990,
		26.714321, 36.744507, 33.276329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085751, 36.020168, 33.137566>,  <27.247280, 36.476311, 33.642426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085751, 36.020168, 33.137566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009481, 36.394753, 33.019791>,  <26.963720, 36.619503, 32.949123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009481, 36.394753, 33.019791>,  <27.085751, 36.020168, 33.137566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009481, 36.394753, 33.019791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658404, -0.100475, -0.745928,
		-0.728113, -0.336088, -0.597409,
		-0.190673, 0.936456, -0.294439,
		26.952280, 36.675690, 32.931458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639101, 36.331036, 32.689323>,  <27.085751, 36.020168, 33.137566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639101, 36.331036, 32.689323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774590, 36.443233, 32.330082>,  <26.855883, 36.510551, 32.114536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774590, 36.443233, 32.330082>,  <26.639101, 36.331036, 32.689323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774590, 36.443233, 32.330082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467709, -0.878437, -0.097959,
		-0.816405, -0.386871, -0.428735,
		0.338720, 0.280497, -0.898104,
		26.876205, 36.527382, 32.060650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419769, 35.895515, 32.209110>,  <26.639101, 36.331036, 32.689323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419769, 35.895515, 32.209110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762514, 36.083900, 32.125221>,  <26.968161, 36.196930, 32.074886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762514, 36.083900, 32.125221>,  <26.419769, 35.895515, 32.209110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762514, 36.083900, 32.125221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505513, -0.847386, 0.162463,
		-0.101204, -0.245227, -0.964169,
		0.856863, 0.470958, -0.209724,
		27.019573, 36.225189, 32.062305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.831362, 35.545609, 31.615856>,  <26.419769, 35.895515, 32.209110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.831362, 35.545609, 31.615856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.027790, 35.719486, 31.917820>,  <27.145647, 35.823814, 32.098999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.027790, 35.719486, 31.917820>,  <26.831362, 35.545609, 31.615856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027790, 35.719486, 31.917820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363449, -0.889807, 0.275949,
		0.791678, 0.138861, -0.594948,
		0.491071, 0.434696, 0.754910,
		27.175112, 35.849895, 32.144295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368507, 35.081932, 31.780991>,  <26.831362, 35.545609, 31.615856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368507, 35.081932, 31.780991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302462, 35.309856, 32.102997>,  <27.262835, 35.446609, 32.296200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302462, 35.309856, 32.102997>,  <27.368507, 35.081932, 31.780991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302462, 35.309856, 32.102997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448057, -0.683796, 0.575907,
		0.878626, 0.455783, -0.142404,
		-0.165114, 0.569812, 0.805017,
		27.252928, 35.480801, 32.344501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967609, 35.185078, 32.279015>,  <27.368507, 35.081932, 31.780991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967609, 35.185078, 32.279015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.654093, 35.264317, 32.514450>,  <27.465982, 35.311859, 32.655712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.654093, 35.264317, 32.514450>,  <27.967609, 35.185078, 32.279015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.654093, 35.264317, 32.514450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354553, -0.635385, 0.685986,
		0.509867, 0.746354, 0.427775,
		-0.783791, 0.198093, 0.588584,
		27.418955, 35.323746, 32.691025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010403, 35.524780, 32.979362>,  <27.967609, 35.185078, 32.279015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010403, 35.524780, 32.979362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735710, 35.234364, 32.965134>,  <27.570894, 35.060112, 32.956596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735710, 35.234364, 32.965134>,  <28.010403, 35.524780, 32.979362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735710, 35.234364, 32.965134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518218, -0.523299, 0.676467,
		-0.509757, 0.446118, 0.735613,
		-0.686730, -0.726042, -0.035569,
		27.529692, 35.016552, 32.954464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930054, 35.306900, 33.752823>,  <28.010403, 35.524780, 32.979362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930054, 35.306900, 33.752823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850662, 35.030746, 33.474548>,  <27.803028, 34.865055, 33.307583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850662, 35.030746, 33.474548>,  <27.930054, 35.306900, 33.752823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850662, 35.030746, 33.474548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582252, -0.654034, 0.482930,
		-0.788409, -0.309216, 0.531786,
		-0.198477, -0.690380, -0.695689,
		27.791119, 34.823631, 33.265842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568089, 34.520447, 33.982399>,  <27.930054, 35.306900, 33.752823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568089, 34.520447, 33.982399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814701, 34.526981, 33.667534>,  <27.962669, 34.530903, 33.478615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814701, 34.526981, 33.667534>,  <27.568089, 34.520447, 33.982399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814701, 34.526981, 33.667534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563137, -0.707869, 0.426379,
		-0.550239, -0.706155, -0.445626,
		0.616534, 0.016338, -0.787159,
		27.999660, 34.531883, 33.431385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752134, 33.870621, 33.605637>,  <27.568089, 34.520447, 33.982399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752134, 33.870621, 33.605637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086346, 34.062618, 33.498676>,  <28.286873, 34.177814, 33.434498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086346, 34.062618, 33.498676>,  <27.752134, 33.870621, 33.605637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086346, 34.062618, 33.498676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549450, -0.728899, 0.408425,
		0.001131, -0.488174, -0.872745,
		0.835526, 0.479991, -0.267403,
		28.337004, 34.206615, 33.418457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230146, 33.396072, 33.913105>,  <27.752134, 33.870621, 33.605637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230146, 33.396072, 33.913105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433407, 33.710869, 33.773144>,  <28.555363, 33.899746, 33.689167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433407, 33.710869, 33.773144>,  <28.230146, 33.396072, 33.913105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433407, 33.710869, 33.773144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849036, -0.389501, 0.356969,
		0.144645, -0.478472, -0.866107,
		0.508149, 0.786990, -0.349901,
		28.585852, 33.946964, 33.668175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905373, 33.171593, 33.635571>,  <28.230146, 33.396072, 33.913105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905373, 33.171593, 33.635571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976641, 33.557583, 33.712593>,  <29.019402, 33.789177, 33.758804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976641, 33.557583, 33.712593>,  <28.905373, 33.171593, 33.635571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976641, 33.557583, 33.712593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934401, -0.227264, 0.274311,
		0.308464, 0.131049, -0.942166,
		0.178172, 0.964975, 0.192555,
		29.030092, 33.847076, 33.770359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381813, 33.688770, 33.139160>,  <28.905373, 33.171593, 33.635571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381813, 33.688770, 33.139160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392651, 33.766518, 33.531380>,  <29.399153, 33.813168, 33.766712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392651, 33.766518, 33.531380>,  <29.381813, 33.688770, 33.139160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392651, 33.766518, 33.531380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885706, -0.459445, 0.066601,
		0.463456, 0.866677, -0.184605,
		0.027095, 0.194373, 0.980554,
		29.400780, 33.824829, 33.825546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975700, 33.953278, 33.382423>,  <29.381813, 33.688770, 33.139160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975700, 33.953278, 33.382423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858576, 33.815105, 33.739059>,  <29.788301, 33.732204, 33.953041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858576, 33.815105, 33.739059>,  <29.975700, 33.953278, 33.382423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858576, 33.815105, 33.739059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943247, -0.257137, 0.210156,
		0.156669, 0.902530, 0.401116,
		-0.292814, -0.345427, 0.891594,
		29.770731, 33.711479, 34.006538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910681, 33.843246, 32.650703>,  <29.975700, 33.953278, 33.382423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910681, 33.843246, 32.650703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128019, 34.171135, 32.723175>,  <30.258423, 34.367870, 32.766659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128019, 34.171135, 32.723175>,  <29.910681, 33.843246, 32.650703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128019, 34.171135, 32.723175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433405, 0.458734, -0.775708,
		-0.718981, 0.342954, 0.604524,
		0.543348, 0.819723, 0.181183,
		30.291023, 34.417053, 32.777531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460634, 33.527245, 33.026375>,  <29.910681, 33.843246, 32.650703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460634, 33.527245, 33.026375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346695, 33.176960, 33.182320>,  <30.278332, 32.966789, 33.275887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346695, 33.176960, 33.182320>,  <30.460634, 33.527245, 33.026375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346695, 33.176960, 33.182320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951377, -0.208531, 0.226709,
		-0.117234, 0.435480, 0.892532,
		-0.284847, -0.875712, 0.389859,
		30.261240, 32.914246, 33.299278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452482, 33.414024, 32.279846>,  <30.460634, 33.527245, 33.026375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452482, 33.414024, 32.279846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810068, 33.546906, 32.400158>,  <31.024620, 33.626633, 32.472343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810068, 33.546906, 32.400158>,  <30.452482, 33.414024, 32.279846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810068, 33.546906, 32.400158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010429, -0.655574, 0.755059,
		0.448012, -0.678134, -0.582597,
		0.893966, 0.332200, 0.300777,
		31.078259, 33.646564, 32.490391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980711, 32.775017, 32.299419>,  <30.452482, 33.414024, 32.279846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980711, 32.775017, 32.299419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047829, 33.081032, 32.548115>,  <31.088099, 33.264641, 32.697334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047829, 33.081032, 32.548115>,  <30.980711, 32.775017, 32.299419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047829, 33.081032, 32.548115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088569, -0.616434, 0.782410,
		0.981835, -0.186351, -0.035675,
		0.167794, 0.765038, 0.621741,
		31.098167, 33.310543, 32.734638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578043, 32.666016, 32.609245>,  <30.980711, 32.775017, 32.299419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578043, 32.666016, 32.609245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293911, 32.860027, 32.813274>,  <31.123432, 32.976433, 32.935692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293911, 32.860027, 32.813274>,  <31.578043, 32.666016, 32.609245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293911, 32.860027, 32.813274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144015, -0.609197, 0.779833,
		0.688976, 0.627399, 0.362881,
		-0.710332, 0.485025, 0.510077,
		31.080811, 33.005535, 32.966297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765623, 32.357338, 33.279465>,  <31.578043, 32.666016, 32.609245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765623, 32.357338, 33.279465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426037, 32.565262, 33.317532>,  <31.222284, 32.690014, 33.340374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426037, 32.565262, 33.317532>,  <31.765623, 32.357338, 33.279465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426037, 32.565262, 33.317532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060167, -0.274001, 0.959846,
		0.525011, 0.809150, 0.263893,
		-0.848966, 0.519807, 0.095170,
		31.171347, 32.721203, 33.346081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795885, 32.761322, 33.910351>,  <31.765623, 32.357338, 33.279465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795885, 32.761322, 33.910351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419226, 32.667477, 33.813808>,  <31.193230, 32.611168, 33.755882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419226, 32.667477, 33.813808>,  <31.795885, 32.761322, 33.910351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419226, 32.667477, 33.813808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155695, -0.332141, 0.930291,
		-0.298425, 0.913586, 0.276232,
		-0.941648, -0.234614, -0.241360,
		31.136732, 32.597092, 33.741402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106100, 33.114120, 34.215660>,  <31.795885, 32.761322, 33.910351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106100, 33.114120, 34.215660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049314, 32.722576, 34.156773>,  <31.015244, 32.487648, 34.121441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049314, 32.722576, 34.156773>,  <31.106100, 33.114120, 34.215660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049314, 32.722576, 34.156773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072842, -0.137990, 0.987751,
		-0.987188, 0.150950, -0.051712,
		-0.141966, -0.978863, -0.147218,
		31.006725, 32.428917, 34.112606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553873, 32.879761, 34.562634>,  <31.106100, 33.114120, 34.215660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553873, 32.879761, 34.562634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844982, 32.605484, 34.557434>,  <31.019648, 32.440918, 34.554314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844982, 32.605484, 34.557434>,  <30.553873, 32.879761, 34.562634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844982, 32.605484, 34.557434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135444, 0.125130, 0.982852,
		-0.672310, -0.717053, 0.183939,
		0.727773, -0.685695, -0.012995,
		31.063314, 32.399776, 34.553535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476572, 32.304874, 35.107430>,  <30.553873, 32.879761, 34.562634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476572, 32.304874, 35.107430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859135, 32.336826, 34.995071>,  <31.088673, 32.355995, 34.927654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859135, 32.336826, 34.995071>,  <30.476572, 32.304874, 35.107430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859135, 32.336826, 34.995071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283928, -0.029246, 0.958400,
		0.068342, -0.996376, -0.050651,
		0.956407, 0.079880, -0.280900,
		31.146057, 32.360790, 34.910801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901791, 31.696133, 35.330540>,  <30.476572, 32.304874, 35.107430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901791, 31.696133, 35.330540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105690, 32.040257, 35.332325>,  <31.228029, 32.246731, 35.333397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105690, 32.040257, 35.332325>,  <30.901791, 31.696133, 35.330540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105690, 32.040257, 35.332325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130027, -0.082166, 0.988100,
		0.850440, -0.503104, -0.153748,
		0.509750, 0.860312, 0.004460,
		31.258615, 32.298351, 35.333664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270800, 31.475433, 35.854736>,  <30.901791, 31.696133, 35.330540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270800, 31.475433, 35.854736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242949, 31.872454, 35.814739>,  <31.226238, 32.110664, 35.790741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242949, 31.872454, 35.814739>,  <31.270800, 31.475433, 35.854736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242949, 31.872454, 35.814739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078716, 0.094455, 0.992412,
		0.994463, 0.076971, 0.071553,
		-0.069628, 0.992549, -0.099991,
		31.222059, 32.170219, 35.784740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598593, 31.443161, 36.531647>,  <31.270800, 31.475433, 35.854736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598593, 31.443161, 36.531647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783854, 31.795969, 36.496941>,  <31.895010, 32.007652, 36.476116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783854, 31.795969, 36.496941>,  <31.598593, 31.443161, 36.531647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783854, 31.795969, 36.496941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313272, -0.071341, 0.946980,
		0.829065, -0.465780, -0.309354,
		0.463154, 0.882020, -0.086770,
		31.922800, 32.060574, 36.470909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372643, 31.384117, 36.745693>,  <31.598593, 31.443161, 36.531647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372643, 31.384117, 36.745693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181950, 31.732275, 36.794907>,  <32.067535, 31.941170, 36.824436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181950, 31.732275, 36.794907>,  <32.372643, 31.384117, 36.745693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181950, 31.732275, 36.794907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077717, -0.097682, 0.992178,
		0.875608, 0.482563, -0.021077,
		-0.476730, 0.870397, 0.123035,
		32.038929, 31.993395, 36.831818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594070, 31.778650, 37.331619>,  <32.372643, 31.384117, 36.745693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594070, 31.778650, 37.331619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210655, 31.880686, 37.280823>,  <31.980604, 31.941908, 37.250347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210655, 31.880686, 37.280823>,  <32.594070, 31.778650, 37.331619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210655, 31.880686, 37.280823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123065, 0.031347, 0.991903,
		0.257005, 0.966409, 0.001345,
		-0.958542, 0.255089, -0.126987,
		31.923092, 31.957212, 37.242725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535194, 32.418991, 37.667538>,  <32.594070, 31.778650, 37.331619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535194, 32.418991, 37.667538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184864, 32.227955, 37.695374>,  <31.974667, 32.113335, 37.712074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184864, 32.227955, 37.695374>,  <32.535194, 32.418991, 37.667538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184864, 32.227955, 37.695374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080153, -0.001747, 0.996781,
		-0.475928, 0.878583, 0.039810,
		-0.875824, -0.477587, 0.069590,
		31.922117, 32.084679, 37.716251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303989, 32.662838, 37.624752>,  <32.535194, 32.418991, 37.667538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303989, 32.662838, 37.624752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703342, 32.655258, 37.603283>,  <33.942955, 32.650711, 37.590401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703342, 32.655258, 37.603283>,  <33.303989, 32.662838, 37.624752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703342, 32.655258, 37.603283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056894, 0.304029, 0.950962,
		-0.001701, -0.952474, 0.304614,
		0.998379, -0.018948, -0.053673,
		34.002857, 32.649574, 37.587181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503948, 32.375587, 38.277756>,  <33.303989, 32.662838, 37.624752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503948, 32.375587, 38.277756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855904, 32.509117, 38.142494>,  <34.067078, 32.589237, 38.061337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855904, 32.509117, 38.142494>,  <33.503948, 32.375587, 38.277756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855904, 32.509117, 38.142494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350504, 0.024520, 0.936240,
		0.320835, -0.942315, -0.095433,
		0.879893, 0.333829, -0.338152,
		34.119873, 32.609264, 38.041050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886940, 31.973221, 38.796455>,  <33.503948, 32.375587, 38.277756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886940, 31.973221, 38.796455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146130, 32.247051, 38.662895>,  <34.301643, 32.411350, 38.582760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146130, 32.247051, 38.662895>,  <33.886940, 31.973221, 38.796455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146130, 32.247051, 38.662895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657543, -0.281534, 0.698839,
		0.384404, -0.672380, -0.632565,
		0.647974, 0.684575, -0.333896,
		34.340523, 32.452423, 38.562725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503876, 31.627914, 38.546825>,  <33.886940, 31.973221, 38.796455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503876, 31.627914, 38.546825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582752, 31.997274, 38.678551>,  <34.630077, 32.218891, 38.757587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582752, 31.997274, 38.678551>,  <34.503876, 31.627914, 38.546825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582752, 31.997274, 38.678551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623053, -0.377386, 0.685116,
		0.756915, 0.070082, -0.649745,
		0.197190, 0.923401, 0.329314,
		34.641911, 32.274296, 38.777344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179844, 31.687744, 38.683662>,  <34.503876, 31.627914, 38.546825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179844, 31.687744, 38.683662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991413, 31.935432, 38.934948>,  <34.878353, 32.084045, 39.085720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991413, 31.935432, 38.934948>,  <35.179844, 31.687744, 38.683662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991413, 31.935432, 38.934948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580574, -0.318524, 0.749317,
		0.664092, 0.717712, -0.209452,
		-0.471079, 0.619218, 0.628214,
		34.850090, 32.121197, 39.123413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276859, 32.369980, 38.570812>,  <35.179844, 31.687744, 38.683662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276859, 32.369980, 38.570812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436970, 32.568672, 38.262775>,  <35.533035, 32.687885, 38.077953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436970, 32.568672, 38.262775>,  <35.276859, 32.369980, 38.570812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436970, 32.568672, 38.262775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874002, -0.045704, -0.483768,
		-0.275498, 0.866702, 0.415848,
		0.400277, 0.496729, -0.770090,
		35.557053, 32.717690, 38.031750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791634, 32.793736, 38.245785>,  <35.276859, 32.369980, 38.570812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791634, 32.793736, 38.245785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071468, 32.811440, 37.960514>,  <35.239368, 32.822063, 37.789352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071468, 32.811440, 37.960514>,  <34.791634, 32.793736, 38.245785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071468, 32.811440, 37.960514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713143, -0.019354, -0.700752,
		-0.044820, 0.998833, 0.018026,
		0.699585, 0.044262, -0.713178,
		35.281345, 32.824718, 37.746559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643730, 33.300514, 37.695713>,  <34.791634, 32.793736, 38.245785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643730, 33.300514, 37.695713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835880, 32.995216, 37.522877>,  <34.951172, 32.812038, 37.419174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835880, 32.995216, 37.522877>,  <34.643730, 33.300514, 37.695713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835880, 32.995216, 37.522877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819092, -0.214267, -0.532144,
		0.313572, 0.609550, -0.728094,
		0.480375, -0.763242, -0.432090,
		34.979992, 32.766243, 37.393250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499187, 33.352352, 36.911381>,  <34.643730, 33.300514, 37.695713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499187, 33.352352, 36.911381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620052, 32.977081, 36.978928>,  <34.692570, 32.751919, 37.019455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620052, 32.977081, 36.978928>,  <34.499187, 33.352352, 36.911381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620052, 32.977081, 36.978928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744181, -0.342864, -0.573270,
		0.595728, 0.047554, -0.801777,
		0.302161, -0.938181, 0.168865,
		34.710701, 32.695625, 37.029587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442802, 33.007492, 36.249123>,  <34.499187, 33.352352, 36.911381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442802, 33.007492, 36.249123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437645, 32.695084, 36.498871>,  <34.434551, 32.507637, 36.648720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437645, 32.695084, 36.498871>,  <34.442802, 33.007492, 36.249123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437645, 32.695084, 36.498871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531213, -0.523665, -0.666024,
		0.847140, -0.340260, -0.408138,
		-0.012894, -0.781024, 0.624368,
		34.433777, 32.460777, 36.686180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507984, 32.418480, 35.795063>,  <34.442802, 33.007492, 36.249123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507984, 32.418480, 35.795063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351814, 32.297134, 36.142750>,  <34.258114, 32.224327, 36.351360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351814, 32.297134, 36.142750>,  <34.507984, 32.418480, 35.795063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351814, 32.297134, 36.142750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709027, -0.503155, -0.494081,
		0.587239, -0.809199, -0.018652,
		-0.390425, -0.303368, 0.869216,
		34.234688, 32.206123, 36.403515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501720, 31.672663, 35.806549>,  <34.507984, 32.418480, 35.795063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501720, 31.672663, 35.806549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220356, 31.841877, 36.035023>,  <34.051537, 31.943405, 36.172108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220356, 31.841877, 36.035023>,  <34.501720, 31.672663, 35.806549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220356, 31.841877, 36.035023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690416, -0.597647, -0.407607,
		0.168936, -0.681072, 0.712462,
		-0.703410, 0.423036, 0.571187,
		34.009335, 31.968788, 36.206379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213005, 31.468405, 35.205795>,  <34.501720, 31.672663, 35.806549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213005, 31.468405, 35.205795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446072, 31.387657, 34.890900>,  <34.585911, 31.339209, 34.701962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446072, 31.387657, 34.890900>,  <34.213005, 31.468405, 35.205795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446072, 31.387657, 34.890900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789684, -0.369567, -0.489714,
		-0.192080, 0.907012, -0.374747,
		0.582671, -0.201867, -0.787238,
		34.620872, 31.327097, 34.654728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045593, 31.985378, 34.568176>,  <34.213005, 31.468405, 35.205795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045593, 31.985378, 34.568176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151260, 31.605635, 34.500134>,  <34.214661, 31.377789, 34.459309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151260, 31.605635, 34.500134>,  <34.045593, 31.985378, 34.568176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151260, 31.605635, 34.500134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888523, -0.170946, -0.425799,
		0.375156, 0.263626, -0.888684,
		0.264168, -0.949357, -0.170106,
		34.230511, 31.320827, 34.449100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813244, 31.841410, 33.832870>,  <34.045593, 31.985378, 34.568176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813244, 31.841410, 33.832870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869217, 31.486113, 34.007885>,  <33.902802, 31.272934, 34.112896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869217, 31.486113, 34.007885>,  <33.813244, 31.841410, 33.832870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869217, 31.486113, 34.007885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797078, -0.363214, -0.482434,
		0.587439, -0.281244, -0.758826,
		0.139935, -0.888244, 0.437539,
		33.911198, 31.219639, 34.139149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031822, 31.286667, 33.320702>,  <33.813244, 31.841410, 33.832870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031822, 31.286667, 33.320702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817806, 31.180212, 33.641426>,  <33.689396, 31.116339, 33.833862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817806, 31.180212, 33.641426>,  <34.031822, 31.286667, 33.320702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817806, 31.180212, 33.641426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752755, -0.280676, -0.595467,
		0.383526, -0.922167, -0.050163,
		-0.535040, -0.266138, 0.801812,
		33.657295, 31.100370, 33.881969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010815, 30.543600, 33.282806>,  <34.031822, 31.286667, 33.320702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010815, 30.543600, 33.282806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697483, 30.712341, 33.465427>,  <33.509483, 30.813587, 33.575001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697483, 30.712341, 33.465427>,  <34.010815, 30.543600, 33.282806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697483, 30.712341, 33.465427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619235, -0.465431, -0.632394,
		-0.054285, -0.778083, 0.625812,
		-0.783327, 0.421854, 0.456550,
		33.462486, 30.838898, 33.602394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574078, 30.099916, 33.487087>,  <34.010815, 30.543600, 33.282806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574078, 30.099916, 33.487087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335300, 30.413387, 33.418369>,  <33.192036, 30.601469, 33.377136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335300, 30.413387, 33.418369>,  <33.574078, 30.099916, 33.487087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335300, 30.413387, 33.418369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576925, -0.568105, -0.586869,
		-0.557503, -0.251225, 0.791250,
		-0.596949, 0.783673, -0.171782,
		33.156219, 30.648491, 33.366829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903805, 29.923702, 33.545288>,  <33.574078, 30.099916, 33.487087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903805, 29.923702, 33.545288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911606, 30.236807, 33.296482>,  <32.916286, 30.424669, 33.147198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911606, 30.236807, 33.296482>,  <32.903805, 29.923702, 33.545288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911606, 30.236807, 33.296482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658032, -0.458343, -0.597424,
		-0.752738, 0.420960, 0.506141,
		0.019505, 0.782761, -0.622017,
		32.917458, 30.471636, 33.109879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201393, 30.143738, 33.440464>,  <32.903805, 29.923702, 33.545288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201393, 30.143738, 33.440464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406227, 30.280106, 33.125114>,  <32.529129, 30.361927, 32.935905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406227, 30.280106, 33.125114>,  <32.201393, 30.143738, 33.440464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406227, 30.280106, 33.125114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678351, -0.402508, -0.614676,
		-0.526885, 0.849564, 0.025146,
		0.512086, 0.340922, -0.788379,
		32.559853, 30.382381, 32.888599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711386, 30.400579, 32.923134>,  <32.201393, 30.143738, 33.440464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711386, 30.400579, 32.923134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052528, 30.343319, 32.722279>,  <32.257214, 30.308964, 32.601765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052528, 30.343319, 32.722279>,  <31.711386, 30.400579, 32.923134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052528, 30.343319, 32.722279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521736, -0.195641, -0.830371,
		0.020628, 0.970172, -0.241540,
		0.852858, -0.143149, -0.502137,
		32.308384, 30.300375, 32.571636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639219, 30.762299, 32.344517>,  <31.711386, 30.400579, 32.923134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639219, 30.762299, 32.344517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911926, 30.490913, 32.235062>,  <32.075550, 30.328083, 32.169388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911926, 30.490913, 32.235062>,  <31.639219, 30.762299, 32.344517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911926, 30.490913, 32.235062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461487, -0.108622, -0.880472,
		0.567644, 0.726560, -0.387157,
		0.681769, -0.678463, -0.273640,
		32.116459, 30.287374, 32.152969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051628, 30.902010, 31.692680>,  <31.639219, 30.762299, 32.344517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051628, 30.902010, 31.692680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017521, 30.508932, 31.758463>,  <31.997057, 30.273087, 31.797932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017521, 30.508932, 31.758463>,  <32.051628, 30.902010, 31.692680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017521, 30.508932, 31.758463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572256, -0.086817, -0.815467,
		0.815631, -0.163640, -0.554949,
		-0.085263, -0.982693, 0.164455,
		31.991941, 30.214125, 31.807798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237595, 30.538742, 31.080433>,  <32.051628, 30.902010, 31.692680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237595, 30.538742, 31.080433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994766, 30.295738, 31.285334>,  <31.849070, 30.149937, 31.408274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994766, 30.295738, 31.285334>,  <32.237595, 30.538742, 31.080433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994766, 30.295738, 31.285334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444244, -0.275031, -0.852646,
		0.658875, -0.745178, -0.102920,
		-0.607067, -0.607509, 0.512252,
		31.812647, 30.113485, 31.439009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248329, 29.717875, 30.961914>,  <32.237595, 30.538742, 31.080433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248329, 29.717875, 30.961914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883148, 29.868151, 31.025640>,  <31.664042, 29.958317, 31.063875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883148, 29.868151, 31.025640>,  <32.248329, 29.717875, 30.961914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883148, 29.868151, 31.025640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321248, -0.420915, -0.848310,
		-0.251645, -0.825643, 0.504963,
		-0.912948, 0.375692, 0.159315,
		31.609264, 29.980858, 31.073435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641495, 29.324688, 30.946968>,  <32.248329, 29.717875, 30.961914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641495, 29.324688, 30.946968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509672, 29.672058, 30.798790>,  <31.430578, 29.880480, 30.709883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509672, 29.672058, 30.798790>,  <31.641495, 29.324688, 30.946968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509672, 29.672058, 30.798790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048036, -0.407278, -0.912040,
		-0.942913, -0.282774, 0.175937,
		-0.329556, 0.868426, -0.370444,
		31.410805, 29.932587, 30.687656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074661, 28.960968, 30.459299>,  <31.641495, 29.324688, 30.946968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074661, 28.960968, 30.459299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102119, 28.574297, 30.360653>,  <32.118595, 28.342295, 30.301464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102119, 28.574297, 30.360653>,  <32.074661, 28.960968, 30.459299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102119, 28.574297, 30.360653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369188, 0.205038, -0.906455,
		0.926816, 0.153268, -0.342812,
		0.068641, -0.966679, -0.246617,
		32.122711, 28.284294, 30.286667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708294, 28.838154, 29.994015>,  <32.074661, 28.960968, 30.459299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708294, 28.838154, 29.994015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451881, 28.538427, 29.927553>,  <32.298035, 28.358591, 29.887676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451881, 28.538427, 29.927553>,  <32.708294, 28.838154, 29.994015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451881, 28.538427, 29.927553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043699, 0.251764, -0.966802,
		0.766271, -0.612488, -0.194133,
		-0.641029, -0.749316, -0.166154,
		32.259571, 28.313633, 29.877707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021362, 28.469358, 29.365906>,  <32.708294, 28.838154, 29.994015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021362, 28.469358, 29.365906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637211, 28.365070, 29.405294>,  <32.406719, 28.302498, 29.428928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637211, 28.365070, 29.405294>,  <33.021362, 28.469358, 29.365906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637211, 28.365070, 29.405294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131671, 0.113054, -0.984826,
		0.245634, -0.958771, -0.142905,
		-0.960378, -0.260723, 0.098472,
		32.349098, 28.286854, 29.434835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908070, 28.075916, 28.766088>,  <33.021362, 28.469358, 29.365906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908070, 28.075916, 28.766088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544712, 28.183098, 28.894474>,  <32.326698, 28.247408, 28.971506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544712, 28.183098, 28.894474>,  <32.908070, 28.075916, 28.766088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544712, 28.183098, 28.894474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247449, 0.274239, -0.929280,
		-0.337027, -0.923576, -0.182812,
		-0.908395, 0.267956, 0.320964,
		32.272194, 28.263485, 28.990763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531303, 27.861073, 28.253063>,  <32.908070, 28.075916, 28.766088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531303, 27.861073, 28.253063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309078, 28.137867, 28.437454>,  <32.175743, 28.303944, 28.548090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309078, 28.137867, 28.437454>,  <32.531303, 27.861073, 28.253063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309078, 28.137867, 28.437454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460738, 0.205307, -0.863464,
		-0.692147, -0.692101, 0.204763,
		-0.555565, 0.691986, 0.460980,
		32.142410, 28.345463, 28.575748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955353, 27.772839, 27.974108>,  <32.531303, 27.861073, 28.253063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955353, 27.772839, 27.974108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918171, 28.136465, 28.136570>,  <31.895863, 28.354641, 28.234047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918171, 28.136465, 28.136570>,  <31.955353, 27.772839, 27.974108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918171, 28.136465, 28.136570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359125, 0.349851, -0.865236,
		-0.928649, -0.226288, 0.293948,
		-0.092954, 0.909064, 0.406155,
		31.890285, 28.409184, 28.258417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328569, 27.987385, 27.772778>,  <31.955353, 27.772839, 27.974108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328569, 27.987385, 27.772778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513336, 28.329826, 27.865488>,  <31.624197, 28.535292, 27.921114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513336, 28.329826, 27.865488>,  <31.328569, 27.987385, 27.772778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513336, 28.329826, 27.865488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383617, 0.428467, -0.818079,
		-0.799668, 0.288972, 0.526332,
		0.461918, 0.856102, 0.231777,
		31.651911, 28.586657, 27.935020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796593, 28.429813, 27.435093>,  <31.328569, 27.987385, 27.772778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796593, 28.429813, 27.435093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112757, 28.653265, 27.535637>,  <31.302456, 28.787336, 27.595964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112757, 28.653265, 27.535637>,  <30.796593, 28.429813, 27.435093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112757, 28.653265, 27.535637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338150, 0.740047, -0.581365,
		-0.510787, 0.374520, 0.773842,
		0.790412, 0.558628, 0.251362,
		31.349880, 28.820854, 27.611046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633238, 29.142065, 27.705463>,  <30.796593, 28.429813, 27.435093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633238, 29.142065, 27.705463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994991, 29.142845, 27.534777>,  <31.212044, 29.143314, 27.432364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994991, 29.142845, 27.534777>,  <30.633238, 29.142065, 27.705463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994991, 29.142845, 27.534777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328402, 0.641717, -0.693075,
		0.272479, 0.766939, 0.580998,
		0.904382, 0.001953, -0.426718,
		31.266306, 29.143431, 27.406761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709591, 29.784424, 27.499199>,  <30.633238, 29.142065, 27.705463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709591, 29.784424, 27.499199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994795, 29.606541, 27.282368>,  <31.165918, 29.499811, 27.152269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994795, 29.606541, 27.282368>,  <30.709591, 29.784424, 27.499199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994795, 29.606541, 27.282368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226757, 0.585326, -0.778444,
		0.663472, 0.677960, 0.316504,
		0.713012, -0.444706, -0.542080,
		31.208698, 29.473129, 27.119743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802044, 30.249760, 27.018549>,  <30.709591, 29.784424, 27.499199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802044, 30.249760, 27.018549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025902, 29.954275, 26.868292>,  <31.160215, 29.776985, 26.778137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025902, 29.954275, 26.868292>,  <30.802044, 30.249760, 27.018549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025902, 29.954275, 26.868292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080579, 0.402621, -0.911813,
		0.824807, 0.540559, 0.165799,
		0.559643, -0.738710, -0.375642,
		31.193794, 29.732662, 26.755600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366095, 30.542507, 26.666296>,  <30.802044, 30.249760, 27.018549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366095, 30.542507, 26.666296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269819, 30.189007, 26.505770>,  <31.212053, 29.976906, 26.409454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269819, 30.189007, 26.505770>,  <31.366095, 30.542507, 26.666296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269819, 30.189007, 26.505770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037598, 0.421648, -0.905980,
		0.969874, -0.202970, -0.134713,
		-0.240688, -0.883751, -0.401314,
		31.197613, 29.923882, 26.385376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699593, 30.518660, 26.083115>,  <31.366095, 30.542507, 26.666296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699593, 30.518660, 26.083115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420673, 30.239840, 26.016300>,  <31.253323, 30.072548, 25.976212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420673, 30.239840, 26.016300>,  <31.699593, 30.518660, 26.083115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420673, 30.239840, 26.016300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117498, 0.341041, -0.932677,
		0.707088, -0.630725, -0.319708,
		-0.697295, -0.697049, -0.167037,
		31.211485, 30.030725, 25.966188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076744, 30.008535, 25.663210>,  <31.699593, 30.518660, 26.083115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076744, 30.008535, 25.663210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678370, 30.007521, 25.627201>,  <31.439344, 30.006912, 25.605597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678370, 30.007521, 25.627201>,  <32.076744, 30.008535, 25.663210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678370, 30.007521, 25.627201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087157, -0.278701, -0.956415,
		-0.022663, -0.960375, 0.277789,
		-0.995937, -0.002536, -0.090020,
		31.379589, 30.006760, 25.600195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959082, 29.442629, 25.283430>,  <32.076744, 30.008535, 25.663210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959082, 29.442629, 25.283430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615847, 29.641899, 25.233620>,  <31.409906, 29.761461, 25.203733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615847, 29.641899, 25.233620>,  <31.959082, 29.442629, 25.283430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615847, 29.641899, 25.233620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024048, -0.281220, -0.959342,
		-0.512940, -0.820205, 0.253292,
		-0.858087, 0.498176, -0.124525,
		31.358419, 29.791351, 25.196262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440302, 28.966892, 24.884281>,  <31.959082, 29.442629, 25.283430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440302, 28.966892, 24.884281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301699, 29.334967, 24.811413>,  <31.218536, 29.555811, 24.767691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301699, 29.334967, 24.811413>,  <31.440302, 28.966892, 24.884281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301699, 29.334967, 24.811413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182215, -0.256533, -0.949204,
		-0.920180, -0.295711, 0.256562,
		-0.346507, 0.920188, -0.182173,
		31.197746, 29.611023, 24.756762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718422, 28.804787, 24.583925>,  <31.440302, 28.966892, 24.884281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718422, 28.804787, 24.583925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823206, 29.182114, 24.502405>,  <30.886076, 29.408510, 24.453493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823206, 29.182114, 24.502405>,  <30.718422, 28.804787, 24.583925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823206, 29.182114, 24.502405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127841, -0.175393, -0.976163,
		-0.956574, 0.281768, 0.074649,
		0.261959, 0.943316, -0.203798,
		30.901794, 29.465109, 24.441265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212461, 28.996731, 24.140091>,  <30.718422, 28.804787, 24.583925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212461, 28.996731, 24.140091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511415, 29.255154, 24.078087>,  <30.690788, 29.410208, 24.040884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511415, 29.255154, 24.078087>,  <30.212461, 28.996731, 24.140091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511415, 29.255154, 24.078087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041481, -0.187481, -0.981392,
		-0.663096, 0.739907, -0.113321,
		0.747384, 0.646056, -0.155010,
		30.735630, 29.448971, 24.031584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066854, 29.259218, 23.434381>,  <30.212461, 28.996731, 24.140091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066854, 29.259218, 23.434381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443777, 29.385788, 23.478071>,  <30.669931, 29.461729, 23.504286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443777, 29.385788, 23.478071>,  <30.066854, 29.259218, 23.434381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443777, 29.385788, 23.478071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154475, -0.121580, -0.980487,
		-0.296971, 0.940794, -0.163446,
		0.942309, 0.316425, 0.109224,
		30.726469, 29.480715, 23.510838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204645, 29.888727, 23.018005>,  <30.066854, 29.259218, 23.434381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204645, 29.888727, 23.018005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558058, 29.706341, 23.060846>,  <30.770105, 29.596909, 23.086552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558058, 29.706341, 23.060846>,  <30.204645, 29.888727, 23.018005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558058, 29.706341, 23.060846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114127, -0.012192, -0.993391,
		0.454258, 0.889914, 0.041266,
		0.883530, -0.455966, 0.107102,
		30.823116, 29.569551, 23.092978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686815, 30.235067, 22.696926>,  <30.204645, 29.888727, 23.018005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686815, 30.235067, 22.696926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883650, 29.886972, 22.706228>,  <31.001751, 29.678116, 22.711809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883650, 29.886972, 22.706228>,  <30.686815, 30.235067, 22.696926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883650, 29.886972, 22.706228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120722, 0.041762, -0.991808,
		0.862135, 0.490862, 0.125607,
		0.492087, -0.870236, 0.023253,
		31.031277, 29.625902, 22.713203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084553, 30.223280, 21.954050>,  <30.686815, 30.235067, 22.696926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084553, 30.223280, 21.954050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083906, 29.852125, 22.103193>,  <31.083519, 29.629433, 22.192678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083906, 29.852125, 22.103193>,  <31.084553, 30.223280, 21.954050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083906, 29.852125, 22.103193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141719, -0.369307, -0.918438,
		0.989906, 0.051358, 0.132096,
		-0.001615, -0.927887, 0.372857,
		31.083422, 29.573759, 22.215050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582006, 29.908960, 21.626869>,  <31.084553, 30.223280, 21.954050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582006, 29.908960, 21.626869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353662, 29.611406, 21.765869>,  <31.216656, 29.432875, 21.849270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353662, 29.611406, 21.765869>,  <31.582006, 29.908960, 21.626869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353662, 29.611406, 21.765869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082686, -0.473176, -0.877079,
		0.816874, -0.471955, 0.331625,
		-0.570858, -0.743884, 0.347501,
		31.182405, 29.388241, 21.870119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938471, 29.272583, 21.483658>,  <31.582006, 29.908960, 21.626869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938471, 29.272583, 21.483658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544014, 29.211605, 21.509850>,  <31.307341, 29.175018, 21.525564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544014, 29.211605, 21.509850>,  <31.938471, 29.272583, 21.483658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544014, 29.211605, 21.509850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014969, -0.474800, -0.879967,
		0.165234, -0.866791, 0.470501,
		-0.986141, -0.152443, 0.065478,
		31.248171, 29.165873, 21.529493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907597, 28.585779, 21.378675>,  <31.938471, 29.272583, 21.483658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907597, 28.585779, 21.378675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556839, 28.765791, 21.311113>,  <31.346384, 28.873798, 21.270576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556839, 28.765791, 21.311113>,  <31.907597, 28.585779, 21.378675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556839, 28.765791, 21.311113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014513, -0.376017, -0.926499,
		-0.480464, -0.809990, 0.336258,
		-0.876894, 0.450030, -0.168907,
		31.293770, 28.900799, 21.260441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601620, 28.113651, 21.051943>,  <31.907597, 28.585779, 21.378675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601620, 28.113651, 21.051943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369078, 28.426064, 20.960711>,  <31.229553, 28.613510, 20.905972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369078, 28.426064, 20.960711>,  <31.601620, 28.113651, 21.051943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369078, 28.426064, 20.960711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128794, -0.365119, -0.922009,
		-0.803393, -0.506638, 0.312855,
		-0.581354, 0.781029, -0.228082,
		31.194672, 28.660372, 20.892286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078041, 27.854969, 20.632416>,  <31.601620, 28.113651, 21.051943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078041, 27.854969, 20.632416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066195, 28.247351, 20.555634>,  <31.059088, 28.482780, 20.509563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066195, 28.247351, 20.555634>,  <31.078041, 27.854969, 20.632416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066195, 28.247351, 20.555634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134186, -0.194204, -0.971740,
		-0.990514, -0.003019, 0.137382,
		-0.029614, 0.980956, -0.191957,
		31.057310, 28.541637, 20.498047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621372, 27.975275, 20.166866>,  <31.078041, 27.854969, 20.632416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621372, 27.975275, 20.166866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760002, 28.346136, 20.109917>,  <30.843180, 28.568653, 20.075747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760002, 28.346136, 20.109917>,  <30.621372, 27.975275, 20.166866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760002, 28.346136, 20.109917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181370, -0.082679, -0.979933,
		-0.920321, 0.365443, 0.139503,
		0.346576, 0.927155, -0.142372,
		30.863976, 28.624283, 20.067205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109671, 28.344385, 19.725067>,  <30.621372, 27.975275, 20.166866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109671, 28.344385, 19.725067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481731, 28.490547, 19.710657>,  <30.704967, 28.578243, 19.702011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481731, 28.490547, 19.710657>,  <30.109671, 28.344385, 19.725067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481731, 28.490547, 19.710657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060217, 0.055026, -0.996668,
		-0.362203, 0.929222, 0.073186,
		0.930152, 0.365403, -0.036024,
		30.760777, 28.600168, 19.699850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017673, 28.876699, 19.238245>,  <30.109671, 28.344385, 19.725067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017673, 28.876699, 19.238245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405590, 28.789825, 19.282669>,  <30.638340, 28.737701, 19.309324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405590, 28.789825, 19.282669>,  <30.017673, 28.876699, 19.238245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405590, 28.789825, 19.282669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130116, 0.075449, -0.988624,
		0.206336, 0.973210, 0.101429,
		0.969792, -0.217186, 0.111062,
		30.696527, 28.724670, 19.315989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273643, 29.314962, 18.820503>,  <30.017673, 28.876699, 19.238245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273643, 29.314962, 18.820503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574844, 29.056944, 18.872505>,  <30.755566, 28.902134, 18.903708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574844, 29.056944, 18.872505>,  <30.273643, 29.314962, 18.820503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574844, 29.056944, 18.872505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140094, -0.035887, -0.989488,
		0.642930, 0.763301, 0.063344,
		0.753004, -0.645045, 0.130007,
		30.800745, 28.863430, 18.911507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772127, 29.577074, 18.520445>,  <30.273643, 29.314962, 18.820503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772127, 29.577074, 18.520445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868921, 29.189205, 18.534185>,  <30.926998, 28.956484, 18.542429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868921, 29.189205, 18.534185>,  <30.772127, 29.577074, 18.520445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868921, 29.189205, 18.534185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140336, -0.000052, -0.990104,
		0.960078, 0.244409, 0.136068,
		0.241984, -0.969672, 0.034350,
		30.941517, 28.898304, 18.544491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340248, 29.514769, 18.112936>,  <30.772127, 29.577074, 18.520445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340248, 29.514769, 18.112936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230354, 29.130800, 18.135109>,  <31.164419, 28.900419, 18.148413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230354, 29.130800, 18.135109>,  <31.340248, 29.514769, 18.112936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230354, 29.130800, 18.135109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162368, -0.103141, -0.981325,
		0.947713, -0.260601, 0.184197,
		-0.274732, -0.959922, 0.055434,
		31.147934, 28.842823, 18.151739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864162, 29.038404, 17.792717>,  <31.340248, 29.514769, 18.112936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864162, 29.038404, 17.792717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515663, 28.842070, 17.793917>,  <31.306564, 28.724268, 17.794636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515663, 28.842070, 17.793917>,  <31.864162, 29.038404, 17.792717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515663, 28.842070, 17.793917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096219, -0.176776, -0.979537,
		0.481324, -0.853129, 0.201244,
		-0.871246, -0.490838, 0.002999,
		31.254290, 28.694818, 17.794817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933254, 28.514515, 17.360497>,  <31.864162, 29.038404, 17.792717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933254, 28.514515, 17.360497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534187, 28.532925, 17.380678>,  <31.294748, 28.543970, 17.392788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534187, 28.532925, 17.380678>,  <31.933254, 28.514515, 17.360497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534187, 28.532925, 17.380678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059839, -0.232998, -0.970634,
		-0.032918, -0.971387, 0.235208,
		-0.997665, 0.046026, 0.050457,
		31.234888, 28.546732, 17.395815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670441, 27.920486, 17.118355>,  <31.933254, 28.514515, 17.360497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670441, 27.920486, 17.118355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362993, 28.171839, 17.070417>,  <31.178524, 28.322651, 17.041655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362993, 28.171839, 17.070417>,  <31.670441, 27.920486, 17.118355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362993, 28.171839, 17.070417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098643, -0.301520, -0.948343,
		-0.632055, -0.717093, 0.293740,
		-0.768619, 0.628381, -0.119841,
		31.132408, 28.360353, 17.034466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111423, 27.515079, 16.829638>,  <31.670441, 27.920486, 17.118355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111423, 27.515079, 16.829638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999264, 27.887449, 16.736040>,  <30.931969, 28.110872, 16.679882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999264, 27.887449, 16.736040>,  <31.111423, 27.515079, 16.829638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999264, 27.887449, 16.736040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147305, -0.282619, -0.947854,
		-0.948514, -0.231308, 0.216376,
		-0.280398, 0.930926, -0.233996,
		30.915144, 28.166727, 16.665842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493618, 27.485710, 16.546474>,  <31.111423, 27.515079, 16.829638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493618, 27.485710, 16.546474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626171, 27.829702, 16.391235>,  <30.705704, 28.036098, 16.298092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626171, 27.829702, 16.391235>,  <30.493618, 27.485710, 16.546474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626171, 27.829702, 16.391235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115280, -0.371352, -0.921308,
		-0.936427, 0.350047, -0.023921,
		0.331384, 0.859980, -0.388097,
		30.725586, 28.087696, 16.274807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106306, 27.560419, 15.995528>,  <30.493618, 27.485710, 16.546474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106306, 27.560419, 15.995528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406630, 27.815826, 15.927909>,  <30.586824, 27.969070, 15.887338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406630, 27.815826, 15.927909>,  <30.106306, 27.560419, 15.995528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406630, 27.815826, 15.927909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083818, -0.161761, -0.983264,
		-0.655179, 0.752413, -0.067932,
		0.750809, 0.638520, -0.169048,
		30.631872, 28.007383, 15.877194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936932, 28.077238, 15.467193>,  <30.106306, 27.560419, 15.995528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936932, 28.077238, 15.467193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336510, 28.059023, 15.469391>,  <30.576258, 28.048094, 15.470710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336510, 28.059023, 15.469391>,  <29.936932, 28.077238, 15.467193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336510, 28.059023, 15.469391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006100, -0.250630, -0.968064,
		0.045461, 0.967011, -0.250644,
		0.998948, -0.045538, 0.005495,
		30.636194, 28.045361, 15.471040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017202, 28.239405, 14.775638>,  <29.936932, 28.077238, 15.467193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017202, 28.239405, 14.775638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360352, 28.095705, 14.922605>,  <30.566240, 28.009485, 15.010785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360352, 28.095705, 14.922605>,  <30.017202, 28.239405, 14.775638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360352, 28.095705, 14.922605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289717, -0.252397, -0.923233,
		0.424404, 0.898464, -0.112445,
		0.857873, -0.359247, 0.367418,
		30.617714, 27.987930, 15.032830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545122, 28.593037, 14.451690>,  <30.017202, 28.239405, 14.775638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545122, 28.593037, 14.451690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696043, 28.240517, 14.565500>,  <30.786596, 28.029005, 14.633786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696043, 28.240517, 14.565500>,  <30.545122, 28.593037, 14.451690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696043, 28.240517, 14.565500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269976, -0.189216, -0.944092,
		0.885864, 0.433024, 0.166538,
		0.377302, -0.881299, 0.284526,
		30.809235, 27.976128, 14.650858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108250, 28.493729, 14.023449>,  <30.545122, 28.593037, 14.451690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108250, 28.493729, 14.023449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003347, 28.124002, 14.134344>,  <30.940407, 27.902166, 14.200881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003347, 28.124002, 14.134344>,  <31.108250, 28.493729, 14.023449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003347, 28.124002, 14.134344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009709, -0.289807, -0.957036,
		0.964950, -0.248295, 0.084977,
		-0.262254, -0.924317, 0.277239,
		30.924671, 27.846708, 14.217516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537777, 27.963638, 13.638671>,  <31.108250, 28.493729, 14.023449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537777, 27.963638, 13.638671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209925, 27.784317, 13.781347>,  <31.013212, 27.676723, 13.866953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209925, 27.784317, 13.781347>,  <31.537777, 27.963638, 13.638671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209925, 27.784317, 13.781347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081336, -0.525248, -0.847053,
		0.567088, -0.723283, 0.394047,
		-0.819631, -0.448304, 0.356691,
		30.964035, 27.649826, 13.888354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606628, 28.087156, 12.939342>,  <31.537777, 27.963638, 13.638671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606628, 28.087156, 12.939342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472343, 28.371418, 12.692030>,  <31.391773, 28.541975, 12.543643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472343, 28.371418, 12.692030>,  <31.606628, 28.087156, 12.939342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472343, 28.371418, 12.692030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019852, -0.650887, -0.758915,
		-0.941756, -0.267050, 0.204402,
		-0.335711, 0.710655, -0.618278,
		31.371630, 28.584614, 12.506546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951878, 27.998497, 12.625744>,  <31.606628, 28.087156, 12.939342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951878, 27.998497, 12.625744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224627, 28.162336, 12.383330>,  <31.388277, 28.260639, 12.237882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224627, 28.162336, 12.383330>,  <30.951878, 27.998497, 12.625744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224627, 28.162336, 12.383330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256514, -0.642001, -0.722520,
		-0.685018, 0.648124, -0.332696,
		0.681873, 0.409598, -0.606035,
		31.429188, 28.285215, 12.201520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312777, 27.547361, 12.051649>,  <30.951878, 27.998497, 12.625744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312777, 27.547361, 12.051649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042393, 27.258799, 11.991447>,  <30.880163, 27.085661, 11.955326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042393, 27.258799, 11.991447>,  <31.312777, 27.547361, 12.051649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042393, 27.258799, 11.991447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705323, -0.692501, 0.151530,
		-0.213539, -0.003726, 0.976928,
		-0.675959, -0.721407, -0.150504,
		30.839605, 27.042376, 11.946297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128628, 27.100075, 12.647721>,  <31.312777, 27.547361, 12.051649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128628, 27.100075, 12.647721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054615, 26.864977, 12.332680>,  <31.010206, 26.723919, 12.143655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054615, 26.864977, 12.332680>,  <31.128628, 27.100075, 12.647721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054615, 26.864977, 12.332680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619962, -0.691653, 0.370491,
		-0.762502, -0.419731, 0.492358,
		-0.185034, -0.587743, -0.787604,
		30.999105, 26.688654, 12.096398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798805, 26.381039, 12.789807>,  <31.128628, 27.100075, 12.647721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798805, 26.381039, 12.789807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064835, 26.437395, 12.496460>,  <31.224453, 26.471209, 12.320452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064835, 26.437395, 12.496460>,  <30.798805, 26.381039, 12.789807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064835, 26.437395, 12.496460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674176, -0.535658, 0.508486,
		-0.321193, -0.832599, -0.451236,
		0.665073, 0.140890, -0.733367,
		31.264357, 26.479662, 12.276449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323187, 26.524525, 13.391184>,  <30.798805, 26.381039, 12.789807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323187, 26.524525, 13.391184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433813, 26.169561, 13.243663>,  <31.500189, 25.956583, 13.155150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433813, 26.169561, 13.243663>,  <31.323187, 26.524525, 13.391184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433813, 26.169561, 13.243663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065594, -0.400309, 0.914030,
		-0.958754, -0.228599, -0.168921,
		0.276567, -0.887409, -0.368803,
		31.516783, 25.903339, 13.133022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777479, 25.974321, 13.430672>,  <31.323187, 26.524525, 13.391184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777479, 25.974321, 13.430672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133713, 25.794088, 13.455443>,  <31.347452, 25.685947, 13.470306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133713, 25.794088, 13.455443>,  <30.777479, 25.974321, 13.430672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133713, 25.794088, 13.455443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120314, -0.102085, 0.987473,
		-0.438618, -0.886878, -0.145127,
		0.890583, -0.450584, 0.061928,
		31.400888, 25.658913, 13.474022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699324, 25.277971, 13.686244>,  <30.777479, 25.974321, 13.430672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699324, 25.277971, 13.686244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062256, 25.421040, 13.774628>,  <31.280016, 25.506880, 13.827658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062256, 25.421040, 13.774628>,  <30.699324, 25.277971, 13.686244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062256, 25.421040, 13.774628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104731, -0.316710, 0.942722,
		0.407165, -0.878502, -0.249902,
		0.907330, 0.357671, 0.220960,
		31.334455, 25.528341, 13.840916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146053, 24.705151, 14.111542>,  <30.699324, 25.277971, 13.686244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146053, 24.705151, 14.111542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266827, 25.079988, 14.181621>,  <31.339291, 25.304892, 14.223668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266827, 25.079988, 14.181621>,  <31.146053, 24.705151, 14.111542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266827, 25.079988, 14.181621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018017, -0.178131, 0.983842,
		0.953159, -0.300209, -0.036900,
		0.301931, 0.937093, 0.175196,
		31.357407, 25.361116, 14.234179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658335, 24.665316, 14.586712>,  <31.146053, 24.705151, 14.111542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658335, 24.665316, 14.586712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462168, 25.009739, 14.640481>,  <31.344467, 25.216393, 14.672742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462168, 25.009739, 14.640481>,  <31.658335, 24.665316, 14.586712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462168, 25.009739, 14.640481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108081, -0.213148, 0.971023,
		0.864759, 0.461680, 0.197596,
		-0.490419, 0.861057, 0.134422,
		31.315042, 25.268057, 14.680808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927837, 24.938555, 15.187892>,  <31.658335, 24.665316, 14.586712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927837, 24.938555, 15.187892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600279, 25.166725, 15.162500>,  <31.403744, 25.303627, 15.147265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600279, 25.166725, 15.162500>,  <31.927837, 24.938555, 15.187892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600279, 25.166725, 15.162500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154058, -0.111915, 0.981703,
		0.552882, 0.813690, 0.179525,
		-0.818894, 0.570424, -0.063480,
		31.354610, 25.337852, 15.143456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921127, 25.203470, 15.782809>,  <31.927837, 24.938555, 15.187892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921127, 25.203470, 15.782809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551056, 25.281534, 15.652608>,  <31.329012, 25.328373, 15.574487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551056, 25.281534, 15.652608>,  <31.921127, 25.203470, 15.782809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551056, 25.281534, 15.652608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332849, -0.005157, 0.942966,
		0.182353, 0.980758, 0.069730,
		-0.925180, 0.195162, -0.325504,
		31.273502, 25.340082, 15.554956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624989, 25.658258, 16.268484>,  <31.921127, 25.203470, 15.782809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624989, 25.658258, 16.268484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307896, 25.503666, 16.079929>,  <31.117640, 25.410910, 15.966797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307896, 25.503666, 16.079929>,  <31.624989, 25.658258, 16.268484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307896, 25.503666, 16.079929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542085, 0.093306, 0.835128,
		-0.278777, 0.917566, -0.283472,
		-0.792734, -0.386481, -0.471387,
		31.070076, 25.387722, 15.938513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209896, 26.063547, 16.471926>,  <31.624989, 25.658258, 16.268484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209896, 26.063547, 16.471926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001879, 25.741806, 16.356981>,  <30.877069, 25.548761, 16.288015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001879, 25.741806, 16.356981>,  <31.209896, 26.063547, 16.471926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001879, 25.741806, 16.356981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318397, -0.129628, 0.939053,
		-0.792578, 0.579841, -0.188691,
		-0.520041, -0.804352, -0.287360,
		30.845867, 25.500500, 16.270773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567616, 26.178095, 16.701122>,  <31.209896, 26.063547, 16.471926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567616, 26.178095, 16.701122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570211, 25.782310, 16.643253>,  <30.571770, 25.544840, 16.608532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570211, 25.782310, 16.643253>,  <30.567616, 26.178095, 16.701122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570211, 25.782310, 16.643253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371997, -0.136679, 0.918116,
		-0.928211, 0.047859, -0.368962,
		0.006489, -0.989459, -0.144671,
		30.572159, 25.485474, 16.599852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866219, 25.925325, 16.999666>,  <30.567616, 26.178095, 16.701122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866219, 25.925325, 16.999666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159338, 25.655396, 16.964756>,  <30.335209, 25.493437, 16.943810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159338, 25.655396, 16.964756>,  <29.866219, 25.925325, 16.999666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159338, 25.655396, 16.964756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022275, -0.151987, 0.988131,
		-0.680083, -0.722155, -0.126407,
		0.732796, -0.674827, -0.087278,
		30.379177, 25.452948, 16.938572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665558, 25.473295, 17.463690>,  <29.866219, 25.925325, 16.999666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665558, 25.473295, 17.463690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057192, 25.414417, 17.407503>,  <30.292171, 25.379091, 17.373791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057192, 25.414417, 17.407503>,  <29.665558, 25.473295, 17.463690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057192, 25.414417, 17.407503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141729, -0.001926, 0.989904,
		-0.145977, -0.989106, 0.018976,
		0.979083, -0.147193, -0.140466,
		30.350916, 25.370260, 17.365364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817583, 24.817825, 17.857737>,  <29.665558, 25.473295, 17.463690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817583, 24.817825, 17.857737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166491, 25.005884, 17.803905>,  <30.375835, 25.118719, 17.771606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166491, 25.005884, 17.803905>,  <29.817583, 24.817825, 17.857737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166491, 25.005884, 17.803905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191286, -0.074755, 0.978684,
		0.450065, -0.879416, -0.155139,
		0.872268, 0.470147, -0.134575,
		30.428171, 25.146929, 17.763533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355373, 24.443670, 18.230537>,  <29.817583, 24.817825, 17.857737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355373, 24.443670, 18.230537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495815, 24.815979, 18.189766>,  <30.580080, 25.039364, 18.165302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495815, 24.815979, 18.189766>,  <30.355373, 24.443670, 18.230537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495815, 24.815979, 18.189766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295314, -0.006776, 0.955376,
		0.888547, -0.365538, -0.277249,
		0.351105, 0.930772, -0.101928,
		30.601147, 25.095211, 18.159187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963955, 24.392120, 18.622992>,  <30.355373, 24.443670, 18.230537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963955, 24.392120, 18.622992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915106, 24.786432, 18.576817>,  <30.885796, 25.023020, 18.549112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915106, 24.786432, 18.576817>,  <30.963955, 24.392120, 18.622992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915106, 24.786432, 18.576817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296138, 0.147202, 0.943734,
		0.947305, 0.081068, -0.309904,
		-0.122125, 0.985779, -0.115437,
		30.878468, 25.082167, 18.542185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581470, 24.738565, 18.928761>,  <30.963955, 24.392120, 18.622992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581470, 24.738565, 18.928761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303185, 25.025484, 18.913441>,  <31.136213, 25.197636, 18.904249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303185, 25.025484, 18.913441>,  <31.581470, 24.738565, 18.928761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303185, 25.025484, 18.913441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268222, 0.308874, 0.912499,
		0.666361, 0.624567, -0.407283,
		-0.695716, 0.717296, -0.038299,
		31.094469, 25.240673, 18.901951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897871, 25.261597, 19.045448>,  <31.581470, 24.738565, 18.928761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897871, 25.261597, 19.045448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527315, 25.364988, 19.154985>,  <31.304981, 25.427023, 19.220709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527315, 25.364988, 19.154985>,  <31.897871, 25.261597, 19.045448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527315, 25.364988, 19.154985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347586, 0.307180, 0.885903,
		0.144868, 0.915876, -0.374412,
		-0.926389, 0.258480, 0.273845,
		31.249399, 25.442532, 19.237139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015327, 25.910742, 19.389538>,  <31.897871, 25.261597, 19.045448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015327, 25.910742, 19.389538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647858, 25.796865, 19.499077>,  <31.427376, 25.728539, 19.564800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647858, 25.796865, 19.499077>,  <32.015327, 25.910742, 19.389538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647858, 25.796865, 19.499077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249245, 0.120082, 0.960967,
		-0.306464, 0.951068, -0.039357,
		-0.918671, -0.284692, 0.273850,
		31.372257, 25.711458, 19.581232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663527, 26.492273, 19.712193>,  <32.015327, 25.910742, 19.389538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663527, 26.492273, 19.712193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524359, 26.139469, 19.839323>,  <31.440859, 25.927788, 19.915602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524359, 26.139469, 19.839323>,  <31.663527, 26.492273, 19.712193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524359, 26.139469, 19.839323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256780, 0.236392, 0.937114,
		-0.901675, 0.407650, 0.144237,
		-0.347918, -0.882009, 0.317825,
		31.419983, 25.874866, 19.934671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245205, 26.712505, 20.271473>,  <31.663527, 26.492273, 19.712193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245205, 26.712505, 20.271473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303732, 26.320559, 20.325813>,  <31.338848, 26.085390, 20.358418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303732, 26.320559, 20.325813>,  <31.245205, 26.712505, 20.271473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303732, 26.320559, 20.325813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238703, 0.168245, 0.956407,
		-0.960006, -0.107511, 0.258514,
		0.146318, -0.979865, 0.135853,
		31.347628, 26.026600, 20.366570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835165, 26.641645, 20.936686>,  <31.245205, 26.712505, 20.271473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835165, 26.641645, 20.936686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082523, 26.333801, 20.873087>,  <31.230938, 26.149094, 20.834927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082523, 26.333801, 20.873087>,  <30.835165, 26.641645, 20.936686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082523, 26.333801, 20.873087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339759, 0.079391, 0.937155,
		-0.708624, -0.633556, 0.310578,
		0.618398, -0.769612, -0.158998,
		31.268044, 26.102917, 20.825388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842373, 26.361898, 21.537022>,  <30.835165, 26.641645, 20.936686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842373, 26.361898, 21.537022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156300, 26.196417, 21.352451>,  <31.344656, 26.097128, 21.241709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156300, 26.196417, 21.352451>,  <30.842373, 26.361898, 21.537022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156300, 26.196417, 21.352451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493045, -0.034274, 0.869328,
		-0.375461, -0.909765, 0.177076,
		0.784816, -0.413705, -0.461424,
		31.391745, 26.072306, 21.214024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065401, 25.632448, 21.772554>,  <30.842373, 26.361898, 21.537022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065401, 25.632448, 21.772554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397789, 25.790215, 21.615622>,  <31.597221, 25.884874, 21.521461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397789, 25.790215, 21.615622>,  <31.065401, 25.632448, 21.772554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397789, 25.790215, 21.615622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450302, -0.062751, 0.890669,
		0.326677, -0.916786, -0.229751,
		0.830970, 0.394419, -0.392331,
		31.647079, 25.908541, 21.497923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571257, 25.174469, 21.948433>,  <31.065401, 25.632448, 21.772554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571257, 25.174469, 21.948433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760651, 25.510044, 21.841106>,  <31.874287, 25.711390, 21.776711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760651, 25.510044, 21.841106>,  <31.571257, 25.174469, 21.948433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760651, 25.510044, 21.841106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563609, -0.054476, 0.824244,
		0.676873, -0.541493, -0.498627,
		0.473485, 0.838939, -0.268317,
		31.902697, 25.761726, 21.760611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300041, 25.076231, 22.102238>,  <31.571257, 25.174469, 21.948433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300041, 25.076231, 22.102238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276413, 25.474207, 22.069727>,  <32.262238, 25.712992, 22.050220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276413, 25.474207, 22.069727>,  <32.300041, 25.076231, 22.102238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276413, 25.474207, 22.069727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539374, 0.100322, 0.836069,
		0.839992, 0.005548, -0.542571,
		-0.059070, 0.994940, -0.081277,
		32.258694, 25.772688, 22.045343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006802, 25.268253, 22.266634>,  <32.300041, 25.076231, 22.102238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006802, 25.268253, 22.266634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766605, 25.585524, 22.307180>,  <32.622486, 25.775887, 22.331509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766605, 25.585524, 22.307180>,  <33.006802, 25.268253, 22.266634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766605, 25.585524, 22.307180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378924, 0.170636, 0.909560,
		0.704147, 0.584596, -0.403020,
		-0.600495, 0.793178, 0.101364,
		32.586456, 25.823477, 22.337589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407108, 25.702028, 22.631575>,  <33.006802, 25.268253, 22.266634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407108, 25.702028, 22.631575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042206, 25.853464, 22.694138>,  <32.823265, 25.944326, 22.731676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042206, 25.853464, 22.694138>,  <33.407108, 25.702028, 22.631575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042206, 25.853464, 22.694138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223612, 0.140338, 0.964522,
		0.343208, 0.914863, -0.212681,
		-0.912253, 0.378590, 0.156409,
		32.768528, 25.967041, 22.741060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547829, 26.194254, 23.160105>,  <33.407108, 25.702028, 22.631575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547829, 26.194254, 23.160105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150631, 26.150743, 23.178570>,  <32.912312, 26.124638, 23.189650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150631, 26.150743, 23.178570>,  <33.547829, 26.194254, 23.160105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150631, 26.150743, 23.178570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029970, 0.146067, 0.988821,
		-0.114301, 0.983277, -0.141784,
		-0.992994, -0.108774, 0.046164,
		32.852734, 26.118111, 23.192419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336220, 26.746689, 23.526251>,  <33.547829, 26.194254, 23.160105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336220, 26.746689, 23.526251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057186, 26.461464, 23.554302>,  <32.889767, 26.290329, 23.571133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057186, 26.461464, 23.554302>,  <33.336220, 26.746689, 23.526251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057186, 26.461464, 23.554302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090644, 0.009262, 0.995840,
		-0.710747, 0.701038, 0.058174,
		-0.697583, -0.713063, 0.070127,
		32.847912, 26.247545, 23.575340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771412, 26.997080, 24.003061>,  <33.336220, 26.746689, 23.526251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771412, 26.997080, 24.003061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781734, 26.598083, 23.976679>,  <32.787930, 26.358686, 23.960850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781734, 26.598083, 23.976679>,  <32.771412, 26.997080, 24.003061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781734, 26.598083, 23.976679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069390, -0.064030, 0.995532,
		-0.997256, -0.030269, 0.067563,
		0.025808, -0.997489, -0.065954,
		32.789478, 26.298838, 23.956892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661625, 26.880682, 24.698124>,  <32.771412, 26.997080, 24.003061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661625, 26.880682, 24.698124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709431, 26.511913, 24.550734>,  <32.738113, 26.290651, 24.462299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709431, 26.511913, 24.550734>,  <32.661625, 26.880682, 24.698124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709431, 26.511913, 24.550734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047056, -0.365459, 0.929637,
		-0.991716, -0.128447, -0.000297,
		0.119517, -0.921922, -0.368476,
		32.745285, 26.235336, 24.440191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108921, 26.372498, 24.837063>,  <32.661625, 26.880682, 24.698124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108921, 26.372498, 24.837063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436729, 26.145788, 24.803223>,  <32.633415, 26.009764, 24.782919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436729, 26.145788, 24.803223>,  <32.108921, 26.372498, 24.837063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436729, 26.145788, 24.803223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140732, -0.342168, 0.929040,
		-0.555503, -0.749460, -0.360176,
		0.819519, -0.566773, -0.084602,
		32.682587, 25.975756, 24.777842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950777, 25.678120, 24.965502>,  <32.108921, 26.372498, 24.837063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950777, 25.678120, 24.965502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345932, 25.704844, 25.021521>,  <32.583027, 25.720877, 25.055132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345932, 25.704844, 25.021521>,  <31.950777, 25.678120, 24.965502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345932, 25.704844, 25.021521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111366, -0.323217, 0.939749,
		0.108049, -0.943964, -0.311862,
		0.987888, 0.066808, 0.140049,
		32.642300, 25.724886, 25.063536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129257, 25.057175, 25.424608>,  <31.950777, 25.678120, 24.965502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129257, 25.057175, 25.424608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429394, 25.320179, 25.451944>,  <32.609474, 25.477982, 25.468346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429394, 25.320179, 25.451944>,  <32.129257, 25.057175, 25.424608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429394, 25.320179, 25.451944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114280, -0.230847, 0.966256,
		0.651100, -0.717210, -0.248354,
		0.750340, 0.657510, 0.068341,
		32.654495, 25.517431, 25.472446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553070, 24.702461, 25.967173>,  <32.129257, 25.057175, 25.424608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553070, 24.702461, 25.967173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698063, 25.075214, 25.972935>,  <32.785057, 25.298866, 25.976393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698063, 25.075214, 25.972935>,  <32.553070, 24.702461, 25.967173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698063, 25.075214, 25.972935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187785, -0.088167, 0.978245,
		0.912878, -0.351888, -0.206951,
		0.362479, 0.931880, 0.014406,
		32.806808, 25.354778, 25.977257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061481, 24.722811, 26.445356>,  <32.553070, 24.702461, 25.967173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061481, 24.722811, 26.445356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994381, 25.114025, 26.395876>,  <32.954121, 25.348755, 26.366188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994381, 25.114025, 26.395876>,  <33.061481, 24.722811, 26.445356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994381, 25.114025, 26.395876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057645, 0.115532, 0.991630,
		0.984143, 0.173476, 0.036998,
		-0.167749, 0.978038, -0.123700,
		32.944057, 25.407436, 26.358767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506176, 24.977337, 26.878502>,  <33.061481, 24.722811, 26.445356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506176, 24.977337, 26.878502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251328, 25.279652, 26.818016>,  <33.098419, 25.461040, 26.781725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251328, 25.279652, 26.818016>,  <33.506176, 24.977337, 26.878502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251328, 25.279652, 26.818016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024123, 0.176538, 0.983998,
		0.770387, 0.630573, -0.094244,
		-0.637120, 0.755786, -0.151214,
		33.060192, 25.506388, 26.772652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756702, 25.450220, 27.351307>,  <33.506176, 24.977337, 26.878502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756702, 25.450220, 27.351307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382259, 25.559460, 27.262653>,  <33.157593, 25.625004, 27.209461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382259, 25.559460, 27.262653>,  <33.756702, 25.450220, 27.351307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382259, 25.559460, 27.262653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163402, 0.220331, 0.961641,
		0.311456, 0.936414, -0.161628,
		-0.936106, 0.273098, -0.221635,
		33.101429, 25.641390, 27.196163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676270, 26.152262, 27.656906>,  <33.756702, 25.450220, 27.351307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676270, 26.152262, 27.656906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303844, 26.014568, 27.608524>,  <33.080391, 25.931952, 27.579494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303844, 26.014568, 27.608524>,  <33.676270, 26.152262, 27.656906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303844, 26.014568, 27.608524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200410, 0.205464, 0.957925,
		-0.304899, 0.916126, -0.260288,
		-0.931060, -0.344235, -0.120955,
		33.024525, 25.911299, 27.572237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142017, 26.525295, 28.147581>,  <33.676270, 26.152262, 27.656906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142017, 26.525295, 28.147581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948830, 26.191689, 28.040878>,  <32.832916, 25.991524, 27.976856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948830, 26.191689, 28.040878>,  <33.142017, 26.525295, 28.147581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948830, 26.191689, 28.040878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322279, -0.113950, 0.939762,
		-0.814174, 0.539843, -0.213752,
		-0.482966, -0.834018, -0.266755,
		32.803940, 25.941483, 27.960852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636826, 26.601904, 28.480955>,  <33.142017, 26.525295, 28.147581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636826, 26.601904, 28.480955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620266, 26.214405, 28.383131>,  <32.610329, 25.981905, 28.324436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620266, 26.214405, 28.383131>,  <32.636826, 26.601904, 28.480955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620266, 26.214405, 28.383131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454485, -0.199725, 0.868074,
		-0.889792, 0.147087, -0.432014,
		-0.041398, -0.968749, -0.244563,
		32.607845, 25.923780, 28.309763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976860, 26.395147, 28.461411>,  <32.636826, 26.601904, 28.480955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976860, 26.395147, 28.461411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171188, 26.059465, 28.559156>,  <32.287785, 25.858057, 28.617804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171188, 26.059465, 28.559156>,  <31.976860, 26.395147, 28.461411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171188, 26.059465, 28.559156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392546, 0.040306, 0.918849,
		-0.780951, -0.542321, -0.309844,
		0.485822, -0.839204, 0.244363,
		32.316936, 25.807705, 28.632465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502724, 25.889509, 28.765659>,  <31.976860, 26.395147, 28.461411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502724, 25.889509, 28.765659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863316, 25.772804, 28.893538>,  <32.079670, 25.702782, 28.970264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863316, 25.772804, 28.893538>,  <31.502724, 25.889509, 28.765659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863316, 25.772804, 28.893538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326339, 0.027019, 0.944867,
		-0.284317, -0.956108, -0.070857,
		0.901481, -0.291764, 0.319697,
		32.133759, 25.685276, 28.989447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389212, 25.303890, 29.165798>,  <31.502724, 25.889509, 28.765659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389212, 25.303890, 29.165798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731239, 25.472649, 29.286371>,  <31.936455, 25.573904, 29.358715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731239, 25.472649, 29.286371>,  <31.389212, 25.303890, 29.165798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731239, 25.472649, 29.286371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257327, -0.159418, 0.953084,
		0.450157, -0.892518, -0.027748,
		0.855068, 0.421897, 0.301432,
		31.987761, 25.599218, 29.376801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191267, 24.908266, 29.544407>,  <31.389212, 25.303890, 29.165798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191267, 24.908266, 29.544407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846840, 25.105032, 29.595907>,  <30.640182, 25.223091, 29.626808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846840, 25.105032, 29.595907>,  <31.191267, 24.908266, 29.544407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846840, 25.105032, 29.595907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382148, -0.459001, -0.802048,
		-0.335441, -0.739822, 0.583217,
		-0.861070, 0.491915, 0.128754,
		30.588520, 25.252607, 29.634533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778036, 24.435240, 29.245333>,  <31.191267, 24.908266, 29.544407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778036, 24.435240, 29.245333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546453, 24.761339, 29.239990>,  <30.407503, 24.956999, 29.236786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546453, 24.761339, 29.239990>,  <30.778036, 24.435240, 29.245333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546453, 24.761339, 29.239990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529676, -0.388507, -0.753993,
		-0.619880, -0.429456, 0.656747,
		-0.578957, 0.815249, -0.013355,
		30.372766, 25.005913, 29.235983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068502, 24.221878, 29.174059>,  <30.778036, 24.435240, 29.245333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068502, 24.221878, 29.174059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071861, 24.604515, 29.057533>,  <30.073877, 24.834097, 28.987617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071861, 24.604515, 29.057533>,  <30.068502, 24.221878, 29.174059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071861, 24.604515, 29.057533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562156, -0.236416, -0.792520,
		-0.826988, 0.170419, 0.535768,
		0.008397, 0.956590, -0.291316,
		30.074381, 24.891493, 28.970139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377279, 24.384371, 28.961393>,  <30.068502, 24.221878, 29.174059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377279, 24.384371, 28.961393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610371, 24.646967, 28.769791>,  <29.750225, 24.804525, 28.654829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610371, 24.646967, 28.769791>,  <29.377279, 24.384371, 28.961393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610371, 24.646967, 28.769791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512252, -0.160862, -0.843636,
		-0.630894, 0.736982, 0.242550,
		0.582728, 0.656491, -0.479007,
		29.785189, 24.843914, 28.626089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966835, 24.755264, 28.454252>,  <29.377279, 24.384371, 28.961393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966835, 24.755264, 28.454252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336432, 24.846317, 28.331337>,  <29.558189, 24.900949, 28.257587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336432, 24.846317, 28.331337>,  <28.966835, 24.755264, 28.454252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336432, 24.846317, 28.331337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352162, 0.193247, -0.915771,
		-0.149078, 0.954379, 0.258722,
		0.923990, 0.227634, -0.307287,
		29.613628, 24.914608, 28.239151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843620, 25.234922, 27.973207>,  <28.966835, 24.755264, 28.454252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843620, 25.234922, 27.973207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220255, 25.131748, 27.886593>,  <29.446236, 25.069843, 27.834625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220255, 25.131748, 27.886593>,  <28.843620, 25.234922, 27.973207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220255, 25.131748, 27.886593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172527, 0.182746, -0.967904,
		0.289227, 0.948722, 0.127570,
		0.941585, -0.257935, -0.216535,
		29.502731, 25.054367, 27.821632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099468, 25.812788, 27.563202>,  <28.843620, 25.234922, 27.973207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099468, 25.812788, 27.563202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306768, 25.477215, 27.496735>,  <29.431149, 25.275871, 27.456854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306768, 25.477215, 27.496735>,  <29.099468, 25.812788, 27.563202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306768, 25.477215, 27.496735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098066, 0.134723, -0.986018,
		0.849588, 0.527300, -0.012450,
		0.518250, -0.838931, -0.166169,
		29.462244, 25.225536, 27.446884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606356, 25.983082, 27.071733>,  <29.099468, 25.812788, 27.563202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606356, 25.983082, 27.071733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582756, 25.586321, 27.026751>,  <29.568596, 25.348265, 26.999762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582756, 25.586321, 27.026751>,  <29.606356, 25.983082, 27.071733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582756, 25.586321, 27.026751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087525, 0.117358, -0.989225,
		0.994414, -0.048519, -0.093741,
		-0.058998, -0.991904, -0.112455,
		29.565056, 25.288750, 26.993013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982798, 25.955658, 26.498144>,  <29.606356, 25.983082, 27.071733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982798, 25.955658, 26.498144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781384, 25.610689, 26.518869>,  <29.660536, 25.403708, 26.531305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781384, 25.610689, 26.518869>,  <29.982798, 25.955658, 26.498144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781384, 25.610689, 26.518869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160636, 0.034525, -0.986410,
		0.848911, -0.505014, -0.155920,
		-0.503534, -0.862420, 0.051815,
		29.630323, 25.351963, 26.534414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229258, 25.497927, 26.054153>,  <29.982798, 25.955658, 26.498144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229258, 25.497927, 26.054153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862188, 25.350861, 26.114420>,  <29.641947, 25.262621, 26.150579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862188, 25.350861, 26.114420>,  <30.229258, 25.497927, 26.054153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862188, 25.350861, 26.114420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160574, -0.003691, -0.987017,
		0.363450, -0.929950, -0.055650,
		-0.917671, -0.367667, 0.150667,
		29.586887, 25.240561, 26.159620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172571, 24.880316, 25.665539>,  <30.229258, 25.497927, 26.054153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172571, 24.880316, 25.665539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790627, 24.985106, 25.721556>,  <29.561460, 25.047979, 25.755167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790627, 24.985106, 25.721556>,  <30.172571, 24.880316, 25.665539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790627, 24.985106, 25.721556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196741, -0.204500, -0.958891,
		-0.222556, -0.943162, 0.246809,
		-0.954863, 0.261964, 0.140046,
		29.504168, 25.063698, 25.763569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744761, 24.394888, 25.252506>,  <30.172571, 24.880316, 25.665539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744761, 24.394888, 25.252506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495302, 24.698824, 25.325945>,  <29.345627, 24.881186, 25.370008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495302, 24.698824, 25.325945>,  <29.744761, 24.394888, 25.252506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495302, 24.698824, 25.325945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329451, -0.042497, -0.943216,
		-0.708891, -0.648719, 0.276833,
		-0.623647, 0.759840, 0.183596,
		29.308208, 24.926777, 25.381023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215307, 24.254393, 24.804325>,  <29.744761, 24.394888, 25.252506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215307, 24.254393, 24.804325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165424, 24.642591, 24.886864>,  <29.135494, 24.875511, 24.936388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165424, 24.642591, 24.886864>,  <29.215307, 24.254393, 24.804325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165424, 24.642591, 24.886864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073135, 0.198414, -0.977386,
		-0.989495, -0.136977, 0.046234,
		-0.124706, 0.970499, 0.206347,
		29.128012, 24.933741, 24.948769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743561, 24.414606, 24.372334>,  <29.215307, 24.254393, 24.804325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743561, 24.414606, 24.372334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883377, 24.779663, 24.457100>,  <28.967266, 24.998697, 24.507959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883377, 24.779663, 24.457100>,  <28.743561, 24.414606, 24.372334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883377, 24.779663, 24.457100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170238, 0.284284, -0.943505,
		-0.921326, 0.293715, 0.254734,
		0.349539, 0.912641, 0.211917,
		28.988239, 25.053455, 24.520676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265409, 24.978828, 24.121281>,  <28.743561, 24.414606, 24.372334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265409, 24.978828, 24.121281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638651, 25.122660, 24.119432>,  <28.862597, 25.208960, 24.118322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638651, 25.122660, 24.119432>,  <28.265409, 24.978828, 24.121281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638651, 25.122660, 24.119432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119980, 0.299178, -0.946624,
		-0.339004, 0.883852, 0.322306,
		0.933103, 0.359580, -0.004622,
		28.918581, 25.230534, 24.118046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.170349, 25.578270, 23.737925>,  <28.265409, 24.978828, 24.121281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.170349, 25.578270, 23.737925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559664, 25.487484, 23.724075>,  <28.793253, 25.433012, 23.715765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559664, 25.487484, 23.724075>,  <28.170349, 25.578270, 23.737925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559664, 25.487484, 23.724075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012552, 0.203191, -0.979059,
		0.229247, 0.952471, 0.200613,
		0.973287, -0.226965, -0.034625,
		28.851650, 25.419395, 23.713688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371229, 26.081722, 23.164787>,  <28.170349, 25.578270, 23.737925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371229, 26.081722, 23.164787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660643, 25.811348, 23.220806>,  <28.834291, 25.649124, 23.254417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660643, 25.811348, 23.220806>,  <28.371229, 26.081722, 23.164787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660643, 25.811348, 23.220806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295440, 0.119870, -0.947811,
		0.623870, 0.727149, 0.286428,
		0.723534, -0.675933, 0.140046,
		28.877703, 25.608568, 23.262819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881844, 26.288000, 22.705099>,  <28.371229, 26.081722, 23.164787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881844, 26.288000, 22.705099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.975266, 25.906479, 22.780691>,  <29.031319, 25.677567, 22.826046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.975266, 25.906479, 22.780691>,  <28.881844, 26.288000, 22.705099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975266, 25.906479, 22.780691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301411, -0.113766, -0.946683,
		0.924447, 0.278065, 0.260915,
		0.233556, -0.953801, 0.188982,
		29.045332, 25.620338, 22.837385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572798, 26.243038, 22.500532>,  <28.881844, 26.288000, 22.705099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572798, 26.243038, 22.500532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422180, 25.872580, 22.491880>,  <29.331810, 25.650305, 22.486689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422180, 25.872580, 22.491880>,  <29.572798, 26.243038, 22.500532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422180, 25.872580, 22.491880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125736, -0.027961, -0.991669,
		0.917826, -0.376126, 0.126979,
		-0.376543, -0.926146, -0.021629,
		29.309217, 25.594736, 22.485392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970249, 25.872055, 22.092707>,  <29.572798, 26.243038, 22.500532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970249, 25.872055, 22.092707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639902, 25.646511, 22.093657>,  <29.441694, 25.511185, 22.094227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639902, 25.646511, 22.093657>,  <29.970249, 25.872055, 22.092707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639902, 25.646511, 22.093657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179807, -0.267347, -0.946676,
		0.534428, -0.781401, 0.322179,
		-0.825867, -0.563860, 0.002377,
		29.392141, 25.477352, 22.094370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090652, 25.234035, 21.619694>,  <29.970249, 25.872055, 22.092707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090652, 25.234035, 21.619694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694008, 25.271193, 21.655649>,  <29.456022, 25.293488, 21.677223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694008, 25.271193, 21.655649>,  <30.090652, 25.234035, 21.619694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694008, 25.271193, 21.655649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103519, -0.154196, -0.982602,
		-0.077413, -0.983664, 0.162518,
		-0.991610, 0.092890, 0.089891,
		29.396524, 25.299061, 21.682617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761209, 24.591991, 21.245808>,  <30.090652, 25.234035, 21.619694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761209, 24.591991, 21.245808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504566, 24.896589, 21.282608>,  <29.350580, 25.079348, 21.304689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504566, 24.896589, 21.282608>,  <29.761209, 24.591991, 21.245808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504566, 24.896589, 21.282608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131319, 0.009124, -0.991298,
		-0.755708, -0.648106, 0.094145,
		-0.641607, 0.761496, 0.092003,
		29.312084, 25.125038, 21.310209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225931, 24.341738, 20.803175>,  <29.761209, 24.591991, 21.245808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225931, 24.341738, 20.803175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177177, 24.736794, 20.842598>,  <29.147926, 24.973827, 20.866253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177177, 24.736794, 20.842598>,  <29.225931, 24.341738, 20.803175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177177, 24.736794, 20.842598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093712, 0.087405, -0.991755,
		-0.988111, -0.130114, 0.081900,
		-0.121882, 0.987639, 0.098559,
		29.140614, 25.033085, 20.872166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724146, 24.578747, 20.342176>,  <29.225931, 24.341738, 20.803175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724146, 24.578747, 20.342176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881802, 24.935270, 20.431820>,  <28.976395, 25.149185, 20.485605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881802, 24.935270, 20.431820>,  <28.724146, 24.578747, 20.342176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881802, 24.935270, 20.431820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199635, 0.321053, -0.925781,
		-0.897107, 0.320145, 0.304476,
		0.394137, 0.891309, 0.224107,
		29.000042, 25.202663, 20.499052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247332, 25.117060, 20.150423>,  <28.724146, 24.578747, 20.342176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247332, 25.117060, 20.150423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616165, 25.271786, 20.145794>,  <28.837465, 25.364622, 20.143017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616165, 25.271786, 20.145794>,  <28.247332, 25.117060, 20.150423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616165, 25.271786, 20.145794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209651, 0.474175, -0.855105,
		-0.325281, 0.790905, 0.518325,
		0.922084, 0.386817, -0.011574,
		28.892790, 25.387831, 20.142323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151226, 25.850328, 20.060909>,  <28.247332, 25.117060, 20.150423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151226, 25.850328, 20.060909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492792, 25.726051, 19.893915>,  <28.697733, 25.651485, 19.793718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492792, 25.726051, 19.893915>,  <28.151226, 25.850328, 20.060909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492792, 25.726051, 19.893915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269170, 0.422902, -0.865276,
		0.445393, 0.851248, 0.277493,
		0.853916, -0.310695, -0.417488,
		28.748966, 25.632843, 19.768669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456392, 26.365440, 19.702213>,  <28.151226, 25.850328, 20.060909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456392, 26.365440, 19.702213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597389, 26.029026, 19.538063>,  <28.681988, 25.827177, 19.439573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597389, 26.029026, 19.538063>,  <28.456392, 26.365440, 19.702213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597389, 26.029026, 19.538063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245551, 0.340033, -0.907790,
		0.903025, 0.420756, -0.086658,
		0.352491, -0.841036, -0.410376,
		28.703136, 25.776714, 19.414949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781294, 26.533213, 19.050552>,  <28.456392, 26.365440, 19.702213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781294, 26.533213, 19.050552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690952, 26.144928, 19.017792>,  <28.636747, 25.911957, 18.998135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690952, 26.144928, 19.017792>,  <28.781294, 26.533213, 19.050552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690952, 26.144928, 19.017792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418737, 0.172649, -0.891545,
		0.879574, -0.167063, -0.445466,
		-0.225853, -0.970713, -0.081902,
		28.623196, 25.853714, 18.993221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878721, 26.364220, 18.392601>,  <28.781294, 26.533213, 19.050552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878721, 26.364220, 18.392601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657196, 26.046385, 18.492138>,  <28.524281, 25.855684, 18.551859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657196, 26.046385, 18.492138>,  <28.878721, 26.364220, 18.392601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657196, 26.046385, 18.492138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575998, 0.149794, -0.803609,
		0.601264, -0.588381, -0.540639,
		-0.553812, -0.794588, 0.248841,
		28.491053, 25.808008, 18.566790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880074, 25.918062, 17.820675>,  <28.878721, 26.364220, 18.392601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880074, 25.918062, 17.820675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.551577, 25.803871, 18.018286>,  <28.354479, 25.735357, 18.136852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.551577, 25.803871, 18.018286>,  <28.880074, 25.918062, 17.820675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551577, 25.803871, 18.018286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529325, 0.057935, -0.846439,
		0.213016, -0.956633, -0.198688,
		-0.821243, -0.285475, 0.494029,
		28.305204, 25.718229, 18.166494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674717, 25.328588, 17.488651>,  <28.880074, 25.918062, 17.820675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674717, 25.328588, 17.488651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353153, 25.466629, 17.682407>,  <28.160215, 25.549454, 17.798662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353153, 25.466629, 17.682407>,  <28.674717, 25.328588, 17.488651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353153, 25.466629, 17.682407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523506, -0.024060, -0.851682,
		-0.282262, -0.938257, 0.200005,
		-0.803909, 0.345101, 0.484392,
		28.111980, 25.570158, 17.827724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165112, 24.984015, 17.069666>,  <28.674717, 25.328588, 17.488651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165112, 24.984015, 17.069666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988455, 25.270346, 17.286015>,  <27.882462, 25.442144, 17.415825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988455, 25.270346, 17.286015>,  <28.165112, 24.984015, 17.069666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988455, 25.270346, 17.286015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650338, 0.159887, -0.742628,
		-0.618072, -0.679727, 0.394917,
		-0.441642, 0.715827, 0.540873,
		27.855963, 25.485094, 17.448277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403105, 24.853777, 17.004917>,  <28.165112, 24.984015, 17.069666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403105, 24.853777, 17.004917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423183, 25.229425, 17.140879>,  <27.435230, 25.454815, 17.222456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423183, 25.229425, 17.140879>,  <27.403105, 24.853777, 17.004917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423183, 25.229425, 17.140879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809354, 0.237653, -0.537091,
		-0.585172, -0.248142, 0.772010,
		0.050195, 0.939120, 0.339903,
		27.438242, 25.511162, 17.242849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797781, 24.985022, 17.360819>,  <27.403105, 24.853777, 17.004917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797781, 24.985022, 17.360819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.912266, 25.340202, 17.216808>,  <26.980957, 25.553310, 17.130402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.912266, 25.340202, 17.216808>,  <26.797781, 24.985022, 17.360819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912266, 25.340202, 17.216808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850765, 0.062660, -0.521798,
		-0.440773, 0.455644, 0.773374,
		0.286214, 0.887954, -0.360027,
		26.998131, 25.606588, 17.108801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137070, 25.388805, 17.352682>,  <26.797781, 24.985022, 17.360819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137070, 25.388805, 17.352682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396416, 25.585438, 17.120142>,  <26.552023, 25.703417, 16.980618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396416, 25.585438, 17.120142>,  <26.137070, 25.388805, 17.352682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.396416, 25.585438, 17.120142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745128, 0.253054, -0.617048,
		-0.156217, 0.833254, 0.530363,
		0.648367, 0.491582, -0.581350,
		26.590925, 25.732912, 16.945738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824362, 25.992256, 17.066818>,  <26.137070, 25.388805, 17.352682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824362, 25.992256, 17.066818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112150, 25.970085, 16.789894>,  <26.284822, 25.956783, 16.623739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112150, 25.970085, 16.789894>,  <25.824362, 25.992256, 17.066818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112150, 25.970085, 16.789894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653751, 0.282470, -0.702012,
		0.234467, 0.957673, 0.166993,
		0.719469, -0.055427, -0.692310,
		26.327991, 25.953457, 16.582201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774395, 26.599749, 16.691408>,  <25.824362, 25.992256, 17.066818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774395, 26.599749, 16.691408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953854, 26.323511, 16.464499>,  <26.061529, 26.157768, 16.328352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953854, 26.323511, 16.464499>,  <25.774395, 26.599749, 16.691408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953854, 26.323511, 16.464499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552104, 0.284967, -0.783565,
		0.702778, 0.664738, -0.253429,
		0.448647, -0.690592, -0.567273,
		26.088448, 26.116333, 16.294317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.799109, 27.186646, 16.181879>,  <25.774395, 26.599749, 16.691408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.799109, 27.186646, 16.181879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420004, 27.314104, 16.187708>,  <25.192541, 27.390579, 16.191206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420004, 27.314104, 16.187708>,  <25.799109, 27.186646, 16.181879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420004, 27.314104, 16.187708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096473, 0.242794, 0.965269,
		0.304043, 0.916250, -0.260852,
		-0.947761, 0.318648, 0.014574,
		25.135675, 27.409698, 16.192080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.798481, 27.730738, 16.650311>,  <25.799109, 27.186646, 16.181879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.798481, 27.730738, 16.650311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415068, 27.619015, 16.627676>,  <25.185020, 27.551981, 16.614096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415068, 27.619015, 16.627676>,  <25.798481, 27.730738, 16.650311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415068, 27.619015, 16.627676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135016, 0.270219, 0.953285,
		-0.250968, 0.921395, -0.296725,
		-0.958533, -0.279306, -0.056587,
		25.127508, 27.535223, 16.610701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441450, 28.271399, 16.965971>,  <25.798481, 27.730738, 16.650311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.441450, 28.271399, 16.965971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169769, 27.978415, 16.984669>,  <25.006762, 27.802624, 16.995888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169769, 27.978415, 16.984669>,  <25.441450, 28.271399, 16.965971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.169769, 27.978415, 16.984669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114975, 0.169084, 0.978873,
		-0.724891, 0.659477, -0.199057,
		-0.679201, -0.732462, 0.046745,
		24.966009, 27.758677, 16.998692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.833929, 28.577330, 17.344051>,  <25.441450, 28.271399, 16.965971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.833929, 28.577330, 17.344051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.829273, 28.177443, 17.352348>,  <24.826479, 27.937510, 17.357327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.829273, 28.177443, 17.352348>,  <24.833929, 28.577330, 17.344051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.829273, 28.177443, 17.352348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046050, 0.020186, 0.998735,
		-0.998871, 0.012580, 0.045802,
		-0.011639, -0.999717, 0.020743,
		24.825781, 27.877527, 17.358572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.284098, 28.442295, 17.670807>,  <24.833929, 28.577330, 17.344051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.284098, 28.442295, 17.670807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.527422, 28.128603, 17.719702>,  <24.673416, 27.940388, 17.749039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.527422, 28.128603, 17.719702>,  <24.284098, 28.442295, 17.670807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.527422, 28.128603, 17.719702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055293, 0.111761, 0.992196,
		-0.791772, -0.610321, 0.024623,
		0.608309, -0.784231, 0.122236,
		24.709915, 27.893333, 17.756372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.050093, 28.105217, 18.323753>,  <24.284098, 28.442295, 17.670807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.050093, 28.105217, 18.323753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.413776, 27.949492, 18.264727>,  <24.631987, 27.856056, 18.229311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.413776, 27.949492, 18.264727>,  <24.050093, 28.105217, 18.323753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.413776, 27.949492, 18.264727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055675, -0.237566, 0.969775,
		-0.412603, -0.889943, -0.194322,
		0.909208, -0.389313, -0.147568,
		24.686539, 27.832699, 18.220457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.160036, 27.521196, 18.881710>,  <24.050093, 28.105217, 18.323753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.160036, 27.521196, 18.881710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532875, 27.616426, 18.772520>,  <24.756578, 27.673565, 18.707006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532875, 27.616426, 18.772520>,  <24.160036, 27.521196, 18.881710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532875, 27.616426, 18.772520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328969, -0.241073, 0.913052,
		0.151567, -0.940853, -0.303022,
		0.932098, 0.238074, -0.272973,
		24.812504, 27.687849, 18.690628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.429684, 27.404427, 19.482162>,  <24.160036, 27.521196, 18.881710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.429684, 27.404427, 19.482162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772451, 27.495369, 19.297123>,  <24.978111, 27.549934, 19.186098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772451, 27.495369, 19.297123>,  <24.429684, 27.404427, 19.482162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.772451, 27.495369, 19.297123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511679, -0.266840, 0.816689,
		0.062239, -0.936539, -0.344994,
		0.856920, 0.227355, -0.462600,
		25.029528, 27.563576, 19.158342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.838814, 26.797493, 19.503674>,  <24.429684, 27.404427, 19.482162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.838814, 26.797493, 19.503674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079035, 27.111988, 19.445482>,  <25.223167, 27.300686, 19.410568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079035, 27.111988, 19.445482>,  <24.838814, 26.797493, 19.503674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.079035, 27.111988, 19.445482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498370, -0.225792, 0.837046,
		0.625270, -0.575193, -0.527438,
		0.600554, 0.786239, -0.145478,
		25.259201, 27.347860, 19.401838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.475920, 26.565474, 19.559219>,  <24.838814, 26.797493, 19.503674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.475920, 26.565474, 19.559219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501720, 26.952177, 19.658188>,  <25.517200, 27.184198, 19.717569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501720, 26.952177, 19.658188>,  <25.475920, 26.565474, 19.559219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.501720, 26.952177, 19.658188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394992, -0.252424, 0.883325,
		0.916417, 0.040753, -0.398144,
		0.064503, 0.966758, 0.247423,
		25.521070, 27.242205, 19.732414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137506, 26.645601, 19.915768>,  <25.475920, 26.565474, 19.559219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137506, 26.645601, 19.915768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912596, 26.965065, 20.001551>,  <25.777649, 27.156742, 20.053020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912596, 26.965065, 20.001551>,  <26.137506, 26.645601, 19.915768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912596, 26.965065, 20.001551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320501, -0.028599, 0.946816,
		0.762316, 0.601105, -0.239890,
		-0.562275, 0.798658, 0.214456,
		25.743914, 27.204662, 20.065887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444633, 26.897003, 20.452253>,  <26.137506, 26.645601, 19.915768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444633, 26.897003, 20.452253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107574, 27.110960, 20.477036>,  <25.905338, 27.239334, 20.491905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107574, 27.110960, 20.477036>,  <26.444633, 26.897003, 20.452253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107574, 27.110960, 20.477036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132341, 0.094200, 0.986718,
		0.521950, 0.839654, -0.150165,
		-0.842647, 0.534890, 0.061953,
		25.854780, 27.271427, 20.495621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555729, 27.505440, 20.817402>,  <26.444633, 26.897003, 20.452253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555729, 27.505440, 20.817402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161633, 27.454157, 20.862764>,  <25.925175, 27.423388, 20.889982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161633, 27.454157, 20.862764>,  <26.555729, 27.505440, 20.817402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161633, 27.454157, 20.862764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108097, 0.047649, 0.992998,
		-0.132711, 0.990602, -0.033087,
		-0.985243, -0.128205, 0.113404,
		25.866060, 27.415695, 20.896786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345545, 27.960581, 21.354851>,  <26.555729, 27.505440, 20.817402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345545, 27.960581, 21.354851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067207, 27.674686, 21.326691>,  <25.900206, 27.503149, 21.309795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067207, 27.674686, 21.326691>,  <26.345545, 27.960581, 21.354851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067207, 27.674686, 21.326691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140950, -0.232021, 0.962444,
		-0.704229, 0.659786, 0.262192,
		-0.695841, -0.714737, -0.070399,
		25.858456, 27.460266, 21.305571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776941, 28.122866, 21.858255>,  <26.345545, 27.960581, 21.354851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776941, 28.122866, 21.858255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771826, 27.734039, 21.764513>,  <25.768757, 27.500744, 21.708267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771826, 27.734039, 21.764513>,  <25.776941, 28.122866, 21.858255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771826, 27.734039, 21.764513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018503, -0.234564, 0.971925,
		-0.999747, 0.008095, 0.020986,
		-0.012790, -0.972067, -0.234355,
		25.767988, 27.442419, 21.694206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418716, 27.833921, 22.467962>,  <25.776941, 28.122866, 21.858255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418716, 27.833921, 22.467962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596699, 27.521364, 22.292948>,  <25.703487, 27.333830, 22.187939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596699, 27.521364, 22.292948>,  <25.418716, 27.833921, 22.467962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.596699, 27.521364, 22.292948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358821, -0.292079, 0.886531,
		-0.820526, -0.551463, 0.150419,
		0.444954, -0.781395, -0.437535,
		25.730185, 27.286945, 22.161688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.293037, 27.295486, 22.906183>,  <25.418716, 27.833921, 22.467962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.293037, 27.295486, 22.906183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600700, 27.146061, 22.698782>,  <25.785297, 27.056406, 22.574341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600700, 27.146061, 22.698782>,  <25.293037, 27.295486, 22.906183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600700, 27.146061, 22.698782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376338, -0.390970, 0.839948,
		-0.516495, -0.841184, -0.160131,
		0.769157, -0.373566, -0.518504,
		25.831448, 27.033991, 22.543230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.300661, 26.609097, 23.105639>,  <25.293037, 27.295486, 22.906183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.300661, 26.609097, 23.105639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.670965, 26.695166, 22.981270>,  <25.893147, 26.746807, 22.906649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.670965, 26.695166, 22.981270>,  <25.300661, 26.609097, 23.105639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.670965, 26.695166, 22.981270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374284, -0.404747, 0.834321,
		0.053678, -0.888753, -0.455233,
		0.925759, 0.215171, -0.310919,
		25.948692, 26.759716, 22.887995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.801819, 26.062002, 23.366894>,  <25.300661, 26.609097, 23.105639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.801819, 26.062002, 23.366894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078362, 26.311077, 23.220316>,  <26.244287, 26.460522, 23.132368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078362, 26.311077, 23.220316>,  <25.801819, 26.062002, 23.366894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078362, 26.311077, 23.220316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629757, -0.270733, 0.728087,
		0.354163, -0.734140, -0.579316,
		0.691358, 0.622689, -0.366446,
		26.285769, 26.497885, 23.110382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483980, 25.758673, 23.170551>,  <25.801819, 26.062002, 23.366894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483980, 25.758673, 23.170551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513884, 26.130497, 23.314957>,  <26.531826, 26.353592, 23.401600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513884, 26.130497, 23.314957>,  <26.483980, 25.758673, 23.170551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513884, 26.130497, 23.314957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434583, -0.356208, 0.827196,
		0.897524, 0.095052, -0.430600,
		0.074756, 0.929559, 0.361014,
		26.536310, 26.409365, 23.423262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119631, 25.764067, 23.523237>,  <26.483980, 25.758673, 23.170551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119631, 25.764067, 23.523237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939846, 26.102734, 23.637175>,  <26.831976, 26.305935, 23.705538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939846, 26.102734, 23.637175>,  <27.119631, 25.764067, 23.523237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939846, 26.102734, 23.637175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404292, -0.091542, 0.910038,
		0.796575, 0.524187, -0.301157,
		-0.449461, 0.846669, 0.284845,
		26.805008, 26.356733, 23.722628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628035, 26.144243, 23.850138>,  <27.119631, 25.764067, 23.523237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628035, 26.144243, 23.850138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294727, 26.310019, 23.996508>,  <27.094742, 26.409483, 24.084330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294727, 26.310019, 23.996508>,  <27.628035, 26.144243, 23.850138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294727, 26.310019, 23.996508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357103, -0.101820, 0.928499,
		0.422064, 0.904363, -0.063154,
		-0.833270, 0.414439, 0.365926,
		27.044746, 26.434351, 24.106285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863647, 26.676949, 24.409349>,  <27.628035, 26.144243, 23.850138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863647, 26.676949, 24.409349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479696, 26.595402, 24.486364>,  <27.249325, 26.546474, 24.532574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479696, 26.595402, 24.486364>,  <27.863647, 26.676949, 24.409349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479696, 26.595402, 24.486364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172789, 0.110771, 0.978710,
		-0.220853, 0.972712, -0.071101,
		-0.959879, -0.203866, 0.192538,
		27.191732, 26.534243, 24.544127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670162, 27.131958, 24.991285>,  <27.863647, 26.676949, 24.409349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670162, 27.131958, 24.991285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390690, 26.846310, 24.973940>,  <27.223007, 26.674921, 24.963533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390690, 26.846310, 24.973940>,  <27.670162, 27.131958, 24.991285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390690, 26.846310, 24.973940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112298, 0.049608, 0.992435,
		-0.706566, 0.698265, -0.114854,
		-0.698680, -0.714119, -0.043363,
		27.181086, 26.632074, 24.960932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141266, 27.398777, 25.327375>,  <27.670162, 27.131958, 24.991285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141266, 27.398777, 25.327375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092617, 27.001808, 25.320341>,  <27.063429, 26.763628, 25.316120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092617, 27.001808, 25.320341>,  <27.141266, 27.398777, 25.327375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.092617, 27.001808, 25.320341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131276, -0.001481, 0.991345,
		-0.983857, 0.122877, -0.130101,
		-0.121621, -0.992421, -0.017588,
		27.056131, 26.704082, 25.315065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.488115, 27.296354, 25.668148>,  <27.141266, 27.398777, 25.327375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.488115, 27.296354, 25.668148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725065, 26.974094, 25.669664>,  <26.867235, 26.780739, 25.670574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725065, 26.974094, 25.669664>,  <26.488115, 27.296354, 25.668148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725065, 26.974094, 25.669664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006411, -0.000008, 0.999979,
		-0.805636, -0.592389, -0.005170,
		0.592377, -0.805652, 0.003791,
		26.902779, 26.732399, 25.670801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.185007, 26.835342, 26.115850>,  <26.488115, 27.296354, 25.668148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.185007, 26.835342, 26.115850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548908, 26.672710, 26.082289>,  <26.767250, 26.575130, 26.062153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548908, 26.672710, 26.082289>,  <26.185007, 26.835342, 26.115850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548908, 26.672710, 26.082289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060495, -0.070112, 0.995703,
		-0.410718, -0.910920, -0.039189,
		0.909753, -0.406583, -0.083903,
		26.821835, 26.550735, 26.057117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112015, 26.195904, 26.449425>,  <26.185007, 26.835342, 26.115850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.112015, 26.195904, 26.449425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497911, 26.300251, 26.463388>,  <26.729450, 26.362860, 26.471766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497911, 26.300251, 26.463388>,  <26.112015, 26.195904, 26.449425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497911, 26.300251, 26.463388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021455, -0.054240, 0.998297,
		0.262318, -0.963849, -0.046731,
		0.964743, 0.260868, 0.034907,
		26.787334, 26.378511, 26.473860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203827, 25.882206, 27.050537>,  <26.112015, 26.195904, 26.449425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203827, 25.882206, 27.050537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530340, 26.110266, 27.013426>,  <26.726250, 26.247101, 26.991159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530340, 26.110266, 27.013426>,  <26.203827, 25.882206, 27.050537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530340, 26.110266, 27.013426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118801, -0.008518, 0.992881,
		0.565300, -0.821497, -0.074688,
		0.816285, 0.570149, -0.092779,
		26.775227, 26.281311, 26.985592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790344, 25.571468, 27.421341>,  <26.203827, 25.882206, 27.050537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790344, 25.571468, 27.421341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861561, 25.964334, 27.397181>,  <26.904291, 26.200054, 27.382685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861561, 25.964334, 27.397181>,  <26.790344, 25.571468, 27.421341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861561, 25.964334, 27.397181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272670, 0.009738, 0.962058,
		0.945491, -0.187755, -0.266074,
		0.178040, 0.982168, -0.060403,
		26.914972, 26.258986, 27.379059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350410, 25.675999, 27.894329>,  <26.790344, 25.571468, 27.421341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350410, 25.675999, 27.894329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227339, 26.047255, 27.810530>,  <27.153496, 26.270008, 27.760250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227339, 26.047255, 27.810530>,  <27.350410, 25.675999, 27.894329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227339, 26.047255, 27.810530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271914, 0.296766, 0.915420,
		0.911809, 0.224693, -0.343683,
		-0.307682, 0.928140, -0.209497,
		27.135035, 26.325697, 27.747681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889099, 26.056967, 28.125452>,  <27.350410, 25.675999, 27.894329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889099, 26.056967, 28.125452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566895, 26.293962, 28.129671>,  <27.373571, 26.436159, 28.132202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566895, 26.293962, 28.129671>,  <27.889099, 26.056967, 28.125452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566895, 26.293962, 28.129671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292195, 0.381638, 0.876912,
		0.515535, 0.709443, -0.480535,
		-0.805510, 0.592488, 0.010548,
		27.325241, 26.471708, 28.132835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024488, 26.801813, 28.381330>,  <27.889099, 26.056967, 28.125452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024488, 26.801813, 28.381330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632872, 26.753580, 28.446976>,  <27.397902, 26.724640, 28.486362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632872, 26.753580, 28.446976>,  <28.024488, 26.801813, 28.381330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632872, 26.753580, 28.446976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108008, 0.375740, 0.920410,
		-0.172650, 0.918847, -0.354842,
		-0.979044, -0.120583, 0.164114,
		27.339159, 26.717405, 28.496210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776350, 27.474659, 28.632013>,  <28.024488, 26.801813, 28.381330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776350, 27.474659, 28.632013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528374, 27.189413, 28.762947>,  <27.379589, 27.018267, 28.841507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528374, 27.189413, 28.762947>,  <27.776350, 27.474659, 28.632013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528374, 27.189413, 28.762947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075654, 0.360903, 0.929530,
		-0.780995, 0.601015, -0.169788,
		-0.619938, -0.713113, 0.327332,
		27.342392, 26.975479, 28.861147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312618, 27.808527, 29.085058>,  <27.776350, 27.474659, 28.632013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312618, 27.808527, 29.085058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236065, 27.431444, 29.194366>,  <27.190132, 27.205194, 29.259951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236065, 27.431444, 29.194366>,  <27.312618, 27.808527, 29.085058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236065, 27.431444, 29.194366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074868, 0.291626, 0.953598,
		-0.978656, 0.162044, -0.126391,
		-0.191384, -0.942707, 0.273270,
		27.178650, 27.148632, 29.276348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773726, 27.840542, 29.508049>,  <27.312618, 27.808527, 29.085058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773726, 27.840542, 29.508049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910791, 27.482193, 29.621180>,  <26.993031, 27.267183, 29.689058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910791, 27.482193, 29.621180>,  <26.773726, 27.840542, 29.508049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910791, 27.482193, 29.621180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146975, 0.246224, 0.958004,
		-0.927890, -0.369842, -0.047299,
		0.342664, -0.895875, 0.282826,
		27.013590, 27.213430, 29.706028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.338419, 27.536680, 29.994675>,  <26.773726, 27.840542, 29.508049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.338419, 27.536680, 29.994675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685907, 27.346100, 30.048809>,  <26.894400, 27.231750, 30.081289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685907, 27.346100, 30.048809>,  <26.338419, 27.536680, 29.994675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685907, 27.346100, 30.048809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069654, 0.153003, 0.985768,
		-0.490379, -0.865784, 0.099730,
		0.868721, -0.476454, 0.135335,
		26.946524, 27.203163, 30.089409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205832, 27.219624, 30.546051>,  <26.338419, 27.536680, 29.994675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205832, 27.219624, 30.546051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604176, 27.193213, 30.521069>,  <26.843182, 27.177366, 30.506079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604176, 27.193213, 30.521069>,  <26.205832, 27.219624, 30.546051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604176, 27.193213, 30.521069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074847, 0.205941, 0.975698,
		-0.051560, -0.976334, 0.210031,
		0.995861, -0.066027, -0.062458,
		26.902933, 27.173405, 30.502331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427761, 26.790295, 31.081589>,  <26.205832, 27.219624, 30.546051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427761, 26.790295, 31.081589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760069, 26.990412, 30.983994>,  <26.959454, 27.110483, 30.925436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760069, 26.990412, 30.983994>,  <26.427761, 26.790295, 31.081589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.760069, 26.990412, 30.983994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236178, 0.080096, 0.968403,
		0.504029, -0.862143, -0.051617,
		0.830768, 0.500294, -0.243990,
		27.009298, 27.140499, 30.910797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986118, 26.485964, 31.459045>,  <26.427761, 26.790295, 31.081589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986118, 26.485964, 31.459045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.106440, 26.860331, 31.385744>,  <27.178631, 27.084949, 31.341764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.106440, 26.860331, 31.385744>,  <26.986118, 26.485964, 31.459045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.106440, 26.860331, 31.385744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186441, 0.130734, 0.973729,
		0.935285, -0.327064, -0.135168,
		0.300801, 0.935916, -0.183252,
		27.196680, 27.141106, 31.330769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610054, 26.628185, 31.770035>,  <26.986118, 26.485964, 31.459045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610054, 26.628185, 31.770035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423201, 26.979425, 31.728609>,  <27.311089, 27.190168, 31.703753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423201, 26.979425, 31.728609>,  <27.610054, 26.628185, 31.770035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423201, 26.979425, 31.728609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205714, 0.221853, 0.953133,
		0.859922, 0.423937, -0.284273,
		-0.467135, 0.878099, -0.103566,
		27.283060, 27.242855, 31.697538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978531, 27.084158, 32.270100>,  <27.610054, 26.628185, 31.770035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978531, 27.084158, 32.270100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633148, 27.264036, 32.178699>,  <27.425919, 27.371964, 32.123859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633148, 27.264036, 32.178699>,  <27.978531, 27.084158, 32.270100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633148, 27.264036, 32.178699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128647, 0.241695, 0.961787,
		0.487739, 0.859859, -0.150841,
		-0.863458, 0.449696, -0.228502,
		27.374111, 27.398945, 32.110149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402674, 27.286448, 32.720375>,  <27.978531, 27.084158, 32.270100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402674, 27.286448, 32.720375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255951, 27.556181, 32.976727>,  <28.167917, 27.718021, 33.130535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255951, 27.556181, 32.976727>,  <28.402674, 27.286448, 32.720375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255951, 27.556181, 32.976727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459044, -0.467990, 0.755158,
		0.809154, 0.571189, -0.137887,
		-0.366809, 0.674336, 0.640877,
		28.145908, 27.758482, 33.168991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920092, 27.682713, 33.163551>,  <28.402674, 27.286448, 32.720375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920092, 27.682713, 33.163551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581665, 27.651215, 33.374443>,  <28.378609, 27.632317, 33.500977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581665, 27.651215, 33.374443>,  <28.920092, 27.682713, 33.163551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581665, 27.651215, 33.374443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522609, -0.317575, 0.791218,
		0.105132, 0.944958, 0.309841,
		-0.846066, -0.078743, 0.527231,
		28.327845, 27.627592, 33.532612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653139, 27.437189, 32.991699>,  <28.920092, 27.682713, 33.163551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653139, 27.437189, 32.991699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006157, 27.559383, 32.848705>,  <30.217968, 27.632700, 32.762909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006157, 27.559383, 32.848705>,  <29.653139, 27.437189, 32.991699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006157, 27.559383, 32.848705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356354, -0.061529, -0.932323,
		-0.306807, 0.950207, 0.054559,
		0.882543, 0.305486, -0.357488,
		30.270920, 27.651030, 32.741459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558567, 27.946815, 32.498379>,  <29.653139, 27.437189, 32.991699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558567, 27.946815, 32.498379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921291, 27.804554, 32.407867>,  <30.138926, 27.719196, 32.353561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921291, 27.804554, 32.407867>,  <29.558567, 27.946815, 32.498379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921291, 27.804554, 32.407867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242937, -0.002254, -0.970039,
		0.344488, 0.934615, -0.088445,
		0.906813, -0.355654, -0.226276,
		30.193335, 27.697859, 32.339985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895145, 28.321087, 32.046295>,  <29.558567, 27.946815, 32.498379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895145, 28.321087, 32.046295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.024084, 27.946299, 31.992365>,  <30.101448, 27.721426, 31.960007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.024084, 27.946299, 31.992365>,  <29.895145, 28.321087, 32.046295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024084, 27.946299, 31.992365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312958, 0.028933, -0.949326,
		0.893393, 0.348205, -0.283906,
		0.322346, -0.936972, -0.134822,
		30.120789, 27.665207, 31.951918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386442, 28.200106, 31.469263>,  <29.895145, 28.321087, 32.046295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386442, 28.200106, 31.469263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176792, 27.862688, 31.516127>,  <30.051003, 27.660238, 31.544245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176792, 27.862688, 31.516127>,  <30.386442, 28.200106, 31.469263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176792, 27.862688, 31.516127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460388, 0.164906, -0.872266,
		0.716475, -0.511116, -0.474789,
		-0.524125, -0.843544, 0.117161,
		30.019554, 27.609625, 31.551275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974840, 27.994930, 31.006901>,  <30.386442, 28.200106, 31.469263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974840, 27.994930, 31.006901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734926, 27.902288, 30.700537>,  <30.590977, 27.846704, 30.516718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734926, 27.902288, 30.700537>,  <30.974840, 27.994930, 31.006901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734926, 27.902288, 30.700537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796085, 0.076236, 0.600364,
		-0.080656, 0.969818, -0.230101,
		-0.599786, -0.231603, -0.765909,
		30.554991, 27.832808, 30.470764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451416, 28.436159, 30.767239>,  <30.974840, 27.994930, 31.006901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451416, 28.436159, 30.767239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320263, 28.059715, 30.734251>,  <30.241571, 27.833849, 30.714458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320263, 28.059715, 30.734251>,  <30.451416, 28.436159, 30.767239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320263, 28.059715, 30.734251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822067, 0.241212, 0.515775,
		-0.465510, 0.236907, -0.852746,
		-0.327883, -0.941112, -0.082467,
		30.221897, 27.777382, 30.709511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730244, 28.806557, 30.117546>,  <30.451416, 28.436159, 30.767239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730244, 28.806557, 30.117546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767527, 28.967918, 29.753441>,  <30.789896, 29.064735, 29.534977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767527, 28.967918, 29.753441>,  <30.730244, 28.806557, 30.117546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767527, 28.967918, 29.753441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558279, -0.778174, -0.287697,
		-0.824400, -0.481365, -0.297745,
		0.093210, 0.403403, -0.910263,
		30.795490, 29.088940, 29.480362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785873, 29.534912, 30.177467>,  <30.730244, 28.806557, 30.117546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785873, 29.534912, 30.177467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660503, 29.288719, 30.466726>,  <30.585281, 29.141003, 30.640282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660503, 29.288719, 30.466726>,  <30.785873, 29.534912, 30.177467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660503, 29.288719, 30.466726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865029, 0.129126, 0.484821,
		-0.391777, 0.777500, 0.491940,
		-0.313425, -0.615484, 0.723148,
		30.566475, 29.104074, 30.683670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691042, 30.052647, 30.648848>,  <30.785873, 29.534912, 30.177467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691042, 30.052647, 30.648848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759195, 29.682732, 30.784929>,  <30.800087, 29.460783, 30.866579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759195, 29.682732, 30.784929>,  <30.691042, 30.052647, 30.648848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759195, 29.682732, 30.784929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602052, 0.371016, 0.707022,
		-0.780066, 0.084355, 0.619985,
		0.170383, -0.924787, 0.340204,
		30.810310, 29.405296, 30.886990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512707, 29.994799, 31.355280>,  <30.691042, 30.052647, 30.648848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512707, 29.994799, 31.355280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783169, 29.712866, 31.269466>,  <30.945446, 29.543707, 31.217978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783169, 29.712866, 31.269466>,  <30.512707, 29.994799, 31.355280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783169, 29.712866, 31.269466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555304, 0.296172, 0.777123,
		-0.484202, -0.644588, 0.591655,
		0.676156, -0.704832, -0.214535,
		30.986015, 29.501415, 31.205107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774742, 29.704868, 31.991241>,  <30.512707, 29.994799, 31.355280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774742, 29.704868, 31.991241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050470, 29.682644, 31.702312>,  <31.215906, 29.669310, 31.528955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050470, 29.682644, 31.702312>,  <30.774742, 29.704868, 31.991241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050470, 29.682644, 31.702312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723161, 0.112382, 0.681475,
		0.043311, -0.992110, 0.117648,
		0.689320, -0.055563, -0.722323,
		31.257267, 29.665976, 31.485615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247150, 29.185705, 32.117264>,  <30.774742, 29.704868, 31.991241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247150, 29.185705, 32.117264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413906, 29.478148, 31.901228>,  <31.513960, 29.653612, 31.771606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413906, 29.478148, 31.901228>,  <31.247150, 29.185705, 32.117264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413906, 29.478148, 31.901228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757455, 0.049031, 0.651044,
		0.502461, -0.680502, -0.533338,
		0.416887, 0.731104, -0.540086,
		31.538973, 29.697479, 31.739202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856485, 28.931257, 31.894112>,  <31.247150, 29.185705, 32.117264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856485, 28.931257, 31.894112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876713, 29.330635, 31.903536>,  <31.888849, 29.570261, 31.909189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876713, 29.330635, 31.903536>,  <31.856485, 28.931257, 31.894112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876713, 29.330635, 31.903536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837435, -0.055243, 0.543737,
		0.544192, -0.007766, -0.838925,
		0.050568, 0.998443, 0.023559,
		31.891884, 29.630167, 31.910604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580582, 29.165047, 31.813847>,  <31.856485, 28.931257, 31.894112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580582, 29.165047, 31.813847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430622, 29.479712, 32.010056>,  <32.340645, 29.668510, 32.127781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430622, 29.479712, 32.010056>,  <32.580582, 29.165047, 31.813847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430622, 29.479712, 32.010056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910670, 0.213427, 0.353735,
		0.173581, 0.579317, -0.796405,
		-0.374899, 0.786664, 0.490520,
		32.318153, 29.715712, 32.157211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038219, 29.858479, 31.681208>,  <32.580582, 29.165047, 31.813847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038219, 29.858479, 31.681208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821583, 29.888691, 32.016106>,  <32.691601, 29.906818, 32.217045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821583, 29.888691, 32.016106>,  <33.038219, 29.858479, 31.681208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821583, 29.888691, 32.016106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795627, 0.367597, 0.481507,
		-0.271401, 0.926913, -0.259179,
		-0.541589, 0.075529, 0.837244,
		32.659107, 29.911350, 32.267281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864933, 30.489550, 31.833246>,  <33.038219, 29.858479, 31.681208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864933, 30.489550, 31.833246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550121, 30.566284, 32.067776>,  <32.361233, 30.612324, 32.208492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550121, 30.566284, 32.067776>,  <32.864933, 30.489550, 31.833246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550121, 30.566284, 32.067776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493160, 0.766653, 0.411141,
		-0.370637, 0.612734, -0.697987,
		-0.787033, 0.191835, 0.586326,
		32.314011, 30.623835, 32.243675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078224, 31.176739, 32.090752>,  <32.864933, 30.489550, 31.833246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078224, 31.176739, 32.090752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812561, 30.985794, 32.320889>,  <32.653164, 30.871227, 32.458969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812561, 30.985794, 32.320889>,  <33.078224, 31.176739, 32.090752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812561, 30.985794, 32.320889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403568, 0.418891, 0.813427,
		-0.629305, 0.772434, -0.085562,
		-0.664159, -0.477364, 0.575340,
		32.613312, 30.842585, 32.493492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684856, 31.639908, 32.466881>,  <33.078224, 31.176739, 32.090752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684856, 31.639908, 32.466881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757000, 31.292221, 32.651028>,  <32.800285, 31.083609, 32.761517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757000, 31.292221, 32.651028>,  <32.684856, 31.639908, 32.466881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757000, 31.292221, 32.651028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363095, 0.493817, 0.790131,
		-0.914130, 0.024651, 0.404672,
		0.180356, -0.869216, 0.460364,
		32.811108, 31.031456, 32.789135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442787, 31.706125, 33.128574>,  <32.684856, 31.639908, 32.466881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442787, 31.706125, 33.128574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674801, 31.387552, 33.196999>,  <32.814007, 31.196409, 33.238052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674801, 31.387552, 33.196999>,  <32.442787, 31.706125, 33.128574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674801, 31.387552, 33.196999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383816, 0.452429, 0.804980,
		-0.718506, -0.401255, 0.568105,
		0.580029, -0.796431, 0.171065,
		32.848808, 31.148623, 33.248318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421085, 31.579380, 33.811710>,  <32.442787, 31.706125, 33.128574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421085, 31.579380, 33.811710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759743, 31.413914, 33.677795>,  <32.962936, 31.314634, 33.597446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759743, 31.413914, 33.677795>,  <32.421085, 31.579380, 33.811710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759743, 31.413914, 33.677795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484023, 0.337105, 0.807516,
		-0.221185, -0.845718, 0.485631,
		0.846640, -0.413667, -0.334785,
		33.013733, 31.289814, 33.577358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812622, 30.986383, 34.116478>,  <32.421085, 31.579380, 33.811710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812622, 30.986383, 34.116478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005260, 31.312834, 33.988724>,  <33.120842, 31.508705, 33.912071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005260, 31.312834, 33.988724>,  <32.812622, 30.986383, 34.116478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005260, 31.312834, 33.988724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296594, 0.191147, 0.935679,
		0.824681, -0.545344, -0.150003,
		0.481594, 0.816127, -0.319381,
		33.149738, 31.557673, 33.892910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368256, 31.030674, 34.542812>,  <32.812622, 30.986383, 34.116478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368256, 31.030674, 34.542812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266846, 31.396164, 34.415794>,  <33.206001, 31.615458, 34.339584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266846, 31.396164, 34.415794>,  <33.368256, 31.030674, 34.542812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266846, 31.396164, 34.415794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059720, 0.342430, 0.937643,
		0.965484, 0.218750, -0.141381,
		-0.253523, 0.913723, -0.317547,
		33.190788, 31.670280, 34.320530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039330, 31.642441, 34.995689>,  <33.368256, 31.030674, 34.542812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039330, 31.642441, 34.995689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321629, 31.428106, 35.181076>,  <33.491009, 31.299505, 35.292309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321629, 31.428106, 35.181076>,  <33.039330, 31.642441, 34.995689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321629, 31.428106, 35.181076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554935, -0.011434, 0.831815,
		-0.440417, -0.844245, -0.305424,
		0.705748, -0.535836, 0.463465,
		33.533352, 31.267355, 35.320114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299084, 31.870378, 35.659878>,  <33.039330, 31.642441, 34.995689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299084, 31.870378, 35.659878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325550, 31.543083, 35.888302>,  <33.341431, 31.346706, 36.025356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325550, 31.543083, 35.888302>,  <33.299084, 31.870378, 35.659878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325550, 31.543083, 35.888302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591421, 0.493106, 0.638018,
		-0.803644, 0.295525, 0.516547,
		0.066162, -0.818236, 0.571062,
		33.345398, 31.297613, 36.059620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040123, 32.149601, 36.246742>,  <33.299084, 31.870378, 35.659878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040123, 32.149601, 36.246742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290318, 31.838827, 36.275433>,  <33.440434, 31.652363, 36.292645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290318, 31.838827, 36.275433>,  <33.040123, 32.149601, 36.246742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290318, 31.838827, 36.275433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530304, 0.490750, 0.691333,
		-0.572320, -0.394381, 0.718967,
		0.625482, -0.776935, 0.071724,
		33.477962, 31.605747, 36.296951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237995, 32.167328, 36.953350>,  <33.040123, 32.149601, 36.246742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237995, 32.167328, 36.953350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508446, 31.976877, 36.728439>,  <33.670715, 31.862606, 36.593491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508446, 31.976877, 36.728439>,  <33.237995, 32.167328, 36.953350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508446, 31.976877, 36.728439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736659, 0.422569, 0.527986,
		-0.013787, -0.771192, 0.636453,
		0.676124, -0.476128, -0.562279,
		33.711285, 31.834038, 36.559757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667690, 31.735689, 37.476570>,  <33.237995, 32.167328, 36.953350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667690, 31.735689, 37.476570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853489, 31.864414, 37.146557>,  <33.964970, 31.941650, 36.948551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853489, 31.864414, 37.146557>,  <33.667690, 31.735689, 37.476570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853489, 31.864414, 37.146557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832843, 0.157929, 0.530501,
		0.301019, -0.933538, -0.194663,
		0.464500, 0.321815, -0.825031,
		33.992840, 31.960958, 36.899048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327190, 31.547646, 37.493568>,  <33.667690, 31.735689, 37.476570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327190, 31.547646, 37.493568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399277, 31.835791, 37.225658>,  <34.442528, 32.008678, 37.064911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399277, 31.835791, 37.225658>,  <34.327190, 31.547646, 37.493568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399277, 31.835791, 37.225658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908875, 0.138420, 0.393429,
		0.376122, -0.679644, -0.629775,
		0.180218, 0.720364, -0.669774,
		34.453342, 32.051899, 37.024727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008644, 31.438360, 37.224339>,  <34.327190, 31.547646, 37.493568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008644, 31.438360, 37.224339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920387, 31.826683, 37.186710>,  <34.867432, 32.059677, 37.164131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920387, 31.826683, 37.186710>,  <35.008644, 31.438360, 37.224339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920387, 31.826683, 37.186710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869839, 0.239493, 0.431305,
		0.441244, 0.013336, -0.897288,
		-0.220646, 0.970807, -0.094075,
		34.854195, 32.117924, 37.158489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715904, 31.714808, 37.039471>,  <35.008644, 31.438360, 37.224339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715904, 31.714808, 37.039471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473000, 32.005585, 37.167709>,  <35.327255, 32.180050, 37.244652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473000, 32.005585, 37.167709>,  <35.715904, 31.714808, 37.039471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473000, 32.005585, 37.167709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745532, 0.381911, 0.546193,
		0.274610, 0.570702, -0.773879,
		-0.607266, 0.726941, 0.320600,
		35.290821, 32.223667, 37.263889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922516, 32.396202, 36.934628>,  <35.715904, 31.714808, 37.039471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922516, 32.396202, 36.934628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708427, 32.372520, 37.271683>,  <35.579975, 32.358311, 37.473915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708427, 32.372520, 37.271683>,  <35.922516, 32.396202, 36.934628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708427, 32.372520, 37.271683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809147, 0.250483, 0.531544,
		-0.242535, 0.966309, -0.086159,
		-0.535217, -0.059203, 0.842637,
		35.547863, 32.354759, 37.524475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301899, 32.952297, 37.064655>,  <35.922516, 32.396202, 36.934628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301899, 32.952297, 37.064655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209896, 32.813290, 37.428265>,  <36.154694, 32.729885, 37.646431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209896, 32.813290, 37.428265>,  <36.301899, 32.952297, 37.064655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209896, 32.813290, 37.428265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922644, 0.219248, 0.317266,
		-0.309558, 0.911681, 0.270207,
		-0.230003, -0.347517, 0.909027,
		36.140896, 32.709034, 37.700974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281055, 33.480942, 37.586884>,  <36.301899, 32.952297, 37.064655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281055, 33.480942, 37.586884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377594, 33.131908, 37.756752>,  <36.435516, 32.922489, 37.858673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377594, 33.131908, 37.756752>,  <36.281055, 33.480942, 37.586884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377594, 33.131908, 37.756752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942714, 0.314664, 0.110801,
		-0.230313, 0.373607, 0.898540,
		0.241342, -0.872585, 0.424676,
		36.449997, 32.870132, 37.884155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780476, 33.582294, 38.201332>,  <36.281055, 33.480942, 37.586884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780476, 33.582294, 38.201332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801113, 33.244053, 37.988804>,  <36.813496, 33.041107, 37.861286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801113, 33.244053, 37.988804>,  <36.780476, 33.582294, 38.201332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801113, 33.244053, 37.988804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975953, 0.155518, -0.152738,
		0.211785, -0.510661, 0.833290,
		0.051594, -0.845600, -0.531318,
		36.816589, 32.990372, 37.829407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205196, 33.044029, 38.506027>,  <36.780476, 33.582294, 38.201332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205196, 33.044029, 38.506027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211269, 33.021748, 38.106693>,  <37.214912, 33.008377, 37.867092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211269, 33.021748, 38.106693>,  <37.205196, 33.044029, 38.506027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211269, 33.021748, 38.106693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959809, 0.280651, -0.001063,
		0.280242, -0.958192, 0.057727,
		0.015183, -0.055705, -0.998332,
		37.215824, 33.005035, 37.807194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871243, 32.830044, 38.299580>,  <37.205196, 33.044029, 38.506027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871243, 32.830044, 38.299580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712753, 33.030525, 37.991863>,  <37.617661, 33.150814, 37.807236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712753, 33.030525, 37.991863>,  <37.871243, 32.830044, 38.299580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712753, 33.030525, 37.991863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837649, 0.540415, -0.079342,
		0.375968, -0.675830, -0.633957,
		-0.396222, 0.501204, -0.769287,
		37.593887, 33.180885, 37.761078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407467, 32.671055, 37.800945>,  <37.871243, 32.830044, 38.299580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407467, 32.671055, 37.800945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197979, 33.002003, 37.719776>,  <38.072285, 33.200569, 37.671074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197979, 33.002003, 37.719776>,  <38.407467, 32.671055, 37.800945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197979, 33.002003, 37.719776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848516, 0.485463, -0.210583,
		-0.075720, -0.282467, -0.956284,
		-0.523723, 0.827368, -0.202919,
		38.040863, 33.250214, 37.658901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748486, 33.058060, 37.299450>,  <38.407467, 32.671055, 37.800945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748486, 33.058060, 37.299450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528576, 33.346104, 37.468773>,  <38.396629, 33.518932, 37.570366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528576, 33.346104, 37.468773>,  <38.748486, 33.058060, 37.299450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528576, 33.346104, 37.468773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736000, 0.657259, -0.162219,
		-0.395039, 0.222372, -0.891344,
		-0.549771, 0.720112, 0.423309,
		38.363644, 33.562138, 37.595764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899059, 33.667709, 36.926670>,  <38.748486, 33.058060, 37.299450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899059, 33.667709, 36.926670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801517, 33.735432, 37.308636>,  <38.742992, 33.776066, 37.537815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801517, 33.735432, 37.308636>,  <38.899059, 33.667709, 36.926670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801517, 33.735432, 37.308636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823066, 0.556904, 0.111445,
		-0.512929, 0.813137, -0.275158,
		-0.243857, 0.169310, 0.954918,
		38.728359, 33.786224, 37.595112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745342, 34.359131, 37.160797>,  <38.899059, 33.667709, 36.926670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745342, 34.359131, 37.160797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881126, 34.200859, 37.502136>,  <38.962597, 34.105896, 37.706940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881126, 34.200859, 37.502136>,  <38.745342, 34.359131, 37.160797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881126, 34.200859, 37.502136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766557, 0.642136, -0.007191,
		-0.545122, 0.656583, 0.521288,
		0.339459, -0.395677, 0.853350,
		38.982964, 34.082157, 37.758141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949268, 34.929672, 37.741116>,  <38.745342, 34.359131, 37.160797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949268, 34.929672, 37.741116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138622, 34.577751, 37.758335>,  <39.252235, 34.366600, 37.768669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138622, 34.577751, 37.758335>,  <38.949268, 34.929672, 37.741116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138622, 34.577751, 37.758335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877659, 0.466949, -0.108039,
		0.074949, 0.088930, 0.993214,
		0.473388, -0.879801, 0.043053,
		39.280640, 34.313812, 37.771252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519726, 34.935143, 38.230076>,  <38.949268, 34.929672, 37.741116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519726, 34.935143, 38.230076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593945, 34.668568, 37.941231>,  <39.638474, 34.508625, 37.767925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593945, 34.668568, 37.941231>,  <39.519726, 34.935143, 38.230076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593945, 34.668568, 37.941231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917845, 0.379966, -0.114834,
		0.350906, -0.641477, 0.682182,
		0.185543, -0.666433, -0.722109,
		39.649609, 34.468639, 37.724598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123093, 34.567547, 38.433414>,  <39.519726, 34.935143, 38.230076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123093, 34.567547, 38.433414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075928, 34.565323, 38.036213>,  <40.047630, 34.563988, 37.797890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075928, 34.565323, 38.036213>,  <40.123093, 34.567547, 38.433414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075928, 34.565323, 38.036213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983210, 0.139586, -0.117530,
		0.139263, -0.990194, -0.010999,
		-0.117913, -0.005553, -0.993008,
		40.040554, 34.563656, 37.738312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522758, 34.075569, 38.102512>,  <40.123093, 34.567547, 38.433414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522758, 34.075569, 38.102512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446079, 34.421268, 37.916470>,  <40.400070, 34.628689, 37.804844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446079, 34.421268, 37.916470>,  <40.522758, 34.075569, 38.102512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446079, 34.421268, 37.916470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980583, 0.148712, -0.127833,
		-0.041312, -0.480586, -0.875974,
		-0.191702, 0.864246, -0.465111,
		40.388569, 34.680542, 37.776936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847759, 34.016197, 37.478966>,  <40.522758, 34.075569, 38.102512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847759, 34.016197, 37.478966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798927, 34.396034, 37.594456>,  <40.769627, 34.623936, 37.663750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798927, 34.396034, 37.594456>,  <40.847759, 34.016197, 37.478966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798927, 34.396034, 37.594456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947094, 0.198456, -0.252248,
		-0.296833, 0.242657, -0.923584,
		-0.122081, 0.949596, 0.288728,
		40.762302, 34.680912, 37.681072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166107, 34.434155, 37.007675>,  <40.847759, 34.016197, 37.478966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166107, 34.434155, 37.007675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105614, 34.679485, 37.317760>,  <41.069317, 34.826683, 37.503811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105614, 34.679485, 37.317760>,  <41.166107, 34.434155, 37.007675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105614, 34.679485, 37.317760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763907, 0.570234, -0.302124,
		-0.627355, 0.546503, -0.554762,
		-0.151233, 0.613325, 0.775217,
		41.060246, 34.863483, 37.550327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149952, 35.209110, 36.744816>,  <41.166107, 34.434155, 37.007675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149952, 35.209110, 36.744816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310734, 35.152126, 37.106621>,  <41.407204, 35.117935, 37.323704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310734, 35.152126, 37.106621>,  <41.149952, 35.209110, 36.744816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310734, 35.152126, 37.106621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903524, 0.221992, -0.366557,
		-0.148576, 0.964586, 0.217944,
		0.401957, -0.142456, 0.904509,
		41.431320, 35.109390, 37.377972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281990, 35.886013, 37.025528>,  <41.149952, 35.209110, 36.744816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281990, 35.886013, 37.025528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539001, 35.600239, 37.136337>,  <41.693211, 35.428776, 37.202824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539001, 35.600239, 37.136337>,  <41.281990, 35.886013, 37.025528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539001, 35.600239, 37.136337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758484, 0.541622, -0.362420,
		0.108883, 0.442982, 0.889894,
		0.642532, -0.714431, 0.277021,
		41.731762, 35.385910, 37.219444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859253, 36.239456, 37.364586>,  <41.281990, 35.886013, 37.025528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859253, 36.239456, 37.364586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972065, 35.881767, 37.225544>,  <42.039753, 35.667152, 37.142120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972065, 35.881767, 37.225544>,  <41.859253, 36.239456, 37.364586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972065, 35.881767, 37.225544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907097, 0.366536, -0.206944,
		0.312462, -0.256943, 0.914521,
		0.282032, -0.894221, -0.347600,
		42.056675, 35.613503, 37.121265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587337, 36.065811, 37.558609>,  <41.859253, 36.239456, 37.364586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587337, 36.065811, 37.558609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494144, 35.816124, 37.260330>,  <42.438229, 35.666313, 37.081364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494144, 35.816124, 37.260330>,  <42.587337, 36.065811, 37.558609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494144, 35.816124, 37.260330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931154, 0.077964, -0.356193,
		0.280480, -0.777351, 0.563078,
		-0.232987, -0.624217, -0.745701,
		42.424248, 35.628860, 37.036621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196629, 35.573795, 37.355423>,  <42.587337, 36.065811, 37.558609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196629, 35.573795, 37.355423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368786, 35.224823, 37.262794>,  <43.472080, 35.015438, 37.207218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368786, 35.224823, 37.262794>,  <43.196629, 35.573795, 37.355423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368786, 35.224823, 37.262794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841555, 0.295066, 0.452462,
		-0.326414, -0.389614, 0.861194,
		0.430395, -0.872432, -0.231568,
		43.497906, 34.963093, 37.193325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575523, 35.048195, 37.840458>,  <43.196629, 35.573795, 37.355423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575523, 35.048195, 37.840458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753922, 35.124603, 37.490692>,  <43.860962, 35.170448, 37.280834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753922, 35.124603, 37.490692>,  <43.575523, 35.048195, 37.840458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753922, 35.124603, 37.490692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873685, 0.119194, 0.471665,
		0.194324, -0.974322, -0.113735,
		0.445997, 0.191024, -0.874413,
		43.887722, 35.181911, 37.228367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253723, 34.767368, 37.870735>,  <43.575523, 35.048195, 37.840458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253723, 34.767368, 37.870735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.246620, 35.056789, 37.594719>,  <44.242359, 35.230442, 37.429111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.246620, 35.056789, 37.594719>,  <44.253723, 34.767368, 37.870735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246620, 35.056789, 37.594719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928562, 0.267847, 0.256965,
		0.370753, -0.636180, -0.676622,
		-0.017755, 0.723556, -0.690038,
		44.241295, 35.273857, 37.387707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625263, 34.570976, 37.294662>,  <44.253723, 34.767368, 37.870735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625263, 34.570976, 37.294662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625099, 34.960457, 37.385788>,  <44.625000, 35.194145, 37.440464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625099, 34.960457, 37.385788>,  <44.625263, 34.570976, 37.294662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625099, 34.960457, 37.385788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993674, -0.025186, 0.109445,
		0.112305, 0.226419, -0.967534,
		-0.000412, 0.973704, 0.227815,
		44.624977, 35.252567, 37.454132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187874, 34.854191, 36.852592>,  <44.625263, 34.570976, 37.294662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187874, 34.854191, 36.852592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093437, 35.072330, 37.174301>,  <45.036777, 35.203213, 37.367329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093437, 35.072330, 37.174301>,  <45.187874, 34.854191, 36.852592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093437, 35.072330, 37.174301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965761, 0.040071, 0.256319,
		0.107555, 0.837251, -0.536137,
		-0.236087, 0.545348, 0.804275,
		45.022610, 35.235935, 37.415585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888268, 34.757256, 36.799213>,  <45.187874, 34.854191, 36.852592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888268, 34.757256, 36.799213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726971, 34.995689, 37.076939>,  <45.630192, 35.138752, 37.243576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726971, 34.995689, 37.076939>,  <45.888268, 34.757256, 36.799213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.726971, 34.995689, 37.076939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879583, 0.043159, 0.473784,
		0.252451, 0.801759, -0.541712,
		-0.403240, 0.596088, 0.694318,
		45.605999, 35.174515, 37.285233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976093, 35.506008, 36.927345>,  <45.888268, 34.757256, 36.799213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976093, 35.506008, 36.927345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.991344, 35.780575, 36.636860>,  <46.000496, 35.945312, 36.462570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.991344, 35.780575, 36.636860>,  <45.976093, 35.506008, 36.927345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.991344, 35.780575, 36.636860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727626, -0.517185, -0.450643,
		-0.684913, -0.511230, -0.519171,
		0.038125, 0.686414, -0.726211,
		46.002781, 35.986500, 36.418995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.763973, 35.273079, 36.214546>,  <45.976093, 35.506008, 36.927345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.763973, 35.273079, 36.214546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.046844, 35.555744, 36.205376>,  <46.216568, 35.725342, 36.199875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.046844, 35.555744, 36.205376>,  <45.763973, 35.273079, 36.214546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.046844, 35.555744, 36.205376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608938, -0.625218, -0.488158,
		-0.359294, 0.331257, -0.872454,
		0.707179, 0.706662, -0.022922,
		46.258999, 35.767742, 36.198498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.925259, 35.451603, 35.546749>,  <45.763973, 35.273079, 36.214546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.925259, 35.451603, 35.546749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.255272, 35.577721, 35.734329>,  <46.453281, 35.653389, 35.846878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.255272, 35.577721, 35.734329>,  <45.925259, 35.451603, 35.546749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.255272, 35.577721, 35.734329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564717, -0.430141, -0.704325,
		-0.020353, 0.845914, -0.532930,
		0.825033, 0.315290, 0.468948,
		46.502781, 35.672306, 35.875015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.322453, 35.824497, 35.109432>,  <45.925259, 35.451603, 35.546749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.322453, 35.824497, 35.109432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556416, 35.661289, 35.389832>,  <46.696793, 35.563366, 35.558071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556416, 35.661289, 35.389832>,  <46.322453, 35.824497, 35.109432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.556416, 35.661289, 35.389832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573495, -0.403127, -0.713157,
		0.573572, 0.819153, -0.001798,
		0.584910, -0.408016, 0.701002,
		46.731888, 35.538883, 35.600132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.058052, 35.929596, 34.885639>,  <46.322453, 35.824497, 35.109432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.058052, 35.929596, 34.885639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.998550, 35.613113, 35.122910>,  <46.962849, 35.423222, 35.265274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.998550, 35.613113, 35.122910>,  <47.058052, 35.929596, 34.885639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.998550, 35.613113, 35.122910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432255, -0.591535, -0.680618,
		0.889397, 0.155160, 0.429997,
		-0.148754, -0.791209, 0.593179,
		46.953926, 35.375751, 35.300861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.726521, 35.547222, 35.202072>,  <47.058052, 35.929596, 34.885639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.726521, 35.547222, 35.202072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417885, 35.296722, 35.157425>,  <47.232704, 35.146423, 35.130638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417885, 35.296722, 35.157425>,  <47.726521, 35.547222, 35.202072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.417885, 35.296722, 35.157425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524931, -0.527739, -0.667786,
		0.359296, -0.573849, 0.735937,
		-0.771592, -0.626249, -0.111617,
		47.186409, 35.108849, 35.123940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.936039, 34.822475, 35.261616>,  <47.726521, 35.547222, 35.202072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.936039, 34.822475, 35.261616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610950, 34.868950, 35.033237>,  <47.415897, 34.896835, 34.896210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610950, 34.868950, 35.033237>,  <47.936039, 34.822475, 35.261616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.610950, 34.868950, 35.033237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515024, -0.314961, -0.797213,
		-0.272448, -0.941967, 0.196141,
		-0.812725, 0.116182, -0.570946,
		47.367134, 34.903805, 34.861954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<27.933496, 31.011641, 21.879873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.331829, 31.008232, 21.843555>,  <28.570829, 31.006187, 21.821764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.331829, 31.008232, 21.843555>,  <27.933496, 31.011641, 21.879873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331829, 31.008232, 21.843555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091181, 0.076814, 0.992868,
		-0.001491, -0.997009, 0.077271,
		0.995833, -0.008526, -0.090794,
		28.630579, 31.005676, 21.816317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128410, 30.591963, 22.391321>,  <27.933496, 31.011641, 21.879873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128410, 30.591963, 22.391321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.476130, 30.766665, 22.298740>,  <28.684761, 30.871487, 22.243193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.476130, 30.766665, 22.298740>,  <28.128410, 30.591963, 22.391321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476130, 30.766665, 22.298740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243232, 0.029659, 0.969515,
		0.430307, -0.899090, -0.080451,
		0.869295, 0.436757, -0.231450,
		28.736917, 30.897692, 22.229305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627197, 30.211548, 22.788725>,  <28.128410, 30.591963, 22.391321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627197, 30.211548, 22.788725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.779976, 30.572119, 22.707193>,  <28.871643, 30.788462, 22.658274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.779976, 30.572119, 22.707193>,  <28.627197, 30.211548, 22.788725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779976, 30.572119, 22.707193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237774, 0.117279, 0.964214,
		0.893073, -0.416746, -0.169541,
		0.381949, 0.901426, -0.203830,
		28.894560, 30.842546, 22.646044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200539, 30.180679, 23.166363>,  <28.627197, 30.211548, 22.788725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200539, 30.180679, 23.166363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.163319, 30.568430, 23.075453>,  <29.140985, 30.801081, 23.020906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.163319, 30.568430, 23.075453>,  <29.200539, 30.180679, 23.166363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163319, 30.568430, 23.075453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206039, 0.242070, 0.948130,
		0.974110, 0.041398, -0.222254,
		-0.093051, 0.969375, -0.227273,
		29.135403, 30.859243, 23.007271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862617, 30.520252, 23.417204>,  <29.200539, 30.180679, 23.166363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862617, 30.520252, 23.417204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.566195, 30.788616, 23.406509>,  <29.388342, 30.949635, 23.400093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.566195, 30.788616, 23.406509>,  <29.862617, 30.520252, 23.417204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566195, 30.788616, 23.406509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297500, 0.363782, 0.882699,
		0.601938, 0.646175, -0.469178,
		-0.741056, 0.670910, -0.026738,
		29.343878, 30.989889, 23.398489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112558, 30.947762, 23.908216>,  <29.862617, 30.520252, 23.417204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112558, 30.947762, 23.908216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.749228, 31.109861, 23.866817>,  <29.531229, 31.207121, 23.841978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.749228, 31.109861, 23.866817>,  <30.112558, 30.947762, 23.908216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749228, 31.109861, 23.866817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009222, 0.266797, 0.963709,
		0.418156, 0.874410, -0.246076,
		-0.908329, 0.405249, -0.103499,
		29.476728, 31.231436, 23.835768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124956, 31.650026, 24.143328>,  <30.112558, 30.947762, 23.908216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124956, 31.650026, 24.143328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.753702, 31.509342, 24.192101>,  <29.530951, 31.424932, 24.221365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.753702, 31.509342, 24.192101>,  <30.124956, 31.650026, 24.143328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753702, 31.509342, 24.192101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060423, 0.180874, 0.981648,
		-0.367309, 0.918469, -0.146624,
		-0.928134, -0.351709, 0.121933,
		29.475262, 31.403830, 24.228680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714962, 32.162083, 24.552923>,  <30.124956, 31.650026, 24.143328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714962, 32.162083, 24.552923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.520674, 31.815434, 24.598589>,  <29.404100, 31.607443, 24.625988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.520674, 31.815434, 24.598589>,  <29.714962, 32.162083, 24.552923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520674, 31.815434, 24.598589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097776, 0.075922, 0.992308,
		-0.868627, 0.493149, 0.047858,
		-0.485723, -0.866625, 0.114166,
		29.374956, 31.555447, 24.632839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324957, 32.294250, 25.205610>,  <29.714962, 32.162083, 24.552923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324957, 32.294250, 25.205610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.283342, 31.903030, 25.133396>,  <29.258373, 31.668299, 25.090067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.283342, 31.903030, 25.133396>,  <29.324957, 32.294250, 25.205610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283342, 31.903030, 25.133396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115386, -0.168426, 0.978938,
		-0.987858, 0.122676, -0.095331,
		-0.104036, -0.978051, -0.180536,
		29.252132, 31.609615, 25.079235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668495, 32.059303, 25.613663>,  <29.324957, 32.294250, 25.205610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668495, 32.059303, 25.613663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.878834, 31.729040, 25.531902>,  <29.005037, 31.530884, 25.482847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.878834, 31.729040, 25.531902>,  <28.668495, 32.059303, 25.613663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878834, 31.729040, 25.531902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135446, -0.318523, 0.938188,
		-0.839725, -0.465659, -0.279326,
		0.525848, -0.825654, -0.204400,
		29.036589, 31.481344, 25.470583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300146, 31.461472, 25.841831>,  <28.668495, 32.059303, 25.613663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300146, 31.461472, 25.841831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.681305, 31.342228, 25.819483>,  <28.910000, 31.270681, 25.806074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.681305, 31.342228, 25.819483>,  <28.300146, 31.461472, 25.841831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681305, 31.342228, 25.819483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041909, -0.311854, 0.949205,
		-0.300384, -0.902154, -0.309658,
		0.952898, -0.298103, -0.055868,
		28.967175, 31.252796, 25.802721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282694, 30.860802, 26.191010>,  <28.300146, 31.461472, 25.841831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282694, 30.860802, 26.191010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.671286, 30.954750, 26.177965>,  <28.904440, 31.011120, 26.170139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.671286, 30.954750, 26.177965>,  <28.282694, 30.860802, 26.191010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671286, 30.954750, 26.177965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122132, -0.377732, 0.917825,
		0.203252, -0.895630, -0.395645,
		0.971480, 0.234871, -0.032610,
		28.962730, 31.025211, 26.168182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656258, 30.215513, 26.261852>,  <28.282694, 30.860802, 26.191010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656258, 30.215513, 26.261852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.929836, 30.490038, 26.360800>,  <29.093985, 30.654753, 26.420168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.929836, 30.490038, 26.360800>,  <28.656258, 30.215513, 26.261852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929836, 30.490038, 26.360800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050682, -0.293562, 0.954596,
		0.727769, -0.665431, -0.165997,
		0.683948, 0.686312, 0.247371,
		29.135021, 30.695930, 26.435011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106451, 29.878864, 26.775131>,  <28.656258, 30.215513, 26.261852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106451, 29.878864, 26.775131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.137110, 30.274551, 26.825054>,  <29.155506, 30.511963, 26.855007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.137110, 30.274551, 26.825054>,  <29.106451, 29.878864, 26.775131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137110, 30.274551, 26.825054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076393, -0.118980, 0.989954,
		0.994127, -0.085413, 0.066450,
		0.076649, 0.989216, 0.124806,
		29.160105, 30.571316, 26.862495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619820, 29.964619, 27.229977>,  <29.106451, 29.878864, 26.775131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619820, 29.964619, 27.229977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.457502, 30.329401, 27.254211>,  <29.360111, 30.548269, 27.268753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.457502, 30.329401, 27.254211>,  <29.619820, 29.964619, 27.229977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457502, 30.329401, 27.254211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072213, -0.098077, 0.992555,
		0.911108, 0.398396, 0.105653,
		-0.405792, 0.911955, 0.060589,
		29.335764, 30.602987, 27.272388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023689, 30.385559, 27.785698>,  <29.619820, 29.964619, 27.229977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023689, 30.385559, 27.785698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.639435, 30.483471, 27.733143>,  <29.408882, 30.542217, 27.701609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.639435, 30.483471, 27.733143>,  <30.023689, 30.385559, 27.785698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639435, 30.483471, 27.733143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178561, -0.181705, 0.967005,
		0.212827, 0.952401, 0.218260,
		-0.960635, 0.244778, -0.131390,
		29.351244, 30.556904, 27.693726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925573, 30.681496, 28.394974>,  <30.023689, 30.385559, 27.785698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925573, 30.681496, 28.394974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.552485, 30.623026, 28.263117>,  <29.328630, 30.587944, 28.184002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.552485, 30.623026, 28.263117>,  <29.925573, 30.681496, 28.394974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552485, 30.623026, 28.263117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311941, -0.131519, 0.940955,
		-0.180896, 0.980478, 0.077073,
		-0.932721, -0.146173, -0.329643,
		29.272669, 30.579174, 28.164225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520369, 31.140352, 28.795450>,  <29.925573, 30.681496, 28.394974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520369, 31.140352, 28.795450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.288845, 30.842018, 28.663565>,  <29.149931, 30.663017, 28.584435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.288845, 30.842018, 28.663565>,  <29.520369, 31.140352, 28.795450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288845, 30.842018, 28.663565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194740, -0.266204, 0.944040,
		-0.791871, 0.610625, 0.008837,
		-0.578807, -0.745837, -0.329712,
		29.115204, 30.618267, 28.564651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942848, 31.199705, 29.162441>,  <29.520369, 31.140352, 28.795450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942848, 31.199705, 29.162441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.860998, 30.833847, 29.022985>,  <28.811888, 30.614332, 28.939312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.860998, 30.833847, 29.022985>,  <28.942848, 31.199705, 29.162441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860998, 30.833847, 29.022985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605788, -0.161437, 0.779075,
		-0.768862, 0.370620, -0.521048,
		-0.204625, -0.914647, -0.348641,
		28.799610, 30.559454, 28.918394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193047, 31.049017, 29.156807>,  <28.942848, 31.199705, 29.162441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193047, 31.049017, 29.156807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.378195, 30.694460, 29.153679>,  <28.489285, 30.481726, 29.151802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.378195, 30.694460, 29.153679>,  <28.193047, 31.049017, 29.156807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378195, 30.694460, 29.153679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592469, -0.315926, 0.741061,
		-0.659342, -0.338381, -0.671392,
		0.462871, -0.886391, -0.007823,
		28.517056, 30.428543, 29.151333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631546, 30.496271, 29.142698>,  <28.193047, 31.049017, 29.156807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631546, 30.496271, 29.142698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.965643, 30.337702, 29.295128>,  <28.166101, 30.242561, 29.386585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.965643, 30.337702, 29.295128>,  <27.631546, 30.496271, 29.142698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965643, 30.337702, 29.295128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534088, -0.419963, 0.733745,
		-0.130836, -0.816383, -0.562495,
		0.835244, -0.396422, 0.381074,
		28.216217, 30.218775, 29.409451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826807, 30.290909, 29.845688>,  <27.631546, 30.496271, 29.142698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826807, 30.290909, 29.845688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.536079, 30.100994, 30.044205>,  <27.361643, 29.987045, 30.163315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.536079, 30.100994, 30.044205>,  <27.826807, 30.290909, 29.845688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536079, 30.100994, 30.044205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281244, -0.453490, -0.845724,
		0.626604, -0.754269, 0.196074,
		-0.726821, -0.474789, 0.496293,
		27.318033, 29.958557, 30.193092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869698, 29.655886, 29.599285>,  <27.826807, 30.290909, 29.845688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869698, 29.655886, 29.599285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.503363, 29.669754, 29.759306>,  <27.283562, 29.678076, 29.855318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.503363, 29.669754, 29.759306>,  <27.869698, 29.655886, 29.599285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503363, 29.669754, 29.759306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387999, -0.333068, -0.859373,
		0.103448, -0.942265, 0.318489,
		-0.915836, 0.034673, 0.400053,
		27.228611, 29.680157, 29.879322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595642, 29.012363, 29.630905>,  <27.869698, 29.655886, 29.599285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595642, 29.012363, 29.630905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.264208, 29.235430, 29.650738>,  <27.065348, 29.369268, 29.662638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.264208, 29.235430, 29.650738>,  <27.595642, 29.012363, 29.630905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264208, 29.235430, 29.650738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282455, -0.339918, -0.897037,
		-0.483393, -0.757274, 0.439166,
		-0.828583, 0.557666, 0.049582,
		27.015633, 29.402729, 29.665613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170612, 28.656076, 29.139633>,  <27.595642, 29.012363, 29.630905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170612, 28.656076, 29.139633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.947201, 28.982235, 29.200525>,  <26.813154, 29.177931, 29.237061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.947201, 28.982235, 29.200525>,  <27.170612, 28.656076, 29.139633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.947201, 28.982235, 29.200525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484413, -0.171661, -0.857833,
		-0.673342, -0.552866, 0.490866,
		-0.558529, 0.815397, 0.152229,
		26.779642, 29.226854, 29.246195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453211, 28.394480, 28.991184>,  <27.170612, 28.656076, 29.139633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453211, 28.394480, 28.991184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.493082, 28.792078, 28.973124>,  <26.517006, 29.030636, 28.962288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.493082, 28.792078, 28.973124>,  <26.453211, 28.394480, 28.991184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493082, 28.792078, 28.973124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145790, -0.030298, -0.988851,
		-0.984281, 0.105151, 0.141894,
		0.099679, 0.993994, -0.045152,
		26.522985, 29.090277, 28.959578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897030, 28.564894, 28.596054>,  <26.453211, 28.394480, 28.991184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897030, 28.564894, 28.596054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.134720, 28.886145, 28.578671>,  <26.277334, 29.078896, 28.568239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.134720, 28.886145, 28.578671>,  <25.897030, 28.564894, 28.596054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134720, 28.886145, 28.578671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020678, -0.038763, -0.999034,
		-0.804034, 0.594548, -0.006427,
		0.594223, 0.803125, -0.043461,
		26.312986, 29.127083, 28.565632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561068, 29.029099, 28.150393>,  <25.897030, 28.564894, 28.596054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.561068, 29.029099, 28.150393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.937851, 29.163303, 28.145504>,  <26.163921, 29.243826, 28.142570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.937851, 29.163303, 28.145504>,  <25.561068, 29.029099, 28.150393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.937851, 29.163303, 28.145504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045090, 0.090353, -0.994888,
		-0.332693, 0.937693, 0.100237,
		0.941957, 0.335512, -0.012221,
		26.220438, 29.263958, 28.141838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499418, 29.593153, 27.707180>,  <25.561068, 29.029099, 28.150393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499418, 29.593153, 27.707180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.886063, 29.491026, 27.715931>,  <26.118050, 29.429750, 27.721182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.886063, 29.491026, 27.715931>,  <25.499418, 29.593153, 27.707180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.886063, 29.491026, 27.715931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080513, 0.221543, -0.971821,
		0.243277, 0.941133, 0.234702,
		0.966610, -0.255318, 0.021878,
		26.176046, 29.414431, 27.722494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971148, 30.157541, 27.490967>,  <25.499418, 29.593153, 27.707180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.971148, 30.157541, 27.490967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.143538, 29.802963, 27.423462>,  <26.246971, 29.590218, 27.382959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.143538, 29.802963, 27.423462>,  <25.971148, 30.157541, 27.490967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143538, 29.802963, 27.423462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035815, 0.203677, -0.978383,
		0.901654, 0.415613, 0.119527,
		0.430973, -0.886443, -0.168762,
		26.272829, 29.537031, 27.372833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.482954, 30.283604, 27.099228>,  <25.971148, 30.157541, 27.490967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.482954, 30.283604, 27.099228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.475304, 29.888344, 27.038307>,  <26.470713, 29.651188, 27.001755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.475304, 29.888344, 27.038307>,  <26.482954, 30.283604, 27.099228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.475304, 29.888344, 27.038307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125716, 0.148745, -0.980852,
		0.991882, -0.037906, 0.121382,
		-0.019126, -0.988149, -0.152303,
		26.469566, 29.591900, 26.992617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998657, 30.187479, 26.505199>,  <26.482954, 30.283604, 27.099228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998657, 30.187479, 26.505199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.768291, 29.860846, 26.520777>,  <26.630072, 29.664865, 26.530123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.768291, 29.860846, 26.520777>,  <26.998657, 30.187479, 26.505199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768291, 29.860846, 26.520777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026597, -0.066326, -0.997443,
		0.817079, -0.573404, 0.059916,
		-0.575912, -0.816584, 0.038943,
		26.595518, 29.615871, 26.532459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164083, 29.832748, 26.032124>,  <26.998657, 30.187479, 26.505199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164083, 29.832748, 26.032124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.798349, 29.683308, 26.094620>,  <26.578909, 29.593643, 26.132118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.798349, 29.683308, 26.094620>,  <27.164083, 29.832748, 26.032124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.798349, 29.683308, 26.094620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066872, -0.241232, -0.968161,
		0.399397, -0.895673, 0.195583,
		-0.914336, -0.373601, 0.156243,
		26.524048, 29.571228, 26.141493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229727, 29.142462, 25.915390>,  <27.164083, 29.832748, 26.032124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229727, 29.142462, 25.915390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.853342, 29.266127, 25.860235>,  <26.627512, 29.340324, 25.827143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.853342, 29.266127, 25.860235>,  <27.229727, 29.142462, 25.915390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853342, 29.266127, 25.860235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038351, -0.307349, -0.950824,
		-0.336335, -0.899976, 0.277347,
		-0.940961, 0.309159, -0.137887,
		26.571054, 29.358875, 25.818869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948757, 28.629660, 25.552402>,  <27.229727, 29.142462, 25.915390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948757, 28.629660, 25.552402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.730822, 28.959270, 25.490265>,  <26.600061, 29.157038, 25.452982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.730822, 28.959270, 25.490265>,  <26.948757, 28.629660, 25.552402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730822, 28.959270, 25.490265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070977, -0.229910, -0.970620,
		-0.835533, -0.517803, 0.183751,
		-0.544836, 0.824027, -0.155345,
		26.567371, 29.206478, 25.443661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306168, 28.427286, 25.166883>,  <26.948757, 28.629660, 25.552402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306168, 28.427286, 25.166883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.366844, 28.820744, 25.128033>,  <26.403250, 29.056818, 25.104723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.366844, 28.820744, 25.128033>,  <26.306168, 28.427286, 25.166883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366844, 28.820744, 25.128033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083572, -0.085148, -0.992857,
		-0.984889, 0.158723, 0.069289,
		0.151690, 0.983645, -0.097127,
		26.412352, 29.115837, 25.098894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729567, 28.580261, 24.745947>,  <26.306168, 28.427286, 25.166883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.729567, 28.580261, 24.745947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.986282, 28.885378, 24.714296>,  <26.140312, 29.068447, 24.695307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.986282, 28.885378, 24.714296>,  <25.729567, 28.580261, 24.745947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986282, 28.885378, 24.714296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129742, 0.006309, -0.991528,
		-0.755827, 0.646616, 0.103015,
		0.641788, 0.762789, -0.079125,
		26.178820, 29.114214, 24.690559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422441, 29.130962, 24.362305>,  <25.729567, 28.580261, 24.745947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422441, 29.130962, 24.362305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.804277, 29.249121, 24.346804>,  <26.033379, 29.320015, 24.337503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.804277, 29.249121, 24.346804>,  <25.422441, 29.130962, 24.362305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804277, 29.249121, 24.346804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132687, 0.305077, -0.943039,
		-0.266746, 0.905356, 0.330418,
		0.954589, 0.295394, -0.038751,
		26.090654, 29.337738, 24.335178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379610, 29.597237, 23.870821>,  <25.422441, 29.130962, 24.362305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.379610, 29.597237, 23.870821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.774391, 29.542965, 23.905499>,  <26.011259, 29.510403, 23.926304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.774391, 29.542965, 23.905499>,  <25.379610, 29.597237, 23.870821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.774391, 29.542965, 23.905499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101870, 0.109238, -0.988782,
		0.124685, 0.984712, 0.121634,
		0.986953, -0.135677, 0.086693,
		26.070477, 29.502262, 23.931507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667194, 30.133307, 23.502424>,  <25.379610, 29.597237, 23.870821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667194, 30.133307, 23.502424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.917978, 29.824102, 23.541168>,  <26.068449, 29.638580, 23.564415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.917978, 29.824102, 23.541168>,  <25.667194, 30.133307, 23.502424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917978, 29.824102, 23.541168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121369, -0.025898, -0.992270,
		0.769541, 0.633867, 0.077582,
		0.626957, -0.773009, 0.096861,
		26.106066, 29.592199, 23.570227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<26.480207, 30.380516, 23.346733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.454391, 29.983206, 23.308296>,  <26.438902, 29.744820, 23.285234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.454391, 29.983206, 23.308296>,  <26.480207, 30.380516, 23.346733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454391, 29.983206, 23.308296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249712, 0.077154, -0.965242,
		0.966167, -0.086290, 0.243054,
		-0.064538, -0.993278, -0.096092,
		26.435030, 29.685223, 23.279469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170418, 30.162577, 23.030664>,  <26.480207, 30.380516, 23.346733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170418, 30.162577, 23.030664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.870296, 29.905638, 22.968132>,  <26.690224, 29.751474, 22.930613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.870296, 29.905638, 22.968132>,  <27.170418, 30.162577, 23.030664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870296, 29.905638, 22.968132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101873, 0.121306, -0.987373,
		0.653199, -0.756754, -0.025579,
		-0.750302, -0.642346, -0.156330,
		26.645206, 29.712934, 22.921232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436316, 29.787987, 22.450483>,  <27.170418, 30.162577, 23.030664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.436316, 29.787987, 22.450483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.043222, 29.715488, 22.465376>,  <26.807367, 29.671989, 22.474312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.043222, 29.715488, 22.465376>,  <27.436316, 29.787987, 22.450483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043222, 29.715488, 22.465376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038443, 0.003183, -0.999256,
		0.180991, -0.983433, -0.010095,
		-0.982733, -0.181245, 0.037230,
		26.748402, 29.661116, 22.476545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403051, 29.260162, 21.977001>,  <27.436316, 29.787987, 22.450483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403051, 29.260162, 21.977001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.014784, 29.355515, 21.989523>,  <26.781824, 29.412725, 21.997036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.014784, 29.355515, 21.989523>,  <27.403051, 29.260162, 21.977001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014784, 29.355515, 21.989523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043873, -0.047600, -0.997903,
		-0.236392, -0.970004, 0.056662,
		-0.970667, 0.238382, 0.031305,
		26.723583, 29.427029, 21.998915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130426, 28.836754, 21.572144>,  <27.403051, 29.260162, 21.977001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130426, 28.836754, 21.572144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.865042, 29.135368, 21.592159>,  <26.705811, 29.314537, 21.604170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.865042, 29.135368, 21.592159>,  <27.130426, 28.836754, 21.572144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865042, 29.135368, 21.592159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051594, 0.021074, -0.998446,
		-0.746431, -0.665010, 0.024535,
		-0.663459, 0.746537, 0.050040,
		26.666004, 29.359329, 21.607172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845205, 28.672733, 21.034327>,  <27.130426, 28.836754, 21.572144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845205, 28.672733, 21.034327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.739731, 29.051155, 21.109638>,  <26.676447, 29.278208, 21.154825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.739731, 29.051155, 21.109638>,  <26.845205, 28.672733, 21.034327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.739731, 29.051155, 21.109638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114229, 0.163187, -0.979960,
		-0.957822, -0.279908, 0.065037,
		-0.263685, 0.946056, 0.188277,
		26.660625, 29.334972, 21.166121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155504, 28.818129, 20.698059>,  <26.845205, 28.672733, 21.034327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155504, 28.818129, 20.698059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.316738, 29.179146, 20.758648>,  <26.413479, 29.395756, 20.795000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.316738, 29.179146, 20.758648>,  <26.155504, 28.818129, 20.698059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316738, 29.179146, 20.758648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293064, 0.284095, -0.912909,
		-0.866970, 0.323588, 0.379016,
		0.403084, 0.902541, 0.151470,
		26.437664, 29.449907, 20.804089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573612, 29.278479, 20.430147>,  <26.155504, 28.818129, 20.698059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573612, 29.278479, 20.430147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.905844, 29.498825, 20.462851>,  <26.105183, 29.631033, 20.482473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.905844, 29.498825, 20.462851>,  <25.573612, 29.278479, 20.430147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.905844, 29.498825, 20.462851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248991, 0.498650, -0.830272,
		-0.498138, 0.669249, 0.551329,
		0.830579, 0.550867, 0.081759,
		26.155018, 29.664085, 20.487379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.380974, 29.992754, 20.503725>,  <25.573612, 29.278479, 20.430147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.380974, 29.992754, 20.503725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.748951, 29.960670, 20.350222>,  <25.969738, 29.941420, 20.258120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.748951, 29.960670, 20.350222>,  <25.380974, 29.992754, 20.503725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.748951, 29.960670, 20.350222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329385, 0.372740, -0.867508,
		0.212623, 0.924463, 0.316481,
		0.919944, -0.080208, -0.383757,
		26.024935, 29.936607, 20.235094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510044, 30.650959, 20.206173>,  <25.380974, 29.992754, 20.503725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510044, 30.650959, 20.206173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.798946, 30.427109, 20.043610>,  <25.972288, 30.292799, 19.946072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.798946, 30.427109, 20.043610>,  <25.510044, 30.650959, 20.206173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798946, 30.427109, 20.043610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141572, 0.455546, -0.878883,
		0.676982, 0.692314, 0.249793,
		0.722255, -0.559624, -0.406408,
		26.015623, 30.259222, 19.921688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866518, 31.108261, 19.793236>,  <25.510044, 30.650959, 20.206173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.866518, 31.108261, 19.793236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.938158, 30.741249, 19.651215>,  <25.981142, 30.521042, 19.566002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.938158, 30.741249, 19.651215>,  <25.866518, 31.108261, 19.793236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.938158, 30.741249, 19.651215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202154, 0.318865, -0.925990,
		0.962838, 0.237618, -0.128374,
		0.179098, -0.917531, -0.355051,
		25.991888, 30.465990, 19.544699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216585, 31.196991, 19.105621>,  <25.866518, 31.108261, 19.793236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216585, 31.196991, 19.105621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.081568, 30.821627, 19.076092>,  <26.000557, 30.596409, 19.058374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.081568, 30.821627, 19.076092>,  <26.216585, 31.196991, 19.105621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081568, 30.821627, 19.076092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234886, 0.159912, -0.958779,
		0.911534, -0.306289, -0.274397,
		-0.337542, -0.938412, -0.073822,
		25.980305, 30.540104, 19.053946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.523159, 31.054636, 18.519434>,  <26.216585, 31.196991, 19.105621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.523159, 31.054636, 18.519434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.240276, 30.774521, 18.558336>,  <26.070547, 30.606453, 18.581678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.240276, 30.774521, 18.558336>,  <26.523159, 31.054636, 18.519434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240276, 30.774521, 18.558336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088748, -0.048542, -0.994871,
		0.701416, -0.712209, -0.027820,
		-0.707206, -0.700287, 0.097255,
		26.028114, 30.564434, 18.587513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702103, 30.515615, 18.070328>,  <26.523159, 31.054636, 18.519434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702103, 30.515615, 18.070328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.308058, 30.504406, 18.138168>,  <26.071630, 30.497681, 18.178873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.308058, 30.504406, 18.138168>,  <26.702103, 30.515615, 18.070328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308058, 30.504406, 18.138168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162373, -0.172236, -0.971581,
		0.056439, -0.984657, 0.165121,
		-0.985114, -0.028024, 0.169603,
		26.012524, 30.495998, 18.189049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541004, 29.886106, 17.702393>,  <26.702103, 30.515615, 18.070328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541004, 29.886106, 17.702393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.199810, 30.079388, 17.781321>,  <25.995094, 30.195356, 17.828676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.199810, 30.079388, 17.781321>,  <26.541004, 29.886106, 17.702393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199810, 30.079388, 17.781321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289148, -0.122738, -0.949384,
		-0.434526, -0.866863, 0.244410,
		-0.852983, 0.483202, 0.197319,
		25.943914, 30.224348, 17.840517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966276, 29.459862, 17.581455>,  <26.541004, 29.886106, 17.702393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966276, 29.459862, 17.581455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.847015, 29.838013, 17.528744>,  <25.775459, 30.064903, 17.497116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.847015, 29.838013, 17.528744>,  <25.966276, 29.459862, 17.581455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847015, 29.838013, 17.528744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449030, -0.260745, -0.854625,
		-0.842305, -0.195636, 0.502245,
		-0.298153, 0.945378, -0.131780,
		25.757570, 30.121626, 17.489210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.271448, 29.412045, 17.339176>,  <25.966276, 29.459862, 17.581455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.271448, 29.412045, 17.339176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.376154, 29.788252, 17.252550>,  <25.438978, 30.013977, 17.200575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.376154, 29.788252, 17.252550>,  <25.271448, 29.412045, 17.339176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.376154, 29.788252, 17.252550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372953, -0.108385, -0.921498,
		-0.890160, 0.321984, 0.322399,
		0.261764, 0.940521, -0.216565,
		25.454683, 30.070408, 17.187580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.732489, 29.649240, 16.882507>,  <25.271448, 29.412045, 17.339176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.732489, 29.649240, 16.882507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.030243, 29.906054, 16.809093>,  <25.208895, 30.060141, 16.765045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.030243, 29.906054, 16.809093>,  <24.732489, 29.649240, 16.882507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.030243, 29.906054, 16.809093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165434, -0.088969, -0.982200,
		-0.646933, 0.761498, 0.039987,
		0.744385, 0.642032, -0.183534,
		25.253559, 30.098663, 16.754034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.507919, 29.960791, 16.286806>,  <24.732489, 29.649240, 16.882507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.507919, 29.960791, 16.286806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.894846, 30.061609, 16.297934>,  <25.127001, 30.122101, 16.304611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.894846, 30.061609, 16.297934>,  <24.507919, 29.960791, 16.286806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.894846, 30.061609, 16.297934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029352, -0.002319, -0.999566,
		-0.251874, 0.967712, -0.009641,
		0.967315, 0.252047, 0.027820,
		25.185040, 30.137224, 16.306280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.654154, 30.592081, 15.909245>,  <24.507919, 29.960791, 16.286806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.654154, 30.592081, 15.909245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.001028, 30.392941, 15.904599>,  <25.209152, 30.273457, 15.901812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.001028, 30.392941, 15.904599>,  <24.654154, 30.592081, 15.909245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.001028, 30.392941, 15.904599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058390, 0.124815, -0.990460,
		0.494553, 0.858233, 0.137307,
		0.867184, -0.497852, -0.011615,
		25.261183, 30.243586, 15.901114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.135500, 30.940550, 15.352994>,  <24.654154, 30.592081, 15.909245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.135500, 30.940550, 15.352994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.280371, 30.576136, 15.431831>,  <25.367292, 30.357487, 15.479134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.280371, 30.576136, 15.431831>,  <25.135500, 30.940550, 15.352994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.280371, 30.576136, 15.431831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133969, -0.260132, -0.956234,
		0.922432, 0.319922, -0.216264,
		0.362177, -0.911033, 0.197095,
		25.389025, 30.302826, 15.490960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.563675, 30.751738, 14.690842>,  <25.135500, 30.940550, 15.352994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.563675, 30.751738, 14.690842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.517920, 30.405989, 14.886709>,  <25.490465, 30.198540, 15.004230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.517920, 30.405989, 14.886709>,  <25.563675, 30.751738, 14.690842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.517920, 30.405989, 14.886709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175739, -0.467523, -0.866336,
		0.977768, -0.185154, -0.098424,
		-0.114390, -0.864373, 0.489668,
		25.483603, 30.146677, 15.033609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.011339, 30.285248, 14.580502>,  <25.563675, 30.751738, 14.690842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.011339, 30.285248, 14.580502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.679369, 30.081810, 14.672205>,  <25.480186, 29.959747, 14.727227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.679369, 30.081810, 14.672205>,  <26.011339, 30.285248, 14.580502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.679369, 30.081810, 14.672205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060786, -0.490943, -0.869068,
		0.554555, -0.707325, 0.438361,
		-0.829924, -0.508592, 0.229259,
		25.430391, 29.929232, 14.740983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539894, 29.736242, 14.680638>,  <26.011339, 30.285248, 14.580502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539894, 29.736242, 14.680638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.647301, 29.488848, 14.385241>,  <26.711744, 29.340410, 14.208002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.647301, 29.488848, 14.385241>,  <26.539894, 29.736242, 14.680638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647301, 29.488848, 14.385241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812622, -0.266224, 0.518431,
		-0.517247, -0.739323, 0.431111,
		0.268516, -0.618487, -0.738493,
		26.727856, 29.303301, 14.163692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540195, 28.896778, 14.754317>,  <26.539894, 29.736242, 14.680638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540195, 28.896778, 14.754317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.842670, 29.068041, 14.556381>,  <27.024155, 29.170797, 14.437619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.842670, 29.068041, 14.556381>,  <26.540195, 28.896778, 14.754317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842670, 29.068041, 14.556381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603940, -0.165578, 0.779641,
		0.251873, -0.888407, -0.383788,
		0.756186, 0.428155, -0.494840,
		27.069527, 29.196487, 14.407929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156281, 28.597452, 15.084435>,  <26.540195, 28.896778, 14.754317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156281, 28.597452, 15.084435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.282547, 28.929781, 14.901093>,  <27.358307, 29.129179, 14.791087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.282547, 28.929781, 14.901093>,  <27.156281, 28.597452, 15.084435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282547, 28.929781, 14.901093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560043, 0.226810, 0.796812,
		0.765969, -0.508225, -0.393700,
		0.315665, 0.830822, -0.458357,
		27.377247, 29.179028, 14.763585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889824, 28.604519, 15.047571>,  <27.156281, 28.597452, 15.084435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889824, 28.604519, 15.047571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.786085, 28.988855, 15.008541>,  <27.723841, 29.219458, 14.985123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.786085, 28.988855, 15.008541>,  <27.889824, 28.604519, 15.047571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786085, 28.988855, 15.008541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609915, 0.241282, 0.754842,
		0.748827, 0.136254, -0.648608,
		-0.259348, 0.960842, -0.097575,
		27.708281, 29.277107, 14.979268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533846, 28.954256, 15.097480>,  <27.889824, 28.604519, 15.047571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533846, 28.954256, 15.097480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.279402, 29.261688, 15.124765>,  <28.126736, 29.446148, 15.141137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.279402, 29.261688, 15.124765>,  <28.533846, 28.954256, 15.097480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279402, 29.261688, 15.124765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563367, 0.402213, 0.721694,
		0.527242, 0.497505, -0.688843,
		-0.636108, 0.768579, 0.068214,
		28.088570, 29.492262, 15.145229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978569, 29.429388, 15.063473>,  <28.533846, 28.954256, 15.097480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978569, 29.429388, 15.063473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.641956, 29.525616, 15.256948>,  <28.439989, 29.583353, 15.373033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.641956, 29.525616, 15.256948>,  <28.978569, 29.429388, 15.063473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641956, 29.525616, 15.256948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540055, 0.353252, 0.763907,
		0.012910, 0.904068, -0.427193,
		-0.841531, 0.240570, 0.483686,
		28.389498, 29.597786, 15.402054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025299, 29.988203, 15.340799>,  <28.978569, 29.429388, 15.063473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025299, 29.988203, 15.340799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.707886, 29.877869, 15.557769>,  <28.517439, 29.811668, 15.687950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.707886, 29.877869, 15.557769>,  <29.025299, 29.988203, 15.340799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707886, 29.877869, 15.557769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481513, 0.260422, 0.836855,
		-0.372094, 0.925254, -0.073834,
		-0.793531, -0.275836, 0.542423,
		28.469826, 29.795118, 15.720496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984156, 30.536249, 15.916303>,  <29.025299, 29.988203, 15.340799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984156, 30.536249, 15.916303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.790148, 30.206005, 16.031628>,  <28.673744, 30.007858, 16.100822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.790148, 30.206005, 16.031628>,  <28.984156, 30.536249, 15.916303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790148, 30.206005, 16.031628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309358, 0.146384, 0.939611,
		-0.817958, 0.544920, 0.184410,
		-0.485018, -0.825611, 0.288311,
		28.644642, 29.958323, 16.118120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513607, 30.747334, 16.469412>,  <28.984156, 30.536249, 15.916303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513607, 30.747334, 16.469412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.577765, 30.355881, 16.520870>,  <28.616259, 30.121008, 16.551746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.577765, 30.355881, 16.520870>,  <28.513607, 30.747334, 16.469412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577765, 30.355881, 16.520870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206177, 0.160677, 0.965233,
		-0.965280, -0.128293, 0.227543,
		0.160393, -0.978634, 0.128647,
		28.625883, 30.062290, 16.559464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133648, 30.543598, 17.042822>,  <28.513607, 30.747334, 16.469412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133648, 30.543598, 17.042822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.369896, 30.220823, 17.044470>,  <28.511644, 30.027159, 17.045458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.369896, 30.220823, 17.044470>,  <28.133648, 30.543598, 17.042822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369896, 30.220823, 17.044470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154513, 0.118101, 0.980907,
		-0.792018, -0.578707, 0.194436,
		0.590621, -0.806939, 0.004121,
		28.547083, 29.978743, 17.045706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855974, 30.073797, 17.542101>,  <28.133648, 30.543598, 17.042822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855974, 30.073797, 17.542101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.237877, 29.963320, 17.498003>,  <28.467018, 29.897034, 17.471544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.237877, 29.963320, 17.498003>,  <27.855974, 30.073797, 17.542101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237877, 29.963320, 17.498003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095916, -0.064901, 0.993271,
		-0.281488, -0.958909, -0.035474,
		0.954759, -0.276192, -0.110244,
		28.524305, 29.880463, 17.464930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916422, 29.388296, 17.773874>,  <27.855974, 30.073797, 17.542101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916422, 29.388296, 17.773874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.275755, 29.562712, 17.795300>,  <28.491354, 29.667360, 17.808155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.275755, 29.562712, 17.795300>,  <27.916422, 29.388296, 17.773874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275755, 29.562712, 17.795300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053797, -0.011824, 0.998482,
		0.436012, -0.899849, 0.012836,
		0.898331, 0.436040, 0.053565,
		28.545254, 29.693523, 17.811369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138292, 29.166130, 18.365490>,  <27.916422, 29.388296, 17.773874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138292, 29.166130, 18.365490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.404070, 29.454224, 18.285711>,  <28.563536, 29.627079, 18.237844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.404070, 29.454224, 18.285711>,  <28.138292, 29.166130, 18.365490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404070, 29.454224, 18.285711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141739, 0.140584, 0.979870,
		0.733775, -0.679337, -0.008676,
		0.664443, 0.720234, -0.199445,
		28.603403, 29.670294, 18.225878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655458, 29.127163, 18.906231>,  <28.138292, 29.166130, 18.365490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655458, 29.127163, 18.906231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.705112, 29.494532, 18.755981>,  <28.734905, 29.714952, 18.665833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.705112, 29.494532, 18.755981>,  <28.655458, 29.127163, 18.906231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705112, 29.494532, 18.755981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173669, 0.352600, 0.919518,
		0.976949, -0.179378, -0.115731,
		0.124135, 0.918421, -0.375624,
		28.742353, 29.770058, 18.643293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150169, 29.329916, 19.237350>,  <28.655458, 29.127163, 18.906231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150169, 29.329916, 19.237350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.020569, 29.671925, 19.075382>,  <28.942808, 29.877131, 18.978201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.020569, 29.671925, 19.075382>,  <29.150169, 29.329916, 19.237350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020569, 29.671925, 19.075382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290924, 0.497318, 0.817336,
		0.900215, 0.147016, -0.409877,
		-0.324001, 0.855021, -0.404923,
		28.923368, 29.928431, 18.953905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603992, 29.735464, 19.517294>,  <29.150169, 29.329916, 19.237350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603992, 29.735464, 19.517294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.288397, 29.969610, 19.442631>,  <29.099039, 30.110098, 19.397833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.288397, 29.969610, 19.442631>,  <29.603992, 29.735464, 19.517294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288397, 29.969610, 19.442631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045274, 0.358363, 0.932484,
		0.612736, 0.727270, -0.309246,
		-0.788990, 0.585367, -0.186656,
		29.051701, 30.145220, 19.386635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797367, 30.417549, 19.757040>,  <29.603992, 29.735464, 19.517294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797367, 30.417549, 19.757040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.398285, 30.390472, 19.757771>,  <29.158836, 30.374226, 19.758209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.398285, 30.390472, 19.757771>,  <29.797367, 30.417549, 19.757040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398285, 30.390472, 19.757771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027701, 0.432561, 0.901179,
		-0.061794, 0.899060, -0.433443,
		-0.997705, -0.067694, 0.001825,
		29.098974, 30.370165, 19.758318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533640, 31.118292, 19.915127>,  <29.797367, 30.417549, 19.757040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533640, 31.118292, 19.915127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.282707, 30.828335, 20.028957>,  <29.132147, 30.654360, 20.097256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.282707, 30.828335, 20.028957>,  <29.533640, 31.118292, 19.915127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282707, 30.828335, 20.028957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037506, 0.393123, 0.918720,
		-0.777848, 0.565669, -0.273807,
		-0.627332, -0.724895, 0.284575,
		29.094507, 30.610867, 20.114330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102997, 31.517357, 20.351955>,  <29.533640, 31.118292, 19.915127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102997, 31.517357, 20.351955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.968620, 31.155886, 20.458166>,  <28.887995, 30.939003, 20.521893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.968620, 31.155886, 20.458166>,  <29.102997, 31.517357, 20.351955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968620, 31.155886, 20.458166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151404, 0.330057, 0.931740,
		-0.929634, 0.272810, -0.247701,
		-0.335943, -0.903680, 0.265527,
		28.867838, 30.884781, 20.537825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409573, 31.521603, 20.611246>,  <29.102997, 31.517357, 20.351955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409573, 31.521603, 20.611246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.602587, 31.206387, 20.764164>,  <28.718395, 31.017258, 20.855915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.602587, 31.206387, 20.764164>,  <28.409573, 31.521603, 20.611246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602587, 31.206387, 20.764164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005498, 0.439190, 0.898377,
		-0.875858, -0.431399, 0.216258,
		0.482537, -0.788040, 0.382297,
		28.747349, 30.969975, 20.878853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082390, 31.384039, 21.254932>,  <28.409573, 31.521603, 20.611246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082390, 31.384039, 21.254932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.436205, 31.208857, 21.319174>,  <28.648493, 31.103748, 21.357718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.436205, 31.208857, 21.319174>,  <28.082390, 31.384039, 21.254932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436205, 31.208857, 21.319174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011935, 0.322931, 0.946347,
		-0.466320, -0.838994, 0.280417,
		0.884535, -0.437954, 0.160602,
		28.701565, 31.077471, 21.367355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.374529, 29.718203, 25.682547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.746613, 29.576113, 25.719486>,  <25.969862, 29.490860, 25.741650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.746613, 29.576113, 25.719486>,  <25.374529, 29.718203, 25.682547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.746613, 29.576113, 25.719486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086050, 0.033535, 0.995726,
		-0.356802, -0.934180, 0.000627,
		0.930208, -0.355223, 0.092351,
		26.025675, 29.469545, 25.747192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.319302, 29.198414, 26.203196>,  <25.374529, 29.718203, 25.682547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.319302, 29.198414, 26.203196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.708855, 29.288286, 26.190123>,  <25.942587, 29.342209, 26.182280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.708855, 29.288286, 26.190123>,  <25.319302, 29.198414, 26.203196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708855, 29.288286, 26.190123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076542, -0.189383, 0.978915,
		0.213754, -0.955852, -0.201634,
		0.973884, 0.224681, -0.032682,
		26.001020, 29.355690, 26.180319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774607, 28.658733, 26.545273>,  <25.319302, 29.198414, 26.203196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774607, 28.658733, 26.545273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.035614, 28.961689, 26.535624>,  <26.192219, 29.143463, 26.529835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.035614, 28.961689, 26.535624>,  <25.774607, 28.658733, 26.545273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.035614, 28.961689, 26.535624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258813, -0.192831, 0.946484,
		0.712206, -0.623841, -0.321848,
		0.652517, 0.757390, -0.024123,
		26.231369, 29.188906, 26.528387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303144, 28.331987, 26.878418>,  <25.774607, 28.658733, 26.545273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303144, 28.331987, 26.878418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.334625, 28.730597, 26.889376>,  <26.353514, 28.969761, 26.895950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.334625, 28.730597, 26.889376>,  <26.303144, 28.331987, 26.878418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334625, 28.730597, 26.889376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196548, -0.042453, 0.979575,
		0.977331, -0.071711, -0.199205,
		0.078703, 0.996522, 0.027396,
		26.358236, 29.029552, 26.897594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944847, 28.437283, 27.289366>,  <26.303144, 28.331987, 26.878418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944847, 28.437283, 27.289366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.727907, 28.773132, 27.301273>,  <26.597742, 28.974642, 27.308418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.727907, 28.773132, 27.301273>,  <26.944847, 28.437283, 27.289366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727907, 28.773132, 27.301273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142590, 0.057071, 0.988135,
		0.827963, 0.540162, -0.150674,
		-0.542352, 0.839624, 0.029769,
		26.565201, 29.025019, 27.310204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349329, 28.856684, 27.754953>,  <26.944847, 28.437283, 27.289366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349329, 28.856684, 27.754953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.994104, 29.038338, 27.726372>,  <26.780970, 29.147331, 27.709223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.994104, 29.038338, 27.726372>,  <27.349329, 28.856684, 27.754953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994104, 29.038338, 27.726372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031797, 0.215730, 0.975935,
		0.458623, 0.864419, -0.206022,
		-0.888062, 0.454137, -0.071452,
		26.727686, 29.174580, 27.704937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450708, 29.524591, 28.060627>,  <27.349329, 28.856684, 27.754953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450708, 29.524591, 28.060627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.064081, 29.429651, 28.099442>,  <26.832106, 29.372688, 28.122730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.064081, 29.429651, 28.099442>,  <27.450708, 29.524591, 28.060627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064081, 29.429651, 28.099442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016906, 0.318613, 0.947734,
		-0.255860, 0.917688, -0.303948,
		-0.966566, -0.237349, 0.097035,
		26.774111, 29.358446, 28.128551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249161, 30.077305, 28.502968>,  <27.450708, 29.524591, 28.060627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249161, 30.077305, 28.502968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.951759, 29.810827, 28.526251>,  <26.773317, 29.650942, 28.540220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.951759, 29.810827, 28.526251>,  <27.249161, 30.077305, 28.502968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951759, 29.810827, 28.526251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146058, 0.246715, 0.958018,
		-0.652585, 0.703789, -0.280737,
		-0.743505, -0.666192, 0.058208,
		26.728708, 29.610970, 28.543713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746719, 30.400436, 28.919519>,  <27.249161, 30.077305, 28.502968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.746719, 30.400436, 28.919519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.669909, 30.008280, 28.937237>,  <26.623821, 29.772985, 28.947866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.669909, 30.008280, 28.937237>,  <26.746719, 30.400436, 28.919519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669909, 30.008280, 28.937237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069011, 0.058511, 0.995899,
		-0.978960, 0.188185, -0.078893,
		-0.192029, -0.980389, 0.044293,
		26.612299, 29.714163, 28.950525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204588, 30.351883, 29.336872>,  <26.746719, 30.400436, 28.919519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204588, 30.351883, 29.336872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.351517, 29.979872, 29.332491>,  <26.439674, 29.756664, 29.329863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.351517, 29.979872, 29.332491>,  <26.204588, 30.351883, 29.336872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351517, 29.979872, 29.332491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000872, -0.011430, 0.999934,
		-0.930093, -0.367308, -0.003387,
		0.367322, -0.930029, -0.010952,
		26.461714, 29.700863, 29.329205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.852976, 29.937786, 29.881571>,  <26.204588, 30.351883, 29.336872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.852976, 29.937786, 29.881571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.215115, 29.786541, 29.804235>,  <26.432398, 29.695793, 29.757835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.215115, 29.786541, 29.804235>,  <25.852976, 29.937786, 29.881571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215115, 29.786541, 29.804235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246577, 0.097375, 0.964219,
		-0.345757, -0.920624, 0.181392,
		0.905346, -0.378113, -0.193336,
		26.486719, 29.673107, 29.746235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049643, 29.771582, 30.473671>,  <25.852976, 29.937786, 29.881571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049643, 29.771582, 30.473671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.406147, 29.728544, 30.297453>,  <26.620049, 29.702721, 30.191723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.406147, 29.728544, 30.297453>,  <26.049643, 29.771582, 30.473671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.406147, 29.728544, 30.297453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447129, 0.046329, 0.893269,
		-0.075701, -0.993115, 0.089400,
		0.891260, -0.107594, -0.440543,
		26.673525, 29.696266, 30.165289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470608, 29.232555, 30.821404>,  <26.049643, 29.771582, 30.473671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470608, 29.232555, 30.821404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.742193, 29.461317, 30.637259>,  <26.905144, 29.598574, 30.526772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.742193, 29.461317, 30.637259>,  <26.470608, 29.232555, 30.821404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742193, 29.461317, 30.637259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421165, 0.210205, 0.882289,
		0.601358, -0.792929, -0.098146,
		0.678962, 0.571907, -0.460362,
		26.945883, 29.632889, 30.499149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186350, 28.949383, 30.847637>,  <26.470608, 29.232555, 30.821404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186350, 28.949383, 30.847637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.168324, 29.348761, 30.834480>,  <27.157507, 29.588387, 30.826586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.168324, 29.348761, 30.834480>,  <27.186350, 28.949383, 30.847637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168324, 29.348761, 30.834480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487191, 0.050710, 0.871822,
		0.872132, 0.023265, -0.488717,
		-0.045066, 0.998442, -0.032891,
		27.154804, 29.648293, 30.824614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610701, 28.267176, 31.025450>,  <27.186350, 28.949383, 30.847637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610701, 28.267176, 31.025450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.565218, 27.877928, 31.105555>,  <27.537928, 27.644379, 31.153618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.565218, 27.877928, 31.105555>,  <27.610701, 28.267176, 31.025450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565218, 27.877928, 31.105555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069585, -0.193274, -0.978674,
		0.991075, -0.125216, -0.045738,
		-0.113706, -0.973122, 0.200262,
		27.531107, 27.585991, 31.165634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035086, 27.848991, 30.589226>,  <27.610701, 28.267176, 31.025450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035086, 27.848991, 30.589226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.731216, 27.614283, 30.701368>,  <27.548895, 27.473457, 30.768654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.731216, 27.614283, 30.701368>,  <28.035086, 27.848991, 30.589226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731216, 27.614283, 30.701368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067313, -0.357850, -0.931350,
		0.646814, -0.726391, 0.232351,
		-0.759671, -0.586770, 0.280358,
		27.503315, 27.438251, 30.785477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193392, 27.170858, 30.381702>,  <28.035086, 27.848991, 30.589226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193392, 27.170858, 30.381702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.795895, 27.181581, 30.425064>,  <27.557396, 27.188015, 30.451080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.795895, 27.181581, 30.425064>,  <28.193392, 27.170858, 30.381702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795895, 27.181581, 30.425064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105150, -0.551496, -0.827524,
		0.037600, -0.833746, 0.550866,
		-0.993745, 0.026809, 0.108405,
		27.497770, 27.189625, 30.457586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004440, 26.527203, 30.229321>,  <28.193392, 27.170858, 30.381702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004440, 26.527203, 30.229321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.672497, 26.741640, 30.167435>,  <27.473331, 26.870302, 30.130302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.672497, 26.741640, 30.167435>,  <28.004440, 26.527203, 30.229321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672497, 26.741640, 30.167435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136525, -0.463942, -0.875282,
		-0.541017, -0.705236, 0.458196,
		-0.829856, 0.536097, -0.154718,
		27.423540, 26.902468, 30.121019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534933, 26.048901, 30.023035>,  <28.004440, 26.527203, 30.229321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534933, 26.048901, 30.023035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.378242, 26.403391, 29.924116>,  <27.284227, 26.616085, 29.864765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.378242, 26.403391, 29.924116>,  <27.534933, 26.048901, 30.023035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378242, 26.403391, 29.924116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303634, -0.378234, -0.874497,
		-0.868537, -0.267477, 0.417252,
		-0.391727, 0.886225, -0.247296,
		27.260725, 26.669258, 29.849928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052505, 25.887571, 29.622278>,  <27.534933, 26.048901, 30.023035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052505, 25.887571, 29.622278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.073816, 26.274059, 29.521416>,  <27.086603, 26.505953, 29.460899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.073816, 26.274059, 29.521416>,  <27.052505, 25.887571, 29.622278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.073816, 26.274059, 29.521416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199621, -0.237111, -0.950752,
		-0.978424, 0.100990, 0.180245,
		0.053278, 0.966219, -0.252155,
		27.089800, 26.563925, 29.445768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475536, 26.036095, 29.160858>,  <27.052505, 25.887571, 29.622278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475536, 26.036095, 29.160858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.721094, 26.342922, 29.086300>,  <26.868429, 26.527018, 29.041565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.721094, 26.342922, 29.086300>,  <26.475536, 26.036095, 29.160858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721094, 26.342922, 29.086300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140108, -0.126498, -0.982022,
		-0.776855, 0.628973, 0.029817,
		0.613894, 0.767067, -0.186395,
		26.905262, 26.573042, 29.030382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079748, 26.622326, 28.662214>,  <26.475536, 26.036095, 29.160858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079748, 26.622326, 28.662214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.474113, 26.664907, 28.610609>,  <26.710733, 26.690456, 28.579647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.474113, 26.664907, 28.610609>,  <26.079748, 26.622326, 28.662214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474113, 26.664907, 28.610609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121584, -0.073566, -0.989851,
		-0.114863, 0.991593, -0.059587,
		0.985913, 0.106453, -0.129012,
		26.769888, 26.696844, 28.571905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213600, 27.124842, 28.133183>,  <26.079748, 26.622326, 28.662214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213600, 27.124842, 28.133183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.564102, 26.932196, 28.127146>,  <26.774403, 26.816608, 28.123524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.564102, 26.932196, 28.127146>,  <26.213600, 27.124842, 28.133183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564102, 26.932196, 28.127146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072363, 0.162494, -0.984052,
		0.476387, 0.861187, 0.177237,
		0.876253, -0.481615, -0.015092,
		26.826979, 26.787710, 28.122618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721727, 27.509449, 27.649893>,  <26.213600, 27.124842, 28.133183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721727, 27.509449, 27.649893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.846489, 27.130112, 27.673073>,  <26.921345, 26.902510, 27.686981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.846489, 27.130112, 27.673073>,  <26.721727, 27.509449, 27.649893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.846489, 27.130112, 27.673073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134362, -0.016353, -0.990797,
		0.940566, 0.316818, 0.122321,
		0.311902, -0.948345, 0.057949,
		26.940060, 26.845608, 27.690458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240122, 27.510588, 27.181561>,  <26.721727, 27.509449, 27.649893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240122, 27.510588, 27.181561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.167904, 27.124865, 27.259035>,  <27.124573, 26.893431, 27.305521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.167904, 27.124865, 27.259035>,  <27.240122, 27.510588, 27.181561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167904, 27.124865, 27.259035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245114, -0.234823, -0.940626,
		0.952535, -0.122348, 0.278761,
		-0.180543, -0.964308, 0.193688,
		27.113741, 26.835573, 27.317141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745392, 27.189722, 26.856384>,  <27.240122, 27.510588, 27.181561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745392, 27.189722, 26.856384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.434586, 26.941458, 26.898392>,  <27.248102, 26.792500, 26.923595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.434586, 26.941458, 26.898392>,  <27.745392, 27.189722, 26.856384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434586, 26.941458, 26.898392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086637, -0.270688, -0.958761,
		0.623490, -0.735874, 0.264101,
		-0.777016, -0.620659, 0.105018,
		27.201481, 26.755260, 26.929897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029182, 26.683546, 26.524141>,  <27.745392, 27.189722, 26.856384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029182, 26.683546, 26.524141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.633501, 26.628422, 26.504215>,  <27.396091, 26.595348, 26.492260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.633501, 26.628422, 26.504215>,  <28.029182, 26.683546, 26.524141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633501, 26.628422, 26.504215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082656, -0.244035, -0.966237,
		0.121000, -0.959924, 0.252792,
		-0.989205, -0.137810, -0.049815,
		27.336739, 26.587078, 26.489271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040977, 26.143644, 26.160051>,  <28.029182, 26.683546, 26.524141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040977, 26.143644, 26.160051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.665871, 26.277847, 26.124205>,  <27.440807, 26.358370, 26.102695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.665871, 26.277847, 26.124205>,  <28.040977, 26.143644, 26.160051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665871, 26.277847, 26.124205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005204, -0.244462, -0.969645,
		-0.347230, -0.909766, 0.227502,
		-0.937765, 0.335506, -0.089619,
		27.384541, 26.378500, 26.097319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322025, 25.400127, 26.112082>,  <28.040977, 26.143644, 26.160051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322025, 25.400127, 26.112082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.684216, 25.286432, 25.986017>,  <28.901529, 25.218214, 25.910379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.684216, 25.286432, 25.986017>,  <28.322025, 25.400127, 26.112082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684216, 25.286432, 25.986017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217736, -0.326296, 0.919849,
		-0.364297, -0.901519, -0.233562,
		0.905471, -0.284244, -0.315162,
		28.955858, 25.201160, 25.891470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481277, 24.667480, 26.407959>,  <28.322025, 25.400127, 26.112082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481277, 24.667480, 26.407959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.826180, 24.853178, 26.326971>,  <29.033121, 24.964598, 26.278378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.826180, 24.853178, 26.326971>,  <28.481277, 24.667480, 26.407959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826180, 24.853178, 26.326971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342956, -0.241015, 0.907906,
		0.372693, -0.852284, -0.367032,
		0.862254, 0.464246, -0.202471,
		29.084856, 24.992453, 26.266230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898436, 24.227474, 26.603233>,  <28.481277, 24.667480, 26.407959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898436, 24.227474, 26.603233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.141989, 24.544523, 26.590488>,  <29.288120, 24.734753, 26.582842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.141989, 24.544523, 26.590488>,  <28.898436, 24.227474, 26.603233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141989, 24.544523, 26.590488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354080, -0.235616, 0.905048,
		0.709853, -0.562349, -0.424113,
		0.608881, 0.792621, -0.031864,
		29.324654, 24.782309, 26.580929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530474, 24.023077, 26.814056>,  <28.898436, 24.227474, 26.603233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530474, 24.023077, 26.814056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.546930, 24.418333, 26.873236>,  <29.556805, 24.655487, 26.908743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.546930, 24.418333, 26.873236>,  <29.530474, 24.023077, 26.814056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546930, 24.418333, 26.873236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377532, -0.152472, 0.913357,
		0.925082, 0.018280, -0.379327,
		0.041140, 0.988139, 0.147951,
		29.559273, 24.714775, 26.917622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116621, 24.073080, 27.172136>,  <29.530474, 24.023077, 26.814056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116621, 24.073080, 27.172136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.930912, 24.415918, 27.261435>,  <29.819487, 24.621622, 27.315014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.930912, 24.415918, 27.261435>,  <30.116621, 24.073080, 27.172136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930912, 24.415918, 27.261435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359086, -0.048262, 0.932056,
		0.809635, 0.512893, -0.285364,
		-0.464272, 0.857095, 0.223247,
		29.791630, 24.673046, 27.328409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548178, 24.364941, 27.523577>,  <30.116621, 24.073080, 27.172136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548178, 24.364941, 27.523577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.240875, 24.606329, 27.608995>,  <30.056494, 24.751162, 27.660246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.240875, 24.606329, 27.608995>,  <30.548178, 24.364941, 27.523577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240875, 24.606329, 27.608995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306987, 0.054594, 0.950146,
		0.561729, 0.795513, -0.227200,
		-0.768257, 0.603472, 0.213545,
		30.010399, 24.787371, 27.673059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883060, 24.971832, 27.749607>,  <30.548178, 24.364941, 27.523577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883060, 24.971832, 27.749607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.505951, 24.962549, 27.882656>,  <30.279684, 24.956980, 27.962484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.505951, 24.962549, 27.882656>,  <30.883060, 24.971832, 27.749607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505951, 24.962549, 27.882656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297250, 0.393436, 0.869972,
		-0.151056, 0.919059, -0.364023,
		-0.942775, -0.023209, 0.332621,
		30.223118, 24.955587, 27.982443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662912, 25.588564, 28.096352>,  <30.883060, 24.971832, 27.749607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662912, 25.588564, 28.096352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.378918, 25.346922, 28.241116>,  <30.208521, 25.201937, 28.327974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.378918, 25.346922, 28.241116>,  <30.662912, 25.588564, 28.096352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378918, 25.346922, 28.241116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186993, 0.333743, 0.923931,
		-0.678937, 0.723651, -0.123989,
		-0.709985, -0.604106, 0.361908,
		30.165922, 25.165689, 28.349688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152496, 26.073940, 28.464638>,  <30.662912, 25.588564, 28.096352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152496, 26.073940, 28.464638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.128841, 25.708418, 28.625368>,  <30.114649, 25.489105, 28.721807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.128841, 25.708418, 28.625368>,  <30.152496, 26.073940, 28.464638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128841, 25.708418, 28.625368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078937, 0.396990, 0.914422,
		-0.995124, 0.085796, 0.048656,
		-0.059138, -0.913804, 0.401827,
		30.111099, 25.434277, 28.745916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761059, 26.119545, 29.187637>,  <30.152496, 26.073940, 28.464638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761059, 26.119545, 29.187637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.960447, 25.776403, 29.237619>,  <30.080080, 25.570518, 29.267609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.960447, 25.776403, 29.237619>,  <29.761059, 26.119545, 29.187637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960447, 25.776403, 29.237619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148761, 0.226648, 0.962549,
		-0.854048, -0.461213, 0.240592,
		0.498470, -0.857853, 0.124957,
		30.109989, 25.519047, 29.275106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430620, 25.763727, 29.797235>,  <29.761059, 26.119545, 29.187637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430620, 25.763727, 29.797235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.795717, 25.605530, 29.756281>,  <30.014776, 25.510611, 29.731709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.795717, 25.605530, 29.756281>,  <29.430620, 25.763727, 29.797235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795717, 25.605530, 29.756281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235105, 0.303548, 0.923355,
		-0.334104, -0.866857, 0.370045,
		0.912743, -0.395496, -0.102386,
		30.069540, 25.486881, 29.725565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651134, 25.226406, 30.293667>,  <29.430620, 25.763727, 29.797235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651134, 25.226406, 30.293667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.969118, 25.439978, 30.178453>,  <30.159908, 25.568121, 30.109325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.969118, 25.439978, 30.178453>,  <29.651134, 25.226406, 30.293667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969118, 25.439978, 30.178453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058946, 0.404556, 0.912611,
		0.603795, -0.742465, 0.290132,
		0.794957, 0.533929, -0.288034,
		30.207605, 25.600157, 30.092043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.410635, 24.638067, 22.104004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707466, 24.906160, 22.108191>,  <28.885565, 25.067017, 22.110703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707466, 24.906160, 22.108191>,  <28.410635, 24.638067, 22.104004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707466, 24.906160, 22.108191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000432, -0.015133, 0.999886,
		0.670314, -0.741997, -0.010940,
		0.742078, 0.670232, 0.010464,
		28.930090, 25.107229, 22.111330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923382, 24.336941, 22.509163>,  <28.410635, 24.638067, 22.104004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923382, 24.336941, 22.509163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040051, 24.719545, 22.507643>,  <29.110052, 24.949108, 22.506731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040051, 24.719545, 22.507643>,  <28.923382, 24.336941, 22.509163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040051, 24.719545, 22.507643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146520, -0.040751, 0.988368,
		0.945231, -0.288834, -0.152034,
		0.291669, 0.956512, -0.003801,
		29.127552, 25.006498, 22.506502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435028, 24.382977, 22.975731>,  <28.923382, 24.336941, 22.509163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435028, 24.382977, 22.975731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312229, 24.761696, 22.937096>,  <29.238550, 24.988928, 22.913914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312229, 24.761696, 22.937096>,  <29.435028, 24.382977, 22.975731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312229, 24.761696, 22.937096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011986, 0.105329, 0.994365,
		0.951635, 0.304109, -0.043684,
		-0.306997, 0.946796, -0.096590,
		29.220131, 25.045734, 22.908119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951782, 24.839354, 23.300570>,  <29.435028, 24.382977, 22.975731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951782, 24.839354, 23.300570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629761, 25.076277, 23.313597>,  <29.436548, 25.218430, 23.321413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629761, 25.076277, 23.313597>,  <29.951782, 24.839354, 23.300570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629761, 25.076277, 23.313597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109110, 0.093892, 0.989585,
		0.583081, 0.800223, -0.140215,
		-0.805054, 0.592307, 0.032566,
		29.388245, 25.253969, 23.323366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144136, 25.320017, 23.708166>,  <29.951782, 24.839354, 23.300570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144136, 25.320017, 23.708166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745872, 25.353350, 23.691582>,  <29.506914, 25.373350, 23.681631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745872, 25.353350, 23.691582>,  <30.144136, 25.320017, 23.708166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745872, 25.353350, 23.691582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030159, 0.132598, 0.990711,
		0.088056, 0.987661, -0.129509,
		-0.995659, 0.083332, -0.041463,
		29.447174, 25.378349, 23.679142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037724, 25.908642, 24.173439>,  <30.144136, 25.320017, 23.708166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037724, 25.908642, 24.173439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697929, 25.698448, 24.154484>,  <29.494053, 25.572332, 24.143110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697929, 25.698448, 24.154484>,  <30.037724, 25.908642, 24.173439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697929, 25.698448, 24.154484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097914, 0.068751, 0.992817,
		-0.518451, 0.848022, -0.109855,
		-0.849483, -0.525483, -0.047390,
		29.443085, 25.540804, 24.140266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507383, 26.200222, 24.672110>,  <30.037724, 25.908642, 24.173439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507383, 26.200222, 24.672110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382683, 25.823648, 24.620710>,  <29.307861, 25.597704, 24.589870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382683, 25.823648, 24.620710>,  <29.507383, 26.200222, 24.672110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382683, 25.823648, 24.620710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114754, -0.096944, 0.988652,
		-0.943208, 0.322962, -0.077810,
		-0.311754, -0.941434, -0.128499,
		29.289156, 25.541218, 24.582161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081509, 26.160091, 25.272125>,  <29.507383, 26.200222, 24.672110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081509, 26.160091, 25.272125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078180, 25.777935, 25.154032>,  <29.076183, 25.548641, 25.083176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078180, 25.777935, 25.154032>,  <29.081509, 26.160091, 25.272125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078180, 25.777935, 25.154032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291261, -0.280128, 0.914710,
		-0.956607, 0.093600, -0.275937,
		-0.008319, -0.955388, -0.295234,
		29.075686, 25.491318, 25.065462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492849, 25.867910, 25.509657>,  <29.081509, 26.160091, 25.272125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492849, 25.867910, 25.509657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759476, 25.571724, 25.475243>,  <28.919451, 25.394012, 25.454594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759476, 25.571724, 25.475243>,  <28.492849, 25.867910, 25.509657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759476, 25.571724, 25.475243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117264, -0.218130, 0.968849,
		-0.736167, -0.635711, -0.232227,
		0.666564, -0.740467, -0.086034,
		28.959444, 25.349585, 25.449432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744570, 25.665171, 25.665926>,  <28.492849, 25.867910, 25.509657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744570, 25.665171, 25.665926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466698, 25.952875, 25.669546>,  <27.299974, 26.125498, 25.671719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466698, 25.952875, 25.669546>,  <27.744570, 25.665171, 25.665926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466698, 25.952875, 25.669546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203561, -0.184503, -0.961521,
		-0.689916, -0.669790, 0.274584,
		-0.694679, 0.719264, 0.009051,
		27.258293, 26.168653, 25.672262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053486, 25.416349, 25.383205>,  <27.744570, 25.665171, 25.665926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053486, 25.416349, 25.383205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042791, 25.815922, 25.368097>,  <27.036375, 26.055664, 25.359034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042791, 25.815922, 25.368097>,  <27.053486, 25.416349, 25.383205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042791, 25.815922, 25.368097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404550, -0.045362, -0.913390,
		-0.914125, -0.009142, 0.405329,
		-0.026736, 0.998929, -0.037768,
		27.034771, 26.115601, 25.356768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.334311, 25.665071, 25.078888>,  <27.053486, 25.416349, 25.383205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.334311, 25.665071, 25.078888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619350, 25.940928, 25.027348>,  <26.790375, 26.106441, 24.996424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619350, 25.940928, 25.027348>,  <26.334311, 25.665071, 25.078888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619350, 25.940928, 25.027348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394487, 0.241991, -0.886465,
		-0.580159, 0.682524, 0.444495,
		0.712598, 0.689639, -0.128853,
		26.833130, 26.147820, 24.988691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.975340, 26.252481, 24.872810>,  <26.334311, 25.665071, 25.078888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.975340, 26.252481, 24.872810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348368, 26.327497, 24.749430>,  <26.572184, 26.372507, 24.675402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348368, 26.327497, 24.749430>,  <25.975340, 26.252481, 24.872810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.348368, 26.327497, 24.749430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342998, 0.193943, -0.919097,
		-0.112546, 0.962920, 0.245191,
		0.932570, 0.187540, -0.308452,
		26.628139, 26.383760, 24.656895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963980, 26.957909, 24.593569>,  <25.975340, 26.252481, 24.872810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963980, 26.957909, 24.593569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274752, 26.761641, 24.435772>,  <26.461214, 26.643879, 24.341095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274752, 26.761641, 24.435772>,  <25.963980, 26.957909, 24.593569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274752, 26.761641, 24.435772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253761, 0.329383, -0.909457,
		0.576182, 0.806691, 0.131394,
		0.776929, -0.490670, -0.394491,
		26.507830, 26.614439, 24.317425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.310272, 27.441906, 24.153555>,  <25.963980, 26.957909, 24.593569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.310272, 27.441906, 24.153555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.458338, 27.094646, 24.021313>,  <26.547176, 26.886292, 23.941967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.458338, 27.094646, 24.021313>,  <26.310272, 27.441906, 24.153555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458338, 27.094646, 24.021313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109414, 0.312664, -0.943541,
		0.922500, 0.385438, 0.020749,
		0.370164, -0.868147, -0.330605,
		26.569387, 26.834202, 23.922131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878807, 27.576820, 23.628826>,  <26.310272, 27.441906, 24.153555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878807, 27.576820, 23.628826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729528, 27.212969, 23.555832>,  <26.639961, 26.994658, 23.512035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729528, 27.212969, 23.555832>,  <26.878807, 27.576820, 23.628826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729528, 27.212969, 23.555832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131726, 0.142751, -0.980954,
		0.918353, -0.390128, 0.066547,
		-0.373197, -0.909628, -0.182486,
		26.617569, 26.940081, 23.501085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202114, 27.295794, 23.077045>,  <26.878807, 27.576820, 23.628826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202114, 27.295794, 23.077045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853416, 27.100229, 23.089878>,  <26.644197, 26.982891, 23.097578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853416, 27.100229, 23.089878>,  <27.202114, 27.295794, 23.077045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853416, 27.100229, 23.089878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053223, 0.029396, -0.998150,
		0.487062, -0.871839, -0.051647,
		-0.871744, -0.488910, 0.032084,
		26.591892, 26.953556, 23.099503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166529, 26.910391, 22.432941>,  <27.202114, 27.295794, 23.077045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166529, 26.910391, 22.432941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793877, 26.911661, 22.578300>,  <26.570286, 26.912424, 22.665516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793877, 26.911661, 22.578300>,  <27.166529, 26.910391, 22.432941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793877, 26.911661, 22.578300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362241, -0.088318, -0.927891,
		0.029145, -0.996087, 0.083431,
		-0.931629, 0.003179, 0.363398,
		26.514389, 26.912615, 22.687321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814051, 26.638857, 21.835398>,  <27.166529, 26.910391, 22.432941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814051, 26.638857, 21.835398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513683, 26.765919, 22.066990>,  <26.333464, 26.842155, 22.205946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513683, 26.765919, 22.066990>,  <26.814051, 26.638857, 21.835398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513683, 26.765919, 22.066990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576322, 0.112864, -0.809391,
		-0.322453, -0.941466, 0.098320,
		-0.750917, 0.317654, 0.578981,
		26.288408, 26.861216, 22.240685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239298, 26.273035, 21.536579>,  <26.814051, 26.638857, 21.835398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239298, 26.273035, 21.536579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074287, 26.584122, 21.726307>,  <25.975281, 26.770773, 21.840143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074287, 26.584122, 21.726307>,  <26.239298, 26.273035, 21.536579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074287, 26.584122, 21.726307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510888, 0.233571, -0.827308,
		-0.754198, -0.583611, 0.300971,
		-0.412528, 0.777716, 0.474318,
		25.950529, 26.817436, 21.868603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587379, 26.222385, 21.414143>,  <26.239298, 26.273035, 21.536579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587379, 26.222385, 21.414143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.662605, 26.607393, 21.492311>,  <25.707741, 26.838398, 21.539213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.662605, 26.607393, 21.492311>,  <25.587379, 26.222385, 21.414143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662605, 26.607393, 21.492311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395043, 0.256298, -0.882186,
		-0.899207, 0.088707, 0.428437,
		0.188063, 0.962519, 0.195422,
		25.719025, 26.896149, 21.550938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.052759, 26.492531, 21.001503>,  <25.587379, 26.222385, 21.414143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.052759, 26.492531, 21.001503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299000, 26.786211, 21.116037>,  <25.446743, 26.962420, 21.184757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299000, 26.786211, 21.116037>,  <25.052759, 26.492531, 21.001503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.299000, 26.786211, 21.116037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224904, 0.511910, -0.829076,
		-0.755285, 0.445981, 0.480256,
		0.615600, 0.734200, 0.286335,
		25.483681, 27.006472, 21.201939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.646063, 27.198301, 21.093296>,  <25.052759, 26.492531, 21.001503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.646063, 27.198301, 21.093296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.033407, 27.232195, 20.999407>,  <25.265814, 27.252531, 20.943073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.033407, 27.232195, 20.999407>,  <24.646063, 27.198301, 21.093296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.033407, 27.232195, 20.999407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248481, 0.414412, -0.875511,
		0.023085, 0.906136, 0.422356,
		0.968362, 0.084736, -0.234725,
		25.323915, 27.257616, 20.928989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.479036, 29.732462, 19.952883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.258373, 29.399240, 19.969339>,  <31.125975, 29.199308, 19.979214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.258373, 29.399240, 19.969339>,  <31.479036, 29.732462, 19.952883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258373, 29.399240, 19.969339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134649, 0.137630, 0.981289,
		-0.823129, 0.535797, -0.188094,
		-0.551659, -0.833054, 0.041143,
		31.092875, 29.149324, 19.981682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984400, 29.834383, 20.334721>,  <31.479036, 29.732462, 19.952883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984400, 29.834383, 20.334721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.004309, 29.437233, 20.378029>,  <31.016254, 29.198942, 20.404015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.004309, 29.437233, 20.378029>,  <30.984400, 29.834383, 20.334721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004309, 29.437233, 20.378029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032152, 0.106757, 0.993765,
		-0.998243, -0.052945, -0.026609,
		0.049774, -0.992875, 0.108272,
		31.019241, 29.139370, 20.410511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445969, 29.701107, 20.754892>,  <30.984400, 29.834383, 20.334721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445969, 29.701107, 20.754892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.684107, 29.381964, 20.792805>,  <30.826990, 29.190477, 20.815552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.684107, 29.381964, 20.792805>,  <30.445969, 29.701107, 20.754892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684107, 29.381964, 20.792805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165204, -0.006112, 0.986241,
		-0.786302, -0.602812, -0.135448,
		0.595346, -0.797860, 0.094781,
		30.862711, 29.142607, 20.821239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040955, 29.294147, 21.255486>,  <30.445969, 29.701107, 20.754892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040955, 29.294147, 21.255486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.431004, 29.205492, 21.254152>,  <30.665033, 29.152298, 21.253353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.431004, 29.205492, 21.254152>,  <30.040955, 29.294147, 21.255486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431004, 29.205492, 21.254152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046968, 0.191898, 0.980290,
		-0.216633, -0.956060, 0.197534,
		0.975122, -0.221641, -0.003332,
		30.723541, 29.139000, 21.253153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030396, 28.671135, 21.710136>,  <30.040955, 29.294147, 21.255486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030396, 28.671135, 21.710136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.405689, 28.796227, 21.650911>,  <30.630865, 28.871281, 21.615377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.405689, 28.796227, 21.650911>,  <30.030396, 28.671135, 21.710136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405689, 28.796227, 21.650911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144209, 0.035552, 0.988908,
		0.314522, -0.949177, -0.011742,
		0.938232, 0.312727, -0.148061,
		30.687159, 28.890045, 21.606493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411036, 28.404390, 22.276747>,  <30.030396, 28.671135, 21.710136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411036, 28.404390, 22.276747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.666027, 28.687782, 22.155634>,  <30.819021, 28.857819, 22.082966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.666027, 28.687782, 22.155634>,  <30.411036, 28.404390, 22.276747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666027, 28.687782, 22.155634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227962, 0.201949, 0.952496,
		0.735973, -0.676217, -0.032769,
		0.637477, 0.708482, -0.302781,
		30.857269, 28.900328, 22.064800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042480, 28.348146, 22.641783>,  <30.411036, 28.404390, 22.276747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042480, 28.348146, 22.641783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.028391, 28.727556, 22.515886>,  <31.019938, 28.955202, 22.440348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.028391, 28.727556, 22.515886>,  <31.042480, 28.348146, 22.641783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028391, 28.727556, 22.515886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208055, 0.314998, 0.926008,
		0.977483, -0.032868, -0.208440,
		-0.035222, 0.948523, -0.314743,
		31.017824, 29.012114, 22.421463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647173, 28.510368, 22.803524>,  <31.042480, 28.348146, 22.641783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647173, 28.510368, 22.803524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.434109, 28.848549, 22.788111>,  <31.306271, 29.051456, 22.778862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.434109, 28.848549, 22.788111>,  <31.647173, 28.510368, 22.803524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434109, 28.848549, 22.788111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293518, 0.227248, 0.928550,
		0.793801, 0.483291, -0.369201,
		-0.532660, 0.845451, -0.038535,
		31.274311, 29.102184, 22.776550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972321, 28.982624, 23.266087>,  <31.647173, 28.510368, 22.803524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972321, 28.982624, 23.266087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.618586, 29.163235, 23.218634>,  <31.406345, 29.271601, 23.190161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.618586, 29.163235, 23.218634>,  <31.972321, 28.982624, 23.266087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618586, 29.163235, 23.218634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008847, 0.270277, 0.962742,
		0.466768, 0.850338, -0.243010,
		-0.884336, 0.451527, -0.118634,
		31.353285, 29.298693, 23.183044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968832, 29.590488, 23.762072>,  <31.972321, 28.982624, 23.266087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968832, 29.590488, 23.762072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.576460, 29.589636, 23.684336>,  <31.341036, 29.589125, 23.637695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.576460, 29.589636, 23.684336>,  <31.968832, 29.590488, 23.762072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576460, 29.589636, 23.684336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190714, 0.203040, 0.960418,
		0.037413, 0.979168, -0.199575,
		-0.980932, -0.002130, -0.194338,
		31.282181, 29.588997, 23.626034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659697, 30.283434, 23.783182>,  <31.968832, 29.590488, 23.762072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659697, 30.283434, 23.783182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.391075, 30.004911, 23.884510>,  <31.229902, 29.837797, 23.945307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.391075, 30.004911, 23.884510>,  <31.659697, 30.283434, 23.783182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391075, 30.004911, 23.884510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118867, 0.438696, 0.890739,
		-0.731359, 0.568068, -0.377376,
		-0.671554, -0.696308, 0.253320,
		31.189610, 29.796019, 23.960506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147327, 30.689644, 24.149858>,  <31.659697, 30.283434, 23.783182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147327, 30.689644, 24.149858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.102953, 30.301462, 24.235569>,  <31.076328, 30.068554, 24.286995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.102953, 30.301462, 24.235569>,  <31.147327, 30.689644, 24.149858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102953, 30.301462, 24.235569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171923, 0.231093, 0.957621,
		-0.978844, 0.069394, -0.192479,
		-0.110934, -0.970454, 0.214274,
		31.069674, 30.010326, 24.299850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644030, 30.740608, 24.604355>,  <31.147327, 30.689644, 24.149858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644030, 30.740608, 24.604355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.828236, 30.388571, 24.650597>,  <30.938759, 30.177349, 24.678341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.828236, 30.388571, 24.650597>,  <30.644030, 30.740608, 24.604355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828236, 30.388571, 24.650597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194729, 0.026900, 0.980488,
		-0.866030, -0.474039, -0.158992,
		0.460513, -0.880093, 0.115605,
		30.966389, 30.124542, 24.685278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187653, 30.306890, 24.982925>,  <30.644030, 30.740608, 24.604355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187653, 30.306890, 24.982925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.557121, 30.169020, 25.049894>,  <30.778803, 30.086298, 25.090076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.557121, 30.169020, 25.049894>,  <30.187653, 30.306890, 24.982925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557121, 30.169020, 25.049894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225503, -0.135686, 0.964747,
		-0.309809, -0.928863, -0.203055,
		0.923670, -0.344676, 0.167424,
		30.834223, 30.065617, 25.100122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660196, 30.390265, 25.282963>,  <30.187653, 30.306890, 24.982925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660196, 30.390265, 25.282963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.508839, 30.757320, 25.331549>,  <29.418024, 30.977554, 25.360701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.508839, 30.757320, 25.331549>,  <29.660196, 30.390265, 25.282963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508839, 30.757320, 25.331549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151047, 0.068250, -0.986168,
		-0.913238, -0.391506, 0.112782,
		-0.378393, 0.917641, 0.121465,
		29.395321, 31.032612, 25.367989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090839, 30.320900, 24.851978>,  <29.660196, 30.390265, 25.282963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090839, 30.320900, 24.851978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.147495, 30.708879, 24.931114>,  <29.181488, 30.941668, 24.978596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.147495, 30.708879, 24.931114>,  <29.090839, 30.320900, 24.851978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147495, 30.708879, 24.931114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272546, 0.230341, -0.934164,
		-0.951660, 0.078393, 0.296980,
		0.141638, 0.969947, 0.197840,
		29.189987, 30.999865, 24.990467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500486, 30.615307, 24.725750>,  <29.090839, 30.320900, 24.851978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500486, 30.615307, 24.725750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.765430, 30.913929, 24.700672>,  <28.924397, 31.093103, 24.685625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.765430, 30.913929, 24.700672>,  <28.500486, 30.615307, 24.725750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765430, 30.913929, 24.700672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258226, 0.148943, -0.954534,
		-0.703275, 0.648436, 0.291434,
		0.662362, 0.746556, -0.062695,
		28.964138, 31.137896, 24.681864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198135, 31.118324, 24.343145>,  <28.500486, 30.615307, 24.725750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198135, 31.118324, 24.343145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.577347, 31.238808, 24.302126>,  <28.804873, 31.311098, 24.277514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.577347, 31.238808, 24.302126>,  <28.198135, 31.118324, 24.343145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577347, 31.238808, 24.302126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134278, 0.086544, -0.987157,
		-0.288467, 0.949622, 0.122492,
		0.948028, 0.301210, -0.102548,
		28.861755, 31.329170, 24.271362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307039, 31.729944, 24.011084>,  <28.198135, 31.118324, 24.343145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307039, 31.729944, 24.011084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.653505, 31.542868, 23.940638>,  <28.861385, 31.430622, 23.898369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.653505, 31.542868, 23.940638>,  <28.307039, 31.729944, 24.011084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653505, 31.542868, 23.940638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206192, -0.013429, -0.978419,
		0.455236, 0.883788, -0.108066,
		0.866167, -0.467694, -0.176116,
		28.913355, 31.402559, 23.887802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423836, 31.913815, 23.290258>,  <28.307039, 31.729944, 24.011084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423836, 31.913815, 23.290258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.721109, 31.650238, 23.336689>,  <28.899473, 31.492092, 23.364548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.721109, 31.650238, 23.336689>,  <28.423836, 31.913815, 23.290258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721109, 31.650238, 23.336689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068903, -0.097187, -0.992878,
		0.665530, 0.745889, -0.026825,
		0.743183, -0.658942, 0.116075,
		28.944065, 31.452555, 23.371511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814861, 32.061470, 22.811985>,  <28.423836, 31.913815, 23.290258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814861, 32.061470, 22.811985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.923994, 31.681503, 22.872932>,  <28.989473, 31.453524, 22.909500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.923994, 31.681503, 22.872932>,  <28.814861, 32.061470, 22.811985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923994, 31.681503, 22.872932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048946, -0.144464, -0.988299,
		0.960815, 0.277099, 0.007080,
		0.272834, -0.949919, 0.152366,
		29.005844, 31.396528, 22.918642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552450, 32.015083, 22.539045>,  <28.814861, 32.061470, 22.811985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552450, 32.015083, 22.539045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.374117, 31.657040, 22.540501>,  <29.267117, 31.442213, 22.541374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.374117, 31.657040, 22.540501>,  <29.552450, 32.015083, 22.539045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374117, 31.657040, 22.540501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123503, -0.065538, -0.990178,
		0.886555, -0.441006, 0.139768,
		-0.445834, -0.895108, 0.003637,
		29.240366, 31.388508, 22.541592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735954, 31.646481, 22.040539>,  <29.552450, 32.015083, 22.539045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735954, 31.646481, 22.040539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.438799, 31.383739, 22.092171>,  <29.260506, 31.226095, 22.123150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.438799, 31.383739, 22.092171>,  <29.735954, 31.646481, 22.040539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438799, 31.383739, 22.092171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065649, -0.263383, -0.962455,
		0.666190, -0.706521, 0.238786,
		-0.742887, -0.656854, 0.129081,
		29.215933, 31.186684, 22.130896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937756, 31.078299, 21.650610>,  <29.735954, 31.646481, 22.040539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937756, 31.078299, 21.650610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.541861, 31.078819, 21.707762>,  <29.304323, 31.079132, 21.742052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.541861, 31.078819, 21.707762>,  <29.937756, 31.078299, 21.650610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541861, 31.078819, 21.707762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128939, -0.439046, -0.889165,
		0.061572, -0.898464, 0.434709,
		-0.989739, 0.001303, 0.142879,
		29.244938, 31.079210, 21.750626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765898, 30.346628, 21.528976>,  <29.937756, 31.078299, 21.650610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765898, 30.346628, 21.528976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.441444, 30.578064, 21.494804>,  <29.246773, 30.716925, 21.474302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.441444, 30.578064, 21.494804>,  <29.765898, 30.346628, 21.528976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441444, 30.578064, 21.494804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172479, -0.376212, -0.910338,
		-0.558850, -0.723671, 0.404952,
		-0.811134, 0.578588, -0.085428,
		29.198105, 30.751640, 21.469175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399290, 29.868797, 21.167255>,  <29.765898, 30.346628, 21.528976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399290, 29.868797, 21.167255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.202221, 30.211180, 21.104506>,  <29.083979, 30.416609, 21.066854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.202221, 30.211180, 21.104506>,  <29.399290, 29.868797, 21.167255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202221, 30.211180, 21.104506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210482, -0.292134, -0.932928,
		-0.844375, -0.426609, 0.324091,
		-0.492674, 0.855957, -0.156877,
		29.054419, 30.467966, 21.057442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698526, 29.682272, 20.903585>,  <29.399290, 29.868797, 21.167255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698526, 29.682272, 20.903585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.755957, 30.055670, 20.772146>,  <28.790415, 30.279709, 20.693283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.755957, 30.055670, 20.772146>,  <28.698526, 29.682272, 20.903585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755957, 30.055670, 20.772146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263167, -0.284070, -0.921980,
		-0.954007, 0.218848, 0.204879,
		0.143574, 0.933493, -0.328598,
		28.799028, 30.335718, 20.673567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090055, 29.872847, 20.423775>,  <28.698526, 29.682272, 20.903585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090055, 29.872847, 20.423775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.419977, 30.079632, 20.332169>,  <28.617931, 30.203703, 20.277205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.419977, 30.079632, 20.332169>,  <28.090055, 29.872847, 20.423775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419977, 30.079632, 20.332169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157511, -0.178922, -0.971173,
		-0.543035, 0.837101, -0.066149,
		0.824805, 0.516961, -0.229014,
		28.667419, 30.234720, 20.263464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351749, 30.138397, 20.458523>,  <28.090055, 29.872847, 20.423775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351749, 30.138397, 20.458523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.979370, 29.992344, 20.457167>,  <26.755943, 29.904711, 20.456352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.979370, 29.992344, 20.457167>,  <27.351749, 30.138397, 20.458523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979370, 29.992344, 20.457167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059074, -0.159771, 0.985385,
		-0.360340, 0.917142, 0.170308,
		-0.930948, -0.365135, -0.003392,
		26.700085, 29.882803, 20.456148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941858, 30.601988, 20.930136>,  <27.351749, 30.138397, 20.458523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941858, 30.601988, 20.930136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.755291, 30.249157, 20.903639>,  <26.643351, 30.037458, 20.887741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.755291, 30.249157, 20.903639>,  <26.941858, 30.601988, 20.930136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.755291, 30.249157, 20.903639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064884, -0.108804, 0.991944,
		-0.882181, 0.458364, 0.107981,
		-0.466420, -0.882079, -0.066244,
		26.615364, 29.984533, 20.883766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541586, 30.593952, 21.460484>,  <26.941858, 30.601988, 20.930136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541586, 30.593952, 21.460484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.546312, 30.207130, 21.358765>,  <26.549149, 29.975037, 21.297733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.546312, 30.207130, 21.358765>,  <26.541586, 30.593952, 21.460484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546312, 30.207130, 21.358765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022150, -0.254504, 0.966818,
		-0.999685, -0.005790, -0.024427,
		0.011815, -0.967054, -0.254296,
		26.549856, 29.917015, 21.282476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.920259, 30.425341, 21.728117>,  <26.541586, 30.593952, 21.460484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.920259, 30.425341, 21.728117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.132189, 30.088673, 21.686405>,  <26.259346, 29.886671, 21.661377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.132189, 30.088673, 21.686405>,  <25.920259, 30.425341, 21.728117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132189, 30.088673, 21.686405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209073, -0.248784, 0.945725,
		-0.821933, -0.479266, -0.307782,
		0.529825, -0.841671, -0.104282,
		26.291136, 29.836172, 21.655121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.461340, 29.841652, 21.947943>,  <25.920259, 30.425341, 21.728117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.461340, 29.841652, 21.947943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.847324, 29.742456, 21.982231>,  <26.078915, 29.682940, 22.002804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.847324, 29.742456, 21.982231>,  <25.461340, 29.841652, 21.947943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847324, 29.742456, 21.982231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151002, -0.257686, 0.954357,
		-0.214579, -0.933863, -0.286104,
		0.964963, -0.247987, 0.085721,
		26.136814, 29.668060, 22.007948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531620, 29.266384, 22.329294>,  <25.461340, 29.841652, 21.947943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531620, 29.266384, 22.329294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.910776, 29.386312, 22.372396>,  <26.138269, 29.458269, 22.398258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.910776, 29.386312, 22.372396>,  <25.531620, 29.266384, 22.329294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910776, 29.386312, 22.372396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020033, -0.281462, 0.959363,
		0.317965, -0.911530, -0.260789,
		0.947891, 0.299819, 0.107756,
		26.195143, 29.476257, 22.404722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870953, 28.679054, 22.660610>,  <25.531620, 29.266384, 22.329294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870953, 28.679054, 22.660610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.095350, 29.000731, 22.739155>,  <26.229990, 29.193737, 22.786282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.095350, 29.000731, 22.739155>,  <25.870953, 28.679054, 22.660610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095350, 29.000731, 22.739155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197082, -0.360129, 0.911847,
		0.804016, -0.472843, -0.360523,
		0.560996, 0.804193, 0.196361,
		26.263649, 29.241989, 22.798063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383749, 28.448992, 23.084791>,  <25.870953, 28.679054, 22.660610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.383749, 28.448992, 23.084791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.414516, 28.841543, 23.155191>,  <26.432978, 29.077074, 23.197432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.414516, 28.841543, 23.155191>,  <26.383749, 28.448992, 23.084791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414516, 28.841543, 23.155191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104450, -0.183484, 0.977458,
		0.991551, -0.056804, -0.116619,
		0.076921, 0.981380, 0.176000,
		26.437593, 29.135958, 23.207991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903969, 28.474897, 23.639328>,  <26.383749, 28.448992, 23.084791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903969, 28.474897, 23.639328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.686308, 28.810163, 23.624481>,  <26.555712, 29.011322, 23.615574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.686308, 28.810163, 23.624481>,  <26.903969, 28.474897, 23.639328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686308, 28.810163, 23.624481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104057, 0.111321, 0.988322,
		0.832507, 0.533937, -0.147792,
		-0.544154, 0.838164, -0.037116,
		26.523062, 29.061613, 23.613346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300768, 29.069244, 23.891676>,  <26.903969, 28.474897, 23.639328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300768, 29.069244, 23.891676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.920549, 29.187998, 23.928171>,  <26.692419, 29.259251, 23.950068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.920549, 29.187998, 23.928171>,  <27.300768, 29.069244, 23.891676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920549, 29.187998, 23.928171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205313, 0.380217, 0.901821,
		0.233046, 0.875954, -0.422368,
		-0.950545, 0.296883, 0.091236,
		26.635386, 29.277063, 23.955542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364382, 29.712357, 24.270432>,  <27.300768, 29.069244, 23.891676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364382, 29.712357, 24.270432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.983517, 29.591417, 24.288212>,  <26.754997, 29.518854, 24.298880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.983517, 29.591417, 24.288212>,  <27.364382, 29.712357, 24.270432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983517, 29.591417, 24.288212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078480, 0.382502, 0.920615,
		-0.295348, 0.873085, -0.387932,
		-0.952161, -0.302347, 0.044451,
		26.697868, 29.500713, 24.301548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073168, 30.245514, 24.634220>,  <27.364382, 29.712357, 24.270432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073168, 30.245514, 24.634220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.850418, 29.913664, 24.650267>,  <26.716768, 29.714554, 24.659895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.850418, 29.913664, 24.650267>,  <27.073168, 30.245514, 24.634220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850418, 29.913664, 24.650267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324275, 0.261621, 0.909066,
		-0.764679, 0.493229, -0.414717,
		-0.556877, -0.829626, 0.040114,
		26.683355, 29.664776, 24.662300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387178, 30.439203, 24.912146>,  <27.073168, 30.245514, 24.634220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387178, 30.439203, 24.912146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.398777, 30.042789, 24.964317>,  <26.405737, 29.804941, 24.995621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.398777, 30.042789, 24.964317>,  <26.387178, 30.439203, 24.912146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398777, 30.042789, 24.964317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314156, 0.114835, 0.942401,
		-0.948928, -0.068302, -0.308009,
		0.028998, -0.991034, 0.130428,
		26.407476, 29.745480, 25.003447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806274, 30.247856, 25.372858>,  <26.387178, 30.439203, 24.912146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806274, 30.247856, 25.372858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.052591, 29.932804, 25.381193>,  <26.200382, 29.743773, 25.386194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.052591, 29.932804, 25.381193>,  <25.806274, 30.247856, 25.372858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052591, 29.932804, 25.381193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176338, -0.111993, 0.977938,
		-0.767922, -0.605882, -0.207854,
		0.615793, -0.787633, 0.020838,
		26.237329, 29.696514, 25.387445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<24.711115, 27.837711, 20.713112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.066172, 27.677429, 20.622313>,  <25.279205, 27.581261, 20.567833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.066172, 27.677429, 20.622313>,  <24.711115, 27.837711, 20.713112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.066172, 27.677429, 20.622313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075044, 0.360459, -0.929752,
		0.454378, 0.842322, 0.289888,
		0.887642, -0.400704, -0.226996,
		25.332464, 27.557219, 20.554214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.915936, 28.269192, 20.211624>,  <24.711115, 27.837711, 20.713112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.915936, 28.269192, 20.211624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.150581, 27.946732, 20.180628>,  <25.291368, 27.753256, 20.162031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.150581, 27.946732, 20.180628>,  <24.915936, 28.269192, 20.211624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.150581, 27.946732, 20.180628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032140, 0.118779, -0.992400,
		0.809228, 0.579666, 0.095588,
		0.586615, -0.806150, -0.077489,
		25.326567, 27.704887, 20.157381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.550413, 28.513430, 19.916842>,  <24.915936, 28.269192, 20.211624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.550413, 28.513430, 19.916842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.522234, 28.116827, 19.873116>,  <25.505325, 27.878866, 19.846880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.522234, 28.116827, 19.873116>,  <25.550413, 28.513430, 19.916842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522234, 28.116827, 19.873116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052077, 0.105784, -0.993025,
		0.996155, -0.075651, 0.044182,
		-0.070449, -0.991507, -0.109317,
		25.501099, 27.819374, 19.840321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.026381, 28.423906, 19.369884>,  <25.550413, 28.513430, 19.916842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.026381, 28.423906, 19.369884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.754629, 28.131763, 19.398224>,  <25.591578, 27.956478, 19.415228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.754629, 28.131763, 19.398224>,  <26.026381, 28.423906, 19.369884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754629, 28.131763, 19.398224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244505, 0.134286, -0.960304,
		0.691853, -0.669733, -0.269808,
		-0.679379, -0.730359, 0.070847,
		25.550816, 27.912655, 19.419477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.993017, 28.291529, 18.701496>,  <26.026381, 28.423906, 19.369884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.993017, 28.291529, 18.701496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.687660, 28.060947, 18.818068>,  <25.504446, 27.922598, 18.888010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.687660, 28.060947, 18.818068>,  <25.993017, 28.291529, 18.701496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687660, 28.060947, 18.818068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286016, -0.102865, -0.952687,
		0.579160, -0.810628, -0.086349,
		-0.763393, -0.576455, 0.291428,
		25.458643, 27.888012, 18.905497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970158, 27.870369, 18.201427>,  <25.993017, 28.291529, 18.701496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.970158, 27.870369, 18.201427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.613108, 27.801741, 18.368176>,  <25.398878, 27.760563, 18.468224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.613108, 27.801741, 18.368176>,  <25.970158, 27.870369, 18.201427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613108, 27.801741, 18.368176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413214, -0.058247, -0.908769,
		0.180201, -0.983448, -0.018903,
		-0.892626, -0.171572, 0.416870,
		25.345320, 27.750269, 18.493237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789885, 27.276529, 17.903032>,  <25.970158, 27.870369, 18.201427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789885, 27.276529, 17.903032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.442127, 27.444883, 18.006578>,  <25.233473, 27.545897, 18.068707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.442127, 27.444883, 18.006578>,  <25.789885, 27.276529, 17.903032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.442127, 27.444883, 18.006578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338360, -0.125313, -0.932635,
		-0.360093, -0.898417, 0.251357,
		-0.869393, 0.420885, 0.258864,
		25.181309, 27.571148, 18.084238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329710, 26.763903, 17.742531>,  <25.789885, 27.276529, 17.903032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.329710, 26.763903, 17.742531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.116758, 27.101381, 17.770094>,  <24.988987, 27.303867, 17.786633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.116758, 27.101381, 17.770094>,  <25.329710, 26.763903, 17.742531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.116758, 27.101381, 17.770094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381919, -0.166752, -0.909028,
		-0.755452, -0.510266, 0.410999,
		-0.532381, 0.843696, 0.068907,
		24.957045, 27.354490, 17.790766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.669163, 26.622442, 17.525084>,  <25.329710, 26.763903, 17.742531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.669163, 26.622442, 17.525084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.692669, 27.017357, 17.466013>,  <24.706772, 27.254307, 17.430571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.692669, 27.017357, 17.466013>,  <24.669163, 26.622442, 17.525084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.692669, 27.017357, 17.466013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266914, -0.127006, -0.955315,
		-0.961927, 0.095554, 0.256058,
		0.058764, 0.987289, -0.147675,
		24.710299, 27.313543, 17.421711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.072985, 26.884081, 17.109579>,  <24.669163, 26.622442, 17.525084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.072985, 26.884081, 17.109579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.373320, 27.144487, 17.064997>,  <24.553520, 27.300732, 17.038248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.373320, 27.144487, 17.064997>,  <24.072985, 26.884081, 17.109579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.373320, 27.144487, 17.064997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116562, -0.035491, -0.992549,
		-0.650120, 0.758234, 0.049235,
		0.750838, 0.651015, -0.111455,
		24.598572, 27.339792, 17.031561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.888861, 27.134407, 16.532476>,  <24.072985, 26.884081, 17.109579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.888861, 27.134407, 16.532476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.268316, 27.258209, 16.558674>,  <24.495991, 27.332491, 16.574392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.268316, 27.258209, 16.558674>,  <23.888861, 27.134407, 16.532476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.268316, 27.258209, 16.558674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076777, -0.024402, -0.996750,
		-0.306899, 0.950585, -0.046911,
		0.948640, 0.309503, 0.065494,
		24.552908, 27.351061, 16.578321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.902092, 27.851105, 16.363634>,  <23.888861, 27.134407, 16.532476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.902092, 27.851105, 16.363634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.261942, 27.686909, 16.304071>,  <24.477852, 27.588390, 16.268333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.261942, 27.686909, 16.304071>,  <23.902092, 27.851105, 16.363634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.261942, 27.686909, 16.304071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038481, 0.265158, -0.963437,
		0.434964, 0.872462, 0.222746,
		0.899625, -0.410489, -0.148907,
		24.531830, 27.563763, 16.259399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.243771, 28.276659, 15.854195>,  <23.902092, 27.851105, 16.363634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.243771, 28.276659, 15.854195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.420681, 27.918066, 15.843506>,  <24.526827, 27.702911, 15.837092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.420681, 27.918066, 15.843506>,  <24.243771, 28.276659, 15.854195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.420681, 27.918066, 15.843506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024927, 0.017495, -0.999536,
		0.896533, 0.442736, -0.014609,
		0.442275, -0.896481, -0.026721,
		24.553364, 27.649122, 15.835489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.952147, 28.341789, 15.597577>,  <24.243771, 28.276659, 15.854195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.952147, 28.341789, 15.597577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.769316, 28.007240, 15.476541>,  <24.659616, 27.806511, 15.403918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.769316, 28.007240, 15.476541>,  <24.952147, 28.341789, 15.597577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.769316, 28.007240, 15.476541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197461, 0.236297, -0.951406,
		0.867231, -0.494616, 0.057145,
		-0.457078, -0.836372, -0.302591,
		24.632193, 27.756329, 15.385763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.149296, 29.010345, 15.647061>,  <24.952147, 28.341789, 15.597577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.149296, 29.010345, 15.647061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.269060, 29.348888, 15.470866>,  <25.340919, 29.552015, 15.365149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.269060, 29.348888, 15.470866>,  <25.149296, 29.010345, 15.647061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.269060, 29.348888, 15.470866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249039, 0.376340, 0.892383,
		0.921050, -0.376887, -0.098097,
		0.299410, 0.846359, -0.440487,
		25.358883, 29.602797, 15.338720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.848736, 29.131311, 15.745321>,  <25.149296, 29.010345, 15.647061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.848736, 29.131311, 15.745321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.697811, 29.493299, 15.666666>,  <25.607256, 29.710491, 15.619473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.697811, 29.493299, 15.666666>,  <25.848736, 29.131311, 15.745321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.697811, 29.493299, 15.666666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430410, 0.359368, 0.828011,
		0.819990, 0.227784, -0.525101,
		-0.377312, 0.904969, -0.196638,
		25.584618, 29.764790, 15.607675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.393215, 29.673746, 15.943216>,  <25.848736, 29.131311, 15.745321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.393215, 29.673746, 15.943216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.040998, 29.862871, 15.929972>,  <25.829668, 29.976345, 15.922025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.040998, 29.862871, 15.929972>,  <26.393215, 29.673746, 15.943216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.040998, 29.862871, 15.929972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193279, 0.421983, 0.885762,
		0.432770, 0.773550, -0.462958,
		-0.880542, 0.472811, -0.033111,
		25.776836, 30.004715, 15.920038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512350, 30.186203, 16.342548>,  <26.393215, 29.673746, 15.943216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512350, 30.186203, 16.342548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.112906, 30.197138, 16.324549>,  <25.873238, 30.203699, 16.313749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.112906, 30.197138, 16.324549>,  <26.512350, 30.186203, 16.342548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112906, 30.197138, 16.324549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026897, 0.469908, 0.882306,
		0.045264, 0.882292, -0.468521,
		-0.998613, 0.027335, -0.045001,
		25.813322, 30.205338, 16.311049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.270006, 30.844131, 16.407469>,  <26.512350, 30.186203, 16.342548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.270006, 30.844131, 16.407469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.965927, 30.615349, 16.530737>,  <25.783480, 30.478079, 16.604698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.965927, 30.615349, 16.530737>,  <26.270006, 30.844131, 16.407469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965927, 30.615349, 16.530737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028478, 0.444540, 0.895306,
		-0.649069, 0.689385, -0.321649,
		-0.760197, -0.571955, 0.308169,
		25.737867, 30.443762, 16.623188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828775, 31.227182, 16.843868>,  <26.270006, 30.844131, 16.407469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828775, 31.227182, 16.843868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.722015, 30.859777, 16.960556>,  <25.657959, 30.639334, 17.030569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.722015, 30.859777, 16.960556>,  <25.828775, 31.227182, 16.843868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722015, 30.859777, 16.960556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026390, 0.309554, 0.950516,
		-0.963363, 0.245994, -0.106859,
		-0.266900, -0.918512, 0.291721,
		25.641945, 30.584225, 17.048073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222298, 31.266752, 17.272999>,  <25.828775, 31.227182, 16.843868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222298, 31.266752, 17.272999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.387810, 30.913551, 17.361628>,  <25.487118, 30.701632, 17.414804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.387810, 30.913551, 17.361628>,  <25.222298, 31.266752, 17.272999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.387810, 30.913551, 17.361628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066521, 0.272062, 0.959978,
		-0.907943, -0.382482, 0.171312,
		0.413782, -0.883001, 0.221573,
		25.511944, 30.648651, 17.428099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.836292, 31.061005, 17.951845>,  <25.222298, 31.266752, 17.272999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.836292, 31.061005, 17.951845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.161282, 30.828739, 17.931011>,  <25.356276, 30.689381, 17.918510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.161282, 30.828739, 17.931011>,  <24.836292, 31.061005, 17.951845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.161282, 30.828739, 17.931011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080429, 0.023155, 0.996491,
		-0.577421, -0.813814, 0.065515,
		0.812475, -0.580664, -0.052085,
		25.405024, 30.654539, 17.915386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.696898, 30.381971, 18.305777>,  <24.836292, 31.061005, 17.951845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.696898, 30.381971, 18.305777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.094816, 30.415340, 18.282377>,  <25.333567, 30.435362, 18.268337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.094816, 30.415340, 18.282377>,  <24.696898, 30.381971, 18.305777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.094816, 30.415340, 18.282377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072490, -0.176037, 0.981711,
		0.071601, -0.980842, -0.181168,
		0.994796, 0.083424, -0.058497,
		25.393255, 30.440367, 18.264828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.005846, 29.744797, 18.525301>,  <24.696898, 30.381971, 18.305777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.005846, 29.744797, 18.525301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.311171, 29.998407, 18.574881>,  <25.494366, 30.150574, 18.604628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.311171, 29.998407, 18.574881>,  <25.005846, 29.744797, 18.525301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.311171, 29.998407, 18.574881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048205, -0.247225, 0.967758,
		0.644229, -0.732726, -0.219273,
		0.763312, 0.634028, 0.123949,
		25.540165, 30.188616, 18.612064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.461437, 29.374046, 18.943611>,  <25.005846, 29.744797, 18.525301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.461437, 29.374046, 18.943611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.629194, 29.734655, 18.986256>,  <25.729849, 29.951021, 19.011843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.629194, 29.734655, 18.986256>,  <25.461437, 29.374046, 18.943611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629194, 29.734655, 18.986256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398050, -0.288168, 0.870928,
		0.815885, -0.322821, -0.479706,
		0.419390, 0.901524, 0.106613,
		25.755011, 30.005112, 19.018240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.265507, 29.314228, 19.023155>,  <25.461437, 29.374046, 18.943611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.265507, 29.314228, 19.023155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.196142, 29.671295, 19.189564>,  <26.154524, 29.885536, 19.289408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.196142, 29.671295, 19.189564>,  <26.265507, 29.314228, 19.023155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196142, 29.671295, 19.189564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521450, -0.275127, 0.807710,
		0.835475, 0.357000, -0.417771,
		-0.173413, 0.892668, 0.416020,
		26.144119, 29.939096, 19.314369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902388, 29.611805, 19.274353>,  <26.265507, 29.314228, 19.023155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902388, 29.611805, 19.274353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.622992, 29.788002, 19.499947>,  <26.455355, 29.893721, 19.635303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.622992, 29.788002, 19.499947>,  <26.902388, 29.611805, 19.274353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622992, 29.788002, 19.499947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460329, -0.326847, 0.825390,
		0.547915, 0.836144, 0.025527,
		-0.698489, 0.440493, 0.563985,
		26.413445, 29.920151, 19.669142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260765, 29.878717, 19.761993>,  <26.902388, 29.611805, 19.274353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260765, 29.878717, 19.761993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.892937, 29.929392, 19.910770>,  <26.672239, 29.959797, 20.000036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.892937, 29.929392, 19.910770>,  <27.260765, 29.878717, 19.761993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892937, 29.929392, 19.910770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362811, -0.089679, 0.927538,
		0.150860, 0.987881, 0.036504,
		-0.919571, 0.126684, 0.371943,
		26.617065, 29.967398, 20.022354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856405, 30.362917, 19.695995>,  <27.260765, 29.878717, 19.761993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.856405, 30.362917, 19.695995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.248346, 30.442579, 19.702021>,  <28.483511, 30.490377, 19.705635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.248346, 30.442579, 19.702021>,  <27.856405, 30.362917, 19.695995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248346, 30.442579, 19.702021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032143, -0.082810, -0.996047,
		-0.197123, 0.976463, -0.087543,
		0.979852, 0.199157, 0.015063,
		28.542301, 30.502327, 19.706539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957897, 30.791861, 19.198845>,  <27.856405, 30.362917, 19.695995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957897, 30.791861, 19.198845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.312521, 30.613651, 19.248682>,  <28.525295, 30.506725, 19.278584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.312521, 30.613651, 19.248682>,  <27.957897, 30.791861, 19.198845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312521, 30.613651, 19.248682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074319, -0.128663, -0.988900,
		0.456609, 0.885977, -0.080957,
		0.886558, -0.445524, 0.124593,
		28.578489, 30.479994, 19.286060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464149, 31.159300, 18.740131>,  <27.957897, 30.791861, 19.198845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464149, 31.159300, 18.740131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.580624, 30.781904, 18.803425>,  <28.650509, 30.555466, 18.841400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.580624, 30.781904, 18.803425>,  <28.464149, 31.159300, 18.740131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580624, 30.781904, 18.803425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104261, -0.133118, -0.985601,
		0.950968, 0.303490, 0.059607,
		0.291186, -0.943490, 0.158233,
		28.667980, 30.498857, 18.850895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052729, 31.046682, 18.411028>,  <28.464149, 31.159300, 18.740131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052729, 31.046682, 18.411028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.937931, 30.666328, 18.457417>,  <28.869053, 30.438116, 18.485249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.937931, 30.666328, 18.457417>,  <29.052729, 31.046682, 18.411028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937931, 30.666328, 18.457417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150396, -0.164288, -0.974880,
		0.946052, -0.262345, 0.190160,
		-0.286996, -0.950886, 0.115970,
		28.851831, 30.381063, 18.492207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471773, 30.747532, 18.005163>,  <29.052729, 31.046682, 18.411028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471773, 30.747532, 18.005163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.221670, 30.443382, 18.075459>,  <29.071608, 30.260893, 18.117636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.221670, 30.443382, 18.075459>,  <29.471773, 30.747532, 18.005163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221670, 30.443382, 18.075459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108124, -0.307415, -0.945413,
		0.772892, -0.572125, 0.274428,
		-0.625257, -0.760374, 0.175738,
		29.034092, 30.215269, 18.128180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768051, 30.144474, 17.773863>,  <29.471773, 30.747532, 18.005163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768051, 30.144474, 17.773863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.376181, 30.064539, 17.766924>,  <29.141058, 30.016579, 17.762760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.376181, 30.064539, 17.766924>,  <29.768051, 30.144474, 17.773863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376181, 30.064539, 17.766924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081690, -0.318485, -0.944401,
		0.183201, -0.926624, 0.328337,
		-0.979676, -0.199837, -0.017349,
		29.082277, 30.004587, 17.761719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760847, 29.566511, 17.322071>,  <29.768051, 30.144474, 17.773863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760847, 29.566511, 17.322071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.367613, 29.627495, 17.362671>,  <29.131672, 29.664085, 17.387032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.367613, 29.627495, 17.362671>,  <29.760847, 29.566511, 17.322071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367613, 29.627495, 17.362671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136942, -0.243835, -0.960100,
		-0.121623, -0.957759, 0.260588,
		-0.983084, 0.152455, 0.101502,
		29.072687, 29.673233, 17.393122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982143, 28.822859, 17.473324>,  <29.760847, 29.566511, 17.322071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982143, 28.822859, 17.473324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.370575, 28.728205, 17.460613>,  <30.603634, 28.671412, 17.452988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.370575, 28.728205, 17.460613>,  <29.982143, 28.822859, 17.473324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370575, 28.728205, 17.460613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022399, -0.042215, 0.998857,
		-0.237708, -0.970681, -0.035694,
		0.971079, -0.236637, -0.031777,
		30.661898, 28.657213, 17.451080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083099, 28.195370, 17.847145>,  <29.982143, 28.822859, 17.473324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083099, 28.195370, 17.847145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.460321, 28.326996, 17.827686>,  <30.686655, 28.405972, 17.816011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.460321, 28.326996, 17.827686>,  <30.083099, 28.195370, 17.847145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460321, 28.326996, 17.827686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107693, -0.163669, 0.980620,
		0.314728, -0.930015, -0.189786,
		0.943053, 0.329067, -0.048645,
		30.743237, 28.425716, 17.813093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529360, 27.691908, 18.288895>,  <30.083099, 28.195370, 17.847145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529360, 27.691908, 18.288895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.734911, 28.031878, 18.242315>,  <30.858242, 28.235859, 18.214369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.734911, 28.031878, 18.242315>,  <30.529360, 27.691908, 18.288895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734911, 28.031878, 18.242315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171822, 0.031019, 0.984640,
		0.840482, -0.525990, -0.130096,
		0.513875, 0.849925, -0.116447,
		30.889074, 28.286856, 18.207380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106985, 27.623499, 18.603605>,  <30.529360, 27.691908, 18.288895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106985, 27.623499, 18.603605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.078465, 28.021654, 18.577923>,  <31.061352, 28.260548, 18.562513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.078465, 28.021654, 18.577923>,  <31.106985, 27.623499, 18.603605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078465, 28.021654, 18.577923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033680, 0.061932, 0.997512,
		0.996886, 0.073286, 0.029109,
		-0.071300, 0.995386, -0.064207,
		31.057074, 28.320271, 18.558661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661398, 27.880903, 18.980722>,  <31.106985, 27.623499, 18.603605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661398, 27.880903, 18.980722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.399706, 28.182215, 18.953722>,  <31.242691, 28.363001, 18.937523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.399706, 28.182215, 18.953722>,  <31.661398, 27.880903, 18.980722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399706, 28.182215, 18.953722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073400, 0.152069, 0.985641,
		0.752724, 0.639883, -0.154779,
		-0.654231, 0.753276, -0.067499,
		31.203436, 28.408197, 18.933472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995188, 28.510422, 19.279306>,  <31.661398, 27.880903, 18.980722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995188, 28.510422, 19.279306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.600307, 28.570372, 19.301121>,  <31.363380, 28.606342, 19.314209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.600307, 28.570372, 19.301121>,  <31.995188, 28.510422, 19.279306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600307, 28.570372, 19.301121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096084, 0.285976, 0.953407,
		0.127296, 0.946443, -0.296716,
		-0.987200, 0.149875, 0.054534,
		31.304148, 28.615334, 19.317482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928005, 29.232010, 19.558828>,  <31.995188, 28.510422, 19.279306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928005, 29.232010, 19.558828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.597376, 29.015043, 19.618910>,  <31.398998, 28.884863, 19.654959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.597376, 29.015043, 19.618910>,  <31.928005, 29.232010, 19.558828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597376, 29.015043, 19.618910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053138, 0.340887, 0.938601,
		-0.560315, 0.767841, -0.310591,
		-0.826573, -0.542417, 0.150203,
		31.349403, 28.852318, 19.663971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.816545, 25.239859, 15.654281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.592152, 25.525862, 15.821162>,  <26.457516, 25.697464, 15.921291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.592152, 25.525862, 15.821162>,  <26.816545, 25.239859, 15.654281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592152, 25.525862, 15.821162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696399, 0.135127, 0.704818,
		0.447574, 0.685935, -0.573734,
		-0.560987, 0.715007, 0.417205,
		26.423855, 25.740364, 15.946323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184862, 25.903488, 15.656161>,  <26.816545, 25.239859, 15.654281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184862, 25.903488, 15.656161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.919842, 25.893894, 15.955614>,  <26.760830, 25.888138, 16.135286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.919842, 25.893894, 15.955614>,  <27.184862, 25.903488, 15.656161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919842, 25.893894, 15.955614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749015, -0.022149, 0.662183,
		0.000698, 0.999467, 0.032641,
		-0.662553, -0.023987, 0.748631,
		26.721075, 25.886698, 16.180202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363415, 26.476254, 16.212957>,  <27.184862, 25.903488, 15.656161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363415, 26.476254, 16.212957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.134268, 26.245249, 16.445614>,  <26.996780, 26.106646, 16.585209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.134268, 26.245249, 16.445614>,  <27.363415, 26.476254, 16.212957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134268, 26.245249, 16.445614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726014, -0.028157, 0.687103,
		-0.380431, 0.815898, 0.435410,
		-0.572866, -0.577510, 0.581642,
		26.962408, 26.071997, 16.620106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309423, 26.841564, 16.806915>,  <27.363415, 26.476254, 16.212957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309423, 26.841564, 16.806915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.212624, 26.471525, 16.923964>,  <27.154545, 26.249502, 16.994192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.212624, 26.471525, 16.923964>,  <27.309423, 26.841564, 16.806915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212624, 26.471525, 16.923964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687248, 0.049465, 0.724737,
		-0.684928, 0.376489, 0.623802,
		-0.241999, -0.925100, 0.292621,
		27.140024, 26.193995, 17.011749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330263, 26.786547, 17.497477>,  <27.309423, 26.841564, 16.806915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330263, 26.786547, 17.497477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.376173, 26.392216, 17.448526>,  <27.403719, 26.155617, 17.419157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.376173, 26.392216, 17.448526>,  <27.330263, 26.786547, 17.497477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376173, 26.392216, 17.448526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628537, -0.023327, 0.777429,
		-0.769264, -0.166146, 0.616951,
		0.114775, -0.985825, -0.122373,
		27.410606, 26.096468, 17.411814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170238, 26.351793, 18.150646>,  <27.330263, 26.786547, 17.497477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170238, 26.351793, 18.150646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.393772, 26.090828, 17.945877>,  <27.527891, 25.934250, 17.823015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.393772, 26.090828, 17.945877>,  <27.170238, 26.351793, 18.150646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393772, 26.090828, 17.945877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483528, -0.245173, 0.840292,
		-0.673726, -0.717112, 0.178448,
		0.558833, -0.652412, -0.511923,
		27.561422, 25.895105, 17.792299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053308, 25.838102, 18.515184>,  <27.170238, 26.351793, 18.150646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053308, 25.838102, 18.515184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.380371, 25.758711, 18.299019>,  <27.576609, 25.711077, 18.169319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.380371, 25.758711, 18.299019>,  <27.053308, 25.838102, 18.515184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380371, 25.758711, 18.299019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420061, -0.436226, 0.795774,
		-0.393681, -0.877676, -0.273313,
		0.817657, -0.198473, -0.540411,
		27.625668, 25.699167, 18.136894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332420, 25.460503, 18.959866>,  <27.053308, 25.838102, 18.515184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332420, 25.460503, 18.959866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.631544, 25.529551, 18.703432>,  <27.811018, 25.570980, 18.549572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.631544, 25.529551, 18.703432>,  <27.332420, 25.460503, 18.959866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631544, 25.529551, 18.703432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638820, -0.450057, 0.623985,
		-0.180811, -0.876156, -0.446830,
		0.747807, 0.172621, -0.641082,
		27.855886, 25.581337, 18.511108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683453, 24.810932, 18.911846>,  <27.332420, 25.460503, 18.959866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683453, 24.810932, 18.911846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.931446, 25.109285, 18.814453>,  <28.080242, 25.288298, 18.756018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.931446, 25.109285, 18.814453>,  <27.683453, 24.810932, 18.911846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931446, 25.109285, 18.814453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614930, -0.269175, 0.741219,
		0.487322, -0.609267, -0.625549,
		0.619983, 0.745881, -0.243482,
		28.117441, 25.333050, 18.741409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403912, 24.602169, 18.839069>,  <27.683453, 24.810932, 18.911846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403912, 24.602169, 18.839069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.447254, 24.992617, 18.914389>,  <28.473259, 25.226885, 18.959579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.447254, 24.992617, 18.914389>,  <28.403912, 24.602169, 18.839069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447254, 24.992617, 18.914389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776895, -0.201322, 0.596576,
		0.620236, 0.081644, -0.780155,
		0.108355, 0.976117, 0.188296,
		28.479761, 25.285452, 18.970877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136902, 24.742167, 18.835009>,  <28.403912, 24.602169, 18.839069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136902, 24.742167, 18.835009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985430, 25.054890, 19.033152>,  <28.894547, 25.242523, 19.152037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985430, 25.054890, 19.033152>,  <29.136902, 24.742167, 18.835009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985430, 25.054890, 19.033152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645236, -0.160702, 0.746891,
		0.663529, 0.602456, -0.443594,
		-0.378682, 0.781807, 0.495357,
		28.871824, 25.289433, 19.181759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709841, 25.010569, 19.163191>,  <29.136902, 24.742167, 18.835009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709841, 25.010569, 19.163191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.415411, 25.210052, 19.346268>,  <29.238752, 25.329742, 19.456114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.415411, 25.210052, 19.346268>,  <29.709841, 25.010569, 19.163191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415411, 25.210052, 19.346268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428834, -0.179591, 0.885352,
		0.523730, 0.847961, -0.081671,
		-0.736076, 0.498708, 0.457692,
		29.194588, 25.359665, 19.483576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991428, 25.620363, 19.438522>,  <29.709841, 25.010569, 19.163191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991428, 25.620363, 19.438522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.386238, 25.575714, 19.392355>,  <30.623125, 25.548925, 19.364655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.386238, 25.575714, 19.392355>,  <29.991428, 25.620363, 19.438522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386238, 25.575714, 19.392355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123666, -0.070012, -0.989851,
		0.102407, 0.991281, -0.082908,
		0.987025, -0.111621, -0.115418,
		30.682346, 25.542229, 19.357729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208933, 26.136271, 18.974243>,  <29.991428, 25.620363, 19.438522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208933, 26.136271, 18.974243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.491755, 25.854710, 18.947123>,  <30.661448, 25.685774, 18.930851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.491755, 25.854710, 18.947123>,  <30.208933, 26.136271, 18.974243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491755, 25.854710, 18.947123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166197, -0.072213, -0.983445,
		0.687352, 0.706618, -0.168045,
		0.707054, -0.703901, -0.067802,
		30.703871, 25.643539, 18.926783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608774, 26.355894, 18.408737>,  <30.208933, 26.136271, 18.974243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608774, 26.355894, 18.408737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.689598, 25.967556, 18.460325>,  <30.738092, 25.734554, 18.491278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.689598, 25.967556, 18.460325>,  <30.608774, 26.355894, 18.408737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689598, 25.967556, 18.460325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018766, -0.135501, -0.990600,
		0.979193, 0.197740, -0.045599,
		0.202060, -0.970844, 0.128971,
		30.750216, 25.676302, 18.499016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196518, 26.201698, 18.021883>,  <30.608774, 26.355894, 18.408737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196518, 26.201698, 18.021883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.004452, 25.853765, 18.067202>,  <30.889212, 25.645006, 18.094393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.004452, 25.853765, 18.067202>,  <31.196518, 26.201698, 18.021883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004452, 25.853765, 18.067202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099686, -0.182431, -0.978152,
		0.871495, -0.458381, 0.174307,
		-0.480165, -0.869831, 0.113294,
		30.860401, 25.592815, 18.101191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550201, 25.786081, 17.613752>,  <31.196518, 26.201698, 18.021883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550201, 25.786081, 17.613752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.198112, 25.600554, 17.653919>,  <30.986860, 25.489237, 17.678019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.198112, 25.600554, 17.653919>,  <31.550201, 25.786081, 17.613752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198112, 25.600554, 17.653919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009770, -0.193844, -0.980984,
		0.474463, -0.864463, 0.166094,
		-0.880221, -0.463818, 0.100417,
		30.934046, 25.461409, 17.684044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614985, 25.109985, 17.283661>,  <31.550201, 25.786081, 17.613752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614985, 25.109985, 17.283661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.228029, 25.204756, 17.319494>,  <30.995855, 25.261618, 17.340994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.228029, 25.204756, 17.319494>,  <31.614985, 25.109985, 17.283661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228029, 25.204756, 17.319494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127261, -0.148827, -0.980640,
		-0.219006, -0.960061, 0.174125,
		-0.967388, 0.236926, 0.089584,
		30.937813, 25.275833, 17.346369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245743, 24.462568, 16.937286>,  <31.614985, 25.109985, 17.283661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245743, 24.462568, 16.937286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.981926, 24.762949, 16.924158>,  <30.823637, 24.943178, 16.916281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.981926, 24.762949, 16.924158>,  <31.245743, 24.462568, 16.937286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981926, 24.762949, 16.924158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296868, -0.300347, -0.906455,
		-0.690563, -0.588100, 0.421025,
		-0.659540, 0.750953, -0.032821,
		30.784063, 24.988235, 16.914312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623718, 24.173948, 16.530100>,  <31.245743, 24.462568, 16.937286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623718, 24.173948, 16.530100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.591270, 24.572477, 16.541164>,  <30.571802, 24.811594, 16.547804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.591270, 24.572477, 16.541164>,  <30.623718, 24.173948, 16.530100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591270, 24.572477, 16.541164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138173, 0.016245, -0.990275,
		-0.987080, -0.084154, 0.136347,
		-0.081121, 0.996320, 0.027663,
		30.566935, 24.871374, 16.549463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170950, 24.385876, 15.967006>,  <30.623718, 24.173948, 16.530100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170950, 24.385876, 15.967006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.375078, 24.721558, 16.042166>,  <30.497555, 24.922966, 16.087261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.375078, 24.721558, 16.042166>,  <30.170950, 24.385876, 15.967006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375078, 24.721558, 16.042166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049121, 0.189691, -0.980614,
		-0.858579, 0.509660, 0.055581,
		0.510323, 0.839205, 0.187900,
		30.528175, 24.973318, 16.098536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989965, 24.854191, 15.440549>,  <30.170950, 24.385876, 15.967006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989965, 24.854191, 15.440549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.315456, 25.028500, 15.594405>,  <30.510752, 25.133085, 15.686719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.315456, 25.028500, 15.594405>,  <29.989965, 24.854191, 15.440549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315456, 25.028500, 15.594405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280345, 0.285448, -0.916475,
		-0.509171, 0.853593, 0.110110,
		0.813727, 0.435773, 0.384642,
		30.559574, 25.159231, 15.709798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046043, 25.509485, 15.180196>,  <29.989965, 24.854191, 15.440549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046043, 25.509485, 15.180196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.428289, 25.437466, 15.273478>,  <30.657637, 25.394255, 15.329447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.428289, 25.437466, 15.273478>,  <30.046043, 25.509485, 15.180196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428289, 25.437466, 15.273478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277977, 0.288712, -0.916174,
		0.097627, 0.940334, 0.325946,
		0.955614, -0.180049, 0.233205,
		30.714973, 25.383451, 15.343439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367691, 26.135977, 15.111979>,  <30.046043, 25.509485, 15.180196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367691, 26.135977, 15.111979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.669453, 25.874090, 15.093128>,  <30.850510, 25.716959, 15.081818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.669453, 25.874090, 15.093128>,  <30.367691, 26.135977, 15.111979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669453, 25.874090, 15.093128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272189, 0.377348, -0.885168,
		0.597316, 0.654948, 0.462879,
		0.754405, -0.654715, -0.047126,
		30.895775, 25.677675, 15.078990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889563, 26.474072, 14.693527>,  <30.367691, 26.135977, 15.111979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889563, 26.474072, 14.693527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.001968, 26.090200, 14.696237>,  <31.069412, 25.859877, 14.697863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.001968, 26.090200, 14.696237>,  <30.889563, 26.474072, 14.693527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001968, 26.090200, 14.696237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478619, 0.134024, -0.867733,
		0.831838, 0.247087, 0.496984,
		0.281013, -0.959680, 0.006774,
		31.086273, 25.802296, 14.698269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555906, 26.607145, 14.499383>,  <30.889563, 26.474072, 14.693527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555906, 26.607145, 14.499383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.496975, 26.218536, 14.425154>,  <31.461617, 25.985371, 14.380616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.496975, 26.218536, 14.425154>,  <31.555906, 26.607145, 14.499383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496975, 26.218536, 14.425154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180762, 0.158013, -0.970751,
		0.972430, -0.176562, 0.152335,
		-0.147326, -0.971524, -0.185573,
		31.452778, 25.927080, 14.369482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290512, 26.914053, 15.090579>,  <31.555906, 26.607145, 14.499383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290512, 26.914053, 15.090579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.150663, 27.257780, 14.941269>,  <31.066755, 27.464016, 14.851683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.150663, 27.257780, 14.941269>,  <31.290512, 26.914053, 15.090579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150663, 27.257780, 14.941269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098898, 0.430044, 0.897375,
		0.931657, 0.276824, -0.235338,
		-0.349621, 0.859320, -0.373276,
		31.045776, 27.515575, 14.829287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796734, 27.481789, 15.207340>,  <31.290512, 26.914053, 15.090579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796734, 27.481789, 15.207340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.444139, 27.667128, 15.170924>,  <31.232582, 27.778332, 15.149075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.444139, 27.667128, 15.170924>,  <31.796734, 27.481789, 15.207340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444139, 27.667128, 15.170924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169260, 0.490023, 0.855119,
		0.440828, 0.738368, -0.510376,
		-0.881488, 0.463347, -0.091039,
		31.179693, 27.806131, 15.143613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928707, 28.151810, 15.434963>,  <31.796734, 27.481789, 15.207340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928707, 28.151810, 15.434963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.531073, 28.113916, 15.456204>,  <31.292492, 28.091181, 15.468949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.531073, 28.113916, 15.456204>,  <31.928707, 28.151810, 15.434963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531073, 28.113916, 15.456204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007976, 0.551329, 0.834250,
		-0.108311, 0.828891, -0.548824,
		-0.994085, -0.094736, 0.053104,
		31.232847, 28.085495, 15.472136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741711, 28.721407, 15.747786>,  <31.928707, 28.151810, 15.434963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741711, 28.721407, 15.747786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.400202, 28.515022, 15.775665>,  <31.195297, 28.391191, 15.792394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.400202, 28.515022, 15.775665>,  <31.741711, 28.721407, 15.747786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400202, 28.515022, 15.775665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231558, 0.496197, 0.836761,
		-0.466324, 0.698262, -0.543113,
		-0.853770, -0.515964, 0.069700,
		31.144072, 28.360233, 15.796576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171547, 29.220436, 15.856409>,  <31.741711, 28.721407, 15.747786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171547, 29.220436, 15.856409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.056843, 28.863590, 15.996068>,  <30.988020, 28.649483, 16.079863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.056843, 28.863590, 15.996068>,  <31.171547, 29.220436, 15.856409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056843, 28.863590, 15.996068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301205, 0.429930, 0.851138,
		-0.909419, 0.138909, -0.391996,
		-0.286762, -0.892112, 0.349147,
		30.970814, 28.595957, 16.100813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675417, 29.414690, 16.313900>,  <31.171547, 29.220436, 15.856409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675417, 29.414690, 16.313900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.756357, 29.040106, 16.428513>,  <30.804922, 28.815355, 16.497280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.756357, 29.040106, 16.428513>,  <30.675417, 29.414690, 16.313900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756357, 29.040106, 16.428513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108972, 0.269234, 0.956890,
		-0.973231, -0.224852, -0.047568,
		0.202352, -0.936458, 0.286530,
		30.817062, 28.759169, 16.514471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167631, 29.183443, 16.882200>,  <30.675417, 29.414690, 16.313900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167631, 29.183443, 16.882200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.492266, 28.956787, 16.939110>,  <30.687046, 28.820793, 16.973255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.492266, 28.956787, 16.939110>,  <30.167631, 29.183443, 16.882200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492266, 28.956787, 16.939110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155710, 0.024923, 0.987488,
		-0.563098, -0.823587, -0.068005,
		0.811588, -0.566642, 0.142275,
		30.735743, 28.786795, 16.981792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388374, 28.988483, 16.851887>,  <30.167631, 29.183443, 16.882200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388374, 28.988483, 16.851887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.106642, 29.263264, 16.923466>,  <28.937603, 29.428131, 16.966413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.106642, 29.263264, 16.923466>,  <29.388374, 28.988483, 16.851887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106642, 29.263264, 16.923466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348275, -0.114738, -0.930344,
		-0.618567, -0.717590, 0.320061,
		-0.704329, 0.686949, 0.178945,
		28.895344, 29.469349, 16.977150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705053, 28.775679, 16.605961>,  <29.388374, 28.988483, 16.851887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705053, 28.775679, 16.605961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656849, 29.172600, 16.617348>,  <28.627926, 29.410753, 16.624180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656849, 29.172600, 16.617348>,  <28.705053, 28.775679, 16.605961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656849, 29.172600, 16.617348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506202, -0.036756, -0.861631,
		-0.853953, -0.118245, 0.506736,
		-0.120509, 0.992304, 0.028468,
		28.620695, 29.470291, 16.625889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995192, 28.882431, 16.441830>,  <28.705053, 28.775679, 16.605961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995192, 28.882431, 16.441830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182953, 29.228022, 16.368938>,  <28.295610, 29.435375, 16.325203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182953, 29.228022, 16.368938>,  <27.995192, 28.882431, 16.441830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182953, 29.228022, 16.368938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556366, 0.129147, -0.820840,
		-0.685651, 0.486690, 0.541309,
		0.469403, 0.863976, -0.182228,
		28.323774, 29.487215, 16.314270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552471, 29.452639, 16.515644>,  <27.995192, 28.882431, 16.441830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552471, 29.452639, 16.515644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.836615, 29.548157, 16.250807>,  <28.007101, 29.605467, 16.091904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.836615, 29.548157, 16.250807>,  <27.552471, 29.452639, 16.515644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836615, 29.548157, 16.250807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679199, -0.014156, -0.733817,
		-0.184605, 0.970967, 0.152134,
		0.710359, 0.238796, -0.662093,
		28.049723, 29.619795, 16.052179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235138, 29.867949, 16.027815>,  <27.552471, 29.452639, 16.515644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235138, 29.867949, 16.027815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.574051, 29.802811, 15.825588>,  <27.777399, 29.763727, 15.704252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.574051, 29.802811, 15.825588>,  <27.235138, 29.867949, 16.027815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574051, 29.802811, 15.825588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513677, -0.009118, -0.857935,
		0.135101, 0.986610, -0.091376,
		0.847280, -0.162846, -0.505566,
		27.828236, 29.753958, 15.673919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135317, 30.329033, 15.395407>,  <27.235138, 29.867949, 16.027815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135317, 30.329033, 15.395407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.447779, 30.089792, 15.323777>,  <27.635256, 29.946247, 15.280800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.447779, 30.089792, 15.323777>,  <27.135317, 30.329033, 15.395407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447779, 30.089792, 15.323777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417018, -0.286386, -0.862600,
		0.464640, 0.748502, -0.473132,
		0.781156, -0.598104, -0.179073,
		27.682125, 29.910360, 15.270056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573322, 30.551010, 14.749206>,  <27.135317, 30.329033, 15.395407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573322, 30.551010, 14.749206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.602980, 30.159056, 14.823315>,  <27.620775, 29.923883, 14.867780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.602980, 30.159056, 14.823315>,  <27.573322, 30.551010, 14.749206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602980, 30.159056, 14.823315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335383, -0.199463, -0.920724,
		0.939160, 0.006130, -0.343426,
		0.074145, -0.979886, 0.185272,
		27.625223, 29.865089, 14.878896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697248, 30.239126, 14.101452>,  <27.573322, 30.551010, 14.749206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697248, 30.239126, 14.101452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.600399, 29.914686, 14.314427>,  <27.542290, 29.720022, 14.442213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.600399, 29.914686, 14.314427>,  <27.697248, 30.239126, 14.101452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600399, 29.914686, 14.314427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375155, -0.427823, -0.822330,
		0.894782, -0.398854, -0.200702,
		-0.242124, -0.811100, 0.532440,
		27.527761, 29.671356, 14.474159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088236, 29.612259, 13.882658>,  <27.697248, 30.239126, 14.101452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088236, 29.612259, 13.882658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.722124, 29.523714, 14.017276>,  <27.502457, 29.470587, 14.098046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.722124, 29.523714, 14.017276>,  <28.088236, 29.612259, 13.882658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722124, 29.523714, 14.017276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289987, -0.217802, -0.931917,
		0.279594, -0.950558, 0.135156,
		-0.915278, -0.221365, 0.336546,
		27.447540, 29.457306, 14.118239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.920286, 30.005548, 30.344519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.616892, 29.903933, 30.104464>,  <28.434855, 29.842964, 29.960430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.616892, 29.903933, 30.104464>,  <28.920286, 30.005548, 30.344519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616892, 29.903933, 30.104464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595719, 0.103106, -0.796548,
		0.264232, -0.961683, 0.073131,
		-0.758486, -0.254039, -0.600136,
		28.389345, 29.827721, 29.924423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207363, 29.524738, 29.891703>,  <28.920286, 30.005548, 30.344519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207363, 29.524738, 29.891703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.897919, 29.715303, 29.724583>,  <28.712252, 29.829643, 29.624311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.897919, 29.715303, 29.724583>,  <29.207363, 29.524738, 29.891703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897919, 29.715303, 29.724583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537923, 0.145274, -0.830382,
		-0.334911, -0.867136, -0.368660,
		-0.773611, 0.476414, -0.417798,
		28.665834, 29.858227, 29.599243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108192, 29.303551, 29.107817>,  <29.207363, 29.524738, 29.891703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108192, 29.303551, 29.107817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.912882, 29.652309, 29.122662>,  <28.795694, 29.861565, 29.131569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.912882, 29.652309, 29.122662>,  <29.108192, 29.303551, 29.107817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912882, 29.652309, 29.122662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247475, 0.179122, -0.952193,
		-0.836863, -0.455751, -0.303234,
		-0.488279, 0.871898, 0.037114,
		28.766397, 29.913879, 29.133797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642179, 29.317066, 28.615065>,  <29.108192, 29.303551, 29.107817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642179, 29.317066, 28.615065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.679787, 29.709127, 28.684874>,  <28.702351, 29.944365, 28.726759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.679787, 29.709127, 28.684874>,  <28.642179, 29.317066, 28.615065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679787, 29.709127, 28.684874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232455, 0.148839, -0.961151,
		-0.968052, 0.130935, -0.213848,
		0.094019, 0.980155, 0.174521,
		28.707993, 30.003174, 28.737230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201235, 29.800579, 28.109289>,  <28.642179, 29.317066, 28.615065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201235, 29.800579, 28.109289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.499222, 30.026150, 28.251842>,  <28.678015, 30.161491, 28.337374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.499222, 30.026150, 28.251842>,  <28.201235, 29.800579, 28.109289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499222, 30.026150, 28.251842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057369, 0.478089, -0.876436,
		-0.664628, 0.673363, 0.323810,
		0.744969, 0.563927, 0.356382,
		28.722713, 30.195328, 28.358757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030895, 30.420713, 27.895601>,  <28.201235, 29.800579, 28.109289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030895, 30.420713, 27.895601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.423517, 30.464251, 27.958475>,  <28.659090, 30.490374, 27.996199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.423517, 30.464251, 27.958475>,  <28.030895, 30.420713, 27.895601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423517, 30.464251, 27.958475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116853, 0.309173, -0.943800,
		-0.151325, 0.944757, 0.290750,
		0.981553, 0.108845, 0.157183,
		28.717983, 30.496904, 28.005630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236588, 31.169657, 27.587114>,  <28.030895, 30.420713, 27.895601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236588, 31.169657, 27.587114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.578657, 30.968102, 27.635731>,  <28.783899, 30.847168, 27.664900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.578657, 30.968102, 27.635731>,  <28.236588, 31.169657, 27.587114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578657, 30.968102, 27.635731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290405, 0.271537, -0.917569,
		0.429350, 0.819977, 0.378543,
		0.855174, -0.503890, 0.121541,
		28.835209, 30.816935, 27.672194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712727, 31.708286, 27.367491>,  <28.236588, 31.169657, 27.587114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712727, 31.708286, 27.367491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.916683, 31.365000, 27.343912>,  <29.039057, 31.159027, 27.329765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.916683, 31.365000, 27.343912>,  <28.712727, 31.708286, 27.367491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916683, 31.365000, 27.343912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384696, 0.288777, -0.876708,
		0.769428, 0.424349, 0.477398,
		0.509891, -0.858217, -0.058948,
		29.069651, 31.107534, 27.326227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359095, 31.871557, 26.965698>,  <28.712727, 31.708286, 27.367491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359095, 31.871557, 26.965698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.323816, 31.473522, 26.947706>,  <29.302649, 31.234701, 26.936911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.323816, 31.473522, 26.947706>,  <29.359095, 31.871557, 26.965698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323816, 31.473522, 26.947706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456185, -0.000209, -0.889885,
		0.885504, -0.099002, 0.453962,
		-0.088195, -0.995087, -0.044979,
		29.297358, 31.174995, 26.934212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014509, 31.582502, 26.725418>,  <29.359095, 31.871557, 26.965698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014509, 31.582502, 26.725418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.720390, 31.322721, 26.647902>,  <29.543919, 31.166853, 26.601391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.720390, 31.322721, 26.647902>,  <30.014509, 31.582502, 26.725418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720390, 31.322721, 26.647902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300307, -0.055868, -0.952205,
		0.607583, -0.758349, 0.236114,
		-0.735295, -0.649450, -0.193793,
		29.499802, 31.127886, 26.589764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257212, 31.259298, 26.202133>,  <30.014509, 31.582502, 26.725418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257212, 31.259298, 26.202133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.861431, 31.203127, 26.187897>,  <29.623962, 31.169424, 26.179354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.861431, 31.203127, 26.187897>,  <30.257212, 31.259298, 26.202133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861431, 31.203127, 26.187897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043977, -0.057057, -0.997402,
		0.138036, -0.988445, 0.062631,
		-0.989450, -0.140432, -0.035593,
		29.564596, 31.160997, 26.177219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131092, 30.694410, 25.706387>,  <30.257212, 31.259298, 26.202133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131092, 30.694410, 25.706387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.786800, 30.894884, 25.742077>,  <29.580225, 31.015167, 25.763491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.786800, 30.894884, 25.742077>,  <30.131092, 30.694410, 25.706387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786800, 30.894884, 25.742077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004793, 0.167285, -0.985897,
		-0.509041, -0.849018, -0.141585,
		-0.860729, 0.501183, 0.089224,
		29.528582, 31.045238, 25.768845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069410, 29.859365, 25.691652>,  <30.131092, 30.694410, 25.706387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069410, 29.859365, 25.691652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.455372, 29.884771, 25.589731>,  <30.686949, 29.900015, 25.528580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.455372, 29.884771, 25.589731>,  <30.069410, 29.859365, 25.691652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455372, 29.884771, 25.589731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260182, -0.362549, 0.894910,
		-0.035538, -0.929798, -0.366351,
		0.964906, 0.063515, -0.254801,
		30.744844, 29.903826, 25.513290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382732, 29.198143, 25.480242>,  <30.069410, 29.859365, 25.691652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382732, 29.198143, 25.480242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.638916, 29.449835, 25.656372>,  <30.792625, 29.600849, 25.762051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.638916, 29.449835, 25.656372>,  <30.382732, 29.198143, 25.480242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638916, 29.449835, 25.656372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225461, -0.702128, 0.675413,
		0.734154, -0.333297, -0.591550,
		0.640457, 0.629229, 0.440325,
		30.831053, 29.638603, 25.788469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873459, 28.826170, 25.837206>,  <30.382732, 29.198143, 25.480242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873459, 28.826170, 25.837206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.962770, 29.166744, 26.027029>,  <31.016357, 29.371088, 26.140923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.962770, 29.166744, 26.027029>,  <30.873459, 28.826170, 25.837206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962770, 29.166744, 26.027029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367342, -0.524452, 0.768121,
		0.902887, 0.002818, -0.429868,
		0.223281, 0.851435, 0.474557,
		31.029755, 29.422174, 26.169395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625954, 28.714241, 26.144814>,  <30.873459, 28.826170, 25.837206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625954, 28.714241, 26.144814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.461235, 29.014214, 26.351898>,  <31.362404, 29.194197, 26.476149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.461235, 29.014214, 26.351898>,  <31.625954, 28.714241, 26.144814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461235, 29.014214, 26.351898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473980, -0.308959, 0.824552,
		0.778310, 0.584933, -0.228225,
		-0.411796, 0.749932, 0.517713,
		31.337696, 29.239193, 26.507212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205990, 28.946976, 26.436905>,  <31.625954, 28.714241, 26.144814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205990, 28.946976, 26.436905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.897404, 29.093250, 26.645182>,  <31.712254, 29.181015, 26.770147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.897404, 29.093250, 26.645182>,  <32.205990, 28.946976, 26.436905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897404, 29.093250, 26.645182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469992, -0.224119, 0.853744,
		0.428899, 0.903352, 0.001029,
		-0.771461, 0.365686, 0.520693,
		31.665966, 29.202955, 26.801390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492855, 29.319662, 26.943415>,  <32.205990, 28.946976, 26.436905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492855, 29.319662, 26.943415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.121876, 29.279846, 27.087601>,  <31.899288, 29.255957, 27.174112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.121876, 29.279846, 27.087601>,  <32.492855, 29.319662, 26.943415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121876, 29.279846, 27.087601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373071, -0.179969, 0.910181,
		-0.025726, 0.978623, 0.204046,
		-0.927446, -0.099539, 0.360466,
		31.843641, 29.249985, 27.195740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458004, 29.599731, 27.675247>,  <32.492855, 29.319662, 26.943415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458004, 29.599731, 27.675247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.123726, 29.380136, 27.669233>,  <31.923159, 29.248379, 27.665625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.123726, 29.380136, 27.669233>,  <32.458004, 29.599731, 27.675247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123726, 29.380136, 27.669233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174063, -0.290736, 0.940837,
		-0.520879, 0.783637, 0.338525,
		-0.835696, -0.548987, -0.015036,
		31.873016, 29.215441, 27.664722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998554, 29.774828, 28.215681>,  <32.458004, 29.599731, 27.675247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998554, 29.774828, 28.215681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.915028, 29.392960, 28.130829>,  <31.864912, 29.163839, 28.079918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.915028, 29.392960, 28.130829>,  <31.998554, 29.774828, 28.215681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915028, 29.392960, 28.130829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105100, -0.237563, 0.965670,
		-0.972291, 0.179354, 0.149944,
		-0.208817, -0.954671, -0.212130,
		31.852383, 29.106558, 28.067190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820623, 29.559385, 28.796911>,  <31.998554, 29.774828, 28.215681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820623, 29.559385, 28.796911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.834280, 29.202070, 28.617638>,  <31.842474, 28.987680, 28.510073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.834280, 29.202070, 28.617638>,  <31.820623, 29.559385, 28.796911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834280, 29.202070, 28.617638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129580, -0.440704, 0.888250,
		-0.990981, -0.088400, 0.100707,
		0.034140, -0.893289, -0.448184,
		31.844522, 28.934084, 28.483183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333586, 29.206327, 29.122080>,  <31.820623, 29.559385, 28.796911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333586, 29.206327, 29.122080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.579573, 28.927761, 28.974123>,  <31.727165, 28.760622, 28.885349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.579573, 28.927761, 28.974123>,  <31.333586, 29.206327, 29.122080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579573, 28.927761, 28.974123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028479, -0.449157, 0.892999,
		-0.788037, -0.559701, -0.256384,
		0.614969, -0.696415, -0.369892,
		31.764063, 28.718836, 28.863155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093613, 28.572819, 29.417818>,  <31.333586, 29.206327, 29.122080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093613, 28.572819, 29.417818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.465168, 28.493656, 29.292599>,  <31.688101, 28.446157, 29.217466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.465168, 28.493656, 29.292599>,  <31.093613, 28.572819, 29.417818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465168, 28.493656, 29.292599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135451, -0.605159, 0.784497,
		-0.344702, -0.771113, -0.535318,
		0.928888, -0.197908, -0.313048,
		31.743834, 28.434284, 29.198685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127815, 27.887325, 29.588831>,  <31.093613, 28.572819, 29.417818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127815, 27.887325, 29.588831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.498798, 28.030161, 29.544458>,  <31.721388, 28.115862, 29.517836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.498798, 28.030161, 29.544458>,  <31.127815, 27.887325, 29.588831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498798, 28.030161, 29.544458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294381, -0.514370, 0.805458,
		0.230563, -0.779685, -0.582178,
		0.927459, 0.357091, -0.110930,
		31.777037, 28.137289, 29.511179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534592, 27.316271, 29.589449>,  <31.127815, 27.887325, 29.588831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534592, 27.316271, 29.589449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.774595, 27.623409, 29.679253>,  <31.918598, 27.807692, 29.733135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.774595, 27.623409, 29.679253>,  <31.534592, 27.316271, 29.589449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774595, 27.623409, 29.679253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267268, -0.456916, 0.848407,
		0.754028, -0.449047, -0.479374,
		0.600008, 0.767844, 0.224511,
		31.954597, 27.853762, 29.746607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262981, 27.026339, 29.783665>,  <31.534592, 27.316271, 29.589449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262981, 27.026339, 29.783665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.164688, 27.376965, 29.949194>,  <32.105713, 27.587341, 30.048512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.164688, 27.376965, 29.949194>,  <32.262981, 27.026339, 29.783665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164688, 27.376965, 29.949194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242367, -0.357791, 0.901800,
		0.938550, 0.321895, -0.124531,
		-0.245729, 0.876566, 0.413822,
		32.090969, 27.639935, 30.073341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586357, 26.393711, 29.852564>,  <32.262981, 27.026339, 29.783665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586357, 26.393711, 29.852564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.508472, 26.002851, 29.886667>,  <32.461742, 25.768335, 29.907129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.508472, 26.002851, 29.886667>,  <32.586357, 26.393711, 29.852564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508472, 26.002851, 29.886667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145324, -0.114702, -0.982713,
		0.970036, -0.178952, 0.164337,
		-0.194708, -0.977149, 0.085259,
		32.450062, 25.709707, 29.912245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204666, 25.800859, 29.609900>,  <32.586357, 26.393711, 29.852564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204666, 25.800859, 29.609900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.845448, 25.637217, 29.545221>,  <32.629917, 25.539030, 29.506414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.845448, 25.637217, 29.545221>,  <33.204666, 25.800859, 29.609900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845448, 25.637217, 29.545221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262376, -0.203104, -0.943349,
		0.353091, -0.889595, 0.289737,
		-0.898045, -0.409108, -0.161695,
		32.576035, 25.514484, 29.496714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280262, 25.193941, 29.261324>,  <33.204666, 25.800859, 29.609900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280262, 25.193941, 29.261324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.916801, 25.338051, 29.176886>,  <32.698727, 25.424517, 29.126223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.916801, 25.338051, 29.176886>,  <33.280262, 25.193941, 29.261324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916801, 25.338051, 29.176886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174694, -0.131176, -0.975846,
		-0.379261, -0.923578, 0.056256,
		-0.908649, 0.360273, -0.211094,
		32.644207, 25.446133, 29.113558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951744, 24.707335, 28.782158>,  <33.280262, 25.193941, 29.261324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951744, 24.707335, 28.782158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.736191, 25.041220, 28.736795>,  <32.606857, 25.241550, 28.709578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.736191, 25.041220, 28.736795>,  <32.951744, 24.707335, 28.782158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736191, 25.041220, 28.736795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040228, -0.108971, -0.993231,
		-0.841420, -0.539797, 0.025143,
		-0.538883, 0.834712, -0.113405,
		32.574528, 25.291634, 28.702774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613708, 24.663813, 28.080976>,  <32.951744, 24.707335, 28.782158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613708, 24.663813, 28.080976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583931, 25.057449, 28.145496>,  <32.566067, 25.293633, 28.184208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583931, 25.057449, 28.145496>,  <32.613708, 24.663813, 28.080976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583931, 25.057449, 28.145496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087928, 0.167596, -0.981927,
		-0.993341, -0.058912, -0.099005,
		-0.074440, 0.984094, 0.161300,
		32.561600, 25.352678, 28.193886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179661, 24.828297, 27.548340>,  <32.613708, 24.663813, 28.080976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179661, 24.828297, 27.548340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.365379, 25.157112, 27.680208>,  <32.476810, 25.354401, 27.759329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.365379, 25.157112, 27.680208>,  <32.179661, 24.828297, 27.548340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365379, 25.157112, 27.680208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098339, 0.322077, -0.941592,
		-0.880203, 0.469598, 0.068701,
		0.464297, 0.822037, 0.329673,
		32.504669, 25.403723, 27.779110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813763, 25.381128, 27.329161>,  <32.179661, 24.828297, 27.548340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813763, 25.381128, 27.329161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.163445, 25.561111, 27.402155>,  <32.373253, 25.669102, 27.445951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.163445, 25.561111, 27.402155>,  <31.813763, 25.381128, 27.329161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163445, 25.561111, 27.402155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143998, 0.118668, -0.982437,
		-0.463712, 0.885129, 0.038948,
		0.874206, 0.449960, 0.182485,
		32.425705, 25.696100, 27.456900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818348, 25.776262, 26.865295>,  <31.813763, 25.381128, 27.329161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818348, 25.776262, 26.865295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.200565, 25.750254, 26.980331>,  <32.429897, 25.734648, 27.049353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.200565, 25.750254, 26.980331>,  <31.818348, 25.776262, 26.865295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200565, 25.750254, 26.980331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294492, 0.162532, -0.941731,
		0.014491, 0.984558, 0.174456,
		0.955544, -0.065023, 0.287589,
		32.487228, 25.730747, 27.066608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051022, 26.326857, 26.675919>,  <31.818348, 25.776262, 26.865295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051022, 26.326857, 26.675919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.363422, 26.077595, 26.692474>,  <32.550861, 25.928038, 26.702408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.363422, 26.077595, 26.692474>,  <32.051022, 26.326857, 26.675919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363422, 26.077595, 26.692474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144042, 0.115251, -0.982837,
		0.607689, 0.773561, 0.179771,
		0.781003, -0.623154, 0.041388,
		32.597725, 25.890648, 26.704891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714077, 26.663589, 26.313295>,  <32.051022, 26.326857, 26.675919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714077, 26.663589, 26.313295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.741611, 26.264585, 26.307135>,  <32.758133, 26.025183, 26.303438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.741611, 26.264585, 26.307135>,  <32.714077, 26.663589, 26.313295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741611, 26.264585, 26.307135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041777, 0.012542, -0.999048,
		0.996753, 0.069410, -0.040810,
		0.068832, -0.997509, -0.015401,
		32.762260, 25.965332, 26.302515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262512, 26.596899, 25.884567>,  <32.714077, 26.663589, 26.313295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262512, 26.596899, 25.884567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.105537, 26.229668, 25.906916>,  <33.011353, 26.009329, 25.920324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.105537, 26.229668, 25.906916>,  <33.262512, 26.596899, 25.884567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105537, 26.229668, 25.906916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123111, -0.112630, -0.985981,
		0.911501, -0.380060, 0.157226,
		-0.392440, -0.918079, 0.055873,
		32.987804, 25.954245, 25.923677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782593, 26.236246, 25.572989>,  <33.262512, 26.596899, 25.884567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782593, 26.236246, 25.572989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436386, 26.037216, 25.550003>,  <33.228661, 25.917799, 25.536211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436386, 26.037216, 25.550003>,  <33.782593, 26.236246, 25.572989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436386, 26.037216, 25.550003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130692, -0.113592, -0.984894,
		0.483529, -0.859952, 0.163344,
		-0.865517, -0.497573, -0.057464,
		33.176731, 25.887945, 25.532764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912647, 25.662979, 25.199368>,  <33.782593, 26.236246, 25.572989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912647, 25.662979, 25.199368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.519489, 25.715122, 25.147343>,  <33.283592, 25.746408, 25.116127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.519489, 25.715122, 25.147343>,  <33.912647, 25.662979, 25.199368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519489, 25.715122, 25.147343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115136, -0.116177, -0.986533,
		-0.143714, -0.984637, 0.099181,
		-0.982899, 0.130359, -0.130063,
		33.224621, 25.754229, 25.108324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756260, 25.246454, 24.605804>,  <33.912647, 25.662979, 25.199368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756260, 25.246454, 24.605804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.424465, 25.466417, 24.644888>,  <33.225388, 25.598396, 24.668339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.424465, 25.466417, 24.644888>,  <33.756260, 25.246454, 24.605804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424465, 25.466417, 24.644888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150756, -0.051995, -0.987203,
		-0.537792, -0.833604, 0.126032,
		-0.829490, 0.549909, 0.097708,
		33.175617, 25.631390, 24.674200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222542, 25.007088, 24.223242>,  <33.756260, 25.246454, 24.605804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222542, 25.007088, 24.223242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067593, 25.373734, 24.262756>,  <32.974621, 25.593721, 24.286465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067593, 25.373734, 24.262756>,  <33.222542, 25.007088, 24.223242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067593, 25.373734, 24.262756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286911, -0.018031, -0.957787,
		-0.876140, -0.399367, 0.269972,
		-0.387377, 0.916613, 0.098785,
		32.951378, 25.648718, 24.292393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698639, 24.966898, 23.747545>,  <33.222542, 25.007088, 24.223242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698639, 24.966898, 23.747545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.726269, 25.357031, 23.831408>,  <32.742847, 25.591110, 23.881725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.726269, 25.357031, 23.831408>,  <32.698639, 24.966898, 23.747545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726269, 25.357031, 23.831408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407253, 0.219417, -0.886567,
		-0.910699, -0.024142, 0.412364,
		0.069076, 0.975332, 0.209655,
		32.746990, 25.649632, 23.894304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041824, 25.195099, 23.506025>,  <32.698639, 24.966898, 23.747545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041824, 25.195099, 23.506025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.288197, 25.508625, 23.537687>,  <32.436020, 25.696741, 23.556684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.288197, 25.508625, 23.537687>,  <32.041824, 25.195099, 23.506025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288197, 25.508625, 23.537687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458018, 0.438033, -0.773528,
		-0.640976, 0.440184, 0.628799,
		0.615929, 0.783815, 0.079157,
		32.472977, 25.743769, 23.561434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604383, 25.829798, 23.325100>,  <32.041824, 25.195099, 23.506025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604383, 25.829798, 23.325100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.989191, 25.932415, 23.287767>,  <32.220074, 25.993984, 23.265368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.989191, 25.932415, 23.287767>,  <31.604383, 25.829798, 23.325100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989191, 25.932415, 23.287767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160949, 0.256869, -0.952950,
		-0.220497, 0.931775, 0.288402,
		0.962017, 0.256541, -0.093329,
		32.277798, 26.009377, 23.259769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589922, 26.406069, 23.003113>,  <31.604383, 25.829798, 23.325100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589922, 26.406069, 23.003113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.959684, 26.282328, 22.913872>,  <32.181541, 26.208082, 22.860327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.959684, 26.282328, 22.913872>,  <31.589922, 26.406069, 23.003113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959684, 26.282328, 22.913872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175157, 0.175297, -0.968809,
		0.338815, 0.934650, 0.107860,
		0.924405, -0.309354, -0.223104,
		32.237007, 26.189522, 22.846941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800367, 26.913805, 22.533298>,  <31.589922, 26.406069, 23.003113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800367, 26.913805, 22.533298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.014893, 26.580048, 22.482452>,  <32.143608, 26.379793, 22.451944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.014893, 26.580048, 22.482452>,  <31.800367, 26.913805, 22.533298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014893, 26.580048, 22.482452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040818, 0.124791, -0.991343,
		0.843031, 0.536860, 0.032869,
		0.536314, -0.834391, -0.127116,
		32.175785, 26.329731, 22.444317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266838, 27.062351, 21.934141>,  <31.800367, 26.913805, 22.533298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266838, 27.062351, 21.934141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258080, 26.664539, 21.974995>,  <32.252823, 26.425852, 21.999506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258080, 26.664539, 21.974995>,  <32.266838, 27.062351, 21.934141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258080, 26.664539, 21.974995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304174, -0.090686, -0.948290,
		0.952365, -0.051831, -0.300524,
		-0.021898, -0.994530, 0.102132,
		32.251511, 26.366180, 22.005634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561630, 26.842024, 21.387360>,  <32.266838, 27.062351, 21.934141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561630, 26.842024, 21.387360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.348289, 26.525286, 21.506361>,  <32.220284, 26.335243, 21.577763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.348289, 26.525286, 21.506361>,  <32.561630, 26.842024, 21.387360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348289, 26.525286, 21.506361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396980, -0.076256, -0.914654,
		0.746953, -0.605939, -0.273676,
		-0.533355, -0.791848, 0.297505,
		32.188282, 26.287731, 21.595613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684811, 26.328320, 20.884165>,  <32.561630, 26.842024, 21.387360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684811, 26.328320, 20.884165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358540, 26.201208, 21.077532>,  <32.162777, 26.124941, 21.193552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358540, 26.201208, 21.077532>,  <32.684811, 26.328320, 20.884165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358540, 26.201208, 21.077532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429029, -0.228279, -0.873970,
		0.388082, -0.920275, 0.049865,
		-0.815675, -0.317779, 0.483415,
		32.113838, 26.105875, 21.222557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522972, 25.630325, 20.795429>,  <32.684811, 26.328320, 20.884165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522972, 25.630325, 20.795429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.162563, 25.764801, 20.905067>,  <31.946318, 25.845488, 20.970850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.162563, 25.764801, 20.905067>,  <32.522972, 25.630325, 20.795429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162563, 25.764801, 20.905067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412417, -0.468175, -0.781488,
		-0.134404, -0.817183, 0.560489,
		-0.901026, 0.336190, 0.274096,
		31.892256, 25.865658, 20.987295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093700, 25.055922, 20.717649>,  <32.522972, 25.630325, 20.795429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093700, 25.055922, 20.717649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.858059, 25.378836, 20.731779>,  <31.716673, 25.572584, 20.740257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.858059, 25.378836, 20.731779>,  <32.093700, 25.055922, 20.717649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858059, 25.378836, 20.731779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474669, -0.310345, -0.823635,
		-0.653945, -0.501975, 0.566018,
		-0.589106, 0.807284, 0.035323,
		31.681328, 25.621021, 20.742376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348289, 24.777636, 20.650564>,  <32.093700, 25.055922, 20.717649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348289, 24.777636, 20.650564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.347601, 25.165037, 20.550970>,  <31.347187, 25.397478, 20.491213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.347601, 25.165037, 20.550970>,  <31.348289, 24.777636, 20.650564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347601, 25.165037, 20.550970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391455, -0.229771, -0.891049,
		-0.920196, 0.095931, 0.379522,
		-0.001724, 0.968505, -0.248987,
		31.347084, 25.455589, 20.476274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702700, 24.870586, 20.395712>,  <31.348289, 24.777636, 20.650564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702700, 24.870586, 20.395712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.895817, 25.191000, 20.254147>,  <31.011688, 25.383247, 20.169207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.895817, 25.191000, 20.254147>,  <30.702700, 24.870586, 20.395712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895817, 25.191000, 20.254147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269156, -0.248843, -0.930393,
		-0.833345, 0.544447, 0.095462,
		0.482795, 0.801033, -0.353914,
		31.040655, 25.431311, 20.147972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198820, 25.209602, 20.055630>,  <30.702700, 24.870586, 20.395712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198820, 25.209602, 20.055630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.537230, 25.349646, 19.894798>,  <30.740274, 25.433672, 19.798300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.537230, 25.349646, 19.894798>,  <30.198820, 25.209602, 20.055630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537230, 25.349646, 19.894798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402600, -0.074868, -0.912309,
		-0.349511, 0.933712, 0.077614,
		0.846024, 0.350109, -0.402079,
		30.791037, 25.454678, 19.774174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021557, 25.952280, 20.141148>,  <30.198820, 25.209602, 20.055630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021557, 25.952280, 20.141148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.642885, 25.824278, 20.156111>,  <29.415682, 25.747477, 20.165089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.642885, 25.824278, 20.156111>,  <30.021557, 25.952280, 20.141148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642885, 25.824278, 20.156111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127030, -0.264036, 0.956111,
		-0.296083, 0.909881, 0.290607,
		-0.946678, -0.320004, 0.037406,
		29.358883, 25.728277, 20.167332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629492, 26.249136, 20.738775>,  <30.021557, 25.952280, 20.141148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629492, 26.249136, 20.738775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.438921, 25.912577, 20.636744>,  <29.324577, 25.710642, 20.575525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.438921, 25.912577, 20.636744>,  <29.629492, 26.249136, 20.738775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438921, 25.912577, 20.636744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152959, -0.206375, 0.966443,
		-0.865806, 0.499458, -0.030377,
		-0.476429, -0.841398, -0.255077,
		29.295992, 25.660156, 20.560221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965134, 26.240206, 21.196371>,  <29.629492, 26.249136, 20.738775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965134, 26.240206, 21.196371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.029160, 25.866291, 21.069530>,  <29.067575, 25.641943, 20.993425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.029160, 25.866291, 21.069530>,  <28.965134, 26.240206, 21.196371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029160, 25.866291, 21.069530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386607, -0.354949, 0.851203,
		-0.908248, -0.013653, -0.418210,
		0.160064, -0.934786, -0.317103,
		29.077179, 25.585855, 20.974400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362928, 25.959358, 21.453352>,  <28.965134, 26.240206, 21.196371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362928, 25.959358, 21.453352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.636816, 25.672489, 21.401468>,  <28.801149, 25.500368, 21.370338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.636816, 25.672489, 21.401468>,  <28.362928, 25.959358, 21.453352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636816, 25.672489, 21.401468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088386, -0.258377, 0.961992,
		-0.723428, -0.647229, -0.240304,
		0.684718, -0.717172, -0.129711,
		28.842232, 25.457338, 21.362555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106976, 25.316891, 21.715893>,  <28.362928, 25.959358, 21.453352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106976, 25.316891, 21.715893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.505766, 25.347326, 21.722155>,  <28.745041, 25.365587, 21.725912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.505766, 25.347326, 21.722155>,  <28.106976, 25.316891, 21.715893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505766, 25.347326, 21.722155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000817, -0.211745, 0.977325,
		0.077678, -0.974359, -0.211167,
		0.996979, 0.076089, 0.015652,
		28.804859, 25.370153, 21.726851>
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
