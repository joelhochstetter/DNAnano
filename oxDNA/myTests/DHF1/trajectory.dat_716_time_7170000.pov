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
	<-0.528048, 2.386507, 2.305437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.549675, 2.231878, 2.673706>,  <-0.562651, 2.139101, 2.894668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.549675, 2.231878, 2.673706>,  <-0.528048, 2.386507, 2.305437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.549675, 2.231878, 2.673706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996009, -0.086445, 0.022194,
		0.071008, 0.918199, 0.389704,
		-0.054066, -0.386572, 0.920673,
		-0.565895, 2.115906, 2.949908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.053079, 2.742560, 2.745532>,  <-0.528048, 2.386507, 2.305437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.053079, 2.742560, 2.745532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.132458, 2.371233, 2.871290>,  <-0.180085, 2.148437, 2.946745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.132458, 2.371233, 2.871290>,  <-0.053079, 2.742560, 2.745532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.132458, 2.371233, 2.871290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980001, -0.192754, 0.049430,
		0.014715, 0.317917, 0.948004,
		-0.198446, -0.928318, 0.314395,
		-0.191992, 2.092737, 2.965609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.232884, 2.558289, 3.448347>,  <-0.053079, 2.742560, 2.745532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.232884, 2.558289, 3.448347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.191093, 2.224546, 3.231853>,  <0.166019, 2.024301, 3.101957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.191093, 2.224546, 3.231853>,  <0.232884, 2.558289, 3.448347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.191093, 2.224546, 3.231853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981255, -0.175094, 0.080508,
		-0.161939, -0.522677, 0.837009,
		-0.104476, -0.834357, -0.541234,
		0.159751, 1.974239, 3.069483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.640536, 2.092991, 3.779901>,  <0.232884, 2.558289, 3.448347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.640536, 2.092991, 3.779901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.597696, 1.978928, 3.398910>,  <0.571992, 1.910490, 3.170315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.597696, 1.978928, 3.398910>,  <0.640536, 2.092991, 3.779901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.597696, 1.978928, 3.398910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982385, -0.177895, -0.057204,
		-0.153129, -0.941827, 0.299187,
		-0.107100, -0.285158, -0.952478,
		0.565566, 1.893380, 3.113166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.984118, 1.437969, 3.679997>,  <0.640536, 2.092991, 3.779901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.984118, 1.437969, 3.679997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.972485, 1.609943, 3.319041>,  <0.965505, 1.713128, 3.102468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.972485, 1.609943, 3.319041>,  <0.984118, 1.437969, 3.679997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.972485, 1.609943, 3.319041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992562, -0.094345, -0.076939,
		-0.118215, -0.897916, -0.423995,
		-0.029083, 0.429937, -0.902390,
		0.963760, 1.738924, 3.048324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.607978, 1.263237, 3.345396>,  <0.984118, 1.437969, 3.679997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.607978, 1.263237, 3.345396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.486603, 1.533449, 3.076595>,  <1.413778, 1.695576, 2.915315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.486603, 1.533449, 3.076595>,  <1.607978, 1.263237, 3.345396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.486603, 1.533449, 3.076595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935672, 0.077929, -0.344158,
		-0.180121, -0.733203, -0.655720,
		-0.303437, 0.675529, -0.672001,
		1.395572, 1.736108, 2.874995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.833591, 1.049976, 2.686811>,  <1.607978, 1.263237, 3.345396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.833591, 1.049976, 2.686811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.770660, 1.442747, 2.644730>,  <1.732902, 1.678410, 2.619481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.770660, 1.442747, 2.644730>,  <1.833591, 1.049976, 2.686811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.770660, 1.442747, 2.644730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953041, 0.123051, -0.276716,
		-0.258770, -0.143798, -0.955175,
		-0.157327, 0.981927, -0.105204,
		1.723462, 1.737325, 2.613168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.029353, 1.228136, 2.042973>,  <1.833591, 1.049976, 2.686811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.029353, 1.228136, 2.042973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.073521, 1.558773, 2.263719>,  <2.100021, 1.757155, 2.396166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.073521, 1.558773, 2.263719>,  <2.029353, 1.228136, 2.042973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.073521, 1.558773, 2.263719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982261, -0.006082, -0.187423,
		-0.151566, 0.562769, -0.812600,
		0.110418, 0.826592, 0.551864,
		2.106646, 1.806751, 2.429278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.227139, 1.609410, 2.779491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.244255, 2.007229, 2.741445>,  <3.254524, 2.245920, 2.718617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.244255, 2.007229, 2.741445>,  <3.227139, 1.609410, 2.779491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.244255, 2.007229, 2.741445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989547, 0.055311, 0.133183,
		0.137718, 0.088422, 0.986517,
		0.042789, 0.994547, -0.095115,
		3.257092, 2.305593, 2.712911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.893824, 1.930981, 3.442089>,  <3.227139, 1.609410, 2.779491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.893824, 1.930981, 3.442089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.894695, 2.109978, 3.084375>,  <2.895218, 2.217376, 2.869747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.894695, 2.109978, 3.084375>,  <2.893824, 1.930981, 3.442089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.894695, 2.109978, 3.084375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996099, 0.079866, 0.037537,
		0.088221, 0.890714, 0.445921,
		0.002179, 0.447493, -0.894285,
		2.895349, 2.244226, 2.816090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.460141, 2.495615, 3.449607>,  <2.893824, 1.930981, 3.442089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.460141, 2.495615, 3.449607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.463539, 2.405308, 3.059949>,  <2.465578, 2.351123, 2.826155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.463539, 2.405308, 3.059949>,  <2.460141, 2.495615, 3.449607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.463539, 2.405308, 3.059949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999797, 0.015881, -0.012398,
		0.018269, 0.974051, -0.225588,
		0.008494, -0.225769, -0.974144,
		2.466087, 2.337577, 2.767706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.032678, 2.934621, 3.111027>,  <2.460141, 2.495615, 3.449607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.032678, 2.934621, 3.111027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.060978, 2.608067, 2.881764>,  <2.077958, 2.412134, 2.744207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.060978, 2.608067, 2.881764>,  <2.032678, 2.934621, 3.111027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.060978, 2.608067, 2.881764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995254, -0.019292, -0.095376,
		0.066807, 0.577184, -0.813877,
		0.070751, -0.816386, -0.573156,
		2.082203, 2.363151, 2.709818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.557906, 3.028579, 2.580786>,  <2.032678, 2.934621, 3.111027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.557906, 3.028579, 2.580786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.613873, 2.632603, 2.589194>,  <1.647452, 2.395017, 2.594239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.613873, 2.632603, 2.589194>,  <1.557906, 3.028579, 2.580786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.613873, 2.632603, 2.589194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984530, -0.141350, -0.103538,
		0.105468, -0.006209, -0.994403,
		0.139916, -0.989940, 0.021021,
		1.655847, 2.335621, 2.595500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.127574, 2.776868, 2.079880>,  <1.557906, 3.028579, 2.580786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.127574, 2.776868, 2.079880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.197552, 2.454243, 2.305747>,  <1.239539, 2.260667, 2.441267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.197552, 2.454243, 2.305747>,  <1.127574, 2.776868, 2.079880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.197552, 2.454243, 2.305747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968320, -0.244742, -0.049581,
		0.178188, -0.538105, -0.823828,
		0.174945, -0.806564, 0.564668,
		1.250035, 2.212274, 2.475147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.781406, 2.253351, 1.874403>,  <1.127574, 2.776868, 2.079880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.781406, 2.253351, 1.874403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.843842, 2.068462, 2.223571>,  <0.881303, 1.957529, 2.433071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.843842, 2.068462, 2.223571>,  <0.781406, 2.253351, 1.874403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.843842, 2.068462, 2.223571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974795, -0.214709, 0.060616,
		0.159406, -0.860378, -0.484086,
		0.156090, -0.462222, 0.872919,
		0.890669, 1.929796, 2.485446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.540928, 1.539123, 1.824057>,  <0.781406, 2.253351, 1.874403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.540928, 1.539123, 1.824057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.525440, 1.682213, 2.197267>,  <0.516147, 1.768067, 2.421193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.525440, 1.682213, 2.197267>,  <0.540928, 1.539123, 1.824057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.525440, 1.682213, 2.197267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928663, -0.357590, 0.098562,
		0.368898, -0.862649, 0.346051,
		-0.038720, 0.357724, 0.933024,
		0.513824, 1.789530, 2.477174>
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
