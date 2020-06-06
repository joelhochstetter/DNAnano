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
	<24.269087, 35.171131, 34.645962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.236519, 34.891342, 34.929966>,  <24.216978, 34.723469, 35.100368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.236519, 34.891342, 34.929966>,  <24.269087, 35.171131, 34.645962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.236519, 34.891342, 34.929966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855389, 0.316586, 0.409979,
		-0.511547, 0.640714, 0.572543,
		-0.081420, -0.699471, 0.710008,
		24.212093, 34.681499, 35.142967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.028141, 35.358280, 35.430058>,  <24.269087, 35.171131, 34.645962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.028141, 35.358280, 35.430058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.262331, 35.034111, 35.438400>,  <24.402845, 34.839611, 35.443405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.262331, 35.034111, 35.438400>,  <24.028141, 35.358280, 35.430058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.262331, 35.034111, 35.438400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655265, 0.488222, 0.576426,
		-0.477332, -0.323815, 0.816883,
		0.585476, -0.810422, 0.020859,
		24.437973, 34.790985, 35.444656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.207798, 35.137783, 36.179367>,  <24.028141, 35.358280, 35.430058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.207798, 35.137783, 36.179367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.491642, 34.995693, 35.935966>,  <24.661947, 34.910439, 35.789925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.491642, 34.995693, 35.935966>,  <24.207798, 35.137783, 36.179367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.491642, 34.995693, 35.935966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702937, 0.416143, 0.576806,
		0.048328, -0.837044, 0.544998,
		0.709608, -0.355223, -0.608500,
		24.704525, 34.889126, 35.753418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.699387, 34.798717, 36.660210>,  <24.207798, 35.137783, 36.179367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.699387, 34.798717, 36.660210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917929, 34.862808, 36.331375>,  <25.049053, 34.901264, 36.134075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917929, 34.862808, 36.331375>,  <24.699387, 34.798717, 36.660210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.917929, 34.862808, 36.331375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687073, 0.475584, 0.549318,
		0.478976, -0.864958, 0.149765,
		0.546363, 0.160211, -0.822083,
		25.081835, 34.910877, 36.084751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.386202, 34.596958, 36.797092>,  <24.699387, 34.798717, 36.660210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.386202, 34.596958, 36.797092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424326, 34.860458, 36.498573>,  <25.447201, 35.018559, 36.319462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424326, 34.860458, 36.498573>,  <25.386202, 34.596958, 36.797092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.424326, 34.860458, 36.498573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625051, 0.543885, 0.559911,
		0.774743, -0.519841, -0.359915,
		0.095312, 0.658752, -0.746298,
		25.452919, 35.058083, 36.274685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.103598, 34.660244, 36.644218>,  <25.386202, 34.596958, 36.797092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.103598, 34.660244, 36.644218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874952, 34.988194, 36.631138>,  <25.737764, 35.184963, 36.623291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874952, 34.988194, 36.631138>,  <26.103598, 34.660244, 36.644218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.874952, 34.988194, 36.631138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621362, 0.458555, 0.635324,
		0.535879, 0.342840, -0.771553,
		-0.571614, 0.819871, -0.032702,
		25.703468, 35.234154, 36.621326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561560, 35.199585, 36.710453>,  <26.103598, 34.660244, 36.644218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561560, 35.199585, 36.710453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228054, 35.398338, 36.806740>,  <26.027950, 35.517590, 36.864513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228054, 35.398338, 36.806740>,  <26.561560, 35.199585, 36.710453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228054, 35.398338, 36.806740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459168, 0.381915, 0.802063,
		0.306595, 0.779263, -0.546579,
		-0.833765, 0.496880, 0.240720,
		25.977924, 35.547401, 36.878956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723543, 35.923416, 36.797295>,  <26.561560, 35.199585, 36.710453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723543, 35.923416, 36.797295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396471, 35.846569, 37.014362>,  <26.200228, 35.800461, 37.144604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396471, 35.846569, 37.014362>,  <26.723543, 35.923416, 36.797295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.396471, 35.846569, 37.014362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470488, 0.320188, 0.822265,
		-0.331727, 0.927670, -0.171423,
		-0.817678, -0.192116, 0.542673,
		26.151167, 35.788933, 37.177166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738308, 36.395725, 37.180328>,  <26.723543, 35.923416, 36.797295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738308, 36.395725, 37.180328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501745, 36.147266, 37.386013>,  <26.359808, 35.998192, 37.509422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501745, 36.147266, 37.386013>,  <26.738308, 36.395725, 37.180328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501745, 36.147266, 37.386013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395753, 0.332023, 0.856236,
		-0.702580, 0.709884, 0.049461,
		-0.591406, -0.621148, 0.514211,
		26.324324, 35.960922, 37.540276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607454, 36.734684, 37.796185>,  <26.738308, 36.395725, 37.180328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607454, 36.734684, 37.796185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489260, 36.364578, 37.891323>,  <26.418343, 36.142513, 37.948406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489260, 36.364578, 37.891323>,  <26.607454, 36.734684, 37.796185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489260, 36.364578, 37.891323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192166, 0.186307, 0.963516,
		-0.935821, 0.330411, 0.122753,
		-0.295487, -0.925267, 0.237844,
		26.400614, 36.086998, 37.962677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163258, 36.822704, 38.293499>,  <26.607454, 36.734684, 37.796185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163258, 36.822704, 38.293499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295422, 36.448307, 38.342072>,  <26.374720, 36.223667, 38.371216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295422, 36.448307, 38.342072>,  <26.163258, 36.822704, 38.293499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295422, 36.448307, 38.342072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158280, 0.181785, 0.970516,
		-0.930472, -0.301446, 0.208212,
		0.330408, -0.935994, 0.121433,
		26.394545, 36.167507, 38.378502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740940, 36.443348, 38.916058>,  <26.163258, 36.822704, 38.293499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740940, 36.443348, 38.916058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113152, 36.312641, 38.849915>,  <26.336477, 36.234215, 38.810230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113152, 36.312641, 38.849915>,  <25.740940, 36.443348, 38.916058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113152, 36.312641, 38.849915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153414, -0.062175, 0.986204,
		-0.332542, -0.943057, -0.007724,
		0.930526, -0.326770, -0.165353,
		26.392309, 36.214611, 38.800308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.920807, 36.401306, 39.504433>,  <25.740940, 36.443348, 38.916058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.920807, 36.401306, 39.504433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271832, 36.272827, 39.362038>,  <26.482447, 36.195740, 39.276600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271832, 36.272827, 39.362038>,  <25.920807, 36.401306, 39.504433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271832, 36.272827, 39.362038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364345, -0.035908, 0.930571,
		-0.311676, -0.946333, 0.085514,
		0.877560, -0.321193, -0.355983,
		26.535099, 36.176468, 39.255241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046835, 35.725163, 39.689152>,  <25.920807, 36.401306, 39.504433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046835, 35.725163, 39.689152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387440, 35.929367, 39.641315>,  <26.591803, 36.051891, 39.612614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387440, 35.929367, 39.641315>,  <26.046835, 35.725163, 39.689152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387440, 35.929367, 39.641315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155008, -0.027205, 0.987539,
		0.500896, -0.859441, -0.102299,
		0.851514, 0.510511, -0.119593,
		26.642895, 36.082520, 39.605438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517990, 35.217659, 39.847340>,  <26.046835, 35.725163, 39.689152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517990, 35.217659, 39.847340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599768, 35.602676, 39.918579>,  <26.648834, 35.833687, 39.961323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599768, 35.602676, 39.918579>,  <26.517990, 35.217659, 39.847340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599768, 35.602676, 39.918579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139087, -0.208657, 0.968048,
		0.968947, -0.173138, -0.176535,
		0.204442, 0.962541, 0.178096,
		26.661100, 35.891438, 39.972008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662737, 34.735744, 39.319195>,  <26.517990, 35.217659, 39.847340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662737, 34.735744, 39.319195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971554, 34.989624, 39.332520>,  <27.156843, 35.141953, 39.340515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971554, 34.989624, 39.332520>,  <26.662737, 34.735744, 39.319195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.971554, 34.989624, 39.332520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075922, 0.144139, -0.986641,
		-0.631022, 0.759198, 0.159468,
		0.772041, 0.634699, 0.033315,
		27.203167, 35.180035, 39.342514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650364, 34.877472, 38.565899>,  <26.662737, 34.735744, 39.319195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650364, 34.877472, 38.565899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573132, 35.267914, 38.526031>,  <26.526793, 35.502178, 38.502113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573132, 35.267914, 38.526031>,  <26.650364, 34.877472, 38.565899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573132, 35.267914, 38.526031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359936, -0.164959, -0.918278,
		-0.912779, -0.141427, 0.383187,
		-0.193080, 0.976108, -0.099667,
		26.515207, 35.560745, 38.496132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075800, 34.842060, 38.276558>,  <26.650364, 34.877472, 38.565899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075800, 34.842060, 38.276558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151056, 35.226120, 38.193893>,  <26.196211, 35.456558, 38.144295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151056, 35.226120, 38.193893>,  <26.075800, 34.842060, 38.276558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151056, 35.226120, 38.193893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617932, -0.047831, -0.784775,
		-0.763389, 0.275353, 0.584310,
		0.188142, 0.960153, -0.206663,
		26.207499, 35.514164, 38.131893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507589, 35.290924, 38.305958>,  <26.075800, 34.842060, 38.276558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507589, 35.290924, 38.305958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758766, 35.459831, 38.044464>,  <25.909473, 35.561176, 37.887566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758766, 35.459831, 38.044464>,  <25.507589, 35.290924, 38.305958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.758766, 35.459831, 38.044464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741502, 0.069521, -0.667339,
		-0.236349, 0.903800, 0.356769,
		0.627944, 0.422269, -0.653739,
		25.947149, 35.586514, 37.848343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.050211, 35.445141, 37.811172>,  <25.507589, 35.290924, 38.305958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.050211, 35.445141, 37.811172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384525, 35.561802, 37.625095>,  <25.585114, 35.631798, 37.513447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384525, 35.561802, 37.625095>,  <25.050211, 35.445141, 37.811172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.384525, 35.561802, 37.625095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498606, 0.048382, -0.865478,
		-0.229908, 0.955301, 0.185855,
		0.835784, 0.291649, -0.465195,
		25.635260, 35.649296, 37.485538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.955162, 36.027676, 37.422047>,  <25.050211, 35.445141, 37.811172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.955162, 36.027676, 37.422047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247059, 35.821815, 37.241997>,  <25.422197, 35.698299, 37.133968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247059, 35.821815, 37.241997>,  <24.955162, 36.027676, 37.422047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247059, 35.821815, 37.241997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538695, -0.027356, -0.842057,
		0.421050, 0.856964, -0.297201,
		0.729743, -0.514649, -0.450124,
		25.465982, 35.667419, 37.106960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629938, 36.153576, 36.987934>,  <24.955162, 36.027676, 37.422047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629938, 36.153576, 36.987934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884003, 36.242348, 36.692009>,  <26.036442, 36.295612, 36.514454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884003, 36.242348, 36.692009>,  <25.629938, 36.153576, 36.987934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884003, 36.242348, 36.692009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454879, -0.666622, -0.590508,
		-0.624224, 0.711591, -0.322462,
		0.635161, 0.221929, -0.739810,
		26.074551, 36.308926, 36.470066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292135, 36.503384, 36.337799>,  <25.629938, 36.153576, 36.987934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292135, 36.503384, 36.337799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587507, 36.233799, 36.328892>,  <25.764730, 36.072048, 36.323547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587507, 36.233799, 36.328892>,  <25.292135, 36.503384, 36.337799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.587507, 36.233799, 36.328892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642142, -0.692718, -0.328323,
		0.205848, 0.256747, -0.944303,
		0.738431, -0.673961, -0.022273,
		25.809036, 36.031612, 36.322208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.372499, 36.159561, 35.692345>,  <25.292135, 36.503384, 36.337799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.372499, 36.159561, 35.692345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590496, 35.888412, 35.889721>,  <25.721294, 35.725723, 36.008144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590496, 35.888412, 35.889721>,  <25.372499, 36.159561, 35.692345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590496, 35.888412, 35.889721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492897, -0.735108, -0.465477,
		0.678262, 0.010466, -0.734746,
		0.544989, -0.677869, 0.493437,
		25.753992, 35.685051, 36.037750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717829, 35.738976, 35.244019>,  <25.372499, 36.159561, 35.692345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717829, 35.738976, 35.244019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629211, 35.549690, 35.585072>,  <25.576040, 35.436119, 35.789703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629211, 35.549690, 35.585072>,  <25.717829, 35.738976, 35.244019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629211, 35.549690, 35.585072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655891, -0.574721, -0.489390,
		0.721613, -0.667658, -0.183049,
		-0.221543, -0.473211, 0.852637,
		25.562748, 35.407726, 35.840862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813768, 35.070957, 34.987053>,  <25.717829, 35.738976, 35.244019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.813768, 35.070957, 34.987053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591021, 35.048500, 35.318531>,  <25.457373, 35.035027, 35.517418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591021, 35.048500, 35.318531>,  <25.813768, 35.070957, 34.987053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.591021, 35.048500, 35.318531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508266, -0.766072, -0.393445,
		0.656933, -0.640298, 0.398067,
		-0.556870, -0.056143, 0.828700,
		25.423960, 35.031658, 35.567142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759748, 34.404602, 35.137878>,  <25.813768, 35.070957, 34.987053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759748, 34.404602, 35.137878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.442646, 34.571640, 35.315487>,  <25.252384, 34.671864, 35.422050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.442646, 34.571640, 35.315487>,  <25.759748, 34.404602, 35.137878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.442646, 34.571640, 35.315487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600873, -0.657790, -0.454163,
		0.102418, -0.626841, 0.772386,
		-0.792756, 0.417592, 0.444021,
		25.204819, 34.696918, 35.448692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397625, 34.088100, 34.499081>,  <25.759748, 34.404602, 35.137878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.397625, 34.088100, 34.499081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408085, 34.163002, 34.106297>,  <25.414360, 34.207943, 33.870625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408085, 34.163002, 34.106297>,  <25.397625, 34.088100, 34.499081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.408085, 34.163002, 34.106297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975231, 0.211047, 0.066215,
		0.219640, -0.959372, -0.177098,
		0.026149, 0.187255, -0.981963,
		25.415930, 34.219177, 33.811707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951033, 33.700451, 34.240917>,  <25.397625, 34.088100, 34.499081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951033, 33.700451, 34.240917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.887354, 34.013603, 34.000332>,  <25.849146, 34.201492, 33.855980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.887354, 34.013603, 34.000332>,  <25.951033, 33.700451, 34.240917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.887354, 34.013603, 34.000332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983490, 0.178860, -0.027507,
		0.086043, -0.595911, -0.798428,
		-0.159199, 0.782879, -0.601462,
		25.839594, 34.248466, 33.819893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436234, 33.705074, 33.626404>,  <25.951033, 33.700451, 34.240917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436234, 33.705074, 33.626404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305140, 34.081028, 33.664780>,  <26.226484, 34.306602, 33.687805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305140, 34.081028, 33.664780>,  <26.436234, 33.705074, 33.626404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305140, 34.081028, 33.664780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881033, 0.340710, -0.328173,
		-0.341133, -0.023027, -0.939733,
		-0.327733, 0.939886, 0.095940,
		26.206820, 34.362995, 33.693562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460337, 34.116707, 32.992077>,  <26.436234, 33.705074, 33.626404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460337, 34.116707, 32.992077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498728, 34.374393, 33.295597>,  <26.521763, 34.529003, 33.477711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498728, 34.374393, 33.295597>,  <26.460337, 34.116707, 32.992077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498728, 34.374393, 33.295597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873835, 0.310519, -0.374153,
		-0.476656, 0.698976, -0.533133,
		0.095976, 0.644213, 0.758800,
		26.527521, 34.567657, 33.523235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799671, 34.673584, 32.674927>,  <26.460337, 34.116707, 32.992077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799671, 34.673584, 32.674927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839434, 34.761761, 33.063057>,  <26.863291, 34.814667, 33.295933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839434, 34.761761, 33.063057>,  <26.799671, 34.673584, 32.674927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839434, 34.761761, 33.063057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891298, 0.413816, -0.185322,
		-0.442387, 0.883267, -0.155346,
		0.099405, 0.220444, 0.970321,
		26.869255, 34.827892, 33.354153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889585, 35.414860, 32.682022>,  <26.799671, 34.673584, 32.674927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889585, 35.414860, 32.682022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046988, 35.248997, 33.010220>,  <27.141428, 35.149479, 33.207138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046988, 35.248997, 33.010220>,  <26.889585, 35.414860, 32.682022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046988, 35.248997, 33.010220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802673, 0.590077, -0.086747,
		-0.448187, 0.692727, 0.565029,
		0.393503, -0.414655, 0.820498,
		27.165039, 35.124599, 33.256371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150309, 35.995079, 33.113472>,  <26.889585, 35.414860, 32.682022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150309, 35.995079, 33.113472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359495, 35.672398, 33.223549>,  <27.485006, 35.478786, 33.289593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359495, 35.672398, 33.223549>,  <27.150309, 35.995079, 33.113472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359495, 35.672398, 33.223549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851808, 0.506193, -0.134878,
		-0.030492, 0.304945, 0.951882,
		0.522966, -0.806708, 0.275190,
		27.516384, 35.430386, 33.306107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085644, 35.542183, 33.631504>,  <27.150309, 35.995079, 33.113472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085644, 35.542183, 33.631504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336401, 35.468090, 33.934208>,  <27.486856, 35.423634, 34.115829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336401, 35.468090, 33.934208>,  <27.085644, 35.542183, 33.631504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336401, 35.468090, 33.934208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777978, 0.096631, -0.620815,
		0.041870, 0.977932, 0.204687,
		0.626894, -0.185235, 0.756764,
		27.524469, 35.412518, 34.161236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572958, 36.178864, 33.859108>,  <27.085644, 35.542183, 33.631504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572958, 36.178864, 33.859108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697372, 35.799080, 33.876045>,  <27.772020, 35.571209, 33.886208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697372, 35.799080, 33.876045>,  <27.572958, 36.178864, 33.859108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697372, 35.799080, 33.876045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820291, 0.245686, -0.516490,
		0.479980, 0.195381, 0.855246,
		0.311034, -0.949455, 0.042344,
		27.790682, 35.514244, 33.888748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172764, 36.014034, 34.254158>,  <27.572958, 36.178864, 33.859108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172764, 36.014034, 34.254158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146471, 35.752625, 33.952538>,  <28.130695, 35.595779, 33.771564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146471, 35.752625, 33.952538>,  <28.172764, 36.014034, 34.254158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146471, 35.752625, 33.952538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933513, 0.226657, -0.277815,
		0.352468, -0.722176, 0.595171,
		-0.065732, -0.653520, -0.754050,
		28.126751, 35.556568, 33.726322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643509, 35.554146, 34.473495>,  <28.172764, 36.014034, 34.254158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643509, 35.554146, 34.473495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581770, 35.437294, 34.095959>,  <28.544727, 35.367184, 33.869438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581770, 35.437294, 34.095959>,  <28.643509, 35.554146, 34.473495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581770, 35.437294, 34.095959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947309, 0.227628, -0.225366,
		0.280682, -0.928894, 0.241605,
		-0.154345, -0.292131, -0.943842,
		28.535467, 35.349655, 33.812805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248226, 35.106041, 34.258564>,  <28.643509, 35.554146, 34.473495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248226, 35.106041, 34.258564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096310, 35.250435, 33.917870>,  <29.005159, 35.337070, 33.713455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096310, 35.250435, 33.917870>,  <29.248226, 35.106041, 34.258564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096310, 35.250435, 33.917870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898197, 0.364215, -0.246151,
		0.221358, -0.858511, -0.462558,
		-0.379793, 0.360981, -0.851734,
		28.982372, 35.358730, 33.662350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598900, 34.896095, 33.593948>,  <29.248226, 35.106041, 34.258564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598900, 34.896095, 33.593948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471098, 35.274189, 33.567265>,  <29.394417, 35.501045, 33.551254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471098, 35.274189, 33.567265>,  <29.598900, 34.896095, 33.593948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471098, 35.274189, 33.567265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920210, 0.292704, -0.259879,
		-0.226118, -0.144423, -0.963334,
		-0.319504, 0.945233, -0.066714,
		29.375246, 35.557758, 33.547249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730764, 35.174828, 32.819679>,  <29.598900, 34.896095, 33.593948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730764, 35.174828, 32.819679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775503, 35.434227, 33.120861>,  <29.802347, 35.589867, 33.301571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775503, 35.434227, 33.120861>,  <29.730764, 35.174828, 32.819679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775503, 35.434227, 33.120861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770057, 0.422354, -0.478152,
		-0.628094, 0.633295, -0.452144,
		0.111846, 0.648501, 0.752952,
		29.809057, 35.628777, 33.346748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540276, 35.881073, 32.720722>,  <29.730764, 35.174828, 32.819679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540276, 35.881073, 32.720722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851728, 35.831432, 32.966755>,  <30.038601, 35.801647, 33.114376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851728, 35.831432, 32.966755>,  <29.540276, 35.881073, 32.720722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851728, 35.831432, 32.966755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602362, 0.422404, -0.677299,
		-0.175759, 0.897872, 0.403653,
		0.778632, -0.124104, 0.615085,
		30.085318, 35.794201, 33.151279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905256, 36.274258, 32.885609>,  <29.540276, 35.881073, 32.720722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905256, 36.274258, 32.885609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041363, 35.922977, 33.020061>,  <29.123026, 35.712208, 33.100735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041363, 35.922977, 33.020061>,  <28.905256, 36.274258, 32.885609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041363, 35.922977, 33.020061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913256, -0.393792, -0.104360,
		0.224016, -0.271465, -0.936015,
		0.340266, -0.878200, 0.336133,
		29.143442, 35.659519, 33.120903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509050, 35.688499, 32.451553>,  <28.905256, 36.274258, 32.885609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509050, 35.688499, 32.451553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650969, 35.576591, 32.808395>,  <28.736118, 35.509449, 33.022499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650969, 35.576591, 32.808395>,  <28.509050, 35.688499, 32.451553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650969, 35.576591, 32.808395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872508, -0.441922, 0.208411,
		0.335934, -0.852311, -0.400891,
		0.354794, -0.279768, 0.892105,
		28.757406, 35.492661, 33.076027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300119, 34.993893, 32.584858>,  <28.509050, 35.688499, 32.451553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300119, 34.993893, 32.584858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.367371, 35.126217, 32.956299>,  <28.407721, 35.205612, 33.179161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.367371, 35.126217, 32.956299>,  <28.300119, 34.993893, 32.584858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367371, 35.126217, 32.956299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921212, -0.282559, 0.267450,
		0.350860, -0.900403, 0.257241,
		0.168127, 0.330811, 0.928600,
		28.417809, 35.225460, 33.234879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223167, 34.449078, 33.069565>,  <28.300119, 34.993893, 32.584858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223167, 34.449078, 33.069565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160717, 34.808922, 33.232700>,  <28.123247, 35.024826, 33.330582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160717, 34.808922, 33.232700>,  <28.223167, 34.449078, 33.069565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160717, 34.808922, 33.232700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876668, -0.316435, 0.362384,
		0.455058, -0.300960, 0.838060,
		-0.156128, 0.899606, 0.407838,
		28.113878, 35.078804, 33.355053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058779, 34.351593, 33.748363>,  <28.223167, 34.449078, 33.069565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058779, 34.351593, 33.748363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890257, 34.699257, 33.644772>,  <27.789145, 34.907856, 33.582615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890257, 34.699257, 33.644772>,  <28.058779, 34.351593, 33.748363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890257, 34.699257, 33.644772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879732, -0.322261, 0.349600,
		0.220398, 0.375122, 0.900394,
		-0.421304, 0.869156, -0.258981,
		27.763866, 34.960003, 33.567078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658649, 34.586987, 34.312664>,  <28.058779, 34.351593, 33.748363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658649, 34.586987, 34.312664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502323, 34.772404, 33.994572>,  <27.408527, 34.883652, 33.803715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502323, 34.772404, 33.994572>,  <27.658649, 34.586987, 34.312664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502323, 34.772404, 33.994572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919221, -0.151560, 0.363403,
		0.047927, 0.873018, 0.485328,
		-0.390814, 0.463540, -0.795233,
		27.385078, 34.911465, 33.756001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066675, 34.979294, 34.599293>,  <27.658649, 34.586987, 34.312664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066675, 34.979294, 34.599293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999645, 34.916630, 34.209961>,  <26.959427, 34.879032, 33.976360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999645, 34.916630, 34.209961>,  <27.066675, 34.979294, 34.599293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999645, 34.916630, 34.209961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981785, -0.063149, 0.179196,
		-0.089538, 0.985632, -0.143223,
		-0.167576, -0.156659, -0.973333,
		26.949373, 34.869633, 33.917961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505604, 35.462242, 34.381725>,  <27.066675, 34.979294, 34.599293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505604, 35.462242, 34.381725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495600, 35.178947, 34.099514>,  <26.489597, 35.008968, 33.930187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495600, 35.178947, 34.099514>,  <26.505604, 35.462242, 34.381725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495600, 35.178947, 34.099514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990669, -0.077020, 0.112436,
		-0.133971, 0.701757, -0.699706,
		-0.025011, -0.708241, -0.705528,
		26.488096, 34.966476, 33.887856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904774, 35.568890, 34.069008>,  <26.505604, 35.462242, 34.381725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904774, 35.568890, 34.069008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989971, 35.193184, 33.961365>,  <26.041090, 34.967762, 33.896778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989971, 35.193184, 33.961365>,  <25.904774, 35.568890, 34.069008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.989971, 35.193184, 33.961365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975822, -0.190666, -0.106855,
		0.049054, 0.285365, -0.957163,
		0.212991, -0.939262, -0.269112,
		26.053869, 34.911404, 33.880630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.553177, 35.423306, 33.387527>,  <25.904774, 35.568890, 34.069008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.553177, 35.423306, 33.387527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.615383, 35.116352, 33.636345>,  <25.652706, 34.932178, 33.785633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.615383, 35.116352, 33.636345>,  <25.553177, 35.423306, 33.387527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.615383, 35.116352, 33.636345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986003, -0.158906, 0.050471,
		0.060115, -0.621183, -0.781356,
		0.155514, -0.767385, 0.622041,
		25.662037, 34.886135, 33.822956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.539640, 36.107769, 33.248016>,  <25.553177, 35.423306, 33.387527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.539640, 36.107769, 33.248016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720505, 36.429493, 33.093800>,  <25.829023, 36.622528, 33.001270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720505, 36.429493, 33.093800>,  <25.539640, 36.107769, 33.248016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720505, 36.429493, 33.093800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322832, 0.550522, 0.769874,
		0.831463, -0.223642, 0.508580,
		0.452160, 0.804307, -0.385540,
		25.856153, 36.670784, 32.978138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983940, 36.444832, 33.723129>,  <25.539640, 36.107769, 33.248016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983940, 36.444832, 33.723129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864866, 36.736992, 33.477234>,  <25.793423, 36.912289, 33.329697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864866, 36.736992, 33.477234>,  <25.983940, 36.444832, 33.723129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864866, 36.736992, 33.477234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163891, 0.595271, 0.786633,
		0.940491, 0.334918, -0.057496,
		-0.297684, 0.730399, -0.614738,
		25.775560, 36.956112, 33.292812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292677, 36.964775, 33.955864>,  <25.983940, 36.444832, 33.723129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292677, 36.964775, 33.955864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976585, 37.122887, 33.768547>,  <25.786930, 37.217754, 33.656158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976585, 37.122887, 33.768547>,  <26.292677, 36.964775, 33.955864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976585, 37.122887, 33.768547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197772, 0.558776, 0.805391,
		0.580020, 0.729058, -0.363387,
		-0.790229, 0.395275, -0.468289,
		25.739517, 37.241470, 33.628059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264082, 37.696678, 34.106522>,  <26.292677, 36.964775, 33.955864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264082, 37.696678, 34.106522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885271, 37.624996, 33.999920>,  <25.657984, 37.581989, 33.935959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885271, 37.624996, 33.999920>,  <26.264082, 37.696678, 34.106522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885271, 37.624996, 33.999920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321114, 0.540530, 0.777633,
		0.004699, 0.822018, -0.569442,
		-0.947029, -0.179202, -0.266502,
		25.601162, 37.571236, 33.919968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912701, 37.679214, 33.696018>,  <26.264082, 37.696678, 34.106522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912701, 37.679214, 33.696018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286648, 37.812477, 33.745052>,  <27.511017, 37.892433, 33.774471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286648, 37.812477, 33.745052>,  <26.912701, 37.679214, 33.696018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286648, 37.812477, 33.745052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352086, -0.826055, -0.440078,
		-0.045353, 0.454575, -0.889553,
		0.934868, 0.333158, 0.122585,
		27.567108, 37.912426, 33.781830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313583, 37.584850, 33.032040>,  <26.912701, 37.679214, 33.696018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313583, 37.584850, 33.032040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568733, 37.557236, 33.338856>,  <27.721823, 37.540668, 33.522945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568733, 37.557236, 33.338856>,  <27.313583, 37.584850, 33.032040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568733, 37.557236, 33.338856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289074, -0.901689, -0.321549,
		0.713831, 0.426839, -0.555207,
		0.637873, -0.069036, 0.767041,
		27.760096, 37.536526, 33.568970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698221, 37.037285, 32.837753>,  <27.313583, 37.584850, 33.032040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698221, 37.037285, 32.837753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845387, 37.127796, 33.198517>,  <27.933685, 37.182102, 33.414974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845387, 37.127796, 33.198517>,  <27.698221, 37.037285, 32.837753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845387, 37.127796, 33.198517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661700, -0.745164, -0.082974,
		0.653295, 0.627320, -0.423883,
		0.367913, 0.226277, 0.901909,
		27.955761, 37.195679, 33.469090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488018, 37.209339, 32.931122>,  <27.698221, 37.037285, 32.837753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488018, 37.209339, 32.931122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358994, 37.056896, 33.277695>,  <28.281578, 36.965431, 33.485638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358994, 37.056896, 33.277695>,  <28.488018, 37.209339, 32.931122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358994, 37.056896, 33.277695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822039, -0.566589, 0.056816,
		0.469260, 0.730572, 0.496044,
		-0.322562, -0.381106, 0.866436,
		28.262224, 36.942566, 33.537624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982347, 37.004803, 33.123642>,  <28.488018, 37.209339, 32.931122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982347, 37.004803, 33.123642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734858, 36.810303, 33.370461>,  <28.586365, 36.693604, 33.518551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734858, 36.810303, 33.370461>,  <28.982347, 37.004803, 33.123642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734858, 36.810303, 33.370461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676422, -0.729186, 0.103639,
		0.399544, 0.481504, 0.780076,
		-0.618723, -0.486252, 0.617042,
		28.549240, 36.664429, 33.555573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476004, 36.984932, 33.644920>,  <28.982347, 37.004803, 33.123642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476004, 36.984932, 33.644920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802586, 37.158493, 33.797306>,  <29.998535, 37.262630, 33.888737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802586, 37.158493, 33.797306>,  <29.476004, 36.984932, 33.644920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802586, 37.158493, 33.797306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526110, -0.287145, -0.800472,
		-0.237934, 0.853977, -0.462721,
		0.816453, 0.433901, 0.380964,
		30.047522, 37.288662, 33.911594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830809, 37.553921, 33.210949>,  <29.476004, 36.984932, 33.644920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830809, 37.553921, 33.210949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117575, 37.374775, 33.424660>,  <30.289635, 37.267288, 33.552887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117575, 37.374775, 33.424660>,  <29.830809, 37.553921, 33.210949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117575, 37.374775, 33.424660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511200, -0.183376, -0.839671,
		0.474029, 0.875096, 0.097482,
		0.716918, -0.447862, 0.534275,
		30.332649, 37.240417, 33.584942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596172, 37.914543, 33.293777>,  <29.830809, 37.553921, 33.210949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596172, 37.914543, 33.293777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584349, 37.515099, 33.311230>,  <30.577253, 37.275433, 33.321701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584349, 37.515099, 33.311230>,  <30.596172, 37.914543, 33.293777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584349, 37.515099, 33.311230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637638, -0.052452, -0.768548,
		0.769769, 0.005100, 0.638303,
		-0.029561, -0.998610, 0.043628,
		30.575481, 37.215515, 33.324318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273870, 37.685135, 33.346550>,  <30.596172, 37.914543, 33.293777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273870, 37.685135, 33.346550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094740, 37.375237, 33.168011>,  <30.987263, 37.189297, 33.060886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094740, 37.375237, 33.168011>,  <31.273870, 37.685135, 33.346550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094740, 37.375237, 33.168011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687025, 0.021326, -0.726321,
		0.572232, -0.631915, 0.522718,
		-0.447826, -0.774744, -0.446344,
		30.960392, 37.142815, 33.034107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731218, 37.112972, 33.139351>,  <31.273870, 37.685135, 33.346550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731218, 37.112972, 33.139351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427246, 37.136658, 32.880428>,  <31.244864, 37.150867, 32.725075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427246, 37.136658, 32.880428>,  <31.731218, 37.112972, 33.139351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427246, 37.136658, 32.880428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649853, 0.047573, -0.758570,
		-0.014123, -0.997111, -0.074631,
		-0.759929, 0.059213, -0.647304,
		31.199268, 37.154423, 32.686237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750740, 36.522343, 32.649620>,  <31.731218, 37.112972, 33.139351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750740, 36.522343, 32.649620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579670, 36.846741, 32.489925>,  <31.477028, 37.041378, 32.394108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579670, 36.846741, 32.489925>,  <31.750740, 36.522343, 32.649620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579670, 36.846741, 32.489925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710472, 0.028522, -0.703147,
		-0.558860, -0.584361, -0.588385,
		-0.427674, 0.810992, -0.399232,
		31.451368, 37.090038, 32.370155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420347, 36.342190, 32.056324>,  <31.750740, 36.522343, 32.649620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420347, 36.342190, 32.056324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553364, 36.719261, 32.067455>,  <31.633173, 36.945503, 32.074135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553364, 36.719261, 32.067455>,  <31.420347, 36.342190, 32.056324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553364, 36.719261, 32.067455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645459, -0.205982, -0.735496,
		-0.687605, 0.262542, -0.676958,
		0.332540, 0.942679, 0.027826,
		31.653126, 37.002064, 32.075802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564171, 36.621891, 31.415857>,  <31.420347, 36.342190, 32.056324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564171, 36.621891, 31.415857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802433, 36.824284, 31.665394>,  <31.945391, 36.945721, 31.815115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802433, 36.824284, 31.665394>,  <31.564171, 36.621891, 31.415857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802433, 36.824284, 31.665394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780375, -0.180546, -0.598680,
		-0.190289, 0.843438, -0.502398,
		0.595655, 0.505981, 0.623842,
		31.981129, 36.976078, 31.852547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964563, 36.967678, 30.977955>,  <31.564171, 36.621891, 31.415857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964563, 36.967678, 30.977955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164402, 36.959122, 31.324352>,  <32.284306, 36.953987, 31.532190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164402, 36.959122, 31.324352>,  <31.964563, 36.967678, 30.977955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164402, 36.959122, 31.324352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847369, -0.195569, -0.493679,
		0.179921, 0.980457, -0.079581,
		0.499594, -0.021389, 0.865995,
		32.314281, 36.952705, 31.584150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550446, 37.324047, 30.799768>,  <31.964563, 36.967678, 30.977955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550446, 37.324047, 30.799768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669411, 37.127201, 31.127028>,  <32.740791, 37.009094, 31.323383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669411, 37.127201, 31.127028>,  <32.550446, 37.324047, 30.799768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669411, 37.127201, 31.127028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854703, -0.244644, -0.457856,
		0.425473, 0.835449, 0.347849,
		0.297416, -0.492113, 0.818150,
		32.758636, 36.979568, 31.372473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211964, 37.489407, 30.902079>,  <32.550446, 37.324047, 30.799768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211964, 37.489407, 30.902079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199593, 37.140106, 31.096596>,  <33.192169, 36.930527, 31.213306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199593, 37.140106, 31.096596>,  <33.211964, 37.489407, 30.902079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199593, 37.140106, 31.096596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761924, -0.335494, -0.554000,
		0.646928, 0.353384, 0.675725,
		-0.030927, -0.873249, 0.486292,
		33.190315, 36.878132, 31.242483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852276, 37.338505, 31.133587>,  <33.211964, 37.489407, 30.902079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852276, 37.338505, 31.133587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671173, 36.981941, 31.141571>,  <33.562511, 36.768002, 31.146360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671173, 36.981941, 31.141571>,  <33.852276, 37.338505, 31.133587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671173, 36.981941, 31.141571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804568, -0.418095, -0.421743,
		0.384291, -0.174890, 0.906495,
		-0.452760, -0.891409, 0.019960,
		33.535347, 36.714520, 31.147558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432354, 36.871117, 31.371683>,  <33.852276, 37.338505, 31.133587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432354, 36.871117, 31.371683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146023, 36.644306, 31.208679>,  <33.974224, 36.508221, 31.110878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146023, 36.644306, 31.208679>,  <34.432354, 36.871117, 31.371683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146023, 36.644306, 31.208679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698256, -0.577063, -0.423600,
		0.005036, -0.587771, 0.809011,
		-0.715830, -0.567030, -0.407509,
		33.931274, 36.474197, 31.086426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699699, 36.124355, 31.523291>,  <34.432354, 36.871117, 31.371683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699699, 36.124355, 31.523291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440083, 36.107716, 31.219444>,  <34.284313, 36.097733, 31.037136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440083, 36.107716, 31.219444>,  <34.699699, 36.124355, 31.523291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440083, 36.107716, 31.219444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643861, -0.561876, -0.519363,
		-0.405206, -0.826175, 0.391462,
		-0.649038, -0.041598, -0.759618,
		34.245373, 36.095238, 30.991558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891541, 35.426140, 31.145166>,  <34.699699, 36.124355, 31.523291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891541, 35.426140, 31.145166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650520, 35.588547, 30.870331>,  <34.505909, 35.685989, 30.705429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650520, 35.588547, 30.870331>,  <34.891541, 35.426140, 31.145166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650520, 35.588547, 30.870331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608893, -0.322686, -0.724654,
		-0.515934, -0.855001, -0.052786,
		-0.602546, 0.406014, -0.687088,
		34.469757, 35.710350, 30.664204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849854, 34.934742, 30.637590>,  <34.891541, 35.426140, 31.145166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849854, 34.934742, 30.637590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785721, 35.293495, 30.472717>,  <34.747242, 35.508747, 30.373793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785721, 35.293495, 30.472717>,  <34.849854, 34.934742, 30.637590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785721, 35.293495, 30.472717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525181, -0.276059, -0.804970,
		-0.835751, -0.345532, -0.426765,
		-0.160330, 0.896883, -0.412184,
		34.737621, 35.562561, 30.349062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861191, 34.777073, 29.966312>,  <34.849854, 34.934742, 30.637590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861191, 34.777073, 29.966312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941223, 35.168728, 29.980492>,  <34.989243, 35.403721, 29.988998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941223, 35.168728, 29.980492>,  <34.861191, 34.777073, 29.966312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941223, 35.168728, 29.980492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535427, -0.078971, -0.840881,
		-0.820539, 0.187226, -0.540057,
		0.200084, 0.979138, 0.035446,
		35.001247, 35.462471, 29.991125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780991, 34.980526, 29.334227>,  <34.861191, 34.777073, 29.966312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780991, 34.980526, 29.334227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008213, 35.289680, 29.447332>,  <35.144547, 35.475174, 29.515196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008213, 35.289680, 29.447332>,  <34.780991, 34.980526, 29.334227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008213, 35.289680, 29.447332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442958, 0.002441, -0.896539,
		-0.693615, 0.634537, -0.340971,
		0.568055, 0.772888, 0.282766,
		35.178631, 35.521545, 29.532162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866528, 35.399929, 28.698452>,  <34.780991, 34.980526, 29.334227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866528, 35.399929, 28.698452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158627, 35.527733, 28.939997>,  <35.333885, 35.604416, 29.084923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158627, 35.527733, 28.939997>,  <34.866528, 35.399929, 28.698452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158627, 35.527733, 28.939997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567960, 0.207307, -0.796521,
		-0.379683, 0.924627, -0.030084,
		0.730248, 0.319512, 0.603862,
		35.377701, 35.623585, 29.121155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141674, 36.121635, 28.400391>,  <34.866528, 35.399929, 28.698452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141674, 36.121635, 28.400391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418941, 35.948029, 28.630573>,  <35.585300, 35.843864, 28.768682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418941, 35.948029, 28.630573>,  <35.141674, 36.121635, 28.400391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418941, 35.948029, 28.630573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707336, 0.256146, -0.658836,
		0.138545, 0.863724, 0.484547,
		0.693167, -0.434017, 0.575456,
		35.626892, 35.817825, 28.803209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733200, 36.577900, 28.439650>,  <35.141674, 36.121635, 28.400391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733200, 36.577900, 28.439650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876152, 36.213421, 28.521620>,  <35.961922, 35.994732, 28.570803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876152, 36.213421, 28.521620>,  <35.733200, 36.577900, 28.439650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876152, 36.213421, 28.521620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756350, 0.153637, -0.635870,
		0.547922, 0.382240, 0.744093,
		0.357375, -0.911201, 0.204926,
		35.983364, 35.940060, 28.583097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437176, 36.689835, 28.619207>,  <35.733200, 36.577900, 28.439650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437176, 36.689835, 28.619207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385494, 36.315460, 28.488161>,  <36.354485, 36.090836, 28.409533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385494, 36.315460, 28.488161>,  <36.437176, 36.689835, 28.619207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385494, 36.315460, 28.488161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805091, 0.093869, -0.585676,
		0.578907, -0.339432, 0.741385,
		-0.129204, -0.935935, -0.327615,
		36.346733, 36.034679, 28.389877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109684, 36.575726, 28.503031>,  <36.437176, 36.689835, 28.619207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109684, 36.575726, 28.503031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906616, 36.264538, 28.354959>,  <36.784775, 36.077824, 28.266117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906616, 36.264538, 28.354959>,  <37.109684, 36.575726, 28.503031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906616, 36.264538, 28.354959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533673, 0.053345, -0.844007,
		0.676359, -0.626034, 0.388099,
		-0.507673, -0.777969, -0.370178,
		36.754314, 36.031147, 28.243906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672298, 36.234070, 28.074976>,  <37.109684, 36.575726, 28.503031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672298, 36.234070, 28.074976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313305, 36.121655, 27.939011>,  <37.097908, 36.054207, 27.857431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313305, 36.121655, 27.939011>,  <37.672298, 36.234070, 28.074976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313305, 36.121655, 27.939011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326011, 0.096350, -0.940443,
		0.297048, -0.954849, 0.005147,
		-0.897485, -0.281034, -0.339912,
		37.044060, 36.037346, 27.837036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799355, 36.003567, 27.321762>,  <37.672298, 36.234070, 28.074976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799355, 36.003567, 27.321762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400059, 36.022053, 27.336634>,  <37.160480, 36.033146, 27.345556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400059, 36.022053, 27.336634>,  <37.799355, 36.003567, 27.321762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400059, 36.022053, 27.336634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041143, -0.088064, -0.995265,
		-0.042719, -0.995042, 0.089811,
		-0.998240, 0.046212, 0.037177,
		37.100586, 36.035919, 27.347786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566246, 35.387947, 26.900776>,  <37.799355, 36.003567, 27.321762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566246, 35.387947, 26.900776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298363, 35.681957, 26.943180>,  <37.137634, 35.858364, 26.968622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298363, 35.681957, 26.943180>,  <37.566246, 35.387947, 26.900776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298363, 35.681957, 26.943180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223697, -0.063544, -0.972585,
		-0.708134, -0.675060, 0.206978,
		-0.669706, 0.735021, 0.106011,
		37.097450, 35.902462, 26.974983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077152, 35.212093, 26.541656>,  <37.566246, 35.387947, 26.900776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077152, 35.212093, 26.541656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986778, 35.600380, 26.574303>,  <36.932556, 35.833351, 26.593891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986778, 35.600380, 26.574303>,  <37.077152, 35.212093, 26.541656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986778, 35.600380, 26.574303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117817, 0.055937, -0.991459,
		-0.966992, -0.233617, 0.101729,
		-0.225931, 0.970718, 0.081615,
		36.918999, 35.891594, 26.598787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490795, 35.290443, 26.160137>,  <37.077152, 35.212093, 26.541656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490795, 35.290443, 26.160137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684586, 35.639008, 26.190954>,  <36.800861, 35.848145, 26.209444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684586, 35.639008, 26.190954>,  <36.490795, 35.290443, 26.160137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684586, 35.639008, 26.190954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013502, 0.095505, -0.995337,
		-0.874700, 0.481177, 0.058036,
		0.484476, 0.871406, 0.077042,
		36.829929, 35.900429, 26.214067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199650, 35.670589, 25.638346>,  <36.490795, 35.290443, 26.160137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199650, 35.670589, 25.638346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536125, 35.864605, 25.733963>,  <36.738010, 35.981014, 25.791334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536125, 35.864605, 25.733963>,  <36.199650, 35.670589, 25.638346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536125, 35.864605, 25.733963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129180, 0.249010, -0.959847,
		-0.525088, 0.838290, 0.146807,
		0.841187, 0.485039, 0.239043,
		36.788483, 36.010117, 25.805676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143406, 36.262543, 25.268593>,  <36.199650, 35.670589, 25.638346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143406, 36.262543, 25.268593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525913, 36.182716, 25.354132>,  <36.755417, 36.134819, 25.405455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525913, 36.182716, 25.354132>,  <36.143406, 36.262543, 25.268593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525913, 36.182716, 25.354132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216280, -0.009801, -0.976282,
		0.196928, 0.979835, 0.033790,
		0.956265, -0.199565, 0.213848,
		36.812794, 36.122849, 25.418285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440548, 36.619705, 24.753798>,  <36.143406, 36.262543, 25.268593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440548, 36.619705, 24.753798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733139, 36.375713, 24.875694>,  <36.908695, 36.229321, 24.948832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733139, 36.375713, 24.875694>,  <36.440548, 36.619705, 24.753798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733139, 36.375713, 24.875694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279950, -0.138862, -0.949919,
		0.621746, 0.780157, 0.069189,
		0.731478, -0.609977, 0.304742,
		36.952583, 36.192719, 24.967117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008293, 36.898411, 24.444527>,  <36.440548, 36.619705, 24.753798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008293, 36.898411, 24.444527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130436, 36.532131, 24.549028>,  <37.203724, 36.312363, 24.611729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130436, 36.532131, 24.549028>,  <37.008293, 36.898411, 24.444527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130436, 36.532131, 24.549028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354301, -0.145404, -0.923758,
		0.883870, 0.374640, 0.280032,
		0.305359, -0.915698, 0.261254,
		37.222042, 36.257423, 24.627405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745361, 36.878052, 24.450888>,  <37.008293, 36.898411, 24.444527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745361, 36.878052, 24.450888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618225, 36.501808, 24.403175>,  <37.541943, 36.276062, 24.374548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618225, 36.501808, 24.403175>,  <37.745361, 36.878052, 24.450888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618225, 36.501808, 24.403175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358734, -0.002849, -0.933435,
		0.877661, -0.339471, 0.338335,
		-0.317838, -0.940612, -0.119279,
		37.522873, 36.219624, 24.367392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252541, 36.443687, 24.132694>,  <37.745361, 36.878052, 24.450888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252541, 36.443687, 24.132694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930531, 36.213821, 24.073772>,  <37.737324, 36.075901, 24.038420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930531, 36.213821, 24.073772>,  <38.252541, 36.443687, 24.132694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930531, 36.213821, 24.073772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164215, 0.022740, -0.986162,
		0.570058, -0.818076, 0.076062,
		-0.805026, -0.574661, -0.147304,
		37.689022, 36.041424, 24.029581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448830, 35.791634, 23.664509>,  <38.252541, 36.443687, 24.132694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448830, 35.791634, 23.664509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057827, 35.867630, 23.627897>,  <37.823223, 35.913227, 23.605930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057827, 35.867630, 23.627897>,  <38.448830, 35.791634, 23.664509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057827, 35.867630, 23.627897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112114, 0.100563, -0.988594,
		-0.178616, -0.976623, -0.119602,
		-0.977511, 0.189988, -0.091531,
		37.764572, 35.924625, 23.600437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241756, 35.221626, 23.253241>,  <38.448830, 35.791634, 23.664509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241756, 35.221626, 23.253241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983086, 35.524647, 23.217623>,  <37.827885, 35.706459, 23.196253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983086, 35.524647, 23.217623>,  <38.241756, 35.221626, 23.253241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983086, 35.524647, 23.217623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097673, -0.198016, -0.975320,
		-0.756489, -0.622016, 0.202044,
		-0.646672, 0.757553, -0.089043,
		37.789085, 35.751911, 23.190910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878902, 34.952236, 22.823666>,  <38.241756, 35.221626, 23.253241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878902, 34.952236, 22.823666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772552, 35.336143, 22.787527>,  <37.708740, 35.566486, 22.765844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772552, 35.336143, 22.787527>,  <37.878902, 34.952236, 22.823666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772552, 35.336143, 22.787527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129289, -0.128375, -0.983262,
		-0.955298, -0.249745, 0.158219,
		-0.265876, 0.959764, -0.090347,
		37.692791, 35.624073, 22.760424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249050, 34.948257, 22.355824>,  <37.878902, 34.952236, 22.823666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249050, 34.948257, 22.355824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447296, 35.295441, 22.368586>,  <37.566242, 35.503750, 22.376244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447296, 35.295441, 22.368586>,  <37.249050, 34.948257, 22.355824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447296, 35.295441, 22.368586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005095, 0.039639, -0.999201,
		-0.868528, 0.495056, 0.024068,
		0.495614, 0.867956, 0.031906,
		37.595982, 35.555828, 22.378157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929089, 35.262478, 21.802773>,  <37.249050, 34.948257, 22.355824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929089, 35.262478, 21.802773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258312, 35.474533, 21.884281>,  <37.455849, 35.601765, 21.933187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258312, 35.474533, 21.884281>,  <36.929089, 35.262478, 21.802773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258312, 35.474533, 21.884281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055067, 0.282605, -0.957654,
		-0.565277, 0.799429, 0.203408,
		0.823061, 0.530139, 0.203773,
		37.505230, 35.633575, 21.945414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889496, 36.004227, 21.480709>,  <36.929089, 35.262478, 21.802773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889496, 36.004227, 21.480709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275753, 35.930698, 21.554186>,  <37.507507, 35.886581, 21.598272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275753, 35.930698, 21.554186>,  <36.889496, 36.004227, 21.480709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275753, 35.930698, 21.554186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195799, 0.049871, -0.979375,
		0.170871, 0.981693, 0.084150,
		0.965643, -0.183824, 0.183693,
		37.565445, 35.875553, 21.609293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220016, 36.502125, 21.130392>,  <36.889496, 36.004227, 21.480709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220016, 36.502125, 21.130392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520233, 36.247864, 21.202648>,  <37.700363, 36.095306, 21.246002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520233, 36.247864, 21.202648>,  <37.220016, 36.502125, 21.130392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520233, 36.247864, 21.202648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196929, -0.045788, -0.979348,
		0.630797, 0.770615, 0.090813,
		0.750542, -0.635654, 0.180639,
		37.745396, 36.057167, 21.256840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687996, 36.767616, 20.748680>,  <37.220016, 36.502125, 21.130392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687996, 36.767616, 20.748680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816380, 36.393913, 20.810841>,  <37.893410, 36.169693, 20.848137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816380, 36.393913, 20.810841>,  <37.687996, 36.767616, 20.748680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816380, 36.393913, 20.810841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273176, -0.065790, -0.959712,
		0.906842, 0.350476, 0.234101,
		0.320954, -0.934258, 0.155403,
		37.912666, 36.113636, 20.857462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357983, 36.814377, 20.544310>,  <37.687996, 36.767616, 20.748680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357983, 36.814377, 20.544310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245495, 36.430782, 20.530107>,  <38.178001, 36.200626, 20.521585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245495, 36.430782, 20.530107>,  <38.357983, 36.814377, 20.544310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245495, 36.430782, 20.530107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229679, -0.031337, -0.972762,
		0.931752, -0.281716, 0.229071,
		-0.281221, -0.958986, -0.035506,
		38.161129, 36.143085, 20.519455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843933, 36.498211, 20.224188>,  <38.357983, 36.814377, 20.544310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843933, 36.498211, 20.224188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528713, 36.261082, 20.157806>,  <38.339581, 36.118805, 20.117977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528713, 36.261082, 20.157806>,  <38.843933, 36.498211, 20.224188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528713, 36.261082, 20.157806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292779, -0.123777, -0.948135,
		0.541531, -0.795767, 0.271107,
		-0.788051, -0.592819, -0.165954,
		38.292297, 36.083237, 20.108021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064201, 35.949772, 19.745279>,  <38.843933, 36.498211, 20.224188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064201, 35.949772, 19.745279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665943, 35.968922, 19.713272>,  <38.426991, 35.980412, 19.694067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665943, 35.968922, 19.713272>,  <39.064201, 35.949772, 19.745279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665943, 35.968922, 19.713272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084588, 0.102600, -0.991120,
		-0.039245, -0.993570, -0.106204,
		-0.995643, 0.047880, -0.080017,
		38.367249, 35.983284, 19.689266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905983, 35.477345, 19.262508>,  <39.064201, 35.949772, 19.745279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905983, 35.477345, 19.262508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555790, 35.670616, 19.259390>,  <38.345673, 35.786579, 19.257519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555790, 35.670616, 19.259390>,  <38.905983, 35.477345, 19.262508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555790, 35.670616, 19.259390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032634, -0.075215, -0.996633,
		-0.482139, -0.872285, 0.081618,
		-0.875487, 0.483179, -0.007798,
		38.293144, 35.815571, 19.257050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403046, 35.128769, 18.887547>,  <38.905983, 35.477345, 19.262508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403046, 35.128769, 18.887547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244415, 35.495869, 18.878950>,  <38.149239, 35.716129, 18.873793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244415, 35.495869, 18.878950>,  <38.403046, 35.128769, 18.887547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244415, 35.495869, 18.878950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031865, -0.037156, -0.998801,
		-0.917449, -0.395415, 0.043979,
		-0.396576, 0.917750, -0.021489,
		38.125443, 35.771194, 18.872503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831261, 35.151638, 18.532616>,  <38.403046, 35.128769, 18.887547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831261, 35.151638, 18.532616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906452, 35.543148, 18.499985>,  <37.951569, 35.778053, 18.480406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906452, 35.543148, 18.499985>,  <37.831261, 35.151638, 18.532616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906452, 35.543148, 18.499985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221310, -0.038712, -0.974434,
		-0.956914, 0.201230, 0.209337,
		0.187981, 0.978779, -0.081578,
		37.962845, 35.836781, 18.475512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351768, 35.237331, 18.116964>,  <37.831261, 35.151638, 18.532616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351768, 35.237331, 18.116964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579639, 35.562946, 18.071697>,  <37.716362, 35.758316, 18.044537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579639, 35.562946, 18.071697>,  <37.351768, 35.237331, 18.116964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579639, 35.562946, 18.071697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279760, 0.062592, -0.958027,
		-0.772791, 0.577424, 0.263394,
		0.569674, 0.814042, -0.113169,
		37.750542, 35.807159, 18.037746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973789, 35.642925, 17.849110>,  <37.351768, 35.237331, 18.116964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973789, 35.642925, 17.849110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346313, 35.738796, 17.739410>,  <37.569828, 35.796318, 17.673590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346313, 35.738796, 17.739410>,  <36.973789, 35.642925, 17.849110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346313, 35.738796, 17.739410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299351, 0.074767, -0.951209,
		-0.207480, 0.967969, 0.141380,
		0.931312, 0.239679, -0.274250,
		37.625706, 35.810699, 17.657135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933067, 36.338085, 17.634245>,  <36.973789, 35.642925, 17.849110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933067, 36.338085, 17.634245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173523, 36.073910, 17.454268>,  <37.317795, 35.915405, 17.346281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173523, 36.073910, 17.454268>,  <36.933067, 36.338085, 17.634245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173523, 36.073910, 17.454268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439806, 0.196679, -0.876292,
		0.667235, 0.724660, -0.172235,
		0.601139, -0.660443, -0.449941,
		37.353863, 35.875778, 17.319284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298195, 36.664822, 16.943869>,  <36.933067, 36.338085, 17.634245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298195, 36.664822, 16.943869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230488, 36.270752, 16.932663>,  <37.189865, 36.034309, 16.925940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230488, 36.270752, 16.932663>,  <37.298195, 36.664822, 16.943869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230488, 36.270752, 16.932663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463728, 0.104691, -0.879770,
		0.869658, -0.135926, -0.474573,
		-0.169267, -0.985172, -0.028013,
		37.179707, 35.975201, 16.924259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996246, 36.447563, 16.993900>,  <37.298195, 36.664822, 16.943869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996246, 36.447563, 16.993900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123055, 36.821396, 16.929338>,  <38.199139, 37.045696, 16.890602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123055, 36.821396, 16.929338>,  <37.996246, 36.447563, 16.993900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123055, 36.821396, 16.929338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943545, -0.293565, 0.153439,
		0.096019, -0.200935, -0.974888,
		0.317024, 0.934583, -0.161403,
		38.218163, 37.101772, 16.880917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770744, 36.484520, 17.033241>,  <37.996246, 36.447563, 16.993900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770744, 36.484520, 17.033241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465115, 36.363228, 17.261009>,  <38.281734, 36.290451, 17.397669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465115, 36.363228, 17.261009>,  <38.770744, 36.484520, 17.033241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465115, 36.363228, 17.261009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073233, 0.917713, 0.390436,
		-0.640954, 0.256623, -0.723411,
		-0.764078, -0.303229, 0.569418,
		38.235889, 36.272259, 17.431835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874527, 37.048145, 16.580025>,  <38.770744, 36.484520, 17.033241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874527, 37.048145, 16.580025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164902, 37.105431, 16.849098>,  <39.339127, 37.139801, 17.010542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164902, 37.105431, 16.849098>,  <38.874527, 37.048145, 16.580025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164902, 37.105431, 16.849098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687195, 0.111468, 0.717870,
		0.027824, -0.983395, 0.179333,
		0.725940, 0.143210, 0.672683,
		39.382683, 37.148396, 17.050903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372307, 37.686455, 16.495502>,  <38.874527, 37.048145, 16.580025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372307, 37.686455, 16.495502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515713, 38.042912, 16.384262>,  <39.601757, 38.256786, 16.317518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515713, 38.042912, 16.384262>,  <39.372307, 37.686455, 16.495502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515713, 38.042912, 16.384262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480191, 0.431513, 0.763684,
		0.800552, -0.140251, 0.582620,
		0.358515, 0.891137, -0.278102,
		39.623268, 38.310253, 16.300831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894814, 37.993927, 16.906055>,  <39.372307, 37.686455, 16.495502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894814, 37.993927, 16.906055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617775, 38.233780, 16.745682>,  <39.451550, 38.377689, 16.649458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617775, 38.233780, 16.745682>,  <39.894814, 37.993927, 16.906055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617775, 38.233780, 16.745682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337862, 0.221414, 0.914782,
		0.637303, 0.769039, 0.049241,
		-0.692600, 0.599630, -0.400936,
		39.409996, 38.413670, 16.625401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969894, 38.406136, 17.456017>,  <39.894814, 37.993927, 16.906055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969894, 38.406136, 17.456017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632957, 38.499165, 17.261545>,  <39.430794, 38.554981, 17.144861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632957, 38.499165, 17.261545>,  <39.969894, 38.406136, 17.456017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632957, 38.499165, 17.261545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406070, 0.319247, 0.856264,
		0.354355, 0.918690, -0.174474,
		-0.842342, 0.232573, -0.486179,
		39.380257, 38.568935, 17.115692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678162, 39.151554, 17.534977>,  <39.969894, 38.406136, 17.456017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678162, 39.151554, 17.534977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378807, 38.894028, 17.471209>,  <39.199196, 38.739513, 17.432947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378807, 38.894028, 17.471209>,  <39.678162, 39.151554, 17.534977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378807, 38.894028, 17.471209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355854, 0.186916, 0.915658,
		-0.559718, 0.741998, -0.368991,
		-0.748387, -0.643817, -0.159423,
		39.154289, 38.700882, 17.423382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047928, 39.449818, 17.608646>,  <39.678162, 39.151554, 17.534977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047928, 39.449818, 17.608646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031040, 39.058548, 17.690018>,  <39.020908, 38.823784, 17.738840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031040, 39.058548, 17.690018>,  <39.047928, 39.449818, 17.608646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031040, 39.058548, 17.690018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172274, 0.207689, 0.962905,
		-0.984144, 0.005612, -0.177284,
		-0.042223, -0.978179, 0.203429,
		39.018372, 38.765095, 17.751047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511211, 39.333439, 17.997953>,  <39.047928, 39.449818, 17.608646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511211, 39.333439, 17.997953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709206, 38.995914, 18.080872>,  <38.828003, 38.793400, 18.130623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709206, 38.995914, 18.080872>,  <38.511211, 39.333439, 17.997953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709206, 38.995914, 18.080872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180641, 0.133423, 0.974457,
		-0.849918, -0.519785, -0.086385,
		0.494983, -0.843814, 0.207294,
		38.857700, 38.742771, 18.143059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159077, 39.027710, 18.603113>,  <38.511211, 39.333439, 17.997953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159077, 39.027710, 18.603113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504177, 38.825642, 18.594482>,  <38.711235, 38.704399, 18.589304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504177, 38.825642, 18.594482>,  <38.159077, 39.027710, 18.603113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504177, 38.825642, 18.594482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051730, 0.045739, 0.997613,
		-0.502979, -0.861806, 0.065593,
		0.862749, -0.505172, -0.021575,
		38.763000, 38.674091, 18.588009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033878, 38.413521, 19.086142>,  <38.159077, 39.027710, 18.603113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033878, 38.413521, 19.086142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424934, 38.490067, 19.051275>,  <38.659569, 38.535992, 19.030355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424934, 38.490067, 19.051275>,  <38.033878, 38.413521, 19.086142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424934, 38.490067, 19.051275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098621, -0.051148, 0.993810,
		0.185719, -0.980186, -0.068877,
		0.977641, 0.191362, -0.087167,
		38.718227, 38.547474, 19.025126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251774, 37.978321, 19.556938>,  <38.033878, 38.413521, 19.086142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251774, 37.978321, 19.556938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565491, 38.218800, 19.495687>,  <38.753719, 38.363087, 19.458937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565491, 38.218800, 19.495687>,  <38.251774, 37.978321, 19.556938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565491, 38.218800, 19.495687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257320, -0.090640, 0.962066,
		0.564515, -0.793941, -0.225789,
		0.784289, 0.601201, -0.153129,
		38.800777, 38.399158, 19.449749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702805, 37.734905, 20.047436>,  <38.251774, 37.978321, 19.556938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702805, 37.734905, 20.047436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877293, 38.077225, 19.936205>,  <38.981983, 38.282616, 19.869467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877293, 38.077225, 19.936205>,  <38.702805, 37.734905, 20.047436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877293, 38.077225, 19.936205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520842, 0.011870, 0.853571,
		0.733784, -0.517177, -0.440557,
		0.436217, 0.855797, -0.278077,
		39.008160, 38.333965, 19.852781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430241, 37.783184, 20.313494>,  <38.702805, 37.734905, 20.047436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430241, 37.783184, 20.313494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352337, 38.170856, 20.253160>,  <39.305595, 38.403461, 20.216961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352337, 38.170856, 20.253160>,  <39.430241, 37.783184, 20.313494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352337, 38.170856, 20.253160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374806, 0.215645, 0.901675,
		0.906415, 0.119082, -0.405255,
		-0.194764, 0.969184, -0.150831,
		39.293907, 38.461613, 20.207911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032703, 38.175041, 20.618160>,  <39.430241, 37.783184, 20.313494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032703, 38.175041, 20.618160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709103, 38.409111, 20.595940>,  <39.514942, 38.549553, 20.582607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709103, 38.409111, 20.595940>,  <40.032703, 38.175041, 20.618160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709103, 38.409111, 20.595940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154368, 0.302698, 0.940502,
		0.567173, 0.752293, -0.335216,
		-0.809003, 0.585174, -0.055552,
		39.466400, 38.584663, 20.579273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194687, 38.686981, 21.034697>,  <40.032703, 38.175041, 20.618160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194687, 38.686981, 21.034697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797844, 38.728153, 21.006069>,  <39.559738, 38.752857, 20.988894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797844, 38.728153, 21.006069>,  <40.194687, 38.686981, 21.034697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797844, 38.728153, 21.006069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048390, 0.212226, 0.976022,
		0.115649, 0.971785, -0.205571,
		-0.992111, 0.102928, -0.071568,
		39.500210, 38.759033, 20.984598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010998, 39.357079, 21.287960>,  <40.194687, 38.686981, 21.034697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010998, 39.357079, 21.287960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669342, 39.149948, 21.307159>,  <39.464348, 39.025669, 21.318678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669342, 39.149948, 21.307159>,  <40.010998, 39.357079, 21.287960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669342, 39.149948, 21.307159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093239, 0.243284, 0.965463,
		-0.511619, 0.820164, -0.256080,
		-0.854138, -0.517826, 0.047997,
		39.413101, 38.994602, 21.321558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531506, 39.762074, 21.676153>,  <40.010998, 39.357079, 21.287960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531506, 39.762074, 21.676153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378204, 39.393669, 21.704031>,  <39.286224, 39.172626, 21.720757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378204, 39.393669, 21.704031>,  <39.531506, 39.762074, 21.676153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378204, 39.393669, 21.704031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084211, 0.109984, 0.990360,
		-0.919796, 0.373691, -0.119711,
		-0.383255, -0.921010, 0.069693,
		39.263229, 39.117367, 21.724939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104313, 39.855331, 22.205870>,  <39.531506, 39.762074, 21.676153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104313, 39.855331, 22.205870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070068, 39.456871, 22.198420>,  <39.049522, 39.217793, 22.193949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070068, 39.456871, 22.198420>,  <39.104313, 39.855331, 22.205870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070068, 39.456871, 22.198420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226798, 0.001282, 0.973941,
		-0.970172, 0.087602, -0.226035,
		-0.085609, -0.996155, -0.018625,
		39.044384, 39.158024, 22.192833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364449, 39.729198, 22.379925>,  <39.104313, 39.855331, 22.205870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364449, 39.729198, 22.379925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612656, 39.424736, 22.455402>,  <38.761578, 39.242058, 22.500689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612656, 39.424736, 22.455402>,  <38.364449, 39.729198, 22.379925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612656, 39.424736, 22.455402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261251, 0.026229, 0.964915,
		-0.739398, -0.648040, -0.182577,
		0.620515, -0.761155, 0.188695,
		38.798809, 39.196388, 22.512011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958210, 39.130558, 22.642826>,  <38.364449, 39.729198, 22.379925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958210, 39.130558, 22.642826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338058, 39.103939, 22.765326>,  <38.565968, 39.087967, 22.838825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338058, 39.103939, 22.765326>,  <37.958210, 39.130558, 22.642826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338058, 39.103939, 22.765326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303418, 0.049411, 0.951576,
		-0.078458, -0.996559, 0.026730,
		0.949622, -0.066549, 0.306250,
		38.622944, 39.083973, 22.857201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848675, 38.748703, 23.255093>,  <37.958210, 39.130558, 22.642826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848675, 38.748703, 23.255093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231720, 38.860596, 23.282587>,  <38.461548, 38.927731, 23.299084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231720, 38.860596, 23.282587>,  <37.848675, 38.748703, 23.255093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231720, 38.860596, 23.282587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127477, 0.197557, 0.971968,
		0.258311, -0.939532, 0.224842,
		0.957614, 0.279732, 0.068737,
		38.519005, 38.944515, 23.303207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166996, 38.281273, 23.676264>,  <37.848675, 38.748703, 23.255093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166996, 38.281273, 23.676264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396084, 38.608727, 23.693413>,  <38.533535, 38.805199, 23.703703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396084, 38.608727, 23.693413>,  <38.166996, 38.281273, 23.676264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396084, 38.608727, 23.693413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192756, 0.083650, 0.977675,
		0.796770, -0.568193, 0.205704,
		0.572715, 0.818633, 0.042873,
		38.567898, 38.854317, 23.706274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606804, 38.122448, 24.224245>,  <38.166996, 38.281273, 23.676264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606804, 38.122448, 24.224245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563751, 38.512383, 24.146164>,  <38.537918, 38.746346, 24.099316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563751, 38.512383, 24.146164>,  <38.606804, 38.122448, 24.224245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563751, 38.512383, 24.146164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335309, 0.149243, 0.930212,
		0.935940, 0.165575, 0.310808,
		-0.107634, 0.974839, -0.195202,
		38.531460, 38.804832, 24.087603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963589, 38.316910, 24.863586>,  <38.606804, 38.122448, 24.224245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963589, 38.316910, 24.863586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803730, 38.666935, 24.754372>,  <38.707813, 38.876949, 24.688843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803730, 38.666935, 24.754372>,  <38.963589, 38.316910, 24.863586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803730, 38.666935, 24.754372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380356, 0.112706, 0.917947,
		0.834031, 0.470710, 0.287791,
		-0.399651, 0.875059, -0.273038,
		38.683834, 38.929451, 24.672461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107727, 38.797672, 25.346079>,  <38.963589, 38.316910, 24.863586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107727, 38.797672, 25.346079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791607, 38.952023, 25.155701>,  <38.601936, 39.044632, 25.041473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791607, 38.952023, 25.155701>,  <39.107727, 38.797672, 25.346079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791607, 38.952023, 25.155701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496198, 0.052645, 0.866612,
		0.359460, 0.921047, 0.149865,
		-0.790301, 0.385876, -0.475945,
		38.554516, 39.067783, 25.012917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749794, 39.369461, 25.798044>,  <39.107727, 38.797672, 25.346079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749794, 39.369461, 25.798044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469448, 39.240704, 25.543430>,  <38.301239, 39.163452, 25.390661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469448, 39.240704, 25.543430>,  <38.749794, 39.369461, 25.798044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469448, 39.240704, 25.543430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673965, 0.006610, 0.738733,
		-0.233583, 0.946754, -0.221574,
		-0.700864, -0.321889, -0.636536,
		38.259190, 39.144138, 25.352470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191208, 39.835911, 25.858801>,  <38.749794, 39.369461, 25.798044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191208, 39.835911, 25.858801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042065, 39.501934, 25.696888>,  <37.952579, 39.301548, 25.599741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042065, 39.501934, 25.696888>,  <38.191208, 39.835911, 25.858801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042065, 39.501934, 25.696888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767185, 0.032026, 0.640626,
		-0.521921, 0.549407, -0.652495,
		-0.372861, -0.834941, -0.404782,
		37.930206, 39.251453, 25.575453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394329, 39.898239, 25.945818>,  <38.191208, 39.835911, 25.858801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394329, 39.898239, 25.945818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467411, 39.508251, 25.895147>,  <37.511261, 39.274258, 25.864744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467411, 39.508251, 25.895147>,  <37.394329, 39.898239, 25.945818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467411, 39.508251, 25.895147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717095, -0.220292, 0.661246,
		-0.672603, -0.029969, -0.739396,
		0.182700, -0.974973, -0.126678,
		37.522221, 39.215759, 25.857143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717674, 39.617649, 25.775770>,  <37.394329, 39.898239, 25.945818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717674, 39.617649, 25.775770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964401, 39.324200, 25.889847>,  <37.112438, 39.148129, 25.958294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964401, 39.324200, 25.889847>,  <36.717674, 39.617649, 25.775770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964401, 39.324200, 25.889847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643414, -0.261244, 0.719562,
		-0.453382, -0.627335, -0.633163,
		0.616817, -0.733623, 0.285193,
		37.149445, 39.104115, 25.975405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330128, 39.048489, 25.809561>,  <36.717674, 39.617649, 25.775770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330128, 39.048489, 25.809561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646633, 38.920872, 26.018217>,  <36.836536, 38.844299, 26.143410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646633, 38.920872, 26.018217>,  <36.330128, 39.048489, 25.809561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646633, 38.920872, 26.018217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602211, -0.258696, 0.755260,
		-0.106017, -0.911749, -0.396831,
		0.791266, -0.319046, 0.521639,
		36.884014, 38.825157, 26.174709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177536, 38.363049, 25.965000>,  <36.330128, 39.048489, 25.809561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177536, 38.363049, 25.965000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436310, 38.500782, 26.237150>,  <36.591576, 38.583424, 26.400440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436310, 38.500782, 26.237150>,  <36.177536, 38.363049, 25.965000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436310, 38.500782, 26.237150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666634, -0.177823, 0.723863,
		0.370237, -0.921853, 0.114505,
		0.646934, 0.344334, 0.680376,
		36.630390, 38.604080, 26.441263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977692, 37.931366, 26.545910>,  <36.177536, 38.363049, 25.965000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977692, 37.931366, 26.545910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207779, 38.206734, 26.722637>,  <36.345833, 38.371956, 26.828672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207779, 38.206734, 26.722637>,  <35.977692, 37.931366, 26.545910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207779, 38.206734, 26.722637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543317, -0.082229, 0.835491,
		0.611499, -0.720636, 0.326731,
		0.575218, 0.688420, 0.441817,
		36.380344, 38.413261, 26.855183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136616, 37.723618, 27.141811>,  <35.977692, 37.931366, 26.545910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136616, 37.723618, 27.141811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189266, 38.116989, 27.191673>,  <36.220856, 38.353012, 27.221590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189266, 38.116989, 27.191673>,  <36.136616, 37.723618, 27.141811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189266, 38.116989, 27.191673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552410, -0.031648, 0.832972,
		0.823115, -0.178501, 0.539091,
		0.131626, 0.983431, 0.124655,
		36.228752, 38.412018, 27.229071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431324, 37.849854, 27.813490>,  <36.136616, 37.723618, 27.141811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431324, 37.849854, 27.813490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263599, 38.194820, 27.700058>,  <36.162964, 38.401798, 27.631998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263599, 38.194820, 27.700058>,  <36.431324, 37.849854, 27.813490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263599, 38.194820, 27.700058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515118, 0.031198, 0.856551,
		0.747550, 0.505239, 0.431164,
		-0.419312, 0.862415, -0.283580,
		36.137806, 38.453545, 27.614985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399242, 38.209454, 28.438643>,  <36.431324, 37.849854, 27.813490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399242, 38.209454, 28.438643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146835, 38.398132, 28.192289>,  <35.995392, 38.511341, 28.044477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146835, 38.398132, 28.192289>,  <36.399242, 38.209454, 28.438643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146835, 38.398132, 28.192289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651402, 0.108966, 0.750867,
		0.421292, 0.875002, 0.238504,
		-0.631021, 0.471697, -0.615885,
		35.957527, 38.539642, 28.007524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226482, 38.806660, 28.735521>,  <36.399242, 38.209454, 28.438643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226482, 38.806660, 28.735521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929241, 38.718254, 28.482870>,  <35.750896, 38.665211, 28.331280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929241, 38.718254, 28.482870>,  <36.226482, 38.806660, 28.735521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929241, 38.718254, 28.482870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668371, 0.198798, 0.716770,
		-0.032848, 0.954795, -0.295445,
		-0.743102, -0.221012, -0.631627,
		35.706310, 38.651951, 28.293383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833710, 39.379082, 28.866970>,  <36.226482, 38.806660, 28.735521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833710, 39.379082, 28.866970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628616, 39.092606, 28.677582>,  <35.505562, 38.920719, 28.563948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628616, 39.092606, 28.677582>,  <35.833710, 39.379082, 28.866970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628616, 39.092606, 28.677582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747976, 0.101903, 0.655856,
		-0.421470, 0.690425, -0.587943,
		-0.512733, -0.716191, -0.473472,
		35.474796, 38.877747, 28.535540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217651, 39.500763, 29.036531>,  <35.833710, 39.379082, 28.866970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217651, 39.500763, 29.036531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181747, 39.117611, 28.927422>,  <35.160206, 38.887718, 28.861956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181747, 39.117611, 28.927422>,  <35.217651, 39.500763, 29.036531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181747, 39.117611, 28.927422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542079, -0.182772, 0.820210,
		-0.835520, 0.221486, -0.502843,
		-0.089759, -0.957882, -0.272773,
		35.154819, 38.830246, 28.845591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442493, 39.358414, 29.051556>,  <35.217651, 39.500763, 29.036531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442493, 39.358414, 29.051556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660995, 39.023411, 29.057045>,  <34.792095, 38.822411, 29.060339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660995, 39.023411, 29.057045>,  <34.442493, 39.358414, 29.051556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660995, 39.023411, 29.057045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466060, -0.290288, 0.835775,
		-0.695983, -0.462943, -0.548900,
		0.546255, -0.837506, 0.013724,
		34.824871, 38.772160, 29.061163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936455, 38.967289, 29.291410>,  <34.442493, 39.358414, 29.051556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936455, 38.967289, 29.291410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285400, 38.777439, 29.338243>,  <34.494770, 38.663528, 29.366343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285400, 38.777439, 29.338243>,  <33.936455, 38.967289, 29.291410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285400, 38.777439, 29.338243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312260, -0.356745, 0.880470,
		-0.376135, -0.804646, -0.459420,
		0.872363, -0.474634, 0.117074,
		34.547112, 38.635052, 29.373367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774914, 38.251526, 29.476454>,  <33.936455, 38.967289, 29.291410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774914, 38.251526, 29.476454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130280, 38.355766, 29.627617>,  <34.343498, 38.418312, 29.718315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130280, 38.355766, 29.627617>,  <33.774914, 38.251526, 29.476454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130280, 38.355766, 29.627617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307094, -0.274500, 0.911232,
		0.341203, -0.925601, -0.163840,
		0.888411, 0.260601, 0.377907,
		34.396801, 38.433949, 29.740990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826218, 37.876690, 30.000111>,  <33.774914, 38.251526, 29.476454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826218, 37.876690, 30.000111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141319, 38.112034, 30.073078>,  <34.330379, 38.253239, 30.116859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141319, 38.112034, 30.073078>,  <33.826218, 37.876690, 30.000111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141319, 38.112034, 30.073078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061860, -0.219084, 0.973743,
		0.612873, -0.778357, -0.136189,
		0.787756, 0.588356, 0.182419,
		34.377647, 38.288540, 30.127804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242870, 37.583256, 30.546005>,  <33.826218, 37.876690, 30.000111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242870, 37.583256, 30.546005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352615, 37.967785, 30.555742>,  <34.418461, 38.198502, 30.561584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352615, 37.967785, 30.555742>,  <34.242870, 37.583256, 30.546005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352615, 37.967785, 30.555742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078539, -0.047631, 0.995773,
		0.958414, -0.271288, -0.088569,
		0.274360, 0.961319, 0.024343,
		34.434925, 38.256180, 30.563046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948681, 37.635246, 30.925863>,  <34.242870, 37.583256, 30.546005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948681, 37.635246, 30.925863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748917, 37.981567, 30.938364>,  <34.629059, 38.189362, 30.945866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748917, 37.981567, 30.938364>,  <34.948681, 37.635246, 30.925863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748917, 37.981567, 30.938364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003111, -0.034281, 0.999408,
		0.866360, 0.499212, 0.014427,
		-0.499411, 0.865802, 0.031253,
		34.599094, 38.241306, 30.947741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285648, 38.081730, 31.450148>,  <34.948681, 37.635246, 30.925863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285648, 38.081730, 31.450148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916492, 38.227772, 31.401209>,  <34.695000, 38.315395, 31.371845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916492, 38.227772, 31.401209>,  <35.285648, 38.081730, 31.450148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916492, 38.227772, 31.401209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126529, 0.012542, 0.991883,
		0.363672, 0.930883, 0.034621,
		-0.922894, 0.365100, -0.122345,
		34.639626, 38.337303, 31.364506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673107, 38.656494, 31.807699>,  <35.285648, 38.081730, 31.450148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673107, 38.656494, 31.807699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051220, 38.556870, 31.892002>,  <36.278088, 38.497093, 31.942583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051220, 38.556870, 31.892002>,  <35.673107, 38.656494, 31.807699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051220, 38.556870, 31.892002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314803, 0.526517, -0.789734,
		0.085726, 0.812864, 0.576110,
		0.945278, -0.249062, 0.210756,
		36.334805, 38.482151, 31.955229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024540, 39.266029, 31.704967>,  <35.673107, 38.656494, 31.807699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024540, 39.266029, 31.704967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302071, 38.978115, 31.695971>,  <36.468590, 38.805367, 31.690573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302071, 38.978115, 31.695971>,  <36.024540, 39.266029, 31.704967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302071, 38.978115, 31.695971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406062, 0.416827, -0.813246,
		0.594741, 0.555119, 0.581486,
		0.693827, -0.719790, -0.022491,
		36.510220, 38.762177, 31.689222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672993, 39.595104, 31.764946>,  <36.024540, 39.266029, 31.704967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672993, 39.595104, 31.764946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724674, 39.238651, 31.590965>,  <36.755684, 39.024780, 31.486576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724674, 39.238651, 31.590965>,  <36.672993, 39.595104, 31.764946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724674, 39.238651, 31.590965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500909, 0.437204, -0.746956,
		0.855802, -0.121362, 0.502866,
		0.129203, -0.891136, -0.434951,
		36.763435, 38.971310, 31.460480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290089, 39.707973, 31.293207>,  <36.672993, 39.595104, 31.764946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290089, 39.707973, 31.293207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194496, 39.342018, 31.163057>,  <37.137142, 39.122444, 31.084967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194496, 39.342018, 31.163057>,  <37.290089, 39.707973, 31.293207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194496, 39.342018, 31.163057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572085, 0.138096, -0.808485,
		0.784606, -0.379355, 0.490391,
		-0.238981, -0.914887, -0.325374,
		37.122803, 39.067551, 31.065445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925621, 39.449783, 31.048286>,  <37.290089, 39.707973, 31.293207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925621, 39.449783, 31.048286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651485, 39.229187, 30.858059>,  <37.487003, 39.096828, 30.743923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651485, 39.229187, 30.858059>,  <37.925621, 39.449783, 31.048286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651485, 39.229187, 30.858059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615223, -0.089071, -0.783306,
		0.389626, -0.829413, 0.400333,
		-0.685341, -0.551490, -0.475569,
		37.445885, 39.063740, 30.715387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296204, 38.944004, 30.766380>,  <37.925621, 39.449783, 31.048286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296204, 38.944004, 30.766380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962975, 38.908646, 30.547960>,  <37.763035, 38.887432, 30.416908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962975, 38.908646, 30.547960>,  <38.296204, 38.944004, 30.766380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962975, 38.908646, 30.547960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550352, -0.231795, -0.802112,
		-0.055668, -0.968740, 0.241751,
		-0.833075, -0.088397, -0.546052,
		37.713051, 38.882126, 30.384144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357395, 38.347950, 30.370977>,  <38.296204, 38.944004, 30.766380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357395, 38.347950, 30.370977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065865, 38.541866, 30.177568>,  <37.890945, 38.658215, 30.061523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065865, 38.541866, 30.177568>,  <38.357395, 38.347950, 30.370977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065865, 38.541866, 30.177568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527075, -0.053522, -0.848131,
		-0.437044, -0.872992, -0.216513,
		-0.728824, 0.484789, -0.483524,
		37.847218, 38.687302, 30.032511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103443, 37.919659, 29.874790>,  <38.357395, 38.347950, 30.370977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103443, 37.919659, 29.874790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089104, 38.310795, 29.792282>,  <38.080502, 38.545475, 29.742777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089104, 38.310795, 29.792282>,  <38.103443, 37.919659, 29.874790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089104, 38.310795, 29.792282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528644, -0.156605, -0.834272,
		-0.848087, -0.138949, -0.511314,
		-0.035847, 0.977838, -0.206270,
		38.078350, 38.604145, 29.730402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996761, 37.933884, 29.205626>,  <38.103443, 37.919659, 29.874790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996761, 37.933884, 29.205626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135750, 38.299919, 29.287485>,  <38.219143, 38.519539, 29.336601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135750, 38.299919, 29.287485>,  <37.996761, 37.933884, 29.205626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135750, 38.299919, 29.287485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513067, -0.002862, -0.858344,
		-0.784872, 0.403251, -0.470494,
		0.347474, 0.915085, 0.204649,
		38.239990, 38.574444, 29.348879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998737, 38.225033, 28.583847>,  <37.996761, 37.933884, 29.205626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998737, 38.225033, 28.583847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214478, 38.501450, 28.776329>,  <38.343922, 38.667301, 28.891817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214478, 38.501450, 28.776329>,  <37.998737, 38.225033, 28.583847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214478, 38.501450, 28.776329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575038, 0.115209, -0.809974,
		-0.615166, 0.713573, -0.335238,
		0.539353, 0.691043, 0.481204,
		38.376282, 38.708763, 28.920691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022591, 38.787380, 28.106031>,  <37.998737, 38.225033, 28.583847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022591, 38.787380, 28.106031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327003, 38.841797, 28.359749>,  <38.509651, 38.874447, 28.511978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327003, 38.841797, 28.359749>,  <38.022591, 38.787380, 28.106031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327003, 38.841797, 28.359749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622895, 0.119877, -0.773066,
		-0.181210, 0.983423, 0.006487,
		0.761029, 0.136046, 0.634293,
		38.555313, 38.882610, 28.550037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400047, 39.464176, 28.050192>,  <38.022591, 38.787380, 28.106031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400047, 39.464176, 28.050192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686008, 39.252140, 28.232580>,  <38.857586, 39.124916, 28.342012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686008, 39.252140, 28.232580>,  <38.400047, 39.464176, 28.050192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686008, 39.252140, 28.232580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689611, 0.426791, -0.585053,
		0.115529, 0.732700, 0.670674,
		0.714906, -0.530095, 0.455971,
		38.900478, 39.093113, 28.369371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989979, 39.682404, 27.882521>,  <38.400047, 39.464176, 28.050192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989979, 39.682404, 27.882521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184868, 39.364635, 28.027578>,  <39.301800, 39.173973, 28.114613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184868, 39.364635, 28.027578>,  <38.989979, 39.682404, 27.882521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184868, 39.364635, 28.027578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745288, 0.161825, -0.646806,
		0.455151, 0.585413, 0.670917,
		0.487220, -0.794421, 0.362647,
		39.331036, 39.126308, 28.136372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647076, 39.934464, 28.061350>,  <38.989979, 39.682404, 27.882521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647076, 39.934464, 28.061350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683380, 39.537617, 28.026802>,  <39.705162, 39.299507, 28.006073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683380, 39.537617, 28.026802>,  <39.647076, 39.934464, 28.061350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683380, 39.537617, 28.026802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719786, 0.125285, -0.682797,
		0.688238, -0.000196, 0.725485,
		0.090759, -0.992121, -0.086367,
		39.710609, 39.239979, 28.000893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330879, 39.783821, 28.073954>,  <39.647076, 39.934464, 28.061350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330879, 39.783821, 28.073954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181973, 39.459290, 27.893661>,  <40.092628, 39.264568, 27.785486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181973, 39.459290, 27.893661>,  <40.330879, 39.783821, 28.073954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181973, 39.459290, 27.893661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595139, 0.163988, -0.786714,
		0.712201, -0.561112, 0.421809,
		-0.372262, -0.811333, -0.450732,
		40.070293, 39.215889, 27.758442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828465, 39.481956, 27.698807>,  <40.330879, 39.783821, 28.073954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828465, 39.481956, 27.698807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529530, 39.307392, 27.498392>,  <40.350170, 39.202652, 27.378143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529530, 39.307392, 27.498392>,  <40.828465, 39.481956, 27.698807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529530, 39.307392, 27.498392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532904, 0.056719, -0.844272,
		0.396870, -0.897957, 0.190179,
		-0.747334, -0.436413, -0.501035,
		40.305328, 39.176468, 27.348082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173504, 38.927025, 27.186518>,  <40.828465, 39.481956, 27.698807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173504, 38.927025, 27.186518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806946, 39.016827, 27.053965>,  <40.587009, 39.070705, 26.974434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806946, 39.016827, 27.053965>,  <41.173504, 38.927025, 27.186518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806946, 39.016827, 27.053965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338881, -0.005422, -0.940814,
		-0.213010, -0.974459, -0.071110,
		-0.916398, 0.224500, -0.331381,
		40.532024, 39.084175, 26.954550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917042, 38.360661, 26.775696>,  <41.173504, 38.927025, 27.186518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917042, 38.360661, 26.775696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721375, 38.682491, 26.641012>,  <40.603973, 38.875587, 26.560202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721375, 38.682491, 26.641012>,  <40.917042, 38.360661, 26.775696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721375, 38.682491, 26.641012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304263, -0.204381, -0.930404,
		-0.817395, -0.557576, -0.144825,
		-0.489171, 0.804573, -0.336710,
		40.574623, 38.923862, 26.539999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711063, 38.132721, 26.195520>,  <40.917042, 38.360661, 26.775696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711063, 38.132721, 26.195520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665821, 38.525879, 26.137377>,  <40.638676, 38.761772, 26.102489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665821, 38.525879, 26.137377>,  <40.711063, 38.132721, 26.195520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665821, 38.525879, 26.137377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300132, -0.105668, -0.948027,
		-0.947169, -0.150852, -0.283046,
		-0.113103, 0.982893, -0.145361,
		40.631889, 38.820747, 26.093769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528400, 38.171135, 25.488012>,  <40.711063, 38.132721, 26.195520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528400, 38.171135, 25.488012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623512, 38.548237, 25.581533>,  <40.680580, 38.774498, 25.637646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623512, 38.548237, 25.581533>,  <40.528400, 38.171135, 25.488012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623512, 38.548237, 25.581533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186469, 0.191922, -0.963533,
		-0.953251, 0.272710, -0.130159,
		0.237784, 0.942759, 0.233802,
		40.694847, 38.831066, 25.651674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958931, 38.558556, 25.426105>,  <40.528400, 38.171135, 25.488012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958931, 38.558556, 25.426105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246792, 38.822186, 25.338720>,  <40.419506, 38.980362, 25.286289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246792, 38.822186, 25.338720>,  <39.958931, 38.558556, 25.426105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246792, 38.822186, 25.338720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050500, -0.363481, -0.930232,
		-0.692500, 0.658408, -0.294862,
		0.719649, 0.659076, -0.218461,
		40.462685, 39.019909, 25.273182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792973, 38.851154, 24.768805>,  <39.958931, 38.558556, 25.426105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792973, 38.851154, 24.768805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177509, 38.949902, 24.817593>,  <40.408234, 39.009148, 24.846865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177509, 38.949902, 24.817593>,  <39.792973, 38.851154, 24.768805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177509, 38.949902, 24.817593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161438, -0.146482, -0.975951,
		-0.223062, 0.957915, -0.180673,
		0.961343, 0.246865, 0.121969,
		40.465912, 39.023960, 24.854183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954346, 39.448551, 24.334339>,  <39.792973, 38.851154, 24.768805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954346, 39.448551, 24.334339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286133, 39.234245, 24.397516>,  <40.485203, 39.105663, 24.435423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286133, 39.234245, 24.397516>,  <39.954346, 39.448551, 24.334339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286133, 39.234245, 24.397516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133671, -0.084148, -0.987447,
		0.542331, 0.840163, 0.001819,
		0.829463, -0.535766, 0.157942,
		40.534973, 39.073517, 24.444899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445370, 39.793552, 23.932959>,  <39.954346, 39.448551, 24.334339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445370, 39.793552, 23.932959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585079, 39.423412, 23.991936>,  <40.668903, 39.201328, 24.027321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585079, 39.423412, 23.991936>,  <40.445370, 39.793552, 23.932959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585079, 39.423412, 23.991936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304626, -0.036669, -0.951766,
		0.886121, 0.377342, 0.269077,
		0.349274, -0.925348, 0.147441,
		40.689861, 39.145809, 24.036167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091618, 39.812767, 23.512297>,  <40.445370, 39.793552, 23.932959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091618, 39.812767, 23.512297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983490, 39.433277, 23.577835>,  <40.918613, 39.205582, 23.617159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983490, 39.433277, 23.577835>,  <41.091618, 39.812767, 23.512297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983490, 39.433277, 23.577835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334447, -0.252118, -0.908065,
		0.902815, -0.190664, 0.385450,
		-0.270314, -0.948727, 0.163848,
		40.902397, 39.148659, 23.626989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637608, 39.584290, 23.129175>,  <41.091618, 39.812767, 23.512297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637608, 39.584290, 23.129175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413864, 39.260845, 23.202135>,  <41.279617, 39.066780, 23.245911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413864, 39.260845, 23.202135>,  <41.637608, 39.584290, 23.129175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413864, 39.260845, 23.202135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529508, -0.517853, -0.671900,
		0.637759, -0.279253, 0.717830,
		-0.559361, -0.808607, 0.182399,
		41.246056, 39.018265, 23.256855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016720, 38.916218, 23.261419>,  <41.637608, 39.584290, 23.129175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016720, 38.916218, 23.261419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657425, 38.805061, 23.125217>,  <41.441849, 38.738369, 23.043495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657425, 38.805061, 23.125217>,  <42.016720, 38.916218, 23.261419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657425, 38.805061, 23.125217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439433, -0.553628, -0.707386,
		0.008061, -0.785031, 0.619403,
		-0.898239, -0.277888, -0.340506,
		41.387955, 38.721695, 23.023066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006786, 38.123077, 23.144180>,  <42.016720, 38.916218, 23.261419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006786, 38.123077, 23.144180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721188, 38.293037, 22.921591>,  <41.549828, 38.395016, 22.788036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721188, 38.293037, 22.921591>,  <42.006786, 38.123077, 23.144180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721188, 38.293037, 22.921591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334087, -0.491717, -0.804115,
		-0.615301, -0.760046, 0.209128,
		-0.713996, 0.424906, -0.556476,
		41.506989, 38.420509, 22.754648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784302, 37.616264, 22.759811>,  <42.006786, 38.123077, 23.144180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784302, 37.616264, 22.759811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667210, 37.940269, 22.556561>,  <41.596954, 38.134670, 22.434610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667210, 37.940269, 22.556561>,  <41.784302, 37.616264, 22.759811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667210, 37.940269, 22.556561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154030, -0.484520, -0.861113,
		-0.943708, -0.330338, 0.017067,
		-0.292727, 0.810011, -0.508127,
		41.579391, 38.183273, 22.404121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502251, 37.242924, 22.114214>,  <41.784302, 37.616264, 22.759811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502251, 37.242924, 22.114214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563560, 37.631214, 22.040234>,  <41.600346, 37.864189, 21.995846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563560, 37.631214, 22.040234>,  <41.502251, 37.242924, 22.114214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563560, 37.631214, 22.040234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188213, -0.212412, -0.958883,
		-0.970095, 0.112158, -0.215259,
		0.153270, 0.970722, -0.184950,
		41.609543, 37.922432, 21.984749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122120, 37.331867, 21.521641>,  <41.502251, 37.242924, 22.114214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122120, 37.331867, 21.521641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398960, 37.620506, 21.528414>,  <41.565063, 37.793690, 21.532478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398960, 37.620506, 21.528414>,  <41.122120, 37.331867, 21.521641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398960, 37.620506, 21.528414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263512, -0.230759, -0.936649,
		-0.671977, 0.652721, -0.349859,
		0.692104, 0.721599, 0.016935,
		41.606590, 37.836987, 21.533495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047070, 37.763348, 20.921690>,  <41.122120, 37.331867, 21.521641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047070, 37.763348, 20.921690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427277, 37.827507, 21.028109>,  <41.655403, 37.866001, 21.091961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427277, 37.827507, 21.028109>,  <41.047070, 37.763348, 20.921690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427277, 37.827507, 21.028109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297072, -0.218800, -0.929448,
		-0.090871, 0.962496, -0.255625,
		0.950521, 0.160399, 0.266048,
		41.712433, 37.875626, 21.107924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408081, 38.090675, 20.361481>,  <41.047070, 37.763348, 20.921690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408081, 38.090675, 20.361481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695259, 37.914124, 20.576792>,  <41.867565, 37.808193, 20.705978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695259, 37.914124, 20.576792>,  <41.408081, 38.090675, 20.361481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695259, 37.914124, 20.576792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360170, -0.426181, -0.829848,
		0.595684, 0.789653, -0.147000,
		0.717941, -0.441382, 0.538278,
		41.910641, 37.781708, 20.738276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035217, 38.164536, 19.847946>,  <41.408081, 38.090675, 20.361481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035217, 38.164536, 19.847946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141926, 37.909592, 20.137112>,  <42.205952, 37.756626, 20.310612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141926, 37.909592, 20.137112>,  <42.035217, 38.164536, 19.847946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141926, 37.909592, 20.137112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562368, -0.506209, -0.653831,
		0.782671, 0.580968, 0.223388,
		0.266774, -0.637360, 0.722913,
		42.221958, 37.718384, 20.353985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729591, 38.068729, 19.701969>,  <42.035217, 38.164536, 19.847946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729591, 38.068729, 19.701969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616173, 37.772003, 19.945051>,  <42.548122, 37.593967, 20.090900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616173, 37.772003, 19.945051>,  <42.729591, 38.068729, 19.701969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616173, 37.772003, 19.945051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732393, -0.576599, -0.362125,
		0.619034, 0.342400, 0.706795,
		-0.283545, -0.741819, 0.607706,
		42.531109, 37.549458, 20.127363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342796, 37.739983, 19.846601>,  <42.729591, 38.068729, 19.701969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342796, 37.739983, 19.846601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058960, 37.463406, 19.900833>,  <42.888657, 37.297459, 19.933372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058960, 37.463406, 19.900833>,  <43.342796, 37.739983, 19.846601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058960, 37.463406, 19.900833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616381, -0.702373, -0.356016,
		0.341393, -0.169057, 0.924592,
		-0.709596, -0.691442, 0.135581,
		42.846081, 37.255974, 19.941507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693848, 37.099052, 19.983459>,  <43.342796, 37.739983, 19.846601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.693848, 37.099052, 19.983459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.327675, 36.957535, 19.906704>,  <43.107971, 36.872623, 19.860651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.327675, 36.957535, 19.906704>,  <43.693848, 37.099052, 19.983459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.327675, 36.957535, 19.906704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399838, -0.744901, -0.534090,
		0.046019, -0.565646, 0.823363,
		-0.915430, -0.353790, -0.191887,
		43.053047, 36.851398, 19.849138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657005, 36.269497, 20.105694>,  <43.693848, 37.099052, 19.983459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657005, 36.269497, 20.105694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.336857, 36.351406, 19.880314>,  <43.144768, 36.400551, 19.745085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.336857, 36.351406, 19.880314>,  <43.657005, 36.269497, 20.105694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336857, 36.351406, 19.880314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215142, -0.779150, -0.588761,
		-0.559573, -0.592449, 0.579554,
		-0.800370, 0.204768, -0.563451,
		43.096745, 36.412838, 19.711279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203407, 35.627628, 20.221790>,  <43.657005, 36.269497, 20.105694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203407, 35.627628, 20.221790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373047, 35.289444, 20.351614>,  <43.474831, 35.086533, 20.429508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373047, 35.289444, 20.351614>,  <43.203407, 35.627628, 20.221790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373047, 35.289444, 20.351614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371324, 0.164537, 0.913808,
		-0.825992, -0.508059, -0.244161,
		0.424095, -0.845461, 0.324561,
		43.500275, 35.035805, 20.448982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697227, 35.291798, 20.632566>,  <43.203407, 35.627628, 20.221790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697227, 35.291798, 20.632566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029648, 35.106499, 20.755699>,  <43.229099, 34.995319, 20.829578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029648, 35.106499, 20.755699>,  <42.697227, 35.291798, 20.632566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029648, 35.106499, 20.755699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258910, 0.167630, 0.951244,
		-0.492262, -0.870232, 0.019369,
		0.831050, -0.463246, 0.307829,
		43.278961, 34.967525, 20.848047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448868, 34.878773, 21.131275>,  <42.697227, 35.291798, 20.632566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448868, 34.878773, 21.131275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838428, 34.955376, 21.180017>,  <43.072163, 35.001339, 21.209263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838428, 34.955376, 21.180017>,  <42.448868, 34.878773, 21.131275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838428, 34.955376, 21.180017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154549, 0.166250, 0.973897,
		0.166250, -0.967309, 0.191508,
		-0.973897, -0.191508, -0.121857,
		43.130596, 35.012829, 21.216574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689709, 34.435490, 21.716673>,  <42.448868, 34.878773, 21.131275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689709, 34.435490, 21.716673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949471, 34.730804, 21.643787>,  <43.105328, 34.907993, 21.600056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949471, 34.730804, 21.643787>,  <42.689709, 34.435490, 21.716673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949471, 34.730804, 21.643787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047994, 0.199345, 0.978753,
		0.758924, -0.644356, 0.094023,
		0.649409, 0.738287, -0.182212,
		43.144295, 34.952290, 21.589123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259357, 34.220749, 22.068947>,  <42.689709, 34.435490, 21.716673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259357, 34.220749, 22.068947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283691, 34.616890, 22.019135>,  <43.298290, 34.854572, 21.989246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283691, 34.616890, 22.019135>,  <43.259357, 34.220749, 22.068947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283691, 34.616890, 22.019135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063499, 0.128351, 0.989694,
		0.996126, -0.052298, 0.070694,
		0.060833, 0.990349, -0.124533,
		43.301941, 34.913994, 21.981775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789734, 34.455349, 22.633093>,  <43.259357, 34.220749, 22.068947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789734, 34.455349, 22.633093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570927, 34.770466, 22.519850>,  <43.439644, 34.959538, 22.451904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570927, 34.770466, 22.519850>,  <43.789734, 34.455349, 22.633093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570927, 34.770466, 22.519850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062310, 0.298939, 0.952236,
		0.834798, 0.538532, -0.114438,
		-0.547019, 0.787794, -0.283109,
		43.406822, 35.006805, 22.434917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031029, 34.924007, 23.145308>,  <43.789734, 34.455349, 22.633093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031029, 34.924007, 23.145308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698822, 35.083065, 22.989300>,  <43.499496, 35.178497, 22.895695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698822, 35.083065, 22.989300>,  <44.031029, 34.924007, 23.145308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698822, 35.083065, 22.989300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259565, 0.343235, 0.902671,
		0.492809, 0.850923, -0.181851,
		-0.830522, 0.397642, -0.390019,
		43.449665, 35.202358, 22.872293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055027, 35.542362, 23.449074>,  <44.031029, 34.924007, 23.145308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055027, 35.542362, 23.449074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679672, 35.486740, 23.322525>,  <43.454460, 35.453365, 23.246595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679672, 35.486740, 23.322525>,  <44.055027, 35.542362, 23.449074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679672, 35.486740, 23.322525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344558, 0.305950, 0.887510,
		-0.026620, 0.941837, -0.335013,
		-0.938387, -0.139057, -0.316374,
		43.398155, 35.445023, 23.227613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737019, 36.147102, 23.628510>,  <44.055027, 35.542362, 23.449074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737019, 36.147102, 23.628510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453732, 35.872517, 23.562534>,  <43.283760, 35.707767, 23.522949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453732, 35.872517, 23.562534>,  <43.737019, 36.147102, 23.628510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453732, 35.872517, 23.562534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479501, 0.296222, 0.826033,
		-0.518180, 0.664097, -0.538947,
		-0.708215, -0.686460, -0.164939,
		43.241268, 35.666580, 23.513052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134327, 36.459805, 23.735632>,  <43.737019, 36.147102, 23.628510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134327, 36.459805, 23.735632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036907, 36.073185, 23.767784>,  <42.978455, 35.841213, 23.787075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036907, 36.073185, 23.767784>,  <43.134327, 36.459805, 23.735632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036907, 36.073185, 23.767784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651042, 0.224349, 0.725129,
		-0.718908, 0.124274, -0.683906,
		-0.243549, -0.966552, 0.080378,
		42.963844, 35.783218, 23.791897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339130, 36.349293, 23.801632>,  <43.134327, 36.459805, 23.735632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339130, 36.349293, 23.801632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498848, 36.014107, 23.950432>,  <42.594677, 35.812996, 24.039711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498848, 36.014107, 23.950432>,  <42.339130, 36.349293, 23.801632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498848, 36.014107, 23.950432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587076, 0.077964, 0.805769,
		-0.704206, -0.540130, -0.460818,
		0.399293, -0.837962, 0.372000,
		42.618637, 35.762718, 24.062033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698654, 35.902119, 24.031538>,  <42.339130, 36.349293, 23.801632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698654, 35.902119, 24.031538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028748, 35.807774, 24.236811>,  <42.226803, 35.751167, 24.359974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028748, 35.807774, 24.236811>,  <41.698654, 35.902119, 24.031538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028748, 35.807774, 24.236811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555201, -0.172066, 0.813723,
		-0.103621, -0.956433, -0.272943,
		0.825236, -0.235857, 0.513184,
		42.276318, 35.737015, 24.390766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440781, 35.290565, 24.500257>,  <41.698654, 35.902119, 24.031538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440781, 35.290565, 24.500257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785564, 35.435257, 24.642340>,  <41.992435, 35.522072, 24.727589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785564, 35.435257, 24.642340>,  <41.440781, 35.290565, 24.500257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785564, 35.435257, 24.642340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323524, -0.146954, 0.934739,
		0.390320, -0.920629, -0.009641,
		0.861964, 0.361728, 0.355205,
		42.044155, 35.543774, 24.748901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603771, 34.863861, 25.215261>,  <41.440781, 35.290565, 24.500257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603771, 34.863861, 25.215261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809105, 35.206520, 25.194712>,  <41.932304, 35.412117, 25.182383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809105, 35.206520, 25.194712>,  <41.603771, 34.863861, 25.215261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809105, 35.206520, 25.194712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171056, 0.160797, 0.972052,
		0.840968, -0.490200, 0.229077,
		0.513335, 0.856650, -0.051373,
		41.963104, 35.463516, 25.179300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961075, 34.917522, 25.792425>,  <41.603771, 34.863861, 25.215261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961075, 34.917522, 25.792425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992298, 35.303329, 25.691538>,  <42.011032, 35.534813, 25.631004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992298, 35.303329, 25.691538>,  <41.961075, 34.917522, 25.792425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992298, 35.303329, 25.691538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167221, 0.262074, 0.950449,
		0.982824, -0.032015, 0.181745,
		0.078059, 0.964517, -0.252219,
		42.015717, 35.592686, 25.615871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469643, 35.220436, 26.330763>,  <41.961075, 34.917522, 25.792425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469643, 35.220436, 26.330763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316677, 35.556194, 26.176270>,  <42.224895, 35.757648, 26.083574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316677, 35.556194, 26.176270>,  <42.469643, 35.220436, 26.330763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316677, 35.556194, 26.176270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145068, 0.358279, 0.922275,
		0.912531, 0.408724, -0.015243,
		-0.382417, 0.839393, -0.386234,
		42.201950, 35.808014, 26.060400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793427, 35.854733, 26.617306>,  <42.469643, 35.220436, 26.330763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793427, 35.854733, 26.617306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429413, 35.963692, 26.492317>,  <42.211006, 36.029068, 26.417324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429413, 35.963692, 26.492317>,  <42.793427, 35.854733, 26.617306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429413, 35.963692, 26.492317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216711, 0.329962, 0.918783,
		0.353380, 0.903838, -0.241245,
		-0.910032, 0.272399, -0.312474,
		42.156403, 36.045410, 26.398575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694496, 36.554688, 26.941103>,  <42.793427, 35.854733, 26.617306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694496, 36.554688, 26.941103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340508, 36.403744, 26.831980>,  <42.128113, 36.313179, 26.766506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340508, 36.403744, 26.831980>,  <42.694496, 36.554688, 26.941103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340508, 36.403744, 26.831980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416997, 0.381543, 0.824947,
		-0.207213, 0.843816, -0.495013,
		-0.884973, -0.377359, -0.272808,
		42.075016, 36.290535, 26.750137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179874, 37.135197, 27.045263>,  <42.694496, 36.554688, 26.941103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179874, 37.135197, 27.045263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934341, 36.819565, 27.035746>,  <41.787022, 36.630188, 27.030035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934341, 36.819565, 27.035746>,  <42.179874, 37.135197, 27.045263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934341, 36.819565, 27.035746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532398, 0.391528, 0.750506,
		-0.582890, 0.473354, -0.660436,
		-0.613834, -0.789077, -0.023794,
		41.750191, 36.582840, 27.028606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509041, 37.345528, 27.036942>,  <42.179874, 37.135197, 27.045263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509041, 37.345528, 27.036942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504162, 36.987503, 27.215254>,  <41.501236, 36.772690, 27.322241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504162, 36.987503, 27.215254>,  <41.509041, 37.345528, 27.036942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504162, 36.987503, 27.215254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345606, 0.422111, 0.838080,
		-0.938300, -0.143845, -0.314486,
		-0.012194, -0.895059, 0.445780,
		41.500504, 36.718987, 27.348988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972298, 37.420856, 27.472689>,  <41.509041, 37.345528, 27.036942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972298, 37.420856, 27.472689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105911, 37.077667, 27.628798>,  <41.186081, 36.871754, 27.722464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105911, 37.077667, 27.628798>,  <40.972298, 37.420856, 27.472689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105911, 37.077667, 27.628798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331674, 0.280580, 0.900703,
		-0.882278, -0.430307, -0.190843,
		0.334032, -0.857969, 0.390271,
		41.206120, 36.820278, 27.745878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463505, 37.149620, 27.856199>,  <40.972298, 37.420856, 27.472689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463505, 37.149620, 27.856199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777351, 36.950974, 28.004656>,  <40.965660, 36.831787, 28.093729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777351, 36.950974, 28.004656>,  <40.463505, 37.149620, 27.856199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777351, 36.950974, 28.004656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391440, 0.067408, 0.917731,
		-0.480778, -0.865349, -0.141506,
		0.784619, -0.496616, 0.371141,
		41.012737, 36.801991, 28.115997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196850, 36.600224, 28.152296>,  <40.463505, 37.149620, 27.856199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196850, 36.600224, 28.152296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550083, 36.635269, 28.336681>,  <40.762024, 36.656296, 28.447313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550083, 36.635269, 28.336681>,  <40.196850, 36.600224, 28.152296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550083, 36.635269, 28.336681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455853, -0.072593, 0.887089,
		0.111183, -0.993506, -0.024167,
		0.883083, 0.087613, 0.460964,
		40.815010, 36.661552, 28.474970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363300, 36.136738, 28.633585>,  <40.196850, 36.600224, 28.152296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363300, 36.136738, 28.633585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619217, 36.414215, 28.765923>,  <40.772766, 36.580704, 28.845325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619217, 36.414215, 28.765923>,  <40.363300, 36.136738, 28.633585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619217, 36.414215, 28.765923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463427, 0.004793, 0.886122,
		0.613114, -0.720252, 0.324544,
		0.639787, 0.693696, 0.330845,
		40.811153, 36.622322, 28.865177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470535, 35.974930, 29.324520>,  <40.363300, 36.136738, 28.633585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470535, 35.974930, 29.324520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589203, 36.356171, 29.300568>,  <40.660404, 36.584915, 29.286196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589203, 36.356171, 29.300568>,  <40.470535, 35.974930, 29.324520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589203, 36.356171, 29.300568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325183, 0.159777, 0.932056,
		0.897910, -0.257043, 0.357333,
		0.296672, 0.953100, -0.059879,
		40.678204, 36.642101, 29.282604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782623, 36.215523, 30.011101>,  <40.470535, 35.974930, 29.324520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782623, 36.215523, 30.011101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722206, 36.558338, 29.814058>,  <40.685955, 36.764027, 29.695833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722206, 36.558338, 29.814058>,  <40.782623, 36.215523, 30.011101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722206, 36.558338, 29.814058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249151, 0.449231, 0.857972,
		0.956613, 0.252326, 0.145679,
		-0.151045, 0.857043, -0.492608,
		40.676891, 36.815453, 29.666275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131275, 36.715942, 30.401333>,  <40.782623, 36.215523, 30.011101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131275, 36.715942, 30.401333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845390, 36.904869, 30.194990>,  <40.673859, 37.018227, 30.071184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845390, 36.904869, 30.194990>,  <41.131275, 36.715942, 30.401333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845390, 36.904869, 30.194990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297227, 0.462536, 0.835294,
		0.633126, 0.750318, -0.190193,
		-0.714708, 0.472317, -0.515858,
		40.630978, 37.046562, 30.040232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143116, 37.348270, 30.614325>,  <41.131275, 36.715942, 30.401333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143116, 37.348270, 30.614325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773846, 37.335781, 30.461084>,  <40.552284, 37.328285, 30.369141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773846, 37.335781, 30.461084>,  <41.143116, 37.348270, 30.614325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773846, 37.335781, 30.461084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358614, 0.428675, 0.829237,
		0.138332, 0.902919, -0.406941,
		-0.923179, -0.031225, -0.383099,
		40.496891, 37.326412, 30.346155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881645, 37.969521, 30.759398>,  <41.143116, 37.348270, 30.614325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881645, 37.969521, 30.759398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572968, 37.720795, 30.705976>,  <40.387760, 37.571560, 30.673923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572968, 37.720795, 30.705976>,  <40.881645, 37.969521, 30.759398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572968, 37.720795, 30.705976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497594, 0.459521, 0.735691,
		-0.396092, 0.634183, -0.664020,
		-0.771694, -0.621814, -0.133553,
		40.341461, 37.534252, 30.665911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241192, 38.372974, 30.844379>,  <40.881645, 37.969521, 30.759398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241192, 38.372974, 30.844379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150200, 37.990604, 30.918631>,  <40.095604, 37.761181, 30.963181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150200, 37.990604, 30.918631>,  <40.241192, 38.372974, 30.844379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150200, 37.990604, 30.918631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512440, 0.279611, 0.811926,
		-0.828045, 0.089574, -0.553461,
		-0.227481, -0.955926, 0.185629,
		40.081955, 37.703827, 30.974319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579720, 38.429043, 31.131065>,  <40.241192, 38.372974, 30.844379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579720, 38.429043, 31.131065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686325, 38.049824, 31.200548>,  <39.750290, 37.822292, 31.242239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686325, 38.049824, 31.200548>,  <39.579720, 38.429043, 31.131065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686325, 38.049824, 31.200548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508424, 0.014827, 0.860979,
		-0.818825, -0.317781, -0.478059,
		0.266515, -0.948048, 0.173708,
		39.766281, 37.765408, 31.252661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993210, 38.062775, 31.455845>,  <39.579720, 38.429043, 31.131065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993210, 38.062775, 31.455845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298767, 37.827606, 31.562292>,  <39.482101, 37.686504, 31.626160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298767, 37.827606, 31.562292>,  <38.993210, 38.062775, 31.455845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298767, 37.827606, 31.562292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346863, -0.026311, 0.937547,
		-0.544201, -0.808491, -0.224026,
		0.763892, -0.587920, 0.266117,
		39.527935, 37.651230, 31.642128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749748, 37.603371, 31.955044>,  <38.993210, 38.062775, 31.455845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749748, 37.603371, 31.955044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143570, 37.620415, 32.022964>,  <39.379864, 37.630642, 32.063717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143570, 37.620415, 32.022964>,  <38.749748, 37.603371, 31.955044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143570, 37.620415, 32.022964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159541, -0.180968, 0.970462,
		0.072078, -0.982566, -0.171376,
		0.984556, 0.042607, 0.169803,
		39.438938, 37.633198, 32.073906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782738, 37.104591, 32.385681>,  <38.749748, 37.603371, 31.955044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782738, 37.104591, 32.385681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128929, 37.297569, 32.439648>,  <39.336643, 37.413357, 32.472027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128929, 37.297569, 32.439648>,  <38.782738, 37.104591, 32.385681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128929, 37.297569, 32.439648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003308, -0.263803, 0.964571,
		0.500943, -0.835257, -0.226718,
		0.865474, 0.482445, 0.134913,
		39.388573, 37.442303, 32.480122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123959, 36.711132, 32.742653>,  <38.782738, 37.104591, 32.385681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123959, 36.711132, 32.742653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323048, 37.053497, 32.798779>,  <39.442501, 37.258915, 32.832455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323048, 37.053497, 32.798779>,  <39.123959, 36.711132, 32.742653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323048, 37.053497, 32.798779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097985, -0.216230, 0.971413,
		0.861783, -0.469746, -0.191489,
		0.497723, 0.855911, 0.140316,
		39.472366, 37.310272, 32.840874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684776, 36.504948, 33.195240>,  <39.123959, 36.711132, 32.742653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684776, 36.504948, 33.195240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646854, 36.902874, 33.209946>,  <39.624104, 37.141628, 33.218769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646854, 36.902874, 33.209946>,  <39.684776, 36.504948, 33.195240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646854, 36.902874, 33.209946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134290, -0.023817, 0.990656,
		0.986397, 0.098852, -0.131336,
		-0.094800, 0.994817, 0.036768,
		39.618416, 37.201321, 33.220978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168137, 36.648609, 33.609097>,  <39.684776, 36.504948, 33.195240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168137, 36.648609, 33.609097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917458, 36.958649, 33.641262>,  <39.767048, 37.144672, 33.660561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917458, 36.958649, 33.641262>,  <40.168137, 36.648609, 33.609097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917458, 36.958649, 33.641262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040877, -0.070356, 0.996684,
		0.778186, 0.627911, 0.012408,
		-0.626702, 0.775099, 0.080417,
		39.729446, 37.191177, 33.665386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369396, 37.162579, 34.083336>,  <40.168137, 36.648609, 33.609097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369396, 37.162579, 34.083336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982155, 37.260838, 34.103077>,  <39.749809, 37.319794, 34.114922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982155, 37.260838, 34.103077>,  <40.369396, 37.162579, 34.083336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982155, 37.260838, 34.103077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034395, -0.064821, 0.997304,
		0.248180, 0.967191, 0.054305,
		-0.968103, 0.245643, 0.049354,
		39.691723, 37.334530, 34.117882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292095, 37.451080, 34.695240>,  <40.369396, 37.162579, 34.083336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292095, 37.451080, 34.695240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911442, 37.373634, 34.599823>,  <39.683048, 37.327168, 34.542572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911442, 37.373634, 34.599823>,  <40.292095, 37.451080, 34.695240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911442, 37.373634, 34.599823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206564, -0.171538, 0.963279,
		-0.227427, 0.965964, 0.123247,
		-0.951634, -0.193618, -0.238546,
		39.625950, 37.315548, 34.528259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880192, 37.853523, 35.211182>,  <40.292095, 37.451080, 34.695240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880192, 37.853523, 35.211182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633648, 37.568058, 35.078041>,  <39.485722, 37.396778, 34.998158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633648, 37.568058, 35.078041>,  <39.880192, 37.853523, 35.211182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633648, 37.568058, 35.078041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306282, -0.172137, 0.936248,
		-0.725463, 0.679007, -0.112486,
		-0.616356, -0.713666, -0.332847,
		39.448742, 37.353958, 34.978188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204147, 37.866692, 35.615307>,  <39.880192, 37.853523, 35.211182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204147, 37.866692, 35.615307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248890, 37.501976, 35.457253>,  <39.275738, 37.283146, 35.362419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248890, 37.501976, 35.457253>,  <39.204147, 37.866692, 35.615307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248890, 37.501976, 35.457253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287351, -0.410320, 0.865486,
		-0.951271, 0.016729, -0.307902,
		0.111860, -0.911788, -0.395133,
		39.282448, 37.228439, 35.338711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502426, 37.394814, 35.703304>,  <39.204147, 37.866692, 35.615307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502426, 37.394814, 35.703304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862293, 37.221645, 35.680782>,  <39.078213, 37.117744, 35.667271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862293, 37.221645, 35.680782>,  <38.502426, 37.394814, 35.703304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862293, 37.221645, 35.680782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213288, -0.548396, 0.808560,
		-0.380917, -0.715431, -0.585714,
		0.899672, -0.432920, -0.056301,
		39.132195, 37.091770, 35.663891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469982, 36.602474, 35.667461>,  <38.502426, 37.394814, 35.703304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469982, 36.602474, 35.667461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837231, 36.693764, 35.797058>,  <39.057579, 36.748539, 35.874817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837231, 36.693764, 35.797058>,  <38.469982, 36.602474, 35.667461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837231, 36.693764, 35.797058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093329, -0.670031, 0.736443,
		0.385162, -0.706380, -0.593867,
		0.918118, 0.228225, 0.323996,
		39.112667, 36.762230, 35.894257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580547, 36.065914, 36.112865>,  <38.469982, 36.602474, 35.667461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580547, 36.065914, 36.112865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926540, 36.256649, 36.175392>,  <39.134136, 36.371090, 36.212906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926540, 36.256649, 36.175392>,  <38.580547, 36.065914, 36.112865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926540, 36.256649, 36.175392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188260, -0.597119, 0.779748,
		0.465149, -0.645041, -0.606266,
		0.864982, 0.476835, 0.156314,
		39.186035, 36.399700, 36.222286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096748, 35.550205, 36.124550>,  <38.580547, 36.065914, 36.112865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096748, 35.550205, 36.124550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249001, 35.844662, 36.348408>,  <39.340351, 36.021336, 36.482723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249001, 35.844662, 36.348408>,  <39.096748, 35.550205, 36.124550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249001, 35.844662, 36.348408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370336, -0.675904, 0.637186,
		0.847330, -0.035277, -0.529894,
		0.380635, 0.736145, 0.559649,
		39.363190, 36.065506, 36.516304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770676, 35.239708, 36.413555>,  <39.096748, 35.550205, 36.124550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770676, 35.239708, 36.413555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703831, 35.576611, 36.618561>,  <39.663723, 35.778751, 36.741566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703831, 35.576611, 36.618561>,  <39.770676, 35.239708, 36.413555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703831, 35.576611, 36.618561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279419, -0.458056, 0.843866,
		0.945515, 0.284227, -0.158796,
		-0.167111, 0.842259, 0.512518,
		39.653698, 35.829288, 36.772316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405891, 35.455914, 36.809444>,  <39.770676, 35.239708, 36.413555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405891, 35.455914, 36.809444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055195, 35.571896, 36.962936>,  <39.844776, 35.641487, 37.055031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055195, 35.571896, 36.962936>,  <40.405891, 35.455914, 36.809444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055195, 35.571896, 36.962936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342801, -0.182889, 0.921433,
		0.337356, 0.939402, 0.060949,
		-0.876743, 0.289958, 0.383727,
		39.792171, 35.658882, 37.078053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564034, 35.610718, 37.436584>,  <40.405891, 35.455914, 36.809444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564034, 35.610718, 37.436584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169735, 35.553581, 37.472126>,  <39.933155, 35.519299, 37.493450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169735, 35.553581, 37.472126>,  <40.564034, 35.610718, 37.436584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169735, 35.553581, 37.472126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133831, -0.345861, 0.928692,
		-0.101927, 0.927348, 0.360049,
		-0.985748, -0.142845, 0.088855,
		39.874012, 35.510727, 37.498783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287960, 35.881012, 38.030159>,  <40.564034, 35.610718, 37.436584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287960, 35.881012, 38.030159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065819, 35.567062, 37.920212>,  <39.932533, 35.378693, 37.854244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065819, 35.567062, 37.920212>,  <40.287960, 35.881012, 38.030159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065819, 35.567062, 37.920212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050743, -0.361891, 0.930838,
		-0.830065, 0.502997, 0.240805,
		-0.555354, -0.784875, -0.274869,
		39.899212, 35.331600, 37.837749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240253, 35.595161, 38.692966>,  <40.287960, 35.881012, 38.030159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240253, 35.595161, 38.692966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974331, 35.359146, 38.509708>,  <39.814777, 35.217537, 38.399754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974331, 35.359146, 38.509708>,  <40.240253, 35.595161, 38.692966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974331, 35.359146, 38.509708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049162, -0.577409, 0.814974,
		-0.745398, 0.564322, 0.354857,
		-0.664805, -0.590034, -0.458142,
		39.774891, 35.182137, 38.372265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617218, 35.499702, 39.126392>,  <40.240253, 35.595161, 38.692966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617218, 35.499702, 39.126392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697456, 35.211544, 38.860825>,  <39.745598, 35.038651, 38.701485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697456, 35.211544, 38.860825>,  <39.617218, 35.499702, 39.126392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697456, 35.211544, 38.860825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129792, -0.652181, 0.746870,
		-0.971039, -0.235990, -0.037323,
		0.200595, -0.720395, -0.663922,
		39.757633, 34.995426, 38.661648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214905, 34.892147, 39.392227>,  <39.617218, 35.499702, 39.126392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214905, 34.892147, 39.392227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497169, 34.780506, 39.131721>,  <39.666531, 34.713520, 38.975418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497169, 34.780506, 39.131721>,  <39.214905, 34.892147, 39.392227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497169, 34.780506, 39.131721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228226, -0.780629, 0.581835,
		-0.670783, -0.559215, -0.487164,
		0.705665, -0.279102, -0.651260,
		39.708870, 34.696777, 38.936344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154598, 34.069542, 39.330990>,  <39.214905, 34.892147, 39.392227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154598, 34.069542, 39.330990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515526, 34.190647, 39.208256>,  <39.732082, 34.263309, 39.134613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515526, 34.190647, 39.208256>,  <39.154598, 34.069542, 39.330990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515526, 34.190647, 39.208256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426428, -0.731082, 0.532615,
		-0.063065, -0.611433, -0.788779,
		0.902320, 0.302768, -0.306838,
		39.786221, 34.281479, 39.116203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522282, 33.487511, 39.093769>,  <39.154598, 34.069542, 39.330990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522282, 33.487511, 39.093769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813389, 33.733665, 39.214863>,  <39.988052, 33.881359, 39.287518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813389, 33.733665, 39.214863>,  <39.522282, 33.487511, 39.093769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813389, 33.733665, 39.214863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461065, -0.765800, 0.448297,
		0.507710, -0.186677, -0.841060,
		0.727770, 0.615388, 0.302734,
		40.031719, 33.918282, 39.305683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205200, 33.317471, 38.720432>,  <39.522282, 33.487511, 39.093769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205200, 33.317471, 38.720432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258064, 33.498085, 39.073395>,  <40.289783, 33.606453, 39.285172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258064, 33.498085, 39.073395>,  <40.205200, 33.317471, 38.720432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258064, 33.498085, 39.073395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402607, -0.837932, 0.368480,
		0.905781, 0.306564, -0.292538,
		0.132164, 0.451541, 0.882408,
		40.297714, 33.633549, 39.338116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828274, 32.976364, 38.996597>,  <40.205200, 33.317471, 38.720432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828274, 32.976364, 38.996597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658588, 33.138718, 39.320400>,  <40.556778, 33.236130, 39.514683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658588, 33.138718, 39.320400>,  <40.828274, 32.976364, 38.996597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658588, 33.138718, 39.320400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179560, -0.838479, 0.514501,
		0.887582, 0.363614, 0.282815,
		-0.424214, 0.405880, 0.809509,
		40.531322, 33.260483, 39.563251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298508, 33.172184, 39.460487>,  <40.828274, 32.976364, 38.996597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298508, 33.172184, 39.460487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961357, 33.061356, 39.645004>,  <40.759068, 32.994858, 39.755714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961357, 33.061356, 39.645004>,  <41.298508, 33.172184, 39.460487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961357, 33.061356, 39.645004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493793, -0.738918, 0.458441,
		0.213840, 0.614193, 0.759631,
		-0.842876, -0.277068, 0.461295,
		40.708496, 32.978237, 39.783394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524742, 33.136776, 40.160824>,  <41.298508, 33.172184, 39.460487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524742, 33.136776, 40.160824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183102, 32.928883, 40.153008>,  <40.978115, 32.804146, 40.148315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183102, 32.928883, 40.153008>,  <41.524742, 33.136776, 40.160824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183102, 32.928883, 40.153008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440198, -0.742388, 0.505060,
		-0.277006, 0.422771, 0.862863,
		-0.854103, -0.519736, -0.019543,
		40.926872, 32.772961, 40.147144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487179, 32.862278, 40.950882>,  <41.524742, 33.136776, 40.160824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487179, 32.862278, 40.950882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251606, 32.653381, 40.704170>,  <41.110264, 32.528042, 40.556141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251606, 32.653381, 40.704170>,  <41.487179, 32.862278, 40.950882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251606, 32.653381, 40.704170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405626, -0.851093, 0.333329,
		-0.699017, -0.053874, 0.713072,
		-0.588933, -0.522244, -0.616781,
		41.074924, 32.496708, 40.519135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090755, 32.455265, 41.336056>,  <41.487179, 32.862278, 40.950882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090755, 32.455265, 41.336056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112358, 32.283310, 40.975548>,  <41.125320, 32.180138, 40.759243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112358, 32.283310, 40.975548>,  <41.090755, 32.455265, 41.336056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112358, 32.283310, 40.975548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262373, -0.864761, 0.428193,
		-0.963454, -0.259592, 0.066089,
		0.054005, -0.429885, -0.901267,
		41.128559, 32.154343, 40.705166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785263, 31.874821, 41.391026>,  <41.090755, 32.455265, 41.336056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785263, 31.874821, 41.391026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978855, 31.775846, 41.055279>,  <41.095009, 31.716463, 40.853828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978855, 31.775846, 41.055279>,  <40.785263, 31.874821, 41.391026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978855, 31.775846, 41.055279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287696, -0.860882, 0.419659,
		-0.826437, -0.444588, -0.345460,
		0.483976, -0.247434, -0.839371,
		41.124046, 31.701616, 40.803467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797436, 31.124029, 41.370102>,  <40.785263, 31.874821, 41.391026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797436, 31.124029, 41.370102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065094, 31.226080, 41.090916>,  <41.225689, 31.287310, 40.923405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065094, 31.226080, 41.090916>,  <40.797436, 31.124029, 41.370102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065094, 31.226080, 41.090916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384562, -0.922563, 0.031463,
		-0.635886, -0.289463, -0.715443,
		0.669149, 0.255126, -0.697962,
		41.265839, 31.302618, 40.881527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644333, 30.780668, 40.854855>,  <40.797436, 31.124029, 41.370102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644333, 30.780668, 40.854855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035473, 30.835695, 40.917950>,  <41.270157, 30.868711, 40.955807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035473, 30.835695, 40.917950>,  <40.644333, 30.780668, 40.854855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035473, 30.835695, 40.917950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175304, -0.950062, -0.258170,
		0.114346, 0.280104, -0.953135,
		0.977851, 0.137567, 0.157739,
		41.328827, 30.876965, 40.965271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002731, 30.627533, 40.208817>,  <40.644333, 30.780668, 40.854855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002731, 30.627533, 40.208817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206337, 30.551268, 40.544567>,  <41.328503, 30.505508, 40.746017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206337, 30.551268, 40.544567>,  <41.002731, 30.627533, 40.208817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206337, 30.551268, 40.544567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222988, -0.912659, -0.342534,
		0.831371, 0.361526, -0.422044,
		0.509017, -0.190662, 0.839375,
		41.359043, 30.494068, 40.796379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379429, 31.135393, 40.172638>,  <41.002731, 30.627533, 40.208817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379429, 31.135393, 40.172638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749889, 31.271269, 40.238197>,  <40.972164, 31.352795, 40.277531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749889, 31.271269, 40.238197>,  <40.379429, 31.135393, 40.172638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749889, 31.271269, 40.238197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330642, 0.940318, -0.080490,
		-0.181456, 0.020355, 0.983188,
		0.926148, 0.339689, 0.163896,
		41.027733, 31.373175, 40.287365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918560, 31.588938, 39.765305>,  <40.379429, 31.135393, 40.172638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918560, 31.588938, 39.765305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811203, 31.694164, 40.135983>,  <40.746788, 31.757301, 40.358387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811203, 31.694164, 40.135983>,  <40.918560, 31.588938, 39.765305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811203, 31.694164, 40.135983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463555, 0.808013, -0.363636,
		-0.844441, -0.527171, -0.094921,
		-0.268396, 0.263068, 0.926692,
		40.730682, 31.773085, 40.413990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213081, 31.759329, 39.836575>,  <40.918560, 31.588938, 39.765305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213081, 31.759329, 39.836575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424458, 31.963432, 40.107983>,  <40.551285, 32.085896, 40.270828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424458, 31.963432, 40.107983>,  <40.213081, 31.759329, 39.836575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424458, 31.963432, 40.107983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545658, 0.816418, -0.188997,
		-0.650391, -0.270364, 0.709855,
		0.528440, 0.510260, 0.678517,
		40.582989, 32.116508, 40.311539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829662, 32.185902, 40.235729>,  <40.213081, 31.759329, 39.836575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829662, 32.185902, 40.235729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173656, 32.389412, 40.251598>,  <40.380054, 32.511517, 40.261120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173656, 32.389412, 40.251598>,  <39.829662, 32.185902, 40.235729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173656, 32.389412, 40.251598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487664, 0.842228, -0.229862,
		-0.150360, 0.178332, 0.972414,
		0.859986, 0.508773, 0.039671,
		40.431652, 32.542046, 40.263500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673027, 32.888100, 40.460194>,  <39.829662, 32.185902, 40.235729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673027, 32.888100, 40.460194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024933, 32.939796, 40.277195>,  <40.236076, 32.970814, 40.167397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024933, 32.939796, 40.277195>,  <39.673027, 32.888100, 40.460194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024933, 32.939796, 40.277195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275641, 0.922743, -0.269385,
		0.387338, 0.363102, 0.847423,
		0.879768, 0.129241, -0.457499,
		40.288864, 32.978569, 40.139946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974854, 33.648159, 40.586388>,  <39.673027, 32.888100, 40.460194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974854, 33.648159, 40.586388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135944, 33.537697, 40.237320>,  <40.232597, 33.471420, 40.027878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135944, 33.537697, 40.237320>,  <39.974854, 33.648159, 40.586388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135944, 33.537697, 40.237320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155905, 0.918775, -0.362693,
		0.901946, 0.282118, 0.326959,
		0.402725, -0.276155, -0.872669,
		40.256763, 33.454849, 39.975521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413200, 34.193493, 40.480343>,  <39.974854, 33.648159, 40.586388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413200, 34.193493, 40.480343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345715, 34.006222, 40.133392>,  <40.305222, 33.893860, 39.925220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345715, 34.006222, 40.133392>,  <40.413200, 34.193493, 40.480343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345715, 34.006222, 40.133392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080249, 0.870548, -0.485496,
		0.982392, -0.151517, -0.109305,
		-0.168716, -0.468176, -0.867379,
		40.295101, 33.865768, 39.873180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893005, 34.361084, 40.063011>,  <40.413200, 34.193493, 40.480343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893005, 34.361084, 40.063011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595425, 34.244518, 39.822475>,  <40.416874, 34.174580, 39.678154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595425, 34.244518, 39.822475>,  <40.893005, 34.361084, 40.063011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595425, 34.244518, 39.822475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105218, 0.837592, -0.536067,
		0.659895, -0.462081, -0.592469,
		-0.743954, -0.291410, -0.601342,
		40.372238, 34.157097, 39.642075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998726, 34.811054, 39.303871>,  <40.893005, 34.361084, 40.063011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998726, 34.811054, 39.303871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713100, 34.531021, 39.304710>,  <40.541725, 34.363003, 39.305214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713100, 34.531021, 39.304710>,  <40.998726, 34.811054, 39.303871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713100, 34.531021, 39.304710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530716, 0.539361, -0.653782,
		0.456568, -0.467953, -0.756680,
		-0.714063, -0.700078, 0.002095,
		40.498882, 34.320999, 39.305340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996078, 34.500530, 38.676357>,  <40.998726, 34.811054, 39.303871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996078, 34.500530, 38.676357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618385, 34.429485, 38.787258>,  <40.391769, 34.386856, 38.853798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618385, 34.429485, 38.787258>,  <40.996078, 34.500530, 38.676357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618385, 34.429485, 38.787258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329222, 0.495068, -0.804065,
		0.005552, -0.850506, -0.525936,
		-0.944236, -0.177614, 0.277256,
		40.335114, 34.376202, 38.870434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592598, 34.220852, 38.041538>,  <40.996078, 34.500530, 38.676357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592598, 34.220852, 38.041538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321064, 34.341171, 38.309479>,  <40.158142, 34.413361, 38.470242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321064, 34.341171, 38.309479>,  <40.592598, 34.220852, 38.041538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321064, 34.341171, 38.309479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609752, 0.277359, -0.742479,
		-0.409125, -0.912466, -0.004870,
		-0.678837, 0.300797, 0.669852,
		40.117413, 34.431412, 38.510433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928669, 34.040794, 37.852398>,  <40.592598, 34.220852, 38.041538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928669, 34.040794, 37.852398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884686, 34.353283, 38.098194>,  <39.858295, 34.540775, 38.245674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884686, 34.353283, 38.098194>,  <39.928669, 34.040794, 37.852398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884686, 34.353283, 38.098194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516017, 0.483529, -0.707055,
		-0.849492, -0.394835, 0.349956,
		-0.109957, 0.781220, 0.614495,
		39.851700, 34.587650, 38.282543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202549, 34.221836, 37.964184>,  <39.928669, 34.040794, 37.852398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202549, 34.221836, 37.964184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439007, 34.543018, 37.994671>,  <39.580883, 34.735725, 38.012962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439007, 34.543018, 37.994671>,  <39.202549, 34.221836, 37.964184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439007, 34.543018, 37.994671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672648, 0.542935, -0.502759,
		-0.445071, 0.245940, 0.861061,
		0.591148, 0.802954, 0.076214,
		39.616352, 34.783905, 38.017536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864330, 34.727612, 37.533005>,  <39.202549, 34.221836, 37.964184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864330, 34.727612, 37.533005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166630, 34.943504, 37.681343>,  <39.348011, 35.073040, 37.770348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166630, 34.943504, 37.681343>,  <38.864330, 34.727612, 37.533005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166630, 34.943504, 37.681343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376077, 0.821322, -0.428948,
		-0.536102, 0.184712, 0.823697,
		0.755752, 0.539733, 0.370846,
		39.393356, 35.105423, 37.792599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658081, 35.381012, 37.815300>,  <38.864330, 34.727612, 37.533005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658081, 35.381012, 37.815300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034115, 35.446365, 37.695595>,  <39.259735, 35.485577, 37.623772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034115, 35.446365, 37.695595>,  <38.658081, 35.381012, 37.815300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034115, 35.446365, 37.695595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328180, 0.671587, -0.664281,
		0.092449, 0.722689, 0.684963,
		0.940080, 0.163380, -0.299259,
		39.316139, 35.495380, 37.605816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792328, 36.132004, 37.723572>,  <38.658081, 35.381012, 37.815300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792328, 36.132004, 37.723572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073994, 35.954617, 37.501766>,  <39.242992, 35.848183, 37.368683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073994, 35.954617, 37.501766>,  <38.792328, 36.132004, 37.723572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073994, 35.954617, 37.501766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231066, 0.595332, -0.769537,
		0.671386, 0.670011, 0.316742,
		0.704165, -0.443469, -0.554515,
		39.285244, 35.821575, 37.335411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155426, 36.691299, 37.670582>,  <38.792328, 36.132004, 37.723572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155426, 36.691299, 37.670582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249752, 36.438538, 37.375259>,  <39.306347, 36.286880, 37.198067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249752, 36.438538, 37.375259>,  <39.155426, 36.691299, 37.670582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249752, 36.438538, 37.375259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037858, 0.765126, -0.642766,
		0.971060, 0.123625, 0.204353,
		0.235818, -0.631901, -0.738303,
		39.320496, 36.248966, 37.153767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609165, 37.130634, 37.226643>,  <39.155426, 36.691299, 37.670582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609165, 37.130634, 37.226643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540958, 36.800079, 37.011978>,  <39.500034, 36.601746, 36.883179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540958, 36.800079, 37.011978>,  <39.609165, 37.130634, 37.226643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540958, 36.800079, 37.011978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027350, 0.540461, -0.840924,
		0.984975, -0.158068, -0.069554,
		-0.170514, -0.826387, -0.536664,
		39.489803, 36.552162, 36.850979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065987, 37.176971, 36.694321>,  <39.609165, 37.130634, 37.226643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065987, 37.176971, 36.694321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804169, 36.912876, 36.546997>,  <39.647076, 36.754417, 36.458603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804169, 36.912876, 36.546997>,  <40.065987, 37.176971, 36.694321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804169, 36.912876, 36.546997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049981, 0.448313, -0.892478,
		0.754368, -0.602577, -0.260442,
		-0.654547, -0.660240, -0.368310,
		39.607803, 36.714806, 36.436504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354065, 36.805653, 36.202614>,  <40.065987, 37.176971, 36.694321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354065, 36.805653, 36.202614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964775, 36.790558, 36.111923>,  <39.731201, 36.781502, 36.057507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964775, 36.790558, 36.111923>,  <40.354065, 36.805653, 36.202614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964775, 36.790558, 36.111923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203753, 0.314850, -0.927014,
		0.106371, -0.948391, -0.298731,
		-0.973227, -0.037740, -0.226729,
		39.672806, 36.779236, 36.043903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345901, 36.562069, 35.595352>,  <40.354065, 36.805653, 36.202614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345901, 36.562069, 35.595352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990696, 36.739246, 35.644722>,  <39.777573, 36.845554, 35.674343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990696, 36.739246, 35.644722>,  <40.345901, 36.562069, 35.595352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990696, 36.739246, 35.644722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032740, 0.328640, -0.943887,
		-0.458653, -0.834143, -0.306339,
		-0.888012, 0.442946, 0.123422,
		39.724293, 36.872131, 35.681747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299477, 36.082989, 36.280281>,  <40.345901, 36.562069, 35.595352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299477, 36.082989, 36.280281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221622, 36.113541, 36.671440>,  <40.174911, 36.131874, 36.906136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221622, 36.113541, 36.671440>,  <40.299477, 36.082989, 36.280281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221622, 36.113541, 36.671440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563739, -0.824569, -0.047798,
		0.802693, -0.560582, 0.203549,
		-0.194635, 0.076382, 0.977897,
		40.163231, 36.136456, 36.964809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774471, 35.851536, 35.776821>,  <40.299477, 36.082989, 36.280281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774471, 35.851536, 35.776821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130032, 35.668324, 35.773598>,  <41.343369, 35.558395, 35.771664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130032, 35.668324, 35.773598>,  <40.774471, 35.851536, 35.776821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130032, 35.668324, 35.773598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138968, 0.286383, -0.947983,
		0.436510, 0.841544, 0.318218,
		0.888902, -0.458026, -0.008061,
		41.396702, 35.530914, 35.771179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461258, 36.209488, 35.634304>,  <40.774471, 35.851536, 35.776821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461258, 36.209488, 35.634304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512932, 35.838371, 35.494297>,  <41.543934, 35.615700, 35.410294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512932, 35.838371, 35.494297>,  <41.461258, 36.209488, 35.634304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512932, 35.838371, 35.494297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290362, 0.372893, -0.881273,
		0.948157, 0.012215, 0.317567,
		0.129183, -0.927794, -0.350014,
		41.551685, 35.560032, 35.389294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148281, 36.203735, 35.376862>,  <41.461258, 36.209488, 35.634304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148281, 36.203735, 35.376862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951866, 35.900700, 35.204845>,  <41.834019, 35.718876, 35.101635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951866, 35.900700, 35.204845>,  <42.148281, 36.203735, 35.376862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951866, 35.900700, 35.204845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297834, 0.317911, -0.900126,
		0.818646, -0.570074, 0.069532,
		-0.491033, -0.757594, -0.430044,
		41.804558, 35.673420, 35.075832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573513, 35.625259, 35.081367>,  <42.148281, 36.203735, 35.376862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573513, 35.625259, 35.081367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227413, 35.720005, 34.904625>,  <42.019753, 35.776852, 34.798576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227413, 35.720005, 34.904625>,  <42.573513, 35.625259, 35.081367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227413, 35.720005, 34.904625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499816, 0.338744, -0.797143,
		-0.039140, -0.910575, -0.411488,
		-0.865247, 0.236868, -0.441861,
		41.967838, 35.791065, 34.772068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535015, 35.367306, 34.506340>,  <42.573513, 35.625259, 35.081367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535015, 35.367306, 34.506340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327271, 35.706390, 34.463165>,  <42.202621, 35.909840, 34.437260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327271, 35.706390, 34.463165>,  <42.535015, 35.367306, 34.506340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327271, 35.706390, 34.463165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635604, 0.298776, -0.711857,
		-0.571199, -0.438317, -0.693981,
		-0.519364, 0.847709, -0.107935,
		42.171463, 35.960705, 34.430786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336285, 35.571621, 33.729637>,  <42.535015, 35.367306, 34.506340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336285, 35.571621, 33.729637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418293, 35.863262, 33.990829>,  <42.467499, 36.038246, 34.147545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418293, 35.863262, 33.990829>,  <42.336285, 35.571621, 33.729637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418293, 35.863262, 33.990829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782835, 0.278292, -0.556527,
		-0.587482, 0.625273, -0.513710,
		0.205020, 0.729100, 0.652977,
		42.479797, 36.081993, 34.186722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327446, 36.199348, 33.469845>,  <42.336285, 35.571621, 33.729637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327446, 36.199348, 33.469845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580624, 36.236851, 33.777245>,  <42.732529, 36.259354, 33.961685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580624, 36.236851, 33.777245>,  <42.327446, 36.199348, 33.469845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580624, 36.236851, 33.777245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714005, 0.313052, -0.626255,
		-0.299295, 0.945097, 0.131202,
		0.632945, 0.093756, 0.768499,
		42.770508, 36.264977, 34.007793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742737, 36.778572, 33.316853>,  <42.327446, 36.199348, 33.469845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742737, 36.778572, 33.316853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940041, 36.552471, 33.581333>,  <43.058422, 36.416809, 33.740021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940041, 36.552471, 33.581333>,  <42.742737, 36.778572, 33.316853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940041, 36.552471, 33.581333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806504, 0.012355, -0.591099,
		0.325952, 0.824824, 0.461974,
		0.493261, -0.565254, 0.661197,
		43.088020, 36.382896, 33.779694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396656, 37.106747, 33.516640>,  <42.742737, 36.778572, 33.316853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396656, 37.106747, 33.516640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441158, 36.714790, 33.582893>,  <43.467861, 36.479618, 33.622646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441158, 36.714790, 33.582893>,  <43.396656, 37.106747, 33.516640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441158, 36.714790, 33.582893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930068, 0.043947, -0.364749,
		0.350136, 0.194630, 0.916255,
		0.111258, -0.979892, 0.165632,
		43.474537, 36.420822, 33.632584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075855, 36.928886, 33.689037>,  <43.396656, 37.106747, 33.516640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075855, 36.928886, 33.689037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.914482, 36.587791, 33.556324>,  <43.817657, 36.383133, 33.476696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.914482, 36.587791, 33.556324>,  <44.075855, 36.928886, 33.689037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914482, 36.587791, 33.556324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831513, -0.190333, -0.521881,
		0.381879, -0.486425, 0.785849,
		-0.403429, -0.852739, -0.331784,
		43.793453, 36.331970, 33.456787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666916, 37.241154, 34.311390>,  <44.075855, 36.928886, 33.689037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666916, 37.241154, 34.311390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.446404, 37.530647, 34.477428>,  <43.314095, 37.704342, 34.577053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.446404, 37.530647, 34.477428>,  <43.666916, 37.241154, 34.311390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446404, 37.530647, 34.477428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799000, -0.314734, -0.512389,
		-0.240186, -0.614132, 0.751767,
		-0.551280, 0.723730, 0.415096,
		43.281021, 37.747765, 34.601955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150265, 37.093792, 34.868198>,  <43.666916, 37.241154, 34.311390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150265, 37.093792, 34.868198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500076, 37.267967, 34.782799>,  <44.709965, 37.372475, 34.731560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500076, 37.267967, 34.782799>,  <44.150265, 37.093792, 34.868198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.500076, 37.267967, 34.782799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435643, -0.898803, -0.048675,
		-0.213091, -0.050443, -0.975729,
		0.874533, 0.435442, -0.213502,
		44.762436, 37.398602, 34.718750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562183, 36.764458, 34.273727>,  <44.150265, 37.093792, 34.868198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562183, 36.764458, 34.273727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.781212, 36.893059, 34.582741>,  <44.912628, 36.970219, 34.768150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.781212, 36.893059, 34.582741>,  <44.562183, 36.764458, 34.273727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781212, 36.893059, 34.582741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374310, -0.919830, 0.117492,
		0.748372, 0.224832, -0.624011,
		0.547568, 0.321501, 0.772532,
		44.945480, 36.989510, 34.814499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294987, 36.703983, 34.077198>,  <44.562183, 36.764458, 34.273727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294987, 36.703983, 34.077198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203224, 36.680931, 34.465847>,  <45.148167, 36.667099, 34.699036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203224, 36.680931, 34.465847>,  <45.294987, 36.703983, 34.077198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203224, 36.680931, 34.465847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483385, -0.873186, 0.062339,
		0.844815, 0.483969, 0.228170,
		-0.229405, -0.057629, 0.971623,
		45.134403, 36.663643, 34.757336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.917892, 36.829102, 34.536827>,  <45.294987, 36.703983, 34.077198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.917892, 36.829102, 34.536827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634460, 36.562382, 34.629166>,  <45.464401, 36.402348, 34.684570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634460, 36.562382, 34.629166>,  <45.917892, 36.829102, 34.536827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634460, 36.562382, 34.629166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689298, -0.724071, 0.024301,
		0.150946, 0.176342, 0.972686,
		-0.708579, -0.666802, 0.230848,
		45.421886, 36.362343, 34.698421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.854740, 36.531002, 35.346092>,  <45.917892, 36.829102, 34.536827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.854740, 36.531002, 35.346092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760887, 36.298622, 35.034336>,  <45.704575, 36.159195, 34.847282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760887, 36.298622, 35.034336>,  <45.854740, 36.531002, 35.346092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.760887, 36.298622, 35.034336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715957, -0.645608, 0.265697,
		-0.657537, -0.495669, 0.567413,
		-0.234629, -0.580949, -0.779389,
		45.690498, 36.124336, 34.800518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.793682, 35.808773, 35.521084>,  <45.854740, 36.531002, 35.346092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.793682, 35.808773, 35.521084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917336, 35.859058, 35.144016>,  <45.991528, 35.889229, 34.917774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917336, 35.859058, 35.144016>,  <45.793682, 35.808773, 35.521084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.917336, 35.859058, 35.144016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789854, -0.586018, 0.180871,
		-0.529684, -0.800487, -0.280457,
		0.309137, 0.125715, -0.942672,
		46.010078, 35.896774, 34.861214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940331, 35.175262, 35.191135>,  <45.793682, 35.808773, 35.521084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.940331, 35.175262, 35.191135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171368, 35.438568, 34.998028>,  <46.309990, 35.596554, 34.882164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171368, 35.438568, 34.998028>,  <45.940331, 35.175262, 35.191135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171368, 35.438568, 34.998028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776322, -0.625796, 0.075524,
		-0.252401, -0.418407, -0.872485,
		0.577597, 0.658267, -0.482770,
		46.344646, 35.636047, 34.853195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.497204, 34.792416, 35.159157>,  <45.940331, 35.175262, 35.191135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.497204, 34.792416, 35.159157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634525, 35.161430, 35.088646>,  <46.716919, 35.382839, 35.046337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634525, 35.161430, 35.088646>,  <46.497204, 34.792416, 35.159157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.634525, 35.161430, 35.088646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939220, -0.337754, 0.061544,
		-0.002763, -0.186695, -0.982414,
		0.343304, 0.922533, -0.176281,
		46.737518, 35.438190, 35.035763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.044586, 35.089447, 34.777737>,  <46.497204, 34.792416, 35.159157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.044586, 35.089447, 34.777737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.305122, 35.353828, 34.926807>,  <47.461445, 35.512459, 35.016251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.305122, 35.353828, 34.926807>,  <47.044586, 35.089447, 34.777737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.305122, 35.353828, 34.926807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209830, -0.628896, 0.748640,
		0.729197, -0.409420, -0.548313,
		0.651340, 0.660958, 0.372681,
		47.500523, 35.552116, 35.038612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.709774, 34.768658, 34.773273>,  <47.044586, 35.089447, 34.777737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.709774, 34.768658, 34.773273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695808, 35.047554, 35.059669>,  <47.687428, 35.214893, 35.231506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695808, 35.047554, 35.059669>,  <47.709774, 34.768658, 34.773273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.695808, 35.047554, 35.059669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414045, -0.641955, 0.645338,
		0.909587, 0.318983, -0.266274,
		-0.034916, 0.697240, 0.715987,
		47.685333, 35.256725, 35.274467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.052132, 32.519581, 25.927889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.726307, 32.729404, 25.828831>,  <38.530811, 32.855297, 25.769396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.726307, 32.729404, 25.828831>,  <39.052132, 32.519581, 25.927889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726307, 32.729404, 25.828831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231691, 0.097174, 0.967924,
		0.531799, 0.845810, 0.042382,
		-0.814561, 0.524560, -0.247644,
		38.481937, 32.886772, 25.754538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114063, 33.132591, 26.320004>,  <39.052132, 32.519581, 25.927889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114063, 33.132591, 26.320004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.722233, 33.133801, 26.239574>,  <38.487137, 33.134525, 26.191317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.722233, 33.133801, 26.239574>,  <39.114063, 33.132591, 26.320004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722233, 33.133801, 26.239574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172605, 0.500398, 0.848416,
		0.103179, 0.865790, -0.489654,
		-0.979572, 0.003022, -0.201071,
		38.428360, 33.134708, 26.179253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797138, 33.870979, 26.457350>,  <39.114063, 33.132591, 26.320004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797138, 33.870979, 26.457350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505756, 33.598953, 26.490494>,  <38.330925, 33.435738, 26.510380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505756, 33.598953, 26.490494>,  <38.797138, 33.870979, 26.457350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505756, 33.598953, 26.490494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259224, 0.385566, 0.885518,
		-0.634154, 0.623583, -0.457157,
		-0.728458, -0.680061, 0.082860,
		38.287220, 33.394936, 26.515352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266994, 34.318050, 26.726875>,  <38.797138, 33.870979, 26.457350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266994, 34.318050, 26.726875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.183262, 33.936192, 26.811567>,  <38.133022, 33.707077, 26.862383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.183262, 33.936192, 26.811567>,  <38.266994, 34.318050, 26.726875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183262, 33.936192, 26.811567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146774, 0.244749, 0.958413,
		-0.966767, 0.169545, -0.191350,
		-0.209327, -0.954648, 0.211731,
		38.120464, 33.649796, 26.875086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616127, 34.399567, 26.939699>,  <38.266994, 34.318050, 26.726875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616127, 34.399567, 26.939699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786491, 34.059662, 27.063963>,  <37.888710, 33.855721, 27.138521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786491, 34.059662, 27.063963>,  <37.616127, 34.399567, 26.939699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786491, 34.059662, 27.063963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301723, 0.190304, 0.934210,
		-0.852973, -0.491623, -0.175339,
		0.425912, -0.849759, 0.310658,
		37.914265, 33.804733, 27.157160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145065, 34.291206, 27.420591>,  <37.616127, 34.399567, 26.939699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145065, 34.291206, 27.420591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.413849, 34.003418, 27.490824>,  <37.575119, 33.830746, 27.532963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.413849, 34.003418, 27.490824>,  <37.145065, 34.291206, 27.420591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413849, 34.003418, 27.490824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166371, 0.084371, 0.982447,
		-0.721658, -0.689376, -0.063005,
		0.671960, -0.719474, 0.175579,
		37.615437, 33.787575, 27.543497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791229, 33.767368, 27.881752>,  <37.145065, 34.291206, 27.420591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791229, 33.767368, 27.881752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.185417, 33.729202, 27.937960>,  <37.421928, 33.706303, 27.971684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.185417, 33.729202, 27.937960>,  <36.791229, 33.767368, 27.881752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185417, 33.729202, 27.937960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138629, 0.026171, 0.989999,
		-0.098142, -0.995093, 0.012563,
		0.985469, -0.095418, 0.140517,
		37.481056, 33.700577, 27.980114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826530, 33.127167, 28.257236>,  <36.791229, 33.767368, 27.881752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826530, 33.127167, 28.257236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.139641, 33.373348, 28.294075>,  <37.327507, 33.521057, 28.316177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.139641, 33.373348, 28.294075>,  <36.826530, 33.127167, 28.257236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139641, 33.373348, 28.294075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184927, 0.088746, 0.978737,
		0.594196, -0.783159, 0.183282,
		0.782772, 0.615456, 0.092095,
		37.374474, 33.557983, 28.321703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271404, 32.812748, 28.895578>,  <36.826530, 33.127167, 28.257236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271404, 32.812748, 28.895578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.310757, 33.203308, 28.818668>,  <37.334366, 33.437645, 28.772522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.310757, 33.203308, 28.818668>,  <37.271404, 32.812748, 28.895578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310757, 33.203308, 28.818668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163666, 0.206455, 0.964671,
		0.981598, -0.063434, 0.180114,
		0.098379, 0.976398, -0.192274,
		37.340271, 33.496227, 28.760986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695004, 33.010735, 29.449078>,  <37.271404, 32.812748, 28.895578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695004, 33.010735, 29.449078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.560825, 33.351460, 29.288136>,  <37.480316, 33.555893, 29.191570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.560825, 33.351460, 29.288136>,  <37.695004, 33.010735, 29.449078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560825, 33.351460, 29.288136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006878, 0.429305, 0.903133,
		0.942033, 0.300188, -0.149869,
		-0.335449, 0.851812, -0.402355,
		37.460190, 33.607002, 29.167429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302032, 33.528107, 29.419706>,  <37.695004, 33.010735, 29.449078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302032, 33.528107, 29.419706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.923794, 33.646404, 29.473949>,  <37.696850, 33.717384, 29.506495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.923794, 33.646404, 29.473949>,  <38.302032, 33.528107, 29.419706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923794, 33.646404, 29.473949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230999, 0.316761, 0.919947,
		0.229114, 0.901221, -0.367843,
		-0.945593, 0.295744, 0.135606,
		37.640118, 33.735126, 29.514631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427628, 34.047989, 29.921192>,  <38.302032, 33.528107, 29.419706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427628, 34.047989, 29.921192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.028786, 34.017586, 29.922134>,  <37.789482, 33.999344, 29.922699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.028786, 34.017586, 29.922134>,  <38.427628, 34.047989, 29.921192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028786, 34.017586, 29.922134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019436, 0.284680, 0.958426,
		-0.073515, 0.955605, -0.285333,
		-0.997105, -0.076004, 0.002355,
		37.729652, 33.994785, 29.922840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178780, 34.618767, 30.193542>,  <38.427628, 34.047989, 29.921192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178780, 34.618767, 30.193542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.868156, 34.370369, 30.236088>,  <37.681782, 34.221329, 30.261614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.868156, 34.370369, 30.236088>,  <38.178780, 34.618767, 30.193542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868156, 34.370369, 30.236088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224764, 0.430768, 0.874025,
		-0.588585, 0.654828, -0.474096,
		-0.776562, -0.620998, 0.106362,
		37.635189, 34.184071, 30.267996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596035, 35.006126, 30.424038>,  <38.178780, 34.618767, 30.193542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596035, 35.006126, 30.424038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.522942, 34.628376, 30.533403>,  <37.479088, 34.401726, 30.599022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.522942, 34.628376, 30.533403>,  <37.596035, 35.006126, 30.424038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522942, 34.628376, 30.533403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325773, 0.320545, 0.889451,
		-0.927622, 0.073459, -0.366226,
		-0.182730, -0.944380, 0.273414,
		37.468124, 34.345062, 30.615427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904095, 35.056408, 30.708431>,  <37.596035, 35.006126, 30.424038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904095, 35.056408, 30.708431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040520, 34.704105, 30.839851>,  <37.122375, 34.492725, 30.918705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040520, 34.704105, 30.839851>,  <36.904095, 35.056408, 30.708431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040520, 34.704105, 30.839851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400493, 0.180062, 0.898434,
		-0.850461, -0.438002, -0.291325,
		0.341059, -0.880756, 0.328553,
		37.142838, 34.439877, 30.938417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341450, 34.675388, 31.127436>,  <36.904095, 35.056408, 30.708431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341450, 34.675388, 31.127436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700901, 34.532608, 31.229460>,  <36.916573, 34.446941, 31.290674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700901, 34.532608, 31.229460>,  <36.341450, 34.675388, 31.127436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700901, 34.532608, 31.229460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265637, 0.019993, 0.963866,
		-0.349150, -0.933910, -0.076853,
		0.898627, -0.356949, 0.255062,
		36.970490, 34.425522, 31.305979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204403, 34.201065, 31.741091>,  <36.341450, 34.675388, 31.127436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204403, 34.201065, 31.741091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594501, 34.289368, 31.746067>,  <36.828560, 34.342350, 31.749054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594501, 34.289368, 31.746067>,  <36.204403, 34.201065, 31.741091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594501, 34.289368, 31.746067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047697, 0.155095, 0.986748,
		0.215902, -0.962919, 0.161786,
		0.975249, 0.220757, 0.012443,
		36.887077, 34.355595, 31.749800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223175, 33.975842, 32.400402>,  <36.204403, 34.201065, 31.741091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223175, 33.975842, 32.400402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.581123, 34.133495, 32.316628>,  <36.795891, 34.228088, 32.266361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.581123, 34.133495, 32.316628>,  <36.223175, 33.975842, 32.400402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581123, 34.133495, 32.316628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121144, 0.237150, 0.963890,
		0.429568, -0.887930, 0.164472,
		0.894872, 0.394132, -0.209439,
		36.849586, 34.251736, 32.253796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673767, 33.750893, 32.896282>,  <36.223175, 33.975842, 32.400402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673767, 33.750893, 32.896282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.849735, 34.083157, 32.759766>,  <36.955315, 34.282513, 32.677856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.849735, 34.083157, 32.759766>,  <36.673767, 33.750893, 32.896282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849735, 34.083157, 32.759766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131337, 0.316446, 0.939475,
		0.888383, -0.458115, 0.030114,
		0.439917, 0.830658, -0.341293,
		36.981709, 34.332355, 32.657379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373955, 33.791523, 33.044498>,  <36.673767, 33.750893, 32.896282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373955, 33.791523, 33.044498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273693, 34.175873, 32.997353>,  <37.213535, 34.406483, 32.969067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273693, 34.175873, 32.997353>,  <37.373955, 33.791523, 33.044498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273693, 34.175873, 32.997353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228097, 0.176943, 0.957425,
		0.940820, 0.213103, -0.263524,
		-0.250659, 0.960874, -0.117864,
		37.198494, 34.464134, 32.961994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924076, 34.230434, 33.532299>,  <37.373955, 33.791523, 33.044498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924076, 34.230434, 33.532299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620785, 34.482178, 33.464176>,  <37.438808, 34.633224, 33.423302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620785, 34.482178, 33.464176>,  <37.924076, 34.230434, 33.532299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620785, 34.482178, 33.464176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054701, 0.321690, 0.945263,
		0.649692, 0.707408, -0.278341,
		-0.758227, 0.629355, -0.170303,
		37.393318, 34.670986, 33.413086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094501, 34.920235, 33.689804>,  <37.924076, 34.230434, 33.532299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094501, 34.920235, 33.689804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697685, 34.903244, 33.737206>,  <37.459595, 34.893051, 33.765644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697685, 34.903244, 33.737206>,  <38.094501, 34.920235, 33.689804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697685, 34.903244, 33.737206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083846, 0.479183, 0.873701,
		-0.093895, 0.876687, -0.471810,
		-0.992045, -0.042476, 0.118499,
		37.400070, 34.890503, 33.772755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566814, 34.521698, 33.391712>,  <38.094501, 34.920235, 33.689804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566814, 34.521698, 33.391712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.870552, 34.686409, 33.593239>,  <39.052795, 34.785236, 33.714153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.870552, 34.686409, 33.593239>,  <38.566814, 34.521698, 33.391712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870552, 34.686409, 33.593239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357227, 0.383348, -0.851724,
		-0.543857, 0.826731, 0.143996,
		0.759347, 0.411777, 0.503817,
		39.098358, 34.809940, 33.744385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529396, 35.256264, 33.189518>,  <38.566814, 34.521698, 33.391712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529396, 35.256264, 33.189518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.904171, 35.152695, 33.283421>,  <39.129036, 35.090553, 33.339764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.904171, 35.152695, 33.283421>,  <38.529396, 35.256264, 33.189518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904171, 35.152695, 33.283421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317550, 0.350084, -0.881251,
		0.145993, 0.900222, 0.410228,
		0.936935, -0.258925, 0.234756,
		39.185253, 35.075016, 33.353848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065411, 35.850849, 32.914291>,  <38.529396, 35.256264, 33.189518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065411, 35.850849, 32.914291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.280270, 35.518810, 32.974171>,  <39.409184, 35.319588, 33.010098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.280270, 35.518810, 32.974171>,  <39.065411, 35.850849, 32.914291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280270, 35.518810, 32.974171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506170, 0.175252, -0.844440,
		0.674734, 0.529361, 0.514307,
		0.537147, -0.830099, 0.149699,
		39.441414, 35.269779, 33.019081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725792, 36.044437, 32.599331>,  <39.065411, 35.850849, 32.914291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725792, 36.044437, 32.599331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.762863, 35.647785, 32.635273>,  <39.785107, 35.409794, 32.656837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.762863, 35.647785, 32.635273>,  <39.725792, 36.044437, 32.599331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762863, 35.647785, 32.635273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355999, -0.051281, -0.933078,
		0.929879, 0.118461, 0.348269,
		0.092674, -0.991634, 0.089857,
		39.790665, 35.350296, 32.662231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355118, 35.813156, 32.350842>,  <39.725792, 36.044437, 32.599331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355118, 35.813156, 32.350842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.148483, 35.472584, 32.314598>,  <40.024502, 35.268242, 32.292850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.148483, 35.472584, 32.314598>,  <40.355118, 35.813156, 32.350842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148483, 35.472584, 32.314598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176486, -0.002331, -0.984300,
		0.837849, -0.524468, 0.151469,
		-0.516587, -0.851427, -0.090609,
		39.993507, 35.217155, 32.287415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776684, 35.370968, 31.980635>,  <40.355118, 35.813156, 32.350842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776684, 35.370968, 31.980635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.429852, 35.171719, 31.977802>,  <40.221752, 35.052170, 31.976103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.429852, 35.171719, 31.977802>,  <40.776684, 35.370968, 31.980635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429852, 35.171719, 31.977802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267192, -0.453004, -0.850527,
		0.420460, -0.739364, 0.525885,
		-0.867076, -0.498125, -0.007082,
		40.169727, 35.022282, 31.975677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905952, 34.728016, 31.831287>,  <40.776684, 35.370968, 31.980635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905952, 34.728016, 31.831287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.523865, 34.748837, 31.714767>,  <40.294613, 34.761330, 31.644855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.523865, 34.748837, 31.714767>,  <40.905952, 34.728016, 31.831287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523865, 34.748837, 31.714767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238844, -0.445522, -0.862823,
		-0.174694, -0.893756, 0.413136,
		-0.955215, 0.052055, -0.291299,
		40.237301, 34.764454, 31.627378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746662, 33.998814, 31.594440>,  <40.905952, 34.728016, 31.831287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746662, 33.998814, 31.594440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.484306, 34.244057, 31.418303>,  <40.326893, 34.391205, 31.312620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.484306, 34.244057, 31.418303>,  <40.746662, 33.998814, 31.594440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484306, 34.244057, 31.418303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165767, -0.452120, -0.876418,
		-0.736429, -0.647829, 0.194908,
		-0.655891, 0.613111, -0.440343,
		40.287540, 34.427990, 31.286200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346153, 33.519535, 31.196840>,  <40.746662, 33.998814, 31.594440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346153, 33.519535, 31.196840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.300957, 33.895626, 31.068335>,  <40.273838, 34.121281, 30.991230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.300957, 33.895626, 31.068335>,  <40.346153, 33.519535, 31.196840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300957, 33.895626, 31.068335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065786, -0.315548, -0.946626,
		-0.991416, -0.128095, -0.026199,
		-0.112991, 0.940224, -0.321266,
		40.267059, 34.177692, 30.971954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884521, 33.552116, 30.622080>,  <40.346153, 33.519535, 31.196840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884521, 33.552116, 30.622080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.083797, 33.895554, 30.573702>,  <40.203365, 34.101616, 30.544676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.083797, 33.895554, 30.573702>,  <39.884521, 33.552116, 30.622080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083797, 33.895554, 30.573702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164674, -0.230639, -0.959004,
		-0.851284, 0.457854, -0.256290,
		0.498194, 0.858589, -0.120943,
		40.233257, 34.153130, 30.537418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591583, 33.760414, 29.953148>,  <39.884521, 33.552116, 30.622080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591583, 33.760414, 29.953148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.925522, 33.966305, 30.031218>,  <40.125885, 34.089840, 30.078058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.925522, 33.966305, 30.031218>,  <39.591583, 33.760414, 29.953148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925522, 33.966305, 30.031218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188561, 0.065710, -0.979861,
		-0.517185, 0.854832, -0.042199,
		0.834844, 0.514727, 0.195172,
		40.175976, 34.120724, 30.089769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507412, 34.355236, 29.514772>,  <39.591583, 33.760414, 29.953148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507412, 34.355236, 29.514772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.896606, 34.314045, 29.597429>,  <40.130123, 34.289330, 29.647024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.896606, 34.314045, 29.597429>,  <39.507412, 34.355236, 29.514772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896606, 34.314045, 29.597429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223738, 0.199631, -0.953986,
		0.056987, 0.974445, 0.217277,
		0.972982, -0.102978, 0.206644,
		40.188499, 34.283150, 29.659422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898544, 34.846172, 29.104576>,  <39.507412, 34.355236, 29.514772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898544, 34.846172, 29.104576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.152256, 34.554985, 29.208698>,  <40.304482, 34.380272, 29.271172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.152256, 34.554985, 29.208698>,  <39.898544, 34.846172, 29.104576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152256, 34.554985, 29.208698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332379, -0.047224, -0.941963,
		0.698009, 0.683986, 0.212007,
		0.634278, -0.727965, 0.260305,
		40.342541, 34.336594, 29.286789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488010, 35.045979, 28.734770>,  <39.898544, 34.846172, 29.104576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488010, 35.045979, 28.734770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.576099, 34.669796, 28.838335>,  <40.628952, 34.444084, 28.900475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.576099, 34.669796, 28.838335>,  <40.488010, 35.045979, 28.734770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576099, 34.669796, 28.838335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501327, -0.118569, -0.857096,
		0.836764, 0.318552, 0.445366,
		0.220223, -0.940461, 0.258913,
		40.642166, 34.387657, 28.916008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122517, 34.938728, 28.482864>,  <40.488010, 35.045979, 28.734770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122517, 34.938728, 28.482864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.981430, 34.568157, 28.535501>,  <40.896778, 34.345814, 28.567083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.981430, 34.568157, 28.535501>,  <41.122517, 34.938728, 28.482864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981430, 34.568157, 28.535501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439767, -0.288252, -0.850598,
		0.825951, -0.242152, 0.509085,
		-0.352718, -0.926431, 0.131592,
		40.875614, 34.290230, 28.574980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702946, 34.524837, 28.355387>,  <41.122517, 34.938728, 28.482864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702946, 34.524837, 28.355387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.364410, 34.324070, 28.284065>,  <41.161289, 34.203609, 28.241272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.364410, 34.324070, 28.284065>,  <41.702946, 34.524837, 28.355387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364410, 34.324070, 28.284065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344927, -0.261361, -0.901508,
		0.405885, -0.824479, 0.394325,
		-0.846335, -0.501921, -0.178303,
		41.110508, 34.173492, 28.230574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914860, 33.869396, 28.144142>,  <41.702946, 34.524837, 28.355387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914860, 33.869396, 28.144142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.535175, 33.893562, 28.020632>,  <41.307365, 33.908062, 27.946526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.535175, 33.893562, 28.020632>,  <41.914860, 33.869396, 28.144142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535175, 33.893562, 28.020632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239043, -0.499645, -0.832594,
		-0.204577, -0.864121, 0.459829,
		-0.949214, 0.060411, -0.308778,
		41.250412, 33.911686, 27.927998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819866, 33.276573, 27.963985>,  <41.914860, 33.869396, 28.144142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819866, 33.276573, 27.963985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.505470, 33.446377, 27.784204>,  <41.316833, 33.548260, 27.676336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.505470, 33.446377, 27.784204>,  <41.819866, 33.276573, 27.963985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505470, 33.446377, 27.784204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163707, -0.558135, -0.813441,
		-0.596172, -0.712935, 0.369192,
		-0.785989, 0.424512, -0.449457,
		41.269672, 33.573730, 27.649368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.889938, 32.497757, 27.435898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.913486, 32.884682, 27.337231>,  <40.927616, 33.116837, 27.278030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.913486, 32.884682, 27.337231>,  <40.889938, 32.497757, 27.435898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913486, 32.884682, 27.337231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194468, -0.231249, -0.953261,
		-0.979141, 0.104083, 0.174498,
		0.058866, 0.967311, -0.246666,
		40.931145, 33.174873, 27.263231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205437, 32.667923, 26.960388>,  <40.889938, 32.497757, 27.435898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205437, 32.667923, 26.960388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.490948, 32.934681, 26.874813>,  <40.662254, 33.094734, 26.823469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.490948, 32.934681, 26.874813>,  <40.205437, 32.667923, 26.960388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490948, 32.934681, 26.874813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130437, -0.173537, -0.976151,
		-0.688116, 0.724663, -0.036879,
		0.713781, 0.666895, -0.213936,
		40.705082, 33.134750, 26.810633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999474, 33.117229, 26.387384>,  <40.205437, 32.667923, 26.960388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999474, 33.117229, 26.387384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.392075, 33.193050, 26.398119>,  <40.627636, 33.238541, 26.404560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.392075, 33.193050, 26.398119>,  <39.999474, 33.117229, 26.387384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392075, 33.193050, 26.398119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051841, -0.128216, -0.990390,
		-0.184288, 0.973464, -0.135671,
		0.981504, 0.189550, 0.026837,
		40.686527, 33.249916, 26.406170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175308, 33.696877, 25.926834>,  <39.999474, 33.117229, 26.387384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175308, 33.696877, 25.926834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.530315, 33.518372, 25.972744>,  <40.743320, 33.411270, 26.000290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.530315, 33.518372, 25.972744>,  <40.175308, 33.696877, 25.926834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530315, 33.518372, 25.972744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070910, -0.113845, -0.990965,
		0.455292, 0.887633, -0.069395,
		0.887514, -0.446258, 0.114775,
		40.796570, 33.384495, 26.007177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463402, 33.998257, 25.491161>,  <40.175308, 33.696877, 25.926834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463402, 33.998257, 25.491161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.674160, 33.662296, 25.543234>,  <40.800613, 33.460720, 25.574478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.674160, 33.662296, 25.543234>,  <40.463402, 33.998257, 25.491161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674160, 33.662296, 25.543234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021385, -0.140020, -0.989918,
		0.849661, 0.524368, -0.055815,
		0.526896, -0.839900, 0.130183,
		40.832230, 33.410328, 25.582289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184269, 33.941490, 25.186396>,  <40.463402, 33.998257, 25.491161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184269, 33.941490, 25.186396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.032532, 33.572441, 25.214289>,  <40.941490, 33.351013, 25.231026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.032532, 33.572441, 25.214289>,  <41.184269, 33.941490, 25.186396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032532, 33.572441, 25.214289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240770, -0.171203, -0.955363,
		0.893379, -0.345624, 0.287085,
		-0.379346, -0.922623, 0.069734,
		40.918728, 33.295654, 25.235209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581051, 33.529068, 24.680294>,  <41.184269, 33.941490, 25.186396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581051, 33.529068, 24.680294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.353928, 33.240940, 24.839661>,  <41.217651, 33.068066, 24.935280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.353928, 33.240940, 24.839661>,  <41.581051, 33.529068, 24.680294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353928, 33.240940, 24.839661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190328, -0.585777, -0.787808,
		0.800854, -0.371496, 0.469706,
		-0.567811, -0.720317, 0.398415,
		41.183586, 33.024845, 24.959185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952690, 32.947155, 24.594347>,  <41.581051, 33.529068, 24.680294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952690, 32.947155, 24.594347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.567722, 32.840885, 24.616840>,  <41.336742, 32.777122, 24.630337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.567722, 32.840885, 24.616840>,  <41.952690, 32.947155, 24.594347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567722, 32.840885, 24.616840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074429, -0.457199, -0.886245,
		0.261164, -0.848755, 0.459791,
		-0.962421, -0.265677, 0.056232,
		41.278996, 32.761181, 24.633711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963203, 32.274857, 24.443645>,  <41.952690, 32.947155, 24.594347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963203, 32.274857, 24.443645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.591385, 32.385777, 24.346449>,  <41.368294, 32.452328, 24.288132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.591385, 32.385777, 24.346449>,  <41.963203, 32.274857, 24.443645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591385, 32.385777, 24.346449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108066, -0.425190, -0.898629,
		-0.352503, -0.861580, 0.365269,
		-0.929550, 0.277296, -0.242989,
		41.312519, 32.468967, 24.273552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752411, 31.777578, 23.954536>,  <41.963203, 32.274857, 24.443645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752411, 31.777578, 23.954536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.499702, 32.079102, 23.882275>,  <41.348076, 32.260014, 23.838917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.499702, 32.079102, 23.882275>,  <41.752411, 31.777578, 23.954536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499702, 32.079102, 23.882275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178607, -0.085224, -0.980223,
		-0.754295, -0.651545, -0.080793,
		-0.631774, 0.753807, -0.180655,
		41.310169, 32.305244, 23.828077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363758, 31.479498, 23.425423>,  <41.752411, 31.777578, 23.954536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363758, 31.479498, 23.425423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.321228, 31.876976, 23.439646>,  <41.295712, 32.115463, 23.448179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.321228, 31.876976, 23.439646>,  <41.363758, 31.479498, 23.425423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321228, 31.876976, 23.439646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307845, 0.066900, -0.949081,
		-0.945477, -0.089961, -0.313018,
		-0.106321, 0.993696, 0.035558,
		41.289333, 32.175083, 23.450314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815472, 31.703217, 22.983049>,  <41.363758, 31.479498, 23.425423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815472, 31.703217, 22.983049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.062824, 32.015514, 23.018927>,  <41.211235, 32.202892, 23.040453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.062824, 32.015514, 23.018927>,  <40.815472, 31.703217, 22.983049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062824, 32.015514, 23.018927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074265, 0.055566, -0.995689,
		-0.782363, 0.622375, -0.023621,
		0.618380, 0.780744, 0.089694,
		41.248337, 32.249737, 23.045835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525318, 32.177910, 22.536200>,  <40.815472, 31.703217, 22.983049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525318, 32.177910, 22.536200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.904999, 32.290447, 22.592575>,  <41.132805, 32.357971, 22.626400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.904999, 32.290447, 22.592575>,  <40.525318, 32.177910, 22.536200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904999, 32.290447, 22.592575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118026, 0.096885, -0.988273,
		-0.291702, 0.954703, 0.058757,
		0.949200, 0.281347, 0.140941,
		41.189758, 32.374851, 22.634857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659901, 32.744076, 22.048063>,  <40.525318, 32.177910, 22.536200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659901, 32.744076, 22.048063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.031361, 32.635094, 22.148758>,  <41.254238, 32.569706, 22.209175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.031361, 32.635094, 22.148758>,  <40.659901, 32.744076, 22.048063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031361, 32.635094, 22.148758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305427, 0.176471, -0.935720,
		0.210515, 0.945848, 0.247095,
		0.928654, -0.272452, 0.251738,
		41.309956, 32.553356, 22.224279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017509, 33.246391, 21.870083>,  <40.659901, 32.744076, 22.048063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017509, 33.246391, 21.870083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.324417, 33.001644, 21.946943>,  <41.508560, 32.854797, 21.993059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.324417, 33.001644, 21.946943>,  <41.017509, 33.246391, 21.870083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324417, 33.001644, 21.946943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511428, 0.402965, -0.758987,
		0.386971, 0.680615, 0.622107,
		0.767265, -0.611868, 0.192150,
		41.554596, 32.818085, 22.004589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665184, 33.621315, 21.754660>,  <41.017509, 33.246391, 21.870083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665184, 33.621315, 21.754660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.778660, 33.242378, 21.695250>,  <41.846745, 33.015015, 21.659603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.778660, 33.242378, 21.695250>,  <41.665184, 33.621315, 21.754660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778660, 33.242378, 21.695250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298665, 0.234478, -0.925105,
		0.911218, 0.218086, 0.349458,
		0.283693, -0.947343, -0.148525,
		41.863766, 32.958176, 21.650692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287903, 33.622143, 21.338169>,  <41.665184, 33.621315, 21.754660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287903, 33.622143, 21.338169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.146267, 33.251480, 21.287695>,  <42.061287, 33.029083, 21.257410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.146267, 33.251480, 21.287695>,  <42.287903, 33.622143, 21.338169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146267, 33.251480, 21.287695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311750, 0.010256, -0.950109,
		0.881723, -0.375758, 0.285255,
		-0.354085, -0.926661, -0.126185,
		42.040043, 32.973480, 21.249840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836643, 33.271240, 21.025126>,  <42.287903, 33.622143, 21.338169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836643, 33.271240, 21.025126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.488506, 33.099152, 20.929285>,  <42.279625, 32.995899, 20.871780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.488506, 33.099152, 20.929285>,  <42.836643, 33.271240, 21.025126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488506, 33.099152, 20.929285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330338, -0.149227, -0.931991,
		0.365211, -0.890302, 0.271999,
		-0.870343, -0.430225, -0.239602,
		42.227402, 32.970085, 20.857405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035542, 32.712879, 20.471365>,  <42.836643, 33.271240, 21.025126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035542, 32.712879, 20.471365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.646210, 32.793068, 20.426758>,  <42.412609, 32.841183, 20.399994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.646210, 32.793068, 20.426758>,  <43.035542, 32.712879, 20.471365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646210, 32.793068, 20.426758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111095, -0.013385, -0.993720,
		-0.200711, -0.979607, -0.009244,
		-0.973331, 0.200477, -0.111516,
		42.354210, 32.853210, 20.393303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813293, 32.314728, 19.883043>,  <43.035542, 32.712879, 20.471365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813293, 32.314728, 19.883043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.479519, 32.531887, 19.920929>,  <42.279255, 32.662186, 19.943661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.479519, 32.531887, 19.920929>,  <42.813293, 32.314728, 19.883043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479519, 32.531887, 19.920929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035620, 0.118374, -0.992330,
		-0.549951, -0.831411, -0.079437,
		-0.834437, 0.542903, 0.094715,
		42.229187, 32.694759, 19.949343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313709, 32.087456, 19.318277>,  <42.813293, 32.314728, 19.883043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313709, 32.087456, 19.318277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.193867, 32.454857, 19.421499>,  <42.121960, 32.675297, 19.483433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.193867, 32.454857, 19.421499>,  <42.313709, 32.087456, 19.318277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193867, 32.454857, 19.421499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003652, 0.269372, -0.963029,
		-0.954056, -0.289472, -0.077352,
		-0.299606, 0.918501, 0.258053,
		42.103985, 32.730408, 19.498915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825157, 32.240360, 18.837240>,  <42.313709, 32.087456, 19.318277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825157, 32.240360, 18.837240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.962173, 32.577370, 19.003529>,  <42.044384, 32.779575, 19.103302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.962173, 32.577370, 19.003529>,  <41.825157, 32.240360, 18.837240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962173, 32.577370, 19.003529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115655, 0.401312, -0.908610,
		-0.932359, 0.359313, 0.040023,
		0.342537, 0.842522, 0.415723,
		42.064934, 32.830128, 19.128246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433056, 32.825771, 18.619175>,  <41.825157, 32.240360, 18.837240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433056, 32.825771, 18.619175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.819679, 32.902035, 18.687778>,  <42.051655, 32.947792, 18.728941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.819679, 32.902035, 18.687778>,  <41.433056, 32.825771, 18.619175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819679, 32.902035, 18.687778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109294, 0.298742, -0.948055,
		-0.231994, 0.935094, 0.267913,
		0.966558, 0.190662, 0.171507,
		42.109646, 32.959232, 18.739231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304928, 33.574116, 18.455851>,  <41.433056, 32.825771, 18.619175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304928, 33.574116, 18.455851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.185818, 33.933464, 18.326689>,  <41.114353, 34.149071, 18.249191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.185818, 33.933464, 18.326689>,  <41.304928, 33.574116, 18.455851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185818, 33.933464, 18.326689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677064, 0.039711, 0.734852,
		0.672990, 0.437444, 0.596428,
		-0.297772, 0.898368, -0.322903,
		41.096485, 34.202976, 18.229818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408646, 34.100681, 19.077637>,  <41.304928, 33.574116, 18.455851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408646, 34.100681, 19.077637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.098415, 34.186680, 18.840231>,  <40.912277, 34.238281, 18.697786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.098415, 34.186680, 18.840231>,  <41.408646, 34.100681, 19.077637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098415, 34.186680, 18.840231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628220, -0.170744, 0.759069,
		0.061860, 0.961573, 0.267492,
		-0.775573, 0.215000, -0.593517,
		40.865742, 34.251179, 18.662176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887985, 34.447327, 19.577690>,  <41.408646, 34.100681, 19.077637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887985, 34.447327, 19.577690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.667179, 34.376259, 19.251814>,  <40.534695, 34.333618, 19.056288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.667179, 34.376259, 19.251814>,  <40.887985, 34.447327, 19.577690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667179, 34.376259, 19.251814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798793, -0.167597, 0.577790,
		-0.239196, 0.969714, -0.049407,
		-0.552011, -0.177671, -0.814689,
		40.501575, 34.322956, 19.007408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304394, 34.830750, 19.586769>,  <40.887985, 34.447327, 19.577690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304394, 34.830750, 19.586769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.180302, 34.533134, 19.350067>,  <40.105846, 34.354565, 19.208046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.180302, 34.533134, 19.350067>,  <40.304394, 34.830750, 19.586769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180302, 34.533134, 19.350067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722272, -0.220264, 0.655597,
		-0.618128, 0.630791, -0.469063,
		-0.310227, -0.744034, -0.591754,
		40.087234, 34.309925, 19.172541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590088, 34.837933, 19.398039>,  <40.304394, 34.830750, 19.586769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590088, 34.837933, 19.398039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.646954, 34.446945, 19.335634>,  <39.681072, 34.212353, 19.298191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.646954, 34.446945, 19.335634>,  <39.590088, 34.837933, 19.398039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646954, 34.446945, 19.335634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727162, -0.210071, 0.653533,
		-0.671583, 0.020535, -0.740645,
		0.142168, -0.977471, -0.156012,
		39.689606, 34.153706, 19.288830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950996, 34.656170, 19.517508>,  <39.590088, 34.837933, 19.398039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950996, 34.656170, 19.517508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.175388, 34.325943, 19.541977>,  <39.310024, 34.127808, 19.556658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.175388, 34.325943, 19.541977>,  <38.950996, 34.656170, 19.517508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175388, 34.325943, 19.541977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527818, -0.299770, 0.794699,
		-0.637740, -0.478096, -0.603914,
		0.560977, -0.825567, 0.061172,
		39.343681, 34.078274, 19.560329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566891, 34.064316, 19.458683>,  <38.950996, 34.656170, 19.517508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566891, 34.064316, 19.458683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.888515, 33.932251, 19.656460>,  <39.081490, 33.853012, 19.775126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.888515, 33.932251, 19.656460>,  <38.566891, 34.064316, 19.458683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888515, 33.932251, 19.656460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594102, -0.414121, 0.689599,
		-0.022920, -0.848232, -0.529129,
		0.804064, -0.330162, 0.494444,
		39.129734, 33.833202, 19.804792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256588, 33.606483, 19.831259>,  <38.566891, 34.064316, 19.458683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256588, 33.606483, 19.831259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.621059, 33.635151, 19.993551>,  <38.839741, 33.652351, 20.090927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.621059, 33.635151, 19.993551>,  <38.256588, 33.606483, 19.831259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621059, 33.635151, 19.993551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327810, -0.470453, 0.819277,
		0.249592, -0.879510, -0.405173,
		0.911178, 0.071665, 0.405734,
		38.894413, 33.656651, 20.115271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352959, 32.957561, 20.104279>,  <38.256588, 33.606483, 19.831259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352959, 32.957561, 20.104279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.609890, 33.198193, 20.294233>,  <38.764050, 33.342571, 20.408207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.609890, 33.198193, 20.294233>,  <38.352959, 32.957561, 20.104279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609890, 33.198193, 20.294233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148566, -0.510131, 0.847169,
		0.751893, -0.614712, -0.238297,
		0.642327, 0.601578, 0.474889,
		38.802589, 33.378666, 20.436701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800232, 32.610081, 20.596668>,  <38.352959, 32.957561, 20.104279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800232, 32.610081, 20.596668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.798130, 32.979229, 20.750696>,  <38.796871, 33.200718, 20.843113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.798130, 32.979229, 20.750696>,  <38.800232, 32.610081, 20.596668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798130, 32.979229, 20.750696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128973, -0.381235, 0.915438,
		0.991634, 0.054471, -0.117023,
		-0.005252, 0.922872, 0.385071,
		38.796555, 33.256092, 20.866217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257580, 32.676510, 21.103476>,  <38.800232, 32.610081, 20.596668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257580, 32.676510, 21.103476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044479, 32.997314, 21.211512>,  <38.916618, 33.189796, 21.276333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044479, 32.997314, 21.211512>,  <39.257580, 32.676510, 21.103476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044479, 32.997314, 21.211512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269049, -0.142077, 0.952590,
		0.802362, 0.580165, -0.140088,
		-0.532756, 0.802012, 0.270089,
		38.884651, 33.237919, 21.292538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641853, 33.050365, 21.614498>,  <39.257580, 32.676510, 21.103476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641853, 33.050365, 21.614498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.275986, 33.200619, 21.674196>,  <39.056465, 33.290771, 21.710016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.275986, 33.200619, 21.674196>,  <39.641853, 33.050365, 21.614498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275986, 33.200619, 21.674196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180949, 0.050362, 0.982202,
		0.361434, 0.925398, -0.114036,
		-0.914671, 0.375636, 0.149247,
		39.001583, 33.313309, 21.718971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768902, 33.518955, 22.181730>,  <39.641853, 33.050365, 21.614498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768902, 33.518955, 22.181730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.369148, 33.507484, 22.173563>,  <39.129295, 33.500603, 22.168663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.369148, 33.507484, 22.173563>,  <39.768902, 33.518955, 22.181730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369148, 33.507484, 22.173563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024865, 0.164506, 0.986063,
		-0.024920, 0.985959, -0.165117,
		-0.999380, -0.028678, -0.020416,
		39.069336, 33.498882, 22.167439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646595, 34.019051, 22.571589>,  <39.768902, 33.518955, 22.181730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646595, 34.019051, 22.571589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.316784, 33.792801, 22.577587>,  <39.118896, 33.657051, 22.581186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.316784, 33.792801, 22.577587>,  <39.646595, 34.019051, 22.571589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316784, 33.792801, 22.577587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089380, 0.156371, 0.983646,
		-0.558720, 0.809702, -0.179488,
		-0.824526, -0.565625, 0.014997,
		39.069427, 33.623112, 22.582087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248272, 34.264133, 23.104532>,  <39.646595, 34.019051, 22.571589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248272, 34.264133, 23.104532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.065994, 33.910736, 23.061111>,  <38.956627, 33.698700, 23.035059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.065994, 33.910736, 23.061111>,  <39.248272, 34.264133, 23.104532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065994, 33.910736, 23.061111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132886, -0.053060, 0.989710,
		-0.880159, 0.465434, -0.093224,
		-0.455699, -0.883491, -0.108551,
		38.929283, 33.645687, 23.028545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610714, 34.286098, 23.436304>,  <39.248272, 34.264133, 23.104532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610714, 34.286098, 23.436304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.699032, 33.897579, 23.400925>,  <38.752022, 33.664467, 23.379698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.699032, 33.897579, 23.400925>,  <38.610714, 34.286098, 23.436304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699032, 33.897579, 23.400925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178170, -0.129329, 0.975464,
		-0.958908, -0.199617, -0.201612,
		0.220794, -0.971301, -0.088449,
		38.765270, 33.606190, 23.374390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904335, 33.874672, 23.645897>,  <38.610714, 34.286098, 23.436304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904335, 33.874672, 23.645897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212784, 33.623707, 23.689222>,  <38.397854, 33.473129, 23.715218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212784, 33.623707, 23.689222>,  <37.904335, 33.874672, 23.645897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212784, 33.623707, 23.689222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231562, -0.117895, 0.965650,
		-0.593091, -0.769711, -0.236196,
		0.771118, -0.627412, 0.108313,
		38.444118, 33.435482, 23.721716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657581, 33.396046, 24.067089>,  <37.904335, 33.874672, 23.645897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657581, 33.396046, 24.067089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.048672, 33.322800, 24.108103>,  <38.283325, 33.278854, 24.132711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.048672, 33.322800, 24.108103>,  <37.657581, 33.396046, 24.067089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048672, 33.322800, 24.108103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153834, -0.292992, 0.943658,
		-0.142750, -0.938417, -0.314635,
		0.977731, -0.183109, 0.102536,
		38.341991, 33.267868, 24.138863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846367, 32.714939, 24.200062>,  <37.657581, 33.396046, 24.067089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846367, 32.714939, 24.200062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.160988, 32.898590, 24.365248>,  <38.349762, 33.008781, 24.464359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.160988, 32.898590, 24.365248>,  <37.846367, 32.714939, 24.200062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160988, 32.898590, 24.365248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237384, -0.392554, 0.888566,
		0.570076, -0.796934, -0.199774,
		0.786551, 0.459127, 0.412965,
		38.396954, 33.036327, 24.489138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141174, 32.223511, 24.708279>,  <37.846367, 32.714939, 24.200062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141174, 32.223511, 24.708279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.247955, 32.594631, 24.812523>,  <38.312023, 32.817303, 24.875069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.247955, 32.594631, 24.812523>,  <38.141174, 32.223511, 24.708279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247955, 32.594631, 24.812523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226700, -0.202376, 0.952707,
		0.936666, -0.313407, 0.156309,
		0.266952, 0.927804, 0.260608,
		38.328041, 32.872971, 24.890705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657059, 32.150826, 25.227716>,  <38.141174, 32.223511, 24.708279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657059, 32.150826, 25.227716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.537392, 32.528721, 25.281332>,  <38.465591, 32.755459, 25.313501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.537392, 32.528721, 25.281332>,  <38.657059, 32.150826, 25.227716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537392, 32.528721, 25.281332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079211, -0.164574, 0.983179,
		0.950907, 0.283519, 0.124069,
		-0.299169, 0.944739, 0.134037,
		38.447639, 32.812141, 25.321543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.496372, 34.215485, 29.863474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.100513, 34.224689, 29.806807>,  <40.862999, 34.230213, 29.772806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.100513, 34.224689, 29.806807>,  <41.496372, 34.215485, 29.863474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100513, 34.224689, 29.806807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130384, 0.268469, 0.954424,
		0.059998, 0.963013, -0.262689,
		-0.989647, 0.023013, -0.141669,
		40.803619, 34.231594, 29.764305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263805, 34.843723, 30.210701>,  <41.496372, 34.215485, 29.863474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263805, 34.843723, 30.210701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.937389, 34.615303, 30.174967>,  <40.741539, 34.478252, 30.153526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.937389, 34.615303, 30.174967>,  <41.263805, 34.843723, 30.210701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937389, 34.615303, 30.174967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286326, 0.265127, 0.920720,
		-0.502091, 0.776924, -0.379861,
		-0.816040, -0.571050, -0.089335,
		40.692577, 34.443989, 30.148167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793392, 35.250198, 30.349203>,  <41.263805, 34.843723, 30.210701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793392, 35.250198, 30.349203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.594566, 34.905151, 30.386772>,  <40.475273, 34.698124, 30.409313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.594566, 34.905151, 30.386772>,  <40.793392, 35.250198, 30.349203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594566, 34.905151, 30.386772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348803, 0.297745, 0.888642,
		-0.794524, 0.408948, -0.448880,
		-0.497060, -0.862618, 0.093923,
		40.445450, 34.646366, 30.414949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025829, 35.424412, 30.458736>,  <40.793392, 35.250198, 30.349203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025829, 35.424412, 30.458736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.108829, 35.068939, 30.622292>,  <40.158630, 34.855656, 30.720425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.108829, 35.068939, 30.622292>,  <40.025829, 35.424412, 30.458736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108829, 35.068939, 30.622292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447063, 0.285636, 0.847671,
		-0.870104, -0.358687, -0.338028,
		0.207496, -0.888682, 0.408889,
		40.171078, 34.802334, 30.744959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433899, 35.127998, 30.726488>,  <40.025829, 35.424412, 30.458736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433899, 35.127998, 30.726488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.717335, 34.932598, 30.930161>,  <39.887394, 34.815357, 31.052364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.717335, 34.932598, 30.930161>,  <39.433899, 35.127998, 30.726488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717335, 34.932598, 30.930161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572634, 0.023542, 0.819473,
		-0.412304, -0.872243, -0.263053,
		0.708587, -0.488505, 0.509183,
		39.929913, 34.786045, 31.082916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037987, 34.610764, 31.195129>,  <39.433899, 35.127998, 30.726488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037987, 34.610764, 31.195129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.405521, 34.698231, 31.326538>,  <39.626041, 34.750713, 31.405384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.405521, 34.698231, 31.326538>,  <39.037987, 34.610764, 31.195129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405521, 34.698231, 31.326538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362040, 0.135743, 0.922226,
		0.157073, -0.966310, 0.203894,
		0.918833, 0.218675, 0.328522,
		39.681171, 34.763832, 31.425095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942577, 34.555801, 31.900188>,  <39.037987, 34.610764, 31.195129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942577, 34.555801, 31.900188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.321754, 34.683071, 31.905466>,  <39.549259, 34.759434, 31.908632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.321754, 34.683071, 31.905466>,  <38.942577, 34.555801, 31.900188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321754, 34.683071, 31.905466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079745, 0.197072, 0.977140,
		0.308303, -0.927322, 0.212185,
		0.947940, 0.318176, 0.013192,
		39.606136, 34.778522, 31.909424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290909, 34.167816, 32.283562>,  <38.942577, 34.555801, 31.900188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290909, 34.167816, 32.283562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.512341, 34.500847, 32.291225>,  <39.645199, 34.700665, 32.295822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.512341, 34.500847, 32.291225>,  <39.290909, 34.167816, 32.283562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512341, 34.500847, 32.291225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023797, -0.007182, 0.999691,
		0.832458, -0.553862, 0.015837,
		0.553577, 0.832578, 0.019159,
		39.678413, 34.750622, 32.296974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759064, 34.076176, 32.771858>,  <39.290909, 34.167816, 32.283562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759064, 34.076176, 32.771858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.747074, 34.474552, 32.737911>,  <39.739880, 34.713577, 32.717545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.747074, 34.474552, 32.737911>,  <39.759064, 34.076176, 32.771858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747074, 34.474552, 32.737911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119278, 0.080733, 0.989573,
		0.992408, 0.039789, 0.116374,
		-0.029978, 0.995941, -0.084866,
		39.738079, 34.773335, 32.712452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250957, 34.271988, 33.352463>,  <39.759064, 34.076176, 32.771858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250957, 34.271988, 33.352463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.004856, 34.569916, 33.249149>,  <39.857197, 34.748672, 33.187160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.004856, 34.569916, 33.249149>,  <40.250957, 34.271988, 33.352463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004856, 34.569916, 33.249149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186311, 0.180972, 0.965680,
		0.765998, 0.642257, 0.027424,
		-0.615252, 0.744819, -0.258283,
		39.820282, 34.793362, 33.171665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435093, 34.880951, 33.722080>,  <40.250957, 34.271988, 33.352463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435093, 34.880951, 33.722080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.049503, 34.898186, 33.617085>,  <39.818150, 34.908527, 33.554085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.049503, 34.898186, 33.617085>,  <40.435093, 34.880951, 33.722080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049503, 34.898186, 33.617085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262136, 0.013852, 0.964931,
		0.045208, 0.998976, -0.002060,
		-0.963971, 0.043083, -0.262494,
		39.760311, 34.911110, 33.538338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127602, 35.340466, 34.186115>,  <40.435093, 34.880951, 33.722080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127602, 35.340466, 34.186115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.817184, 35.124420, 34.055859>,  <39.630936, 34.994793, 33.977707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.817184, 35.124420, 34.055859>,  <40.127602, 35.340466, 34.186115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817184, 35.124420, 34.055859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391359, 0.007508, 0.920208,
		-0.494569, 0.841561, -0.217203,
		-0.776041, -0.540110, -0.325639,
		39.584373, 34.962387, 33.958168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419991, 35.707161, 34.233715>,  <40.127602, 35.340466, 34.186115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419991, 35.707161, 34.233715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.375366, 35.315121, 34.299397>,  <39.348591, 35.079899, 34.338806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.375366, 35.315121, 34.299397>,  <39.419991, 35.707161, 34.233715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375366, 35.315121, 34.299397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407575, 0.195829, 0.891927,
		-0.906331, 0.032581, -0.421311,
		-0.111564, -0.980097, 0.164207,
		39.341896, 35.021091, 34.348660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107418, 36.077293, 34.884720>,  <39.419991, 35.707161, 34.233715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107418, 36.077293, 34.884720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.108200, 36.453053, 35.021851>,  <39.108669, 36.678509, 35.104130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.108200, 36.453053, 35.021851>,  <39.107418, 36.077293, 34.884720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108200, 36.453053, 35.021851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174944, 0.337215, -0.925030,
		-0.984576, 0.061781, -0.163684,
		0.001953, 0.939398, 0.342822,
		39.108788, 36.734871, 35.124699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537830, 36.592712, 34.538639>,  <39.107418, 36.077293, 34.884720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537830, 36.592712, 34.538639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.832531, 36.829700, 34.668983>,  <39.009350, 36.971893, 34.747189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.832531, 36.829700, 34.668983>,  <38.537830, 36.592712, 34.538639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832531, 36.829700, 34.668983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026081, 0.456659, -0.889259,
		-0.675664, 0.663659, 0.320991,
		0.736749, 0.592468, 0.325857,
		39.053555, 37.007442, 34.766739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364967, 37.215347, 34.214245>,  <38.537830, 36.592712, 34.538639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364967, 37.215347, 34.214245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.751175, 37.252243, 34.311623>,  <38.982899, 37.274380, 34.370049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.751175, 37.252243, 34.311623>,  <38.364967, 37.215347, 34.214245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751175, 37.252243, 34.311623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165498, 0.504378, -0.847474,
		-0.200960, 0.858542, 0.471721,
		0.965518, 0.092239, 0.243447,
		39.040829, 37.279915, 34.384655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490757, 37.859360, 34.031624>,  <38.364967, 37.215347, 34.214245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490757, 37.859360, 34.031624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.847538, 37.679165, 34.047031>,  <39.061607, 37.571049, 34.056274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.847538, 37.679165, 34.047031>,  <38.490757, 37.859360, 34.031624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847538, 37.679165, 34.047031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289047, 0.502646, -0.814739,
		0.347671, 0.737840, 0.578548,
		0.891951, -0.450488, 0.038515,
		39.115124, 37.544018, 34.058586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741089, 38.214382, 33.631996>,  <38.490757, 37.859360, 34.031624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741089, 38.214382, 33.631996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.047783, 37.958134, 33.648598>,  <39.231800, 37.804386, 33.658558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.047783, 37.958134, 33.648598>,  <38.741089, 38.214382, 33.631996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047783, 37.958134, 33.648598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325071, 0.331695, -0.885611,
		0.553573, 0.692522, 0.462569,
		0.766737, -0.640619, 0.041502,
		39.277805, 37.765949, 33.661049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426472, 38.481102, 33.368561>,  <38.741089, 38.214382, 33.631996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426472, 38.481102, 33.368561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.488552, 38.089542, 33.315399>,  <39.525799, 37.854607, 33.283501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.488552, 38.089542, 33.315399>,  <39.426472, 38.481102, 33.368561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488552, 38.089542, 33.315399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262222, 0.170529, -0.949821,
		0.952445, 0.112563, 0.283156,
		0.155201, -0.978902, -0.132903,
		39.535114, 37.795872, 33.275528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037701, 38.473217, 32.983192>,  <39.426472, 38.481102, 33.368561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037701, 38.473217, 32.983192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.887951, 38.106579, 32.927059>,  <39.798100, 37.886597, 32.893379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.887951, 38.106579, 32.927059>,  <40.037701, 38.473217, 32.983192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887951, 38.106579, 32.927059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255113, 0.043686, -0.965924,
		0.891494, -0.397418, 0.217481,
		-0.374375, -0.916597, -0.140332,
		39.775639, 37.831600, 32.884960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535728, 37.987549, 32.708500>,  <40.037701, 38.473217, 32.983192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535728, 37.987549, 32.708500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.180607, 37.823433, 32.625099>,  <39.967533, 37.724964, 32.575058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.180607, 37.823433, 32.625099>,  <40.535728, 37.987549, 32.708500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180607, 37.823433, 32.625099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305432, -0.186357, -0.933800,
		0.344269, -0.892713, 0.290763,
		-0.887801, -0.410287, -0.208506,
		39.914268, 37.700348, 32.562546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717106, 37.499714, 32.216850>,  <40.535728, 37.987549, 32.708500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717106, 37.499714, 32.216850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.318344, 37.482796, 32.190365>,  <40.079086, 37.472645, 32.174473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.318344, 37.482796, 32.190365>,  <40.717106, 37.499714, 32.216850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318344, 37.482796, 32.190365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074525, -0.241992, -0.967412,
		0.024899, -0.969356, 0.244396,
		-0.996908, -0.042301, -0.066216,
		40.019272, 37.470104, 32.170502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440907, 36.802967, 31.999493>,  <40.717106, 37.499714, 32.216850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440907, 36.802967, 31.999493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.156002, 37.060390, 31.887413>,  <39.985058, 37.214844, 31.820166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.156002, 37.060390, 31.887413>,  <40.440907, 36.802967, 31.999493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156002, 37.060390, 31.887413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074422, -0.327702, -0.941845,
		-0.697955, -0.691696, 0.185516,
		-0.712265, 0.643559, -0.280199,
		39.942322, 37.253460, 31.803354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155602, 36.536602, 31.509726>,  <40.440907, 36.802967, 31.999493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155602, 36.536602, 31.509726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.037289, 36.913918, 31.449436>,  <39.966301, 37.140308, 31.413263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.037289, 36.913918, 31.449436>,  <40.155602, 36.536602, 31.509726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037289, 36.913918, 31.449436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180169, -0.099863, -0.978553,
		-0.938111, -0.316594, -0.140414,
		-0.295782, 0.943290, -0.150723,
		39.948555, 37.196903, 31.404219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613567, 36.513348, 30.938370>,  <40.155602, 36.536602, 31.509726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613567, 36.513348, 30.938370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.772655, 36.878437, 30.975803>,  <39.868107, 37.097492, 30.998262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.772655, 36.878437, 30.975803>,  <39.613567, 36.513348, 30.938370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772655, 36.878437, 30.975803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153115, 0.034540, -0.987605,
		-0.904642, 0.407117, -0.126014,
		0.397718, 0.912723, 0.093582,
		39.891972, 37.152252, 31.003878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279049, 36.753868, 30.420572>,  <39.613567, 36.513348, 30.938370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279049, 36.753868, 30.420572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.614880, 36.954155, 30.504854>,  <39.816376, 37.074326, 30.555424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.614880, 36.954155, 30.504854>,  <39.279049, 36.753868, 30.420572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614880, 36.954155, 30.504854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277891, -0.062575, -0.958572,
		-0.466788, 0.863347, -0.191681,
		0.839575, 0.500716, 0.210707,
		39.866753, 37.104370, 30.568066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302368, 37.140022, 29.846025>,  <39.279049, 36.753868, 30.420572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302368, 37.140022, 29.846025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.663345, 37.182175, 30.013111>,  <39.879932, 37.207466, 30.113363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.663345, 37.182175, 30.013111>,  <39.302368, 37.140022, 29.846025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663345, 37.182175, 30.013111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429685, -0.150315, -0.890380,
		-0.031042, 0.983006, -0.180932,
		0.902445, 0.105383, 0.417716,
		39.934078, 37.213791, 30.138426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660831, 37.691204, 29.452366>,  <39.302368, 37.140022, 29.846025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660831, 37.691204, 29.452366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.930504, 37.459435, 29.635557>,  <40.092308, 37.320374, 29.745472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.930504, 37.459435, 29.635557>,  <39.660831, 37.691204, 29.452366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930504, 37.459435, 29.635557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430107, -0.196081, -0.881226,
		0.600407, 0.791086, 0.117022,
		0.674180, -0.579427, 0.457980,
		40.132759, 37.285606, 29.772951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707382, 38.399128, 29.088749>,  <39.660831, 37.691204, 29.452366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707382, 38.399128, 29.088749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.474358, 38.626095, 28.855970>,  <39.334545, 38.762276, 28.716303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.474358, 38.626095, 28.855970>,  <39.707382, 38.399128, 29.088749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474358, 38.626095, 28.855970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719458, -0.026871, 0.694016,
		0.378160, 0.822991, 0.423887,
		-0.582559, 0.567418, -0.581946,
		39.299591, 38.796322, 28.681387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543076, 39.039200, 29.345869>,  <39.707382, 38.399128, 29.088749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543076, 39.039200, 29.345869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.236053, 39.030048, 29.089638>,  <39.051842, 39.024559, 28.935900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.236053, 39.030048, 29.089638>,  <39.543076, 39.039200, 29.345869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236053, 39.030048, 29.089638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632130, 0.192563, 0.750554,
		0.106180, 0.981018, -0.162264,
		-0.767553, -0.022878, -0.640577,
		39.005787, 39.023186, 28.897465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169098, 39.597828, 29.484997>,  <39.543076, 39.039200, 29.345869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169098, 39.597828, 29.484997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.918339, 39.343990, 29.304199>,  <38.767883, 39.191689, 29.195721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.918339, 39.343990, 29.304199>,  <39.169098, 39.597828, 29.484997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918339, 39.343990, 29.304199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619323, 0.053909, 0.783283,
		-0.472697, 0.770966, -0.426811,
		-0.626894, -0.634590, -0.451994,
		38.730270, 39.153614, 29.168600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493725, 39.820427, 29.411709>,  <39.169098, 39.597828, 29.484997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493725, 39.820427, 29.411709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.417816, 39.427906, 29.398876>,  <38.372272, 39.192394, 29.391176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.417816, 39.427906, 29.398876>,  <38.493725, 39.820427, 29.411709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417816, 39.427906, 29.398876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715379, 0.115818, 0.689071,
		-0.672473, 0.153716, -0.723983,
		-0.189772, -0.981304, -0.032081,
		38.360886, 39.133514, 29.389252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802299, 39.848339, 29.401001>,  <38.493725, 39.820427, 29.411709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802299, 39.848339, 29.401001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.892437, 39.467472, 29.483557>,  <37.946518, 39.238953, 29.533091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.892437, 39.467472, 29.483557>,  <37.802299, 39.848339, 29.401001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892437, 39.467472, 29.483557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775826, -0.047231, 0.629176,
		-0.589334, -0.301901, -0.749361,
		0.225342, -0.952168, 0.206388,
		37.960041, 39.181820, 29.545473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067097, 39.519829, 29.431067>,  <37.802299, 39.848339, 29.401001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067097, 39.519829, 29.431067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.309898, 39.258537, 29.612106>,  <37.455578, 39.101761, 29.720730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.309898, 39.258537, 29.612106>,  <37.067097, 39.519829, 29.431067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309898, 39.258537, 29.612106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639530, -0.063438, 0.766145,
		-0.471755, -0.754499, -0.456265,
		0.607000, -0.653227, 0.452598,
		37.491997, 39.062569, 29.747885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628845, 38.985371, 29.645500>,  <37.067097, 39.519829, 29.431067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628845, 38.985371, 29.645500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.959755, 38.979164, 29.870132>,  <37.158302, 38.975441, 30.004911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.959755, 38.979164, 29.870132>,  <36.628845, 38.985371, 29.645500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959755, 38.979164, 29.870132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540849, -0.292407, 0.788657,
		0.151972, -0.956168, -0.250294,
		0.827277, -0.015518, 0.561580,
		37.207939, 38.974510, 30.038607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568432, 38.390808, 30.062073>,  <36.628845, 38.985371, 29.645500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568432, 38.390808, 30.062073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.836601, 38.587833, 30.284035>,  <36.997501, 38.706047, 30.417212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.836601, 38.587833, 30.284035>,  <36.568432, 38.390808, 30.062073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836601, 38.587833, 30.284035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501693, -0.250075, 0.828110,
		0.546664, -0.833573, 0.079461,
		0.670419, 0.492563, 0.554905,
		37.037727, 38.735603, 30.450506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638317, 37.946358, 30.614344>,  <36.568432, 38.390808, 30.062073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638317, 37.946358, 30.614344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.779408, 38.299385, 30.738703>,  <36.864063, 38.511200, 30.813318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.779408, 38.299385, 30.738703>,  <36.638317, 37.946358, 30.614344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779408, 38.299385, 30.738703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177518, -0.263103, 0.948295,
		0.918733, -0.389681, 0.063868,
		0.352729, 0.882567, 0.310897,
		36.885227, 38.564156, 30.831972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216740, 37.842178, 31.031694>,  <36.638317, 37.946358, 30.614344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216740, 37.842178, 31.031694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.052681, 38.192211, 31.134472>,  <36.954247, 38.402229, 31.196138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.052681, 38.192211, 31.134472>,  <37.216740, 37.842178, 31.031694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052681, 38.192211, 31.134472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045066, -0.261941, 0.964031,
		0.910906, 0.406972, 0.067998,
		-0.410145, 0.875077, 0.256944,
		36.929638, 38.454735, 31.211555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568539, 37.970139, 31.603151>,  <37.216740, 37.842178, 31.031694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568539, 37.970139, 31.603151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.249638, 38.209991, 31.630964>,  <37.058296, 38.353901, 31.647652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.249638, 38.209991, 31.630964>,  <37.568539, 37.970139, 31.603151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249638, 38.209991, 31.630964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050329, -0.180817, 0.982228,
		0.601547, 0.779582, 0.174336,
		-0.797251, 0.599630, 0.069534,
		37.010464, 38.389881, 31.651825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574402, 38.289196, 32.328773>,  <37.568539, 37.970139, 31.603151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574402, 38.289196, 32.328773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.192120, 38.318539, 32.214764>,  <36.962749, 38.336143, 32.146358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.192120, 38.318539, 32.214764>,  <37.574402, 38.289196, 32.328773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192120, 38.318539, 32.214764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290315, -0.394008, 0.872052,
		-0.048331, 0.916175, 0.397853,
		-0.955710, 0.073356, -0.285022,
		36.905407, 38.340546, 32.129257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.472031, 39.838230, 25.293310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168686, 39.577511, 25.290720>,  <40.986679, 39.421078, 25.289165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168686, 39.577511, 25.290720>,  <41.472031, 39.838230, 25.293310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168686, 39.577511, 25.290720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101350, 0.108097, 0.988961,
		-0.643902, 0.750650, -0.148037,
		-0.758366, -0.651797, -0.006474,
		40.941177, 39.381973, 25.288778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045292, 40.041355, 25.752424>,  <41.472031, 39.838230, 25.293310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045292, 40.041355, 25.752424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917984, 39.662750, 25.731174>,  <40.841599, 39.435589, 25.718424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917984, 39.662750, 25.731174>,  <41.045292, 40.041355, 25.752424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917984, 39.662750, 25.731174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293629, 0.045140, 0.954853,
		-0.901381, 0.319498, -0.292290,
		-0.318268, -0.946511, -0.053125,
		40.822502, 39.378796, 25.715237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357521, 40.080204, 25.898880>,  <41.045292, 40.041355, 25.752424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357521, 40.080204, 25.898880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399742, 39.689545, 25.973724>,  <40.425076, 39.455147, 26.018631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399742, 39.689545, 25.973724>,  <40.357521, 40.080204, 25.898880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399742, 39.689545, 25.973724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375996, 0.134994, 0.916735,
		-0.920590, -0.167117, -0.352969,
		0.105553, -0.976652, 0.187109,
		40.431408, 39.396549, 26.029858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776123, 39.843597, 26.195200>,  <40.357521, 40.080204, 25.898880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776123, 39.843597, 26.195200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031277, 39.553497, 26.298824>,  <40.184368, 39.379436, 26.361000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031277, 39.553497, 26.298824>,  <39.776123, 39.843597, 26.195200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031277, 39.553497, 26.298824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386926, -0.010955, 0.922046,
		-0.665878, -0.688395, -0.287607,
		0.637883, -0.725253, 0.259063,
		40.222641, 39.335922, 26.376543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359421, 39.362019, 26.510693>,  <39.776123, 39.843597, 26.195200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359421, 39.362019, 26.510693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718433, 39.275097, 26.664167>,  <39.933842, 39.222942, 26.756252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718433, 39.275097, 26.664167>,  <39.359421, 39.362019, 26.510693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718433, 39.275097, 26.664167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428567, -0.225121, 0.875015,
		-0.103766, -0.949790, -0.295182,
		0.897532, -0.217303, 0.383689,
		39.987694, 39.209908, 26.779274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243900, 38.686745, 26.776136>,  <39.359421, 39.362019, 26.510693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243900, 38.686745, 26.776136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585709, 38.817245, 26.937803>,  <39.790794, 38.895546, 27.034803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585709, 38.817245, 26.937803>,  <39.243900, 38.686745, 26.776136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585709, 38.817245, 26.937803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273508, -0.378872, 0.884109,
		0.441574, -0.866033, -0.234521,
		0.854521, 0.326256, 0.404167,
		39.842064, 38.915123, 27.059053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439671, 38.162746, 27.219473>,  <39.243900, 38.686745, 26.776136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439671, 38.162746, 27.219473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649097, 38.470207, 27.366472>,  <39.774754, 38.654682, 27.454672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649097, 38.470207, 27.366472>,  <39.439671, 38.162746, 27.219473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649097, 38.470207, 27.366472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410804, -0.150133, 0.899278,
		0.746401, -0.621805, 0.237159,
		0.523570, 0.768648, 0.367499,
		39.806168, 38.700802, 27.476723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715538, 37.925838, 27.884377>,  <39.439671, 38.162746, 27.219473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715538, 37.925838, 27.884377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711903, 38.325275, 27.905308>,  <39.709721, 38.564938, 27.917866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711903, 38.325275, 27.905308>,  <39.715538, 37.925838, 27.884377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711903, 38.325275, 27.905308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286322, -0.052736, 0.956681,
		0.958091, -0.006285, 0.286397,
		-0.009091, 0.998589, 0.052326,
		39.709175, 38.624851, 27.921005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105183, 38.166245, 28.557049>,  <39.715538, 37.925838, 27.884377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105183, 38.166245, 28.557049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838406, 38.437798, 28.434214>,  <39.678337, 38.600731, 28.360512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838406, 38.437798, 28.434214>,  <40.105183, 38.166245, 28.557049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838406, 38.437798, 28.434214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450411, -0.039014, 0.891968,
		0.593561, 0.733209, 0.331796,
		-0.666944, 0.678883, -0.307088,
		39.638321, 38.641464, 28.342087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379478, 37.954689, 29.102230>,  <40.105183, 38.166245, 28.557049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379478, 37.954689, 29.102230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468159, 37.609074, 29.283024>,  <40.521366, 37.401707, 29.391500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468159, 37.609074, 29.283024>,  <40.379478, 37.954689, 29.102230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468159, 37.609074, 29.283024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530587, -0.282004, -0.799344,
		0.818124, 0.417030, 0.395927,
		0.221698, -0.864037, 0.451985,
		40.534668, 37.349861, 29.418619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105923, 37.908504, 29.101618>,  <40.379478, 37.954689, 29.102230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105923, 37.908504, 29.101618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988796, 37.529507, 29.153032>,  <40.918522, 37.302109, 29.183882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988796, 37.529507, 29.153032>,  <41.105923, 37.908504, 29.101618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988796, 37.529507, 29.153032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637635, -0.293670, -0.712166,
		0.712517, -0.126573, 0.690144,
		-0.292816, -0.947490, 0.128538,
		40.900951, 37.245258, 29.191593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732544, 37.405060, 29.180824>,  <41.105923, 37.908504, 29.101618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732544, 37.405060, 29.180824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439270, 37.151726, 29.081766>,  <41.263306, 36.999725, 29.022331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439270, 37.151726, 29.081766>,  <41.732544, 37.405060, 29.180824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439270, 37.151726, 29.081766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525534, -0.296587, -0.797402,
		0.431574, -0.714788, 0.550292,
		-0.733183, -0.633335, -0.247646,
		41.219315, 36.961723, 29.007473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073601, 36.842487, 28.830198>,  <41.732544, 37.405060, 29.180824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073601, 36.842487, 28.830198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689079, 36.776516, 28.741938>,  <41.458366, 36.736935, 28.688980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689079, 36.776516, 28.741938>,  <42.073601, 36.842487, 28.830198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689079, 36.776516, 28.741938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269608, -0.398781, -0.876518,
		0.056571, -0.902093, 0.427817,
		-0.961307, -0.164928, -0.220652,
		41.400688, 36.727039, 28.675741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128754, 36.274265, 28.519596>,  <42.073601, 36.842487, 28.830198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128754, 36.274265, 28.519596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774643, 36.437180, 28.429794>,  <41.562176, 36.534927, 28.375914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774643, 36.437180, 28.429794>,  <42.128754, 36.274265, 28.519596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774643, 36.437180, 28.429794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162512, -0.181390, -0.969890,
		-0.435750, -0.895105, 0.094391,
		-0.885275, 0.407290, -0.224506,
		41.509060, 36.559368, 28.362442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632748, 35.744579, 28.296829>,  <42.128754, 36.274265, 28.519596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632748, 35.744579, 28.296829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533924, 36.082161, 28.106379>,  <41.474628, 36.284710, 27.992107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533924, 36.082161, 28.106379>,  <41.632748, 35.744579, 28.296829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533924, 36.082161, 28.106379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119104, -0.461185, -0.879274,
		-0.961653, -0.273940, 0.013421,
		-0.247058, 0.843958, -0.476127,
		41.459808, 36.335350, 27.963541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234615, 35.516098, 27.688025>,  <41.632748, 35.744579, 28.296829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234615, 35.516098, 27.688025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333160, 35.893803, 27.600677>,  <41.392288, 36.120426, 27.548269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333160, 35.893803, 27.600677>,  <41.234615, 35.516098, 27.688025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333160, 35.893803, 27.600677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078733, -0.244068, -0.966557,
		-0.965975, 0.220929, -0.134473,
		0.246361, 0.944257, -0.218369,
		41.407070, 36.177078, 27.535168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051586, 35.476452, 27.027649>,  <41.234615, 35.516098, 27.688025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051586, 35.476452, 27.027649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266258, 35.813606, 27.043180>,  <41.395061, 36.015900, 27.052500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266258, 35.813606, 27.043180>,  <41.051586, 35.476452, 27.027649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266258, 35.813606, 27.043180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237632, -0.106827, -0.965463,
		-0.809631, 0.527375, -0.257630,
		0.536683, 0.842890, 0.038831,
		41.427261, 36.066475, 27.054831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923611, 35.733528, 26.367596>,  <41.051586, 35.476452, 27.027649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923611, 35.733528, 26.367596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234653, 35.949627, 26.496258>,  <41.421280, 36.079285, 26.573454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234653, 35.949627, 26.496258>,  <40.923611, 35.733528, 26.367596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234653, 35.949627, 26.496258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379749, 0.004182, -0.925080,
		-0.501113, 0.841499, -0.201905,
		0.777609, 0.540243, 0.321654,
		41.467937, 36.111698, 26.592754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940235, 36.253304, 25.926220>,  <40.923611, 35.733528, 26.367596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940235, 36.253304, 25.926220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305130, 36.193565, 26.078804>,  <41.524067, 36.157722, 26.170355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305130, 36.193565, 26.078804>,  <40.940235, 36.253304, 25.926220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305130, 36.193565, 26.078804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394450, 0.068882, -0.916332,
		0.110576, 0.986383, 0.121746,
		0.912240, -0.149347, 0.381462,
		41.578800, 36.148762, 26.193243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395729, 36.691818, 25.557148>,  <40.940235, 36.253304, 25.926220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395729, 36.691818, 25.557148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659916, 36.430569, 25.705318>,  <41.818428, 36.273819, 25.794220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659916, 36.430569, 25.705318>,  <41.395729, 36.691818, 25.557148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659916, 36.430569, 25.705318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448536, -0.052454, -0.892224,
		0.602162, 0.755433, 0.258305,
		0.660466, -0.653123, 0.370425,
		41.858055, 36.234631, 25.816446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055931, 36.824749, 25.202780>,  <41.395729, 36.691818, 25.557148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055931, 36.824749, 25.202780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043766, 36.445713, 25.329990>,  <42.036465, 36.218292, 25.406317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043766, 36.445713, 25.329990>,  <42.055931, 36.824749, 25.202780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043766, 36.445713, 25.329990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499747, -0.289967, -0.816194,
		0.865637, 0.134109, 0.482376,
		-0.030415, -0.947594, 0.318027,
		42.034641, 36.161434, 25.425398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762154, 36.553600, 25.215731>,  <42.055931, 36.824749, 25.202780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762154, 36.553600, 25.215731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498699, 36.254387, 25.183134>,  <42.340626, 36.074860, 25.163576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498699, 36.254387, 25.183134>,  <42.762154, 36.553600, 25.215731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498699, 36.254387, 25.183134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461989, -0.316520, -0.828481,
		0.593940, -0.583316, 0.554056,
		-0.658636, -0.748036, -0.081492,
		42.301109, 36.029976, 25.158686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185776, 36.010777, 25.155823>,  <42.762154, 36.553600, 25.215731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185776, 36.010777, 25.155823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831215, 35.876957, 25.027847>,  <42.618477, 35.796665, 24.951061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831215, 35.876957, 25.027847>,  <43.185776, 36.010777, 25.155823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831215, 35.876957, 25.027847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429458, -0.336365, -0.838108,
		0.172769, -0.880305, 0.441830,
		-0.886407, -0.334546, -0.319940,
		42.565292, 35.776592, 24.931866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.713104, 35.256546, 23.859362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.022854, 35.507992, 23.888176>,  <37.208706, 35.658859, 23.905464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.022854, 35.507992, 23.888176>,  <36.713104, 35.256546, 23.859362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022854, 35.507992, 23.888176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078058, -0.207893, 0.975032,
		0.627892, -0.749418, -0.210055,
		0.774376, 0.628612, 0.072037,
		37.255165, 35.696575, 23.909786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268505, 34.947178, 24.278599>,  <36.713104, 35.256546, 23.859362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268505, 34.947178, 24.278599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.329029, 35.341537, 24.307186>,  <37.365341, 35.578152, 24.324339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.329029, 35.341537, 24.307186>,  <37.268505, 34.947178, 24.278599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329029, 35.341537, 24.307186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102094, -0.056328, 0.993179,
		0.983201, -0.157570, 0.092132,
		0.151306, 0.985900, 0.071468,
		37.374420, 35.637306, 24.328627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570755, 34.986195, 24.873045>,  <37.268505, 34.947178, 24.278599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570755, 34.986195, 24.873045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.449898, 35.361149, 24.803740>,  <37.377384, 35.586121, 24.762156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.449898, 35.361149, 24.803740>,  <37.570755, 34.986195, 24.873045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449898, 35.361149, 24.803740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100382, 0.149461, 0.983659,
		0.947961, 0.314602, 0.048938,
		-0.302146, 0.937383, -0.173264,
		37.359253, 35.642365, 24.751760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940838, 35.372223, 25.377777>,  <37.570755, 34.986195, 24.873045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940838, 35.372223, 25.377777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.637871, 35.598297, 25.247000>,  <37.456093, 35.733940, 25.168533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.637871, 35.598297, 25.247000>,  <37.940838, 35.372223, 25.377777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637871, 35.598297, 25.247000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257203, 0.201981, 0.945014,
		0.600141, 0.799858, -0.007617,
		-0.757415, 0.565182, -0.326942,
		37.410645, 35.767853, 25.148916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132919, 35.948334, 25.576561>,  <37.940838, 35.372223, 25.377777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132919, 35.948334, 25.576561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.735104, 35.971848, 25.542084>,  <37.496414, 35.985954, 25.521397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.735104, 35.971848, 25.542084>,  <38.132919, 35.948334, 25.576561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735104, 35.971848, 25.542084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057168, 0.384045, 0.921543,
		0.087277, 0.921441, -0.378588,
		-0.994542, 0.058786, -0.086195,
		37.436741, 35.989483, 25.516226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952248, 36.550816, 26.084906>,  <38.132919, 35.948334, 25.576561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952248, 36.550816, 26.084906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.605179, 36.373318, 25.995255>,  <37.396938, 36.266819, 25.941463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.605179, 36.373318, 25.995255>,  <37.952248, 36.550816, 26.084906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605179, 36.373318, 25.995255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331267, 0.179924, 0.926223,
		-0.370681, 0.877905, -0.303113,
		-0.867673, -0.443745, -0.224127,
		37.344875, 36.240192, 25.928017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493782, 36.982990, 26.495848>,  <37.952248, 36.550816, 26.084906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493782, 36.982990, 26.495848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.280254, 36.663368, 26.385172>,  <37.152138, 36.471596, 26.318766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.280254, 36.663368, 26.385172>,  <37.493782, 36.982990, 26.495848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280254, 36.663368, 26.385172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314304, -0.116277, 0.942174,
		-0.785019, 0.589911, -0.189075,
		-0.533814, -0.799052, -0.276691,
		37.120110, 36.423653, 26.302164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685429, 37.154358, 26.607670>,  <37.493782, 36.982990, 26.495848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685429, 37.154358, 26.607670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.809486, 36.774231, 26.618334>,  <36.883919, 36.546154, 26.624733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.809486, 36.774231, 26.618334>,  <36.685429, 37.154358, 26.607670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809486, 36.774231, 26.618334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352460, -0.088894, 0.931595,
		-0.882940, -0.298324, -0.362518,
		0.310142, -0.950316, 0.026659,
		36.902531, 36.489136, 26.626331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447189, 37.050713, 27.251841>,  <36.685429, 37.154358, 26.607670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447189, 37.050713, 27.251841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.602837, 36.696880, 27.148994>,  <36.696224, 36.484581, 27.087286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.602837, 36.696880, 27.148994>,  <36.447189, 37.050713, 27.251841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602837, 36.696880, 27.148994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324643, -0.392888, 0.860375,
		-0.862088, -0.251314, -0.440051,
		0.389115, -0.884579, -0.257117,
		36.719570, 36.431507, 27.071859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903938, 36.457882, 27.136242>,  <36.447189, 37.050713, 27.251841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903938, 36.457882, 27.136242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.265850, 36.321430, 27.238220>,  <36.482998, 36.239559, 27.299406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.265850, 36.321430, 27.238220>,  <35.903938, 36.457882, 27.136242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265850, 36.321430, 27.238220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387260, -0.409967, 0.825807,
		-0.177188, -0.845907, -0.503037,
		0.904784, -0.341129, 0.254945,
		36.537285, 36.219093, 27.314703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869339, 35.782440, 27.302124>,  <35.903938, 36.457882, 27.136242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869339, 35.782440, 27.302124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.219414, 35.853207, 27.482235>,  <36.429459, 35.895668, 27.590302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.219414, 35.853207, 27.482235>,  <35.869339, 35.782440, 27.302124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219414, 35.853207, 27.482235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360644, -0.381796, 0.850980,
		0.322468, -0.907156, -0.270339,
		0.875186, 0.176918, 0.450277,
		36.481968, 35.906281, 27.617317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059620, 35.151829, 27.545231>,  <35.869339, 35.782440, 27.302124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059620, 35.151829, 27.545231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.259560, 35.423717, 27.759941>,  <36.379524, 35.586853, 27.888767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.259560, 35.423717, 27.759941>,  <36.059620, 35.151829, 27.545231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259560, 35.423717, 27.759941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261284, -0.472537, 0.841688,
		0.825763, -0.560965, -0.058595,
		0.499846, 0.679725, 0.536775,
		36.409515, 35.627636, 27.920973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291092, 34.761017, 28.111359>,  <36.059620, 35.151829, 27.545231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291092, 34.761017, 28.111359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.294609, 35.152237, 28.194626>,  <36.296719, 35.386971, 28.244587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.294609, 35.152237, 28.194626>,  <36.291092, 34.761017, 28.111359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294609, 35.152237, 28.194626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377945, -0.189483, 0.906230,
		0.925786, -0.086644, 0.367985,
		0.008792, 0.978054, 0.208168,
		36.297245, 35.445652, 28.257076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369362, 34.765789, 28.802372>,  <36.291092, 34.761017, 28.111359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369362, 34.765789, 28.802372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.273800, 35.148823, 28.737923>,  <36.216461, 35.378643, 28.699253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.273800, 35.148823, 28.737923>,  <36.369362, 34.765789, 28.802372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273800, 35.148823, 28.737923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499125, 0.021231, 0.866270,
		0.832945, 0.287378, 0.472881,
		-0.238908, 0.957582, -0.161121,
		36.202129, 35.436096, 28.689587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100754, 34.752533, 28.762184>,  <36.369362, 34.765789, 28.802372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100754, 34.752533, 28.762184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.199085, 34.386719, 28.890684>,  <37.258083, 34.167233, 28.967783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.199085, 34.386719, 28.890684>,  <37.100754, 34.752533, 28.762184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199085, 34.386719, 28.890684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505255, -0.161938, -0.847640,
		0.827216, 0.370685, 0.422263,
		0.245827, -0.914532, 0.321248,
		37.272835, 34.112358, 28.987059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808167, 34.676201, 28.529478>,  <37.100754, 34.752533, 28.762184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808167, 34.676201, 28.529478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.648678, 34.320507, 28.619179>,  <37.552986, 34.107090, 28.672998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.648678, 34.320507, 28.619179>,  <37.808167, 34.676201, 28.529478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648678, 34.320507, 28.619179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406874, -0.390675, -0.825728,
		0.821872, -0.237994, 0.517576,
		-0.398722, -0.889231, 0.224251,
		37.529060, 34.053738, 28.686455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445206, 34.252174, 28.601627>,  <37.808167, 34.676201, 28.529478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445206, 34.252174, 28.601627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.125023, 34.029221, 28.513447>,  <37.932915, 33.895451, 28.460539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.125023, 34.029221, 28.513447>,  <38.445206, 34.252174, 28.601627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125023, 34.029221, 28.513447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436386, -0.289791, -0.851815,
		0.410900, -0.778042, 0.475197,
		-0.800455, -0.557380, -0.220451,
		37.884888, 33.862007, 28.447311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756592, 33.679958, 28.127316>,  <38.445206, 34.252174, 28.601627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756592, 33.679958, 28.127316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.358906, 33.662758, 28.087936>,  <38.120296, 33.652439, 28.064308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.358906, 33.662758, 28.087936>,  <38.756592, 33.679958, 28.127316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358906, 33.662758, 28.087936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107414, -0.381790, -0.917986,
		0.001887, -0.923248, 0.384200,
		-0.994213, -0.043001, -0.098449,
		38.060642, 33.649857, 28.058401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603981, 33.041454, 27.827572>,  <38.756592, 33.679958, 28.127316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603981, 33.041454, 27.827572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.283016, 33.259277, 27.729933>,  <38.090435, 33.389973, 27.671350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.283016, 33.259277, 27.729933>,  <38.603981, 33.041454, 27.827572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283016, 33.259277, 27.729933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029725, -0.372053, -0.927735,
		-0.596025, -0.751685, 0.282354,
		-0.802416, 0.544560, -0.244097,
		38.042290, 33.422646, 27.656704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190643, 32.615795, 27.564358>,  <38.603981, 33.041454, 27.827572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190643, 32.615795, 27.564358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.081112, 32.975758, 27.428602>,  <38.015392, 33.191734, 27.347149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.081112, 32.975758, 27.428602>,  <38.190643, 32.615795, 27.564358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081112, 32.975758, 27.428602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040075, -0.363247, -0.930831,
		-0.960943, -0.241287, 0.135532,
		-0.273828, 0.899907, -0.339390,
		37.998962, 33.245731, 27.326786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546509, 32.476768, 27.125986>,  <38.190643, 32.615795, 27.564358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546509, 32.476768, 27.125986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.716625, 32.828392, 27.039845>,  <37.818695, 33.039368, 26.988159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.716625, 32.828392, 27.039845>,  <37.546509, 32.476768, 27.125986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716625, 32.828392, 27.039845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033370, -0.222556, -0.974349,
		-0.904440, 0.421571, -0.065318,
		0.425294, 0.879060, -0.215356,
		37.844212, 33.092110, 26.975237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270035, 32.628513, 26.542988>,  <37.546509, 32.476768, 27.125986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270035, 32.628513, 26.542988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.593445, 32.863770, 26.535282>,  <37.787491, 33.004925, 26.530659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.593445, 32.863770, 26.535282>,  <37.270035, 32.628513, 26.542988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593445, 32.863770, 26.535282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002167, -0.035716, -0.999360,
		-0.588455, 0.807967, -0.030152,
		0.808527, 0.588144, -0.019266,
		37.836002, 33.040215, 26.529503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141312, 33.008572, 25.957838>,  <37.270035, 32.628513, 26.542988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141312, 33.008572, 25.957838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.532932, 33.063477, 26.017996>,  <37.767906, 33.096420, 26.054090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.532932, 33.063477, 26.017996>,  <37.141312, 33.008572, 25.957838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532932, 33.063477, 26.017996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163492, -0.089699, -0.982458,
		-0.121369, 0.986464, -0.110262,
		0.979051, 0.137267, 0.150392,
		37.826649, 33.104656, 26.063114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379517, 33.634068, 25.581835>,  <37.141312, 33.008572, 25.957838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379517, 33.634068, 25.581835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.686466, 33.381828, 25.628279>,  <37.870636, 33.230484, 25.656145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.686466, 33.381828, 25.628279>,  <37.379517, 33.634068, 25.581835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686466, 33.381828, 25.628279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267863, 0.150749, -0.951590,
		0.582567, 0.761329, 0.284595,
		0.767375, -0.630598, 0.116110,
		37.916679, 33.192650, 25.663113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983009, 34.073078, 25.300552>,  <37.379517, 33.634068, 25.581835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983009, 34.073078, 25.300552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.097176, 33.689896, 25.312263>,  <38.165676, 33.459988, 25.319290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.097176, 33.689896, 25.312263>,  <37.983009, 34.073078, 25.300552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097176, 33.689896, 25.312263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511317, 0.126361, -0.850052,
		0.810614, 0.257586, 0.525884,
		0.285413, -0.957957, 0.029278,
		38.182800, 33.402508, 25.321047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750942, 33.991299, 25.291769>,  <37.983009, 34.073078, 25.300552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750942, 33.991299, 25.291769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.597729, 33.652367, 25.144625>,  <38.505798, 33.449009, 25.056337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.597729, 33.652367, 25.144625>,  <38.750942, 33.991299, 25.291769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597729, 33.652367, 25.144625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514068, 0.135337, -0.847005,
		0.767475, -0.513540, 0.383744,
		-0.383036, -0.847326, -0.367862,
		38.482819, 33.398170, 25.034266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365158, 33.491833, 24.986454>,  <38.750942, 33.991299, 25.291769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365158, 33.491833, 24.986454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.009888, 33.470966, 24.803839>,  <38.796726, 33.458447, 24.694269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.009888, 33.470966, 24.803839>,  <39.365158, 33.491833, 24.986454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009888, 33.470966, 24.803839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459484, -0.090213, -0.883593,
		0.004913, -0.994555, 0.104097,
		-0.888173, -0.052172, -0.456539,
		38.743435, 33.455315, 24.666878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627857, 33.194115, 24.260366>,  <39.365158, 33.491833, 24.986454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627857, 33.194115, 24.260366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.229336, 33.197342, 24.226166>,  <38.990223, 33.199276, 24.205645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.229336, 33.197342, 24.226166>,  <39.627857, 33.194115, 24.260366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229336, 33.197342, 24.226166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085784, 0.141056, -0.986278,
		0.004103, -0.989969, -0.141227,
		-0.996305, 0.008068, -0.085502,
		38.930443, 33.199760, 24.200516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962776, 32.565254, 24.606180>,  <39.627857, 33.194115, 24.260366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962776, 32.565254, 24.606180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.361050, 32.600010, 24.593094>,  <40.600014, 32.620865, 24.585241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.361050, 32.600010, 24.593094>,  <39.962776, 32.565254, 24.606180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361050, 32.600010, 24.593094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029911, 0.033396, 0.998995,
		0.087902, -0.995657, 0.030652,
		0.995680, 0.086897, -0.032717,
		40.659752, 32.626076, 24.583279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265690, 32.132477, 25.158527>,  <39.962776, 32.565254, 24.606180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265690, 32.132477, 25.158527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.542862, 32.408321, 25.074358>,  <40.709167, 32.573830, 25.023855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.542862, 32.408321, 25.074358>,  <40.265690, 32.132477, 25.158527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542862, 32.408321, 25.074358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272404, 0.019817, 0.961979,
		0.667561, -0.723909, -0.174121,
		0.692934, 0.689611, -0.210425,
		40.750744, 32.615204, 25.011230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972599, 32.009415, 25.488794>,  <40.265690, 32.132477, 25.158527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972599, 32.009415, 25.488794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.921932, 32.397621, 25.406775>,  <40.891533, 32.630547, 25.357563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.921932, 32.397621, 25.406775>,  <40.972599, 32.009415, 25.488794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921932, 32.397621, 25.406775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203863, 0.227772, 0.952134,
		0.970771, 0.078801, -0.226704,
		-0.126666, 0.970521, -0.205050,
		40.883934, 32.688778, 25.345259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553970, 32.232086, 25.788038>,  <40.972599, 32.009415, 25.488794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553970, 32.232086, 25.788038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.332024, 32.563080, 25.753639>,  <41.198856, 32.761677, 25.733000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.332024, 32.563080, 25.753639>,  <41.553970, 32.232086, 25.788038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332024, 32.563080, 25.753639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260030, 0.270688, 0.926883,
		0.790260, 0.491931, -0.365366,
		-0.554863, 0.827485, -0.085997,
		41.165565, 32.811325, 25.727840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809498, 32.688606, 26.318447>,  <41.553970, 32.232086, 25.788038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809498, 32.688606, 26.318447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.516712, 32.933262, 26.198366>,  <41.341042, 33.080055, 26.126318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.516712, 32.933262, 26.198366>,  <41.809498, 32.688606, 26.318447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516712, 32.933262, 26.198366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009503, 0.431395, 0.902113,
		0.681277, 0.663167, -0.309953,
		-0.731964, 0.611643, -0.300202,
		41.297123, 33.116756, 26.108305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976643, 33.419838, 26.457701>,  <41.809498, 32.688606, 26.318447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976643, 33.419838, 26.457701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.583206, 33.348244, 26.448639>,  <41.347145, 33.305286, 26.443201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.583206, 33.348244, 26.448639>,  <41.976643, 33.419838, 26.457701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583206, 33.348244, 26.448639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080806, 0.324791, 0.942328,
		-0.161304, 0.928696, -0.333924,
		-0.983591, -0.178984, -0.022654,
		41.288128, 33.294548, 26.441843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571453, 34.019993, 26.635071>,  <41.976643, 33.419838, 26.457701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571453, 34.019993, 26.635071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.309063, 33.725849, 26.703115>,  <41.151627, 33.549362, 26.743942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.309063, 33.725849, 26.703115>,  <41.571453, 34.019993, 26.635071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309063, 33.725849, 26.703115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277761, 0.444754, 0.851494,
		-0.701812, 0.511312, -0.496004,
		-0.655979, -0.735359, 0.170111,
		41.112270, 33.505241, 26.754148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855621, 34.303299, 26.609425>,  <41.571453, 34.019993, 26.635071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855621, 34.303299, 26.609425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.872177, 33.980381, 26.844904>,  <40.882111, 33.786633, 26.986193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.872177, 33.980381, 26.844904>,  <40.855621, 34.303299, 26.609425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872177, 33.980381, 26.844904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310604, 0.549614, 0.775531,
		-0.949638, -0.214954, -0.227998,
		0.041392, -0.807291, 0.588700,
		40.884594, 33.738194, 27.021515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238941, 34.181770, 27.082376>,  <40.855621, 34.303299, 26.609425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238941, 34.181770, 27.082376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.558697, 34.001823, 27.241676>,  <40.750549, 33.893856, 27.337255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.558697, 34.001823, 27.241676>,  <40.238941, 34.181770, 27.082376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558697, 34.001823, 27.241676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204751, 0.419192, 0.884508,
		-0.564851, -0.788607, 0.242987,
		0.799387, -0.449863, 0.398249,
		40.798512, 33.866863, 27.361151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977837, 33.825577, 27.665882>,  <40.238941, 34.181770, 27.082376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977837, 33.825577, 27.665882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.370171, 33.849144, 27.740162>,  <40.605572, 33.863285, 27.784729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.370171, 33.849144, 27.740162>,  <39.977837, 33.825577, 27.665882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370171, 33.849144, 27.740162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192203, 0.136901, 0.971759,
		0.031829, -0.988831, 0.145601,
		0.980839, 0.058915, 0.185699,
		40.664421, 33.866817, 27.795872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099495, 33.318123, 28.073204>,  <39.977837, 33.825577, 27.665882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099495, 33.318123, 28.073204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.388317, 33.586716, 28.139835>,  <40.561611, 33.747871, 28.179813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.388317, 33.586716, 28.139835>,  <40.099495, 33.318123, 28.073204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388317, 33.586716, 28.139835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151926, -0.081003, 0.985067,
		0.674944, -0.736584, 0.043526,
		0.722058, 0.671478, 0.166579,
		40.604935, 33.788158, 28.189810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493660, 33.064941, 28.610222>,  <40.099495, 33.318123, 28.073204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493660, 33.064941, 28.610222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.618149, 33.444912, 28.621458>,  <40.692841, 33.672894, 28.628201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.618149, 33.444912, 28.621458>,  <40.493660, 33.064941, 28.610222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618149, 33.444912, 28.621458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125465, 0.011770, 0.992028,
		0.942019, -0.312265, 0.122845,
		0.311222, 0.949922, 0.028090,
		40.711514, 33.729889, 28.629885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789112, 33.124863, 29.206270>,  <40.493660, 33.064941, 28.610222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789112, 33.124863, 29.206270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.774788, 33.521095, 29.153404>,  <40.766193, 33.758835, 29.121685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.774788, 33.521095, 29.153404>,  <40.789112, 33.124863, 29.206270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774788, 33.521095, 29.153404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044000, 0.130556, 0.990464,
		0.998390, 0.041286, 0.038910,
		-0.035812, 0.990581, -0.132163,
		40.764046, 33.818268, 29.113756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288120, 33.510281, 29.645304>,  <40.789112, 33.124863, 29.206270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288120, 33.510281, 29.645304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.002132, 33.770260, 29.542242>,  <40.830540, 33.926247, 29.480406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.002132, 33.770260, 29.542242>,  <41.288120, 33.510281, 29.645304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002132, 33.770260, 29.542242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153111, 0.214019, 0.964755,
		0.682181, 0.729223, -0.053504,
		-0.714973, 0.649946, -0.257652,
		40.787640, 33.965244, 29.464947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.416676, 35.347076, 25.005341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.078575, 35.446301, 24.816017>,  <42.875717, 35.505836, 24.702423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.078575, 35.446301, 24.816017>,  <43.416676, 35.347076, 25.005341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078575, 35.446301, 24.816017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394330, -0.308219, -0.865739,
		-0.360644, -0.918403, 0.162701,
		-0.845246, 0.248066, -0.473311,
		42.825001, 35.520718, 24.674025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175758, 34.696205, 24.559099>,  <43.416676, 35.347076, 25.005341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175758, 34.696205, 24.559099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.009747, 35.032898, 24.420977>,  <42.910141, 35.234913, 24.338104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.009747, 35.032898, 24.420977>,  <43.175758, 34.696205, 24.559099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009747, 35.032898, 24.420977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329863, -0.214497, -0.919338,
		-0.847904, -0.495456, -0.188634,
		-0.415029, 0.841733, -0.345305,
		42.885239, 35.285419, 24.317385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825874, 34.504070, 23.954834>,  <43.175758, 34.696205, 24.559099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825874, 34.504070, 23.954834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.869545, 34.899872, 23.916985>,  <42.895748, 35.137352, 23.894276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.869545, 34.899872, 23.916985>,  <42.825874, 34.504070, 23.954834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869545, 34.899872, 23.916985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201021, -0.115204, -0.972789,
		-0.973483, 0.087189, -0.211490,
		0.109181, 0.989508, -0.094622,
		42.902298, 35.196724, 23.888597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362335, 34.728836, 23.398710>,  <42.825874, 34.504070, 23.954834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362335, 34.728836, 23.398710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.648682, 35.005638, 23.435949>,  <42.820488, 35.171719, 23.458292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.648682, 35.005638, 23.435949>,  <42.362335, 34.728836, 23.398710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648682, 35.005638, 23.435949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142397, -0.014159, -0.989708,
		-0.683567, 0.721752, -0.108676,
		0.715862, 0.692007, 0.093097,
		42.863441, 35.213242, 23.463879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153648, 35.328297, 23.050520>,  <42.362335, 34.728836, 23.398710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153648, 35.328297, 23.050520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.553024, 35.341961, 23.068197>,  <42.792648, 35.350159, 23.078804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.553024, 35.341961, 23.068197>,  <42.153648, 35.328297, 23.050520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553024, 35.341961, 23.068197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042131, 0.058875, -0.997376,
		-0.036672, 0.997681, 0.057344,
		0.998439, 0.034160, 0.044192,
		42.852554, 35.352207, 23.081455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362446, 35.669754, 22.324820>,  <42.153648, 35.328297, 23.050520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362446, 35.669754, 22.324820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.700695, 35.550449, 22.501894>,  <42.903645, 35.478867, 22.608139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.700695, 35.550449, 22.501894>,  <42.362446, 35.669754, 22.324820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700695, 35.550449, 22.501894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448368, -0.053126, -0.892269,
		0.289648, 0.953005, 0.088806,
		0.845619, -0.298262, 0.442684,
		42.954380, 35.460972, 22.634699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.902893, 36.168762, 22.114079>,  <42.362446, 35.669754, 22.324820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.902893, 36.168762, 22.114079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.066933, 35.817123, 22.211243>,  <43.165356, 35.606140, 22.269541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.066933, 35.817123, 22.211243>,  <42.902893, 36.168762, 22.114079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066933, 35.817123, 22.211243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410320, -0.060022, -0.909964,
		0.814526, 0.472850, 0.336096,
		0.410103, -0.879096, 0.242909,
		43.189964, 35.553394, 22.284115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517776, 36.189663, 21.741510>,  <42.902893, 36.168762, 22.114079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517776, 36.189663, 21.741510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.454185, 35.806038, 21.835258>,  <43.416031, 35.575863, 21.891506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.454185, 35.806038, 21.835258>,  <43.517776, 36.189663, 21.741510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454185, 35.806038, 21.835258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278043, -0.271273, -0.921468,
		0.947321, -0.081332, 0.309787,
		-0.158981, -0.959060, 0.234369,
		43.406490, 35.518318, 21.905569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037376, 35.913677, 21.389044>,  <43.517776, 36.189663, 21.741510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037376, 35.913677, 21.389044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.782513, 35.612545, 21.455095>,  <43.629593, 35.431866, 21.494726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.782513, 35.612545, 21.455095>,  <44.037376, 35.913677, 21.389044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782513, 35.612545, 21.455095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291124, -0.433461, -0.852853,
		0.713632, -0.495334, 0.495353,
		-0.637163, -0.752832, 0.165128,
		43.591362, 35.386696, 21.504633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406712, 35.324852, 21.376904>,  <44.037376, 35.913677, 21.389044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406712, 35.324852, 21.376904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.021416, 35.250626, 21.299194>,  <43.790237, 35.206089, 21.252569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.021416, 35.250626, 21.299194>,  <44.406712, 35.324852, 21.376904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021416, 35.250626, 21.299194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264743, -0.532610, -0.803889,
		0.045707, -0.825766, 0.562157,
		-0.963235, -0.185571, -0.194272,
		43.732445, 35.194954, 21.240913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414246, 34.489891, 21.253317>,  <44.406712, 35.324852, 21.376904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414246, 34.489891, 21.253317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.071354, 34.651329, 21.125401>,  <43.865620, 34.748192, 21.048651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.071354, 34.651329, 21.125401>,  <44.414246, 34.489891, 21.253317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.071354, 34.651329, 21.125401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141890, -0.411852, -0.900136,
		-0.495000, -0.816998, 0.295785,
		-0.857229, 0.403598, -0.319791,
		43.814186, 34.772408, 21.029463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005848, 33.922791, 20.930779>,  <44.414246, 34.489891, 21.253317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005848, 33.922791, 20.930779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.873947, 34.274338, 20.792879>,  <43.794807, 34.485268, 20.710140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.873947, 34.274338, 20.792879>,  <44.005848, 33.922791, 20.930779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873947, 34.274338, 20.792879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200521, -0.291637, -0.935275,
		-0.922527, -0.377537, -0.080064,
		-0.329751, 0.878871, -0.344747,
		43.775021, 34.537998, 20.689455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.385426, 33.801502, 20.527126>,  <44.005848, 33.922791, 20.930779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.385426, 33.801502, 20.527126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.586575, 34.134544, 20.434271>,  <43.707264, 34.334370, 20.378557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.586575, 34.134544, 20.434271>,  <43.385426, 33.801502, 20.527126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586575, 34.134544, 20.434271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053980, -0.298297, -0.952945,
		-0.862671, 0.466684, -0.194951,
		0.502877, 0.832601, -0.232141,
		43.737438, 34.384323, 20.364628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108944, 34.107578, 20.005638>,  <43.385426, 33.801502, 20.527126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108944, 34.107578, 20.005638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.499725, 34.192577, 19.997648>,  <43.734196, 34.243576, 19.992853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.499725, 34.192577, 19.997648>,  <43.108944, 34.107578, 20.005638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499725, 34.192577, 19.997648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026098, -0.211832, -0.976957,
		-0.211832, 0.953925, -0.212497,
		0.976957, 0.212497, -0.019977,
		43.792812, 34.256325, 19.991655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505066, 33.952362, 19.629583>,  <43.108944, 34.107578, 20.005638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505066, 33.952362, 19.629583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.314205, 33.641613, 19.465242>,  <42.199688, 33.455166, 19.366638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.314205, 33.641613, 19.465242>,  <42.505066, 33.952362, 19.629583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314205, 33.641613, 19.465242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342526, -0.266132, 0.901027,
		-0.809320, 0.570657, -0.139111,
		-0.477156, -0.776868, -0.410851,
		42.171059, 33.408554, 19.341988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811638, 33.921230, 19.857998>,  <42.505066, 33.952362, 19.629583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811638, 33.921230, 19.857998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.914879, 33.550842, 19.747755>,  <41.976822, 33.328609, 19.681610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.914879, 33.550842, 19.747755>,  <41.811638, 33.921230, 19.857998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914879, 33.550842, 19.747755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240036, -0.337789, 0.910100,
		-0.935824, -0.168742, -0.309450,
		0.258100, -0.925972, -0.275607,
		41.992310, 33.273052, 19.665073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285156, 33.576168, 20.203413>,  <41.811638, 33.921230, 19.857998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285156, 33.576168, 20.203413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.533970, 33.280827, 20.099178>,  <41.683258, 33.103622, 20.036638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.533970, 33.280827, 20.099178>,  <41.285156, 33.576168, 20.203413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533970, 33.280827, 20.099178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167536, -0.450612, 0.876858,
		-0.764856, -0.501779, -0.403997,
		0.622035, -0.738354, -0.260587,
		41.720581, 33.059319, 20.021002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017616, 32.886421, 20.263229>,  <41.285156, 33.576168, 20.203413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017616, 32.886421, 20.263229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.413910, 32.864105, 20.312756>,  <41.651688, 32.850716, 20.342472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.413910, 32.864105, 20.312756>,  <41.017616, 32.886421, 20.263229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413910, 32.864105, 20.312756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135518, -0.465344, 0.874694,
		0.008819, -0.883370, -0.468593,
		0.990736, -0.055789, 0.123816,
		41.711132, 32.847370, 20.349901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196293, 32.297867, 20.650471>,  <41.017616, 32.886421, 20.263229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196293, 32.297867, 20.650471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.541218, 32.492821, 20.705414>,  <41.748173, 32.609795, 20.738379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.541218, 32.492821, 20.705414>,  <41.196293, 32.297867, 20.650471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541218, 32.492821, 20.705414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032658, -0.324219, 0.945418,
		0.505318, -0.810762, -0.295496,
		0.862315, 0.487387, 0.137356,
		41.799911, 32.639038, 20.746620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537895, 31.831125, 21.064842>,  <41.196293, 32.297867, 20.650471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537895, 31.831125, 21.064842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.699402, 32.192490, 21.122561>,  <41.796307, 32.409309, 21.157192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.699402, 32.192490, 21.122561>,  <41.537895, 31.831125, 21.064842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699402, 32.192490, 21.122561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008459, -0.154032, 0.988030,
		0.914824, -0.400153, -0.054550,
		0.403765, 0.903411, 0.144297,
		41.820530, 32.463512, 21.165850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043621, 31.692944, 21.503267>,  <41.537895, 31.831125, 21.064842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043621, 31.692944, 21.503267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.021057, 32.087841, 21.562828>,  <42.007519, 32.324780, 21.598564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.021057, 32.087841, 21.562828>,  <42.043621, 31.692944, 21.503267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021057, 32.087841, 21.562828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197880, -0.157234, 0.967533,
		0.978602, 0.025114, 0.204225,
		-0.056410, 0.987242, 0.148900,
		42.004135, 32.384014, 21.607498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502422, 31.875547, 22.073149>,  <42.043621, 31.692944, 21.503267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502422, 31.875547, 22.073149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.191689, 32.124783, 22.036726>,  <42.005249, 32.274323, 22.014872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.191689, 32.124783, 22.036726>,  <42.502422, 31.875547, 22.073149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191689, 32.124783, 22.036726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246616, -0.167986, 0.954443,
		0.579406, 0.763899, 0.284160,
		-0.776833, 0.623088, -0.091058,
		41.958637, 32.311710, 22.009409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480373, 32.224953, 22.688065>,  <42.502422, 31.875547, 22.073149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480373, 32.224953, 22.688065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.120052, 32.302586, 22.532684>,  <41.903862, 32.349167, 22.439457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.120052, 32.302586, 22.532684>,  <42.480373, 32.224953, 22.688065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120052, 32.302586, 22.532684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412045, -0.099718, 0.905690,
		0.137047, 0.975903, 0.169798,
		-0.900798, 0.194086, -0.388450,
		41.849812, 32.360813, 22.416149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364426, 32.878761, 22.889078>,  <42.480373, 32.224953, 22.688065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364426, 32.878761, 22.889078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.016605, 32.699966, 22.805103>,  <41.807911, 32.592690, 22.754719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.016605, 32.699966, 22.805103>,  <42.364426, 32.878761, 22.889078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016605, 32.699966, 22.805103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295189, 0.129657, 0.946601,
		-0.395901, 0.885093, -0.244690,
		-0.869555, -0.446990, -0.209938,
		41.755737, 32.565868, 22.742123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873276, 33.340336, 23.011091>,  <42.364426, 32.878761, 22.889078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873276, 33.340336, 23.011091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.682838, 32.990597, 23.048725>,  <41.568577, 32.780754, 23.071306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.682838, 32.990597, 23.048725>,  <41.873276, 33.340336, 23.011091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682838, 32.990597, 23.048725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234597, 0.229390, 0.944640,
		-0.847527, 0.427662, -0.314330,
		-0.476091, -0.874348, 0.094086,
		41.540012, 32.728291, 23.076950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282017, 33.493954, 23.391842>,  <41.873276, 33.340336, 23.011091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282017, 33.493954, 23.391842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.269028, 33.094364, 23.404451>,  <41.261234, 32.854610, 23.412018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.269028, 33.094364, 23.404451>,  <41.282017, 33.493954, 23.391842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269028, 33.094364, 23.404451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401981, 0.041930, 0.914688,
		-0.915072, 0.017026, -0.402930,
		-0.032468, -0.998976, 0.031525,
		41.259289, 32.794670, 23.413908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604061, 33.298904, 23.565428>,  <41.282017, 33.493954, 23.391842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604061, 33.298904, 23.565428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.816879, 32.977535, 23.672346>,  <40.944569, 32.784714, 23.736496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.816879, 32.977535, 23.672346>,  <40.604061, 33.298904, 23.565428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816879, 32.977535, 23.672346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318970, 0.102248, 0.942233,
		-0.784340, -0.586567, -0.201867,
		0.532043, -0.803420, 0.267294,
		40.976494, 32.736507, 23.752535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154953, 32.813198, 23.920803>,  <40.604061, 33.298904, 23.565428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154953, 32.813198, 23.920803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.524807, 32.711597, 24.034321>,  <40.746719, 32.650639, 24.102430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.524807, 32.711597, 24.034321>,  <40.154953, 32.813198, 23.920803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524807, 32.711597, 24.034321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238867, 0.193617, 0.951554,
		-0.296645, -0.947626, 0.118351,
		0.924632, -0.254004, 0.283792,
		40.802197, 32.635395, 24.119459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467083, 32.608459, 23.731558>,  <40.154953, 32.813198, 23.920803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467083, 32.608459, 23.731558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.154762, 32.857571, 23.751562>,  <38.967369, 33.007038, 23.763565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.154762, 32.857571, 23.751562>,  <39.467083, 32.608459, 23.731558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154762, 32.857571, 23.751562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041720, 0.131838, -0.990393,
		-0.623389, -0.771210, -0.128921,
		-0.780798, 0.622779, 0.050012,
		38.920525, 33.044403, 23.766565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041988, 32.331196, 23.249783>,  <39.467083, 32.608459, 23.731558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041988, 32.331196, 23.249783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.932446, 32.713924, 23.288776>,  <38.866718, 32.943562, 23.312172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.932446, 32.713924, 23.288776>,  <39.041988, 32.331196, 23.249783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932446, 32.713924, 23.288776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159656, 0.054726, -0.985655,
		-0.948426, -0.285492, 0.137775,
		-0.273857, 0.956817, 0.097484,
		38.850288, 33.000969, 23.318022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319195, 32.481129, 22.952543>,  <39.041988, 32.331196, 23.249783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319195, 32.481129, 22.952543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.495560, 32.839798, 22.968369>,  <38.601379, 33.055000, 22.977863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.495560, 32.839798, 22.968369>,  <38.319195, 32.481129, 22.952543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495560, 32.839798, 22.968369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167911, 0.125706, -0.977754,
		-0.881703, 0.424463, 0.205988,
		0.440915, 0.896677, 0.039564,
		38.627834, 33.108803, 22.980238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948467, 32.886196, 22.549028>,  <38.319195, 32.481129, 22.952543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948467, 32.886196, 22.549028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.290302, 33.093792, 22.556292>,  <38.495403, 33.218349, 22.560650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.290302, 33.093792, 22.556292>,  <37.948467, 32.886196, 22.549028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290302, 33.093792, 22.556292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096879, 0.193678, -0.976270,
		-0.510191, 0.832549, 0.215794,
		0.854587, 0.518990, 0.018156,
		38.546677, 33.249489, 22.561739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815544, 33.426838, 22.168697>,  <37.948467, 32.886196, 22.549028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815544, 33.426838, 22.168697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.214241, 33.457104, 22.179825>,  <38.453461, 33.475262, 22.186501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.214241, 33.457104, 22.179825>,  <37.815544, 33.426838, 22.168697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214241, 33.457104, 22.179825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001288, 0.359965, -0.932965,
		-0.080601, 0.929893, 0.358891,
		0.996746, 0.075660, 0.027816,
		38.513264, 33.479801, 22.188169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919067, 34.031151, 21.904320>,  <37.815544, 33.426838, 22.168697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919067, 34.031151, 21.904320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.251015, 33.813522, 21.854841>,  <38.450184, 33.682945, 21.825153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.251015, 33.813522, 21.854841>,  <37.919067, 34.031151, 21.904320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251015, 33.813522, 21.854841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021197, 0.190797, -0.981401,
		0.557550, 0.817060, 0.146805,
		0.829873, -0.544068, -0.123698,
		38.499977, 33.650303, 21.817732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383862, 34.390415, 21.611883>,  <37.919067, 34.031151, 21.904320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383862, 34.390415, 21.611883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.495140, 34.018139, 21.516863>,  <38.561905, 33.794773, 21.459850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.495140, 34.018139, 21.516863>,  <38.383862, 34.390415, 21.611883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495140, 34.018139, 21.516863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054130, 0.262112, -0.963518,
		0.958999, 0.255186, 0.123296,
		0.278194, -0.930686, -0.237552,
		38.578598, 33.738934, 21.445597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595684, 35.113724, 21.430534>,  <38.383862, 34.390415, 21.611883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595684, 35.113724, 21.430534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.345936, 35.424011, 21.393829>,  <38.196087, 35.610184, 21.371807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.345936, 35.424011, 21.393829>,  <38.595684, 35.113724, 21.430534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345936, 35.424011, 21.393829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008330, 0.124078, 0.992238,
		0.781084, 0.618760, -0.083932,
		-0.624371, 0.775720, -0.091761,
		38.158623, 35.656727, 21.366301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818417, 35.624489, 21.838835>,  <38.595684, 35.113724, 21.430534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818417, 35.624489, 21.838835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.436459, 35.730373, 21.785021>,  <38.207283, 35.793903, 21.752733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.436459, 35.730373, 21.785021>,  <38.818417, 35.624489, 21.838835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436459, 35.730373, 21.785021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080907, 0.203991, 0.975624,
		0.285701, 0.942506, -0.173373,
		-0.954897, 0.264709, -0.134535,
		38.149990, 35.809788, 21.744659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673809, 36.151703, 22.269007>,  <38.818417, 35.624489, 21.838835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673809, 36.151703, 22.269007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.301754, 36.053699, 22.159595>,  <38.078522, 35.994896, 22.093948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.301754, 36.053699, 22.159595>,  <38.673809, 36.151703, 22.269007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301754, 36.053699, 22.159595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310532, 0.127220, 0.942011,
		-0.196002, 0.961138, -0.194415,
		-0.930136, -0.245008, -0.273529,
		38.022713, 35.980198, 22.077538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234875, 36.731300, 22.417013>,  <38.673809, 36.151703, 22.269007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234875, 36.731300, 22.417013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.031303, 36.388256, 22.387342>,  <37.909161, 36.182430, 22.369539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.031303, 36.388256, 22.387342>,  <38.234875, 36.731300, 22.417013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031303, 36.388256, 22.387342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272229, 0.078597, 0.959017,
		-0.816632, 0.508261, -0.273466,
		-0.508925, -0.857609, -0.074179,
		37.878628, 36.130974, 22.365089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484634, 36.893799, 22.651678>,  <38.234875, 36.731300, 22.417013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484634, 36.893799, 22.651678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.524632, 36.497139, 22.684273>,  <37.548630, 36.259144, 22.703831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.524632, 36.497139, 22.684273>,  <37.484634, 36.893799, 22.651678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524632, 36.497139, 22.684273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357502, 0.040624, 0.933028,
		-0.928544, -0.122424, -0.350454,
		0.099988, -0.991646, 0.081488,
		37.554626, 36.199646, 22.708719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781059, 36.618507, 22.993479>,  <37.484634, 36.893799, 22.651678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781059, 36.618507, 22.993479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.100204, 36.391819, 23.075691>,  <37.291691, 36.255806, 23.125019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.100204, 36.391819, 23.075691>,  <36.781059, 36.618507, 22.993479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100204, 36.391819, 23.075691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259168, -0.014637, 0.965721,
		-0.544287, -0.823779, -0.158554,
		0.797862, -0.566721, 0.205531,
		37.339561, 36.221802, 23.137350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530411, 36.017761, 23.364870>,  <36.781059, 36.618507, 22.993479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530411, 36.017761, 23.364870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.921936, 36.006161, 23.445950>,  <37.156853, 35.999199, 23.494596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.921936, 36.006161, 23.445950>,  <36.530411, 36.017761, 23.364870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921936, 36.006161, 23.445950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204399, -0.197284, 0.958801,
		0.012184, -0.979917, -0.199032,
		0.978812, -0.029000, 0.202698,
		37.215580, 35.997459, 23.506760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.148415, 36.813656, 18.906445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.422440, 36.678249, 19.164467>,  <42.586853, 36.597004, 19.319281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.422440, 36.678249, 19.164467>,  <42.148415, 36.813656, 18.906445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422440, 36.678249, 19.164467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417736, 0.542885, 0.728542,
		-0.596817, -0.768558, 0.230497,
		0.685059, -0.338519, 0.645057,
		42.627956, 36.576694, 19.357985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880852, 36.447342, 19.531939>,  <42.148415, 36.813656, 18.906445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880852, 36.447342, 19.531939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.244377, 36.562641, 19.652578>,  <42.462494, 36.631821, 19.724962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.244377, 36.562641, 19.652578>,  <41.880852, 36.447342, 19.531939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244377, 36.562641, 19.652578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416717, 0.661783, 0.623209,
		-0.019952, -0.692065, 0.721560,
		0.908817, 0.288252, 0.301599,
		42.517021, 36.649117, 19.743057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853088, 36.458519, 20.267227>,  <41.880852, 36.447342, 19.531939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853088, 36.458519, 20.267227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.139305, 36.711628, 20.148844>,  <42.311035, 36.863495, 20.077814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.139305, 36.711628, 20.148844>,  <41.853088, 36.458519, 20.267227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139305, 36.711628, 20.148844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272762, 0.643114, 0.715546,
		0.643114, -0.431279, 0.632774,
		-0.715546, -0.632774, 0.295959,
		42.353970, 36.901459, 20.060057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205761, 36.498329, 20.810234>,  <41.853088, 36.458519, 20.267227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205761, 36.498329, 20.810234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.303448, 36.830173, 20.609394>,  <42.362061, 37.029282, 20.488890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.303448, 36.830173, 20.609394>,  <42.205761, 36.498329, 20.810234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303448, 36.830173, 20.609394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306357, 0.557267, 0.771750,
		0.920056, -0.034653, 0.390252,
		0.244218, 0.829610, -0.502101,
		42.376713, 37.079056, 20.458763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579956, 36.857384, 21.279808>,  <42.205761, 36.498329, 20.810234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579956, 36.857384, 21.279808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.469799, 37.127342, 21.005968>,  <42.403706, 37.289318, 20.841663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.469799, 37.127342, 21.005968>,  <42.579956, 36.857384, 21.279808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469799, 37.127342, 21.005968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253794, 0.635830, 0.728910,
		0.927227, 0.374481, -0.003816,
		-0.275389, 0.674896, -0.684599,
		42.387184, 37.329811, 20.800589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885185, 37.491570, 21.527546>,  <42.579956, 36.857384, 21.279808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885185, 37.491570, 21.527546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.580353, 37.566643, 21.279675>,  <42.397453, 37.611687, 21.130951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.580353, 37.566643, 21.279675>,  <42.885185, 37.491570, 21.527546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580353, 37.566643, 21.279675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420735, 0.583919, 0.694277,
		0.492148, 0.789818, -0.366029,
		-0.762084, 0.187686, -0.619679,
		42.351727, 37.622948, 21.093771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900471, 38.165546, 21.491730>,  <42.885185, 37.491570, 21.527546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900471, 38.165546, 21.491730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.528309, 38.073570, 21.377556>,  <42.305012, 38.018383, 21.309052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.528309, 38.073570, 21.377556>,  <42.900471, 38.165546, 21.491730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528309, 38.073570, 21.377556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364361, 0.495577, 0.788444,
		-0.039839, 0.837575, -0.544868,
		-0.930405, -0.229940, -0.285437,
		42.249187, 38.004589, 21.291925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472626, 38.759884, 21.682697>,  <42.900471, 38.165546, 21.491730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472626, 38.759884, 21.682697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.199753, 38.471004, 21.636986>,  <42.036030, 38.297676, 21.609560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.199753, 38.471004, 21.636986>,  <42.472626, 38.759884, 21.682697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199753, 38.471004, 21.636986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557165, 0.412233, 0.720855,
		-0.473489, 0.555426, -0.683600,
		-0.682184, -0.722195, -0.114277,
		41.995098, 38.254345, 21.602703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873943, 39.195251, 21.799385>,  <42.472626, 38.759884, 21.682697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873943, 39.195251, 21.799385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.784138, 38.807659, 21.840700>,  <41.730255, 38.575104, 21.865488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.784138, 38.807659, 21.840700>,  <41.873943, 39.195251, 21.799385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784138, 38.807659, 21.840700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703509, 0.234511, 0.670880,
		-0.674293, 0.077957, -0.734338,
		-0.224509, -0.968983, 0.103286,
		41.716785, 38.516964, 21.871685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146996, 39.190651, 21.731239>,  <41.873943, 39.195251, 21.799385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146996, 39.190651, 21.731239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.271400, 38.871948, 21.938490>,  <41.346043, 38.680729, 22.062840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.271400, 38.871948, 21.938490>,  <41.146996, 39.190651, 21.731239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271400, 38.871948, 21.938490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682467, 0.192185, 0.705198,
		-0.661445, -0.572929, -0.483987,
		0.311013, -0.796755, 0.518125,
		41.364704, 38.632923, 22.093927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527863, 38.742569, 21.957163>,  <41.146996, 39.190651, 21.731239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527863, 38.742569, 21.957163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.818493, 38.651413, 22.216440>,  <40.992870, 38.596718, 22.372007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.818493, 38.651413, 22.216440>,  <40.527863, 38.742569, 21.957163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818493, 38.651413, 22.216440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618301, 0.194580, 0.761474,
		-0.299659, -0.954046, 0.000471,
		0.726573, -0.227891, 0.648196,
		41.036465, 38.583046, 22.410898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185806, 38.394852, 22.590408>,  <40.527863, 38.742569, 21.957163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185806, 38.394852, 22.590408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.556232, 38.478722, 22.715904>,  <40.778488, 38.529045, 22.791203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.556232, 38.478722, 22.715904>,  <40.185806, 38.394852, 22.590408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556232, 38.478722, 22.715904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362266, 0.261217, 0.894723,
		0.105647, -0.942232, 0.317863,
		0.926069, 0.209676, 0.313742,
		40.834053, 38.541626, 22.810026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564785, 38.123180, 22.803743>,  <40.185806, 38.394852, 22.590408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564785, 38.123180, 22.803743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.338974, 38.439182, 22.708078>,  <39.203487, 38.628784, 22.650679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.338974, 38.439182, 22.708078>,  <39.564785, 38.123180, 22.803743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338974, 38.439182, 22.708078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099070, -0.352507, -0.930551,
		-0.819446, -0.501629, 0.277266,
		-0.564529, 0.790005, -0.239164,
		39.169617, 38.676182, 22.636330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181530, 37.883923, 22.292572>,  <39.564785, 38.123180, 22.803743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181530, 37.883923, 22.292572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.161671, 38.281044, 22.248974>,  <39.149757, 38.519318, 22.222815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.161671, 38.281044, 22.248974>,  <39.181530, 37.883923, 22.292572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161671, 38.281044, 22.248974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126381, -0.114496, -0.985352,
		-0.990739, -0.035142, 0.131156,
		-0.049644, 0.992802, -0.108995,
		39.146778, 38.578884, 22.216276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716347, 37.959686, 21.790928>,  <39.181530, 37.883923, 22.292572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716347, 37.959686, 21.790928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.883621, 38.322746, 21.776562>,  <38.983986, 38.540581, 21.767942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.883621, 38.322746, 21.776562>,  <38.716347, 37.959686, 21.790928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883621, 38.322746, 21.776562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084677, -0.000415, -0.996408,
		-0.904406, 0.419725, 0.076684,
		0.418185, 0.907651, -0.035916,
		39.009075, 38.595043, 21.765787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277493, 38.341885, 21.372658>,  <38.716347, 37.959686, 21.790928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277493, 38.341885, 21.372658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.622421, 38.544010, 21.359591>,  <38.829376, 38.665287, 21.351749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.622421, 38.544010, 21.359591>,  <38.277493, 38.341885, 21.372658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622421, 38.544010, 21.359591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076688, 0.066550, -0.994832,
		-0.500527, 0.860366, 0.096138,
		0.862318, 0.505313, -0.032669,
		38.881115, 38.695602, 21.349791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212849, 38.708107, 20.785879>,  <38.277493, 38.341885, 21.372658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212849, 38.708107, 20.785879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.601948, 38.754665, 20.866098>,  <38.835407, 38.782600, 20.914230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.601948, 38.754665, 20.866098>,  <38.212849, 38.708107, 20.785879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601948, 38.754665, 20.866098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208928, -0.064807, -0.975781,
		-0.100578, 0.991087, -0.087358,
		0.972745, 0.116394, 0.200548,
		38.893772, 38.789585, 20.926262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431988, 39.359608, 20.583141>,  <38.212849, 38.708107, 20.785879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431988, 39.359608, 20.583141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.739166, 39.104275, 20.562056>,  <38.923473, 38.951073, 20.549404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.739166, 39.104275, 20.562056>,  <38.431988, 39.359608, 20.583141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739166, 39.104275, 20.562056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014262, 0.099326, -0.994953,
		0.640350, 0.763323, 0.085381,
		0.767951, -0.638336, -0.052717,
		38.969551, 38.912773, 20.546240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915863, 39.764503, 20.103123>,  <38.431988, 39.359608, 20.583141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915863, 39.764503, 20.103123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.037350, 39.383820, 20.121033>,  <39.110241, 39.155411, 20.131779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.037350, 39.383820, 20.121033>,  <38.915863, 39.764503, 20.103123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037350, 39.383820, 20.121033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028446, -0.037915, -0.998876,
		0.952339, 0.304645, 0.015557,
		0.303712, -0.951711, 0.044773,
		39.128464, 39.098305, 20.134464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322441, 39.586399, 19.654152>,  <38.915863, 39.764503, 20.103123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322441, 39.586399, 19.654152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.255161, 39.199497, 19.730183>,  <39.214794, 38.967358, 19.775801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.255161, 39.199497, 19.730183>,  <39.322441, 39.586399, 19.654152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255161, 39.199497, 19.730183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207046, -0.223186, -0.952534,
		0.963764, -0.120859, 0.237805,
		-0.168197, -0.967255, 0.190075,
		39.204700, 38.909321, 19.787205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836681, 39.161564, 19.330156>,  <39.322441, 39.586399, 19.654152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836681, 39.161564, 19.330156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.517090, 38.923035, 19.361202>,  <39.325336, 38.779915, 19.379829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.517090, 38.923035, 19.361202>,  <39.836681, 39.161564, 19.330156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517090, 38.923035, 19.361202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081083, -0.234718, -0.968676,
		0.595866, -0.767659, 0.235887,
		-0.798980, -0.596328, 0.077616,
		39.277397, 38.744137, 19.384487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083843, 38.598553, 18.899210>,  <39.836681, 39.161564, 19.330156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083843, 38.598553, 18.899210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.686527, 38.570358, 18.935905>,  <39.448139, 38.553444, 18.957922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.686527, 38.570358, 18.935905>,  <40.083843, 38.598553, 18.899210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686527, 38.570358, 18.935905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078200, -0.175326, -0.981400,
		0.085258, -0.981984, 0.168636,
		-0.993285, -0.070485, 0.091739,
		39.388542, 38.549213, 18.963427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888870, 37.987122, 18.591049>,  <40.083843, 38.598553, 18.899210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888870, 37.987122, 18.591049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.550167, 38.199886, 18.587753>,  <39.346947, 38.327545, 18.585775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.550167, 38.199886, 18.587753>,  <39.888870, 37.987122, 18.591049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550167, 38.199886, 18.587753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068526, -0.124424, -0.989860,
		-0.527546, -0.837608, 0.141807,
		-0.846758, 0.531914, -0.008242,
		39.296139, 38.359459, 18.585281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428158, 37.570671, 18.267231>,  <39.888870, 37.987122, 18.591049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428158, 37.570671, 18.267231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.246559, 37.926861, 18.254927>,  <39.137600, 38.140575, 18.247543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.246559, 37.926861, 18.254927>,  <39.428158, 37.570671, 18.267231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246559, 37.926861, 18.254927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062701, -0.066370, -0.995823,
		-0.888792, -0.450176, 0.085965,
		-0.454001, 0.890470, -0.030763,
		39.110359, 38.194000, 18.245697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789284, 37.441528, 17.820766>,  <39.428158, 37.570671, 18.267231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789284, 37.441528, 17.820766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.902134, 37.825096, 17.808922>,  <38.969845, 38.055237, 17.801815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.902134, 37.825096, 17.808922>,  <38.789284, 37.441528, 17.820766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902134, 37.825096, 17.808922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069123, -0.051104, -0.996298,
		-0.956883, 0.279037, -0.080702,
		0.282128, 0.958920, -0.029613,
		38.986771, 38.112774, 17.800037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501595, 36.823048, 17.916183>,  <38.789284, 37.441528, 17.820766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501595, 36.823048, 17.916183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.249481, 36.514393, 17.950401>,  <38.098213, 36.329201, 17.970932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.249481, 36.514393, 17.950401>,  <38.501595, 36.823048, 17.916183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249481, 36.514393, 17.950401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039998, 0.077764, 0.996169,
		-0.775331, 0.631294, -0.018149,
		-0.630287, -0.771635, 0.085543,
		38.060394, 36.282902, 17.976065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028931, 37.086494, 18.434429>,  <38.501595, 36.823048, 17.916183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028931, 37.086494, 18.434429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.997810, 36.688057, 18.451143>,  <37.979137, 36.448994, 18.461172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.997810, 36.688057, 18.451143>,  <38.028931, 37.086494, 18.434429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997810, 36.688057, 18.451143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040139, 0.045008, 0.998180,
		-0.996161, 0.075979, -0.043484,
		-0.077798, -0.996093, 0.041785,
		37.974472, 36.389229, 18.463678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515980, 36.913609, 18.973278>,  <38.028931, 37.086494, 18.434429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515980, 36.913609, 18.973278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.692528, 36.560097, 18.911156>,  <37.798458, 36.347988, 18.873882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.692528, 36.560097, 18.911156>,  <37.515980, 36.913609, 18.973278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692528, 36.560097, 18.911156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013942, -0.166301, 0.985976,
		-0.897218, -0.437344, -0.061078,
		0.441368, -0.883784, -0.155306,
		37.824940, 36.294960, 18.864563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211365, 36.519913, 19.437815>,  <37.515980, 36.913609, 18.973278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211365, 36.519913, 19.437815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.544918, 36.314045, 19.358061>,  <37.745049, 36.190525, 19.310209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.544918, 36.314045, 19.358061>,  <37.211365, 36.519913, 19.437815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544918, 36.314045, 19.358061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115842, -0.189999, 0.974926,
		-0.539650, -0.836070, -0.098816,
		0.833882, -0.514672, -0.199384,
		37.795082, 36.159645, 19.298246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053799, 35.832443, 19.660583>,  <37.211365, 36.519913, 19.437815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053799, 35.832443, 19.660583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.447170, 35.904949, 19.662270>,  <37.683193, 35.948452, 19.663280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.447170, 35.904949, 19.662270>,  <37.053799, 35.832443, 19.660583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447170, 35.904949, 19.662270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047034, -0.277479, 0.959580,
		0.175109, -0.943477, -0.281406,
		0.983425, 0.181267, 0.004214,
		37.742199, 35.959328, 19.663534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271122, 35.327621, 20.102184>,  <37.053799, 35.832443, 19.660583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271122, 35.327621, 20.102184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.595531, 35.561222, 20.088408>,  <37.790176, 35.701382, 20.080141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.595531, 35.561222, 20.088408>,  <37.271122, 35.327621, 20.102184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595531, 35.561222, 20.088408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250859, -0.293984, 0.922303,
		0.528498, -0.756650, -0.384929,
		0.811024, 0.583999, -0.034442,
		37.838837, 35.736423, 20.078075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761189, 34.946953, 20.367056>,  <37.271122, 35.327621, 20.102184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761189, 34.946953, 20.367056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.874958, 35.326099, 20.424541>,  <37.943218, 35.553589, 20.459032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.874958, 35.326099, 20.424541>,  <37.761189, 34.946953, 20.367056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874958, 35.326099, 20.424541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050820, -0.164601, 0.985050,
		0.957350, -0.272869, -0.094987,
		0.284425, 0.947865, 0.143714,
		37.960285, 35.610458, 20.467655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349449, 34.887020, 20.808834>,  <37.761189, 34.946953, 20.367056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349449, 34.887020, 20.808834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.176666, 35.245152, 20.852289>,  <38.072998, 35.460030, 20.878363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.176666, 35.245152, 20.852289>,  <38.349449, 34.887020, 20.808834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176666, 35.245152, 20.852289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139536, -0.052663, 0.988816,
		0.891035, 0.442283, -0.102183,
		-0.431955, 0.895328, 0.108639,
		38.047081, 35.513748, 20.884880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995647, 34.495579, 21.239229>,  <38.349449, 34.887020, 20.808834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995647, 34.495579, 21.239229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.914883, 34.118317, 21.133627>,  <38.866425, 33.891960, 21.070267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.914883, 34.118317, 21.133627>,  <38.995647, 34.495579, 21.239229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914883, 34.118317, 21.133627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363363, 0.178181, -0.914450,
		0.909505, -0.280567, 0.306730,
		-0.201911, -0.943151, -0.264004,
		38.854309, 33.835373, 21.054426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614235, 34.189266, 21.004631>,  <38.995647, 34.495579, 21.239229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614235, 34.189266, 21.004631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.385738, 33.898636, 20.851913>,  <39.248642, 33.724258, 20.760283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.385738, 33.898636, 20.851913>,  <39.614235, 34.189266, 21.004631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385738, 33.898636, 20.851913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541398, 0.016067, -0.840613,
		0.616906, -0.686894, 0.384191,
		-0.571240, -0.726580, -0.381795,
		39.214367, 33.680660, 20.737375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001194, 33.748013, 20.801580>,  <39.614235, 34.189266, 21.004631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001194, 33.748013, 20.801580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.669083, 33.715481, 20.581026>,  <39.469814, 33.695961, 20.448694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.669083, 33.715481, 20.581026>,  <40.001194, 33.748013, 20.801580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669083, 33.715481, 20.581026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553678, -0.006972, -0.832702,
		0.063881, -0.996663, 0.050821,
		-0.830277, -0.081332, -0.551385,
		39.419998, 33.691082, 20.415611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180389, 33.274963, 20.344231>,  <40.001194, 33.748013, 20.801580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180389, 33.274963, 20.344231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.858925, 33.462032, 20.197039>,  <39.666046, 33.574272, 20.108725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.858925, 33.462032, 20.197039>,  <40.180389, 33.274963, 20.344231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858925, 33.462032, 20.197039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465685, 0.109273, -0.878178,
		-0.370488, -0.877123, -0.305605,
		-0.803665, 0.467670, -0.367979,
		39.617825, 33.602333, 20.086645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012783, 32.920948, 19.695137>,  <40.180389, 33.274963, 20.344231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012783, 32.920948, 19.695137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.828358, 33.273148, 19.651077>,  <39.717701, 33.484467, 19.624641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.828358, 33.273148, 19.651077>,  <40.012783, 32.920948, 19.695137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828358, 33.273148, 19.651077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469992, 0.137026, -0.871970,
		-0.752679, -0.453805, -0.477007,
		-0.461067, 0.880502, -0.110148,
		39.690037, 33.537300, 19.618032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905514, 32.930649, 18.968081>,  <40.012783, 32.920948, 19.695137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905514, 32.930649, 18.968081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.847355, 33.305569, 19.094776>,  <39.812458, 33.530521, 19.170794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.847355, 33.305569, 19.094776>,  <39.905514, 32.930649, 18.968081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847355, 33.305569, 19.094776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410519, 0.348437, -0.842654,
		-0.900185, 0.007505, -0.435443,
		-0.145400, 0.937302, 0.316739,
		39.803734, 33.586758, 19.189798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770439, 33.304447, 18.428030>,  <39.905514, 32.930649, 18.968081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770439, 33.304447, 18.428030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.885750, 33.614491, 18.652922>,  <39.954937, 33.800518, 18.787857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.885750, 33.614491, 18.652922>,  <39.770439, 33.304447, 18.428030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885750, 33.614491, 18.652922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624941, 0.292568, -0.723777,
		-0.725496, 0.560010, -0.400056,
		0.288279, 0.775108, 0.562230,
		39.972233, 33.847023, 18.821590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717361, 33.892315, 18.023060>,  <39.770439, 33.304447, 18.428030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717361, 33.892315, 18.023060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.964687, 34.023338, 18.308826>,  <40.113083, 34.101952, 18.480288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.964687, 34.023338, 18.308826>,  <39.717361, 33.892315, 18.023060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964687, 34.023338, 18.308826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618021, 0.358920, -0.699447,
		-0.485528, 0.874004, 0.019488,
		0.618314, 0.327557, 0.714419,
		40.150181, 34.121605, 18.523151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025726, 34.508995, 17.769379>,  <39.717361, 33.892315, 18.023060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025726, 34.508995, 17.769379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.278465, 34.454838, 18.074648>,  <40.430111, 34.422344, 18.257809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.278465, 34.454838, 18.074648>,  <40.025726, 34.508995, 17.769379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278465, 34.454838, 18.074648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739572, 0.399960, -0.541355,
		-0.231943, 0.906477, 0.352848,
		0.631851, -0.135393, 0.763173,
		40.468021, 34.414219, 18.303600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.124134, 35.015339, 33.613136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.518208, 35.033642, 33.679241>,  <36.754654, 35.044624, 33.718906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.518208, 35.033642, 33.679241>,  <36.124134, 35.015339, 33.613136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518208, 35.033642, 33.679241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167062, -0.038689, -0.985187,
		-0.038689, 0.998203, -0.045761,
		0.985187, 0.045761, 0.165265,
		36.813763, 35.047371, 33.728821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438934, 35.533676, 33.251984>,  <36.124134, 35.015339, 33.613136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438934, 35.533676, 33.251984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.732620, 35.263317, 33.277607>,  <36.908833, 35.101101, 33.292980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.732620, 35.263317, 33.277607>,  <36.438934, 35.533676, 33.251984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732620, 35.263317, 33.277607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000066, -0.094426, -0.995532,
		0.678922, 0.730925, -0.069373,
		0.734210, -0.675893, 0.064059,
		36.952885, 35.060551, 33.296825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735222, 35.591331, 32.623413>,  <36.438934, 35.533676, 33.251984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735222, 35.591331, 32.623413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.904034, 35.255913, 32.761238>,  <37.005322, 35.054661, 32.843933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.904034, 35.255913, 32.761238>,  <36.735222, 35.591331, 32.623413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904034, 35.255913, 32.761238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218492, -0.274788, -0.936351,
		0.879858, 0.470455, 0.067246,
		0.422033, -0.838548, 0.344565,
		37.030643, 35.004349, 32.864609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472092, 35.510674, 32.353413>,  <36.735222, 35.591331, 32.623413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472092, 35.510674, 32.353413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.318821, 35.152081, 32.442406>,  <37.226860, 34.936924, 32.495800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.318821, 35.152081, 32.442406>,  <37.472092, 35.510674, 32.353413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318821, 35.152081, 32.442406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251049, -0.332876, -0.908938,
		0.888903, -0.292432, 0.352611,
		-0.383178, -0.896480, 0.222480,
		37.203869, 34.883137, 32.509151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858025, 35.079365, 31.995699>,  <37.472092, 35.510674, 32.353413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858025, 35.079365, 31.995699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.576649, 34.807903, 32.080177>,  <37.407822, 34.645027, 32.130863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.576649, 34.807903, 32.080177>,  <37.858025, 35.079365, 31.995699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576649, 34.807903, 32.080177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169802, -0.449004, -0.877247,
		0.690173, -0.581230, 0.431084,
		-0.703440, -0.678651, 0.211196,
		37.365616, 34.604309, 32.143536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168858, 34.389694, 31.935017>,  <37.858025, 35.079365, 31.995699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168858, 34.389694, 31.935017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.772835, 34.371040, 31.881922>,  <37.535221, 34.359848, 31.850065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.772835, 34.371040, 31.881922>,  <38.168858, 34.389694, 31.935017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772835, 34.371040, 31.881922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140527, -0.373354, -0.916984,
		-0.006796, -0.926516, 0.376193,
		-0.990053, -0.046634, -0.132738,
		37.475819, 34.357052, 31.842100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137627, 33.819477, 31.557766>,  <38.168858, 34.389694, 31.935017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137627, 33.819477, 31.557766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.773293, 33.977673, 31.510477>,  <37.554691, 34.072590, 31.482103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.773293, 33.977673, 31.510477>,  <38.137627, 33.819477, 31.557766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773293, 33.977673, 31.510477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039742, -0.201057, -0.978773,
		-0.410864, -0.896195, 0.167411,
		-0.910830, 0.395489, -0.118223,
		37.500042, 34.096317, 31.475010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708439, 33.312977, 31.350382>,  <38.137627, 33.819477, 31.557766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708439, 33.312977, 31.350382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.529091, 33.645226, 31.218306>,  <37.421482, 33.844574, 31.139061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.529091, 33.645226, 31.218306>,  <37.708439, 33.312977, 31.350382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529091, 33.645226, 31.218306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170928, -0.282909, -0.943794,
		-0.877352, -0.479609, -0.015129,
		-0.448372, 0.830625, -0.330189,
		37.394581, 33.894413, 31.119249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142460, 33.084690, 30.876543>,  <37.708439, 33.312977, 31.350382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142460, 33.084690, 30.876543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.238781, 33.463390, 30.791054>,  <37.296574, 33.690609, 30.739759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.238781, 33.463390, 30.791054>,  <37.142460, 33.084690, 30.876543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238781, 33.463390, 30.791054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108794, -0.192485, -0.975250,
		-0.964457, 0.258097, 0.056649,
		0.240805, 0.946750, -0.213722,
		37.311024, 33.747414, 30.726936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634789, 33.403675, 30.478693>,  <37.142460, 33.084690, 30.876543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634789, 33.403675, 30.478693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.952045, 33.634850, 30.401838>,  <37.142399, 33.773552, 30.355726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.952045, 33.634850, 30.401838>,  <36.634789, 33.403675, 30.478693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952045, 33.634850, 30.401838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120445, -0.160402, -0.979676,
		-0.597007, 0.800164, -0.057612,
		0.793143, 0.577934, -0.192137,
		37.189987, 33.808231, 30.344196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415833, 33.812920, 29.943645>,  <36.634789, 33.403675, 30.478693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415833, 33.812920, 29.943645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.812435, 33.861881, 29.926104>,  <37.050400, 33.891258, 29.915579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.812435, 33.861881, 29.926104>,  <36.415833, 33.812920, 29.943645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812435, 33.861881, 29.926104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055305, 0.091767, -0.994244,
		-0.117672, 0.988229, 0.097758,
		0.991511, 0.122401, -0.043855,
		37.109890, 33.898602, 29.912947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533161, 34.436520, 29.552540>,  <36.415833, 33.812920, 29.943645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533161, 34.436520, 29.552540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.857426, 34.202312, 29.553028>,  <37.051983, 34.061787, 29.553322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.857426, 34.202312, 29.553028>,  <36.533161, 34.436520, 29.552540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857426, 34.202312, 29.553028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028330, -0.041307, -0.998745,
		0.584833, 0.809607, -0.050074,
		0.810659, -0.585517, 0.001222,
		37.100624, 34.026657, 29.553394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582783, 35.214783, 29.547907>,  <36.533161, 34.436520, 29.552540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582783, 35.214783, 29.547907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.295567, 35.382339, 29.325573>,  <36.123238, 35.482872, 29.192173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.295567, 35.382339, 29.325573>,  <36.582783, 35.214783, 29.547907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295567, 35.382339, 29.325573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594392, 0.046422, 0.802834,
		0.362104, 0.906849, 0.215653,
		-0.718038, 0.418892, -0.555833,
		36.080154, 35.508007, 29.158823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351398, 35.834087, 29.912897>,  <36.582783, 35.214783, 29.547907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351398, 35.834087, 29.912897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048298, 35.778732, 29.657818>,  <35.866436, 35.745518, 29.504770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048298, 35.778732, 29.657818>,  <36.351398, 35.834087, 29.912897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048298, 35.778732, 29.657818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649206, 0.258598, 0.715303,
		0.065917, 0.956020, -0.285797,
		-0.757751, -0.138391, -0.637700,
		35.820972, 35.737217, 29.466507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859089, 36.464497, 30.021048>,  <36.351398, 35.834087, 29.912897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859089, 36.464497, 30.021048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657742, 36.158985, 29.859423>,  <35.536934, 35.975677, 29.762447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657742, 36.158985, 29.859423>,  <35.859089, 36.464497, 30.021048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657742, 36.158985, 29.859423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723270, 0.116582, 0.680654,
		-0.472761, 0.634866, -0.611100,
		-0.503367, -0.763777, -0.404064,
		35.506733, 35.929852, 29.738203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278793, 36.734592, 30.073195>,  <35.859089, 36.464497, 30.021048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278793, 36.734592, 30.073195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185886, 36.353378, 29.995451>,  <35.130142, 36.124649, 29.948805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185886, 36.353378, 29.995451>,  <35.278793, 36.734592, 30.073195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185886, 36.353378, 29.995451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878595, 0.119848, 0.462285,
		-0.417281, 0.278134, -0.865169,
		-0.232267, -0.953036, -0.194357,
		35.116207, 36.067467, 29.937143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542774, 36.751091, 29.818626>,  <35.278793, 36.734592, 30.073195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542774, 36.751091, 29.818626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593815, 36.387566, 29.977514>,  <34.624439, 36.169453, 30.072847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593815, 36.387566, 29.977514>,  <34.542774, 36.751091, 29.818626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593815, 36.387566, 29.977514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797046, 0.144389, 0.586403,
		-0.590283, -0.391430, -0.705938,
		0.127606, -0.908810, 0.397218,
		34.632095, 36.114922, 30.096680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874149, 36.675972, 29.950947>,  <34.542774, 36.751091, 29.818626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874149, 36.675972, 29.950947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.062824, 36.379158, 30.141483>,  <34.176029, 36.201069, 30.255806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.062824, 36.379158, 30.141483>,  <33.874149, 36.675972, 29.950947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062824, 36.379158, 30.141483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751652, -0.055924, 0.657184,
		-0.461014, -0.668026, -0.584130,
		0.471683, -0.742034, 0.476342,
		34.204330, 36.156548, 30.284386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412197, 36.086773, 29.942524>,  <33.874149, 36.675972, 29.950947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412197, 36.086773, 29.942524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.661171, 36.113991, 30.254406>,  <33.810555, 36.130322, 30.441536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.661171, 36.113991, 30.254406>,  <33.412197, 36.086773, 29.942524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661171, 36.113991, 30.254406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782376, 0.081345, 0.617472,
		-0.021409, -0.994361, 0.103869,
		0.622439, 0.068045, 0.779705,
		33.847904, 36.134403, 30.488317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200001, 35.643051, 30.458292>,  <33.412197, 36.086773, 29.942524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200001, 35.643051, 30.458292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.390900, 35.942169, 30.642918>,  <33.505440, 36.121639, 30.753693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.390900, 35.942169, 30.642918>,  <33.200001, 35.643051, 30.458292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390900, 35.942169, 30.642918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768483, 0.100393, 0.631945,
		0.426228, -0.656295, 0.622580,
		0.477245, 0.747795, 0.461562,
		33.534073, 36.166508, 30.781385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967846, 35.517788, 31.143608>,  <33.200001, 35.643051, 30.458292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967846, 35.517788, 31.143608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.143147, 35.877083, 31.156891>,  <33.248325, 36.092659, 31.164860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.143147, 35.877083, 31.156891>,  <32.967846, 35.517788, 31.143608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143147, 35.877083, 31.156891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633877, 0.282655, 0.719935,
		0.637287, -0.336562, 0.693247,
		0.438252, 0.898239, 0.033206,
		33.274624, 36.146553, 31.166853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084728, 35.734726, 31.852194>,  <32.967846, 35.517788, 31.143608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084728, 35.734726, 31.852194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.112789, 36.080471, 31.653015>,  <33.129627, 36.287918, 31.533508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.112789, 36.080471, 31.653015>,  <33.084728, 35.734726, 31.852194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112789, 36.080471, 31.653015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531852, 0.454717, 0.714399,
		0.843926, 0.214715, 0.491616,
		0.070154, 0.864367, -0.497944,
		33.133835, 36.339783, 31.503632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229153, 36.295071, 32.337158>,  <33.084728, 35.734726, 31.852194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229153, 36.295071, 32.337158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.059795, 36.485687, 32.028965>,  <32.958179, 36.600056, 31.844048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.059795, 36.485687, 32.028965>,  <33.229153, 36.295071, 32.337158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059795, 36.485687, 32.028965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680565, 0.394053, 0.617700,
		0.597970, 0.785896, 0.157476,
		-0.423394, 0.476539, -0.770486,
		32.932777, 36.628651, 31.797819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092247, 36.917198, 32.614372>,  <33.229153, 36.295071, 32.337158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092247, 36.917198, 32.614372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.849541, 36.918461, 32.296421>,  <32.703918, 36.919220, 32.105652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.849541, 36.918461, 32.296421>,  <33.092247, 36.917198, 32.614372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849541, 36.918461, 32.296421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735011, 0.378522, 0.562566,
		0.302655, 0.925587, -0.227353,
		-0.606761, 0.003156, -0.794878,
		32.667511, 36.919407, 32.057957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807423, 37.599957, 32.635624>,  <33.092247, 36.917198, 32.614372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807423, 37.599957, 32.635624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.550739, 37.403538, 32.399971>,  <32.396729, 37.285686, 32.258579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.550739, 37.403538, 32.399971>,  <32.807423, 37.599957, 32.635624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550739, 37.403538, 32.399971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766873, 0.400286, 0.501675,
		-0.010526, 0.773720, -0.633440,
		-0.641713, -0.491049, -0.589131,
		32.358227, 37.256222, 32.223232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316200, 38.178379, 32.163067>,  <32.807423, 37.599957, 32.635624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316200, 38.178379, 32.163067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.166866, 37.819977, 32.259228>,  <32.077267, 37.604935, 32.316925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.166866, 37.819977, 32.259228>,  <32.316200, 38.178379, 32.163067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166866, 37.819977, 32.259228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863001, 0.430509, 0.264369,
		-0.340373, -0.108772, -0.933978,
		-0.373330, -0.896008, 0.240404,
		32.054867, 37.551174, 32.331348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692791, 38.603874, 31.759047>,  <32.316200, 38.178379, 32.163067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692791, 38.603874, 31.759047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.316238, 38.706505, 31.671432>,  <32.090309, 38.768082, 31.618864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.316238, 38.706505, 31.671432>,  <32.692791, 38.603874, 31.759047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316238, 38.706505, 31.671432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317065, 0.894677, -0.314680,
		0.115227, -0.365681, -0.923580,
		-0.941378, 0.256576, -0.219036,
		32.033825, 38.783478, 31.605722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414516, 38.420296, 31.613907>,  <32.692791, 38.603874, 31.759047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414516, 38.420296, 31.613907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801777, 38.500568, 31.673786>,  <34.034134, 38.548733, 31.709715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801777, 38.500568, 31.673786>,  <33.414516, 38.420296, 31.613907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801777, 38.500568, 31.673786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099852, 0.238816, -0.965917,
		-0.229592, 0.950102, 0.211172,
		0.968151, 0.200681, 0.149699,
		34.092224, 38.560772, 31.718697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544540, 39.112946, 31.311878>,  <33.414516, 38.420296, 31.613907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544540, 39.112946, 31.311878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.872303, 38.883732, 31.317551>,  <34.068962, 38.746204, 31.320953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.872303, 38.883732, 31.317551>,  <33.544540, 39.112946, 31.311878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872303, 38.883732, 31.317551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203988, 0.268391, -0.941464,
		0.535689, 0.774334, 0.336814,
		0.819406, -0.573038, 0.014181,
		34.118126, 38.711819, 31.321804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153740, 39.480293, 31.066172>,  <33.544540, 39.112946, 31.311878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153740, 39.480293, 31.066172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265442, 39.099113, 31.019016>,  <34.332462, 38.870403, 30.990723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265442, 39.099113, 31.019016>,  <34.153740, 39.480293, 31.066172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265442, 39.099113, 31.019016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206381, 0.179470, -0.961872,
		0.937774, 0.244282, 0.246790,
		0.279259, -0.952952, -0.117887,
		34.349220, 38.813229, 30.983650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652924, 39.579651, 30.538372>,  <34.153740, 39.480293, 31.066172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652924, 39.579651, 30.538372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.585331, 39.185467, 30.545528>,  <34.544777, 38.948956, 30.549822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.585331, 39.185467, 30.545528>,  <34.652924, 39.579651, 30.538372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585331, 39.185467, 30.545528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218235, -0.055109, -0.974339,
		0.961155, -0.160741, 0.224374,
		-0.168981, -0.985457, 0.017889,
		34.534637, 38.889832, 30.550896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281544, 39.190132, 30.240707>,  <34.652924, 39.579651, 30.538372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281544, 39.190132, 30.240707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.002048, 38.907181, 30.198040>,  <34.834351, 38.737408, 30.172440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.002048, 38.907181, 30.198040>,  <35.281544, 39.190132, 30.240707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002048, 38.907181, 30.198040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319370, -0.175027, -0.931326,
		0.640134, -0.684818, 0.348215,
		-0.698735, -0.707383, -0.106670,
		34.792427, 38.694965, 30.166039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621082, 38.624882, 30.116819>,  <35.281544, 39.190132, 30.240707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621082, 38.624882, 30.116819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.250561, 38.558372, 29.981581>,  <35.028248, 38.518467, 29.900438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.250561, 38.558372, 29.981581>,  <35.621082, 38.624882, 30.116819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250561, 38.558372, 29.981581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354445, -0.080271, -0.931625,
		0.127769, -0.982807, 0.133292,
		-0.926306, -0.166278, -0.338095,
		34.972668, 38.508488, 29.880152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721664, 38.067623, 29.681540>,  <35.621082, 38.624882, 30.116819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721664, 38.067623, 29.681540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.375977, 38.233730, 29.567921>,  <35.168564, 38.333393, 29.499748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.375977, 38.233730, 29.567921>,  <35.721664, 38.067623, 29.681540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375977, 38.233730, 29.567921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238383, -0.159205, -0.958033,
		-0.443059, -0.895661, 0.038595,
		-0.864217, 0.415265, -0.284048,
		35.116711, 38.358311, 29.482706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453865, 37.657246, 29.179485>,  <35.721664, 38.067623, 29.681540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453865, 37.657246, 29.179485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257874, 38.002117, 29.128008>,  <35.140278, 38.209042, 29.097122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257874, 38.002117, 29.128008>,  <35.453865, 37.657246, 29.179485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257874, 38.002117, 29.128008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150919, -0.061501, -0.986631,
		-0.858569, -0.502853, -0.099985,
		-0.489981, 0.862181, -0.128693,
		35.110878, 38.260773, 29.089399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066063, 37.602959, 28.541616>,  <35.453865, 37.657246, 29.179485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066063, 37.602959, 28.541616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087875, 37.992287, 28.630772>,  <35.100964, 38.225883, 28.684265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087875, 37.992287, 28.630772>,  <35.066063, 37.602959, 28.541616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087875, 37.992287, 28.630772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320634, 0.194330, -0.927054,
		-0.945632, 0.122015, -0.301483,
		0.054528, 0.973318, 0.222887,
		35.104233, 38.284283, 28.697638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813461, 37.918350, 27.933985>,  <35.066063, 37.602959, 28.541616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813461, 37.918350, 27.933985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.047470, 38.195976, 28.101809>,  <35.187874, 38.362553, 28.202503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.047470, 38.195976, 28.101809>,  <34.813461, 37.918350, 27.933985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047470, 38.195976, 28.101809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350328, 0.250310, -0.902560,
		-0.731454, 0.674998, -0.096714,
		0.585018, 0.694063, 0.419561,
		35.222977, 38.404194, 28.227676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824085, 38.500542, 27.400557>,  <34.813461, 37.918350, 27.933985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824085, 38.500542, 27.400557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.099102, 38.572830, 27.681875>,  <35.264111, 38.616203, 27.850666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.099102, 38.572830, 27.681875>,  <34.824085, 38.500542, 27.400557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099102, 38.572830, 27.681875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600755, 0.402494, -0.690719,
		-0.407899, 0.897407, 0.168163,
		0.687541, 0.180719, 0.703299,
		35.305363, 38.627045, 27.892864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077961, 39.136765, 27.225958>,  <34.824085, 38.500542, 27.400557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077961, 39.136765, 27.225958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.345455, 38.956642, 27.462610>,  <35.505951, 38.848568, 27.604601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.345455, 38.956642, 27.462610>,  <35.077961, 39.136765, 27.225958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345455, 38.956642, 27.462610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722606, 0.206295, -0.659760,
		0.175041, 0.868717, 0.463347,
		0.668731, -0.450302, 0.591630,
		35.546074, 38.821552, 27.640099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639633, 39.601074, 27.329144>,  <35.077961, 39.136765, 27.225958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639633, 39.601074, 27.329144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792721, 39.240692, 27.410934>,  <35.884575, 39.024464, 27.460009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792721, 39.240692, 27.410934>,  <35.639633, 39.601074, 27.329144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792721, 39.240692, 27.410934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744783, 0.169920, -0.645310,
		0.546649, 0.399264, 0.736046,
		0.382718, -0.900953, 0.204479,
		35.907536, 38.970406, 27.472279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349941, 39.726875, 27.386715>,  <35.639633, 39.601074, 27.329144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349941, 39.726875, 27.386715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.301159, 39.334587, 27.325651>,  <36.271889, 39.099213, 27.289013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.301159, 39.334587, 27.325651>,  <36.349941, 39.726875, 27.386715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301159, 39.334587, 27.325651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643560, 0.038955, -0.764404,
		0.755617, -0.191469, 0.626405,
		-0.121958, -0.980725, -0.152657,
		36.264572, 39.040371, 27.279854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971451, 39.441792, 27.397968>,  <36.349941, 39.726875, 27.386715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971451, 39.441792, 27.397968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.781281, 39.130985, 27.232939>,  <36.667179, 38.944504, 27.133921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.781281, 39.130985, 27.232939>,  <36.971451, 39.441792, 27.397968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781281, 39.130985, 27.232939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739771, -0.099279, -0.665494,
		0.476138, -0.621606, 0.622011,
		-0.475428, -0.777013, -0.412576,
		36.638653, 38.897881, 27.109165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530418, 38.929527, 27.287212>,  <36.971451, 39.441792, 27.397968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530418, 38.929527, 27.287212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.258801, 38.784821, 27.031704>,  <37.095829, 38.697998, 26.878399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.258801, 38.784821, 27.031704>,  <37.530418, 38.929527, 27.287212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258801, 38.784821, 27.031704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648236, 0.112868, -0.753028,
		0.344516, -0.925412, 0.157867,
		-0.679043, -0.361765, -0.638770,
		37.055088, 38.676292, 26.840073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884747, 38.451172, 26.935957>,  <37.530418, 38.929527, 27.287212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884747, 38.451172, 26.935957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.582321, 38.583176, 26.709873>,  <37.400864, 38.662376, 26.574223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.582321, 38.583176, 26.709873>,  <37.884747, 38.451172, 26.935957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582321, 38.583176, 26.709873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618641, 0.078429, -0.781749,
		-0.213654, -0.940715, -0.263454,
		-0.756065, 0.330007, -0.565208,
		37.355503, 38.682178, 26.540310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017567, 38.116562, 26.272953>,  <37.884747, 38.451172, 26.935957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017567, 38.116562, 26.272953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.767349, 38.420334, 26.201447>,  <37.617218, 38.602596, 26.158543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.767349, 38.420334, 26.201447>,  <38.017567, 38.116562, 26.272953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767349, 38.420334, 26.201447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514270, 0.229058, -0.826474,
		-0.586704, -0.608929, -0.533839,
		-0.625544, 0.759433, -0.178764,
		37.579685, 38.648163, 26.147818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689995, 37.956043, 25.585094>,  <38.017567, 38.116562, 26.272953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689995, 37.956043, 25.585094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.659615, 38.344021, 25.677567>,  <37.641388, 38.576805, 25.733049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.659615, 38.344021, 25.677567>,  <37.689995, 37.956043, 25.585094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659615, 38.344021, 25.677567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436026, 0.240813, -0.867116,
		-0.896724, 0.034947, -0.441209,
		-0.075946, 0.969942, 0.231181,
		37.636829, 38.635002, 25.746922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378548, 38.240356, 25.016670>,  <37.689995, 37.956043, 25.585094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378548, 38.240356, 25.016670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.523758, 38.562477, 25.204161>,  <37.610882, 38.755749, 25.316656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.523758, 38.562477, 25.204161>,  <37.378548, 38.240356, 25.016670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523758, 38.562477, 25.204161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440510, 0.294952, -0.847911,
		-0.821076, 0.514290, -0.247669,
		0.363022, 0.805300, 0.468729,
		37.632664, 38.804066, 25.344780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280720, 38.837936, 24.551439>,  <37.378548, 38.240356, 25.016670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280720, 38.837936, 24.551439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.572731, 38.938732, 24.805542>,  <37.747940, 38.999210, 24.958004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.572731, 38.938732, 24.805542>,  <37.280720, 38.837936, 24.551439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572731, 38.938732, 24.805542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570610, 0.286811, -0.769509,
		-0.376108, 0.924251, 0.065593,
		0.730032, 0.251990, 0.635259,
		37.791740, 39.014328, 24.996120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556019, 39.547646, 24.366901>,  <37.280720, 38.837936, 24.551439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556019, 39.547646, 24.366901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.859333, 39.375996, 24.563208>,  <38.041321, 39.273006, 24.680990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.859333, 39.375996, 24.563208>,  <37.556019, 39.547646, 24.366901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859333, 39.375996, 24.563208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598730, 0.160592, -0.784687,
		0.257917, 0.888853, 0.378706,
		0.758289, -0.429127, 0.490764,
		38.086819, 39.247257, 24.710436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032715, 40.012096, 24.207094>,  <37.556019, 39.547646, 24.366901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032715, 40.012096, 24.207094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.207031, 39.670246, 24.320019>,  <38.311623, 39.465134, 24.387774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.207031, 39.670246, 24.320019>,  <38.032715, 40.012096, 24.207094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207031, 39.670246, 24.320019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514584, -0.020762, -0.857189,
		0.738438, 0.518827, 0.430730,
		0.435790, -0.854627, 0.282311,
		38.337769, 39.413857, 24.404713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498402, 40.073051, 23.695410>,  <38.032715, 40.012096, 24.207094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498402, 40.073051, 23.695410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.515724, 39.701752, 23.843184>,  <38.526119, 39.478973, 23.931847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.515724, 39.701752, 23.843184>,  <38.498402, 40.073051, 23.695410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515724, 39.701752, 23.843184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678048, -0.244268, -0.693242,
		0.733741, 0.280516, 0.618818,
		0.043308, -0.928248, 0.369433,
		38.528717, 39.423279, 23.954014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271370, 39.961533, 23.668621>,  <38.498402, 40.073051, 23.695410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271370, 39.961533, 23.668621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.070797, 39.616039, 23.688755>,  <38.950451, 39.408745, 23.700836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.070797, 39.616039, 23.688755>,  <39.271370, 39.961533, 23.668621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070797, 39.616039, 23.688755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495101, -0.334169, -0.802001,
		0.709533, -0.377230, 0.595197,
		-0.501435, -0.863730, 0.050337,
		38.920368, 39.356922, 23.703856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731571, 39.384872, 23.489378>,  <39.271370, 39.961533, 23.668621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731571, 39.384872, 23.489378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.357140, 39.259029, 23.426424>,  <39.132481, 39.183525, 23.388651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.357140, 39.259029, 23.426424>,  <39.731571, 39.384872, 23.489378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357140, 39.259029, 23.426424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259097, -0.313991, -0.913388,
		0.237942, -0.895786, 0.375435,
		-0.936084, -0.314608, -0.157384,
		39.076313, 39.164646, 23.379210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855675, 38.755104, 23.125448>,  <39.731571, 39.384872, 23.489378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855675, 38.755104, 23.125448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.469864, 38.841843, 23.065233>,  <39.238377, 38.893887, 23.029104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.469864, 38.841843, 23.065233>,  <39.855675, 38.755104, 23.125448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469864, 38.841843, 23.065233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083027, -0.292124, -0.952770,
		-0.250575, -0.931474, 0.263759,
		-0.964530, 0.216841, -0.150537,
		39.180504, 38.906895, 23.020071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338333, 38.087234, 23.293146>,  <39.855675, 38.755104, 23.125448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338333, 38.087234, 23.293146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.606514, 38.383572, 23.276924>,  <40.767422, 38.561375, 23.267191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.606514, 38.383572, 23.276924>,  <40.338333, 38.087234, 23.293146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606514, 38.383572, 23.276924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181454, 0.216726, 0.959221,
		0.719420, -0.635755, 0.279734,
		0.670455, 0.740841, -0.040557,
		40.807652, 38.605824, 23.264757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781273, 37.837627, 23.735268>,  <40.338333, 38.087234, 23.293146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781273, 37.837627, 23.735268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.821796, 38.234745, 23.709669>,  <40.846111, 38.473015, 23.694309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.821796, 38.234745, 23.709669>,  <40.781273, 37.837627, 23.735268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821796, 38.234745, 23.709669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115721, 0.052130, 0.991913,
		0.988102, -0.107893, -0.109606,
		0.101307, 0.992795, -0.063996,
		40.852188, 38.532585, 23.690470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301453, 38.001263, 24.244705>,  <40.781273, 37.837627, 23.735268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301453, 38.001263, 24.244705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.104961, 38.346561, 24.198236>,  <40.987064, 38.553741, 24.170355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.104961, 38.346561, 24.198236>,  <41.301453, 38.001263, 24.244705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104961, 38.346561, 24.198236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024624, 0.147082, 0.988818,
		0.870681, 0.482877, -0.093508,
		-0.491231, 0.863248, -0.116171,
		40.957592, 38.605537, 24.163385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614475, 38.447357, 24.755964>,  <41.301453, 38.001263, 24.244705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614475, 38.447357, 24.755964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.273930, 38.618298, 24.634281>,  <41.069603, 38.720863, 24.561272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.273930, 38.618298, 24.634281>,  <41.614475, 38.447357, 24.755964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273930, 38.618298, 24.634281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173759, 0.317439, 0.932223,
		0.494955, 0.846524, -0.196001,
		-0.851368, 0.427352, -0.304209,
		41.018520, 38.746502, 24.543018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750622, 39.102016, 25.006380>,  <41.614475, 38.447357, 24.755964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750622, 39.102016, 25.006380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.356018, 39.082855, 24.943762>,  <41.119255, 39.071358, 24.906191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.356018, 39.082855, 24.943762>,  <41.750622, 39.102016, 25.006380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356018, 39.082855, 24.943762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163432, 0.343719, 0.924742,
		0.009511, 0.937850, -0.346911,
		-0.986509, -0.047901, -0.156544,
		41.060066, 39.068485, 24.896799>
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
