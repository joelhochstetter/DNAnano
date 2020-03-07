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
	<0.099719, 1.196244, 5.568040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.021778, 1.236595, 5.189080>,  <-0.094676, 1.260806, 4.961705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.021778, 1.236595, 5.189080>,  <0.099719, 1.196244, 5.568040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.021778, 1.236595, 5.189080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740136, -0.601177, -0.301305,
		-0.599952, -0.792722, 0.107932,
		-0.303737, 0.100885, -0.947399,
		-0.112901, 1.266858, 4.904860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.063061, 0.529501, 5.261216>,  <0.099719, 1.196244, 5.568040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.063061, 0.529501, 5.261216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.019028, 0.757736, 4.935686>,  <0.007392, 0.894677, 4.740368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.019028, 0.757736, 4.935686>,  <-0.063061, 0.529501, 5.261216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.019028, 0.757736, 4.935686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636762, -0.669187, -0.383046,
		-0.763162, -0.476045, -0.436995,
		0.110084, 0.570588, -0.813825,
		0.013998, 0.928913, 4.691539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.185460, 0.075885, 4.834203>,  <-0.063061, 0.529501, 5.261216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.185460, 0.075885, 4.834203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.013950, 0.378658, 4.665195>,  <0.133597, 0.560322, 4.563789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.013950, 0.378658, 4.665195>,  <-0.185460, 0.075885, 4.834203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.013950, 0.378658, 4.665195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661036, -0.647256, -0.379593,
		-0.560806, -0.090064, -0.823034,
		0.498526, 0.756933, -0.422521,
		0.163508, 0.605738, 4.538438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.152954, 0.002489, 4.046783>,  <-0.185460, 0.075885, 4.834203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.152954, 0.002489, 4.046783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.154305, 0.199600, 4.210306>,  <0.338659, 0.317867, 4.308420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.154305, 0.199600, 4.210306>,  <-0.152954, 0.002489, 4.046783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.154305, 0.199600, 4.210306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639557, -0.620773, -0.453441,
		0.030332, 0.609764, -0.792002,
		0.768145, 0.492777, 0.408808,
		0.384748, 0.347433, 4.332949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.362147, -0.016932, 3.538924>,  <-0.152954, 0.002489, 4.046783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.362147, -0.016932, 3.538924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.596804, 0.088795, 3.845123>,  <0.737598, 0.152231, 4.028843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.596804, 0.088795, 3.845123>,  <0.362147, -0.016932, 3.538924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.596804, 0.088795, 3.845123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732075, -0.577265, -0.361705,
		0.346292, 0.772594, -0.532147,
		0.586641, 0.264316, 0.765499,
		0.772796, 0.168089, 4.074773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.041381, 0.258858, 3.275235>,  <0.362147, -0.016932, 3.538924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.041381, 0.258858, 3.275235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.104259, 0.121208, 3.645504>,  <1.141987, 0.038618, 3.867665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.104259, 0.121208, 3.645504>,  <1.041381, 0.258858, 3.275235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.104259, 0.121208, 3.645504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956041, -0.181916, -0.229982,
		0.247537, 0.921133, 0.300401,
		0.157197, -0.344124, 0.925671,
		1.151419, 0.017971, 3.923205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.560499, 0.679141, 3.666745>,  <1.041381, 0.258858, 3.275235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.560499, 0.679141, 3.666745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.528936, 0.288971, 3.749034>,  <1.509999, 0.054869, 3.798408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.528936, 0.288971, 3.749034>,  <1.560499, 0.679141, 3.666745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.528936, 0.288971, 3.749034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970248, -0.122529, -0.208818,
		0.228894, 0.183126, 0.956071,
		-0.078906, -0.975424, 0.205723,
		1.505265, -0.003656, 3.810751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.084949, 0.590119, 4.067693>,  <1.560499, 0.679141, 3.666745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.084949, 0.590119, 4.067693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.975647, 0.254803, 3.878971>,  <1.910066, 0.053613, 3.765738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.975647, 0.254803, 3.878971>,  <2.084949, 0.590119, 4.067693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.975647, 0.254803, 3.878971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945761, -0.144543, -0.290935,
		0.175693, -0.525713, 0.832321,
		-0.273255, -0.838292, -0.471804,
		1.893671, 0.003315, 3.737430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.237228, 0.221818, 1.923022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.390898, 0.158375, 2.286836>,  <3.483099, 0.120309, 2.505124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.390898, 0.158375, 2.286836>,  <3.237228, 0.221818, 1.923022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.390898, 0.158375, 2.286836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177564, 0.979436, 0.095797,
		-0.906025, 0.124698, 0.404436,
		0.384173, -0.158607, 0.909535,
		3.506150, 0.110793, 2.559696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.029458, 0.715487, 2.380049>,  <3.237228, 0.221818, 1.923022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.029458, 0.715487, 2.380049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.374914, 0.566608, 2.516047>,  <3.582188, 0.477281, 2.597645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.374914, 0.566608, 2.516047>,  <3.029458, 0.715487, 2.380049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.374914, 0.566608, 2.516047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353558, 0.927970, 0.117765,
		-0.359336, 0.018501, 0.933025,
		0.863640, -0.372196, 0.339994,
		3.634006, 0.454950, 2.618045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.175788, 0.994462, 3.051704>,  <3.029458, 0.715487, 2.380049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.175788, 0.994462, 3.051704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.506529, 0.928051, 2.836762>,  <3.704973, 0.888204, 2.707797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.506529, 0.928051, 2.836762>,  <3.175788, 0.994462, 3.051704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.506529, 0.928051, 2.836762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384999, 0.863576, 0.325595,
		0.409989, -0.476100, 0.777970,
		0.826852, -0.166027, -0.537355,
		3.754585, 0.878243, 2.675555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.800987, 0.938174, 3.435366>,  <3.175788, 0.994462, 3.051704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.800987, 0.938174, 3.435366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.845497, 1.111320, 3.077540>,  <3.872203, 1.215208, 2.862844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.845497, 1.111320, 3.077540>,  <3.800987, 0.938174, 3.435366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.845497, 1.111320, 3.077540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286871, 0.847844, 0.445942,
		0.951485, -0.306247, -0.029832,
		0.111275, 0.432866, -0.894565,
		3.878880, 1.241180, 2.809171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.423701, 1.219984, 3.420401>,  <3.800987, 0.938174, 3.435366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.423701, 1.219984, 3.420401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.138855, 1.403214, 3.207587>,  <3.967947, 1.513151, 3.079898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.138855, 1.403214, 3.207587>,  <4.423701, 1.219984, 3.420401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.138855, 1.403214, 3.207587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166387, 0.846343, 0.505983,
		0.682062, 0.271793, -0.678910,
		-0.712114, 0.458074, -0.532036,
		3.925221, 1.540636, 3.047976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.638768, 1.812278, 3.106106>,  <4.423701, 1.219984, 3.420401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.638768, 1.812278, 3.106106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.246429, 1.869404, 3.159086>,  <4.011026, 1.903679, 3.190874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.246429, 1.869404, 3.159086>,  <4.638768, 1.812278, 3.106106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.246429, 1.869404, 3.159086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179971, 0.924565, 0.335844,
		-0.074496, 0.353248, -0.932559,
		-0.980847, 0.142815, 0.132450,
		3.952175, 1.912248, 3.198821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.231080, 2.388000, 3.054712>,  <4.638768, 1.812278, 3.106106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.231080, 2.388000, 3.054712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.545424, 2.634556, 3.034746>,  <5.734030, 2.782489, 3.022767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.545424, 2.634556, 3.034746>,  <5.231080, 2.388000, 3.054712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.545424, 2.634556, 3.034746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434469, 0.607750, 0.664738,
		0.440071, -0.500705, 0.745408,
		0.785859, 0.616388, -0.049912,
		5.781181, 2.819472, 3.019772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.627973, 2.430380, 3.683203>,  <5.231080, 2.388000, 3.054712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.627973, 2.430380, 3.683203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.623966, 2.784042, 3.496370>,  <5.621562, 2.996240, 3.384270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.623966, 2.784042, 3.496370>,  <5.627973, 2.430380, 3.683203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.623966, 2.784042, 3.496370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393965, 0.425836, 0.814528,
		0.919071, 0.192173, 0.344061,
		-0.010017, 0.884157, -0.467083,
		5.620961, 3.049289, 3.356245>
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
